# pandoc-pdf docker image
使用 pandoc 来生成 pdf 文档，支持中文字体 。

## Usage
### Building pdf
```dockerfile
FROM yunnysunny/pandoc-pdf:latest  AS build-stage

COPY . /data
RUN pandoc *.md  -o gen.pdf --pdf-engine=weasyprint \
--table-of-contents --toc-depth=4

FROM scratch AS export-stage
COPY --from=build-stage /data/gen.pdf /
```

## Tag
1.0.0