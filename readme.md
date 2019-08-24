# Truffle Demo 

## Setup 

- Install Node JS and NPM 
- Install truffle version 4.1.15 using (npm install -g truffle@4.1.15)
- Install dependency using (npm install )
- Install surya using (npm install -g surya)

## Folder structure 
 
- Contract are in /contract folder 
- Deployed json files are in /build/contracts folder 
- Migration sequence is in /migration folder 
- Setup Script are in /scripts folder 
- Test cases are written in /test folder 
- Wallet are in /wallets folder 
- config is in truffle-config.js

## Deploy using 
```
truffle migrate --reset --network <network name>
```
## Test using 
```
truffle test 
```
or 
```
truffle test --network <network name> 
```

## Generatte documentation 

```
./docGen.sh
```
must be done post installation of surya. 

