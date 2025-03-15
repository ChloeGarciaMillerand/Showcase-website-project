import client from "./client.js";

const dataMapper = {
    async getTheLastPhotos() {
        const query = 'SELECT * FROM photos ORDER BY date DESC LIMIT 3;';
        const result = await client.query(query);
        return result.rows;
    }
}

export { dataMapper };