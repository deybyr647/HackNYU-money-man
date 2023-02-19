import { Configuration, PlaidApi, PlaidEnvironments } from "plaid";

const config = {
    PLAID_CLIENT_ID: process.env.PLAID_CLIENT_ID,
    PLAID_SECRET: process.env.PLAID_SECRET,
    PLAID_ENV: process.env.PLAID_ENV || 'sandbox',
    PLAID_PRODUCTS: (process.env.PLAID_PRODUCTS).split(","),
    PLAID_COUNTRY_CODES: (process.env.PLAID_COUNTRY_CODES || 'US').split(','),
    PLAID_REDIRECT_URI: process.env.PLAID_REDIRECT_URI || '',
    ACCESS_TOKEN: null,
    PUBLIC_TOKEN: null,
    ITEM_ID: null,
    PAYMENT_ID: null,
    TRANSFER_ID: null
}

const configuration = new Configuration({
    basePath: PlaidEnvironments[config.PLAID_ENV],
    baseOptions: {
        headers: {
            'PLAID-CLIENT-ID': config.PLAID_CLIENT_ID,
            'PLAID-SECRET': config.PLAID_SECRET,
        },
    },
});

const client = new PlaidApi(configuration);

export { client, config };