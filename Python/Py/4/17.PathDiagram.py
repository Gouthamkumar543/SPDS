#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import networkx as nx

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[9]:


G = nx.DiGraph()
G.add_node('Age')
G.add_node('Sex')
G.add_node('Cholesterol')
G.add_node('Blood Pressure')
G.add_node ('HeartRate')
G.add_node ('Target')
G.add_edges_from([('Age', 'Target'), 
                    ('Cholesterol', 'Target'), 
                    ('Sex', 'Target'), 
                    ('Blood Pressure', 'Target'), 
                    ('HeartRate', 'Target'), 
                    ('Age', 'Cholesterol'), 
                    ('Cholesterol', 'Blood Pressure'), 
                    ('HeartRate', 'Blood Pressure')]
                )
pos = nx.spring_layout(G)
plt.figure (figsize=(8, 6))
nx.draw(G, 
        pos, 
        with_labels = True, 
        node_size = 3000, 
        node_color = 'orange', 
        font_size = 12, 
        font_weight = 'bold',
        arrowsize = 20
       )
plt.title('Path Diagram for Heart Disease Prediction')
plt.show()

