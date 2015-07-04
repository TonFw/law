# Only rake tasks allowed to run on production
namespace :global do
  desc 'Create a Global Subscription'
  task :subscription => :environment do
    resp = Helpers::Globals.subscription
    return puts(resp.to_s.colorize(:red)) if resp.is_a?String
    resp_msg = 'Global subscription:'
    resp.errors.empty? ? resp_msg="#{resp_msg} #{resp}".colorize(:green) : resp_msg = "#{resp_msg} #{resp.errors}".colorize(:red)
    puts resp_msg
  end

  desc 'Create a Global PendingSubscription'
  task :pending_subscription => :environment do
    Rake::Task['global:subscription'].invoke
    denied_code = Helpers::Enum.find(:transaction_code, :tag, 'not_authorized')[:index]
    global_purchase = Purchase.last
    pending_transaction = global_purchase.bank_transactions.last
    pending_transaction.status_code = denied_code
    pending_transaction.save

    resp_msg = 'Global pending subscription:'
    pending_transaction.errors.empty? ? resp_msg="#{resp_msg} #{pending_transaction}".colorize(:green) : resp_msg = "#{resp_msg} #{pending_transaction.errors}".colorize(:red)
    puts resp_msg
  end
end