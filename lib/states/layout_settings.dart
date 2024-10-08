import 'package:cartify/data/hive_data/hive_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final layoutSettingProvider = ChangeNotifierProvider<LayoutSettings>((ref) => LayoutSettings());


class LayoutSettings extends ChangeNotifier{
  static final HiveData hiveData = HiveData();

  int trendingGridType = 1;

  // Grid 1 is normal rectangular. Grid 2 is Unequal grid to fit product Images
  Future<int?> getTrendingGridType() async => await hiveData.getData(key: 'trendingGridType');

  void setTrendingGridType(int value) async => await hiveData.setData(key: 'trendingGridType', value: (value < 1 || value > 3) ? 1 : value);
  


}