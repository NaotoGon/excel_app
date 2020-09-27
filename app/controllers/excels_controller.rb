class ExcelsController < ApplicationController
  def index
    # Excelに出力したいデータをインスタンス変数に格納する
    @excels = Excel.all
    respond_to do |format|
      format.html
      format.xlsx do
        # ファイル名をここで指定
        response.headers['Content-Disposition'] = "attachment; filename=#{Date.today}.xlsx"
      end
    end
  end
end
