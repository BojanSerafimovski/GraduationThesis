const wwd = document.getElementById('wwd');
const modal_container = document.getElementById('modal_container');
const close = document.getElementById('close');

wwd.addEventListener('click', () => {
    modal_container.classList.add('show');
});
close.addEventListener('click', () => {
    modal_container.classList.remove('show');
});

//Privacy Policy

const pp = document.getElementById('pp');
const modal_container2 = document.getElementById('modal_container2');
const close2 = document.getElementById('close2');

pp.addEventListener('click', () => {
    modal_container2.classList.add('show');
});

close2.addEventListener('click', () => {
    modal_container2.classList.remove('show');
});