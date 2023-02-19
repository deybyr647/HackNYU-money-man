import { VercelApiHandler, VercelRequest, VercelResponse } from "@vercel/node";

import { client, config } from "../../plaid-config";

export default async (req: VercelRequest, res: VercelResponse): Promise<void> => {

    try {
        const { access_token, item_id } = req.body;
        res.json({ access_token, item_id, plaid_products: config.PLAID_PRODUCTS });
    } catch(err) {
        res.status(500).json({ error: err.message });
    }
}