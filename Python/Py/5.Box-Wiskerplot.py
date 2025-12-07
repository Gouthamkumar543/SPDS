#!/usr/bin/env python
# coding: utf-8

# In[3]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[5]:


plt.figure(figsize = (4,3))
sns.boxplot(x='target', 
            y='chol',
            hue='target',
            data = df, 
            palette = 'Set2'
           )
plt.title("Box-WiskerPlot: Cholesterol vs Heart Disease")
plt.xlabel("Heart Disease Output (0 = No, 1 = Yes)")
plt.ylabel("Cholesterol level")
plt.show()


# In[ ]:




