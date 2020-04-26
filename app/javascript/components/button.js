const clickListCocktailsButton = () => {
    const button = document.getElementById("btn-list");
    button.addEventListener('click', () => {
        window.location.replace("/cocktails");
    })
}

export { clickListCocktailsButton };