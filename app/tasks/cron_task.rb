class CronTask

  class << self

    def perform(method)
      with_logging method do
        self.new.send(method)
      end
    end

    def with_logging(method, &block)
      log("Starting Cron Task", method)

      time = Benchmark.ms do
        yield block
      end

      log("Completed Cron Task in (%.1fms)" % [time], method)
    end

    def log(message, method = nil)
      now = Time.now.strftime("%Y-%m-%d %H:%M:%S")
      puts "#{now} %s#%s - #{message}" % [self.name, method]
    end

  end

  def print
    Rails.logger.info Time.now + " is the time now."
  end

end