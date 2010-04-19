class ResumeController < ApplicationController
  def index
  end
  
  def doc
    @filename ="#{RAILS_ROOT}/tmp/resume/sap-doc.doc"
    send_file @filename, :disposition => 'inline'
  end
  
  def pdf
    @filename ="#{RAILS_ROOT}/tmp/resume/sap-pdf.pdf"
    send_file @filename, :disposition => 'inline'
  end
end
