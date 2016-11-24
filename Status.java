package com.sccc.GirlFriend;
import java.util.ArrayList;
import java.util.HashMap;
public class Status {
 private ArrayList<String> zhuangTai;
 private HashMap<String, ArrayList<String>> TiMu;
private HashMap<String, ArrayList<String>> tiMu;
 
 public Status(){
	 zhuangTai = new ArrayList<String>();
	 tiMu = new HashMap<String, ArrayList<String>>();
	 
	 String qingKuang = "没有接到女朋友电话";
	 zhuangTai.add(qingKuang);
	 
	 String xuanXiang1 = "我手机静音了";
	 String xuanXiang2 = "我在打游戏";
	 String xuanXiang3 = "我在给你买东西";
	 String xuanXiang4 = "我在工作";
	 
	 ArrayList<String> temp = new ArrayList<String>();
	 
	 temp.add(xuanXiang1);
	 temp.add(xuanXiang2);
	 temp.add(xuanXiang3);
	 temp.add(xuanXiang4);
	 
	 TiMu.put(qingKuang,temp);
 }
 public ArrayList<String> getZhuangTai(){
	 return zhuangTai;
 }
 public void setZhuangTai(ArrayList<String> zhuangTai){
	 this.zhuangTai = zhuangTai;
 }
 public HashMap<String,ArrayList<String>> getTiMu(){
	 return tiMu;
 }
}
