class QuoteListener < AsakusaSatellite::Hook::Listener
  def message_buttons(context)
    return <<-HTML
      <img src="/plugin/as_quote/image/quote.png" onClick="AsakusaQuote.quote('#{context[:message]._id}');" alt="引用">
    HTML
  end

  def global_header(context)
    return "<script src='/plugin/as_quote/javascript/quote.js'></script>";
  end
end

