import scipy
import random

def get_random_bb(n_samples):
    Rands = [0]       # Following Rubin et al. to get data probabilities from Dirichlet distrib.
    for j in range(n_samples-1) :
        Rands.append(random.random())
    Rands.append(1)
    Rands.sort()
    P=scipy.diff(Rands)   # List of random numbers that add to 1 and are used as data probabilities
    return P
