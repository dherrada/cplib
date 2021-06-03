### Installation

.. code-block:: bash
    > git clone https://github.com/dherrada/cplib.git
    > cd cplib
    > chmod +x install.sh
    > ./install.sh

To install the CircuitPython Bundle:
.. code-block:: bash
    > bundle

To install the bundle to a specific location:
.. code-block:: bash
    > bundle -o directory/to/output/to/

To copy a library to a board:
.. code-block:: bash
    > cplib adafruit_bno005.mpy CIRCUITPY

Replacing `adafruit_bno055.mpy` with the library you want to copy, and `CIRCUITPY` with the name of the drive in `/media/`
