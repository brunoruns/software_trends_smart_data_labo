FROM python:3.11-slim

WORKDIR /opt/notebooks

RUN pip install --no-cache-dir \
    jupyter \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    requests \
    beautifulsoup4 \
    neo4j

RUN mkdir -p /opt/notebooks

EXPOSE 8888

# CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=/opt/notebooks"]
