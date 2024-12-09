FROM alpine:3.21
RUN apk add parallel wget
RUN mkdir ~/.parallel && touch ~/.parallel/will-cite
VOLUME [ "/ngrams-urls", "/ngrams-zips", "/ngrams" ]
ENTRYPOINT [ "/bin/sh", "-c" ]
CMD [ "parallel -a /ngrams-urls 'wget -nc -nv -O /ngrams-zips/$(basename {}) {}; unzip /ngrams-zips/$(basename {}) -d /ngrams' -n && find /ngrams" ]
