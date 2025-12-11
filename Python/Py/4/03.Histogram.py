#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[7]:


plt.figure(figsize = (4 ,3))
df['age'].plot(
    kind = 'hist',
    bins = 20,
    color = "purple",
    edgecolor = "yellow"
)
plt.title("Histogram: Age distribution")
plt.xlabel("Age")
plt.ylabel("Frequencey")
plt.show()

