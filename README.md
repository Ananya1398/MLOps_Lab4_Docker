## Changes made to this lab
1. Replaced Iris dataset with a Health dataset containing BMI, Cholesterol, and Blood Pressure values to predict Health Status.
2. Added a new API endpoint that returns the status name (Healthy, At Risk, Diseased) instead of numeric label.
3. Containerized the entire project using Docker, including model training and FastAPI serving inside the image.

---

## Steps to run docker
1. Check docker installation and create image
```bash
docker --version
docker build -t health-ml:v1 .
docker run -p 8000:8000 health-ml:v1
```

2. Verify API is running
```bash
http://localhost:8000
http://localhost:8000/docs

```

