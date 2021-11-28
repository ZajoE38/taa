*** Variables ***
#  311
${computers_and_laptops}        //li[contains(.,"Computers and Laptops")]
${laptops}                      //div[@class="catlist"]//span[text()="Laptops"]
${home_and_office}              xpath=(//a[contains(@href, "basic-home-and-office")])[1]
${affordable}                   xpath:(//a[contains(@href, "affordable")])[1]
${bestsellers}                  //a[@href="#nejprodavanejsi"]
${top_rated}                   //a[@href="#nejlepehodnocene"]
${product_price}                //tr[@class="pricenormal"]//td[@class="c2"]/span
${add_to_cart}                  //a[@class="btnx normal green buy"]
${circleLoader}                 css=.circle-loader-container
${thirdBestItem}                xpath:(//a[@data-impression-position="3"])[1]
${basket}                       //div[@id="basket"]
${basket_count}                 ${basket}//span[@class="count"]
${basket_price}                 ${basket}//span[@id="price"]
${proceed_to_checkout}          //a[@id="varBToBasketButton"]
${checkout_continue}            //div[@id="blockBtnRight"]/a
${checkout_modal}               //div[@id="alzaDialog"]
${dont_add_anything_modal}      //div[@id="alzaDialog"]//span[text()="Do not add anything"]
${bratislava-main_shop_chk}     //div[contains(text(), "Bratislava - main shop")]
${standard_dispatch_radio}      //div[contains(text(), "Standard dispatch")]
${confirm_selection_btn}        //a[contains(@class, "confirmDialog")]
${payment_credit_debit_card}    //span[contains(text(), "Credit / Debit Card")]
${delivery_continue_btn}        //a[@id="confirmOrder2Button"]
${delivery_continue_btn}        //div[@id="confirmOrder2ButtonContainer"]