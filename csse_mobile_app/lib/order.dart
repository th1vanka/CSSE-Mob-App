class Order{
  Order({
    required this.itemName,
    required this.orderQty,
    required this.receivedQty,
    required this.dueDate,
    required this.rejectReason
  });

  String itemName;
  int orderQty;
  int receivedQty;
  DateTime dueDate;
  String rejectReason;
}