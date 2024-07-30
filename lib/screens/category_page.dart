import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text(category,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),centerTitle: true,),
      body: Padding(padding:EdgeInsets.only(left: 8,right: 8,top: 4),child:CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    ),);
  }
}
