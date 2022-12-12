import 'package:flutter/material.dart';

import '../../products/product_detail_view.dart';
import '../../products/products_view.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            height: screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/grey_background.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          CustomIconButton(
                            icon: Icons.arrow_back_outlined,
                          ),
                          Text(
                            "Payment Process",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.end,
                          ),
                          CustomIconButton(
                            icon: Icons.list_alt_outlined,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10),
                        child: Row(
                          children: const [
                            Text(
                              "Your Card",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: const [
                            Text(
                              "Check anc Payment",
                              style: TextStyle(),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomCard(
                          screenWidht: screenWidht,
                          title: "Warrior Sushi",
                          subTitle: "09.00 AM- 10.00 PM",
                          distance: "8.0 KM",
                          imagePath: "assets/images/roll.png",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomCard(
                          screenWidht: screenWidht,
                          title: "California Red Sushi",
                          subTitle: "11.00 AM- 09.00 PM",
                          distance: "10.0 KM",
                          imagePath: "assets/images/california.png",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          color: Colors.grey[200],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: SizedBox(
                            width: screenWidht,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.book,
                                ),
                                Text(
                                  "Discount Coupons",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8, top: 2, bottom: 2),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.grey[400]),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12.0),
                                        ))),
                                    child: const Text("Apply"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Items Total"),
                                Text("\$27"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Delivery Fee"),
                                Text("Free"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        width: screenWidht * 0.8,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.pink),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ))),
                            child: const Text("Check Out:")),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
