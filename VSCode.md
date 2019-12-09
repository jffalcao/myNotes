- [VS Code Extensions For Near IDE Experience:](https://medium.com/@spp020/vs-code-extensions-for-complete-ide-experience-bca5bb2f0f90)


- Code snippet for a simple new cpp program
```
{
	"New_cpp": {
	"prefix": "new_cpp",
	"body": [
			"#include <iostream>",
			"using namespace std;",
			"",
			"int main(int argc, char const *argv[])",
			"{",
			"	${1:/* code */}",
			"	return 0;",
			"}"
		],
		"description": "New cpp Project"
	}
}
```
