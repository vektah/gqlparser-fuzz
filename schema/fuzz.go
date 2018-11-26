package schema

import (
	"github.com/vektah/gqlparser/ast"
	"github.com/vektah/gqlparser/parser"
)

func Fuzz(data []byte) int {
	doc, err := parser.ParseSchema(&ast.Source{Name: "fuzz.graphql", Input: string(data)})

	if err != nil {
		if doc != nil {
			panic("doc != nil on error")
		}
		return 0
	}

	if doc == nil {
		panic("doc nil without error")
	}

	return 1
}
