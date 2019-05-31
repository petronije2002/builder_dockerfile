FROM petronije2002/completed_builder:latest

RUN apk add --update curl alpine-sdk

#gcc g++ 
    

# RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

# RUN mkdir /install
ENV PYTHONPATH /install
# COPY requirements.txt .
# RUN pip install --target=/install numpy 

# RUN pip install --target=/install pandas

RUN pip install --target=/install --no-deps (whatever you need to install)

RUN rm -rf /var/cache/apk/*

CMD ["/bin/sh"]


# LATER ON !!! BUILD THIS TO THE 'NEW BUILDER' AND USE IT TOGETHER
# WITH BASE TOM MAKE DOCKER YOU NEED



# FROM python:3.6-alpine as base
# # FROM base as builder
# RUN mkdir /install
# RUN apk add py3-numpy

# WORKDIR /install
# # COPY requirements.txt /requirements.txt
# # RUN pip install --no-cache-dir --prefix --global-option="--prefix=/install" -r /requirements.txt
# # FROM base
# # COPY --from=builder /install /usr/local
# # COPY src /app



# WORKDIR /app

# CMD ["/bin/ash"]



