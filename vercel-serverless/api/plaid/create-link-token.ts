import { VercelApiHandler, VercelRequest, VercelResponse } from "@vercel/node";

import { client, config } from "../../plaid-config";

export default async (req: VercelRequest, res: VercelResponse): Promise<void> => {

    try {
        const { access_token } = req.body;

        const configs = {
            user: {
                // This should correspond to a unique id for the current user.
                client_user_id: 'user-id',
            },
            client_name: 'Plaid Quickstart',
            products: config.PLAID_PRODUCTS,
            country_codes: config.PLAID_COUNTRY_CODES,
            language: 'en',
            redirect_uri: "http://localhost:3000"
        };

        if (config.PLAID_REDIRECT_URI !== '') {
            configs.redirect_uri = config.PLAID_REDIRECT_URI;
        }

        //@ts-ignore
        const createTokenResponse = await client.linkTokenCreate(configs);
        res.status(200).json(createTokenResponse.data);

    } catch(err) {
        res.status(500).json({ error: err.message });
    }
}



