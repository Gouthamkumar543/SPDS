#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[8]:


plt.figure(figsize = (4,3))
df.groupby('age')['chol'].mean().plot(
    kind = 'line',
    color = 'orange',
    marker = 'o'
)
plt.title('Line Plot: Age vs Cholesterol Levels')
plt.xlabel('Age')
plt.ylabel('Average Cholesterol')
plt.grid(True)
plt.show()

