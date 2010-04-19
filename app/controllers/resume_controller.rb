class ResumeController < ApplicationController
  def index
  end
  
  def doc
    @filename ="#{RAILS_ROOT}/tmp/resume/sap-doc.doc"
    send_file(@filename ,
                :filename      =>  "sapthakiri-resume",
                :type          =>  'application/msword',
                :disposition  =>  'attachment',
                :streaming    =>  'true',
            :buffer_size  =>  4096)
  end
  
  def pdf
    @filename ="#{RAILS_ROOT}/tmp/resume/sap-pdf.pdf"
    send_file(@filename ,
                :filename      =>  "sapthakiri-resume",
                :type          =>  'application/pdf',
                :disposition  =>  'attachment',
                :streaming    =>  'true',
            :buffer_size  =>  4096)
  end
end
