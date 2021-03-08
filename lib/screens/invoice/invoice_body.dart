import 'package:billingsystem/constants.dart';
import 'package:flutter/material.dart';

class InvoiceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var totalAmt = 64;
    double height =
        ScreenConfig.deviceHeight - ScreenConfig.getProportionalHeight(374);
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: ScreenConfig.getProportionalWidth(40),
      ),
      color: iPrimaryColor,
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: ScreenConfig.getProportionalHeight(27),
          ),
          addItemAction(),
          SizedBox(
            height: ScreenConfig.getProportionalHeight(27),
          ),
          Column(
            children: [
              Column(
                children: List.generate(
                    demoDate.length,
                    (index) => Column(
                          children: [
                            invoiceItem(
                                demoDate[index]["quantity"],
                                demoDate[index]["imagePath"],
                                demoDate[index]["price"],
                                demoDate[index]["itemDesc"]),
                            SizedBox(
                              height: ScreenConfig.getProportionalHeight(22),
                            )
                          ],
                        )),
              ),
              invoiceTotal(totalAmt),
              SizedBox(
                height: ScreenConfig.getProportionalHeight(56),
              ),
              FlatButton(
                  color: iAccentColor2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  onPressed: () {},
                  child: SizedBox(
                    height: ScreenConfig.getProportionalHeight(80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.file_download),
                        Text(
                          "Download",
                          style: TextStyle(
                            fontSize: ScreenConfig.getProportionalHeight(27),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          )
        ]),
      ),
    );
  }

  Row invoiceTotal(int totalAmt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Text("Total: ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.getProportionalHeight(26),
                )),
            SizedBox(
              width: ScreenConfig.getProportionalWidth(40),
            ),
            Text(
              "\$$totalAmt",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: ScreenConfig.getProportionalHeight(26),
              ),
            ),
          ],
        )
      ],
    );
  }

  Container invoiceItem(
      int quantity, String imagePath, int price, String itemDesc) {
    int totalValue = quantity * price;
    return Container(
      height: ScreenConfig.getProportionalHeight(170),
      padding: EdgeInsets.symmetric(
          horizontal: ScreenConfig.getProportionalWidth(27)),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 11),
            blurRadius: 11,
            color: Colors.black.withOpacity(0.06),
          )
        ],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            quantity.toString(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            imagePath,
            height: 100,
            width: 80,
          ),
          Text(
            "\$$price",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: ScreenConfig.getProportionalWidth(93.8),
            child: Text(
              itemDesc,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "\$$totalValue",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Row addItemAction() {
    return Row(
      children: [
        Text(
          "Items",
          style: TextStyle(
              color: Colors.black,
              fontSize: ScreenConfig.getProportionalHeight(30)),
        ),
        SizedBox(
          width: ScreenConfig.getProportionalWidth(50),
        ),
        FlatButton(
            color: iAccentColor2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            onPressed: () {},
            child: Row(
              children: [Icon(Icons.add), Text("Add Items")],
            ))
      ],
    );
  }
}
