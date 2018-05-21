setlocal

@rem enter this directory
cd /d %~dp0

set TOOLS_PATH=%userprofile%\.nuget\packages\grpc.tools\1.11.0\tools\windows_x64

%TOOLS_PATH%\protoc.exe -I=protocol\protobuf-3.5.1\src -I=protocol --csharp_out=.\generated protocol\api\api.proto protocol\core\Contract.proto protocol\core\Discover.proto protocol\core\Tron.proto protocol\core\TronInventoryItems.proto --grpc_out .\generated --plugin=protoc-gen-grpc=%TOOLS_PATH%\grpc_csharp_plugin.exe

endlocal
