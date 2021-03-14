# 商品をお客に並べて提示する
def disp_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行 (#{plan[:price]}円)"
  end
end

# プラン選択する
def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1~3の番号を入力して下さい。"
  end
  plans[select_plan_num - 1]
end

# 人数を決定する
def decide_membur_num(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    membur_num = gets.to_i
    break if membur_num >= 1
    puts "1以上を入力して下さい。"
  end
  puts "#{membur_num}名ですね。"
  membur_num
end

# 合計料金を計算する
def calculate_charges(chosen_plan, membur_num)
  total_price = chosen_plan[:price] * membur_num
  if membur_num >= 5
    puts "5名以上なので10%割引となります。"
    total_price *= 0.9
  end
  puts "合計料金は#{total_price.floor}円になります。"
end