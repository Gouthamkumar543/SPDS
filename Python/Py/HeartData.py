#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
import plotly.graph_objects as go
import matplotlib.colors as mcolors
import networkx as nx

df=pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df.head()


# In[2]:


plt.figure(figsize=(8,6))
df.groupby("sex")['target'].value_counts().unstack().iloc[:,1].plot(
    kind='bar',
    color=['salmon','lightblue']
)
plt.title('Bar Plot: Heart Disease by Sex')
plt.xlabel('Sex')
plt.ylabel('Count')
plt.xticks([0,1], ['female','male'])
plt.show()


# In[ ]:




