
int main()
{
   int array1[10]={12,23,4,5,6,56,78,90,123,66};
   int array2[10]={4,12,34,51,22,44,11,15,18,19};

  for(int i=0;i<10;i++)
  {
     int temp;
      temp=array1[i];
      array1[i]=array2[i];
       array2[i]=temp;
  }

return 0;
}
