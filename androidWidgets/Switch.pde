int[][] states = new int[][]{
  new int[] {-android.R.attr.state_checked},
  new int[] {android.R.attr.state_checked},
};

int[] thumbColors = new int[] {
  Color.WHITE,
  Color.GREEN,
};

int[] trackColors = new int[] {
  Color.WHITE,
  Color.WHITE,
};


void switchBtn(int x, int y) {
  
  Switch switchBtn = new Switch(activity);
  LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
  layoutParams.setMargins(x, y, 200, 190);
  switchBtn.setLayoutParams(layoutParams);
  switchBtn.setText("OFF");
  switchBtn.setScaleX(2.0);
  switchBtn.setScaleY(2.0);
  FrameLayout layout = (FrameLayout)activity.findViewById(R.id.content);
  layout.addView(switchBtn);
DrawableCompat.setTintList(DrawableCompat.wrap(switchBtn.getThumbDrawable()), new ColorStateList(states, thumbColors));
DrawableCompat.setTintList(DrawableCompat.wrap(switchBtn.getTrackDrawable()), new ColorStateList(states, trackColors));
  switchBtn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
    void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
      String msg = isChecked ? "ON" : "OFF";
      switchBtn.setText(msg);
      println("switch btn = ",msg);
    }
  }
  );
}
