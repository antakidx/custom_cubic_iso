#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
        setuid(0);
        system("bash /etc/skel/ExecuteScript.sh");
        return 0;
}
