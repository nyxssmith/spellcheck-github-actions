FROM python:3.7-alpine

LABEL "repository"="https://github.com/UnicornGlobal/spellcheck-github-actions"
LABEL "homepage"="https://github.com/actions"

RUN apk add --no-cache aspell
RUN pip3 install pyspelling

COPY entrypoint.sh /entrypoint.sh
COPY spellcheck.yaml /spellcheck.yaml
COPY wordlist.txt /wordlist.txt

ENTRYPOINT ["sh", "/entrypoint.sh"]
