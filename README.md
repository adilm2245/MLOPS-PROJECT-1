# 🏨 Hotel Reservation Cancellation Prediction — MLOps Project

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Framework](https://img.shields.io/badge/Framework-Flask-orange.svg)](https://flask.palletsprojects.com/)
[![MLflow](https://img.shields.io/badge/Experiment%20Tracking-MLflow-brightgreen.svg)](https://mlflow.org/)
[![Docker](https://img.shields.io/badge/Containerized-Docker-blue.svg)](https://www.docker.com/)
[![Jenkins](https://img.shields.io/badge/CI%2FCD-Jenkins-red.svg)](https://www.jenkins.io/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A complete **end-to-end MLOps pipeline** for predicting hotel reservation cancellations using **LightGBM**, **MLflow**, **Docker**, and **Jenkins**.  
The system handles data ingestion from Google Cloud Storage (GCS), preprocessing, model training, experiment tracking, and deployment via a Flask web app.

---

## 📚 Table of Contents

1. [Overview](#overview)
2. [Repository Structure](#repository-structure)
3. [Features](#features)
4. [Setup and Installation](#setup-and-installation)
5. [Configuration](#configuration)
6. [How to Run](#how-to-run)
7. [Training and Evaluation](#training-and-evaluation)
8. [Model Serving (Flask App)](#model-serving-flask-app)
9. [Docker Deployment](#docker-deployment)
10. [CI/CD Pipeline (Jenkins)](#cicd-pipeline-jenkins)
11. [MLflow Experiment Tracking](#mlflow-experiment-tracking)
12. [Notes & Recommendations](#notes--recommendations)
13. [Contributing](#contributing)
14. [License & Contact](#license--contact)

---

## 🚀 Overview

This project aims to **predict whether a hotel reservation will be cancelled** based on customer and booking features.  
It follows MLOps best practices — including modularized code, experiment tracking, CI/CD automation, and containerized deployment.

### **Key Objectives**
- Prevent overbooking and revenue loss by forecasting cancellations.
- Automate data flow from ingestion → preprocessing → model training.
- Enable reproducibility and scalability through Docker and Jenkins.

---

## 🧱 Repository Structure

MLOPS-PROJECT-1-main/
│
├── application.py # Flask web application for inference
├── Dockerfile # Containerization of the app
├── Jenkinsfile # CI/CD pipeline configuration
├── requirements.txt # Python dependencies
├── setup.py # Package setup file
│
├── config/
│ ├── config.yaml # Configuration for ingestion, preprocessing, and model paths
│ ├── model_params.py # Hyperparameter search configuration
│ └── paths_config.py # Artifact and file path settings
│
├── src/
│ ├── data_ingestion.py # Data ingestion from GCS and train-test split
│ ├── data_preprocessing.py # Feature encoding, transformation, and saving processed data
│ ├── model_training.py # Model training with LightGBM and MLflow logging
│ ├── custom_exception.py # Custom error handler
│ ├── logger.py # Centralized logging setup
│ └── init.py
│
├── utils/
│ └── common_functions.py # Helper utilities (YAML reader, file ops, etc.)
│
├── templates/
│ └── index.html # Flask front-end
│
├── static/
│ └── style.css # Front-end styling
│
└── artifacts/
├── models/
│ └── lgbm_model.pkl # Trained LightGBM model
└── processed/
├── processed_train.csv # Preprocessed training data
└── processed_test.csv # Preprocessed testing data

