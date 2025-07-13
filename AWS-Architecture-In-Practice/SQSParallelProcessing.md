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

```
API Gateway → Throttler Lambda → SQS Queue(s) → Validation Lambdas → DynamoDB
                    ↓
               User Quota Store (DynamoDB)
```


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
