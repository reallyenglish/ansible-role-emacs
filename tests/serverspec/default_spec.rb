require "spec_helper"
require "serverspec"

package = "emacs"
extra_package = nil

case os[:family]
when "openbsd"
  extra_package = "emacs-el"
when "redhat"
  package = "emacs-nox"
  extra_package = "emacs-git-el"
when "ubuntu"
  package = "emacs24-nox"
  extra_package = "emacs-goodies-el"
when "freebsd"
  package = "emacs-nox11"
  extra_package = "emacs-lisp-intro"
end

describe package(package) do
  it { should be_installed }
end

describe command("emacs --version") do
  its(:stderr) { should eq "" }
  its(:stdout) { should match(/^GNU Emacs/) }
  its(:exit_status) { should eq 0 }
end

describe package(extra_package) do
  it { should be_installed }
end
