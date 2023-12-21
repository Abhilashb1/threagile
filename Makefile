build:
		go build -a -trimpath -ldflags="-s -w -X main.buildTimestamp=$(date '+%Y%m%d%H%M%S')" -buildmode=plugin -o raa.so raa/raa/raa.go
		go build -a -trimpath -ldflags="-s -w -X main.buildTimestamp=$(date '+%Y%m%d%H%M%S')" -buildmode=plugin -o dummy.so raa/dummy/dummy.go
		go build -a -trimpath -ldflags="-s -w -X main.buildTimestamp=$(date '+%Y%m%d%H%M%S')" -buildmode=plugin -o demo-rule.so risks/custom/demo/demo-rule.go
		go build -a -trimpath -ldflags="-s -w -X main.buildTimestamp=$(date '+%Y%m%d%H%M%S')" -o threagile
run:
	