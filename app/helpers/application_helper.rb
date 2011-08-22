module ApplicationHelper
  def gravtastic(email,size)
    g_size=size
    g_hash = Digest::MD5.hexdigest(email)
    "http://gravatar.com/avatar/#{g_hash}?s=#{g_size}&d=wavatar" 
  end 
end
