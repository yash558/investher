enum TransactionType { outFlow, inFlow }

enum ItemCategoryType {
  fashion,
  grocery,
  payments,
}

class UserInfo {
  final String name;
  final String totalBalance;
  final String inFlow;
  final String outFlow;
  final String totalIncome;
  final List<Transaction> transactions;
  UserInfo(
      {required this.name,
      required this.totalBalance,
      required this.inFlow,
      required this.outFlow,
      required this.transactions,
      required this.totalIncome});
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;
  Transaction(
    this.categoryType,
    this.transactionType,
    this.itemCategoryName,
    this.itemName,
    this.amount,
    this.date,
  );
}

List<Transaction> transactions1 = [
  Transaction(ItemCategoryType.fashion, TransactionType.outFlow, "Shoes",
      "Puma Sneaker", "\$3000", "Oct 23"),
];
var userData = UserInfo(
  name: "Yash",
  totalBalance: "\$60,000",
  inFlow: "\$6000",
  outFlow: "\$8000",
  transactions: [],
  totalIncome: "\$1,50,000",
);
