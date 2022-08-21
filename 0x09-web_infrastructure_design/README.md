# 0x09. Web infrastructure design

## Learning Objectives
- You must be able to draw a diagram covering the web stack you built with the sysadmin/devops track projects
- You must be able to explain what each component is doing
- You must be able to explain system redundancy
- Know all the mentioned acronyms: LAMP, SPOF, QPS


## 0. Simple web stack
👻 Design a one server web infrastructure that hosts the website that is reachable via **```www.foobar.com```**. Start your explanation by having a user wanting to access your website.

- You must use:
    - 1 server
    - 1 web server (Nginx)
    - 1 application server
    - 1 application files (your code base)
    - 1 database (MySQL)
    - 1 domain name **```foobar.com```** configured with a **```www```** record that points to your server IP **```8.8.8.8```**
- [Specifics about this infrastructure](simple_web_stack_pt1.md)
- [Issues with this infrastructure](simple_web_stack_pt2.md)

## 1. Distributed web infrastructure
👻 Design a three server web infrastructure that hosts the website **```www.foobar.com```**.

- You must add:
    - 2 servers
    - 1 web server (Nginx)
    - 1 application server
    - 1 load-balancer (HAproxy)
    - 1 set of application files (your code base)
    - 1 database (MySQL)
- [Specifics about this infrastructure](distributed_web_infrastructure_pt1.md)
- [Issues with this infrastructure](distributed_web_infrastructure_pt2.md)

## 2. Secured and monitored web infrastructure
👻 Design a three server web infrastructure that hosts the website **```www.foobar.com```**, it must be secured, serve encrypted traffic, and be monitored.

- You must add:
    - 3 firewalls
    - 1 SSL certificate to serve **```www.foobar.com```** over HTTPS
    - 3 monitoring clients (data collector for Sumologic or other monitoring services)
- [Specifics about this infrastructure](secured_and_monitored_web_infrastructure_pt1.md)
- [Issues with this infrastructure](secured_and_monitored_web_infrastructure_pt2.md)

## 3. Scale up
- You must add:
    - 1 server
    - 1 load-balancer (HAproxy) configured as cluster with the other one
    - Split components (web server, application server, database) with their own server
- [Specifics about this infrastructure](scale_up.md)
