import { VercelApiHandler, VercelRequest, VercelResponse } from "@vercel/node";

import { client, config } from "../../plaid-config";

export default async (req: VercelRequest, res: VercelResponse): Promise<void> => {

    try {
        const { public_token } = req.body;

        const tokenResponse = await client.itemPublicTokenExchange({
            public_token
        });

        let ACCESS_TOKEN = tokenResponse.data.access_token;
        let ITEM_ID = tokenResponse.data.item_id;

        res.status(200).json({
            // the 'access_token' is a private token, DO NOT pass this token to the frontend in your production environment
            access_token: ACCESS_TOKEN,
            item_id: ITEM_ID,
            error: null,
        });

    } catch(err) {
        res.status(500).json({ error: err.message });
    }
}