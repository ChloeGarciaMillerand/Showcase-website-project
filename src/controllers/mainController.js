import { dataMapper } from '../database/dataMapper.js';

const mainController = {
    async showLastPhotos (req, res, next) {
        try {
            const photos = await dataMapper.getTheLastPhotos();
            res.render ('home', { photos });
        } catch (error) {
            next(error);
        }
    },
}

export { mainController };