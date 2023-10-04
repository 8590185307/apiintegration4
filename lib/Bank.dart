class Bank {
  Bank({
      required this.cardExpire,
      required this.cardNumber,
      required this.cardType,
      required this.currency,
      required this.iban,});

  Bank.fromJson(dynamic json) {
    cardExpire = json['cardExpire'];
    cardNumber = json['cardNumber'];
    cardType = json['cardType'];
    currency = json['currency'];
    iban = json['iban'];
  }
 late String cardExpire;
 late String cardNumber;
 late String cardType;
 late String currency;
 late String iban;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cardExpire'] = cardExpire;
    map['cardNumber'] = cardNumber;
    map['cardType'] = cardType;
    map['currency'] = currency;
    map['iban'] = iban;
    return map;
  }

}