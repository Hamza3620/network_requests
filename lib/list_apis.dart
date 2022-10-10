import 'package:network_requests/models.dart/details_model.dart';
import 'package:network_requests/screens/avatar_screen.dart';
import 'package:network_requests/screens/baseball_screen.dart';
import 'package:network_requests/screens/bitcoin_screen.dart';
import 'package:network_requests/screens/cartoon_screen.dart';
import 'package:network_requests/screens/coding_resources_screen.dart';
import 'package:network_requests/screens/coffee_screen.dart';
import 'package:network_requests/screens/countries_screen.dart';
import 'package:network_requests/screens/fakebank_screen.dart';
import 'package:network_requests/screens/good_jokes_screen.dart';

final List<DetailsModel> links = [
  DetailsModel(
      title: "Avatar",
      link: "https://api.sampleapis.com/avatar/info",
      screen: const AvatarScreen(
          title: "Avatar", apiLink: "https://api.sampleapis.com/avatar/info")),
  DetailsModel(
      title: "Baseball",
      link: "https://api.sampleapis.com/baseball/hitsSingleSeason",
      screen: const BaseballScreen(
        title: "Baseball",
        apiLink: "https://api.sampleapis.com/baseball/hitsSingleSeason",
      )),
  DetailsModel(
      title: "Cartoons",
      link: "https://api.sampleapis.com/cartoons/cartoons2D",
      screen: const CartoonScreen(
        title: "Cartoons",
        apiLink: "https://api.sampleapis.com/cartoons/cartoons2D",
      )),
  DetailsModel(
      title: "Coding Resources",
      link: "https://api.sampleapis.com/codingresources/codingResources",
      screen: const CodingResourcesScreen(
        title: "Coding Resources",
        apiLink: "https://api.sampleapis.com/codingresources/codingResources",
      )),
  DetailsModel(
      title: "Coffee",
      link: "https://api.sampleapis.com/coffee/hot",
      screen: const CoffeeScreen(
        title: "Coffee",
        apiLink: "https://api.sampleapis.com/coffee/hot",
      )),
  DetailsModel(
      title: "Countries",
      link: "https://api.sampleapis.com/countries/countries",
      screen: const CountriesScreen(
        title: "Countries",
        apiLink: "https://api.sampleapis.com/countries/countries",
      )),
  DetailsModel(
      title: "FakeBank",
      link: "https://api.sampleapis.com/fakebank/accounts",
      screen: const FakeBankScreen(
        title: "FakeBank",
        apiLink: "https://api.sampleapis.com/fakebank/accounts",
      )),
  DetailsModel(
      title: "Good Jokes",
      link: "https://api.sampleapis.com/jokes/goodJokes",
      screen: const GoodJokesScreen(
        title: "Good Jokes",
        apiLink: "https://api.sampleapis.com/jokes/goodJokes",
      )),
  DetailsModel(
      title: "Bitcoin",
      link: "https://api.sampleapis.com/bitcoin/historical_prices",
      screen: const BitCoinScreen(
        title: "Bitcoin",
        apiLink: "https://api.sampleapis.com/bitcoin/historical_prices",
      ))
];
