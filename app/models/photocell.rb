class Photocell < ZettaDevice
  
  # TODO: clean this up. look at EM synchrony
  
  after_initialize do |photocell|
    # Setup EventMachine
    thr = Thread.new { EM.run  }

    # Catch signals to ensure a clean shutdown of EventMachine
    trap(:INT) { EM.stop }
    trap(:TERM){ EM.stop }

    # Wait for the reactor to start
    while not EM.reactor_running?; end

    # Setup done! Now you can use any EventMachine code here!

    # Will output the current time every second since it started
    n = 0
    timer = EM.add_periodic_timer(1) do 
      photocell.intensity = rand(100)
      puts "Intensity: #{intensity}"
      photocell.save!
      if ((n+=1) > 5)
        timer.cancel
      end
    end

    # Tear-down, make sure that all EM defers finish
    while not EM.defers_finished?; end  end
end