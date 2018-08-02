require './main'

describe LinkedList do

    before (:each) do
        @list = LinkedList.new
        @list.add(1)
        @list.add(2)
        @list.add(3)
        @list.add(3)
        @list.add(4)
    end

    it "itemがlistに含まれているかをtrue or falseで取得する" do 
        # 正常系
        expect(@list.contains(1)).to eq true
        expect(@list.contains(2)).to eq true
        # 異常系
        expect(@list.contains(4)).to eq false
    end

    it "indexに格納されたセル内のitemを取得する" do
        # 正常系
        expect(@list.get(0)).to eq 1
        expect(@list.get(4)).to eq 4
        # 異常系
        expect(@list.get(5)).to eq nil
        expect(@list.get(-1)).to eq nil
        expect(@list.get(0.00001)).to eq nil
    end

    it "itemが含まれたセルを連結リストから削除" do
        # 正常系
        @list.remove(4)
        expect(@list.contains(4)).to eq false
        @list.remove(3)
        expect(@list.contains(3)).to eq true
        @list.remove(3)
        expect(@list.contains(3)).to eq false
        # 異常系
        expect(@list.remove(5)).to eq nil
        # 3は3つ格納されていないため
        expect(@list.remove(3)).to eq nilß
    end

    it "連結リストの先頭セル内のitemを取得する" do
        expect(@list.first()).to eq 1
    end

    it "連結リストの末尾セルのitemを取得する" do
        expect(@list.last()).to eq 4
    end

    it "連結リストの長さを取得する" do
        expect(@list.length()).to eq 5
    end

end