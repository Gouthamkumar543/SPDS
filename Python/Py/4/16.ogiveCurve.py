#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[4]:


age_data = df['age']
sorted_age = sorted(age_data)
cumulative_freq = [i for i in range(len(sorted_age))]
plt.figure (figsize=(4, 3))
plt.plot(sorted_age, 
         cumulative_freq, 
         marker='o', 
         color='b', 
         linestyle='-', 
         label='Ogive'
        )
plt.title ('Ogive Curve for Age')
plt.xlabel('Age')
plt.ylabel('Cumulative Frequency')
plt.grid(True)
plt.legend()
plt.show()

