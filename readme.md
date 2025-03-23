# FastAPI Cryptographic API

This project provides a FastAPI-based cryptographic API that supports both **symmetric (AES) and asymmetric (RSA) encryption**, along with **hashing functionalities** for data integrity verification.

## Features
- **Key Generation**: Supports AES and RSA key generation.
- **Encryption & Decryption**: Provides endpoints for AES (CBC mode) and RSA encryption & decryption.
- **Hashing & Verification**: Supports multiple hashing algorithms (SHA-256, SHA-512, MD5, etc.).
- **Dockerized Deployment**: Easily deploy using Docker and GitHub Actions.

## Installation

### Prerequisites
- Python 3.9
- Conda (for environment management)

### Setup
#### 1. Clone the repository:
```sh
   git clone https://github.com/your-username/crypto-api.git
   cd crypto-api
```

#### 2. Create a Conda environment & install dependencies:
```sh
   conda env create -f environment.yml
   conda activate crypto
```

#### 3. Run the API locally:
```sh
   uvicorn main:app --reload
```

#### 4. Access API docs:
Visit `http://127.0.0.1:8000/docs` for interactive API documentation.

## API Endpoints

### **Key Management**
- **Generate Key (AES/RSA)**: `POST /generate-key`

### **Encryption & Decryption**
- **Encrypt Data (AES/RSA)**: `POST /encrypt`
- **Decrypt Data (AES/RSA)**: `POST /decrypt`

### **Hashing & Verification**
- **Generate Hash**: `POST /generate-hash`
- **Verify Hash**: `POST /verify-hash`

## Supported Hashing Algorithms
```json
{
  "SHA-256": hashlib.sha256,
  "SHA-512": hashlib.sha512,
  "SHA-1": hashlib.sha1,
  "MD5": hashlib.md5,
  "SHA-224": hashlib.sha224,
  "SHA-384": hashlib.sha384,
  "BLAKE2b": hashlib.blake2b,
  "BLAKE2s": hashlib.blake2s
}
```

## Docker Deployment

### **Build & Run Docker Container Locally**
```sh
   docker build -t your-docker-username/crypto-api .
   docker run -p 8000:8000 your-docker-username/crypto-api
```

### **Deploy to Docker Hub (via GitHub Actions)**
1. Set **GitHub Secrets**:
   - `DOCKER_USERNAME`: Your Docker Hub username.
   - `DOCKER_PASSWORD`: Your Docker Hub password.
2. Push to GitHub, and the **GitHub Action** will automatically build & push the image.


