#!/usr/bin/env python
# coding: utf-8

# In[5]:


import pandas as pd
import matplotlib.pyplot as plt

df=pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df.head()


# In[9]:


# //Simple Bar Plot: Heart Disease by Sex
plt.figure(figsize=(4,3))
df.groupby("sex")['target'].value_counts().unstack().iloc[:,1].plot(
    kind='bar',
    color=['pink','red']
)
plt.title('Bar Plot: Heart Disease by Sex')
plt.xlabel('Sex')
plt.ylabel('Count')
plt.xticks([0,1], ['female','male'])
plt.show()


# In[10]:


# //Multiple Bar Plot: Age Group vs Heart Disease
age_group = pd.cut(df['age'], bins=[29, 39, 49, 59, 69, 80], labels=['30-39', '40-49', '50-59', '60-69', '70+'])
plt.figure (figsize=(4, 3))
df.groupby([age_group, 'target']).size().unstack().plot(
    kind='bar',
    stacked=False,
    color=['orange', 'blue'])
plt.title('Bar Plot: Age Group vs Heart Disease')
plt.xlabel('Age Group')
plt.ylabel('Count')
plt.xticks(rotation=45)
plt.show()


# In[11]:


# //Percent Bar Plot: Exercise vs Heart Disease
exercise_group = df['exang'].value_counts(normalize = True)
plt.figure (figsize=(4, 3))
exercise_group.plot(kind='bar',
                    stacked=True,
                    color=['green', 'brown'])
plt.title('Percent Bar Plot: Exercise vs Heart Disease')
plt.xlabel('Exercise Induced Angina')
plt.ylabel('Percentage')
plt.show()


# In[12]:


# //Component Bar Plot: Cp vs Sex (chest pain type)
df_grouped = df.groupby(['cp', 'sex']).size().unstack()
df_grouped.plot(kind='bar',
                stacked=True,
                color=['lightblue', 'pink'])
plt.title('Stacked Distribution of Chest Pain Types by Sex')
plt.xlabel('Chest Pain Type')
plt.ylabel('Count')
plt.xticks(ticks=[0, 1, 2, 3], labels=['Typical Angina', 'Atypical Angina', 'Non-Anginal Pain', 'Asymptomatic'])
plt.show()

