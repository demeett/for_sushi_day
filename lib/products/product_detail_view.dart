import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: const [
                      Expanded(child: CustomElevatedButton()),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: CustomElevatedButton()),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: CustomElevatedButton()),
                    ],
                  ),
                ),
                const Text("data"),
                const Text("data"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Text("defe"),
                    ),
                    Expanded(child: ElevatedButton(onPressed: () {}, child: const Text("")))
                  ],
                )
              ],
            ),
          ),

          // child: Column(
          //   children: [
          //     ListTile(
          //       trailing: const CustomIconButton(
          //         icon: Icons.list_alt_outlined,
          //       ),
          //       leading: const CustomIconButton(
          //         icon: Icons.arrow_back_outlined,
          //       ),
          //       title: Container(
          //         color: Colors.red,
          //         child: const Padding(
          //           padding: EdgeInsets.only(bottom: 8.0),
          //           child: Text(
          //             "Product Detail",
          //             textAlign: TextAlign.center,
          //           ),
          //         ),
          //       ),
          //       subtitle: Container(height: 400, color: Colors.white, child: Image.asset("assets/images/nigiri.png")),
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0), side: BorderSide.none))),
        child: const Text(""));
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
