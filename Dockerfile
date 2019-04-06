FROM python
ENV REDIS_URL <INSERT URL>
ENV PORT <PORT NUMBER>
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org Flask Redis
CMD ["python", "test1.py"]
