#!/usr/bin/env python
# coding: utf-8

# In[11]:


import pandas as pd
import matplotlib.pyplot as plt
import networkx as nx
import plotly.graph_objects as go

df = pd.read_csv(r"C:\Users\gouth\Desktop\Goutham\SPDS\Python\DataSet\heart.csv")
df


# In[12]:


nodes = ['Age', 'Sex', 'CP', 'trtbps', 'Chol', 'FBS', 'RestECG', 'Thalachh', 'Exng', 'OldPeak', 'Slp', 'CAA', 'Thall',
'Target']

edges = [('Age', 'trtbps'), ('Age', 'Chol'), ('Age', 'Thalach'), ('Sex', 'trtbps'), ('Sex', 'Chol'), ('Sex', 'Thalach'), ('СР!',
'trtbps'), ('CP', 'Chol'), ('CP', 'Thalach'), ('trtbps', 'Target'), ('Chol', 'Target'), ('Thalach', 'Target'), ('FBS',
'Target'),('Exng', 'Target'), ('OldPeak', 'Target'), ('Slp', 'Target'), ('CAA', 'Target'), ('Thall', 'Target')]

G = nx.DiGraph()
G.add_nodes_from(nodes)
G.add_edges_from(edges)
pos = nx.spring_layout(G, seed=42)
edge_x = []
edge_y = []
for edge in G.edges():
    x0, y0 = pos[edge[0]]
    x1, yl = pos[edge[1]]
    edge_x.append(x0)
    edge_y.append(y0)
    edge_x.append(x1)

node_x = [pos[node][0] for node in nodes]
node_y = [pos[node][1] for node in nodes]
fig = go.Figure()
fig.add_trace(go.Scatter(x=edge_x, 
                         y=edge_y, 
                         mode='lines', 
                         line=dict(width=1, color='black'), 
                         hoverinfo='none')
             )
fig.add_trace(go.Scatter(x=node_x, 
                         y=node_y, 
                         mode='markers+text', 
                         text=nodes, 
                         textposition='top center',
                         marker=dict(size=20, 
                                     color='skyblue', 
                                     line=dict(width=2, color='black')
                                    ),
                         hoverinfo='text')
             )
fig.update_layout( title="Network Diagramfor Heart Disease Dataset", 
                  showlegend=False, 
                  plot_bgcolor='white',
                  xaxis=dict(showgrid=False, zeroline=False), 
                  yaxis=dict(showgrid=False, zeroline=False), 
                  title_x=0.5, 
                  title_y=0.95
                 )
fig.show()

