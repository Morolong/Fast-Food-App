import 'package:flutter/material.dart'; 
import 'package:hungry_people/components/menu_drawer.dart';
import 'package:hungry_people/components/my_sliver_app_bar.dart';
import 'package:hungry_people/components/my_current_location.dart';
import 'package:hungry_people/components/my_description_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled)=>[
          MySliverAppBar(
            title: const Text('Title'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25, 
                  endIndent: 25, 
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //Switch 
                MyCurrentLocation(),
                //Descirption Box
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Container(color: Colors.blue)
      ),
    );
  }
}