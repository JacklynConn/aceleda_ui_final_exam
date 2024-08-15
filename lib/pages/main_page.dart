import 'package:acleda_final_exam/pages/favorite_detail.dart';
import 'package:acleda_final_exam/widgets/grid_widget.dart';
import 'package:acleda_final_exam/widgets/stack_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../elements/list_post_product.dart';
import '../models/product_models.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      drawer: const Drawer(),
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return Column(
      children: [
        Expanded(
          flex: 10,
          child: Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                radius: 0.5,
                colors: [
                  Color(0xff638ec9),
                  Color(0xFF1c3352),
                ],
              ),
            ),
            child: const GridWidget(),
          ),
        ),
        Expanded(
          flex: 5,
          child: ListView.builder(
            itemCount: list_product.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _buildDiscoverPeople(list_product[index]);
            },
          ),
        ),
        const Expanded(
          flex: 4,
          child: StackWidget(),
        ),
      ],
    );
  }

  Widget _buildDiscoverPeople(ProductList item) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FavoriteDetail(),
            ),
          );
        },
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 10,
          child: Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            width: 150,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        "${item.image}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/AcelydaLogo.png",
            height: 50,
          ),
        ],
      ),
      backgroundColor: const Color(0xff224269),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.bell,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/qr.png",
            ),
          ),
        ),
      ],
    );
  }
}
