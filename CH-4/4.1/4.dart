
double calculateSuccessPercentage({double marksOccupation1 = 0, double marksOccupation2 = 0, double marksOccupation3 = 0, double marksOccupation4 = 0, double marksOccupation5 = 0}) {

 double totalScore = marksOccupation1 + marksOccupation2 + marksOccupation3 + marksOccupation4 + marksOccupation5;

 double successPercentage = (totalScore / 1500) * 100;

 return successPercentage;
}

void main() {

 double marksOccupation1 = 800;
 double marksOccupation2 = 900;
 double marksOccupation3 = 700;
 double marksOccupation4 = 1000;
 double marksOccupation5 = 850;

 double successPercentage = calculateSuccessPercentage(marksOccupation1: marksOccupation1, marksOccupation2: marksOccupation2, marksOccupation3: marksOccupation3, marksOccupation4: marksOccupation4, marksOccupation5: marksOccupation5);

 print('The success percentage to gain a new job as a software developer is $successPercentage%.');
}