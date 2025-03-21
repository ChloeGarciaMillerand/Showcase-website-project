import { dataMapper } from '../database/dataMapper.js';

const mailController = {
    async sendMail(req, res) {
        const from = req.body.from;
        const to = req.body.to;
        const subject = req.body.subject;
        const message = req.body.message;
    
        const transporter = nodemailer.createTransport({
            service: 'gmail',
            auth: {
              user: process.env.GMAIL_USER,
              pass: process.env.GMAIL_PASSWORD
            }
        });
    
        let mailOptions = {
            from: from,
            to: to,
            subject: subject,
            text: message
        }
    
        transporter.sendMail(mailOptions, function(error, info) {
            if(error) {
                console.log(error)
            } else {
                console.log('Email send' + info.response)
                return res.redirect('/confirmation');
            }
        });
    },
    
    async showConfirmation (req, res, next) {
        try {
            res.render ('confirmation');
        } catch (error) {
            next(error);
        }
    },
}

export { mailController }
