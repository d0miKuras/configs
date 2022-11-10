local dap = require('dap')
dap.adapters.unity = {
  type = 'executable',
  command = 'C:\Program Files\Mono\bin\mono.exe'
  args = {'C:\Users\domin\.vscode\extensions\unity.unity-debug-3.0.2\bin\UnityDebug.exe'}
}