class ComfesController < ApplicationController
  
  protect_from_forgery
  
  include QrcodeTagHelper

  def comfes
    if request.post? then
      @title = "étude de ruby 【重要】印刷できたらリロード"
      @msg = "生成できたらCtrl＋Pで設定を変更せずに印刷してください。その後リロードしてください。"

      @text = "https://twitter.com/intent/tweet?text=%23comfes2018%0a「étude de ruby(AP_07)」で作られたQRコードよりツイートしました%0a"
      if params["input1"] != nil then
        @text = @text + "@" + params["input1"].to_s
        @msg1 = "@" + params["input1"].to_s
        @value1 = params["input1"]
      end
      if params["input2"] != nil then
        @text = @text + "%0a" + params["input2"].to_s
        @msg2 = "「" + params["input2"].to_s + "」"
        @value2 = params["input2"]
      end
      if params["input3"] != nil then
        @text = @text + "%0a%23" + params["input3"]
        @msg3 = "#comfes2018 & " + "#" + params["input3"].to_s
        @value3 = params["input3"]
      end  
    else
      #getのときの処理とか
      @title = "étude de ruby"#タイトル
      @msg = "読み込むと指定したテキストを自動的に含んだツイートをする画面が出るQRコードを生成します。"
      @msg1 = "一番上のテキストボックス　：　メンションが必要な場合、twitterアカウント(@不要)を入力することで指定できます。　｜　印刷時には表示されません。"
      @msg2 = "真ん中のテキストボックス　：　「フィードバックください」のような任意のテキストを指定できます。　｜　印刷時にはタイトルっぽい表示になります。"
      @msg3 = "一番下のテキストボックス　：　任意のタグ1つ(#不要 comfes2018は自動で付与されます)　｜　印刷時には表示されません。"
      @value1 = "terfno_mai"
      @value2 = "この作品のフィードバックをください↓"
      @value3 = "MadeByTerfno"
      @text = "【注意】全てのテキストボックスは任意です。また、宣伝文を付与しています。印刷時に表示されないテキストがあります。QRコード生成例↓"
    end
  end
end
