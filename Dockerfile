FROM python:stretch


WORKDIR /finalProject
COPY . /finalProject
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
