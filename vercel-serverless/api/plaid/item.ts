import { VercelApiHandler, VercelRequest, VercelResponse } from "@vercel/node";

import { client, config } from "../../plaid-config";

export default async (req: VercelRequest, res: VercelResponse): Promise<void> => {

    try {
        const { access_token } = req.body;

        // Pull the Item - this includes information about available products,
        // billed products, webhook information, and more.
        const itemResponse = await client.itemGet({
            access_token
        });

        // Also pull information about the institution
        const configs = {
            institution_id: itemResponse.data.item.institution_id,
            country_codes: config.PLAID_COUNTRY_CODES,
        };

        //@ts-ignore
        const instResponse = await client.institutionsGetById(configs);
        res.status(200).json({
            item: itemResponse.data.item,
            institution: instResponse.data.institution,
        });


    } catch(err) {
        res.status(500).json({ error: err.message });
    }
}