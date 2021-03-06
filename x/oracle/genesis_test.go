package oracle

import (
	"testing"

	"github.com/stretchr/testify/require"

	sdk "github.com/cosmos/cosmos-sdk/types"
	core "github.com/terra-project/core/types"
	"github.com/terra-project/core/x/oracle/internal/keeper"
)

func TestExportInitGenesis(t *testing.T) {
	input, h := setup(t)

	makePrevoteAndVote(t, input, h, 1, core.MicroSDRDenom, randomPrice, 0)
	makePrevoteAndVote(t, input, h, 1, core.MicroSDRDenom, randomPrice, 1)
	makePrevoteAndVote(t, input, h, 1, core.MicroSDRDenom, randomPrice.MulInt64(10000), 2)

	EndBlocker(input.Ctx.WithBlockHeight(1), input.OracleKeeper)

	input.OracleKeeper.SetFeedDelegate(input.Ctx, keeper.ValAddrs[0], keeper.Addrs[1])
	input.OracleKeeper.AddPrevote(input.Ctx, NewPricePrevote("1234", "denom", sdk.ValAddress{}, int64(2)))
	input.OracleKeeper.AddVote(input.Ctx, NewPriceVote(sdk.NewDec(1), "denom", sdk.ValAddress{}))
	input.OracleKeeper.SetLunaPrice(input.Ctx, "denom", sdk.NewDec(123))
	genesis := ExportGenesis(input.Ctx, input.OracleKeeper)

	newInput := keeper.CreateTestInput(t)
	InitGenesis(newInput.Ctx, newInput.OracleKeeper, genesis)
	newGenesis := ExportGenesis(newInput.Ctx, newInput.OracleKeeper)

	require.Equal(t, genesis, newGenesis)
}
