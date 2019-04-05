FROM python
ENV REDIS_URL 34.208.149.49
ENV PORT 3000
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org Flask Redis
CMD ["python", "test1.py"]
