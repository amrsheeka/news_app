
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';


class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ( context) =>NewsCubit()..getBusiness()..getSports()..getScience(),
      child: BlocConsumer<NewsCubit,NewsState>(

        listener: (BuildContext context, Object? state) {  },
        builder: ( context, state){
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(

              title: Text('News'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.tabBarItems,
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.navigate(index);
              },
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        }

      ),
    );
  }
}
