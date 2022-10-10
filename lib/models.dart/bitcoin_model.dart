class BitCoinHistory {
  String? date;
  // double? price;
  double? open;
  double? high;
  double? changePercentFromLastMonth;
  String? volume;

  BitCoinHistory(
      {this.date,
      // this.price,
      this.open,
      this.high,
      this.changePercentFromLastMonth,
      this.volume});

  BitCoinHistory.fromJson(Map<String, dynamic> json) {
    date = json['Date'];
    // price = json['Price'];
    open = json['Open'];
    high = json['High'];
    changePercentFromLastMonth = json['ChangePercentFromLastMonth'];
    volume = json['Volume'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Date'] = date;
    // data['Price'] = price;
    data['Open'] = open;
    data['High'] = high;
    data['ChangePercentFromLastMonth'] = changePercentFromLastMonth;
    data['Volume'] = volume;
    return data;
  }
}
