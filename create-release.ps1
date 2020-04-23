Remove-Item ./release -Recurse
dotnet build -c Release
if ($LASTEXITCODE -eq 0)
{
	Foreach ($folder in Get-ChildItem -Directory -Path ./release)
	{
		Compress-Archive -Path "./release/$folder/*" -DestinationPath "./release/$folder.zip"
	}
}