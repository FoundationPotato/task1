# Use Python 3.6 or later as a base image
ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION:-3.8}

WORKDIR /app

# Copy contents into image
COPY . .
 
# Install pip dependencies from requirements
RUN pip install -r requirements.txt

# Set YOUR_NAME environment variable
# ENV YOUR_NAME="James"

# Expose the correct port
EXPOSE 5500

# Create an entrypoint
ENTRYPOINT ["python3", "app.py"]
