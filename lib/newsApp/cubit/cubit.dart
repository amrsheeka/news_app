
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/newsApp/cubit/states.dart';


import '../dioHelper/dio.dart';
import '../screens/business.dart';
import '../screens/science.dart';
import '../screens/sports.dart';

class NewsCubit extends Cubit<NewsState>{
  NewsCubit():super(NewsInitialState());
  static NewsCubit get(context)=>BlocProvider.of(context);
  List<BottomNavigationBarItem> tabBarItems=[
    BottomNavigationBarItem(icon: Icon(Icons.business_sharp),label: 'Business'),
    BottomNavigationBarItem(icon: Icon(Icons.sports),label: 'Sports'),
    BottomNavigationBarItem(icon: Icon(Icons.science),label: 'Science'),
  ];
  List<Widget> screens=[BusinessScreen(),SportsScreen(),ScienceScreen()];
  int currentIndex=0;
  void navigate(int index){
    currentIndex=index;
    emit(NewsTabNavigationState());
  }
  List<dynamic> business = [];

  void getBusiness()
  {
    emit(NewsGetBusinessLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country':'us',
        'category':'business',
        'apiKey':'8d5be2ded8cc409daf8f343d6aaf7a0b',
      },
    ).then((value)
    {
      //print(value.data['articles'][0]['title']);
      business = value.data['articles'];
      print("data: "+business[0]['title']);

      emit(NewsGetBusinessSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }
  List<dynamic> sports = [];
  void getSports()
  {
    emit(NewsGetSportsLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country':'us',
        'category':'sports',
        'apiKey':'8d5be2ded8cc409daf8f343d6aaf7a0b',
      },
    ).then((value)
    {
      //print(value.data['articles'][0]['title']);
      sports = value.data['articles'];
      print("data: "+sports[0]['title']);

      emit(NewsGetSportsSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetSportsErrorState(error.toString()));
    });
  }
  List<dynamic> science = [];
  void getScience()
  {
    emit(NewsGetScienceLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country':'us',
        'category':'science',
        'apiKey':'8d5be2ded8cc409daf8f343d6aaf7a0b',
      },
    ).then((value)
    {
      //print(value.data['articles'][0]['title']);
      science = value.data['articles'];
      print("data: "+science[0]['title']);

      emit(NewsGetScienceSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetScienceErrorState(error.toString()));
    });
  }
}