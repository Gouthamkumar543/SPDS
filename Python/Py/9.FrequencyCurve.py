#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[6]:


plt.figure (figsize=(4,3))
sns.kdeplot(df['oldpeak'], 
            color='grey', 
            alpha=0.6)
plt.title ('Oldpeak (ST Depression) Distribution (Frequency Curve)')
plt.xlabel('Oldpeak (ST Depression)')
plt.ylabel('Density')
plt.show()


# In[ ]:




