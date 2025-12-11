# 🏨 Hotel Reservation Cancellation Prediction — MLOps Project

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Framework](https://img.shields.io/badge/Framework-Flask-orange.svg)](https://flask.palletsprojects.com/)
[![MLflow](https://img.shields.io/badge/Experiment%20Tracking-MLflow-brightgreen.svg)](https://mlflow.org/)
[![Docker](https://img.shields.io/badge/Containerized-Docker-blue.svg)](https://www.docker.com/)
[![Jenkins](https://img.shields.io/badge/CI%2FCD-Jenkins-red.svg)](https://www.jenkins.io/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A complete **end-to-end MLOps pipeline** for predicting hotel reservation cancellations using **LightGBM**, **MLflow**, **Docker**, and **Jenkins**.  
The system handles data ingestion from Google Cloud Storage (GCS), preprocessing, model training, experiment tracking, and deployment via a Flask web app.
 **Live App URL:** *[project-link](https://ml-project-661593700688.us-central1.run.app/)*



## 🚀 Overview

This project aims to **predict whether a hotel reservation will be cancelled** based on customer and booking features.  
It follows MLOps best practices — including modularized code, experiment tracking, CI/CD automation, and containerized deployment.

### **Project Hightlighs**
- End-to-End MLOps Workflow (data → model → deployment)
- MLflow for experiment tracking and model versioning
- Jenkins CI/CD for automated testing, retraining, Docker builds, and deployment
- Docker for reproducible environments
- Flask API for model inference
- Google Cloud Platform (GCP) for hosting and scalability
- Interactive UI for real-time cancellation prediction

## 🌐 Live Application (GCP)

Access the deployed application here:
*[project-link](https://ml-project-661593700688.us-central1.run.app/)*

## 🧠 Use Case

The system predicts whether a hotel booking is likely to be Canceled or Not Canceled, helping hotels:

- Reduce last-minute cancellations
- Optimize overbooking strategies
- Improve revenue forecasting

## 🧱 Repository Structure

This project follows a structured MLOps approach, separating configuration, source code, utilities, and deployment artifacts for a robust and reproducible machine learning workflow.

## Project Directory Tree

```bash
MLOPS-PROJECT-1-main/
│
├── application.py          # 🌐 Flask web application for model inference.
├── Dockerfile              # 🐳 Defines the container environment for deployment.
├── Jenkinsfile             # ⚙️ CI/CD pipeline configuration script.
├── requirements.txt        # 📦 Project dependencies.
├── setup.py                # 🏗️ Python package setup file.
│
├── config/
│ ├── config.yaml           # ⚙️ Central configuration (ingestion, preprocessing, paths).
│ ├── model_params.py       # 🔍 Hyperparameter search configuration.
│ └── paths_config.py       # 📂 Artifact and file path settings.
│
├── src/                    # 💻 Core ML Pipeline Logic
│ ├── data_ingestion.py     # 📥 Data ingestion (GCS) and train-test split.
│ ├── data_preprocessing.py # 🧹 Feature encoding, transformation, and saving processed data.
│ ├── model_training.py     # 🧠 Model training (LightGBM) and MLflow logging.
│ ├── custom_exception.py   # 🚫 Custom error handler.
│ ├── logger.py             # 📝 Centralized logging setup.
│ └── __init__.py           # Makes src a Python package.
│
├── utils/                  # 🛠️ Helper Functions
│ └── common_functions.py   # Helper utilities (YAML reader, file ops, etc.).
│
├── templates/
│ └── index.html            # 🖼️ Flask front-end template.
│
├── static/
│ └── style.css             # 🎨 Front-end styling.
│
└── artifacts/              # 💾 Output Storage
├── models/
│ └── lgbm_model.pkl        # The trained LightGBM model artifact.
└── processed/
    ├── processed_train.csv # Preprocessed training data.
    └── processed_test.csv  # Preprocessed testing data.
