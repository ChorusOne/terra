module github.com/terra-project/core

go 1.12

require (
	github.com/btcsuite/btcd v0.0.0-20190315201642-aa6e0f35703c // indirect
	github.com/btcsuite/btcutil v0.0.0-20190316010144-3ac1210f4b38 // indirect
	github.com/cosmos/cosmos-sdk v0.34.0
	github.com/cosmos/go-bip39 v0.0.0-20180819234021-555e2067c45d // indirect
	github.com/golang/protobuf v1.3.2 // indirect
	github.com/gorilla/mux v1.7.0
	github.com/mattn/go-isatty v0.0.8 // indirect
	github.com/onsi/ginkgo v1.10.1 // indirect
	github.com/onsi/gomega v1.7.0 // indirect
	github.com/pkg/errors v0.8.1
	github.com/rakyll/statik v0.1.6
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.4.0
	github.com/streadway/amqp v0.0.0-20190827072141-edfb9018d271
	github.com/stretchr/testify v1.4.0
	github.com/tendermint/go-amino v0.14.1
	github.com/tendermint/tendermint v0.31.10
	golang.org/x/crypto v0.0.0-20190923035154-9ee001bba392 // indirect
	golang.org/x/net v0.0.0-20190923162816-aa69164e4478 // indirect
	golang.org/x/sys v0.0.0-20190911201528-7ad0cfa0b7b5 // indirect
	golang.org/x/text v0.3.2 // indirect
	gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15 // indirect
	gopkg.in/yaml.v2 v2.2.4 // indirect
)

replace github.com/cosmos/cosmos-sdk => github.com/ChorusOne/cosmos-sdk v0.34.4-10

replace github.com/tendermint/tendermint => github.com/ChorusOne/tendermint v0.31.5-1

replace golang.org/x/crypto => github.com/tendermint/crypto v0.0.0-20180820045704-3764759f34a5
