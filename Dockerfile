FROM ubuntu 
#FROM python:3.6.5-slim
RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install Flask
ADD app.py /
WORKDIR /
EXPOSE 5000
CMD ["python3","app.py"]