
void toggleButton(int x, int y, int w, String titleStr, float txtSize) {

  ToggleButton toggleButton = new ToggleButton(ctx);
  toggleButton.setLayoutParams (new RelativeLayout.LayoutParams (RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT));
  toggleButton.setX(x);
  toggleButton.setY(y);
  toggleButton.setWidth(w);
  toggleButton.setText(titleStr);
  toggleButton.setTextSize(txtSize);
  toggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
    @Override
      public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
      if (isChecked) {
        println("Toggle btn = On");
      } else {
        println("Toggle btn = Off");
      }
    }
  }
  );
  FrameLayout flayout = (FrameLayout)activity.findViewById(R.id.content);
  flayout.addView(toggleButton);
}
