const ClickOnCocktailCard = () => {
  const url = window.location.href;
  console.log(url);
  const card_cocktail = document.querySelectorAll(".card-cocktail");
  if (card_cocktail.length != 0) {
    addEventListener('click', (event) => {
      const cocktail_id = event.path[0].firstElementChild.lastElementChild.innerHTML;
      window.location = url + cocktail_id;
    })
  }
}

export { ClickOnCocktailCard };