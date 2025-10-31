FROM python:slim

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install gunicorn

COPY templates templates
COPY main.py boot.sh ./
RUN chmod a+x boot.sh

ENV FLASK_APP=main.py

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]