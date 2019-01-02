# -----------------------------------
# 01.01 2019.01.02 By Arief Maulana
# -----------------------------------
# 01.01 2019.01.02 Devise
# -----------------------------------
class ApplicationController < ActionController::Base
# 01.01 2019.01.02 >>>
before_action :authenticate_user!
# 01.01 2019.01.02 <<<
end
