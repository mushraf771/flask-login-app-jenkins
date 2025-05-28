# FROM python:alpine3.10
# WORKDIR /app 
# COPY . /app
# RUN pip install -r requirements.txt
# EXPOSE 5000
# CMD python ./launch.py

#COPY requirements.txt /app/requirements.txt
#ENTRYPOINT ["python", "./launch.py"]
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]

# FROM jenkins/jenkins:lts 
# USER root 
# # Install Docker CLI inside the Jenkins Container 
# RUN apt-get update && \ 
# apt-get install -y docker.io && \ 
# apt-get clean 
# USER jenkins 