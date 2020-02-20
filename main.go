package main

import (
	"fmt"
	"log"
	"net/http"
)

func handle(w http.ResponseWriter, r *http.Request) {
	fmt.Println(r.Header)
	for i, v := range r.Header {
		fmt.Printf("header #%v: %v\n", i, v)
	}
	fmt.Println("----------------", r.RemoteAddr)
}

func main() {
	http.HandleFunc("/", handle)
	log.Println("starting server...")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		panic(err)
	}
}
