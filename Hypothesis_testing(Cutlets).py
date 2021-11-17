# -*- coding: utf-8 -*-
"""
Created on Sat Jun 27 23:25:26 2020

@author: Wellson
"""

import pandas as pd
import scipy
from scipy import stats
import statsmodels.api as sm

Cutlet=pd.read_csv("C:/Users/Wellson/Documents/R/360/Hypothesis testing/Cutlets.csv")
Cutlet
Cut=Cutlet.iloc[0:35,0:2]
Cut
print(stats.shapiro(Cut['Unit A']))
print(stats.shapiro(Cut['Unit B']))

scipy.stats.levene(Cut['Unit A'],Cut['Unit B'])

scipy.stats.ttest_ind(Cut['Unit A'],Cut['Unit B'])

