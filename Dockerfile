FROM baskoning/gamebase:latest

COPY Files /

ARG PORT=5000
ENV PORT="${PORT}"

ARG LANIP="192.168.99.100"
ENV LANIP="${LANIP}"

EXPOSE ${PORT}

CMD ifconfig & python startflask.py ${LANIP} ${PORT}
