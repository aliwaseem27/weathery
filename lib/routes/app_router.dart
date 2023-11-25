import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/pages/details_page/details_page.dart';
import 'package:weathery/pages/overview_page/overview_page.dart';

part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OverviewRoute.page, initial: true),
    AutoRoute(page: DetailsRoute.page),
  ];
}