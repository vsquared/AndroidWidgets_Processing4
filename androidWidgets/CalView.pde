void calendarView(int x, int y, color bkgrndColor) {
  
  CalendarView calendarView = new CalendarView(ctx);
  LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
  layoutParams.setMargins(x, y, 80, 40);
  calendarView.setLayoutParams(layoutParams);
  calendarView.setBackgroundColor(bkgrndColor);
  calendarView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() {
    @Override
      public void onSelectedDayChange(CalendarView view, int year, int month, int dayOfMonth) {
      //Note that months are indexed from 0. So, 0 means january, 1 means February, 2 means march etc.
      String msg = "Selected date is " + (month + 1) + "/" + dayOfMonth + "/" + year;
      println(msg);
    }
  }
  );
  FrameLayout flayout = (FrameLayout)activity.findViewById(R.id.content);
  flayout.addView(calendarView);
}
