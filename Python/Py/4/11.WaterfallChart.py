#!/usr/bin/env python
# coding: utf-8

# In[6]:


import pandas as pd
import matplotlib.pyplot as plt
import plotly.graph_objects as go

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[10]:


feature_contributions = df.drop(columns = 'target').mean()
initial_value = df['target'].mean()
contributions = feature_contributions - initial_value
fig = go.Figure(go.Waterfall(
    x = contributions.index,
    y = contributions.values,
    measure = ["relative"]*len(contributions),
    text = contributions.values,
    textposition = "outside"
))
fig.add_trace(go.Waterfall(
    x = ["Final Target"],
    y = [df['target'].mean() - initial_value],
    measure = ["total"],
    text = [f"Final Target: {df['target'].mean()}"],
    textposition="outside"
))
fig.update_layout(
    title = "Waterfall Chart of Feature Contributions to Heart Disease Output",
    xaxis_title = "Features",
    yaxis_title = "Contribution",
    showlegend = False
)
fig.show()


# In[ ]:




