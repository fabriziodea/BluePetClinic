# DevOps Final Project Specification: BluePetClinic
> Pet Clinic Team Blue: Fabrizio, George, Jake & Thinesh

---

### Table of Contents

- [Introduction](#introduction)
- [Summary](#summary)
- [Jira](#jira)
- [Risk Assessment](#risk-assessment)
- [Service Infrastructure](#service-infrastructure)
- [CI Pipeline](#ci-pipeline)
- [Jenkins Build](#jenkins-build)
- [Ansible](#ansible)
- [Terraform](#terraform)
- [Docker](#docker)
- [Docker Swarm](#docker-swarm)
- [NGINX](#nginx)
- [Demonstration](#demonstration)

---

## Introduction

The purpose of this ReadMe document is to outline the project specification of the DevOps final project that we will be working. We will be working with these externally developed applications:

- https://github.com/spring-petclinic/spring-petclinic-angular
- https://github.com/spring-petclinic/spring-petclinic-rest

They are well documented applications for the 'Spring Pet Clinic' domain, one of which serves as front end client using AngularJS and the other as an API using Java.

#### Architecture/Project Management

The objective of the project was: "to experience working to complete a deliverable as part of a team, this experience will be invaluable for your future interviews with clients."

This project is primarily concerned with deploying the applications.

For this project, we should have:
- Kanban Board: Jira 
- Version Control: GIT & GITHUB
- CI Server: Jenkins
- Configuration Management: Ansible
- Cloud Server: AWS
- Containerisation: Docker
- Orchestration Tool: Kubernetes, Docker Swarm
- Reverse Proxy: NGINX
- Infrastructure as code (IaC): Terraform

---

## Summary

Applications are first tested in a virual machine to see if they are working. Ansible files are made that involves Inventory, playbook.yaml and roles/tasks. 

We need 3 new Virtual Machines in AWS and these are:
- ()
- manager
- worker


---

## Jira

![Jira]

---
## Risk Assessment


![Risk Assessment]

---
## Service Infrastructure

![Service Infrastructure]


---
## CI Pipeline

![CI Pipeline]

---
## AWS
When starting our project, we had to create & test whether the applications works by installing a Virtual Machine on AWS. AWS offers services for compute, storage, networking, big data, machine learning and the internet of things(IoT) as well as cloud management, security and developer tools.

In order for us to connect my application to the VM, we had to place our local machines public key in. Then we SSH through VSC to my VM and clone this to GIT repository. 



---
## Jenkins Build

#### Jenkins Pipeline
After setting previous stages up, I had to make a Jenkins pipeline in order for jenkins to read. This can be done by creating a Jenkinsfile. The pipeline has a number of benefits and in this project, the main benefit is that it has made the process code easier for iterative development with other features such as code review and access control. The Jenkinsfile defines stages and we can give the steps for each stage. 

For this project, we had to execute scripts in our steps as it is easy to implement. 

![Jenkins Pipeline](project-image-url)


---

## Ansible
Ansible is a tool that generates written instructions for automating IT professionals' work throughout the entire system infrastructure. It is used for application deployment, configuration management, intra-service orchestration and practically anything else a system admin does on a weekly or daily basis. Ansible connects to node on a network and sends Ansible module to each node. It runs these modules through SHH and deletes them once they are done.

It is used to automate the connectivity of a manager and its workers. The stages for this to work works as follows:

#### Inventory file


#### Playbook.yaml
Playbook.yaml is a file that defines which hosts (mentioned in the inventory) will have what roles. 

#### Roles directories

#### main.yaml
In this file, we had to specify the tasks for any node who is assigned to do a task. 

![Ansible](project-image-url)


---
## Terraform
Terraform is an infrastructure as code (IaC) tool that allows you to build, change, and version infrastructure safely and efficiently. 

---

## Docker
Docker is a container management software so you have containers, images and volumes. The benefits using this software is its simplicity,collaboration,flexibility and totality.

So in order to use this software, we had to make Dockerfiles for the applications in order to build images. 

After making dockerfiles, we need to make a docker-compose.yaml which makes the use of configuration files to build all of the containers at once. It builds and deploys them as 1 service. 


---
## Docker Swarm
Docker Swarm allows the user to manage multiple containers deployed across multiple host machines.


---
## NGINX
NGINX is a open source software for web serving, reverse proxying, caching and load balancing.



![Nginx]





---
## Demonstration



---




