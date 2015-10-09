FROM ruby:2.2.0

RUN apt-get update -qq && apt-get install -y build-essential nodejs nano

ENV APP_HOME /work
ENV SUPPORT /support
ENV EDITOR nano

ADD support/bin/* /usr/local/bin/

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $SUPPORT/
RUN cd $SUPPORT && bundle install

ADD . $APP_HOME

COPY ./support/entrypoint.sh /bin/
ENTRYPOINT ["sh", "/bin/entrypoint.sh"]
