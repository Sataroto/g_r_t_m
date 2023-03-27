class Dosis{
  final int tratamiento_id;
  final int medicamento_id;
  final int estado;
  final String momento;
  final String? comentario;

  Dosis(
  {
    required this.tratamiento_id,
    required this.medicamento_id,
    required this.estado,
    required this.momento,
    this.comentario
  });

  factory Dosis.fromJson(Map<String, dynamic> json){
    return Dosis(
      tratamiento_id: json['tratamiento_id'] as int,
      medicamento_id: json['medicamento_id'] as int,
      estado: json['estado'] as int,
      momento: json['momento'] as String,
      comentario: json['comentario'] as String?
    );
  }
}