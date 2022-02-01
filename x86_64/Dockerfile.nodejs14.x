FROM scratch

ADD 4d5606e164d14a75eff74ec35fe24a72e081029ca29ed755f02e81830b18a03c.tar.xz /
ADD c1ab56856655606e67e820a111d9ccc8d3a4e79efd4fca316d56607eb06bf332.tar.xz /
ADD ce62de88235fddeb0fafeae62292812e186b54d155c27e75c0a10904554e341b.tar.xz /
ADD d7ec7b036547a035f1165eb3a3ba66a5b7a9c9ee7dd2fb5b6c4a5e0545b250f5.tar.xz /
ADD d9dd7f1907d604144a079be44a3e780b42ec3231a18b41e7cf728a1e59816ed9.tar.xz /
ADD f023eb83f931d80b90831a7939a0c165fab8eec76b4f520c3066e2393cac8477.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
