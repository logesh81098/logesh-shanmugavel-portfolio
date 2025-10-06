**🚀 Personal Portfolio Deployment:**
This project demonstrates automated deployment of a personal portfolio website on AWS using Terraform (IaC) and GitHub Actions (CI/CD).

The pipeline provisions cloud infrastructure, hosts the portfolio on S3 (static hosting), distributes it globally using Netlify, and automates deployments via GitHub Actions workflows.

**🏗️ Architecture:**
Frontend: Static portfolio website (HTML/CSS/JS).
AWS S3: Stores static website files.
Netlify: Provides global CDN distribution for low latency.
Terraform: Infrastructure as Code for reproducible deployments.
GitHub Actions: CI/CD pipeline for automated provisioning & deployment

Developer → GitHub Repo → GitHub Actions → Terraform → AWS S3
                                              ↓
                                           Netlify (for hosting + domain)


**⚙️ Features**
✅ Automated Infrastructure provisioning with Terraform ✅ Secure storage using S3 Bucket (static hosting) ✅ CI/CD pipeline using GitHub Actions:

terraform plan runs on PR
terraform apply runs on merge ✅ Modular Terraform structure for scalability


**🚀 Deployment Workflow**
Developer commits changes → Push to GitHub

GitHub Actions Workflow runs

terraform fmt + terraform validate
terraform plan on PR (review changes)
terraform apply on merge to main
AWS Infrastructure Updated

Portfolio automatically deployed & served globally 🌍

**🛠️ Prerequisites**
AWS account with IAM permissions
Terraform >= 1.5
GitHub repository with Actions enabled
Portfolio static site code (HTML/CSS/JS)


**📦 Setup Instructions**
Clone the repository

git clone https://github.com/logesh81098/logesh-shanmugavel-portfolio.git
cd logesh-shanmugavel-portfolio
Configure AWS credentials (via GitHub Secrets or CLI).

Initialize Terraform

terraform init
Run plan & apply

terraform plan
terraform apply

Thank you so much for reading..😅

Happy learning !!!!!!!


🔄 CI/CD Pipeline
Pull Request (PR) → Runs terraform fmt, validate, plan
Main Branch Merge → Runs terraform apply to update AWS infra
Auto Deployment → New portfolio 
