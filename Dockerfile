FROM golang:latest AS build
WORKDIR /
COPY code-education-rocks.go .
RUN [ "go", "build", "code-education-rocks.go" ]

FROM scratch
WORKDIR /
COPY --from=build code-education-rocks .
ENTRYPOINT [ "./code-education-rocks" ]