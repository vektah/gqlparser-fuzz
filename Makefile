fuzz-schema:
	go-fuzz-build github.com/vektah/gqlparser-fuzz/schema
	go-fuzz -bin=./schema-fuzz.zip -workdir=schema

fuzz-query:
	go-fuzz-build github.com/vektah/gqlparser-fuzz/query
	go-fuzz -bin=./query-fuzz.zip -workdir=query
