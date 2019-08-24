## Sūrya's Description Report

### Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| contracts/Migrations.sol | 77c7f03cd8da7de52e322270d97f0b1952fcaef6 |
| contracts/kyc/kycRegis.sol | 1fd669e7220965490f0248952e58e2b2cca4a2bd |
| contracts/kyc/kycRegis_ds.sol | 5a8da441e6b1c22eca5a228edbb6ef0b0ecc0616 |
| contracts/lib/SafeMath.sol | 117c57905c42ffa6bcf694defb68e34096829e4f |
| contracts/lib/erc20/ERC20.sol | 3499dbc8717d8ef46558ceae3ea3c20fe84a40fe |
| contracts/lib/owner.sol | ab5675d7f3794ee421af1ab4b25b3c177c5d30e2 |
| contracts/token/Token.sol | d1cf9fc6df02fc8ae46faec80769ae84479db900 |


### Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **Migrations** | Implementation |  |||
| └ | \<Constructor\> | Public ❗️ | 🛑  | |
| └ | setCompleted | Public ❗️ | 🛑  | restricted |
| └ | upgrade | Public ❗️ | 🛑  | restricted |
||||||
| **kycRegis** | Implementation | kycRegis_ds |||
| └ | \<Constructor\> | Public ❗️ | 🛑  | |
| └ | setRate | Public ❗️ | 🛑  | isOwner |
| └ | enableServiceProvider | Public ❗️ | 🛑  | isKYCProviderDisabled isOwner |
| └ | disableServiceProvider | Public ❗️ | 🛑  | isKYCProviderEnabled isOwner |
| └ | setKYCdetails | Public ❗️ | 🛑  | isKYCProvider |
| └ | disableKYC | Public ❗️ | 🛑  | isOwner |
| └ | fetcKYC | Public ❗️ |   | isKYCProvider isValipurchase |
| └ | fetcKYCState | Public ❗️ |   | isKYCProvider isValipurchase |
| └ | access | Public ❗️ | 🛑  | isNotValipurchase isValibalance isKYCProvider |
||||||
| **kycRegis_ds** | Implementation | owner |||
||||||
| **SafeMath** | Library |  |||
| └ | add | Internal 🔒 |   | |
| └ | sub | Internal 🔒 |   | |
| └ | mul | Internal 🔒 |   | |
| └ | div | Internal 🔒 |   | |
| └ | mod | Internal 🔒 |   | |
||||||
| **ERC20** | Implementation |  |||
| └ | totalSupply | Public ❗️ |   | |
| └ | balanceOf | Public ❗️ |   | |
| └ | allowance | Public ❗️ |   | |
| └ | approve | Public ❗️ | 🛑  | |
| └ | increaseAllowance | Public ❗️ | 🛑  | |
| └ | decreaseAllowance | Public ❗️ | 🛑  | |
| └ | _transfer | Internal 🔒 | 🛑  | |
| └ | _mint | Internal 🔒 | 🛑  | |
| └ | _burn | Internal 🔒 | 🛑  | |
| └ | _approve | Internal 🔒 | 🛑  | |
| └ | _burnFrom | Internal 🔒 | 🛑  | |
||||||
| **owner** | Implementation |  |||
| └ | changeOwner | Public ❗️ | 🛑  | isOwner |
||||||
| **Token** | Implementation | owner, ERC20 |||
| └ | \<Constructor\> | Public ❗️ | 🛑  | |
| └ | updateKYC | Public ❗️ | 🛑  | isKYCContractUnSet isOwner |
| └ | mint | Public ❗️ | 🛑  | isOwner |
| └ | burn | Public ❗️ | 🛑  | isOwner |
| └ | transfer | Public ❗️ | 🛑  | |
| └ | itransfer | Public ❗️ | 🛑  | isKYCContract |
| └ | transferFrom | Public ❗️ | 🛑  | |


### Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |
