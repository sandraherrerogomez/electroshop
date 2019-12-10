function addToBasket( price) {
    //alert('Item added to the cart')

    el = document.getElementById("itemsCounter").innerText


     thenum = el.match(/\d+/)[0] // "3"// replace all leading non-digits with nothing
    thenum++
    document.getElementById("itemsCounter").innerText = thenum + " items (Euro)"


}

