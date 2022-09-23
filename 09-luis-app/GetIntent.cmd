@echo off

rem Set values for your Language Understanding app
set app_id=96bfd3e0-bcdf-40f5-bbc9-44eb5befb586
set endpoint=https://luispractice12334.cognitiveservices.azure.com/
set key=b77733f8f7494566bd85d40fb7523209

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"