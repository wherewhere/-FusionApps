require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import 'android.support.*'
import "com.androlua.LuaAdapter"
import "org.w3c.dom.Text"
import "android.view.WindowManager"
import "android.widget.TextView"
import "com.androlua.LuaAdapter"
import "android.widget.ImageView"
import "android.widget.ListView"
import "android.support.v7.widget.*"
import "android.widget.GridLayout"
import "android.support.v4.app.*"
import "com.tencent.smtt.sdk.*"
import "android.widget.PopupMenu"


fltBtncolor='#4285F4'--悬浮窗颜色
fltBtncolor2='#FFFFFF'--悬浮窗图标颜色

color1='#009688'--页面一背景颜色
image1='welcome1.png'--页面一图片路径
title1='欢迎使用贴吧云签到'--页面一标题文字
text1=""--页面一说明文字
textcolor1='#efefef'--页面一文字颜色
--下面的同上
color2='#109d58'
image2='welcome2.png'
title2='没有应用内更新'
text2="获取更新请前往酷安"
textcolor2='#efefef'

color3='#262B42'
image3='welcome3.png'
title3='一个隐藏的功能'
text3=""
textcolor3='#efefef'

color4='#33a6ab'
image4='welcome4.png'
title4='开始使用吧'
text4=""
textcolor4='#efefef'


local viewlayout={
  RelativeLayout,
  layout_height="match_parent",
  layout_width="match_parent",
  {
    LinearLayout,
    id='back',
    orientation="vertical",
    layout_width="match_parent",
    layout_height="match_parent",
    {
      PageView,
      layout_width="match_parent",
      id="hd",
      layout_height="match_parent",
      pages={
        {
          RelativeLayout,
          background=color1,
          layout_width="match_parent",
          layout_height="match_parent",
          {
            ImageView,
            id='image1',
            elevation='2dp',
            layout_centerInParent="true",
            background='#ffefefef',
            src=image1,
            layout_width="65%w",
            layout_height="115.55%w",
          },
          {
            TextView,
            layout_above="image1",
            textSize='30sp',
            textColor=textcolor1,
            text=title1,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='10sp',
          },
          {
            TextView,
            layout_below="image1",
            --textSize='30sp',
            textColor=textcolor1,
            Alpha='0.87',
            text=text1,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='5sp',
          },
        },
        {
          RelativeLayout,
          background=color2,
          layout_width="match_parent",
          layout_height="match_parent",
          {
            ImageView,
            id='image2',
            elevation='2dp',
            layout_centerInParent="true",
            background='#ffefefef',
            src=image2,
            layout_width="65%w",
            layout_height="115.55%w",
          },
          {
            TextView,
            layout_above="image2",
            textSize='30sp',
            textColor=textcolor2,
            text=title2,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='10sp',
          },
          {
            TextView,
            layout_below="image2",
            --textSize='30sp',
            textColor=textcolor2,
            Alpha='0.87',
            text=text2,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='5sp',
          },
        },

        {
          RelativeLayout,
          background=color3,
          layout_width="match_parent",
          layout_height="match_parent",
          {
            ImageView,
            id='image3',
            elevation='2dp',
            layout_centerInParent="true",
            background='#ffefefef',
            src=image3,
            layout_width="65%w",
            layout_height="115.55%w",
          },
          {
            TextView,
            layout_above="image3",
            textSize='30sp',
            textColor=textcolor3,
            text=title3,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='10sp',
          },
          {
            TextView,
            layout_below="image3",
            --textSize='30sp',
            textColor=textcolor3,
            Alpha='0.87',
            text=text3,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='5sp',
          },
        },

        {
          RelativeLayout,
          background=color4,
          layout_width="match_parent",
          layout_height="match_parent",
          {
            ImageView,
            id='image4',
            elevation='2dp',
            layout_centerInParent="true",
            background='#ffefefef',
            src=image4,
            layout_width="65%w",
            layout_height="115.55%w",
          },
          {
            TextView,
            layout_above="image4",
            textSize='30sp',
            textColor=textcolor4,
            text=title4,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='10sp',
          },
          {
            TextView,
            layout_below="image4",
            --textSize='30sp',
            textColor=textcolor4,
            Alpha='0.87',
            text=text4,
            gravity='center',
            layout_width='match_parent',
            layout_height="wrap_content",
            padding='5sp',
          },
        },
      },
    },
  },
  {
    LinearLayout,
    id='tt',
    layout_height="56dp",
    background="#00000000",
    layout_centerHorizontal="true",
    layout_alignBottom="back",
    layout_width="match_parent",
    layout_height="70dp",
    gravity='center',
    {
      LinearLayout;
      layout_width="12.5%w";
      background="#50000000",
      {
        TextView;
        layout_width="3.125%w";
        layout_height="2dp";
        background="#FFFFFF",
        id="hua",
      },
    },
  },
  {
    CardView,
    id='button',
    layout_column='1',
    layout_width='60dp',
    CardElevation="3dp",
    CardBackgroundColor=fltBtncolor,
    layout_height='60dp',
    Radius='30dp',
    layout_alignRight="tt",
    layout_alignTop="tt",
    layout_marginRight="20dp",
    layout_marginTop="-20dp",
    {
      ImageView,
      id='imageview',
      src='right.png',
      ColorFilter=fltBtncolor2,
      layout_width="wrap_content",
      layout_height="wrap_content",
      layout_gravity="center",
      adjustViewBounds='true',
      maxWidth='30dp',
      maxHeight='30dp',
    },
  },
}


activity.requestWindowFeature(Window.FEATURE_NO_TITLE)
activity.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN)
activity.setContentView(loadlayout(viewlayout))


local pag=0
local ppg=0
hd.addOnPageChangeListener{
  onPageScrolled=function(p,pO,pp)
    pag=p
    ppg=pO
    if pO~=0 then
      hua.setX(activity.getWidth()/32*pO+p*activity.getWidth()/32)
    end
    if (pag==2 and tonumber(pO)>=0.1 or pag==3)then
      imageview.setImageBitmap(loadbitmap('true.png'))
    else
      imageview.setImageBitmap(loadbitmap('right.png'))
    end
  end,
}
button.onClick=function()
  if (pag==2 and tonumber(ppg)>=0.1 or pag==3)then
    activity.finish()
  end
  hd.showPage(pag+1)
  pag=pag+1
end