import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id,this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: () => selectCategory(context),
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    color.withOpacity(0.6),
                    color
                    // Colors.blue[200],
                    // Colors.green, 
                    // Colors.pink, 
                    // Colors.purple
                    ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(15),
                  ),
          child: Text(title)),
    );
  }

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
    .pushNamed(
      CategoryMealsScreen.routeName, arguments: {
        'id' : id,
         'title' : title
         }
    );
  }
}
