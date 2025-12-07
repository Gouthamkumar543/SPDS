#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[8]:


plt.figure(figsize = (6,5))
sns.scatterplot(x = 'age',
                y = 'thalach',
                hue = 'target',
                data = df,
                style = 'target',
                palette = 'cool'
               )
plt.title('Scatter Plot: Age vs Maximum Heart Rate')
plt.xlabel('Age')
plt.ylabel('Maximum Heart Rate')
plt.show()

