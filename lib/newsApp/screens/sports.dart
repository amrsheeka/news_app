import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';
import '../shared/sharedItems.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsState>(
        listener: (BuildContext context, Object? state) {  },
        builder: (BuildContext context, state){
          var cubit = NewsCubit.get(context);
          return ConditionalBuilder(
              condition: true,
              builder: (context)=>ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index)=>Item(item: cubit.sports[index],context: context),
                  separatorBuilder:(context,index)=>const SizedBox(height: 10,),
                  itemCount: cubit.sports.length
              ),
              fallback: (context)=>Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.question_mark,size: 100,color: Colors.grey),
                    Text('No news for now, please check your connection',
                      style: TextStyle(fontSize: 30,color: Colors.grey),textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
          );
        }

    );
  }
}
