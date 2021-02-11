FROM python

WORKDIR /app

COPY requirements.txt .
COPY blockchain.py .
RUN pip install -r requirements.txt

EXPOSE 4400

CMD ["uwsgi", "--http-socket", "0.0.0.0:4400", "--module", "blockchain:app", "--enable-threads"]
