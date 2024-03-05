//parts 22,23 and 24
void main(List<String> args) {
  final windPlant = WindPlant(initialEnergy: 200);
  print(windPlant.energyLeft);
  windPlant.consumeEnergy(50);
  print(windPlant.energyLeft);
  chargePhone(windPlant);
  print(windPlant.energyLeft);
  final nuclearPlant = NuclearPlant(energyLeft: 100);
  print(nuclearPlant.energyLeft);
  nuclearPlant.consumeEnergy(10);
  print(nuclearPlant.energyLeft);
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('not enaugh energy');
  }
  return plant.energyLeft - 10;
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  //in an abstract class we do not implement the methods
  void consumeEnergy(double amount);
}

//when extends you are inheriting.
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.Eolic);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//implements doesn't require to fill every inherited method, extends does.
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  PlantType type = PlantType.Nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    if (energyLeft - amount > 0) {
      energyLeft -= amount;
    }
  }
}

enum PlantType { Eolic, Nuclear, Water }
