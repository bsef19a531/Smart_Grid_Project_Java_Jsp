const rate_star = () => {
    let element = document.querySelector('.rating');
    new Starry(element, {
        readOnly: true,
        beginWith: element.dataset.rating
    });
}

window.addEventListener('load', () => {
    rate_star();
})