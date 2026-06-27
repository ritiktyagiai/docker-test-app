# 🚀 Docker Test App

A lightweight, containerized Python web application built using **Flask**. This project serves as a clean, ready-to-use template for testing Docker environments, verifying port-forwarding, and practicing containerization workflows (building, running, tagging, and pushing to Docker Hub).

---

## ⚡ Tech Stack

🛡️ Built with modern, minimal, and efficient tools:

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

---

## ⚙️ Prerequisites

Ensure you have the following installed on your system:
*   [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Running and active)
*   [Python 3.9+](https://www.python.org/downloads/) *(Optional: Only if running locally without Docker)*

---

## 🚀 Getting Started

### Option 1: Run Locally (Without Docker)

1. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

2. **Start the Flask server:**
   ```bash
   python app.py
   ```

3. **Verify:** Open your browser and navigate to `http://localhost:5000`. You should see the successful test landing page!

---

### Option 2: Run with Docker (Recommended)

Follow these steps to containerize and run the application.

#### 1. Build the Docker Image
Build the container image and tag it as `ritiktyagiai/docker-test-app`:
```bash
docker build -t ritiktyagiai/docker-test-app .
```

#### 2. Run the Container
Run the built container while mapping port `5000` of the host to port `5000` of the container:
```bash
docker run -p 5000:5000 ritiktyagiai/docker-test-app
```
> [!TIP]
> To run the container in the background (detached mode), append `-d` to the command:
> ```bash
> docker run -d -p 5000:5000 ritiktyagiai/docker-test-app
> ```

#### 3. Verification
*   Open your browser and visit: **[http://localhost:5000](http://localhost:5000)**
*   You should see:
    ```text
    🚀 Docker Testing Successfully.
    ```

---

## 📤 Publishing to Docker Hub

If you want to publish the built image to your remote Docker Hub registry, follow these commands:

1. **Log in to Docker Hub:**
   ```bash
   docker login
   ```

2. **Verify built images locally:**
   ```bash
   docker images
   ```

3. **Tag the image:**
   Tag your local image targeting your remote Docker Hub repository namespace (e.g., `ritiktyagi`):
   ```bash
   docker tag ritiktyagiai/docker-test-app:latest 
   ```

4. **Push the image:**
   ```bash
   docker push ritiktyagi/docker-test-app:latest
   ```

---

## 📜 License

This project is licensed under the **MIT License** — feel free to use, modify, and distribute.



## ❤️ Credits

Made with ❤️ by **Ritik Tyagi**  
If you find this project useful, consider giving it a ⭐ on GitHub!


