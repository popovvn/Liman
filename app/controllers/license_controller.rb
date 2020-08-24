class LicenseController < ApplicationController
  def get
    license = License.find_by lictype: params[:lictype], licaccount: params[:acc]
    if license
      ret = strencode(license.licdate.to_s)
    else
      ret = 'not exist'
    end

    render json: ret
  end

  private
    def strencode(str)
      acr = [5,3,2,4,7,6,8,9,11,10]
      estr = ""
      for i in 0..9
        x = str[i].ord * acr[i]
        estr = estr + " " + x.to_s
      end
      estr
    end
end


