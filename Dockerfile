FROM python:3.11-slim-bookworm

ENV project_path /home/projetos/data-science-challenge

RUN mkdir -p $project_path
WORKDIR $project_path

RUN useradd -ms /bin/bash dockeruser

USER dockeruser

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8888

CMD ["/bin/bash"]
