# frozen_string_literal: true

require 'thor'
require_relative 'mastodon/media_cli'
require_relative 'mastodon/emoji_cli'
require_relative 'mastodon/accounts_cli'
require_relative 'mastodon/feeds_cli'
require_relative 'mastodon/settings_cli'
require_relative 'mastodon/domains_cli'

module Mastodon
  class CLI < Thor
    def self.exit_on_failure?
      true
    end

    desc 'media SUBCOMMAND ...ARGS', 'Manage media files'
    subcommand 'media', Mastodon::MediaCLI

    desc 'emoji SUBCOMMAND ...ARGS', 'Manage custom emoji'
    subcommand 'emoji', Mastodon::EmojiCLI

    desc 'accounts SUBCOMMAND ...ARGS', 'Manage accounts'
    subcommand 'accounts', Mastodon::AccountsCLI

    desc 'feeds SUBCOMMAND ...ARGS', 'Manage feeds'
    subcommand 'feeds', Mastodon::FeedsCLI

    desc 'settings SUBCOMMAND ...ARGS', 'Manage dynamic settings'
    subcommand 'settings', Mastodon::SettingsCLI

    desc 'domains SUBCOMMAND ...ARGS', 'Manage account domains'
    subcommand 'domains', Mastodon::DomainsCLI
  end
end
