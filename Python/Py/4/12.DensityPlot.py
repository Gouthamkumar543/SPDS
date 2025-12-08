#!/usr/bin/env python
# coding: utf-8

# In[2]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[6]:


plt.figure(figsize = (4,3))
sns.kdeplot(
    data = df,
    x = 'age',
    hue = 'sex',
    shade = True,
    palette = 'coolwarm'
)
plt.title('Density plot of Age and Sex')
plt.xlabel('Age')
plt.ylabel('Density')
plt.show()

