FROM scratch

ADD 96f0feaca93fe8b126c3fd9a924c734e364c88fcae2aaf0e33faa52690b1666d.tar.xz /
ADD a3967ace0e13480b92db3a102c4a10b5c9697c52ef4e2d2070c12dbc175909ac.tar.xz /
ADD a91fc9c643c60435b5a8491954892547776744242c0bb25e23ed799dbeeac6ca.tar.xz /
ADD ba3057e506c1dc69bd02e5962b22cef00cdd40c69da7c0a9d5a996f33dad1b9f.tar.xz /
ADD d11ec087185f7543380b6f1b084664db2e3b1eb1ee54fd6fb45235249ddcdffc.tar.xz /
ADD e02cce58edb07b7d0d859f4aa1fe87f72a75a9e196d4db4d8e4d9d77faa55334.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
