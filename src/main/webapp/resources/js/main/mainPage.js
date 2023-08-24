const navlistSlide = () => {
    const category = document.querySelector("#more-category");
    const list = document.querySelector("#more-list");
    const menu = document.querySelector("#more-menu");

    category.addEventListener("click",() => {
        list.classList.toggle('active');
        menu.classList.toggle('active');
    });
}

navlistSlide ();