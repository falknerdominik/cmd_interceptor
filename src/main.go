package main

import (
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
)

func main() {
	var executablePath = os.Args[0]
	var executableName = filepath.Base(executablePath)

	var realExecutableName =  executableName + "2"

	var paramters = append(os.Args[:0], os.Args[1:]...)
	var cmd = exec.Command(realExecutableName, paramters...)

	out, err := cmd.Output();
	if err != nil {
		println(err.Error())
		return
	}

	var expr = regexp.MustCompile(`FAUST_[A-Za-z0-9/\+]{32}`)
	var stringOutput = string(out)
	var placeholder = "FAUST_2aa05c1d2f83ac8c797b903483cc639b"

	var filterOut = expr.ReplaceAllString(stringOutput, placeholder)

	println(filterOut)
	return
}
