abstract class NewsState{}
class NewsInitialState extends NewsState{}
class NewsTabNavigationState extends NewsState{}
class NewsGetBusinessSuccessState extends NewsState{}
class NewsGetBusinessErrorState extends NewsState{
  var error;
  NewsGetBusinessErrorState(err){
    error=err;
  }
}
class NewsGetBusinessLoadingState extends NewsState{}
class NewsGetSportsLoadingState extends NewsState{}
class NewsGetSportsSuccessState extends NewsState{}
class NewsGetSportsErrorState extends NewsState{
  var error;
  NewsGetSportsErrorState(err){
    error=err;
  }
}
class NewsGetScienceLoadingState extends NewsState{}
class NewsGetScienceSuccessState extends NewsState{}
class NewsGetScienceErrorState extends NewsState{
  var error;
  NewsGetScienceErrorState(err){
    error=err;
  }
}