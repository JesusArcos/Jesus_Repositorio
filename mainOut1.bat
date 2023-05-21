Set variable="t2.small"
aws cloudformation deploy --stack-name mainOut --template-file mainOut21.yml --parameter-overrides InstanceType=$variable$

if %ERRORLEVEL% neq 0 (
    echo Hay errores al crear la pila
) else (
   aws cloudformation list-exports --query "Exports[?Name==`IPSERVER`].Value"
)