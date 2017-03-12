FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev
RUN gem install gollum
RUN gem install github-markdown asciidoctor
COPY config.rb /usr/local/etc/gollum/
VOLUME /wiki
WORKDIR /wiki
EXPOSE 80
CMD ["gollum", "--port", "80", "--config", "/usr/local/etc/gollum/config.rb"]
