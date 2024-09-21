import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Item({required Map item,required context})=>GestureDetector(
  onTap: (){

  },
  child: Card(
    child: Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image:NetworkImage(
                  '${item['urlToImage']!=null?item['urlToImage']:
                  'https://media4.s-nbcnews.com/i/newscms/2019_01/2705191/nbc-social-default_b6fa4fef0d31ca7e8bc7ff6d117ca9f4.png'}'


              ),

            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text('${item['title']}',
                    style: Theme.of(context).textTheme.bodyText1,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                Text('${item['publishedAt']}',style: TextStyle(fontSize: 12,color: Colors.grey))
              ],
            ),
          ),
        ),
      ],
    ),
  ),
);