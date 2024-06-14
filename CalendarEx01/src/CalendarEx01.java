import java.util.Calendar;

public class CalendarEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 현재달의 달력
		int year = 2024;
		int month = 6;
		
		// 달력 출력
		Calendar startCalendar = Calendar.getInstance();
		Calendar endCalendar = Calendar.getInstance();
		
		startCalendar.set(year,  month-1, 1);
		endCalendar.set(year,  month, 1-1);
		
		int startDayOfWeek = startCalendar.get(Calendar.DAY_OF_WEEK);
		int endDate = endCalendar.get(Calendar.DATE);
		
		//System.out.println("      " + year + "년 " + month + "월"); // 6
		
		System.out.println(" SU MO TU WE TH FR SA");
		for(int i=1; i<startDayOfWeek; i++) {
			System.out.print("   "); // 3
		}
		
		for(int i=1, n=startDayOfWeek; i<=endDate; i++, n++) {
			System.out.print((i<10)? "  " + i : " " + i );    // 2, 1
			if (n % 7 == 0) {
				System.out.println();
			}
		}
		
		
 
		
		
		
 
	}
}
