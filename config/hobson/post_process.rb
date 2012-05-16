test_run.reload! # get the latest data from redis

# if the test run was a success and all the jobs uploaded their coverate result set json
if test_run.passed? && test_run.jobs.all?{|j| j.artifacts.has_key? "coverage/.resultset.json" }

  coverage_dir = root.join('coverage')

  require 'simplecov'
  SimpleCov.root(root.to_s)
  SimpleCov.filters.clear  # otherwise all files are filtered out
  coverage_dir.rmtree # empty our local coverage directory

  # read all the coverage resultset json artifacts each job uploaded
  resultsets = test_run.jobs.map{|job|
    JSON.parse(job.get_artifact("coverage/.resultset.json").body).values.map{|v|v["coverage"]}
  }.flatten

  # merge result sets
  resultset = resultsets.inject({}){|c, resultset| c.merge_resultset(resultset) }

  # write the combined report
  result = SimpleCov::Result.from_hash({
    test_run.sha => {
      "coverage" => resultset,
      "timestamp" => Time.now.to_i,
    }
  })
  SimpleCov::ResultMerger.store_result(result)
  result.format!

  execute 'tar zcvf coverage.tar.gz coverage/'

  save_artifact('coverage.tar.gz')
end
