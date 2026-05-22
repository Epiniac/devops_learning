# Simple Python DevOps Sandbox

This project is a minimalist sandbox designed to demonstrate core DevOps practices: containerization, Infrastructure as Code (IaC), and Automated Testing (CI).

## Features

* **Application:** A lightweight Python application.
* **CI Pipeline:** Automated syntax checking and smoke testing on every push via GitHub Actions.
* **Docker Ready:** Built to be easily containerized.
* **Infrastructure:** Outlined to be deployed on AWS using Terraform.

---

## Project Structure

```text
.
├── .github/workflows/  # CI/CD Pipeline configurations
│   └── test.yml        # GitHub Actions workflow for Python testing
├── app.py              # Main Python application
├── requirements.txt    # Python dependencies
├── Dockerfile          # Docker creation recipe
└── main.tf             # Terraform infrastructure 
```

---

## Prerequisites

*  **Python 3.11+**
* **Git**