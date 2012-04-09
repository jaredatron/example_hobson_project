puts "HOBSON SETUP HOOK"
sleep 3
ENV['HOBSON_SETUP_HOOK_RUN'] = "true"

Hobson.logger.info "RUBY_VERSION: #{RUBY_VERSION}"

execute "which ruby"
execute "ruby --version"

# we create this file to test workspace.prepare optimizations
File.open(File.expand_path('../../../untracked2.txt', __FILE__), 'w'){|file|
file.write <<-TEXT
this is an untracked file created during the workspace prepare phase.
that should be stashed and restored when workspace.prepare uses
git stash apply to re-prepare
TEXT
}
