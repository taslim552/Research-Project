import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/screens/create/category_card.dart';
import 'package:my_project/shared/shared_text.dart';
import 'package:my_project/shared/styled.button.dart';
import 'package:my_project/theme.dart';
import 'package:my_project/models/project_category.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}
class _CreateState extends State<Create> {
  final _titleController=TextEditingController();
  final _descriptionController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    void handleSubmit(){
      if(_titleController.text.trim().isEmpty){
        print('Title must be empty');
        if(_descriptionController.text.trim().isEmpty){
          print('Description must not be empty');       }
      }
      print(_titleController.text);
      print(_descriptionController.text);

    }
    return Scaffold(
      appBar: AppBar(
        title:StyledTitle('project Creation') ,
        centerTitle: true,
      ),
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child:SingleChildScrollView(
          child:Column(
          children: [
            Center(
              child:Icon(
                Icons.computer_sharp,
                color: AppColors.primaryColor,
              )
            ),
            Center(
              child:StyledText('Project Title and Description'),
              ),
            SizedBox(
                height:20,
                ),
            TextField(
              controller:  _titleController,
              style:GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium
              ),
              cursorColor: AppColors.textColor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2_rounded),
                label:StyledText('Project Title')
              ),
            ),
            SizedBox(
                height:20,
                ),
            TextField(
               controller:  _descriptionController,
              style:GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium
              ),
              cursorColor: AppColors.textColor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label:StyledText('Project Description')
              ),
            ),
            SizedBox(
                height:20,
                ),
            SizedBox(
              height: 30,),
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
                ),
              ),
            Center(
                child:StyledText('Choose Category'),
                ),
            SizedBox(
              height: 30,),
            CategoryCard(projectcategory:ProjectCategory.ai),
            CategoryCard(projectcategory:ProjectCategory.cybersecurity),
            CategoryCard(projectcategory:ProjectCategory.wn),
            CategoryCard(projectcategory:ProjectCategory.robotics),
            Center
            (child: StyledButton(
              onPressed: handleSubmit, 
              child: StyledHeading('Create Project'))
            ,)
          ],
          )
      )
    
    )
    );
  }
}
