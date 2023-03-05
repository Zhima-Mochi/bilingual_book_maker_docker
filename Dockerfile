FROM python:3.10

RUN apt-get update && \
    apt-get install -y git

WORKDIR /app

ADD https://api.github.com/repos/yihong0618/bilingual_book_maker/commits /dev/null

RUN git clone https://github.com/yihong0618/bilingual_book_maker.git /app && \
    pip install -r /app/requirements.txt

ENTRYPOINT ["python3", "make_book.py"]
