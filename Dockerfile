FROM python:3.10.2-slim

RUN useradd -ms /bin/bash python

RUN pip install pdm

USER python

WORKDIR /home/python/app

ENV MY_PYTHON_PACKAGES=/home/python/app/__pypackages__/3.10
ENV PYTHONPATH=${PYTHONPATH}/home/python/app
ENV PATH $PATH:${MY_PYTHON_PACKAGES}/bin

RUN echo 'eval "$(pdm --pep582)"' >> ~/.zshrc && \
    echo 'eval "$(pdm --pep582)"' >> ~/.bashrc


CMD [ "tail", "-f", "/dev/null" ]