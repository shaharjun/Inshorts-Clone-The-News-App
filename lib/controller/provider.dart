import 'package:flutter/material.dart';
import 'package:inshort_clone/model/news_model.dart';

class FeedProvider extends ChangeNotifier {
  String _appBarTitle;
  int _activeCategory = 1;
  bool _hasDataLoaded = false;
  bool _searchAppBarVisible = true;
  bool _appBarVisible = false;
  bool _feedBottomActionbarVisible = false;
  int _curentArticalIndex = 0;
  PageController _feedPageController;
  PageController _screenController;
  List<Articles> _articles = [];
  String _newsURL = "https://google.com/";
  int count = 0;

  //

  bool get gethasDataLoaded => this._hasDataLoaded;

  int get getActiveCategory => this._activeCategory;

  String get getAppBarTitle => this._appBarTitle;

  bool get getSearchAppBarVisible => this._searchAppBarVisible;

  bool get getAppBarVisible => this._appBarVisible;

  bool get getFeedBottomActionbarVisible => this._feedBottomActionbarVisible;

  int get getCurentArticalIndex => this._curentArticalIndex;

  PageController get getfeedPageController => this._feedPageController;

  PageController get getScreenController => this._screenController;

  List<Articles> get getArticlesList => this._articles;

  String get getNewsURL => _newsURL;

  ///

  void setActiveCategory(int activeCategory) {
    this._activeCategory = activeCategory;
    notifyListeners();
  }

  void setAppBarTitle(String appBarTitle) {
    this._appBarTitle = appBarTitle;
    notifyListeners();
  }

  void setDataLoaded(bool status) {
    this._hasDataLoaded = status;
    notifyListeners();
  }

  void setSearchAppBarVisible(bool searchAppBarVisible) {
    this._searchAppBarVisible = searchAppBarVisible;
    notifyListeners();
  }

  void setAppBarVisible(bool appBarVisible) {
    this._appBarVisible = appBarVisible;
    notifyListeners();
  }

  void setFeedBottomActionbarVisible(bool feedBottomActionbarVisible) {
    this._feedBottomActionbarVisible = feedBottomActionbarVisible;
    notifyListeners();
  }

  void setCurentArticalIndex(int curentArticalIndex) {
    this._curentArticalIndex = curentArticalIndex;
    notifyListeners();
  }

  void setfeedPageController(PageController pageController) {
    this._feedPageController = pageController;
    notifyListeners();
  }

  void setScreenController(PageController pageController) {
    this._screenController = pageController;
    // notifyListeners();
  }

  void setArticlesList(List<Articles> articles) {
    _articles.addAll(articles);
    notifyListeners();
  }

  void setNewsURL(String newsURL) {
    this._newsURL = newsURL;
    notifyListeners();
  }

  void setCount() {
    this.count++;
    notifyListeners();
  }
}
