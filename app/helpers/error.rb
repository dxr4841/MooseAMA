def add_error!(error_msg)
  if session[:errors]
    session[:errors] << error_msg
  else
    session[:errors] = [error_msg]
  end
end
