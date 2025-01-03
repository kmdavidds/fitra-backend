package main

import "github.com/kmdavidds/fitra-backend/cmd/server"

func main()  {
	server.NewHTTP().Listen(":3000")
}