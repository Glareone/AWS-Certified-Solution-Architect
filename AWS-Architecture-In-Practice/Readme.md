# AWS Architecture In Practice


---
### AWS Bedrock Flows vs LangGraph 
WIP
---
### Step Function vs Event Storming

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
3. ⚡️ Fine-Grained Parallelism Control: Step Function can manage the level of parallelism and control the execution state.  
   - Configurable concurrency: Set 3-10 parallel validation Lambdas based on OpenAI TPM limits  
   - Dynamic scaling: Adjust parallelism based on real-time token consumption  
   - 
5. Cancel Processing: Step Function supports "Stop" operation and user is able to cancel the processing request in the middle of the execution
6. We can control whether we store all results at once or it's acceptable to store intermediate results.

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

#### Event Storming. SQS.
WIP

#### Comparison

---
### Step Function for High Load Processing
WIP
