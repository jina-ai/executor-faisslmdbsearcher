# DO NOT DELETE THIS DOCKERFILE
# required because error with normalizer

FROM jinaai/jina:3-py37-standard

COPY . /workspace
WORKDIR /workspace

# install the third-party requirements
RUN pip install -r requirements.txt

ENTRYPOINT ["jina", "executor", "--uses", "config.yml"]
