FROM scratch

ADD 2204817baa6c6422150c8c12ce5ff0c8b4962f51c0db681189ec894b18906f22.tar.xz /
ADD 261a0cb429772c2d4acef2561aa88c68d4dfc97620c438761e60d953dbed7e21.tar.xz /
ADD 820042e7a3c820f24fdefb4790f05add0868f47ba43c03f372b1fff80ba4ce2d.tar.xz /
ADD 85f6ef313e3a116fde8f97f56c3360f4bd308bb9f38bb0a16fa0f607474420a6.tar.xz /
ADD b50cf700e667a317d670e57ceb5fb39d2955fdcd409dcb308142142b0d53a3b1.tar.xz /
ADD e5ca377e2fa115906c2fb3834c5523110d13072e75eac22ff2c7dd2fd73d90f5.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
