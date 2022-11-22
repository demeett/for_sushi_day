import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavigationBottomBarWidget(),
    );
  }
}

class NavigationBottomBarWidget extends StatefulWidget {
  const NavigationBottomBarWidget({super.key});

  @override
  State<NavigationBottomBarWidget> createState() => _NavigationBottomBarWidgetState();
}

class _NavigationBottomBarWidgetState extends State<NavigationBottomBarWidget> {
  int selectedIndex = 0;
  void setIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

//BottomNavigationbarda currentIndex tıkladığımız yerin indexini alıyor.
//tekrardan index vermemize gerek yok .
//ilk başta sıfır verebiliriz sonrasında navbara her basıldığında index değişecek
//Ama bunu setstate ile kontrol etmeliyiz ki currentIndex güncellensin.
//ona göre değişim yapabilelim .
//ontape methodumuzu yazacağız ardından currentIndex değiştiricez ve
//yapmak istediğmiz işlemleri yaptıracağız. Belki başka sayfaya yönlendirme yapılcak.
  //ontap: Itemlara bastığımızda yapılması istenen şey anlamına geliyor.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: setIndex,
          showSelectedLabels: true,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.pink,
          //fixedColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                FontAwesomeIcons.house,
                //color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: "Save",
              icon: Icon(
                FontAwesomeIcons.bookmark,
                //color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: Icon(
                FontAwesomeIcons.bagShopping,
                //color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(
                FontAwesomeIcons.user,
                //color: Colors.grey,
              ),
            )
          ]),
    );
  }
}
