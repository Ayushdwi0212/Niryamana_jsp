package p;

public class Test2 extends Test1   {
	private  String tname;
	public static void main (String[] args) {
		Test2 t1 = new Test2();
		t1.setName("Ram");
		System.out.println(t1.getName());
		
		t1.tname = t1.getName();
		
		System.out.println(t1.tname);
	}

}
