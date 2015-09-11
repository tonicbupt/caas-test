FROM python
RUN pip install pip --upgrade
ADD caas-test /caas-test
WORKDIR /caas-test
RUN pip install -r ./requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
