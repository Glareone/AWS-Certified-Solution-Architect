# Table of Content
### Azure 
1. [Azure AZ-304 Solution Architect & System Design Materials](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth)
## AWS Theory. AWS Solution Architect Materials to pass the exam
1. [AWS. Interesting Materials](#interesting-materials)
2. [AWS. General Information](#section-3-general-information-about-aws-services)
3. [AWS. EC2](#section-4-ec2)
4. [AWS. Databases](#section-5-databases-on-aws)
5. [AWS. Route 53.DNS101. Route Policies](#section-6-route53-dns101-routing-policies-tips)
6. [AWS. VPC](#section-7-vpc-custom-vpc-configuration)
7. [AWS. HA & Load Balancing](#section-8-high-availability-architecture-load-balancing-target-groups-cloudformation-beanstalk)
8. [AWS. Apps: SQS, SNS, Kinesis, Transcoder, Cognito, Web Identify Federation](#section-9-applications-sqs-sns-swf-kinesis-elastic-transcoder-cognito---web-identify-federation)
9. Migration To AWS, articles:  
  a. https://docs.aws.amazon.com/prescriptive-guidance/latest/large-migration-governance-playbook/welcome.html  
  b. https://www.projectpro.io/article/aws-cloud-migration-project-plan-example/753#:~:text=AWS%20Cloud%20migration%20project%20plan%20helps%20you%20identify%20your%20goals,the%20business%20requirements%20and%20goals.  

## AWS In Practice.
1. [AWS Solution Architecture In Practice](https://github.com/Glareone/AWS-Certified-Solution-Architect/blob/master/AWS-Architecture-In-Practice/Readme.md)  
  a. [Step Function. Advantages & Disadvantages. Comparison. Alternatives.](https://github.com/Glareone/AWS-Certified-Solution-Architect/blob/master/AWS-Architecture-In-Practice/StepFunction.md)  
  b. [SQS + Lambda. Fan-out. Event-Storming as you services strategy.](https://github.com/Glareone/AWS-Certified-Solution-Architect/blob/master/AWS-Architecture-In-Practice/SQSParallelProcessing.md)   
  c. [WIP...KPI and Logs. Principles of splitting the data. Telemetry vs Logs vs Metrics.](https://github.com/Glareone/AWS-Certified-Solution-Architect/blob/master/AWS-Architecture-In-Practice/KpiAndLogs.md)  
  d. [WIP...SignalR in AWS Serverles.](https://github.com/Glareone/AWS-Certified-Solution-Architect/blob/master/AWS-Architecture-In-Practice/WebSocketsAndSignalR.md)  

## Interesting materials
[Deploy react-app to S3 or CloudFront](https://wolovim.medium.com/deploying-create-react-app-to-s3-or-cloudfront-48dae4ce0af)

# AWS CERTIFIED SOLUTION ARCHITECT MATERIALS

<details>
<summary>Exams and their levels</summary>
Schemes:

![tiers](readme-images/tiers.png)
![difficult](readme-images/difficulty.png)
![major-themes](readme-images/major-themes-before-exam.png)

</details>

<details>
<summary>Section 1: Basis</summary>
Schemes:

![basis](readme-images/AWS-Basis-AvailabilityZone.png)
![basis](readme-images/AWS-Basis-AvailabilityZone2.png)
![basis](readme-images/AWS-Basis-Region.png)
![basis](readme-images/AWS-Basis-Edge-Location.png)
![basis](readme-images/AWS-Basis-Web-Application-Firewall-WAF.png)
![basis](readme-images/AWS-Basis-Snowball.png)
![basis](readme-images/AWS-Basis-Snowball-edge-portable-AWS.png)

</details>

Section 3: General Information about AWS services.
===

<details>
<summary>Section3: IAM</summary>

![IAM-info1](readme-images/section3-IAM-101-Pic1.png)
![IAM-info2](readme-images/section3-IAM-101-Pic2.png)
</details>

<details>
<summary>Section3: S3 Storage Information</summary>

![S3-1](readme-images/S3-storage-classes.png)
![S3-2](readme-images/S3-Glacier(to%20Archive%20the%20data).png)
![S3-3](readme-images/S3-consistency.png)
![S3-4](readme-images/S3-Objects-consist-of.png)
![S3-exam-1-1](readme-images/S3-Storages-Availability.png)
![S3-exam-1-2](readme-images/S3-minimum-file-size.png)
</details>

<details>
<summary>Section3: S3 Encryption</summary>

![S3-5](readme-images/S3-bucket-policies(ACL,Bucket%20Policies).png)
![S3-5](readme-images/S3-encryption--transit,rest(Server-side),client.png)

</details>

<details>
<summary>Section3: S3 Versioning</summary>

![S3-versioning-1](readme-images/S3-versioning1.png)

</details>

<details>
<summary>Section3: S3 Lifecycle management</summary>

You could move your data between storage types: From Standard to Glacier, for example.
![S3-lifecycle-management](readme-images/S3-Lifecycle-Management.png)

</details>

<details>
<summary>Section3: S3 Cross-Region Replication</summary>

[AWS Replication Info](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html)

Replication enables automatic, asynchronous copying of objects across Amazon S3 buckets. 

Buckets that are configured for object replication can be owned by the same AWS account or by different accounts. 
You can copy objects between different AWS Regions or within the same Region.

![S3-replication](readme-images/S3-replication.png)


</details>

<details>
<summary>Section3: S3 Transfer Acceleration</summary>

![S3-transfer-acceleration](readme-images/S3-Transfer-Acceleration.png)
![S3-transfer-acceleration](readme-images/S3-Transfer-Acceleration-edge-locations-scheme.png)
![S3-transfer-acceleration](readme-images/S3-Transfer-Acceleration-test-tool.png)

</details>

<details>
<summary>Section3: CloudFront</summary>

![CloudFront](readme-images/CloudFront-Key-Terminology.png)
![CloudFront](readme-images/CloudFront-Basis.png)
![CloudFront](readme-images/CloudFront-Cached-Resources.png)
![CloudFront](readme-images/CloudFront-EdgeLocations-Updating-Files.png)
Invalidating Files:
If you need to remove a file from CloudFront edge caches before it expires, you can do one of the following:
Invalidate the file from edge caches. The next time a viewer requests the file, CloudFront returns to the origin to fetch the latest version of the file.
Use file versioning to serve a different version of the file that has a different name. For more information, see Updating Existing Files Using Versioned File Names.

Important:
You cannot invalidate objects that are served by an RTMP distribution.
To invalidate files, you can specify either the path for individual files or a path that ends with the * wildcard, which might apply to one file or to many, as shown in the following examples:
/images/image1.jpg

/images/image*

/images/*
![CloudFront](readme-images/CloudFront-Distribution-Invalidations.png)

</details>

<details>
<summary>Section3: Snowball</summary>

![Snowball](readme-images/AWS-Basis-Snowball.png)
![Snowball](readme-images/AWS-Basis-Snowball2.png)
![Snowball](readme-images/Snowmobile.png)
![Snowball](readme-images/AWS-Basis-Snowball-edge-portable-AWS.png)
![Snowball](readme-images/AWS-Basis-Snowball-edge2-portable-AWS.png)

</details>

<details>
<summary>Section3: Storage Gateway - Basis</summary>

![Gateway](readme-images/Storage-gateway.png)
![Gateway](readme-images/Storage-gateway2.png)
![Gateway](readme-images/Storage-gateway3.png)
![Gateway](readme-images/Storage-gateway-types.png)
![Gateway](readme-images/Volume-gateway.png)
![Gateway](readme-images/Gateways-types-exam-tips.png)

</details>

<details>
<summary>Section3: File Gateway</summary>

![Gateway](readme-images/File-gateway.png)
![Gateway](readme-images/File-gateway2.png)

</details>

<details>
<summary>Section3: Volume Gateways</summary>

![Gateway](readme-images/Volume-gateway.png)
Stored Volumes:
![Gateway](readme-images/Volume-gateway-stored-volumes.png)
![Gateway](readme-images/Volume-gateway-stored-volumes-scheme.png)
Cached Volumes:
![Gateway](readme-images/Volume-gateway-cached-volume.png)
![Gateway](readme-images/Volume-gateway-cached-volume-scheme.png)
Tape Gateway:
![Gateway](readme-images/Volume-gateway-Tape-gateway.png)
![Gateway](readme-images/Volume-gateway-Tape-gateway-scheme.png)

</details>

<details>
<summary>Section3: S3 Exam tips</summary>

![S3-exam-1](readme-images/S3-exam-tips.png)
![S3-exam-1-1](readme-images/S3-Storages-Availability.png)
![S3-exam-1-2](readme-images/S3-minimum-file-size.png)
![S3-exam-2](readme-images/S3-exam-tips2.png)
![S3-exam-3](readme-images/S3-exam-tips3.png)
![S3-exam-4](readme-images/S3-exam-tips4.png)
![S3-exam-5](readme-images/S3-exam-tips5.png)
![S3-exam-6](readme-images/S3-versioning2.png)
![S3-exam-7](readme-images/S3-Lifecycle-Management.png)
![S3-exam-8](readme-images/S3-replication.png)
![S3-exam-9](readme-images/S3-Transfer-Acceleration.png)
![S3-exam-10](readme-images/CloudFront-Cached-Resources.png)
![S3-exam-11](readme-images/CloudFront-EdgeLocations-Updating-Files.png)
![S3-exam-12](readme-images/Gateways-types-exam-tips.png)
* SAML: [Security Assertion Markup Language 2.0](https://aws.amazon.com/identity/saml/) -  
is an open standard for exchanging identity and security information with applications and service providers.
</details>

Section 4: EC2
===

<details>
<summary>Section4: EC2 Basis</summary>

![EC2-Basis](readme-images/EC2-Description.png)
![EC2-Basis](readme-images/EC2-types.png)
![EC2-Basis](readme-images/EC2-types-mnemonic-first-char.png)
![EC2-Basis](readme-images/EC2-pricing.png)
![EC2-Basis](readme-images/EC2-pricing2.png)
![EC2-Basis](readme-images/EC2-pricing3.png)
![EC2-Basis](readme-images/EC2-pricing4.png)
![EC2-Basis](readme-images/EC2-pricing5.png)
![EC2-Basis](readme-images/EC2-pricing6.png)
![EC2-Basis](readme-images/EC2-Spot-instance-termination.png)
</details>

<details>
<summary>Section4: Lab, tips</summary>

To create SSH public key for EC2 you need to run next command in command line:
ssh-keygen -y -f Glareone-EC2-Lab1-Key-Pair.pem > MyKP.pub
"Glareone-EC2-Lab1-Key-Pair.pem" - key pair file from console.

* To resolve problem with permissions on this key:
[windows-ssh-permissions-for-private-key](https://superuser.com/questions/1296024/windows-ssh-permissions-for-private-key-are-too-open)

To run SSH commands you could use "Secure Shell App" Chrome extension.
to come into your machine you have to use its ip-address (IPv4 Public IP in Instances: [EC2-instances](https://console.aws.amazon.com/ec2/home?region=us-east-1#Instances:sort=instanceId))
* our: 54.84.6.245
* user - ec2-user

on machine: 
* yum update -y (update all packages on your machine)
* yum install httpd -y (install httpd)

[root@ip-172-31-82-192 html]# cd var/www/html
[root@ip-172-31-82-192 html]# nano index.html (create index.html in nano, just create a very simple html doc)
[root@ip-172-31-82-192 html]# service httpd start (start httpd server)
[root@ip-172-31-82-192 html]# chkconfig on (rerun httpd server if our server rebooted accidentally)

check how it works: just copy address to your browser.

</details>


<details>
<summary>Section4: EC2 - How to move Volume between zones OR regions</summary>

![EC2](readme-images/EBS-Types.png)
![EC2](readme-images/EC2-How-to-move-Volume-to-another-zone.png)
![EC2](readme-images/EC2-How-to-move-Volume-to-another-zone2.png)
![EC2](readme-images/EC2-How-to-move-Volume-to-another-zone3.png)
![EC2](readme-images/EC2-How-to-move-Volume-to-another-zone4.png)
![EC2](readme-images/EC2-How-to-move-Volume-to-another-Region.png)

</details>

<details>
<summary>Section4: EC2 - Lab2 - Security(ports) & Disk Encryption</summary>

![EC2](readme-images/EC2-Lab2-Encryption.png)
![EC2](readme-images/EC2-Lab2-Security.png)

</details>

<details>
<summary>Section4: EC2 Exam tips</summary>

![EC2-exam1](readme-images/EC2-Description.png)
![EC2-exam2](readme-images/EC2-types.png)
![EC2-exam3](readme-images/EC2-Spot-instance-termination.png)
![EC2-exam4](readme-images/EC2-Spot-instance-termination.png)
Security (ports) & Disk Encryption:
![EC2-exam5](readme-images/EC2-Lab2-exam-tips.png)
![EC2-exam6](readme-images/EC2-Lab3-Security-Exam-tips.png)
![EC2-exam7](readme-images/EC2-Lab3-Security-exam-tips2.png)
![EC2-exam8](readme-images/EBS-Types.png)
![EC2-exam9](readme-images/EC2-Volume-Encryption-1.png)

</details>

<details>
<summary>Section4: EC2 Volumes & Snapshots Exam Tips</summary>

![EC2-exam1](readme-images/EC2-Volumes&Snapshots-Exam-tips.png)
![EC2-exam2](readme-images/EC2-Volumes&Snapshots-Exam-tips2.png)
![EC2-exam3](readme-images/EC2-Volumes&Snapshots-Exam-tips3.png)
![EC2-exam4](readme-images/EC2-Volume-Encryption-1.png)

</details>

<details>
<summary>Section4: EC2 : EBS (Block Store) vs Instance Store</summary>

Major Difference - Instance Store is a real disk which is more closer to CPU.
in heavy load on read\write you could drastically decrease CPU waiting time.

But Instance Store (root volume at least) is not been saved if something wrong with Hypervisor will occur.

![EC2-EBS-vs-InsStore-1](readme-images/EC2%20-%20EBS%20vs%20Instance%20Store.png)
![EC2-EBS-vs-InsStore-2](readme-images/EC2-EBS-vs-InstanceStore-2.png)
![EC2-EBS-vs-InsStore-3](readme-images/EC2-InstanceStore-vs-EBS-Exam-tips.png)

</details>

<details>
<summary>Section4: CloudWatch and CloudTrail</summary>

![CloudWatch](readme-images/CloudWatch-What-is.png)
![CloudWatch](readme-images/CloudWatch-what-can-monitor.png)
![CloudWatch](readme-images/CloudWatch-metrics.png)
![CloudWatch](readme-images/CloudWatch-CloudTrail.png)
![CloudWatch](readme-images/CloudWatch-CloudTrail-difference.png)
![CloudWatch](readme-images/CloudWatch-Exam-tips.png)

</details>

<details>
<summary>Section4: AWS Command Line + Exam Tips</summary>

Safe information - this user is deleted.
![AWS Command Line](readme-images/AWS-Command-Line.png)
![AWS Command Line](readme-images/AWS-Command-Line-Exam-Tips.png)

</details>

<details>
<summary>Section4: AWS EC2 Role vs Users AccessKey + SecretKey</summary>

1) You could create a new role in IAM -> Create Role (For EC2).
There you could select policies for your new role. Administrator Access is suitable to manage EC2.

2) Then - you have to attach new role to your instance.
* When you login to server using ssh it will check do you have enough permissions to work with it or not.
It is more safe than use AccessKey + SecretKey pair because this pair is stored in secret directory:
~/.aws (under the root). 
* If you delete it - you will not continue your work. Besides, your credentials could be stolen
by hacker. That's why role usage is a better way.
![EC2 Role](readme-images/AWS-EC2-Attach-IAM-Role1.png)
![EC2 Role](readme-images/AWS-EC2-Attach-Role-Exam-Tips.png)

</details>

<details>
<summary>Section4: EC2 Instance Metadata and Exam Tips:</summary>

a) from aws console after ssh logging:
* [root@ip-172-31-22-213 ec2-user]# curl http://172.31.22.213/latest/user-data
You will see your bootstrap script (which you could add as listed below)
![EC2 Instance Metadata](readme-images/EC2-Bootstrap-scripts.png)
script example:
[bootstrap script example](files/BootStrap-script.txt)

b) from aws console after ssh logging:
* [root@ip-172-31-22-213 ec2-user]# curl http://172.31.22.213/latest/meta-data
get whole bunch of options:
![EC2 Instance Metadata](readme-images/EC2-Metadata.png)
![EC2 Instance Metadata](readme-images/EC2-Metadata-Exam-tips.png)
</details>

<details>
<summary>Section4: Elastic File System</summary>

This filesystem is better than EBS because you could increase its volume in a second.
Also, you could share files between your EC2 instances.
If you update a file from one instance - you could read changes from another instantly.

![EC2 Elastic-File-System](readme-images/EC2-Elastic-File-System.png)

* To work with it you need to add the next port to your security group:
NFS - port 2049

![EC2 Elastic-File-System](readme-images/EC2-EFS-File-System-exam-tips.png)
</details>

<details>
<summary>Section4: EC2 - Placement Groups</summary>

![EC2 Placement groups](readme-images/EC2-Placement-Groups.png)
![EC2 Placement groups](readme-images/EC2-Placement-Group-Cluster.png)

* PAY ATTENTION! Spread Placement Group can only have 7 running instances per Availability Zone.

![EC2 Placement groups](readme-images/EC2-Placement-Group-Spread.png)
![EC2 Placement groups](readme-images/EC2-Placement-Group-Partition.png)

* Advantages and Exam tips:

![EC2 Placement groups](readme-images/EC2-Placement-Groups-Advantages.png)
![EC2 Placement groups](readme-images/EC2-Placement-Groups-Exam-tips-2.png)


</details>

<details>
<summary>Section4: Interesting Exam Questions</summary>

1 Can I move a reserved instance from one region to another?
* No. Depending on you type of RL you can You can modify the AZ, scope, network platform, or instance size 
(within the same instance type), but not Region. In some circumstances you can sell RIs, but only if you have 
a US bank account.

2 You need to know both the private IP address and public IP address of your EC2 instance. You should
* Retrieve meta-data : /latest/meta-data

3 If an Amazon EBS volume is an additional partition (not the root volume), can I detach it without stopping the instance?
* Yes. although it may take some time.

4. You can add multiple volumes to an EC2 instance and then create your own RAID 5/RAID 10/RAID 0 configurations using 
those volumes.
* true

5. Individual instances are provisioned 
* In AZ

6. Spread Placement Groups can be deployed across multiple Availability Zones
* True

7. To retrieve instance metadata or user data you will need to use the following IP Address:
* http://169.254.169.254

8. Will an Amazon EBS root volume persist independently from the life of the terminated EC2 instance to which it was 
previously attached? In other words, if I terminated an EC2 instance, would that EBS root volume persist?
* Only if I specify that it should do so. You can control whether an EBS root volume is deleted when its associated 
instance is terminated. The default delete-on-termination behaviour depends on whether the volume is a root volume, 
or an additional volume. By default, the DeleteOnTermination attribute for root volumes is set to 'true.' However, 
this attribute may be changed at launch by using either the AWS Console or the command line. For an instance that 
is already running, the DeleteOnTermination attribute must be changed using the CLI.

9. Can you attach an EBS volume to more than one EC2 instance at the same time?
* No.

10. I can use the AWS Console to add a role to an EC2 instance after that instance has been created and powered-up.
* True

11. Can you attach an EBS volume to more than one EC2 instance at the same time?
* No.

</details>

Section 5: Databases On AWS
===

<details>
<summary>Section 5: Relational & NoSQL Databases</summary>

The most important features:
![RDS](readme-images/Section%205/RDS.png)
![RDS](readme-images/Section%205/Multi-AZ.png)

One of two ways to improve performance - use "Read Replica":
[aws link](https://aws.amazon.com/rds/details/read-replicas/)
![RDS1](readme-images/Section%205/Read%20Replica.png)
![RDS2](readme-images/Section%205/Read%20Replicas.png)

Database processing types, OLTP vs OLAP:
OLTP for Relational Databases (RDS), OLAP for Warehouses (Redshift)
![RDS3](readme-images/Section%205/OLTP.png)
![RDS4](readme-images/Section%205/OLAP.png)

Caching:
![RDS5](readme-images/Section%205/ElastiCache/Elastic%20Cache%20types.png)
![RDS6](readme-images/Section%205/ElastiCache/ElastiCache.png)
Exam Tips:
![RDS7](readme-images/Section%205/Exam%20Tips%20-%20db%20types.png)
![RDS8](readme-images/Section%205/Exam%20Tips2-performance.png)

</details>

<details>
<summary>Section 5: RDS: Relational Database, general </summary>

![RDS1](readme-images/Section%205/RDS/Pic_1.jpg)
![RDS2](readme-images/Section%205/RDS/Pic_2_RDS_Access_Configuration_1.jpg)
![RDS3](readme-images/Section%205/RDS/Pic_2_RDS_Access_Configuration_2.jpg)
![RDS4](readme-images/Section%205/RDS/Pic_3_Db_instances_limit.jpg)
![RDS5](readme-images/Section%205/RDS/Pic_4_DB_WordPress_and_DB_Connection_1.jpg)
![RDS6](readme-images/Section%205/RDS/Pic_4_DB_WordPress_and_DB_Connection_2.jpg)
![RDS7](readme-images/Section%205/RDS/ExamTip.jpg)

Issue solving with old AWS RDS interface: [Link](https://help.acloud.guru/hc/en-us/articles/360001078435)

</details>

<details>
<summary>Section 5: RDS: Read Replicas, Backups, Multi-AZ. Lecture </summary>

![RDS_Backups and ReadReplica1](readme-images/Section%205/RDS/RDS_Backups_types.jpg)
![RDS_Backups and ReadReplica2](readme-images/Section%205/RDS/RDS_Backups_Automated_type.jpg)
![RDS_Backups and ReadReplica3](readme-images/Section%205/RDS/RDS_Backups_Automated_type_2.jpg)
![RDS_Backups and ReadReplica4](readme-images/Section%205/RDS/RDS_Backups_ManualSnapshot.jpg)
![RDS_Backups and ReadReplica5](readme-images/Section%205/RDS/RDS_Backups_2.jpg)
![RDS_Backups and ReadReplica6](readme-images/Section%205/RDS/RDS_Encryption.jpg)

FOR DATA RESTORATION:

![RDS_Backups and ReadReplica7](readme-images/Section%205/RDS/RDS_Replication_1.jpg)
![RDS_Backups and ReadReplica8](readme-images/Section%205/RDS/RDS_Replication_2.jpg)
![RDS_Backups and ReadReplica9](readme-images/Section%205/RDS/RDS_Replication_3.jpg)
![RDS_Backups and ReadReplica10](readme-images/Section%205/RDS/RDS_Replication_4.jpg)

FOR PERFORMANCE IMPROVEMENTS:

![RDS_Backups and ReadReplica11](readme-images/Section%205/RDS/RDS_Read_Replica_1.jpg)
![RDS_Backups and ReadReplica12](readme-images/Section%205/RDS/RDS_Read_Replica_2.jpg)
![RDS_Backups and ReadReplica13](readme-images/Section%205/RDS/RDS_Read_Replica_3.jpg)
![RDS_Backups and ReadReplica14](readme-images/Section%205/RDS/RDS_Read_Replica_Types_4.jpg)
![RDS_Backups and ReadReplica15](readme-images/Section%205/RDS/RDS_Read_Replica_5.jpg)

Detailed Explanation How to add Read Replica to DB instance:

![RDS_ReadReplica1](readme-images/Section%205/RDS/RDS_Lab_1.jpg)
![RDS_ReadReplica2](readme-images/Section%205/RDS/RDS_Lab_2.jpg)
![RDS_ReadReplica3](readme-images/Section%205/RDS/RDS_Lab_3.jpg)
![RDS_ReadReplica4](readme-images/Section%205/RDS/RDS_Lab_3_Backup_turn-on.jpg)
![RDS_ReadReplica5](readme-images/Section%205/RDS/RDS_Lab_3_Backup_turn-on_2.jpg)
![RDS_ReadReplica6](readme-images/Section%205/RDS/RDS_Lab_4_ReadReplica_1.jpg)
![RDS_ReadReplica7](readme-images/Section%205/RDS/RDS_Lab_4_ReadReplica_2.jpg)
![RDS_ReadReplica8](readme-images/Section%205/RDS/RDS_Lab_4_ReadReplica_3.jpg)
![RDS_ReadReplica9](readme-images/Section%205/RDS/RDS_Lab_4_ReadReplica_4.jpg)

</details>

<details>
<summary>Section 5: NoSQL Databases. DynamoDB </summary>

![DynamoDB1](readme-images/Section%205/DynamoDB/DynamoDB.png)

![DynamoDB2](readme-images/Section%205/DynamoDB/DynamoDB%20Basics.png)

![DynamoDB3](readme-images/Section%205/DynamoDB/DynamoDB-Eventual%20Consistent%20Reads.png)

![DynamoDB4](readme-images/Section%205/DynamoDB/DynamoDB-StronglyConsistent%20Reads.png)

</details>

<details>
<summary>Section 5: Redshift. Database Warehousing </summary>

![Redshift1](readme-images/Section%205/Redshift/Redshift.png)
![Redshift2](readme-images/Section%205/OLAP.png)
![Redshift3](readme-images/Section%205/Redshift/Redshift-Configurations.png)
![Redshift4](readme-images/Section%205/Redshift/Redshift%20Compression.png)
![Redshift5](readme-images/Section%205/Redshift/Redshift%20Backups.png)
![Redshift6](readme-images/Section%205/Redshift/Redshift%20Pricing.png)
![Redshift7](readme-images/Section%205/Redshift/Massively%20Parallel%20Processing.png)
![Redshift8](readme-images/Section%205/Redshift/Availability.png)
![Redshift9](readme-images/Section%205/Redshift/Security.png)

</details>

<details>
<summary>Section 5: MySQL - Aurora </summary>

![Aurora1](readme-images/Section%205/MySql%20-%20Aurora/Aurora.png)
![Aurora2](readme-images/Section%205/MySql%20-%20Aurora/Basics.png)
![Aurora3](readme-images/Section%205/MySql%20-%20Aurora/Basics2.png)
![Aurora4](readme-images/Section%205/MySql%20-%20Aurora/Basics3.png)
![Aurora5](readme-images/Section%205/MySql%20-%20Aurora/Aurora%20Replicas.png)
![Aurora6](readme-images/Section%205/MySql%20-%20Aurora/Aurora%20Replicas%20Comparition%20with%20MySQL.png)

</details>

<details>
<summary>Section 5: ElastiCache. Redis and Memcached </summary>

![ElastiCache1](readme-images/Section%205/ElastiCache/ElastiCache.png)
![ElastiCache2](readme-images/Section%205/ElastiCache/Elastic%20Cache%20types.png)
![ElastiCache3](readme-images/Section%205/ElastiCache/Memcached%20vs%20Redis.png)
![ElastiCache4](readme-images/Section%205/ElastiCache/Exam%20Tips.png)

</details>

<details>
<summary>Section 5: Db Lectures Summary and Exam Tips </summary>

![Summary1](readme-images/Section%205/Exam%20Tips%201.png)
![Summary2](readme-images/Section%205/Exam%20Tips2.png)
![Summary3](readme-images/Section%205/Read%20Replicas.png)
![Summary4](readme-images/Section%205/Multi%20AZ.png)
![Summary5](readme-images/Section%205/Exam%20Tips%20-%20Encryption.png)

</details>

Section 6: ROUTE53, DNS101, Routing Policies, Tips
===

<details>
<summary>Section 6: DNS101 & Route53</summary>

![Summary1](readme-images/Section%206/DNS101.jpg)
![Summary2](readme-images/Section%206/CName.jpg)
![Summary3](readme-images/Section%206/Alias%20Records.jpg)
![Summary4](readme-images/Section%206/AliasRecordVSCName.jpg)
![Summary5](readme-images/Section%206/Route53_Tips.jpg)
![Summary6](readme-images/Section%206/Common_DNS_types.jpg)
![Summary7](readme-images/Section%206/DNS+Route53-ExamTips.jpg)

</details>

<details>
<summary>Section 6: Route53, Routing Policies</summary>

![Summary1](readme-images/Section%206/RoutingPolicies.jpg)
![Summary2](readme-images/Section%206/RoutingPolicies/SimpleRouting_Policy.jpg)
![Summary3](readme-images/Section%206/RoutingPolicies/WeightedRouting_Policy.jpg)
![Summary4](readme-images/Section%206/RoutingPolicies/RoutingPolicy_HealthCheck.jpg)
Routing Types:

![Summary5](readme-images/Section%206/RoutingPolicies/LatencyRoutingPolicy.jpg)
![Summary6](readme-images/Section%206/RoutingPolicies/FailoverRouting_Policy.jpg)
![Summary7](readme-images/Section%206/RoutingPolicies/GeolocationRoutingPolicy.jpg)
![Summary8](readme-images/Section%206/RoutingPolicies/GeoProximityRouting(UsingBiasAndTrafficFlowMap).jpg)

</details>

<details>
<summary>Section 6: Additional Exam Tips</summary>

![Summary1](readme-images/Section%206/Route53-ExamTips_1.jpg)
![Summary2](readme-images/Section%206/Route53-ExamTips_2.jpg)

</details>

Section 7: VPC, Custom VPC, Configuration
===

<details>
<summary>Section 7: VPC General Information and Exam Tip</summary>

![Summary1](readme-images/Section%207/VPC_Info_1.jpg)
![Summary2](readme-images/Section%207/VPC_Description_1.jpg)
![Summary3](readme-images/Section%207/VPC_Description_2.jpg)
![Summary4](readme-images/Section%207/VPC_Description_3.jpg)
![Summary5](readme-images/Section%207/Diagram.jpg)
![Summary6](readme-images/Section%207/VPC_Features_1.jpg)
![Summary7](readme-images/Section%207/VPC_Features_2.jpg)
![Summary8](readme-images/Section%207/VPC_Features_3(Peering).jpg)
![Summary9](readme-images/Section%207/VPC_Exam_Tips_1.jpg)

</details>

<details>
<summary>Section 7: Custom VPC Configuration</summary>

![Summary1](readme-images/Section%207/VPC_Inside_1.jpg)
![Summary2](readme-images/Section%207/VPC_Inside_2.jpg)
![Summary3](readme-images/Section%207/VPC_Inside_3.jpg)
![Summary4](readme-images/Section%207/VPC_Inside_4.jpg)
![Summary5](readme-images/Section%207/VPC_Inside_5-Internet%20Gateway.jpg)
![Summary6](readme-images/Section%207/VPC_Inside_6-Attach%20gateway%20to%20vpc.jpg)
![Summary7](readme-images/Section%207/VPC_Inside_7-Route_Tables.jpg)
![Summary8](readme-images/Section%207/VPC_Inside_8-SubnetAssociations_with_routeTables.jpg)
![Summary9](readme-images/Section%207/VPC_Inside_9-NewRouteTable.jpg)
![Summary10](readme-images/Section%207/VPC_Inside_10-MakeNewRouteTableAsPublic.jpg)
![Summary11](readme-images/Section%207/VPC_Inside_11-PublicRouteTableConfig.jpg)


Then we could start creating our EC2 instances.
In Private EC2 Instance we could create our Database (for example). 
This EC2 instance shouldn't have direct public access due potential security issues.
![Summary12](readme-images/Section%207/VPC_Inside_12-EC2-Creation.jpg)
![Summary13](readme-images/Section%207/VPC_Inside_13-EC2-SecurityGroup-Selection.jpg)
![Summary14](readme-images/Section%207/VPC_Inside_14-EC2-PrivateSubnet.jpg)
![Summary15](readme-images/Section%207/VPC_Inside_15-EC2-Final%20Configurations.jpg)
![Summary16](readme-images/Section%207/VPC_Inside_16.jpg)

To create SSH access to private EC2 instance though public EC2 - we have to use Private EC2 IP address and make some changes:
 

</details>

<details>
<summary>Section 7: NAT in VPC</summary>

Network address translation (NAT) is a method of remapping one IP address space into another by modifying
 network address information in the IP header of packets while they are in transit across a traffic routing device.
 
Difference between NAT Gateway and NAT Instance:
1) NAT Instance is literally a single EC2 Instance which do this job.
2) NAT Gateway is highly available gateway which allows you to have your private subnets and communicate out 
to the internet without becoming public.

1:
![NAT1](readme-images/Section%207/NAT/VPC-NAT_1.jpg)
![NAT2](readme-images/Section%207/NAT/VPC-NAT_Instance_create_2.jpg)
![NAT3](readme-images/Section%207/NAT/VPC-NAT_Instance_create_3.jpg)

Additional information could be found here: [AWS Documentation Link](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_NAT_Instance.html)
Important Note in documentation! :
You must disable Source/Destination traffic checks.
To Do that:
![NAT4](readme-images/Section%207/NAT/VPC-NAT_Instance_Disable_SourceAndDestination_Checks_4.jpg)
![NAT5](readme-images/Section%207/NAT/VPC-NAT_Instance_RouteTable_5.jpg)
![NAT6](readme-images/Section%207/NAT/VPC-NAT_Instance_RouteTable_Edit_6.jpg)

The problem with this approach is in NAT EC2 Instance. Later This EC2 Instance with NAT would be a massive bottleneck.
And, of course, it's a point of failure.

2: Another approach is create a NAT Gateway.
![NAT5](readme-images/Section%207/NAT/VPC-NAT_Gateway_7.jpg)
![NAT6](readme-images/Section%207/NAT/VPC-NAT_Gateway_8.jpg)
![NAT7](readme-images/Section%207/NAT/VPC-NAT_Gateway_9.jpg)
![NAT8](readme-images/Section%207/NAT/VPC-NAT_Instance_Tips_10.jpg)
![NAT9](readme-images/Section%207/NAT/VPC-NAT_Gateway_Tips_11.jpg)
![NAT10](readme-images/Section%207/NAT/VPC-NAT_Gateway_Tips_12.jpg)

</details>

<details>
<summary>Section 7: Access Control List (ACL) in VPC</summary>

![ACL](readme-images/Section%207/ACL/InboundRules_1.jpg)
![ACL](readme-images/Section%207/ACL/create_new_ACL_2.jpg)
![ACL](readme-images/Section%207/ACL/New_ACL_with_Deny_rules_3.jpg)
![ACL](readme-images/Section%207/ACL/Associate_your_ACL_with_Subnets_4.jpg)
![ACL](readme-images/Section%207/ACL/Associate_your_ACL_with_Subnets_5.jpg)
![ACL](readme-images/Section%207/ACL/ACL_edit-rules-6.jpg)

Pay Attention on Ephemeral Port usage in outbound rules:
On servers, ephemeral ports may also be used as the port assignment on the server end of a communication. This is
done to continue communications with a client that initially connected to one of the server's well-known service 
listening ports.

![ACL](readme-images/Section%207/ACL/ACL_edit-rules-outbound_7.jpg)

We really need them for FTP, SSH, Http sessions and so on (and because NAT gateway uses them as well).
More information: [Ephemeral Port](https://en.wikipedia.org/wiki/Ephemeral_port)
About Ephemeral port ranges for AWS: 
[Ephemeral Port Ranges](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)

![ACL](readme-images/Section%207/ACL/ACL_Allow_Deny_Rules_Example_8.jpg)
![ACL](readme-images/Section%207/ACL/ACL_Allow_Deny_Rules_Example_9.jpg)
![ACL](readme-images/Section%207/ACL/ACL_SubnetHasOneACL_but_OneACLCouldHaveMultipleSubnets_10.jpg)

Exam tips:

![ACL](readme-images/Section%207/ACL/ACL_Tips_11.jpg)
![ACL](readme-images/Section%207/ACL/ACL_Tips_12.jpg)

</details>

<details>
<summary>Section 7: Elastic Load Balancing, VERY QUICK TIPS</summary>

![ELB](readme-images/Section%207/ELB/Quick_tips1.jpg)
![ELB](readme-images/Section%207/ELB/Quick_Types_2.jpg)
![ELB](readme-images/Section%207/ELB/Quick_Create_Http_note-3.jpg)

</details>

<details>
<summary>Section 7: VPC Flow Logs</summary>

![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_1.jpg)
![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_Create_2.jpg)
![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_Create_3.jpg)
![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_Create_Log_Group_4.jpg)
![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_Create_Log_5.jpg)
![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_SetUpPermissionsIAM_For_Logs_6.jpg)
![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_Create_Log_7.jpg)

Exam tips:

![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_tip1.jpg)
![Flow_Logs](readme-images/Section%207/Flow_Logs/Logs_tip2.jpg)

</details>

<details>
<summary>Section 7: Bastion</summary>

Bastion is EC2 which allows you safety access to another EC2 instances using SSH or RDP.
[Bastion Link](https://aws.amazon.com/blogs/security/controlling-network-access-to-ec2-instances-using-a-bastion-server/)

![Bastion](readme-images/Section%207/Bastion/Bastion_1.jpg)
![Bastion](readme-images/Section%207/Bastion/Bastion_2.jpg)
![Bastion](readme-images/Section%207/Bastion/Bastion_tips1.jpg)

</details>

<details>
<summary>Section 7: Direct Connection</summary>

![Direct_Connect](readme-images/Section%207/Direct%20Connect/Direct_connect_1.jpg)
![Direct_Connect](readme-images/Section%207/Direct%20Connect/Direct_connect_2.jpg)
![Direct_Connect](readme-images/Section%207/Direct%20Connect/Direct_connect_3.jpg)

</details>

<details>
<summary>Section 7: VPC Endpoints</summary>

![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_1.jpg)

Two types of Endpoints:
Interface and Gateway.

<b>1. Interface:</b>
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Interface_Type_2.jpg)

<b>2. Gateway:</b>
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Type_3.jpg)
<b>Incorrect way:</b>
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_4.jpg)
<b>Correct:</b>
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_5.jpg)

How to do that:
1. Create a role to get full access to S3 Bucket.
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_6.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_7.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_8.jpg)

2. Attach newly created "S3 admin role to EC2":
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_9.jpg)

3. Check out the ACL Table. We should be confident that we don't have any restrictions to communicate with other services.
You could do that in VPC menu, Access Control List configuration / attach default ACL to our private subnet.

4*. Using S3 address - make manipulation with data on S3.
S3 address example is: <b>s3://YOUR_BUCKET_NAME</b>
It will work using NAT Gateway and Route in Route table:

![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_10.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_11.jpg)

It won't work without internet and connection to NAT Gateway.
That's why we need to configure our Endpoint.

5. Make Virtual Endpoint to get access to S3 Bucket without using NAT Gateway.
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_12.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_13.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_14.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_15.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_16.jpg)
![Virtual_Endpoints](readme-images/Section%207/Virtual%20Endpoints/Virtual_Endpoints_Gateway_Creation_17.jpg)

</details>

<details>
<summary>Section 7: VPC Summary</summary>

Security Groups Additional info: [Link](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html)
To Check IP-addresses and masks: [CIDR.XYZ](https://cidr.xyz/)

Security Group Rules:
* The rules of a security group control the inbound traffic that's allowed to reach the instances that are associated with the security group and the outbound traffic that's allowed to leave them.
* The following are the characteristics of security group rules:
* By default, security groups allow all outbound traffic.
* Security group rules are always permissive; you can't create rules that deny access.
* Security groups are stateful — if you send a request from your instance, the response traffic for that request is allowed to flow in regardless of inbound security group rules. 
* For VPC security groups, this also means that responses to allowed inbound traffic are allowed to flow out, regardless of outbound rules. For more information, see Connection Tracking.
* You can add and remove rules at any time. Your changes are automatically applied to the instances associated with the security group.

![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_1.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_2.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_3.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_4.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_5.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_ACL_6.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_ACL_7.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_Load_Balancer_8.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_FlowLogs_9.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_FlowLogs_10.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_Bastion_11.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_DirectConnect_12.jpg)
![ExamTips](readme-images/Section%207/Virtual%20Endpoints/VPC_Tips_VPC_Endpoint_13.jpg)


</details>

Section 8: High-Availability Architecture, Load Balancing, Target Groups, CloudFormation, BeansTalk
===

<details>
<summary>Section 8: Elastic Load Balancing + Target Groups</summary>

Official documentation: 
[ELB Documentation](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)

![ELB](readme-images/Section%208/Load%20Balancing/Types_1.jpg)
![ELB](readme-images/Section%208/Load%20Balancing/Application_load_balancing_2.jpg)
![ELB](readme-images/Section%208/Load%20Balancing/Network_Load_Balancing_3.jpg)
![ELB](readme-images/Section%208/Load%20Balancing/Classical_load_balancing_4.jpg)
![ELB](readme-images/Section%208/Load%20Balancing/Classical_ELB_issue_5.jpg)
![ELB](readme-images/Section%208/Load%20Balancing/X-Forwarded-For_Header_6.jpg)

Load Balancer and Health Check diagram:
[ELB_Diagram](/files/Load_Balancer&Health_Check_Diagram.pdf)

Registered Instances for Your Classic Load Balancer: 
[link](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-backend-instances.html)

<b>Lab Tips:</b>

Bootstrap script: [link](files/ELB_Lab_1_bootstrap_script.txt)

We have to launch 2 EC2 instances in default VPC, but in different AZ Zones.
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_1.jpg)

Tags: Name - Web01 and Web02
Security Group - WebDMZ
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_2.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_3.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_4.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_5.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_6.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_7.jpg)

Keep in mind that adding Elastic Load Balancer moves you out of free-tier (or barely free-tier)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_8.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_9.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Create_10.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Target_Group_11.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_Target_Group_12.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_app_load_balancer_13.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_app_load_balancer_14.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_app_load_balancer_15.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_app_load_balancer_16.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_app_load_balancer_registered_targets_add_17.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_app_load_balancer_registered_targets_add_18.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/ELB_LAB_app_load_balancer_registered_targets_add_19.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/Application_load_balancing_edit_rules_20.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/Application_load_balancing_edit_rules_21.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/Application_load_balancing_test_22.jpg)
![ELB_Lab](readme-images/Section%208/Load%20Balancing/Application_load_balancing_tips_23.jpg)

<b>ADVANCED LOAD BALANCING PART:</b>
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Sticky_session_1.jpg)
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Sticky_session_2.jpg)
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Cross_Zone_Load_Balancing_3.jpg)
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Cross_Zone_Load_Balancing_4.jpg)
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Cross_Zone_Load_Balancing_5.jpg)
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Path_patterns_routing_6.jpg)
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Path_patterns_routing_7.jpg)
![ELB_Advanced](readme-images/Section%208/Load%20Balancing/Exam_Tips_8.jpg)

</details>

<details>
<summary>Section 8: Launch Configurations, Auto Scaling Groups</summary>

Description: an Auto Scaling Group contains a collection of Amazon EC2 instances that are treated as a logical grouping
for the purposes of automatic scaling and management.
[link](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html)

![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/LaunchConfiguration_1.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/LaunchConfiguration_2.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/AutoScalingGroup_configuration_3.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/AutoScalingGroup_configuration_4.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/AutoScalingGroup_configuration_5.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/AutoScalingGroup_configuration_6.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/AutoScalingGroup_configuration_7.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/AutoScalingGroup_configuration_8.jpg)
![ASG](readme-images/Section%208/LaunchConfiguration,AutoScaling%20Groups/AutoScalingGroup_configuration_9.jpg)

</details>

<details>
<summary>Section 8: HA Architecture</summary>

A lot of questions based on High Availability design.
![HA_Architecture](readme-images/Section%208/HA_Architecture/HA_1.jpg)
![HA_Architecture](readme-images/Section%208/HA_Architecture/HA_2.jpg)
![HA_Architecture](readme-images/Section%208/HA_Architecture/HA_3.jpg)
![HA_Architecture](readme-images/Section%208/HA_Architecture/HA_4.jpg)

</details>

<details>
<summary>Section 8: HA Architecture, Lab</summary>

We need to build the next:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/Schema_1.jpg)

#####1 step - we have to build our S3_buckets:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/S3_2.jpg)

#####2 Security Groups for buckets and MySQL RDS storage:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/SecutiryGroups_For_RDS_and_S3_5.jpg)

#####3 step - CloudFront:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/CloudFront_3.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/CloudFront_4.jpg)

#####4 step - RDS:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/RDS_6.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/RDS_7.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/RDS_8.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/RDS_9.jpg)

#####5 step - IAM and Security Groups:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/IAM_10.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/IAM_11.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/IAM_12.jpg)

#####6 step - provisioning our EC2 instance:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/EC2_13.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/EC2_14.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/EC2_15.jpg)

Bootstrap file: [file](files/HA_Architecture_bootstrap_for_EC2.sh)


Wait while CloudFront and RDS instance are ready to move further.

#####7 step - WordPress configuration:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/WordPress_16.jpg)

You must deploy wp-config.php file manually from ssh console if it can't do that automatically under your
security group policies (but we opened 3306 port for this purposes)

#####8 - create our post on wordpress with pictures and check where they store. They will be right in EC2:
We need to move them to S3 and use our CloudFront to store and distribute them faster.

* Copy media files from directory to media S3 bucket:
Command from SSH to copy media files to S3:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/Copy_recursive_from_wordpress_media_to_s3_bucket_17.jpg)

* Copy all files to code S3 bucket:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/Copy_recursive_from_wordpress_all_to_another_s3_bucket_18.jpg)

* then we need to move our storage to S3s.
We have to modify ".htaccess" file, here we will find our rewrite rule. 
Default configuration:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/htaccess_write_configuration_19.jpg)
We have to paste our CloudFront domain name.
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/CloudFront_Domain_name_20.jpg)
And Paste here:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/Rewrite_this_21.jpg)

Sync htaccess changes with S3-code-bucket:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/sync_changes_22.jpg)

* to move all next changes right to S3 we have to manage our Httpd (apache):
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/httpd_manage_to_work_with_s3_23.jpg)
nano httpd.conf

![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/httpd.config_AllowOverride_rule_24.jpg)

restart apache: service httpd restart

#####9 - S3 policies to make it public:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/media_S3_policy_25.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/media_S3_policy_26.jpg)

#####10 - Load Balancing:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/LoadBalancer_27.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/LoadBalancer_28.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/LoadBalancer_29.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/LoadBalancer_30.jpg)

#####11 - Route53:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/Route53_31.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/Route53_32.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/Route53_33.jpg)

#####12 - TargetGroup:
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/TargetGroups_34.jpg)
![HA_Architecture_Lab](readme-images/Section%208/HA_Architecture/Lab/TargetGroup_35.jpg)

</details>

<details>
<summary>Section 8: Continue of Resilience and Autoscaling. Continues the Lab from previous dropdown</summary>

Scheme:
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/Schema_1.jpg)

![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/Crontab_2.jpg)

#####To run crontab: "service crond restart".
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/Create_Image_from_EC2_instance_3.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/Create_Image_from_EC2_instance_4.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/Create_Image_from_EC2_instance_5.jpg)

#####Adding crontab update schedule for READ EC2 instance:
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/Write_EC2_Instance_Crontab_6.jpg)

#####Adding auto-scaling for READ EC2 instances starts from adding Launch Configuration for Read EC2 instance:
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/AutoScaling_7.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/AutoScaling_8.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/AutoScaling_9.jpg)
bootstrap script: [bootstrap script](files/Section8-Resilience-Autoscaling-80.sh)

#####And now we could start adding AutoScaling according our Launch Configuration:
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/AutoScaling_10.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/AutoScaling_11.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/AutoScaling_12.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/AutoScaling_13.jpg)

#####Target group configuration (delete write EC2 node from target group):
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/TargetGroups_14.jpg)
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/TargetGroups_15.jpg)

#####Checking instances:
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/Instances_16.jpg)

#####Additional tip about RDS failover and how to run it in another AZ:
![Resilience & Autoscaling](readme-images/Section%208/Resilience,Autoscaling/RDS_Failover_reboot_and_run_in_another_AZ_17.jpg)

</details>

<details>
<summary>Section 8: Cloud Formation Lab</summary>

* CloudFormation - service which allows you to create a template of your entire AWS solution.
* In several words - little service which allows you provision all what you need without requiring you
to manipulate EC2 instances.

* You could use CloudFormation to deploy super advanced stuff injecting your personal template in 
pseudo-JSON format

Additional information about CloudFormation advanced provisioning you could find: 
[CloudFormation quickstart](https://aws.amazon.com/quickstart/?quickstart-all.sort-by=item.additionalFields.updateDate&quickstart-all.sort-order=desc)

![CloudFormation](readme-images/Section%208/CloudFormation/Create_Stack_1.jpg)
![CloudFormation](readme-images/Section%208/CloudFormation/Create_Stack_2.jpg)
![CloudFormation](readme-images/Section%208/CloudFormation/Create_Stack_3.jpg)
![CloudFormation](readme-images/Section%208/CloudFormation/Create_Stack_4.jpg)
![CloudFormation](readme-images/Section%208/CloudFormation/Create_Stack_5.jpg)

</details>

<details>
<summary>Section 8: Beanstalk</summary>

* Beanstalk is for users who are not familiar with AWS and CloudFormation and would like to provision WordPress
 clicking one or two buttons.
![BeansTalk](readme-images/Section%208/Beanstalk/Beanstalk_5.jpg)
![BeansTalk](readme-images/Section%208/Beanstalk/Initial_1.jpg)
![BeansTalk](readme-images/Section%208/Beanstalk/Beanstalk_2.jpg)
![BeansTalk](readme-images/Section%208/Beanstalk/Beanstalk_3.jpg)
![BeansTalk](readme-images/Section%208/Beanstalk/Beanstalk_4.jpg)
</details>

Section 9: Applications. SQS, SNS, SWF, Kinesis, Elastic Transcoder, Cognito - Web identify Federation   
===

<details>
<summary>Section 9: SQS</summary>

![SQS](readme-images/Section%209/SQS/Initial_1.jpg)

#####Examples:
![SQS](readme-images/Section%209/SQS/2.jpg)
![SQS](readme-images/Section%209/SQS/example_3.jpg)

#####Info:
![SQS](readme-images/Section%209/SQS/SQS_4.jpg)
![SQS](readme-images/Section%209/SQS/SQS_5.jpg)
![SQS](readme-images/Section%209/SQS/Queue_Types_6.jpg)
![SQS](readme-images/Section%209/SQS/standard_7.jpg)
![SQS](readme-images/Section%209/SQS/standard_8.jpg)
![SQS](readme-images/Section%209/SQS/FIFO_9.jpg)
![SQS](readme-images/Section%209/SQS/FIFO_10.jpg)

#####Exam tips:
![SQS](readme-images/Section%209/SQS/Tips-11.jpg)
![SQS](readme-images/Section%209/SQS/Tips-12.jpg)
![SQS](readme-images/Section%209/SQS/Tips-13.jpg)

</details>

<details>
<summary>Section 9: SNS (Simple Notification Service)</summary>

![SNS](readme-images/Section%209/SNS/Initial_1.jpg)
![SNS](readme-images/Section%209/SNS/Initial_2.jpg)
![SNS](readme-images/Section%209/SNS/SQS_Integration_3.jpg)
![SNS](readme-images/Section%209/SNS/SQS_Integration_4.jpg)
![SNS](readme-images/Section%209/SNS/SNS_Availability_5.jpg)
![SNS](readme-images/Section%209/SNS/SNS_6.jpg)
![SNS](readme-images/Section%209/SNS/SNS_VS_SQS_7.jpg)

</details>

<details>
<summary>Section 9: SQS vs SNS</summary>

#####Entity Type
* SQS : Queue (Similar to JMS)
* SNS : Topic (Pub/Sub system)

#####Message consumption
* SQS : Pull Mechanism - Consumers poll and pull messages from SQS
* SNS : Push Mechanism - SNS Pushes messages to consumers

#####Use Case
* SQS : Decoupling 2 applications and allowing parallel asynchronous processing
* SNS : Fanout - Processing the same message in multiple ways

#####Persistence
* SQS : Messages are persisted for some (configurable) duration if no consumer is available
* SNS : No persistence. Whichever consumer is present at the time of message arrival gets the message and the message is
 deleted. If no consumers are available then the message is lost.
 
* SNS is a notification service for sending text based communication of different types to different destinations. 
* SQS is a queue system for asynchronously manages tasks (called messages).

#####Consumer Type
* SQS : All the consumers are supposed to be identical and hence process the messages in exact same way
* SNS : The consumers might process the messages in different ways

#####Sample applications
* SQS : Jobs framework: The Jobs are submitted to SQS and the consumers at the other end can process the jobs
 asynchronously. If the job frequency increases, the number of consumers can simply be increased to achieve
 better throughput.
* SNS : Image processing. If someone uploads an image to S3 then watermark that image, create a thumbnail and also send
 a Thank You email. In that case S3 can publish notifications to a SNS Topic with 3 consumers listening to it. 1st one
 watermarks the image, 2nd one creates a thumbnail and the 3rd one sends a Thank You email. All of them receive the
 same message (image URL) and do their processing in parallel.

#####Comparision
* SNS is a distributed publish-subscribe system. Messages are pushed to subscribers as and when they are sent by
 publishers to SNS.

* SQS is distributed queuing system. Messages are NOT pushed to receivers. Receivers have to poll or pull messages
 from SQS. Messages can't be received by multiple receivers at the same time. Any one receiver can receive a message,
 process and delete it. Other receivers do not receive the same message later. Polling inherently introduces some
 latency in message delivery in SQS unlike SNS where messages are immediately pushed to subscribers. SNS supports
 several end points such as email, sms, http end point and SQS. If you want unknown number and type of subscribers
 to receive messages, you need SNS.

* You don't have to couple SNS and SQS always. You can have SNS send messages to email, sms or http end point apart
 from SQS. There are advantages to coupling SNS with SQS. You may not want an external service to make connections
 to your hosts (firewall may block all incoming connections to your host from outside). Your end point may just die
 because of heavy volume of messages. Email and SMS maybe not your choice of processing messages quickly. By coupling
 SNS with SQS, you can receive messages at your pace. It allows clients to be offline, tolerant to network and host
 failures. You also achieve guaranteed delivery. If you configure SNS to send messages to an http end point or email
 or SMS, several failures to send message may result in message being dropped.

</details>

<details>
<summary>Section 9: SWF (Simple WorkFlow Service) + SWF vs SQS</summary>

![SWF](readme-images/Section%209/SWF/initial_1.jpg)
![SWF](readme-images/Section%209/SWF/initial_2.jpg)
![SWF](readme-images/Section%209/SWF/SQS_VS_SWF.jpg)
![SWF](readme-images/Section%209/SWF/SWF_Actors(Elements).jpg)

* While there are a limited range of SDKs available for SWF, AWS provides an HTTP based API which allows you to 
interact using any language as long as you phrase the interactions in HTTP requests.

* One time only completion is a key feature of SWF. At one time this was a key distinction from SQS, however 
with SQS FiFo queues, this is no longer a distinguishing feature.

</details>

<details>
<summary>Section 9: Elastic Transcoder</summary>

![Transcoder](readme-images/Section%209/Transcoder/Init_1.jpg)
![Transcoder](readme-images/Section%209/Transcoder/example_2.jpg)
![Transcoder](readme-images/Section%209/Transcoder/exam_tips_3.jpg)

</details>

<details>
<summary>Section 9: API Gateway</summary>

![API_Gateway](readme-images/Section%209/API%20Gateway/Init_1.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/description_2.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/usage_3.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/api_capability_4.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/deploy_5.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/caching_6.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/same_origin_policy_7.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/cors_8.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/cors_action_9.jpg)
![API_Gateway](readme-images/Section%209/API%20Gateway/tips_10.jpg)

</details>

<details>
<summary>Section 9: Kinesis 101: Kinesis Streams, Kinesis Firehose, Kinesis Analytics</summary>

![Kinesis](readme-images/Section%209/Kinesis/streaming_data_1.jpg)
![Kinesis](readme-images/Section%209/Kinesis/kinesis_2.jpg)
![Kinesis](readme-images/Section%209/Kinesis/kinesis_types_3.jpg)
![Kinesis](readme-images/Section%209/Kinesis/kinesis_work_scheme_4.jpg)
![Kinesis](readme-images/Section%209/Kinesis/Kinesis_tips_5.jpg)
![Kinesis](readme-images/Section%209/Kinesis/Kinesis_Firehose_6.jpg)
![Kinesis](readme-images/Section%209/Kinesis/Kinesis_Analytics_7.jpg)
![Kinesis](readme-images/Section%209/Kinesis/Tips_8.jpg)

</details>

<details>
<summary>Section 9: Web Identity Federation. Cognito</summary>

![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/WebIdentityFederation_1.jpg)
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/Cognito_2.jpg)
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/Cognito_scheme_3.jpg)
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/Cognito_4.jpg)
#####Users pools and Identity pools:
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/User_pools_5.jpg)
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/Identity_pools_6.jpg)

#####Interactions and Synchronisation:
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/scheme_7.jpg)
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/cognito_8.jpg)
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/cognito_9.jpg)

#####Exam tips:
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/exam_tips_10.jpg)
![Cognito](readme-images/Section%209/Web%20Identity%20Federation%20And%20Cognito/exam_tips_11.jpg)

</details>

<details>
<summary>Section 9: Exam tips</summary>

![S9_ExamTips](readme-images/Section%209/Exam%20Tips/SQS_1.jpg)
![S9_ExamTips](readme-images/Section%209/Exam%20Tips/SQS_2.jpg)
![S9_ExamTips](readme-images/Section%209/Exam%20Tips/SWF_SQS_3.jpg)
![S9_ExamTips](readme-images/Section%209/Exam%20Tips/SNS_4.jpg)
![S9_ExamTips](readme-images/Section%209/Exam%20Tips/SNS_SQS_5.jpg)

* In IT the term 'message' can be used in the common sense, or to describe a piece of data of Task in an asynchronous
 queueing system such as MQseries, RabbitMQ or SQS.
 
* In SWF, what does a "domain" refer to? - A collection of related workflows.
 
* What does Amazon SES stand for? - Simple Email Service.

![S9_ExamTips](readme-images/Section%209/Exam%20Tips/API_Gateway_6.jpg)
![S9_ExamTips](readme-images/Section%209/Exam%20Tips/Kinesis_7.jpg)
![S9_ExamTips](readme-images/Section%209/Exam%20Tips/Cognito_8.jpg)
![S9_ExamTips](readme-images/Section%209/Exam%20Tips/Cognito_9.jpg)

</details>

<details>
<summary>Section 10: Lambda, lecture and docs</summary>

#####Info:
![Lambda](readme-images/Section%2010/Lambda/Brief_1.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_2.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_3.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_4.jpg)



#####Triggers:
![Lambda](readme-images/Section%2010/Lambda/lambda_with_triggers_5.jpg)
* Services which could trigger Lambda:
[link](https://docs.aws.amazon.com/lambda/latest/dg/lambda-services.html#intro-core-components-event-sources)
* Comparision with EC2:
[link](https://aws.amazon.com/lambda/faqs/)

![Lambda](readme-images/Section%2010/Lambda/lambda_with_http_6.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_vs_traditional_architecture_7.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_languages_8.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_costs_9.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_10.jpg)

#####Exam tips:
![Lambda](readme-images/Section%2010/Lambda/lambda_tips_11.jpg)
![Lambda](readme-images/Section%2010/Lambda/lambda_tips_12.jpg)

</details>

<details>
<summary>Section 10: Serverless webpage, Lab1</summary>

zipped files of this course: [files](files/ServerlessWebsiteResources.zip)

![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/Scheme_1.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/lambda_2.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/lambda_3.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/lambda_4.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/lambda_5.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/lambda_6.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/lambda_7.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/lambda_8.jpg)

#####Trigger configuration:
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/configure_a_trigger_9.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/configure_a_trigger_10.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/configure_a_trigger_11.jpg)

#####API Gateway:
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/API_Gateway_Console_12.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/API_Gateway_Console_13.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/API_Gateway_Console_14.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/API_Gateway_Console_15.jpg)

#####Deploy API:
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/API_Gateway_Console_Deploy_API_16.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/API_Gateway_Console_17.jpg)

#####Lambda test:
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/API_Gateway_Console_18.jpg)

#####S3 for static html page:
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/S3_For_static_page_19.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/S3_For_static_page_20.jpg)

#####S3 configuration to host website:
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/S3_configuration_to_host_Website_21.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/S3_configuration_to_host_Website_22.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/S3_configuration_to_host_Website_23.jpg)
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/S3_configuration_to_host_Website_24.jpg)

#####Route53:
![Lambda_Lab1](readme-images/Section%2010/Serverless%20website_Lab-1/Route53_25.jpg)

</details>

<details>
<summary>Section 10: Serverless, Alexa Lab-2</summary>

![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/Brief_1.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/Brief_2.jpg)

1) You have to create S3 bucket and make it public:
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/S3_config_3.jpg)

2) We will generate audio file using Voice Poly service:
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/Amazon_Poly_4.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/Amazon_Poly_5.jpg)

3) Check S3 is file exists
4) Create lambda:
Pay attention, you have to create lambda in a region where Alexa's trigger is enabled (only in several regions)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/lambda_6.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/lambda_7.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/lambda_8.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/lambda_9.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/lambda_configuration_10.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/lambda_configuration_11.jpg)

5) Next you have to visit Amazon Developers and play with simulator:
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/Amazon_Developers_12.jpg)
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/Amazon_Developers_13.jpg)

6) update data in the file and add audio link from S3 bucket:
![Lambda_Lab2](readme-images/Section%2010/Serverless%20Alexa_Lab-2/Add_audio_instead_of_text_14.jpg)

That's it.
</details>

<details>
<summary>Section 10: Q&A</summary>

* Question 1:
  You have created a simple serverless website using S3, Lambda, API Gateway and DynamoDB. 
   Your website will process the contact details of your customers, predict an expected delivery 
   date of their order and store their order in DynamoDB. You test the website before deploying it 
   into production and you notice that although the page executes, and the lambda function is triggered, 
   it is unable to write to DynamoDB. What could be the cause of this issue?
  
* A: Your lambda function does not have sufficient Identity Access Management (IAM) permissions to write to DynamoDB.

* Question 3: 
  What AWS service can be used to help resolve an issue with a lambda function?
  
* A: AWS X-Ray helps developers analyze and debug production, distributed applications, such as those built using a
   microservices & serverless architectures.
 
* Question 4:
  You have created a serverless application to add metadata to images that are uploaded to a specific S3 bucket.
   To do this, your lambda function is configured to trigger whenever a new image is created in the bucket.
   What will happen when multiple users upload multiple different images at the same time?
  
* A: Multiple instances of the Lambda function will be triggered, one for each image.
   Each time a Lambda function is triggered, an isolated instance of that function is invoked. 
   Multiple triggers result in multiple concurrent invocations, one for each time it is triggered.
  
* Question 5:
  As a DevOps engineer you are told to prepare complete solution to run a piece of code that required multi-threaded
   processing. The code has been running on an old custom-built server based around a 4 core Intel Xeon processor. 
   Which of these best describe the AWS compute services that could be used?

* A: EC2, ECS, and Lambda. The exact ratio of cores to memory has varied over time for Lambda instances, 
    however Lambda like EC2 and ECS supports hyper-threading on one or more virtual CPUs 
    (if your code supports hyper-threading). 

</details>
