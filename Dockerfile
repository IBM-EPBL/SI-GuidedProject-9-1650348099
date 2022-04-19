  FROM python:3.7
  LABEL maintainer="Sandeep Doodigani, sandeep.doodigani@gmail.com"
  RUN apt-get update
  RUN mkdir /app
  WORKDIR /app
  COPY . /app
  RUN pip install -r requirements.txt
  EXPOSE 8080
  ENTRYPOINT [ "python" ]
  CMD [ "app.py" ]