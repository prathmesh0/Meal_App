import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {
      //     Navigator.of(context)
      //         .push(MaterialPageRoute(builder: (ctx) => const TabsScreen()));
      //   }
      // }),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _glutenFreeFilterSet = isCheck;
              });
            },
            title: const Text(
              'Gluten-free',
              style: TextStyle(
                color: Color.fromARGB(255, 235, 199, 199),
                fontSize: 23,
              ),
            ),
            subtitle: const Text(
              'Only includes gluten-free meals.',
              style: TextStyle(
                color: Color.fromARGB(255, 240, 178, 178),
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _lactoseFilterSet = isCheck;
              });
            },
            title: const Text(
              'Lactose-free',
              style: TextStyle(
                color: Color.fromARGB(255, 235, 199, 199),
                fontSize: 23,
              ),
            ),
            subtitle: const Text(
              'Only includes lactose-free meals.',
              style: TextStyle(
                color: Color.fromARGB(255, 240, 178, 178),
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: _vegetarianFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _vegetarianFilterSet = isCheck;
              });
            },
            title: const Text(
              'Vegetarian',
              style: TextStyle(
                color: Color.fromARGB(255, 235, 199, 199),
                fontSize: 23,
              ),
            ),
            subtitle: const Text(
              'Only includes vegetarian meals.',
              style: TextStyle(
                color: Color.fromARGB(255, 240, 178, 178),
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: _veganFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _veganFilterSet = isCheck;
              });
            },
            title: const Text(
              'Vegan',
              style: TextStyle(
                color: Color.fromARGB(255, 235, 199, 199),
                fontSize: 23,
              ),
            ),
            subtitle: const Text(
              'Only includes vegan meals.',
              style: TextStyle(
                color: Color.fromARGB(255, 240, 178, 178),
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
        ],
      ),
    );
  }
}
