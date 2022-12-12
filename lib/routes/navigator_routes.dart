import 'package:for_sushi_day/payment/view/payment_view.dart';
import 'package:for_sushi_day/products/product_detail_view.dart';
import 'package:for_sushi_day/products/products_view.dart';

import '../home/view/home_page_view.dart';

class NavigatorRoutes {
  final items = {
    "/": (context) => const HomePageView(),
    "/products": (context) => const ProductsView(),
    "/bottom": (context) => const NavigationBottomBarWidget(),
    "/productDetail": (context) => const ProductDetailView(),
    "/paymentPage": (context) => const PaymentView()
  };
}
