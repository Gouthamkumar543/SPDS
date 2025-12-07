#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt

df=pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df.head()


# In[7]:


plt.figure(figsize = (4 ,3))
df['sex'].value_counts().plot(
    kind = 'pie',
    autopct = '%1.1f%%',
    colors = ['orange','pink'],
    startangle = 90,
    labels = ['Female', 'Male']
)
plt.title('Pie Chart: Sex Distribution')
plt.ylabel("")
plt.show()


# In[ ]:




