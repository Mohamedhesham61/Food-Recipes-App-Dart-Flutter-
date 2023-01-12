import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../modules/meals.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

   FavouritesScreen( this.favouriteMeals);
  @override
  Widget build(BuildContext context) {

    if(favouriteMeals.isEmpty) {
      return Center(
        child: Text("You have no favourites yet - Start adding some1!"),
      );
    }
      else{
        return ListView.builder(
          itemBuilder:(ctx, index){
            return MealItem(
              id: favouriteMeals[index].id,
              imageUrl: favouriteMeals[index].imageUrl,
              title: favouriteMeals[index].title,
              duration: favouriteMeals[index].duration,
              complexity: favouriteMeals[index].complexity,
              affordability: favouriteMeals[index].affordability,
            );
          },
          itemCount: favouriteMeals.length ,
        );
    }
  }
}
