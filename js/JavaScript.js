// Open and Close Modals
// FIRST MODAL

const sign = document.getElementById('sign');
const modal_container = document.getElementById('modal_container');
const close = document.getElementById('close');

sign.addEventListener('click', () => {
    modal_container.classList.add('show');
});

close.addEventListener('click', () => {
    modal_container.classList.remove('show');
});

//SECOND MODAL

const call = document.getElementById('call');
const modal_content = document.getElementById('modal_content');
const close_content = document.getElementById('close_content');

call.addEventListener('click', () => {
    modal_content.classList.add('show');
});

close_content.addEventListener('click', () => {
    modal_content.classList.remove('show');
});

//  THIRD MODAL

const email_sign = document.getElementById('email_sign');
const modal_content2 = document.getElementById('modal_content2');
const close_content2 = document.getElementById('close_content2');

email_sign.addEventListener('click', () => {
    modal_content2.classList.add('show');
});

close_content2.addEventListener('click', () => {
    modal_content2.classList.remove('show');
});

