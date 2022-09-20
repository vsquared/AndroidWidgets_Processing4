void editText(float x, float y, int w, color bkgrnd, color txtColor, float txtSize) {
  
  EditText editText = new EditText(activity);
  editText.setLayoutParams (new RelativeLayout.LayoutParams (RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT));
  editText.setX(x);
  editText.setY(y);
  editText.setWidth(w);
  editText.setBackgroundColor(bkgrnd);
  editText.setTextColor(txtColor);
  editText.setTextSize(txtSize);
  editText.setHint("Enter text...");
  editText.setHintTextColor(Color.rgb(170, 170, 170));  
  editText.requestFocus();
  editText.setOnKeyListener(new View.OnKeyListener() {
    boolean onKey(View v, int keyCode, KeyEvent event) {
      if (event.getAction() == KeyEvent.ACTION_DOWN && event.getKeyCode()== KeyEvent.KEYCODE_ENTER) {
        InputMethodManager imm = (InputMethodManager)v.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
        String str = editText.getText().toString();
        println(str);
        return true;
      }
      return false;
    }
  }
  );
  FrameLayout layout = (FrameLayout)activity.findViewById(R.id.content);
  layout.addView(editText);
}
