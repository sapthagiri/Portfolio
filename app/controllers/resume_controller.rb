class ResumeController < ApplicationController
  def index
  end
  
  def doc
    @filename ="#{RAILS_ROOT}/public/resume/SAPTHAKIRI-RESUME.doc"
    send_file @filename, :disposition => 'inline'
  end
  
  def pdf
    @filename ="#{RAILS_ROOT}/public/resume/SAPTHAKIRI-RESUME.pdf"
    send_file @filename, :disposition => 'inline'
  end
end
