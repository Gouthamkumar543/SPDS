#!/usr/bin/env python
# coding: utf-8

# In[4]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[7]:


correlation_matrix = df.corr()
plt.figure (figsize=(10, 8))
sns.heatmap(correlation_matrix, 
            annot = True, 
            cmap = 'rainbow', 
            fmt = '.2f', 
            linewidths = 0.5)
plt.title('Correlation Matrix for Heart Dataset')
plt.show()

