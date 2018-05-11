class DeleteUserWorker
  include Sidekiq::Worker

  def perform(*args)
    #Micropost.where(user_id: args[0]).find_each(batch_size: 10) do |micro|
    	#micro.destroy
    #Micropost.where(user_id: args[0]).find_each(batch_size: 10).destroy_all
    #end
    #Micropost.where(user_id: args[0]).in_batches.destroy_all
    #Micropost.each do |m|
#m.where(user_id: args[0]).find_in_batches do |things|
       # ids = things.map &args[0]
      #  ClassOfThingToDestroy.where(id: ids).destroy_all
    ## end
 # end
    count = Micropost.where(user_id: args[0]).count
    micro = Micropost.where(user_id: args[0])
    while count>0
      micro.limit(10).destroy_all
      count = count - 10
    end
  end
end

