#!/usr/bin/env python
# coding: utf-8

# In[6]:


import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[7]:


target_value = df[df['target'] == 1]['restecg'].mean()
min_value = df['restecg'].min()
max_value = df['restecg'].max()
fig, ax = plt.subplots(figsize=(10, 3))
ax.barh(0, 
        max_value - min_value, 
        left = min_value, 
        height = 0.5, 
        color = 'lightyellow'
       )
actual_value = df[df['target'] == 1]['restecg'].mean()
ax.barh(0, 
        actual_value - min_value, 
        left=min_value, 
        height = 0.5, 
        color = 'lavender'
       )
ax.axvline(x=target_value, 
           color = 'red', 
           linewidth = 2, 
           label = f'Target Age: {target_value:.2f}'
           )
ax.set_xlim([min_value, max_value])
ax.set_title('Bullet Graph: electrical activity of heart while resting vs Target (Heart Disease Patients)',
             fontsize=14)
ax.set_xlabel('restecg', fontsize=12)
ax.set_yticks([])
ax.legend()
plt.tight_layout()
plt.show()

