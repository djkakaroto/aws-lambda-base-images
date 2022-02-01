FROM scratch

ADD 2204817baa6c6422150c8c12ce5ff0c8b4962f51c0db681189ec894b18906f22.tar.xz /
ADD 5f6ab52fd338c7a9f7d5d6fe51a7ebd2fa21bbf5adc99696980e03c9acf67f2e.tar.xz /
ADD 6146b82ff25b64aa7bec052d34dc4fec6c708afac5572b7c2cd00dac45d35017.tar.xz /
ADD c437ea3bc07181fef7efe178562274f391538903acd041ed528656a8e1b25787.tar.xz /
ADD c91486735a1fb475bf7b32ed323715acc71211d9533c546a48bf19b8acfaad9b.tar.xz /
ADD cca4b0c25a4bda490959a93bd0d06a9dbaa6ed3dbb2fc88f247f436237e16b6e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
