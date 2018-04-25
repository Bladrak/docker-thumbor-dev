FROM julianbei/alpine-opencv-microimage:p2-3.1

RUN apk add --update openssl-dev jpeg-dev
RUN apk add --no-cache pngquant@edgunity
RUN apk add --no-cache libjpeg-turbo-utils
RUN apk del cmake curl-dev
RUN apk add --update curl-dev libffi-dev cmake
RUN pip install pipenv
