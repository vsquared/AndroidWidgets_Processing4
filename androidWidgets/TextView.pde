void textView(int x, int y, int w, color txtColor, float txtSize) {

  TextView textView = new TextView(ctx);
  textView.setLayoutParams (new RelativeLayout.LayoutParams (RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT));
  textView.setX(x);
  textView.setY(y);
  textView.setWidth(w);
  textView.setTextColor(txtColor);
  textView.setTextSize(txtSize);
  textView.setText("Welcome to Android");
  FrameLayout flayout = (FrameLayout)activity.findViewById(R.id.content);
  flayout.addView(textView);
}
