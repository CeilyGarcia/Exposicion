package negocios;

public class Calcular {
    private final Double sDiario;
    private final Double dTrabajo;
    private Double Stotal;

 public Calcular(String sueldoDia, String diasTra){
    sDiario = Double.parseDouble(sueldoDia);
    dTrabajo = Double.parseDouble(diasTra);
 }

 public void sueldototal(){
 Stotal = dTrabajo*sDiario;
 }

 public Double getSueldo(){
 return Stotal;
 } 
}
