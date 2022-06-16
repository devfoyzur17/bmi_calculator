class TableModel{
  int id;
  String category;
  String bmi;
  String bmiPrime;

  TableModel({required this.id,required this.category, required this.bmi, required this.bmiPrime});
}


List<TableModel> tableData =[
  TableModel(id: 0,category: "Category", bmi: "BMI (kg/m2)", bmiPrime: "BMI Prime"),
  TableModel(id: 1,category: "Underweight (Severe thinness)", bmi: "< 16.0", bmiPrime: "< 0.64"),
  TableModel(id: 2,category: "Underweight (Moderate thinness)", bmi: "16.0 – 16.9", bmiPrime: "0.64 – 0.67"),
  TableModel(id: 3,category: "Underweight (Mild thinness)", bmi: "17.0 – 18.4", bmiPrime: "0.68 – 0.73"),
  TableModel(id: 4,category: "Normal range", bmi: "18.5 – 24.9", bmiPrime: "0.74 – 0.99"),
  TableModel(id: 5,category: "Overweight (Pre-obese)", bmi: "25.0 – 29.9", bmiPrime: "1.00 – 1.19"),
  TableModel(id: 6,category: "Obese (Class I)", bmi: "30.0 – 34.9", bmiPrime: "1.20 – 1.39"),
  TableModel(id: 7,category: "Obese (Class II)", bmi: "35.0 – 39.9", bmiPrime: "1.40 – 1.59"),
  TableModel(id: 8,category: "Obese (Class III)", bmi: "≥ 40.0", bmiPrime: "≥ 1.60"),
]; 