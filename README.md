# Gazelle

Re-implementation of [Gazelle](https://www.usenix.org/system/files/conference/usenixsecurity18/sec18-juvekar.pdf), a low latency framework for  secure neural network inference, based on their [repo](https://github.com/chiraag/gazelle_mpc) by [Delphi](https://github.com/mc2-project/delphi/tree/master/rust/protocols-sys/c%2B%2B).

#### Building 

1. Clone the Gazelle git repository by running:
    ```
    git clone https://github.com/zghodsi/Gazelle.git
    ```

2. Enter the Framework directory: `cd Gazelle/`

3. With docker installed, run:
    ```
    docker build -t gazelle .
    docker run -it gazelle
    ./interface
    ```
