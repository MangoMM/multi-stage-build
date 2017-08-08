FROM alpine:3.5 AS step1
RUN echo 'Hello from step1' > /root/step1.txt

FROM alpine:3.6 as step2
COPY --from=step1 /root/step1.txt /root/step2.txt
RUN cat /root/step2.txt
