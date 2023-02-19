import { VercelApiHandler, VercelRequest, VercelResponse } from "@vercel/node";

import { client, config } from "../../plaid-config";

export default async (req: VercelRequest, res: VercelResponse): Promise<void> => {

    try {
        const { access_token } = req.body;

        const response = await client.accountsGet({
            access_token,
        });

        res.json(response.data);
    } catch(err) {
        res.status(500).json({ error: err.message });
    }
}