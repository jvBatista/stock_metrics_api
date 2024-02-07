namespace :dev do
  desc 'Sets up development environment'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Dropping DB...') { %x(rails db:drop) }
      show_spinner('Creating DB...') { %x(rails db:create) }
      show_spinner('Migrating DB...') { %x(rails db:migrate) }
      # show_spinner('Populating DB...') { puts %x(rails db:seed) }
    else
      puts 'You are not in the development environment!'            
    end        
  end

    private

  def show_spinner(msg_start, msg_end='(Concluded successfully!)')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("#{msg_end}")
  end
end