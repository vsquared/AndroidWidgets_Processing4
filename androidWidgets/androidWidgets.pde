import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.EditText;
import android.widget.Switch;
import android.view.inputmethod.InputMethodManager;
import android.view.KeyEvent;
import android.R;
import android.graphics.Color;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.widget.CompoundButton;
import android.widget.ToggleButton;
import android.widget.ListView;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.CalendarView;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.AdapterView;
import android.view.Gravity;

color BLUE = color(64, 124, 188);
color LTGRAY = color(185, 180, 180);
color YELLOW = color(245, 250, 13);
color RED = color(255, 0, 0);
color BLACK = color(0, 0, 0);
color WHITE = color(255, 255, 255);
color GREEN = color(32, 175, 47);
color ORANGE = color(237, 147, 29);

Activity activity;
Context ctx;
int seekBarVal = 50;
PImage andy;

void setup() {
  fullScreen();
  orientation(LANDSCAPE);
  background(BLUE);
  activity = this.getActivity();
  ctx = activity.getApplicationContext();
  // Needs to be inside 'data' folder
  andy = loadImage("android.png");
  runOnUiThread(new Runnable() {
    void run() {
      button(120, 500, 200,"Push me",16);
      seekBar(130, 130, 930, 60, 255, ORANGE, LTGRAY);
      editText(480, 300, 600, WHITE, BLACK, 24.0);
      switchBtn(200, 320);
      popUpMenu(1200, 300, 300,"Show menu...", 16);
      textView(370, 510, 600, WHITE, 26.0);
      radioGroup(100, 700, WHITE, 26.0);
      calendarView(120, 850, WHITE);
      toggleButton(1400, 650, 150, "Off", 16);
      listView(900, 800, 500, 800, WHITE, 26.0, Gravity.CENTER);
    }
  }
  );
}

void draw() {
  background(BLUE);
  fill(GREEN);
  circle(1400, 150, seekBarVal);
  image(andy, 980, 480, 300, 300);
}
