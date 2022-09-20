void popUpMenu(int x, int y, int w, String titleStr, float txtSize) {

  Button displayBtn = new Button(ctx);
  PopupMenu popupMenu = new PopupMenu(ctx, displayBtn);
  displayBtn.setText(titleStr);
  displayBtn.setWidth(w);
  displayBtn.setX(x);
  displayBtn.setY(y);
  displayBtn.setTextSize(txtSize);
  displayBtn.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));
  displayBtn.setOnClickListener(new View.OnClickListener() {
    @Override
      public void onClick(View view) {
      popupMenu.show();
    }
  }
  );
  FrameLayout layout = (FrameLayout)activity.findViewById(R.id.content);
  layout.addView(displayBtn);
  //add menu items in popup menu
  //parm 2 => menuID, param 3 => position in menuitems list, param 4 => title
  popupMenu.getMenu().add(Menu.NONE, 0, 0, "Copy");
  popupMenu.getMenu().add(Menu.NONE, 1, 1, "Share");
  popupMenu.getMenu().add(Menu.NONE, 2, 2, "Save");
  popupMenu.getMenu().add(Menu.NONE, 3, 3, "Delete");
  //handle menu item clicks
  popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
    @Override
      public boolean onMenuItemClick(MenuItem menuItem) {
      int id = menuItem.getItemId();
      String itemTitle = menuItem.getTitle().toString();
      displayBtn.setText(itemTitle);
      if (id == 0) {
        println("Copy selected");
      } else if (id == 1) {
        println("Share selected");
      } else if (id == 2) {
        println("Save selected");
      } else if (id == 3) {
        println("Delete selected");
      }
      return false;
    }
  }
  );
}
