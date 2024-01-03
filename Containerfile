FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN sampleflaskprj create-db
RUN sampleflaskprj populate-db
RUN sampleflaskprj add-user -u admin -p admin
EXPOSE 5000
CMD ["sampleflaskprj", "run"]
