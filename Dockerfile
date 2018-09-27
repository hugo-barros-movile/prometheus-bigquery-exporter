FROM golang:1.8
COPY . /go/src/github.com/hugo-barros-movile/prometheus-bigquery-exporter
RUN go get -v github.com/hugo-barros-movile/prometheus-bigquery-exporter/cmd/bigquery_exporter
ENTRYPOINT ["/go/bin/bigquery_exporter"]
