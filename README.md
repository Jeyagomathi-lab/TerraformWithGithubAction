# Terraform with GitHub Actions CI/CD

This repository demonstrates a clean CI/CD pipeline for Terraform using GitHub Actions. It supports:

- **Dry run (Terraform Plan)** for development on every push to `dev` branch.
- **Apply to production** after merging to the `main` branch.

---

## 📁 Folder Structure
├── .github/workflows # Contains GitHub Actions workflows<br>
├── main.tf # Terraform configuration<br>
├── .terraform.lock.hcl # Provider version lock file<br>
├── .gitignore # Files to exclude from git<br>
└── README.md # This file<br>


## 🔁 CI/CD Flow

```plaintext
Developer pushes to dev branch
        |
        V
GitHub Action: Terraform Plan (Dry Run)
        |
        V
Merge Pull Request to main
        |
        V
GitHub Action: Terraform Apply (Production)
```
## 🌐 GitHub Actions Results
🔄 Terraform Plan – Dev (Dry Run) (on every PR push)
![image](https://github.com/user-attachments/assets/153fe239-244b-4b34-848a-d142a418d716)
✅ Terraform Apply – Production (after PR merge)
![image](https://github.com/user-attachments/assets/879512fe-c821-45b1-927e-fa8faa2e8fc2)

## 🛡️ Backend Configuration
Remote state is stored in S3 using use_lockfile = true for native state locking (no DynamoDB needed).

Sensitive values (like credentials) are managed securely using GitHub Secrets.

## 📝 Requirements
Terraform v1.11+ (latest recommended)

AWS S3 bucket created manually with versioning enabled

GitHub repository secrets:

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

AWS_REGION

TF_BUCKET

## ✅ Best Practices Followed
.terraform/ and *.tfstate files are ignored via .gitignore

Large provider files are excluded from commits

GitHub Actions workflows are organized and reusable
