import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

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
          )),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      CustomIconButton(
                        icon: Icons.arrow_back_outlined,
                      ),
                      Text(
                        "Product Detail",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                      CustomIconButton(
                        icon: Icons.list_alt_outlined,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 40),
                    child: SizedBox(height: 250, child: Image.asset("assets/images/nigiri.png")),
                  ),
                  Text(
                    "NIGIRI SUSHI PLATTER",
                    style: GoogleFonts.kenia(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Japanese Food",
                    style: GoogleFonts.ibmPlexSans(letterSpacing: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Row(
                      children: const [
                        Expanded(
                            child: CustomElevatedButton(
                          title: "8PCS",
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(child: CustomElevatedButton(title: "12PCS")),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(child: CustomElevatedButton(title: "16PCS")),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    child: Text(
                      "The word nigiri comes from the Japanese nigirizushi, which translates as hand-pressed sushi ",
                      style: TextStyle(
                        letterSpacing: 1,
                      ),
                      textScaleFactor: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.08, right: 20, left: 20),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Expanded(
                            child: Text(
                              "\$15",
                              style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                                ),
                                child: const Text("Add to Card"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0), side: BorderSide.none))),
        child: Text(title));
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: () {}, icon: Icon(icon)));
  }
}
