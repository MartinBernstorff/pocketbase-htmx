dev: 
	npx nodemon --signal SIGTERM -e "templ go" -x "go tool templ generate && go run main.go serve" -i "**/*_templ.go"

generate: 
	templ generate

build: generate
	go build

run: generate
	go run main.go serve