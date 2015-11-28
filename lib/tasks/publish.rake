namespace :publish do
  task relish_app: :environment do
  	exec "relish push ferpobletea/living-documentation-example-master"
  end

end
