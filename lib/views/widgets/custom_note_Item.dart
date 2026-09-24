import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 15),
      decoration: BoxDecoration(
        
        color: Color(0xfffdcc7d),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          ListTile(
        title: Text('Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 24),),
        
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16,bottom: 16),
          child: Text('Build your career with tarek ali',style: TextStyle(color: Colors.black.withValues(alpha: .5),fontSize: 19), ),
        ),
        trailing: IconButton(onPressed: (){}, icon:const FaIcon(FontAwesomeIcons.trash  ,color: Colors.black,size: 27,),),
          ),
          Padding(

            padding: const EdgeInsets.only(right: 30),
            child: Text('May21 , 2026',style: TextStyle(color:  Colors.black.withValues(alpha: .5),fontSize:18 ),),
          ),
        ],
      ),
    );
  }
}