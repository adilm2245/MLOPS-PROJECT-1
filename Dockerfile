
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends libgomp1 && rm -rf /var/lib/apt/lists/*
WORKDIR /app

# Install deps from requirements first (cacheable)
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Now copy package metadata so pip can install your package
COPY pyproject.toml README.md ./
# If you use setuptools, also COPY setup.cfg/setup.py as applicable

# Copy the source, then install your package
COPY . .
RUN pip install --no-cache-dir .


# If you expose a web app, set default command (adjust as needed)
CMD ["python", "application.py"]
