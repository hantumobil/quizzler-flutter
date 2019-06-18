import 'dart:math';

class Score {
  int _score = 0;
  int _questionLength;

  Score(this._questionLength);

  void addScore({int questionLength}) {
    _score++;
  }

  int getScore() {
    return _score;
  }

  void resetScore() {
    _score = 0;
  }

  double getPercentage() {
    int decimals = 2;
    int fac = pow(10, decimals);
    double d = this._score / this._questionLength;
    d = (d * fac).round() / fac;
    return d * 100;
  }
}
