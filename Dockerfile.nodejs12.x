FROM scratch
ADD x86_64/3af6f832cb393ed721dcc029d617b2047b7cded2cd9f8f3d04ee67643fd40944.tar.xz /
ADD x86_64/4508c848c3ea8ff940f4623c5874f1fa2e563ddf87c62135d2512d3fe309b986.tar.xz /
ADD x86_64/4d5606e164d14a75eff74ec35fe24a72e081029ca29ed755f02e81830b18a03c.tar.xz /
ADD x86_64/ab84b274cb35e1d4fca904634c5e082b29f48c7d7762223814da93add1519e09.tar.xz /
ADD x86_64/ac543fe55ef789e1d46487eb2e52c054a8a516da246c76e83b150ca64e9e475e.tar.xz /
ADD x86_64/be2d71ebe6fefea153e4049d30439976c433fc1f345c94baabec68d0e921bc13.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
