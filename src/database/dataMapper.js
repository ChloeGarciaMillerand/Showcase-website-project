import client from "./client.js";

const dataMapper = {
    async getTheLastPhotos() {
        const query = 'SELECT * FROM photos ORDER BY date DESC LIMIT 3;';
        const result = await client.query(query);
        return result.rows;
    },

    async getAllPhotos() {
        const query = 'SELECT * FROM photos';
        const result = await client.query(query);
        return result.rows;
    },

    async getAllCategories() {
        const query = 'SELECT DISTINCT category FROM photos;'
        const result = await client.query(query);
        return result.rows;
    },

    async getPhotosByCategory(category) {
        const query = {
            text: 'SELECT * FROM photos WHERE category = $1;',
            values: [category],
        };

        const result = await client.query(query);
        return result.rows;
    }
}

export { dataMapper };