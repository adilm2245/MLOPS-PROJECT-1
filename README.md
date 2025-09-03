📦 MLOPS Project 1

An end-to-end Machine Learning Operations (MLOps) project demonstrating the integration of data ingestion, preprocessing, model training, deployment, and CI/CD pipelines with Docker and Jenkins.

This project follows best practices in structuring ML projects, ensuring scalability, reproducibility, and automation across the ML lifecycle.


🚀 Features

Data Pipeline: Automated ingestion and preprocessing of raw data.

Model Training: Configurable ML model pipeline with hyperparameter tuning.

Experiment Tracking: Organized artifacts storage (raw, processed, and models).

Web Application: Flask-based UI for model inference.

Containerization: Docker support for consistent deployment.

CI/CD: Jenkins pipeline for automated build, test, and deployment.

Configuration Management: Centralized YAML & Python configs for flexibility.


MLOPS-PROJECT-1
│── application.py        # Flask application entry point
│── Dockerfile            # Docker image definition
│── Jenkinsfile           # CI/CD pipeline definition
│── requirements.txt      # Python dependencies
│── setup.py              # Package setup script
│── artifacts/            # Model artifacts (raw, processed, trained models)
│── config/               # Configurations (YAML + Python configs)
│── custom_jenkins/       # Custom Jenkins Dockerfile
│── notebook/             # Jupyter notebook & dataset (train.csv)
│── pipeline/             # ML pipeline scripts
│── src/                  # Core source code (data ingestion, preprocessing, etc.)
│── utils/                # Utility functions
│── static/               # CSS styles for Flask UI
│── templates/            # HTML templates for Flask UI
