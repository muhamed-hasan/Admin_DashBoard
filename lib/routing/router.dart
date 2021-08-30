import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/authentication/authentication.dart';
import 'package:web_dashboard/pages/clients/clients.dart';
import 'package:web_dashboard/pages/drivers/drivers.dart';
import 'package:web_dashboard/pages/overview/overview.dart';
import 'package:web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageDisplayName:
      return _pageRoute(OverviewPage());
    case driversPageDisplayName:
      return _pageRoute(DriversPage());
    case clientsPageDisplayName:
      return _pageRoute(ClientsPage());
    case authenticationPageDisplayName:
      return _pageRoute(AuthenticationPage());

    default:
      return _pageRoute(OverviewPage());
  }
}

PageRoute _pageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
