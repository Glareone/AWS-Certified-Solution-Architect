### Parallel Processing Using SQS. Event Storming
Following best practices from Well-Architectured it's possible to build validation processing as well, demonstrated in [Step Function Section](./StepFunction.md)

#### Event Storming analysis

To build the proper system using EventStore we have to analyze what events-commands-states we have:

```
Events (Business Language):
├── "Credit Application Submitted"
├── "Document Uploaded" 
├── "Validation Rule Applied"
├── "Validation Completed"
├── "Application Approved/Rejected"
└── "Results Downloaded"

Commands:
├── "Submit Application"
├── "Upload Supporting Documents" 
├── "Start Validation Process"
└── "Download Results"

Aggregates:
├── CreditApplication
├── ValidationRule
├── ValidationResult
└── User
```


#### Components Composition

<img width="2255" height="1773" alt="image" src="https://github.com/user-attachments/assets/8ed97c77-b363-4700-80f8-6671176036c4" />

#### Limitations
1. Using Simple Aggregator function you cant control the number of applications each user send. You can increment the lock, but cant decrement.
   - In order to manage this you need to introduce additional component to your system.
2. Like in situation with Step Function you can change the level of parallelism only reconfiguring SQS, so Terraform-changes.

#### Parallelism & Retry Control
We can organize the control of the parallelism and retry strategy using SQS. SQS Configuration.Lambda Reserved Concurrency.

Set reserved concurrency on your validation Lambda function. This is our primary control for max parallel executions.  

Example: Set to 10 for max 10 concurrent validations
```json
{
  "BatchSize": 1,                    // Messages per Lambda invocation
  "MaximumBatchingWindowInSeconds": 0, // No batching delay
  "ReservedConcurrencyConfig": {
    "ReservedConcurrency": 10        // Max concurrent Lambda executions
  }
}
```

---
#### Projection. Improved control over applied executions.
<img width="2255" height="1773" alt="image" src="https://github.com/user-attachments/assets/9b8c6c34-caa7-4376-bbb8-a60cbf887f51" />


#### PROS:

✅ Simple, everything in one place  
✅ Immediate quota release  
✅ No additional infrastructure  

#### CONS:

❌ Violates Single Responsibility Principle  
❌ Harder to test business logic in isolation  
❌ Quota logic scattered across validation functions  
❌ Difficult to add features (notifications, analytics)  
  
#### PROJECTION. Option 2 (Clean Separation). Advanced Disign.
<img width="2063" height="1938" alt="image" src="https://github.com/user-attachments/assets/b00a1167-f7a9-4cf7-8c7a-a5f16033f27d" />

#### Go with Option 2 because:
✅ Separation of concerns - Business logic stays pure  
✅ Easier testing - Mock SQS for projection testing  
✅ Scalability - Projection can handle multiple event types  
✅ Extensibility - Easy to add notifications, analytics, etc.  
✅ Reliability - DLQ for failed projections  
✅ Monitoring - Clear metrics for each component  
