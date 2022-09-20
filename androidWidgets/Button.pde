void button(int x, int y, int w, String titleStr,float txtSize) {
  
  Button btn = new Button(ctx);
  btn.setLayoutParams (new RelativeLayout.LayoutParams (RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT));
  btn.setX(x);
  btn.setY(y);
  btn.setWidth(w);
  btn.setText(titleStr);
  btn.setTextSize(txtSize);
  btn.setOnClickListener(new View.OnClickListener() {
     void onClick(View v) {
      println("btn pressed.");
    }
  }
  );
  FrameLayout flayout = (FrameLayout)activity.findViewById(R.id.content);
  flayout.addView(btn);
}
