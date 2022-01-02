import 'package:flutter/material.dart';
import 'package:flutter_boats/global.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black45),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_basket),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(9.0),
            child:
                Text("My Cart", style: Theme.of(context).textTheme.headline5),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(9.0),
              decoration: const BoxDecoration(
                color: MyColors.mainColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: productsList.length,
                      itemBuilder: (context, i) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9.0),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: ClipRRect(
                                child: Image.network(productsList[i].image),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            const SizedBox(width: 9),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(productsList[i].name),
                                  Text(productsList[i].price),
                                ],
                              ),
                            ),
                            const SizedBox(width: 9),
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: const Icon(Icons.add),
                                ),
                                const Text("1"),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const Text("Subtotal (3 Items)"),
                      const SizedBox(width: 15),
                      Text(
                        "\$35,900",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(9),
                      margin: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: MyColors.accentColor,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Check out",
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(color: Colors.white),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: const Icon(Icons.chevron_right),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
