**🚀 Personal Portfolio Deployment:**

This project demonstrates automated deployment of a personal portfolio website on AWS using Terraform (IaC) and GitHub Actions (CI/CD).

The pipeline provisions cloud infrastructure, hosts the portfolio on S3 (static hosting), distributes it globally using Netlify, and automates deployments via GitHub Actions workflows.

**🏗️ Architecture:**

<img width="703" height="295" alt="image" src="https://github.com/user-attachments/assets/72e65277-5338-4aed-ac33-9c694ea0433e" />


Frontend: Static portfolio website (HTML/CSS/JS).
AWS S3: Stores static website files.
Netlify: Provides global CDN distribution for low latency.
Terraform: Infrastructure as Code for reproducible deployments.
GitHub Actions: CI/CD pipeline for automated provisioning & deployment

Developer → GitHub Repo → GitHub Actions → Terraform → AWS S3
                                              ↓
                                           Netlify (for hosting + domain)



**🚀 Deployment Workflow**

Developer commits changes → Push to GitHub

GitHub Actions Workflow runs

terraform validate
terraform plan 
terraform apply 


Portfolio automatically deployed & served globally 🌍

**🛠️ Prerequisites**

AWS account with IAM permissions
Terraform >= 1.5
GitHub repository with Actions enabled
Portfolio static site code (HTML/CSS/JS)


**✈️ Now we are ready to deploy our application on cloud ⛅**

Clone this repository to your local machine using

      gitclone https://github.com/logesh81098/logesh-shanmugavel-portfolio.git

Execute Terraform plan to check about infrastructure

            terraform plan

Execute Terraform apply to build this infrasturcute

            terraform apply

✨Finally,type yes for prompt

<img width="1918" height="862" alt="image" src="https://github.com/user-attachments/assets/48d96ef8-bc15-4d16-ad7f-53fc48cbf95e" />

Portfolio Link: https://logesh-shanmugavel-portfolio.netlify.app/

Thank you so much for reading..😅

Happy learning !!!!!!!



