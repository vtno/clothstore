namespace :del do
  desc 'Delete old promotions'
  task :ex_promo => :environment do
    Promotion.where('end < ?', Time.now.to_date).each do |p|
      p.destroy
    end
  end
end