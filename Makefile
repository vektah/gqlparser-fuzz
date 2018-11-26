schema-fuzz.zip:
	go-fuzz-build github.com/vektah/gqlparser-fuzz/schema

fuzz-schema: schema-fuzz.zip
	go-fuzz -bin=./schema-fuzz.zip -workdir=schema
