import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/model/cake_model.dart';
import 'package:flutter/cupertino.dart';

class CakeRecipeVm extends ChangeNotifier {
  static List<CakeModel> popularCakes = [
    CakeModel(
        title: 'Mango Cake',
        image: AppImages.mangoCake,
        time: 'Cocking time 15 minutes',
        type: 'Soft Cake',
        ingredients:
            '1 ½ cups all-purpose flour, 1 teaspoon baking soda, ⅔ cup butter, 1 cup white sugar, 2 eggs, 1 cup buttermilk, 1 teaspoon vanilla extract, 1 cup mango puree, ½ cup chopped walnuts',
        description:
            'Preheat the oven to 375 degrees F (190 degrees C). Grease a 9x5-inch loaf pan.\n\nCream butter and sugar till light and fluffy. Add eggs and beat well. Mix together flour and baking soda; blend into creamed mixture. Fold in buttermilk, vanilla, mango puree, and chopped nuts. Pour batter into the prepared pan.\n\nBake in the preheated oven until a toothpick inserted into the center comes out clean, about 40 to 50 minutes.'),
    CakeModel(
        title: 'Red Velvet Cake',
        image: AppImages.redVelvetCake,
        time: 'Cocking time 11 minutes',
        type: 'Soft Cake',
        ingredients: '',
        description: ''),
    CakeModel(
        title: 'Carrot Cake',
        image: AppImages.carrotCake,
        time: 'Cocking time 9 minutes',
        type: 'Soft Cake',
        ingredients: '',
        description: ''),
    CakeModel(
        title: 'Fruit Cake',
        image: AppImages.fruitCake,
        time: 'Cocking time 10 minutes',
        type: 'Soft Cake',
        ingredients: '',
        description: ''),
    CakeModel(
        title: 'Chocolate Cake',
        image: AppImages.choclateCake,
        time: 'Cocking time 8 minutes',
        type: 'Soft Cake',
        ingredients: '',
        description: ''),
  ];
}
