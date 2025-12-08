#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[2]:


df[['chol', 'thalach']].cumsum().plot.area(alpha=0.5, 
                                           figsize=(10, 6)
                                          )
plt.title('Cumulative Area Chart of Cholesterol and Maximum heart rate')
plt.xlabel('Index')
plt.ylabel('Cumulative Sum')
plt.legend(["Cholesterol", "Maximum Heart Rate"])
plt.show()

