// burger menu

const iconBurger = document.querySelector('.burger-menu-icon');
const navbar = document.querySelector('.navbar');

iconBurger.addEventListener('click', () => {
    navbar.classList.toggle('show');
});