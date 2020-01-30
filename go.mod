module github.com/terra-project/core

go 1.12

require (
	github.com/cosmos/cosmos-sdk v0.34.4
	github.com/gorilla/mux v1.7.0
	github.com/otiai10/copy v0.0.0-20180813032824-7e9a647135a1
	github.com/pkg/errors v0.8.1
	github.com/rakyll/statik v0.1.6
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.4.0
	github.com/stretchr/testify v1.4.0
	github.com/tendermint/go-amino v0.14.1
	github.com/tendermint/tendermint v0.31.11
)

replace github.com/cosmos/cosmos-sdk => github.com/ChorusOne/cosmos-sdk v0.34.10-6

replace golang.org/x/crypto => github.com/tendermint/crypto v0.0.0-20180820045704-3764759f34a5
