FROM python3:alpine
COPY . /app
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./simple_Docker_app.py