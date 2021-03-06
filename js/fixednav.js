const navBar = document.querySelector(".nav");
const gotoTop = document.querySelector(".goto-top");
const scrollLink = document.querySelectorAll(".scroll-link");


Array.from(scrollLink).map(link => {
  link.addEventListener("click", e=> {
  e.preventDefault();

  const id = e.currentTarget.getAttribute("href").slice(1);
  const element = document.getElementById(id);
  const navHeight = navBar.getBoundingClientRect().height;
  const fixNav = navBar.classList.contains("fix__nav");
  let position = element.offsetTop - navHeight;

  if (!fixNav){
    position = position - navHeight;
  }

  window.scrollTo({
    left: 0,
    top: position,
  });
  navContainer.style.left = "-30rem";
  document.body.classList.remove("active");
  });
});
window.addEventListener("scroll", e => {
  const scrollHeight = window.pageYOffset;
  const navHeight = navBar.getBoundingClientRect().height;

  if (scrollHeight > navHeight){
    navBar.classList.add("fix__nav");
  }
  else {
    navBar.classList.remove("fix__nav");
  }

  if (scrollHeight > 300){
    gotoTop.classList.add("show-top")
  }
  else {
    gotoTop.classList.remove("show-top");
  }
});
