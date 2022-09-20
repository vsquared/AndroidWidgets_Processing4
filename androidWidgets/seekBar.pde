void seekBar(int x, int y, int w, int h, int maxValue, color thumbColor, color barColor ) {
  
  SeekBar seekBar = new SeekBar(ctx);
  LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);  
  seekBar.setX(x);
  seekBar.setY(y);
  layoutParams.width = w;
  layoutParams.height = h;
  seekBar.setLayoutParams(layoutParams);
  ShapeDrawable thumb = new ShapeDrawable(new OvalShape());
  thumb.setIntrinsicHeight(h); // same as bar height
  thumb.setIntrinsicWidth(h);
  thumb.getPaint().setColor(thumbColor);
  seekBar.setThumb(thumb);
  seekBar.setMax(maxValue);
  seekBar.setProgress(seekBarVal);
  seekBar.setBackgroundColor(barColor);

  seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
    void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
      seekBarVal = progress;
    }
    void onStartTrackingTouch(SeekBar seekBar) {
    }
    void onStopTrackingTouch(SeekBar seekBar) {
      println("seekBarVal = ",seekBarVal);
    }
  }
  );

  FrameLayout flayout = (FrameLayout)activity.findViewById(R.id.content);
  flayout.addView(seekBar);
}
