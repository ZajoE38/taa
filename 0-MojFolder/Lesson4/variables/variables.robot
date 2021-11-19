*** Variables ***
${computersLink}    xpath://li[contains(.,"Computers and Laptops")]
${homeAndOffice}    xpath://a[contains(@href, "basic-home-and-office")]
${affordable}    xpath:(//a[contains(@href, "affordable")])[1]
${nejprodavanejsiTab}    xpath://a[@href="#nejprodavanejsi"]
${circleLoader}    css:.circle-loader-container
${thirdBestItem}    xpath:(//a[@data-impression-position="3"])[1]
${price}    xpath://span[contains(@class, "bigPrice")]
${addToCartBtn}    xpath://a[contains(@class, "green buy")]
${basketCounter}    xpath://div[@id="basket"]//span[@class="count"]