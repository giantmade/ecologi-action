# 🌲 Plant Trees 🌲

This action allows you to plant trees as you code, using the [Ecologi](https://ecologi.com/) API. You can add this to your workflow to plant trees when you commit code, when you merge a pull request, or any other situation which can trigger a Github Action.

To use this action, you need an account with Ecologi (see [plans here](https://ecologi.com/plan)), and an API key (login to Ecologi, and then navigate to "Account Settings > API"). You may want to set your Ecologi API key as an [account-wide secret](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-an-organization) using the name `ECOLOGI_API_KEY`.

## Inputs

### `ecologi_api_key`

**Required** Your API key for Ecologi, in the format `XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX`

### `number-of-trees`

**Required** The number of trees to plant when the action is run. Defaults to 1.

## Outputs

### `ecologi-response`

The raw response from the Ecologi API.

## Example usage

uses: giantmade/ecologi-action@v1
with:
  ecologi_api_key: ${{ secrets.ECOLOGI_API_KEY }}
  trees: 1
