#include <stdio.h>
#include <stdlib.h>
int main()
{
   FILE *fd = NULL;
   
   fd = fopen("temp.txt", "r");
   char buf[100];
   // scanf("%s", name);
   fgets(buf, 255, (FILE*)fd);

   printf("%s\n", buf);
   fclose(fd);
   return 0;
}