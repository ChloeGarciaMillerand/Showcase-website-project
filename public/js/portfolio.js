// afficher tout le catalogue

const viewAll = document.getElementById('view-all');
const allCafes = document.querySelector('.all-photos');

viewAll.addEventListener('click', () => {
    allCafes.classList.toggle('show');
    if (allCafes.classList.contains('show')) {
        viewAll.textContent = 'Voir moins';
    } else {
        viewAll.textContent = 'Voir plus';
    }
});