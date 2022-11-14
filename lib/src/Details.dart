import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ListDataModel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
class Details extends StatefulWidget {
  final List<ListDataModel> listDataModel;
  int index;
  Details({Key? key, required this.index, required this.listDataModel}) : super(key: key);
  @override
  State<Details> createState() => _DetailsState();
}
class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.listDataModel[widget.index].description+': '+ '\n' + widget.listDataModel[widget.index].name, textAlign: TextAlign.center, maxLines: 3, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
      floatingActionButton: FloatingActionButton(
        child: Text('MORE', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        onPressed: () async{
          var url=widget.listDataModel[widget.index].links;
             if(await canLaunch(url)){ 
              // es ver movascari mindoda shesabamis index-ze mkof linkze gadasuliko
        await launch(url);
              }
      else {
        throw 'Could not launch $url';
      }

          
        },
      ),
      body: Column(
        
        children: [
          Image.network(widget.listDataModel[widget.index].ImageUrl, width: 300, height: 300),
          // Text(widget.listDataModel[widget.index].description),
          SizedBox(
            height: 10,
          ),
          // Text(widget.listDataModel[widget.index].name,style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold)),
          Text(widget.listDataModel[widget.index].info,style: TextStyle(fontSize: 18), textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 20,),
          
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                heroTag: "f1",
                onPressed: (){
                  setState(() {
                    if(widget.index!=0){
                      widget.index --;
                    }
                  });
                },
                child:Icon(Icons.arrow_forward_ios_outlined) ,
              ),
              FloatingActionButton(
                heroTag: "f2",
                onPressed: (){
                  setState(() {
                    if(widget.index != widget.listDataModel.length-1){
                      widget.index ++;
                    }
                  });
                },
                child:Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
          
        ],

      ),
    );
  }
}