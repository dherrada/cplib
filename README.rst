Library Copier and Bundle Donwloader
============

Installation instructions:

.. code-block:: shell

    git clone https://github.com/dherrada/cplib.git
    cd cplib
    chmod +x install.sh
    ./install.sh

To install/update the CircuitPython Bundle:

.. code-block:: bash
    
    bundle

To install the bundle to a specific location:

.. code-block:: bash
    
    bundle -o directory/to/output/to/

To copy a library to a board:

.. code-block:: bash
    
    cplib adafruit_bno005.mpy CIRCUITPY

Replacing :code:`adafruit_bno055.mpy` with the library you want to copy, and :code:`CIRCUITPY` with the name of the drive in :code:`/media/`
