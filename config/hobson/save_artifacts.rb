root.join('log').children.each{ |path| save_artifact path }
ENV['HOBSON_SAVE_ARTIFACTS_HOOK_RUN'] = "true"
