import 'package:flutter_boats/global.dart';
import 'package:flutter_boats/ui/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boats/models/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: MyColors.accentColor,
          unselectedItemColor: Colors.black12,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "Bookmarked"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: "Cart"),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(9),
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search for products...",
              ),
            ),
            const SizedBox(height: 9),
            Text(
              "Discover",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 9),
            SizedBox(
              height: 51,
              child: MainCategoryItem(),
            ),
            const SizedBox(height: 9),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: PageView.builder(
                controller: PageController(viewportFraction: .75),
                itemCount: productsList.length,
                itemBuilder: (context, i) => GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(id: i),
                    ),
                  ),
                  child: FancyContainer(id: i),
                ),
              ),
            ),
            const SizedBox(height: 9),
            Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {},
                ),
                Expanded(
                  child: SizedBox(
                    height: 51,
                    child: Center(
                      child: SubCategoryItem(),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "News",
              style: Theme.of(context).textTheme.headline6,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: blogPosts.length,
              itemBuilder: (context, i) => ListTile(
                contentPadding: const EdgeInsets.all(9),
                leading: ClipRRect(
                  child: Image.network(
                    "${blogPosts[i].image}",
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(9),
                ),
                title: Text(
                  "${blogPosts[i].title}",
                  maxLines: 1,
                ),
                subtitle: Text(
                  "${blogPosts[i].excerpt}",
                  maxLines: 2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
