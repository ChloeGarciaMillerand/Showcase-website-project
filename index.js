import express from 'express';
import path from 'node:path';
import 'dotenv/config';

const app = express();

//config ejs + statics
app.set('view engine', 'ejs');
app.set('views', path.join(import.meta.dirname, 'src/views'));
app.use(express.static(path.join(import.meta.dirname, 'public')));

//acces req.body
app.use(express.urlencoded({extended: false}));

//start server
const port = process.env.PORT;
const base_url = process.env.BASE_URL;

app.listen(port, () => console.log(`Listening on ${base_url}:${port}`));