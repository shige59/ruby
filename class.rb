class Car
#classの定義。

  def initialize(car_name, car_model, capacity)
    @name = car_name
    @model = car_model
    @capacity = capacity
  end

  def self.run
    puts "走ります"
  end

  def ride_car(ride_number)
  #メソッドの定義。classに持たせる動作＝メソッド。
    @ride_number = ride_number
    #インスタンス変数に、引数ride_numberを代入。
    #インスタンス変数。インスタンスごとに個別に設定できて、Car class内の全てのインスタンスメソッドで使える。
      #ローカル変数は、インスタンスメソッドの中だけ。
    if ride_number > @capacity
      puts "#{@name}は、乗車定員が#{@capacity}人なので、#{ride_number}人は乗れません。"
    else
      puts "#{ride_number}人乗車できました。"
    end
  end
end

fire_truck = Car.new('消防車', '大型車', 5)
fire_truck.ride_car(3)
#引数３をインスタンス変数に代入。

Car.run