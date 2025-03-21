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

    async showPhotos (req, res, next) {
        try {
            const categories = await dataMapper.getAllCategories();
            const selectedCategory = req.query.category || null;

            let photos;
            if(selectedCategory && selectedCategory !== '') {
                photos = await dataMapper.getPhotosByCategory(selectedCategory);
            } else {
                photos = await dataMapper.getAllPhotos();
            }
            res.render('portfolio', { photos, categories, selectedCategory });
        } catch (error) {
            next(error);
        }
    },

    async showOnePhoto (req, res, next) {
        const photoId = req.params.id;

        try {
            const photo = await dataMapper.getOnePhoto(photoId);

            if (!photo) {
                return next();
            }

            res.render('photo', { photo });

        } catch (error) {
            next(error);
        }
    },

    async showAbout (req, res, next) {
        res.render('about');
    },
};

export { mainController };