#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[3]:


plt.figure (figsize=(8,6))

# //Plot the histogram
sns.histplot(data=df, 
             x='age', 
             hue='fbs', 
             multiple='stack', 
             kde=False, 
             palette="coolwarm", 
             bins=20, stat="density"
            )

# //Overlay the frequency polygon (KDE withfill=False)
sns.kdeplot(data=df, 
            x='age', 
            hue='fbs', 
            common_norm=False, 
            fill=False, 
            linewidth=2
           )

plt.title('Fasting Blood Sugar vs Age (Frequency Polygon)')
plt.xlabel('Age')
plt.ylabel('Density')
plt.show()

