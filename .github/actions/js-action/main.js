import core from "@actions/core";
import exec from "@actions/exec";
import github from "@actions/github";

function run(){
  // Input values from the js action file
  const bucket = core.getInput("bucket", { required: true });
  const bucketRegion = core.getInput("bucket-region", { required: true });
  const distFolder = core.getInput("dist-folder", { required: true });
  
  // Upload files
  const s3Uri = `s3://${bucket}`;
  exec.exec(`aws s3 sync ${distFolder} ${s3Uri} --region ${bucketRegion}`)
  
  core.notice("I was executed");
}
run();