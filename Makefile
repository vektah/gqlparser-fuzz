schema-fuzz.zip:
	go-fuzz-build github.com/vektah/gqlparser-fuzz/schema

fuzz-schema: schema-fuzz.zip
	go-fuzz -bin=./schema-fuzz.zip -workdir=schema

query-fuzz.zip:
	go-fuzz-build github.com/vektah/gqlparser-fuzz/query

fuzz-query: query-fuzz.zip
	go-fuzz -bin=./query-fuzz.zip -workdir=query
