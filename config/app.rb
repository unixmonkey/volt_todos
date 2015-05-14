Volt.configure do |config|
  # Setup your global app config here.

  #######################################
  # Basic App Info (stuff you should set)
  #######################################
  config.domain = 'todo-example.com'
  config.app_name = 'Todo_example'
  config.mailer.from = 'Todo_example <no-reply@todo-example.com>'

  ############
  # App Secret
  ############
  # Your app secret is used for signing things like the user cookie so it can't
  # be tampered with.  A random value is generated on new projects that will work
  # without the need to customize.  Make sure this value doesn't leave your server.
  #
  # For added security we recommend moving the app secret into an environment.  You can
  # setup that like so:
  #
  # config.app_secret = ENV['APP_SECRET']
  #
  config.app_secret = 'GxZi-PxPxlZxsDSMDaJBk79UUf9PKpA1SnXC6yYIp0TsKOaemSzdWFZYl-vn72L16dE'

  ###############
  # Log Filtering
  ###############
  # Data updates from the client come in via Tasks.  The task dispatcher logs all calls to tasks.
  # By default hashes in the arguments can be filtered based on keys.  So any hash with a key of
  # password will be filtered.  You can add more fields to filter below:
  config.filter_keys = [:password]

  ##########
  # Database
  ##########
  # Database config all start with db_ and can be set either in the config
  # file or with an environment variable (DB_NAME for example).

  # config.db_driver = 'mongo'
  # config.db_name = (config.app_name + '_' + Volt.env.to_s)
  # config.db_host = 'localhost'
  # config.db_port = 27017

  #####################
  # Compression options
  #####################
  # If you are not running behind something like nginx in production, you can
  # have rack deflate all files.
  # config.deflate = true

  #######################
  # Public configurations
  #######################
  # Anything under config.public will be sent to the client as well as the server,
  # so be sure no private data ends up under public

  # Use username instead of email as the login
  # config.public.auth.use_username = true

  #####################
  # Compression Options
  #####################
  # Disable or enable css/js compression.  Default is to only run in production.
  # if Volt.env.production?
  #   config.compress_javascript = true
  #   config.compress_css        = true
  # end

  ################
  # Mailer options
  ################
  # The volt-mailer gem uses pony (https://github.com/benprew/pony) to deliver e-mail.  Any
  # options you would pass to pony can be setup below.
  # NOTE: The from address is setup at the top

  # Normally pony uses /usr/sbin/sendmail if one is installed.  You can specify smtp below:
  # config.mailer.via = :smtp
  # config.mailer.via_options = {
  #   :address        => 'smtp.yourserver.com',
  #   :port           => '25',
  #   :user_name      => 'user',
  #   :password       => 'password',
  #   :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
  #   :domain         => "localhost.localdomain" # the HELO domain provided by the client to the server
  # }



end
