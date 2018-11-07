#COMP 533 Project Part 1
###Connor Fowlie : 260687955
###Mostafa Saadat : 260678640
###Howie Zhao : 260631984
###Youngsun Jin: 260616938

#The Concern
The concern we have chosen is persistence. This allows for accurate and effective saving of data within an application with little management by the end user.

#The Features
- Warning / Error output
- Configuration
	- Mutlitple data types
- Callbacks on certain operations
- Migrations
	- Between Data Types

#The Impacts
- Warning / Error output will allow the user to create specific errors arising during the persistence process along with a specific error message. Warnings/ Error output yields a high contribution value as it will give the user insight into reasons for why certain errors arise, leading to a simplified debugging process, with no drawbacks.

- Different data types (SQLite, XML databases): Allows for the data to be persisted in the form of different types of data. There are advantages and disadvantages for each data type. For smaller databases, XML databases are much faster and performs better than SQLite. However, with larger databases/ caches, the performance loss is lower with SQLite than with a XML database. Furthermore, the XPath syntax associated with XML may be more difficult to work with than SQL, which is used with SQLIte. Both yield good contribution values, however the data storage type decision should ultimately be determined by the amount of data being persisted.

- Callbacks on certain operations can allow for the user to implement behavior that takes place when a certain operation is performed (e.g. after or before persisting an entity). High contribution value as it increases reusability of certain methods.

- Migrations between different data types can allow for users to increase compatability with other software being used, or increase performance if the stored data size is better optimized with another data/ database type. High contribution value as it will increase the performance and infrastructure of the system using persistence if used in the correct situation.

#Other notes
We chose persistence as a concern because it is relevent to a lot of modern mobile technology. Most services would be useless without some sort of persistence.
