# 全体の処理
# 商品を認識する
# 商品をお客に並べて提示する
# プラン選択する
# 人数を決定する
# 合計料金を計算する

# メソッドファイルの読み込み
require "./methods.rb"

#商品の認識
plans = [
  { place: "沖縄", price: 100000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price:150000 }
]

disp_plans(plans)
chosen_plan = choose_plan(plans)
membur_num = decide_membur_num(chosen_plan)
calculate_charges(chosen_plan, membur_num)