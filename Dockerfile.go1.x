FROM scratch

ADD 04c57c2a6577d21b6d271c50678b8cfeb0d029dfc67fc694e44d753153591ffe.tar.xz /
ADD 7dcb791c49864e926c73d198f99770b28a4a0a9f506909bd563cfae345086b93.tar.xz /
ADD 7f12084112c7daf7333e2ff430a7a8b04817ac4207bbf46839617c3b2ae84a21.tar.xz /
ADD b4349866c434ae260089fc440c1f8abc626f490a212ad4695be3c58800bb18e1.tar.xz /
ADD b530d2c46a1866bbf8c35878550657672d0c289ba04e3aad0bad70958bb614db.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
