import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_sushi_day/payment/view/payment_view.dart';
import 'package:for_sushi_day/products/product_detail_view.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final List<String> selection = ["Popular", "Latest", "Categories", "Up Down"];
  final List<String> imagePaths = [
    "assets/images/havyar.png",
    "assets/images/nigiri.png",
    "assets/images/california-red.png"
  ];
  Color colorName = const Color.fromARGB(255, 62, 61, 61);
  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: screenHeight,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/grey_background.jpeg"),
            fit: BoxFit.fill,
          )),
          child: Column(children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    const HeaderWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    //Row ve Columnların içinde widgetların size'ını vermek gerekebilir bazen.
                    //eğer gözükmüyorsa expandedla sarıp deneyebiliriz.
                    const SearchView(),

                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: selection.length,
                        itemBuilder: ((context, index) {
                          return TextButton(
                            style: TextButton.styleFrom(),
                            onPressed: () {
                              setState(() {
                                colorName = Colors.pink;
                              });
                            },
                            child: Text(
                              selection[index],
                              textAlign: TextAlign.start,
                              style: TextStyle(color: colorName, letterSpacing: 1),
                            ),
                          );
                        }),
                      ),
                    ),
                    ItemsListView(
                      imagePaths: imagePaths,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Near You"),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See all",
                            style: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ],
                    ),
                    CustomCard(
                      screenWidht: screenWidht,
                      title: "Warrior Sushi",
                      subTitle: "09.00 AM- 10.00 PM",
                      distance: "8.0 KM",
                      imagePath: "assets/images/roll.png",
                    ),
                    CustomCard(
                      screenWidht: screenWidht,
                      title: "California Red Sushi",
                      subTitle: "11.00 AM- 09.00 PM",
                      distance: "10.0 KM",
                      imagePath: "assets/images/california.png",
                    ),
                    CustomCard(
                      screenWidht: screenWidht,
                      title: "California Sushi",
                      subTitle: "11.00 AM- 09.00 PM",
                      distance: "7.0 KM",
                      imagePath: "assets/images/california-red.png",
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.screenWidht,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.distance,
  });

  final double screenWidht;
  final String title;
  final String subTitle;
  final String imagePath;
  final String distance;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed("/productDetail");
      },
      child: Card(
        elevation: 10,
        color: Colors.grey[200],
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        child: SizedBox(
          height: 100,
          width: screenWidht - 70,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: 30,
                  height: 60,
                  decoration: const BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
                      color: Colors.white,
                      //borderRadius: BorderRadius.circular(30),
                      shape: BoxShape.circle),
                  child: Image.asset(imagePath, fit: BoxFit.contain),
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
                  ),
                ],
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 18,
                    ),
                    Text(distance),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemsListView extends StatelessWidget {
  const ItemsListView({
    super.key,
    required this.imagePaths,
  });
  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              width: 150,
              child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  margin: EdgeInsets.zero,
                  color: Colors.grey[100],
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/productDetail");
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 125,
                            //width: 150,
                            child: Image.asset(
                              imagePaths[index],
                              fit: BoxFit.fill,
                            )),
                        const Text(
                          "Nigiri",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              textAlign: TextAlign.start,
                              "${15}",
                              style: TextStyle(color: Colors.pink),
                            ),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: IconButton(
                                  style: IconButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide.lerp(const BorderSide(), const BorderSide(), 2),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ))),
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.shopping_basket,
                                    color: Colors.grey,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}

class SearchView extends StatelessWidget {
  const SearchView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 40,
            child: TextField(
              cursorColor: Colors.white70,
              onChanged: (value) {},
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                  hintText: "Search",
                  alignLabelWithHint: true,
                  suffixIconColor: Colors.white,
                  suffixIcon: const Icon(
                    Icons.search,
                  ),
                  fillColor: const Color.fromARGB(255, 210, 209, 209),
                  //iconColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 221, 221, 223), width: 1.0),
                  )),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: SizedBox(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.pink,
            ),
            onPressed: () {},
            child: const Icon(
              FontAwesomeIcons.repeat,
              size: 15,
            ),
          ),
        ))
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                textAlign: TextAlign.center,
                "Welcome Back!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "Hi, Zanaur Renaldie",
                style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 15),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: const CircleBorder(),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: const Size(34, 34),
              ),
              child: const Icon(
                FontAwesomeIcons.bell,
                size: 18,
                color: Colors.black87,
              ),
            ),
            OutlinedButton(
              //minimum size maximum size içerideki boşlukları yok etmeyi sağladı
              //shrink wrap de aynı şekilde sağ sol paddingleri ortadan kaldırdı.
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: const CircleBorder(),
                minimumSize: const Size(34, 34),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Image.asset(
                "assets/images/New-Year-Chinese-Lantern.png",
                fit: BoxFit.fill,
                width: 24,
                height: 24,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class NavigationBottomBarWidget extends StatefulWidget {
  const NavigationBottomBarWidget({super.key});

  @override
  State<NavigationBottomBarWidget> createState() => _NavigationBottomBarWidgetState();
}

class _NavigationBottomBarWidgetState extends State<NavigationBottomBarWidget> {
  List<String> clas = ["/bottom", "/productDetail", "/paymentPage"];
  int selectedIndex = 0;
  void setIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.of(context).pushNamed(clas[selectedIndex]);
  }

//BottomNavigationbarda currentIndex tıkladığımız yerin indexini alıyor.
//tekrardan index vermemize gerek yok .
//ilk başta sıfır verebiliriz sonrasında navbara her basıldığında index değişecek
//Ama bunu setstate ile kontrol etmeliyiz ki currentIndex güncellensin.
//ona göre değişim yapabilelim .
//ontape methodumuzu yazacağız ardından currentIndex değiştiricez ve
//yapmak istediğmiz işlemleri yaptıracağız. Belki başka sayfaya yönlendirme yapılcak.
  //ontap: Itemlara bastığımızda yapılması istenen şey anlamına geliyor.
  final screen = [const ProductsView(), const ProductDetailView(), const PaymentView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: setIndex,
          showSelectedLabels: true,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                FontAwesomeIcons.house,
              ),
            ),
            BottomNavigationBarItem(
              label: "Save",
              icon: Icon(
                FontAwesomeIcons.bookmark,
              ),
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: Icon(
                FontAwesomeIcons.bagShopping,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(
                FontAwesomeIcons.user,
              ),
            )
          ]),
    );
  }
}
