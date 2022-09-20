void listView(int x, int y, int w, int h, color txtColor, float txtSize, int alignment) {

  ListView  listView = new ListView(ctx);
  listView.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
  listView.setX(x);
  listView.setY(y);
  ViewGroup.LayoutParams params = listView.getLayoutParams();
  params.width = w;
  params.height = h;
  listView.setLayoutParams(params);

  String[] osArray = {"Android", "iOS", "WindowsMobile", "WebOS", "Ubuntu", "Mac OS"};
  ArrayAdapter adapter = new ArrayAdapter<String>(activity, android.R.layout.simple_list_item_1, android.R.id.text1, osArray) {
    @Override
      public View getView(int position, View convertView, ViewGroup parent) {
      TextView textView = (TextView) super.getView(position, convertView, parent);
      textView.setTextColor(txtColor);
      textView.setTextSize(txtSize);
      textView.setGravity(alignment);
      return textView;
    }
  };
  listView.setAdapter(adapter);
  listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
    @Override
      public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
      println("position = ", position);
      println("item = ", listView.getItemAtPosition(position));
    }
  }
  );

  FrameLayout flayout = (FrameLayout)activity.findViewById(R.id.content);
  flayout.addView(listView);
}
