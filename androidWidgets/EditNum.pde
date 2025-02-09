void editNum(int x, int y, int w, int h, color bkgrnd, color txtColor, float txtSize) {
  EditText editText = new EditText(ctx);
  editText.setLayoutParams (new RelativeLayout.LayoutParams (RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT));
  editText.setTextColor(txtColor);
  editText.setBackgroundColor(bkgrnd);
  editText.getLayoutParams().width = w;
  editText.getLayoutParams().height = h;
  editText.setX(x);
  editText.setY(y);
  editText.setTextSize(txtSize);
  editText.setHint("Enter number...");
  editText.setInputType(InputType.TYPE_CLASS_NUMBER);
  editText.setOnKeyListener(new View.OnKeyListener() {
    @ Override
      public boolean onKey(View v, int keyCode, KeyEvent event) {
      if (event.getAction() == KeyEvent.ACTION_DOWN && event.getKeyCode()== KeyEvent.KEYCODE_ENTER) {
       InputMethodManager imm = (InputMethodManager)v.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
        String value = editText.getText().toString();
        println(value);
        return true;
      }
      return false;
    }
  }
  );
  FrameLayout layout = (FrameLayout)activity.findViewById(R.id.content);
  layout.addView(editText);
}
