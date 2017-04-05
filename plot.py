import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('population.dat')
plt.plot(data[:,0], data[:,1], '.', label='Ground state')
plt.plot(data[:,0], data[:,2], '.', label='Excited state')
plt.legend()
plt.xlabel('Time (a.u.)')
plt.ylabel('Population')
plt.grid()
plt.show()
