#!/usr/bin/env python
# coding: utf-8

# In[3]:


pip install squarify


# In[9]:


import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import squarify

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[8]:


tree_data = df.groupby(['age', 'cp']).size().reset_index(name='count')
tree_data['label'] = tree_data.astype(str).agg(' - '.join, 
                                               axis=1)
norm = mcolors.Normalize(vmin=tree_data['count'].min(), 
                         vmax=tree_data['count'].max())
colors = [plt.get_cmap("YlGnBu") (norm(c)) for c in tree_data['count']]
plt.figure (figsize=(12, 8))
squarify.plot(sizes=tree_data['count'], 
              label=tree_data['label'], 
              color=colors, 
              alpha=0.7
             )
plt.title("Tree Map for Heart Disease Dataset (age vs chest pain)")
plt.axis('off')
plt.show()

