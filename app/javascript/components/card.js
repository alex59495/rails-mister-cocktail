const ClickOnCocktailCard = () => {
  const url = 'http://localhost:3000/cocktails/';
  const card_cocktail = document.querySelectorAll(".card-cocktail");
  if (card_cocktail.length != 0) {
    addEventListener('click', (event) => {
      const cocktail_id = event.path[0].firstElementChild.lastElementChild.innerHTML;
      window.location = url + cocktail_id;
    })
    
  }

}

export { ClickOnCocktailCard };