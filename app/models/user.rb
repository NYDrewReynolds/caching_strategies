class User < ActiveRecord::Base
  has_many :orders

  after_create  :clear_cache
  after_save    :clear_cache
  after_destroy :clear_cache

  def clear_cache
    Rails.cache.clear
  end
end
