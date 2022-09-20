void radioGroup(int x, int y, color txtColor, float txtSize) {

  RadioGroup radioGrp = new RadioGroup(ctx);
  radioGrp.setLayoutParams(new LinearLayout.LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT, 1f));
  radioGrp.setX(x);
  radioGrp.setY(y);
  String[] item = {"Item 1", "Item 2", "Item 3"};
  RadioButton[] radio = new RadioButton[item.length];
  radioGrp.setOrientation(RadioGroup.HORIZONTAL);// horizontal or vertical depends on requirement
  for (int i = 0; i < item.length; i++) {
    radio[i] = new RadioButton(ctx);
    radioGrp.addView(radio[i]); // RadioButtons are added to radioGroup, not layout
    radio[i].setTextColor(txtColor);
    radio[i].setText(item[i]);
    radio[i].setTextSize(txtSize);
    radio[i].setPadding(10, 0, 50, 0);
    radio[i].setId(i);
  }
  radio[0].setChecked(true);
  radioGrp.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
    @Override
      public void onCheckedChanged(RadioGroup group, int checkedId) {
      println("Item selected =", item[checkedId]);
    }
  }
  );
  FrameLayout flayout = (FrameLayout)activity.findViewById(R.id.content);
  flayout.addView(radioGrp);
}
