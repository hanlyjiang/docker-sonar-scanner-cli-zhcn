FROM sonarsource/sonar-scanner-cli

USER root
RUN apt-get update && apt-get install -y locales apt-utils && rm -rf /var/lib/apt/lists/* \
    && localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8

ENV LANG zh_CN.utf8

USER scanner-cli
