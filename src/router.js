import { Router } from 'express';

import { mainController } from './controllers/mainController.js';
import { mailController } from './controllers/mailController.js';

const router = Router ();

router.get('/', mainController.showLastPhotos);

router.get('/portfolio', mainController.showPhotos);

router.get('/photo/:id', mainController.showOnePhoto);

router.get('/about', mainController.showAbout);
router.post('/about', mailController.sendMail);

router.get('/confirmation', mailController.showConfirmation);

export { router };