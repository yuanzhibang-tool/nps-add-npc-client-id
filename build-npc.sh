#/bash/sh

rm -rf ./dist

export VERSION=0.26.11
export GOPROXY=direct

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_amd64_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=386 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_386_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=freebsd GOARCH=386 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/freebsd_386_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=freebsd GOARCH=amd64 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/freebsd_amd64_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=freebsd GOARCH=arm go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/freebsd_arm_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=7 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_arm_v7_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=6 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_arm_v6_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_arm_v5_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_arm64_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=mips64 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_mips64_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=mips64le go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_mips64le_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=mipsle go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_mipsle_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=linux GOARCH=mips go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/linux_mips_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=windows GOARCH=386 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/windows_386_client.exe ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/windows_amd64_client.exe ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/darwin_amd64_client ./cmd/npc/npc.go

CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -ldflags "-s -w -extldflags -static -extldflags -static" -o ./dist/npc/darwin_arm64_client ./cmd/npc/npc.go

chmod 777 -R ./dist/npc