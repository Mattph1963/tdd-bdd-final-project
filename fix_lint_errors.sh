#!/bin/bash

# Fix long line at service/routes.py:77 (split at the 79th character)
sed -i '77s/\(.\{79\}\)/\1\\\n/' service/routes.py

# Fix long line at service/routes.py:104 (split at the 79th character)
sed -i '104s/\(.\{79\}\)/\1\\\n/' service/routes.py

# Remove unwanted newlines at line 39 in service/common/error_handlers.py
sed -i '39s/\\n//g' service/common/error_handlers.py

# Remove unwanted newlines at line 147 in service/models.py
sed -i '147s/\\n//g' service/models.py

echo "Fix completed. Please manually review the changes."
