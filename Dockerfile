
FROM python:3.11-slim

# System deps needed by scikit-learn/lightgbm etc.
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgomp1 \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install only what’s needed first for better layer caching
# If you have a requirements file, prefer that for reproducibility.
# Otherwise install your package (non-editable) for production images.
#COPY pyproject.toml README.md ./
# If you have a requirements.txt, do:
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Fallback: build from pyproject directly
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir .

# Now copy the rest of the app (after deps to leverage caching)
COPY . .

# Recommended: run as non-root (optional, but good practice)
RUN useradd -m appuser
USER appuser

# If you expose a web app, set default command (adjust as needed)
CMD ["python", "application.py"]
