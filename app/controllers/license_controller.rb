class LicenseController < ApplicationController
  def get
    license = License.find_by lictype: params[:lictype], licaccount: params[:acc]
    if license
      ret = license.licdate
    else
      ret = 'not exist'
    end
    render text: ret
    #render json: ret
  end
end
