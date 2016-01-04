class Lamp < ZettaDevice

  # TODO: use the active record version once it
  # supports rails 5
  state_machine initial: :off do

    event :turn_on do
      transition from: :off, to: :on
    end

    event :turn_off do
      transition from: :on, to: :off
    end

  end
  
end
