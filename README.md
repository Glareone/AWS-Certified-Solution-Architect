### AWS CERTIFIED SOLUTION ARCHITECT MATERIALS

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
<summary>Section4: Lab1-tips</summary>

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
![EC2-exam7](readme-images/EC2-Lab3-Security-Exam-tips2.png)
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

Section 5: Databases On AWS.

<details>
<summary>Section 5: Relational & NOSQL Databases</summary>

The most important features:
![RDS](readme-images/Section%205/RDS.png)
![RDS](readme-images/Section%205/Multi-AZ.png)
![RDS](readme-images/Section%205/Read%20Replica.png)
Database processing types:
![RDS](readme-images/Section%205/OLTP.png)
![RDS](readme-images/Section%205/OLAP.png)
Caching:
![RDS](readme-images/Section%205/Elastic%20Cache%20types.png)
![RDS](readme-images/Section 5/ElastiCache/ElastiCache.png)
Exam Tips:
![RDS](readme-images/Section%205/Exam%20Tips%20-%20db%20types.png)
![RDS](readme-images/Section%205/Exam%20Tips2-performance.png)

</details>

<details>
<summary>Section 5: NOSQL Databases. DynamoDB </summary>

![DynamoDB](readme-images/Section 5/DynamoDB/DynamoDB.png)
![DynamoDB](readme-images/Section%205/DynamoDB/DynamoDB%20Basics.png)
![DynamoDB](readme-images/Section%205/DynamoDB/DynamoDB-Exam%20Tips.png)
![DynamoDB](readme-images/Section%205/DynamoDB/DynamoDB-Eventual%20Consistent%20Reads.png)
![DynamoDB](readme-images/Section%205/DynamoDB/DynamoDB-StronglyConsistent%20Reads.png)

</details>

<details>
<summary>Section 5: Redshift. Database Warehousing </summary>

![Redshift](readme-images/Section 5/Redshift/Redshift.png)
![Redshift](readme-images/Section%205/OLAP.png)
![Redshift](readme-images/Section%205/Redshift/Redshift-Configurations.png)
![Redshift](readme-images/Section%205/Redshift/Redshift%20Compression.png)
![Redshift](readme-images/Section%205/Redshift/Redshift%20Backups.png)
![Redshift](readme-images/Section%205/Redshift/Redshift%20Pricing.png)
![Redshift](readme-images/Section%205/Redshift/Massively%20Parallel%20Processing.png)
![Redshift](readme-images/Section%205/Redshift/Availability.png)
![Redshift](readme-images/Section%205/Redshift/Security.png)

</details>

<details>
<summary>Section 5: MySQL - Aurora </summary>

![Aurora](readme-images/Section 5/MySql%20-%20Aurora/Aurora.png)
![Aurora](readme-images/Section 5/MySql%20-%20Aurora/Basics.png)
![Aurora](readme-images/Section 5/MySql%20-%20Aurora/Basics2.png)
![Aurora](readme-images/Section 5/MySql%20-%20Aurora/Basics3.png)
![Aurora](readme-images/Section 5/MySql%20-%20Aurora/Aurora%20Replicas.png)
![Aurora](readme-images/Section 5/MySql%20-%20Aurora/Aurora%20Replicas%20Comparition%20with%20MySQL.png)

</details>

<details>
<summary>Section 5: MySQL - ElastiCache </summary>

![ElastiCache](readme-images/Section 5/ElastiCache/ElastiCache.png)
![ElastiCache](readme-images/Section 5/ElastiCache/Elastic%20Cache%20types.png)
![ElastiCache](readme-images/Section 5/ElastiCache/Memcached%20vs%20Redis.png)
![ElastiCache](readme-images/Section 5/ElastiCache/Exam%20Tips.png)

</details>