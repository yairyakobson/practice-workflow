import core from "@actions/core";
import exec from "@actions/exec";
import github from "@actions/github";

function run(){
  core.notice("I was executed");
}
run();