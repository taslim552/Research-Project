import 'package:flutter/material.dart';
import 'package:my_project/models/project.dart';
import 'package:my_project/shared/shared_text.dart';
import 'package:my_project/theme.dart';

class StatsTable extends StatefulWidget {
  const StatsTable(this.project,{super.key});
final Project project;
  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
  children: [
    Table(
      children: widget.project.statsAsFormattedList.map((stat) {
        return TableRow(
          decoration: BoxDecoration(
            color: AppColors.secondaryColor.withValues(alpha: 0.5)),
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: StyledHeading(stat['title']!),
              ),
            ), 
            
            
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: StyledHeading(stat['value']!),
              ),
            ),
             TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child:IconButton(onPressed: (){
               setState(() {                                
                widget.project.increaseStat(stat['title']!);
                 });
              },
              icon: Icon(
                Icons.arrow_upward,
                color:AppColors.textColor,
              )
              )
            ), 
             TableCell(
               verticalAlignment: TableCellVerticalAlignment.middle,
              child:IconButton(onPressed: (){
                setState(() {
                                
                widget.project.decreaseStat(stat['title']!);
                 });
              },
              icon: Icon(
                Icons.arrow_downward,
                color:AppColors.textColor,
              )
              )
            ),  // TableCell
          ],
        ); // TableRow
      }).toList(),
    ), // Table
  ],
), // Column
    );
    

    }
    }