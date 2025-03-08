import 'package:flutter/material.dart';
import 'package:my_project/models/project_category.dart';
import 'package:my_project/shared/shared_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.projectcategory});
  final ProjectCategory projectcategory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(projectcategory.title);
      },
      child: Padding(padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset('assets/img/category/${projectcategory.image}',
          width: 80,),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              children: [
                StyledHeading(projectcategory.title),
                StyledHeading(projectcategory.description)
              ],
            )
          )
        ],
      ),
      ),
      );
  }
}