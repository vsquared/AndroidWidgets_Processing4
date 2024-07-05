import android.app.Activity;
import android.content.Context;  
import android.view.View;   
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.view.ViewGroup.LayoutParams;
import android.text.Editable;
import android.view.inputmethod.InputMethodManager;
import android.view.KeyEvent;
import android.view.InputEvent;
import android.widget.FrameLayout;
import android.R;
import android.text.InputType;

color BLUE = color(64,124,188);
color LTGRAY = color(185,180,180);
color YELLOW = color(245,250,13);
color RED = color(255,0,0);
color BLACK = color(0,0,0);
color WHITE = color(255,255,255);
color GREEN = color(32,175,47);
color ORANGE = color(237, 147, 29);

Activity activity;
Context ctx;
EditText editText;

void editText(int x, int y, int w, int h, color bkgrnd, color txtColor, float txtSize) {
  editText = new EditText(ctx);
  editText.setLayoutParams (new RelativeLayout.LayoutParams (RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT));
  editText.setTextColor(txtColor);
  editText.setBackgroundColor(bkgrnd);
  editText.getLayoutParams().width = w;
  editText.getLayoutParams().height = h;
  editText.setX(x);
  editText.setY(y);
  editText.setTextSize(txtSize);
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


void setup() {
  fullScreen();
  orientation(LANDSCAPE);
  background(BLUE);
  activity = this.getActivity();
  ctx = activity.getApplicationContext();
   runOnUiThread(new Runnable() {
      void run() {
      editText(300, 300, 800, 100, ORANGE, BLACK, 28.0);
    }
  }
  );  
}

void draw() {
  
}
