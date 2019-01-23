
int main()
{
   int array[10]={4,12,34,51,22,44,11,15,18,19};

    int max=0,min=100000;
    
for(int i=0;i<10;i++)
{
  if(max<array[i])
   {
      max=array[i];
    }

   if(min>array[i])
    {
      min=array[i];
    }     
}

}
