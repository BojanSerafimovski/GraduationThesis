const wwd = document.getElementById('wwd');
const modal_container3 = document.getElementById('modal_container3');
const close3 = document.getElementById('close3');

wwd.addEventListener('click', () => {
    modal_container3.classList.add('show');
});
close3.addEventListener('click', () => {
    modal_container3.classList.remove('show');
});

//Privacy Policy

const pp = document.getElementById('pp');
const modal_container4 = document.getElementById('modal_container4');
const close4 = document.getElementById('close4');

pp.addEventListener('click', () => {
    modal_container4.classList.add('show');
});

close4.addEventListener('click', () => {
    modal_container4.classList.remove('show');
});

