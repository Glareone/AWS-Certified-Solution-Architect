#### Step Function
![image](https://github.com/user-attachments/assets/a5747433-d945-4c8f-a95f-593d33656c75)

A powerful serverless orchestration service that coordinates distributed application components through visual workflows.  
Unlike Azure Durable Functions (which focus on stateful function execution in stateless environments), Step Functions operate as a dedicated state machine service with declarative JSON/YAML definitions rather than code-based orchestration.  

#### Core Purpose & Capabilities
State machine orchestration with enterprise-grade features including:

* Parallel execution control with configurable concurrency limits
* Built-in retry policies with exponential backoff and error handling
* Conditional branching and dynamic workflow routing
* Long-running workflow management (up to 1 year execution time)
* Native AWS service integrations without custom Lambda code

## Example. File Validation using parallel execution
<img width="1644" height="2432" alt="image" src="https://github.com/user-attachments/assets/87467343-85be-4dd3-b1fe-fdcfcfd93da0" />

Architecture Benefits:  
🚦 Intelligent Throttling & User Management:  
1. Aggregate function. Throttler Lambda acts as gatekeeper, enforcing per-user quotas and rate limits.  
   - Global state management through DynamoDB for cross-request coordination  
   - Graceful degradation when limits are exceeded (queue vs reject)  
2. ⚡️ Fine-Grained Parallelism & Exectuion Control: Step Function can manage the level of parallelism and control the execution state.  
   - Configurable concurrency: Set 3-10 parallel validation Lambdas based on OpenAI TPM limits  
   - Dynamic scaling: Adjust parallelism based on real-time token consumption.  
   - Retry logic: we can retry the validation functions.  
   - Delay capabilities: we can retry the validation logic with some delay.  
3. 👀 Execution Management & Observability. Cancellation: Users can stop processing mid-execution via Step Functions StopExecution API.  
   - Progress monitoring: Track progress through AWS Console or using REST calls
   - Detailed logging: CloudWatch integration provides execution history and error details
4. 💾 Flexible Result Storage Patterns. We can control whether we store all results at once or it's acceptable to store intermediate results.  
   - Incremental storage: Save validation results as they complete.
   - Failure recovery: Resume from last successful validation on retry.

### Dynamic Control of Parallelism without Redeployment. 
#### 1. Dynamic Parallelism via Lambda Controller

```json
{
  "Comment": "Dynamic Validation Pipeline",
  "StartAt": "CheckTPMAndCalculateParallelism",
  "States": {
    "CheckTPMAndCalculateParallelism": {
      "Type": "Task",
      "Resource": "arn:aws:lambda:region:account:function:TPMController",
      "Next": "DynamicValidationExecution"
    },
    "DynamicValidationExecution": {
      "Type": "Task", 
      "Resource": "arn:aws:lambda:region:account:function:DynamicValidator",
      "End": true
    }
  }
}
```

#### 2. AWS Systems Manager Parameter Store for Real-Time Configuration
# Usage in validation Lambda or in Step Function

```python
def get_config():
    ssm = boto3.client('ssm')
    
    try:
        # Get configuration parameters
        response = ssm.get_parameters(
            Names=[
                '/app/max-parallelism',
                '/app/target-tpm',
                '/app/throttle-threshold'
            ]
        )
        
        config = {}
        for param in response['Parameters']:
            key = param['Name'].split('/')[-1]
            config[key] = int(param['Value'])
            
        return config
    except Exception:
        # Fallback defaults
        return {
            'max-parallelism': 5,
            'target-tpm': 50000,
            'throttle-threshold': 0.9
        }
```
