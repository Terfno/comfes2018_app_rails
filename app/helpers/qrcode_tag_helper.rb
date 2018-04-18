module QrcodeTagHelper

  require "rqrcode"
  require "rqrcode_png"
  require "chunky_png"

  def qrcode_tag(text, options = {})
    qr = RQRCode::QRCode.new( text, :size => 17, :level => :h )
    return ChunkyPNG::Image.from_datastream(qr.as_png.resize(500,500).to_datastream).to_data_url
  end

end
