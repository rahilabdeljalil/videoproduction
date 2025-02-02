const menuButton = document.getElementById('menu-button');

const menuLinks = document.getElementById('menu-links');
menuButton.addEventListener('click', () => {
    menuLinks.classList.toggle('active');
});