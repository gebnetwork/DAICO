# <h1 align="center">GEB Network</h1>

## <h2 align="center">Decentralized Mortgage Loan and OTC Trade Protocol</h2>

## <h3 align="center">Abstract
<p>This text describes a decentralized mortgage loan and OTC trade protocol based on Ethereum Blockchain, which will become the open standard and foundation for a global peer-to-peer mortgage loan and OTC trade network, and provide reliable interoperability for DApp built based on this protocol. Any DApp can execute mortgage loan and OTC trade by embedding a series of free and open smart contract templates of Ethereum. The DApp based on this protocol can obtain transaction orders from its own liquidity pool or shared liquidity pool to make a profit by collecting service charges on matchmaking transaction. A decentralized network of jurors shall be used for the arbitration of possible transaction disputes, and its fairness shall be ensured by token economic incentive. This protocol shall guarantee no partiality towards either party of the protocol, and no fees to be charged by the protocol itself. A Decentralized Autonomous Organization (DAO) shall be responsible for upgrading as well as its safety and compatibility of the protocol.</p>

#### Table of contents
- [1. Introduction of GEB Network](#1-introduction-of-geb-network)
    - [1.1. Background Introduction](#11-background-introduction)
    - [1.2. What’s GEB Network?](#12-whats-geb-network)
    - [1.3. Main Characteristics of GEB Network](#13-main-characteristics-of-geb-network)
    - [1.4. Business Mode of GEB Network](#14-business-mode-of-geb-network)
- [2. Problems in Current Solution](#2-problems-in-current-solution)
    - [2.1. Offline Transaction](#21-offline-transaction)
    - [2.2. Centralized OTC Exchange](#22-centralized-otc-exchange)
    - [2.3. Centralized Mortgage Loan Institutions](#23-centralized-mortgage-loan-institutions)
    - [2.4. Advantages of GEB Protocol](#24-advantages-of-geb-protocol)
        - [2.4.1. For Protocol Participants](#241-for-protocol-participants)
        - [2.4.2. Competitors Comparison](#242-competitors-comparison)
- [3. Detailed Description of GEB Protocol](#3-detailed-description-of-geb-protocol)
    - [3.1. Protocol Procedures](#31-protocol-procedures)
        - [3.1.1. OTC Trade Protocol](#311-otc-trade-protocol)
        - [3.1.2. Mortgage Loan Protocol](#312-mortgage-loan-protocol)
    - [3.2. Format of Transaction Order](#32-format-of-transaction-order)
        - [3.2.1. OTC Transaction Order](#321-otc-transaction-order)
        - [3.2.2. Mortgage Loan Transaction Order](#322-mortgage-loan-transaction-order)
    - [3.3. Price, Interest Rate, Liquidation and Protection Mechanism](#33-price-interest-rate-liquidation-and-protection-mechanism)
    - [3.4. Black Swan Incident](#34-black-swan-incident)
    - [3.5. Smart Contract Technology](#35-smart-contract-technology)
        - [3.5.1. Signature Verification](#351-signature-verification)
        - [3.5.2. Time Locking](#352-time-locking)
        - [3.5.3. Fill and Partially Fill in the Order](#353-fill-and-partially-fill-in-the-order)
        - [3.5.4. Expiration Time](#354-expiration-time)
        - [3.5.5. Cancellation of Order](#355-cancellation-of-order)
        - [3.5.6. WETH Contract](#356-weth-contract)
    - [3.6. Compatibility of non-Ethereum Cryptocurrency](#36-compatibility-of-non-ethereum-cryptocurrency)
        - [3.6.1. 2-way Peg Technology (Current Solution)](#361-2-way-peg-technology-current-solution)
        - [3.6.2. Lighting Atomic Swap Technology (Evolution Solution)](#362-lighting-atomic-swap-technology-evolution-solution)
- [4. GEB Protocol Token](#4-geb-protocol-token)
    - [4.1. Economic Model of GEB Token](#41-economic-model-of-geb-token)
    - [4.2. Use Cases of GEB Token](#42-use-cases-of-geb-token)
    - [4.3. Additional Issue of GEB Tokens](#43-additional-issue-of-geb-tokens)
    - [4.4. Aragon DAO Governance](#44-aragon-dao-governance)
    - [4.5. Initial Coin Offering](#45-initial-coin-offering)
        - [4.5.1. Coin Offering Plan - IEO (Option 1)](#451-coin-offering-plan---ieo-option-1)
        - [4.5.2. Coin Offering Plan - DAICO (Option 2)](#452-coin-offering-plan---daico-option-2)
        - [4.5.3. Token Distribution Plan](#453-token-distribution-plan)
        - [4.5.4. Withdrawals](#454-withdrawals)
    - [4.6. GEB Investment Fund](#46-geb-investment-fund)
- [5. GEB Protocol Ecology](#5-geb-protocol-ecology)
    - [5.1. The Overall Architecture of GEB Network](#51-the-overall-architecture-of-geb-network)
    - [5.2. Network of Jurors](#52-network-of-jurors)
        - [5.2.1. Juror Application](#521-juror-application)
        - [5.2.2. Arbitration](#522-arbitration)
        - [5.2.3. Economic Incentives and Deposits](#523-economic-incentives-and-deposits)
        - [5.2.4. Exit Mechanism](#524-exit-mechanism)
    - [5.3. Dealer Network](#53-dealer-network)
    - [5.4. Decentralized Identity Authentication](#54-decentralized-identity-authentication)
        - [5.4.1. DID and DID Documents](#541-did-and-did-documents)
        - [5.4.2. GEB Connect](#542-geb-connect)
    - [5.5. Shared Liquidity Pool](#55-shared-liquidity-pool)
        - [5.5.1. Shared Orders](#551-shared-orders)
        - [5.5.2. Micro-services and Clusters](#552-micro-services-and-clusters)
    - [5.6. Credible Oracle Set](#56-credible-oracle-set)
    - [5.7. GEB Open Source Software](#57-geb-open-source-software)
- [6. Protocol Safety Analysis](#6-protocol-safety-analysis)
    - [6.1. Fiat Currency Transfer Risk](#62-fiat-currency-transfer-risk)
    - [6.2. Oracle Attack](#62-oracle-attack)
    - [6.3. Middleman Attack](#63-middleman-attack)
    - [6.4. Sybil or Denial of Service Attack](#64-sybil-or-denial-of-service-attack)
    - [6.5. Penny-Spend Attack](#65-penny-spend-attack)
    - [6.6. Confidence Attack](#66-confidence-attack)
    - [6.7. Code Audit for Smart Contract](#67-code-audit-for-smart-contract)
- [7. Market Analysis](#7-market-analysis)
    - [7.1. The Present Market Situation of Cryptocurrency](#71-the-present-market-situation-of-cryptocurrency)
    - [7.2. Attitudes from Countries about Blockchain](#72-attitudes-from-countries-about-blockchain)
    - [7.3. SWOT Analysis](#73-swot-analysis)
- [8. Roadmap](#8-roadmap)
- [9. Team Introduction](#9-team-introduction)
- [10. Advisors](#10-advisors)
- [11. References](#11-references)

## 1. Introduction of GEB Network

### 1.1. Background Introduction
<p>The digital economy is growing rapidly. In 2012, the Boston Consulting Group estimated that the potential volume of digital economy in G20 countries reached 4.2 trillion US dollars. In addition, another evaluation, based on the joint study made by the Department of Economics of Oxford University and Accenture in 2015, pointed out that the digital economy will contributed 1360 billion US dollars to the global gross domestic product by 2020. As the demands for online payment grows with the rapid development of digital economy, cryptocurrency is becoming an increasingly popular payment solution which can meet the demands of digital economy.</p>

<p>Blockchain represents the network of value transmission constructed by a series of characteristics such as decentralization, immutability, trustlessness, etc. The P2P reliable trust can be established in the network with blockchain technology so that the value transmission process shall break away from the dependency on intermediary agent for realizing the functions between information disclosure and privacy protection, and between codetermination and individual interest protection. Such mechanism shall promote the efficiency of value interaction and decrease the transaction cost.<p>

<p>Today, there have been thousands of cryptocurrencies throughout the world, and everyone can hold them safely. However, in many regions in the world, the transaction between cryptocurrency and fiat currency is still difficult, and the cost is very high, which hinders the popularization of cryptocurrencies and distorts the transaction price. At present, the transactions between cryptocurrency and fiat currency are mainly conducted through centralized OTC trading platform. Most countries haven’t established the legislation of cryptocurrency, which means that such platform can be run without any license and regulation. Therefore, users on such platform always have to bear the risk in both fund safety and privacy disclosure; meanwhile, the trading platform may manipulate the transaction price to earn excess profits.</p>

<p>In the centralized cryptocurrency exchange, such as Poloniex, Bitfinex etc., USDT is used as the digital substitute of USD for transaction. However, as a centralized digital currency to anchor US dollars issued by Tether, there have been a number of severe problems existing in USDT, including:</p>

1. Tether may goes bankrupt.<br />
2. The bank which Tether opens its accounts may goes bankrupt.<br />
3. The bank may freezes Tether’s funds.<br />
4. Tether may excessively issues USDT.<br />
5. High service charges, slow settlement, and difficult to withdraw funds.<br />
6. The security problem that the accounts in Tether was stolen once happened.<br />

<p>Obviously, the demands for the digital substitutes of fiat currency such as USDT will decrease significantly if the users are able to safely and conveniently conduct transactions between cryptocurrency and fiat currency.</p>

<p>Another obvious problem in the field of cryptocurrency is that there is no decentralized service to enable the cryptocurrency holders to safely borrow fiat currency by pledging cryptocurrency, but it has become a noteworthy demand, especially for the users who hold a large amount of cryptocurrency, and believe that the cryptocurrency price will rise. Meanwhile, global investors of fiat currency are also looking for a low-risk and high-yield investment channel, and the mortgage loan market has been in their good graces. The centralized mortgage loan service providers always earning excessive profits via their monopolistic advantage; what’s more, they would also be more easily affected by factors such as market price fluctuation, poor operation and management, inner corruption, regulating policy change etc. In addition, the users’ concern about privacy disclosure risk is also another reason why they transfer to the decentralized service.</p>

<p>In GEB Network, we believe that the transaction should directly conducted by involved parties, without the need of intermediary agent, and people should freely manage their properties, without the third party’s interference. GEB protocol realizes the ideas that individual can conduct the transactions between cryptocurrency and fiat currency and mortgage loans without the need of trusting the third party. GEB Network white paper describes the technical details of this protocol, as well as our subsequent development plan.</p>

### 1.2. What’s GEB Network?
<p>The objective of GEB Network is to establish a decentralized mortgage loan and OTC trade network based on GEB protocol. Through GEB protocol, users can conduct transactions between cryptocurrency and fiat currency, or borrow fiat currency by pledging cryptocurrency, and the smart contract is adopted to prevent fraudulent conducts. In GEB Network, users can benefit from cryptocurrency market, and the risks, caused by cryptocurrency price fluctuation, dishonest traders etc., can also be mitigated.</p>

<p>The key element of GEB Network project is the nodes of GEB trading market. GEB protocol is a mixed technology called as “Off-Chain Ordering and On-Chain Settlement” to ensure the balance between transaction efficiency and safety. In this way, the trade order with encrypted signature is sent through off-chain chancel, and the counterparty who are interested in can add one or more trade orders into the smart contract, to make sure the transaction shall be completed by using the smart contract. GEB protocol greatly lowers the market maker’s transaction friction cost, because the transaction intention can be sent through off-chain, while the on-chain transaction can only occur at the time of value transfer. We expand GEB Network by opening the application of GEB transaction market nodes, and designing the GEB protocol as irrelevant to the application program.</p>

<p>GEB Network provides traders and users with obvious advantages. GEB transaction market shall provide users with accurate market data, as well as fair, transparent, safety and low-cost OTC transaction and mortgage loan service. Each node of GEB transaction market represents an independent commercial institution that it will earn incomes by providing all kinds of financial service. Our mission is to promote the healthy development of cryptocurrency community.</p>

### 1.3. Main Characteristics of GEB Network
- Support the transaction between cryptocurrency and fiat currency and the mortgage loan
- Support ETH, ERC20, BTC, and BCH, and more cryptocurrencies in the future
- Construct the distributed commercial network by using token economic model
- Conduct transactions through decentralized identity authentication
- No any third-party intermediary agent is needed to be trust by both parties in the transaction, since the security of transaction is guaranteed by the protocol
- The trade protocol is realized by a group of smart contracts (DEX Contracts) deployed on the Ethereum
- Solve the risk that the counterparty viciously withdraws from the transaction by smart contract with time lock (Timelock Contract)
- Only support the irreversible fiat currency transfer so as to minimize the risk of refund (see https://en.bitcoin.it/wiki/Payment_methods)
- The decentralized juror network is used as main transaction protection mechanism
- Restrain the transaction amount (50ETH) to lower the overall risk exposure
- The smart contract includes all transaction details, and signed by both parties of the transaction. For any dispute, it shall be sued as a proof
- Regularly call the price predictor contract through ethereum-alarm-clock, and obtain the real price of token mortgage from the trustworthy predictor set (trusted-oracles-set) 
- Solve the risk of collateral price falling through compulsory liquidation mechanism
- Solve the risk that the collateral price quickly falls below the debt amount (no time for compulsory liquidation) through protocol additional token issuing mechanism
- Implement the decentralized governance with Aragon software
- Safely construct and manage smart contracts with Zeppelin_OS
- Issue source code with open source permit (AGPL)

### 1.4. Business Mode of GEB Network
<p>GEB Network is an open source project to fill up the gap of cryptocurrency ecosystem rather than a company. GEB Foundation is a non-profit organization established by GEB team in Singapore in June, 2018. The purpose of establishing GEB Foundation is to guarantee the sustainability of GEB project, the effectiveness of decentralized governance, the safety and transparency of fund raising, and the development and business innovation of assisting start-up enterprises based on GEB protocol.</p>

<p>To promote the healthy development of GEB Network, a comprehensive incentive mechanism has been established by GEB Foundation, mainly including:</p>

- The trading market node should be reviewed and approved, and a certain number of GEB Tokens shall be mortgaged to GEB Foundation as security deposit, and the transaction market can earn profits by collecting transaction service charges.
- The juror node should be reviewed and approved, and a certain number of GEB Tokens shall be mortgaged to GEB Foundation as security deposit. After each arbitration, the juror giving a reasonable ruling shall obtain tokens as awards, and the one giving an unreasonable ruling shall suffer from token loss (see 5.2.3 for details).
- Users who use GEB Tokens to pay OTC transaction service charges shall enjoy 50% discount, and the discount amount shall be given by issuing additional GEB Tokens or topping up GEB Tokens.
- Users who use GEB Tokens as loan collateral shall enjoy 50% discount of service charges, and obtain higher mortgage rate or lower liquidation limit, and the discount amount shall be given by issuing additional GEB Tokens or topping up GEB Tokens.
- The holders of GEB Tokens can participate in the governance of GEB protocol, and vote for the protocol improvement proposal put forward by the protocol developers.

<br /><br />
## 2. Problems in Current Solution

### 2.1. Offline Transaction
<p>Both parties of the transaction agree on volume, price, time and location of transaction through software, such as Facebook, Telegram, WeChat, QQ etc., without the involvement of any third party. This method is applicable to the local transaction with relatively high fund security risk, and even personal safety risk. Due to the anonymity of cryptocurrency, once a party violates the protocol, the other party’s rights and interests are difficultly guaranteed; what’s more, it is difficult to get and present evidence after such situation. Except in few countries where cryptocurrency transaction is included into the regulatory framework by issuing license, most countries and regions have no legal protection for cryptocurrency transaction, which also increase the possibility that the trader may suffer from fraud risk.</p>

### 2.2. Centralized OTC Exchange
<p>The OTC trading platforms, such as Localbitcoins, otcbtc, huobi etc., provide the cryptocurrency/fiat currency transaction service based on C2C mode, which is a secured trading mode similar to Ebay and Taobao. The seller of cryptocurrency transfer a certain number of cryptocurrency to the address provided by the trading platform, while the buyer fills in and submits an order for purchasing, and the fiat currency should be transferred to the account designated by the seller. After the seller confirms that the fiat currency has been account, the trading platform shall transfer the cryptocurrency to the buyer’s address. Any dispute happening during the transaction shall be arbitrated by the trading platform.</p>

<p>Such means of transaction relies on the trust in the centralized trading platform, but the vulnerability of such mode has been proved repeatedly (the well-known exchanges such as Mt.Gox, CoinCheck, Bithumb etc. were once hacked). To be specific, the risked faced by the users of centralized trading platform include:</p>

1. The trading platform goes bankrupt.<br />
2. The trading platform embezzles users’ funds.<br />
3. The trading platform is hacked.<br />
4. Compliance/regulatory risk.<br />
5. The trading platform manipulates the price.<br />
6. The trading platform monopolizes the market and charge high service fees.<br />

### 2.3. Centralized Mortgage Loan Institutions
<p>The centralized mortgage loan institutions usually only provide region-oriented and user-oriented services, which is cumbersome and costly to process mortgages loan in traditional institutions, such as Banks; what’s more, many of unfair and opaque terms are filled with it. Now, cryptocurrency cannot be adopted as a kind of collateral by most of loan institutions. We hope that the cryptocurrency holders can get loans from any place in the world, and no longer rely on local banks or mortgage loan institutions.</p>

<p>Today, with the government policy control on currency, inequality affects the global mortgage loan market. So, there is interest rate difference between countries and regions due to different risk levels and inflation rates of fiat currency. For instance, the real estate mortgage loan in Brazil may have 32% annual interest rate (adjusted for inflation) while similar loan in Europe may have only 0.5%-5% annual interest rate. On the other hand, by setting up access threshold and monopolizing resources such as funds, credit investigation data, market channel etc., the banks and mortgage loan institutions always collect high interest rate margin between the depositor and the borrower (the annual interest rate of credit card in China is about 20%, while the annual interest rate of fixed term deposit in the same period is only 1.75%). When the combination between blockchain technology and mortgage loan market is launched, a real revolution may be occurred. Relying on GEB Network, the mortgage loan market shall be open to all lenders and borrowers without any restrictions--- national boundary, jurisdiction, and bank system. The fiat currency holders can safely provide loans to anyone, and obtain satisfactory interest rate, while the cryptocurrency holders can obtain loans in any place in the world by just bearing the interest rate lower than traditional financial institutions such as bank etc. The cryptocurrency is not controlled by any country or region, so when more and more people start to use GEB Network, more and more liquidity shall be added into the market. Due to fierce competition, the mortgage loan market has the same liquidity in China, Europe, or Africa; so, the interest rate margin between countries and regions shall disappear eventually.</p>

### 2.4. Advantages of GEB Protocol

#### 2.4.1. For Protocol Participants

| Role | Advantage |
| :--------------------- | :------------------------------ |
| OTC trader | Conduct OTC transaction with any counterparty at lower cost quickly in a convenitent way anywhere and at anytime |
| Borrower | Obtain fiat currency loan with low interest rate by mortgaging digital currency |
| Lender | Obtain safe fiat currency investment channel at a yield rate higher than bank interest rate |
| Trader | Maintain an order book, and earn profits by facilitating transactions and collecting service charges |
| Juror | OArbitrating the disputes that cannot be solved through smart contracts by obtaining token rewards |

#### 2.4.2. Competitors Comparison

|           |   ***GEB Network***   |   ETHlend    |      SALT      |     Everex     |     Libra      |   Coinloan   |
| :-------: | :-------------------: | :----------: | :------------: | :------------: | :------------: | :----------: |
|   Project type    |  ***Protocol type (P2P transaction protocol)***   | Platform type (P2P transaction platform) |  Platform type (P2P transaction platform)  | Application type (decentralized mortgage loan institution) | Application type (decentralized mortgage loan institution) | Platform type (P2P transaction platform) |
|  Degree of decentralization   |       ***Entire***        |      High       |       Medium       |       Low        |       Low        |      Medium      |
|    Safety    |    ***High (guaranteed by smart contracts)***    |  High (guaranteed by smart contracts)   |   Medium (trust platform is needed)   |   Medium (trust institution is needed)   |   Medium (trust institution is needed)   |  Medium (trust platform is needed)  |
|  Ecological scalability   |    ***Strong (wide profit distribution)***    |      Medium      |       Medium       |       Low        |       Low        |      Medium      |
|  OTC transaction function  |        ***Yes***        |      No       |       No        |       No        |       No        |      No       |
| Off-chain dispute solution |    ***Decentralized network of jurors***     |      No       |      Streamline arbitration      |       No        |       No        |      No       |
|  Cross-chain technical solution   |   ***two-way-peg, lightening atomic swap***   |    No specific explanation     |     No specific explanation      |     No specific explanation      |     No specific explanation      |    No specific explanation     |
|  User privacy protection   |    ***Decentralized identity authentication***     |    No specific explanation     | Authorized to obtain user data, and distributed storage |    Authorized to obtain user data    |     No specific explanation      |    No specific explanation     |
| Token appreciation logic | ***Mortgage demand, guarantee deposit demand, and token buy-tack*** |     Mortgage demand     |      Mortgage demand      |      Mortgage demand      |      Mortgage demand      |     Mortgage demand     |

<br /><br />
## 3. Detailed Description of GEB Protocol

### 3.1. Protocol Procedures

#### 3.1.1. OTC Trade Protocol
1. Both Maker and Taker should carry out KYC through Relayer.
2. Maker approves DEX contract to use Token A in its account.
3. Maker establishes an order to get fiat currency B by selling Token A through DApp provided by Relayer. Set up the transaction quantity X, transaction price, account for receiving fiat currency, and order expiration time, and sign with its own private key.
4. Maker sends the order signed to Relayer.
5. Relayer receives and verifies the order. If the verification is failed, the order shall be refused; and if successful, Relayer shall write it in its own order book.
6. Taker gets the new version order book in which Maker’s order is included through DApp provided by Relayer.
7. Taker fills in the order of purchasing Token A, set up the buying volume Y(Y≦X), and submit to DEX contract on Ethereum.
8. The quantity Y token in the Maker’s order is locked by DEX contract until Taker makes the payment.
9. Taker transfers fiat currency B to the account designated by Maker for receiving fiat currency within the specified time.
10. After receiving the fiat currency, Maker submits the transaction confirmation to DEX contract.
11. DEX contract verifies Maker’s signature, whether the order expires, and whether the transaction is concluded. After successful verification, it shall transfer the quantity Y Token A to Taker’s account.

#### 3.1.2. Mortgage Loan Protocol
**Borrowing money:**<br />
1. Both Maker and Taker should carry out KYC through Relayer.
2. Maker approves DEX contract to use Token A in its account as the collateral.
3. Maker establishes an order to borrow fiat currency B by mortgaging Token A through DApp provided by Relayer. Set up borrowing amount X, borrowing mode (now only support the mode of repaying capital and interest on due date), borrowing time, annual interest rate, account for receiving fiat currency, and order expiration time, and sign with its own private key.
4. Maker sends the order signed to Relayer.
5. Relayer receives and verifies the order. If the verification is failed, the order shall be refused; and if successful, Relayer shall write it in its own order book.
6. Taker gets the new version order book that Maker’s order is included through DApp provided by Relayer.
7. Taker fills in the order of lending fiat currency B, set up the lending amount Y(Y≦X), and submit to DEX contract on Ethereum.
8. DEX contract asks Oracle the rate of exchange from Token A to fiat currency B, and locks the amount of Token A whose value equals to 1.5 times of lending amount Y. If the quantity of Token A in Maker’s account is insufficient, the borrowing fails, and the order shall be cancelled.
9. Taker transfers the quantity Y fiat currency to the account designated by Maker for receiving fiat currency within the specified time.
10. After receiving the fiat currency, Maker submits the transaction confirmation to DEX contract.
11. DEX contract verifies Maker’s signature, whether the order expires, and whether the transaction is concluded. After successful verification, the loan contract comes into effect.

**Repayment:**<br />
1. After the mortgage loan expires, DEX contract notifies Maker for repayment.
2. Maker transfers total principal and interest due to Taker’s fiat currency account within specified time.
3. After receiving the fiat currency, Taker submits a repayment receiving confirmation to DEX contract.
4. DEX contract verifies Taker’s signature, and whether the order exists. The locked mortgage token would be transfer to Maker’s address after successful verification.

### 3.2. Format of Transaction Order
<p>Each transaction order is a data package containing transaction parameters and relevant signatures. The order parameters are arranged and connected in key ascending order, and hashed as 32 bytes through Keccak SHA3 function. The Pub releasing the order use its private key to sign the transaction parameter hashes to generate ECDSA signature.</p>

<p>GEB exchange is only responsible for storing and transmitting an order book to facilitate the flow of transaction information, and collects a few service charges (unified in the whole network, 1% in default, and 0.5% for each party of the transaction and the rate can be modified by GEB DAO’s voting). Differ from centralized exchanges, GEB exchange neither manages the users’ cryptocurrency, nor represents both parties to implement the transaction, which means that both parties don’t need to trust the operators in GEB exchange.</p>

<p>The exchange can choose whether to put the trade order into the shared liquidity pool. If the transaction order is put into the shared liquidity pool, but concluded in other exchange, 70% service charges will be distributed to the exchange establishing the order, and 30% distributed to the exchange concluding the order.</p>

#### 3.2.1. OTC Transaction Order

<div class="tg-wrap"><table>
  <tr>
    <th>Name</th>
    <th>Data Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>version</td>
    <td>address</td>
    <td>Address of the Exchange smart contract. This address will change each time the protocol is updated.</td>
  </tr>
  <tr>
    <td>maker</td>
    <td>address</td>
    <td>Address originating the order.</td>
  </tr>
  <tr>
    <td>tokenA</td>
    <td>address</td>
    <td>Address of an ERC20 Token contract.</td>
  </tr>
  <tr>
    <td>valueA</td>
    <td>uint256</td>
    <td>Total units of tokenA offered by maker.</td>
  </tr>
  <tr>
    <td>fiatB</td>
    <td>bytes3</td>
    <td>Type of fiat (eg. usd, cny).</td>
  </tr>
  <tr>
    <td>price</td>
    <td>uint64</td>
    <td>Price of tokenA in fiatB, in cents as unit.</td>
  </tr>
  <tr>
    <td>realName</td>
    <td>string</td>
    <td>Real name of maker.</td>
  </tr>
  <tr>
    <td>payChannel</td>
    <td>bytes</td>
    <td>Fiat pay channel (eg. paypal, alipay).</td>
  </tr>
  <tr>
    <td>payDetail</td>
    <td>string</td>
    <td>Details of payment.</td>
  </tr>
  <tr>
    <td>account</td>
    <td>bytes</td>
    <td>Fiat account of maker.</td>
  </tr>
  <tr>
    <td>expiration</td>
    <td>uint256</td>
    <td>Time at which the order expires (seconds since unix epoch).</td>
  </tr>
  <tr>
    <td>feeRecipientA</td>
    <td>address</td>
    <td>Address of RelayerA. Receives transaction fees.</td>
  </tr>
  <tr>
    <td>feeRecipientB</td>
    <td>address</td>
    <td>Address of RelayerB. Receives transaction fees.</td>
  </tr>
  <tr>
    <td>v</td>
    <td>uint8</td>
    <td rowspan="3">ECDSA signature of the above arguments.</td>
  </tr>
  <tr>
    <td>r</td>
    <td>bytes32</td>
  </tr>
  <tr>
    <td>s</td>
    <td>bytes32</td>
  </tr>
</table></div>

<p>feeRecipientA represents the charging address of default exchange, while feeRecipientB represents the charging address of the exchange taking the order out of the shared liquidity pool.</p>

#### 3.2.2. Mortgage Loan Transaction Order

<div class="tg-wrap"><table>
  <tr>
    <th>Name</th>
    <th>Data Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>version</td>
    <td>address</td>
    <td>Address of the Exchange smart contract. This address will change each time the protocol is updated.</td>
  </tr>
  <tr>
    <td>maker</td>
    <td>address</td>
    <td>Address originating the order.</td>
  </tr>
  <tr>
    <td>tokenA</td>
    <td>address</td>
    <td>Collateral, address of an ERC20 Token contract.</td>
  </tr>
  <tr>
    <td>fiatB</td>
    <td>bytes3</td>
    <td>Type of fiat (eg. usd, cny).</td>
  </tr>
  <tr>
    <td>valueB</td>
    <td>uint64</td>
    <td>Total units of fiatB to borrow, in cents as unit.</td>
  </tr>
  <tr>
    <td>period</td>
    <td>uint8</td>
    <td>Loan period, in months as unit, between 1 and 24.</td>
  </tr>
  <tr>
    <td>interest</td>
    <td>uint16</td>
    <td>Annualized interest rate, between 1(0.1%) and 1000(100%).</td>
  </tr>
  <tr>
    <td>realName</td>
    <td>string</td>
    <td>Real name of maker.</td>
  </tr>
  <tr>
    <td>payChannel</td>
    <td>bytes</td>
    <td>Fiat pay channel (eg. paypal, alipay).</td>
  </tr>
  <tr>
    <td>payDetail</td>
    <td>string</td>
    <td>Details of payment.</td>
  </tr>
  <tr>
    <td>account</td>
    <td>bytes</td>
    <td>Fiat account of maker.</td>
  </tr>
  <tr>
    <td>expiration</td>
    <td>uint256</td>
    <td>Time at which the order expires (seconds since unix epoch).</td>
  </tr>
  <tr>
    <td>feeRecipientA</td>
    <td>address</td>
    <td>Address of a RelayerA. Receives transaction fees.</td>
  </tr>
  <tr>
    <td>feeRecipientB</td>
    <td>address</td>
    <td>Address of a RelayerB. Receives transaction fees.</td>
  </tr>
  <tr>
    <td>v</td>
    <td>uint8</td>
    <td rowspan="3">ECDSA signature of the above arguments.</td>
  </tr>
  <tr>
    <td>r</td>
    <td>bytes32</td>
  </tr>
  <tr>
    <td>s</td>
    <td>bytes32</td>
  </tr>
</table></div>

### 3.3. Price, Interest Rate, Liquidation and Protection Mechanism
<p>GEB exchange cannot determine the OTC transaction price, but can only recommend a fair current market price to both parties of the transaction, and the specific transaction price shall be determined and agreed by both parties. To promote liquidity, the list of OTC transaction orders in GEB exchange shall be arranged by price from high to low. GEB exchange cannot determine the interest rate of mortgage loan as well, which shall be set by the borrowing party. If the lending party is satisfied with interest rate of the borrowing party, both parties can conclude the transaction through a smart contract. To control the risk of mortgage loan, the types of token which can be used for mortgage, the mortgage rate, and the compulsory liquidation limit shall be uniformly set up by GEB protocol development team. These global settings shall be stored in an Ethereum smart contract deployed by GEB Foundation, and the modification of any parameter should be voted by DAO. To respond to emergency, GEB Foundation can select several members to establish the GEB DAO committee, and the modification can be executed after most members confirm.</p>

<p>During the borrowing period, ethereum-alarm-clock shall be used to regularly call price predicator contract, to obtain real price of token mortgage from trustworthy predictor set (trusted-oracles-set), and notify all DEX Contracts. After receiving the price notice, the DEX Contract shall calculate whether the value of collaterals in all mortgage loan orders contained in this contract is lower than the liquidation limit. If it is found that the value of collaterals is lower than the liquidation limited, notify the borrowing party immediately, ask it to supplement the collaterals to a safe level within specified time. After the specified time, DEX Contract shall re-calculate the value of collaterals, and if it is still lower than the liquidate limit, automatically implement the compulsory liquidation immediately. The liquidation method is to calculate the real-time total principal and interest due, transfer the tokens whose value equals to 105% of total principal and interest (at most) into the lending party’s address, and transfer the remaining tokens to the borrowing party’s address.
</p>

<p>To prevent various fraud and attack situations, we adopt (but not limited to) the following protection mechanisms:</p>

- Users – must conduct transactions through KYC.
- Exchange – must be approved by GEB Foundation and mortgage guarantee deposit.
- Juror – must be approved by GEB Foundation, mortgage guarantee deposit, and anonymously and randomly distributed for arbitration.
- Orders with digital signature – evidence in which the transaction details cannot be forged.
- <a href="https://tlsnotary.org/pagesigner.html">PageSigner</a> evidence – evidence in which the transfer of fiat currency cannot be forged.
- Transaction amount limit – limit the maximum transaction amount (50ETH) to reduce fraudulent potential incomes.
- Smart contract with timelock (Timelock Contract) – solve the risk that the counterparty viciously withdraws from the transaction.
- Only support the irreversible fiat currency transfer to reduce the risk of refund (see https://en.bitcoin.it/wiki/Payment_methods).
- Price observation mechanism – regularly call the price oracle contract through ethereum-alarm-clock, and obtain the real-time price of mortgage token from trustworthy oracle set (trusted-oracles-set).
- Trustworthy oracle set – DAO has the right to determine a group of trustworthy oracle nodes by voting. In emergency, some oracle nodes can be increased or deleted after confirmed by most members of DAO committee.
- Compulsory liquidation mechanism – solve the risk of collateral price falling.
- GEB Network cannot be used in the jurisdictions which cryptocurrency transaction is illegal.


### 3.4. Black Swan Incident
<p>Black swan Incident refers to unpredictable and unusual incident. which usually arouses negative market chain reaction, and even overthrow. Cryptocurrency market is characterized with huge fluctuation, so we must consider an extreme situation: the price of a mortgage token falls rapidly in a short time, and the collateral price has drastically fallen below the debt amount before DEX Contract has time to execute the compulsory liquidation. To prevent the extending of risk exposure, DEX Contract will automatically execute compulsory liquidation immediately under such circumstance, and ask GEB ERC20 Contract to additionally issue a certain number of GEB in accordance with the market price of GEB Token to the lending party to compensate the difference between collateral value and debt amount. Such additional issue mechanism may cause a certain degree of value dilution to GEB Token, but compared with the damage on GEB Network caused by large-scale debt default, such value dilution is mild and controllable, and conforms to long-term interests of most GEB Token holders.</p>

<p>If the cryptocurrency market price fluctuates sharply, GEB DAO committee has the right to remove certain types of cryptocurrency out of the scope of token types which can be mortgaged, and even temporarily shut down the mortgage loan business in the whole network. The main business system of GEB Network is established totally based on the ecosystem of Ethereum and bitcoin (it may be extended to EOS in the future), therefore the safety and practicality of GEB Network and the price of GEB Token shall depend on the health degree of the ecosystem of Ethereum and bitcoin to a large extent. In the long term, GEB team shall pay close attention to the development orientation of blockchain underlying technology, and GEB Network shall benefit from the prosperity of the whole cryptocurrency ecosystem, and thus gain a sustainable and healthy development.</p>

### 3.5. Smart Contract Technology
<p>GEB protocol is to complete a standard implementation through a group of smart contracts (DEX Contract) deployed on the Ethereum. This group of contract code is open-source (use AGPL protocol to release source code), and can be used free of charge (only require standard gas consumption). They are coded with Solidity language, and contain all functions to implement OTC transaction and mortgage loan.</p>

#### 3.5.1. Signature Verification
<p>DEX Contract can use ecrecover function to verify Maker’s signature in the transaction order, to prevent Taker from submitting forged Maker order for fraud the function uses hash and signature hash as parameters, and returns to generate the public key address of signature. If the public key address returned by ecrecover equals to Maker’s address, the signature is real.</p>

```solidity
address publicKeyAddr = ecrecover(hash, signature(hash));
if(publicKeyAddr != maker) throw;
```

#### 3.5.2. Time Locking
- In mortgage loan and OTC trade, after submitting an order, Taker must complete the transfer of fiat currency and click the button of “transferred” within 30 minutes, otherwise it shall be deemed to give up the transaction, and DEX Contract will return the locked Token to Maker’s address.
- In mortgage loan and OTC trade, after clicking the button “transferred”, Maker will receive the notice immediately. Later, Maker must click “confirm reception” or “apply for arbitration” within 1 hour, otherwise it shall be deemed to viciously withdraw from the transaction, and DEX Contract will return the locked Token to Maker’s address.
- After the mortgage loan expires, DEX Contract shall give a repayment notice to Maker, and Maker must complete the repayment of fiat currency and click the button “paid” within 24 hours, otherwise, it shall be deemed as overdue payment, and DEX Contract shall execute the compulsory liquidation immediately.
- After the mortgage loan expires and Maker clicks “paid”, Taker must click “confirm receipt” or “apply for arbitration” within 24 hours, otherwise it shall be deemed to viciously withdraw from the transaction, and DEX Contract will return the locked Token to Maker’s address.
- After either party applies for arbitration, both parties of the transaction must submit evidence in accordance with system requirements within 24 hours, and then the juror arbitration phase starts, the party failing to submit evidence shall not have the opportunity to submit evidence again.

#### 3.5.3. Fill and Partially Fill in the Order
<p>DEX Contract stores every order submitted previously, and every order is composed of a structure (struct). The list of orders is stored in a mapping (a solidity data structure similar to hash table). The mapping shall map the 32-bytes block data to the order structure. After the order parameters are transmitted to Keccak SHA3 function, an only 32-bytes hash will be generated, and used as the unique identification of the order (the probability of hash collision is actually zero). The member, ValueFill, in the order structure is used to show the quantity filled in the order. After each order is filled in, mapping will update the accumulated value of quantity filled in the new order.</p>

```solidity
struct Order {
  ...
  uint256 valueFill;
}
mapping(bytes32 => Order) internal OrderList
```
<p>While filling in the OTC transaction order and mortgage loan order, Taker can partially fill in the order through designated additional parameter, valueFill. Only the sum of quantity partially filled in doesn’t exceed the total order quantity, the partial filling can be executed repeatedly for a single order.</p>

| Name      | Data Type | Description                              |
| :-------- | :-------: | :--------------------------------------- |
| valueFill |  uint256  | Total units of token or fiat to be filled (valueFill ≤ valueA or valueB). |

<p>While filling in the mortgage loan order, Taker should designate the fiat currency repayment method by designating the additional parameters such as takerRealName, paybackChannel, and paybackDetail.</p>

| Name           | Data Type | Description                              |
| :------------- | :-------: | :--------------------------------------- |
| takerRealName  |  string   | Real name of Taker                        |
| paybackChannel |   bytes   | Fiat payback channel (eg. paypal, alipay) |
| paybackDetail  |  string   | Details of payment                       |

#### 3.5.4. Expiration Time
<p>The expiration time of an order is designated by Maker establishing the order, which is an integral value without symbols, and represents a UNIX timestamp. Such value cannot be changed after signed.</p>

<p>The time in Ethereum virtual machine is given based on the block timestamp set when a new block is mined every time. Therefore, it doesn’t depend on the time when Taker submits an order to determine whether the order expires, but on the time when the miner executes filling function in EVM. The miner cannot set the timestamp of current block to be earlier than the timestamp of previous block.</p>

#### 3.5.5. Cancellation of Order
<p>Before the order is submitted to DEX Contract, Maker can re	quest Relayer to cancel the order. After the order is submitted to DEX Contract, Maker can cancel the unfilled and unexpired part of the order through the cancellation function of DEX Contract. Such function shall change the valueFill of the order to its maximum value to prevent subsequent filling. Cost may be incurred by cancelling an order through DEX Contract, so this function is only used as a standby mechanism. Generally, Maker can match the order expiration time with the time when they plan to update a new order, thus to avoid the on-chain cancellation of order.</p>

<p>There is a problem existing in this method. It may cause that when Maker tries to cancel the order, Taker tries to fill in the same order, which will result in a failed transaction among the two transactions, and waste gas. The uncertainty of transaction mining order may result in unexpected results sometimes, and if there are a large number of transactions to be processed on the Ethereum blockchain, such uncertainty may increase.</p>

#### 3.5.6. WETH Contract
<p><a href="https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md">ERC20</a> builds a standard interface for Ethereum token, to allow the interaction between the Ethereum smart contract and any token conforming to the standard. ETH is the base currency of Ethereum, and doesn’t conform to ERC20 token standard. Many DApp developers finds that by abstracting ETH as the token compatible with ERC20, smart contract can be simplified by removing the business logic code for ETH processing.</p>

<p>We use WETH contract deployed by <a href="https://medium.com/@MakerDAO">Makerdao</a> team to implement the above-mentioned function.</p>

**Contract deployment address:**<br />
- Mainnet：[0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2](https://etherscan.io/address/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
- Kovan：[0xd0a1e359811322d97991e03f863a0c30c2cf029c](https://kovan.etherscan.io/address/0xd0a1e359811322d97991e03f863a0c30c2cf029c)
- Ropsten：[0xc778417e063141139fce010982780140aa0cd5ab](https://ropsten.etherscan.io/address/0xc778417e063141139fce010982780140aa0cd5ab)
- Rinkeby：[0xc778417e063141139fce010982780140aa0cd5ab](https://rinkeby.etherscan.io/address/0xc778417e063141139fce010982780140aa0cd5ab)

### 3.6. Compatibility of non-Ethereum Cryptocurrency
<p>Before the design of GEB protocol, the compatibility of non-Ethereum digital currency has been taken into consideration. To implement this objective, we need to rely on the technology and protocol allowing the intercommunication between such cryptocurrencies. We are glad to see that so many excellent teams, such as Polkadot and Cosmos, are making efforts to solve this problem. It is a pity that these projects are still in tense development phase, the release dates of some projects haven’t released yet (such as Polkadot), and some are just applicable to the blockchain based on proof of stake (PoS) mechanism (such as Cosmos). Therefore, the practical solution of cross-chain communication between current blockchains still needs to be explored. After comprehensively comparing several cross-chain technical proposals, GEB team selects a technical route which shall be implemented in two steps.</p>

#### 3.6.1. 2-way Peg Technology (Current Solution)
<p>The general description about 2-way peg is as follows: the token of bitcoin on Ethereum is named as E-BTC. When a user “deposits” BTC, such BTC shall be locked on the bitcoin blockchain. The BTC transaction proof is sent to an Ethereum contract, which is naed as PegContract. PegContract verified this transaction, and issue E-BTC to the user’s Ethereum address. 1BTC in bitcoin system equals to 1E-BTC in Ethereum system. After that, when the user wants change E-BTC back to BTC, it just needs to burn E-BTC, and provide a burning proof to the bitcoin blockchain. After verifying that such E-BTC has been destroyed, the bitcoin blockchain shall unlock the original BTC.</p>

<p>Now such PegContract can be implemented on Ethereum, and without need of trust to complete all work. It can verify that BTC has been sent to some address and locked; issue E-BTC; burn E-BTC and provide burning poof. BTC-Relay is such a contract, which realizes the simplified payment verification of bitcoin, thus to verify whether a transaction has been confirmed on the bitcoin blockchain (the verification fee should be paid to Relayer to as to motivate Relayer to continuously submit bitcoin block headers to BTC-Realy contract). Therefore, any transaction in the bitcoin system, from payment to BTC locking, can be verified by Ethereum contract. In a similar way, we can use the Ethereum contract to verify the transactions on bitcoin cash (BCH) blockchain. </p>

<p>The problem existing in the 2-way peg is that we can’t deploy ETH-Relay or any locking contract on the bitcoin blockchain. After the release of RootStock, we can establish a 2-way peg between ETH and RootStock to realize the interaction between bitcoin and Ethereum. Another practical solution is to lock the User’s BTC in a multi-signature address, and every signer must store ETH in Ethereum PegContract. When BTC is locked, PegContract shall issue E-BTC as usual. When E-BTC is returned to PegContract, they will be destroyed and PegContract shall generate a proof. Meanwhile, PegContract starts to count down, to provide sufficient time to signers to destroy proof and unlock BTC. If any signer refuses the multi-signature, the ETH stored by such signer shall be transferred to the user’s Ethereum address. To ensure a smooth redemption process, the signers can get service fee rewards in each deposit/redemption process. The specific theory is shown in the following figure:</p>

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/cross-chain-vertical.jpg)

#### 3.6.2. Lighting Atomic Swap Technology (Evolution Solution)
<p>To ensure the safety of cross-chain transaction, the transaction velocity of 2-way peg technology must meet the following inequation:</p>

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7Bv%7D%5Cgeq%20%5Cfrac%7B1%7D%7Bv1%7D&plus;%5Cfrac%7B1%7D%7Bv2%7D)

<p>V represents safe transaction velocity; v1 and v2 represent the individual safe transaction velocity of two blockchains respectively. It can be perceived from the inequation that the cross-chain safety transaction velocity is slower than the safe transaction velocity on any blockchain. For bitcoin blockchain, the safe transaction confirmation time may be 30 minutes and even longer. On the other hand, there is an on-chain transaction respectively on the two blockchains and a gas fee for SPV verification and a Relayer service fee should be paid, so it is relatively expensive to realize the cross-chain transaction by using 2-way peg technology.</p>

<p>The lightning atomic swap is a real-time cross-chain transaction technology combining lightening network and atomic swap. The lightening network is a protocol which operates by establishing off-chain payment channel between different transactions, and the On-chain transaction is only need to open and close the payment channel. It has three advantages. First, accelerate transaction velocity; second, reduce transaction cost; and third, promote transaction volume. The atomic swap is another protocol which enables both parties to conduct the cross-chain transaction without the need of trust. There are two results for the execution of atomic swap. The one is that both parties complete the digital currency exchange, and the other is that nothing happens. Most importantly, there is no need of trusting any third party, so fraud shall be avoided.</p>

<p>A long waiting time is required to ensure safety when the atomic swap is used separately, and at least on-chain transactions are required. However, on the condition that there is a payment channel on both blockchains, the use of lightening atomic sway can greatly reduce the waiting time, and no on-chain transaction is required. On November 16th, 2017, Lightning Laboratory confirmed that the first lightening atomic swap based on bitcoin-litecoin blockchain in the world had been completed, and the specific technical principle is as shown in the following figure:</p>

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/lightning-swap-vertical.jpg)

<p>By the time when this text is written, the bitcoin lightening network has been successfully released on the main bitcoin network, and the lightening network on Ethereum – Raiden Network is intensive development and research phase. We will continuously pay close attention to the progress of relevant projects, and introduce the lightening atomic swap technology into GEB Network at right time (after the reliability of relevant technologies has been verified).</p>

<br /><br />
## 4. GEB Protocol Token
<p>To promote the development of GEB Network, and enable more people to participate in the GEB ecological construction, share GEB ecological earnings, and establish a decentralized collaborative decision-making mechanism, GEB team will issue ERC 20 token based on Ethereum blockchain, GEB Token, which shall be mainly used for the inner circulation of GEB ecosystem, and motivate GEB users to construct, use and maintain GEB Network. GEB Token shall become the lubricant for the stable operation of GEB Network.</p>

### 4.1. Economic Model of GEB Token
<p>The value storage function and the circulation function of protocol token is a pair of contradiction in the token economic model. If the design of token economic model is partial to the value storage function, due to the anticipation that the price will increase, the token holders will tend to hold but not use such tokens, which further weaken their liquidity. Such self-reinforcing positive feedback will result in high entry threshold for new users, and hinder the expanding of protocol use range. Such situation has been verified in the bitcoin system. It can be predicted that when such self-reinforcement reaches a limit, people will no longer use such tokens in the market, and no new users enter the market; so, the whole token economic model will be close to the edge of breakdown. The token transaction is completely driven by speculation demand, and the token price may suddenly collapse at its peak point. If the design of token economic model is partial to the circulation function, the users will lose the motivation to hold tokens, but select to complete the transaction as soon as possible, especially when the predicted price increase of protocol token is lower than other tokens with value storage function. Under such circumstance, the average time users hold the protocol tokens depends on their prediction about the token price, the use value and use frequency of such token, and the transaction cost between such token and other currency. The decrease of any factor may cause that the users tend to trade, but not hold the tokens, which will further result in the falling anticipation of token price. Such reverse positive feedback will cause the collapse of protocol token price, and even the death of whole protocol ecosystem.</p>

<p>Based on above analysis, we can draw the conclusion that the balance is maintained only when a protocol token has both value storage function and circulation function at the same time, and the price can be stably maintained. Vitalik Buterin discussed this problem in a blog in 2017, and put forward a formula to assess the token price:</p>

<p align="center">MC = TH</p>

- M represents total supply quantity of tokens.
- C represents token price.
- T represents token transaction volume.
- H represents average time of users holding tokens.

<p>Our design objective of GEB Token economic model is to maintain token price C at a relatively stable long-term increase rate, and to maximize the total market value of tokens MC/TH at the same time. For this reason, we need to pay attention to two aspects. First, enlarge the token transaction volume T as far as possible, and increase the average time of users holding tokens H; second, ensure that the increase rate of total supply quantity of tokens is lower than the increase rate of TH. In the phase when the user volume increases rapidly, the token transaction volume T shall grow at the same time, and the growth of TH is mainly driven by newly increased users T; when the increase of user volume slows down, and even stops, T and H show a negative correlation, and TH has a maximum value. Therefore, in the early stage of GEB Network development, the most effective method to maximize the total market value of GEB Token is to attract more new users to join in GEB Network, and encourage users to hold more GEB Tokens. Only when GEB Network is developed to cover most cryptocurrency users, and the increase of total number of users in the whole cryptocurrency ecosystem slows down, we need to consider to make TH close up to maximum value by promoting the inner liquidity of the system.</p>

<p>After full consideration about the factors mentioned and the usage scenarios of GEB Network, we design a very ingenious and unique token economic model for GEB protocol. In the design of GEB protocol, there is a special type of token transaction – token mortgage. When the GEB Tokens are mortgaged, we still can treat them to be held by users, because the liquidity in the market is not increased. By encouraging users to mortgage GEB Tokens, we promote their demands for GEB Tokens and prolong the time when they hold such tokens. It is named as a “using and holding” token economic model. Obviously, such model shall greatly stimulate the increase of GEB Token price, so we need to design an additional token issue mechanism to control the increase of GEB Token price within a reasonable range. Fortunately, there are abundant scenarios in the GEB protocol ecosystem enabling us to motivate users to jointly construct and maintain GEB Network by issuing additional GEB Tokens. Some specific examples and additional issue scenarios are given in the subsection 4.2 and 4.3.</p>

<p>In addition, we also design an additional price regulating mechanism for GEB Token. By establishing GEB investment funds, we will invest in the enterprises and DAO in the GEB protocol ecosystem, and use a part of incomes from investment to buy back GEB Tokens circulating in the market and destroy them.</p>

### 4.2. Use Cases of GEB Token
- To establish a GEB verification exchange, a certain number of GEB Tokens should be mortgaged in GEB Foundation. 
- To take the post of GEB verification juror, a certain number of GEB Tokens should be mortgaged in GEB Foundation.
- Paying OTC trade service charges in GEB Tokens can enjoy 50% discount.
- Users borrowing money with GEB Tokens as collateral can enjoy 50% service charge discount, and obtain higher mortgage rate and lower liquidation limit.
- The order of borrowing money with GEB Tokens as collateral shall be highlighted.
- GEB Token holders can participate in GEB DAO voting, and become a member of protocol governance decision-making level.

### 4.3. Additional Issue of GEB Tokens
<p>The initial issue volume of GEB Tokens is 1 billion, and later, a certain number of additional tokens shall be issued every year. The additional issue volume of GEB Tokens is closely related to the operation state of GEB Network, now the additional issue scenarios which have been determined are as follows:</p>

- GEB exchange accepts GEB Tokens as service charges, and the part of discount given to users shall be supplemented by additional issue. 
- GEB jurors may obtain GEB Token rewards for appropriate arbitration, and the reward part shall be generated by additional issue.
- Users who invite friends to register in GEB exchange and complete KYC will obtain GEB Token rewards, and the reward part shall be generated by additional issue.
- When any black swan event happens, execute the compulsory liquidation immediately, and issue additional GEB Tokens to compensate the lending party, thus to avoid debt default.

<p>For any scenario in which additional issue of GEB Token is required, submit a proposal to GEB DAO for voting.</p>

### 4.4. Aragon DAO Governance
<p>Aragon released in 2017 is an operating system of Decentralized Autonomous Organization(DAO). In Aragon, a simple and easy-to-use set of basic administration components for Decentralized Autonomous Organization(DAO) can be easily realized, which includes token distribution management, organization member management, voting management, crowdfunding management, financial management etc. The behaviors of Aragon organization can be easily defined by modifying regulations. In addition, Aragon organization can be extended through the third-party module for organizing contract interaction.</p>

![img](https://images-cdn.shimo.im/HzrAKHaKcJwws0mN/aragon.gif)

<p>GEB Token holders can vote on every aspect of GEB protocol through the voting module of Aragon software, and such aspects include but are not limited to:</p>

- DAICO fund unlocking proposal.
- GEB protocol upgrading proposal.
- Proposal for additional issue of GEB Tokens.
- GEB DAO committee election.
- Trustworthy predictor set modification proposal.
- GEB Network general parameter (scope of tokens which can be mortgaged, mortgage rate, compulsory liquidation limit, service charge, transfer channels in which fiat currency can be used etc.) modification proposal.
- GEB Network temporary open and close proposal.

<p>It largely depends on a robust decentralized ecosystem to promote liquidity whether GEB Network can be recognized by the public eventually. The roles participating in ecological construction are not limited to GEB Token holders, but also developers, terminal users etc. To effectively and widely take advice, we follow the concept of distributed governance to establish a set of standard decision-making procedures, and host them in Aragon, which involve member and authority management with <a href="https://wiki.aragon.one/dev/apps/group/">Aragon Group</a>, financial management with <a href="https://wiki.aragon.one/dev/apps/finance/">Aragon Finance</a>, and other management modules.</p>

<p>With the release of AragonOS release 3.0, the voting management has become a more flexible entrance for DAO governance, we can manage different voting scenarios in accordance with ACL self-defined parameter rules, or easily forward the voting results to different DAO management application programs with Forwarders. A program for a self-defined parameter rule verification is as follows:</p>

```javascript
function verifyCombinatedParams() {
	Param[] memory params = new Param[](7);
	params[0] = Param(LOGIC_OP_PARAM_ID, uint8(Op.IF_ELSE), encodeIfElse(1, 4, 6));
	params[1] = Param(LOGIC_OP_PARAM_ID, uint8(Op.AND), encodeOperator(2, 3));
	params[2] = Param(ORACLE_PARAM_ID, uint8(Op.EQ), uint240(new AcceptOracle()));
	params[3] = Param(BLOCK_NUMBER_PARAM_ID, uint8(Op.GT), uint240(block.number - 1));
	params[4] = Param(LOGIC_OP_PARAM_ID, uint8(Op.OR), encodeOperator(5, 2));
	params[5] = Param(0, uint8(Op.LT), uint240(10));
	params[6] = Param(PARAM_VALUE_PRARM_ID, uint8(Op.RET),0);

	assertEval(params, arr(uint256(10)), true);
}
```

<p>DAO governance model is diversified and dynamically adjusted, and AragonOS provides both convenience and certain security assurance.</p>

### 4.5. Initial Coin Offering

#### 4.5.1. Coin Offering Plan - DAICO (Option 1)
<p>After private sale of GEB Token, GEB Network will make Initial-Coin-Offering in the first exchange to publicly list GEB token.</p>

#### 4.5.2. Coin Offering Plan - DAICO (Option 2)
<p>In January 2018, Vitalik Buterin proposed a revolutionary concept - DAICO (combined ICO with DAO (Distributed Autonomous Organization)) (https://ethresear.ch/t/explanation-of-daicos/465). Participants can vote for or against a fixed budget increase in DAICO. If the team did not successfully implement the project, participants can vote to cancel the project.</p>

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/daico.jpg)

<p>GEB Network will use DAICO for the management of fund crowdfunding and usage, and embed the 100% transparent rules in the code, which will be directly controlled by participants and smart contracts, rather than third parties.</p>

#### 4.5.3. Token Distribution Plan
<p>The tokens for teams, consultants, crowdfunding sales, foundations, and incentive pool will be distributed by smart contracts as follows:</p>

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/token-distributed-en.jpg)

- Team and Consultants: GEB Tokens for the team will be frozen for 2 years through the smart contract. And the tokens for consultants will not be subject to the lock-up period and will be distributed directly to consultants of the project after the token sales are completed.
- Private Sale: GEB Tokens distributed through Private sale will be divided into two parts: 1) The part that does not participate in the lock-up plan will be unlocked after the Private sale and distributed to the participant's wallet; 2) The part that participates in the lock-up plan will be locked in the smart contracts, which will be unlocked and distributed to participants' wallets by stages according to established rules.
- IEO/DAICO: The portion of the GEB Tokens will be distributed directly to participants' wallets.
- Foundations: The portion of the GEB Tokens will be frozen for one year by the smart contract.
- Incentive Pool: This portion of the GEB Tokens will be frozen for 4 years by the smart contract.

#### 4.5.4. Withdrawals
<p>After the end of crowdfunding sales, the Fund contract was converted to the Team Withdraw mode, which allows project team to regularly withdraw a limited amount of funds raised. Payment of funds raised through the Fund contract can be paid to the development team by the following two approaches:</p>

- Limited direct payment (first withdrawal)
<p>Taking into account the high volatility of ETH prices, the team may withdraw half of the funds raised immediately after the end of crowdfunding sales and convert it to fiat currency or DAI to protect the project.</p>

- Payment based on TAP mode
<p><b>Tap (wei/s): </b>This is the maximum amount that each project team can reasonably extract from Fund contract every month. The initial Tap is set as 77160493827160 (wei/s) = 200 ETH/month by the smart contract. Tap is used for support the long-term development of the platform, which will continue to accumulate if it does not pay.</p>

<p><b>Increase Tap Holding: </b>If a team needs to get more money for any reason, it can initiate a vote to increase Tap holding. Token holders can vote based on the number of tokens they held on their wallet (N, where N≠0) on whether to authorize the team to spend additional funds. The vote to increase Tap holding will be conducted on the 1st of each month. If the number of "agree" votes exceeds that of "disagree", the vote is deemed to be successful. Voting will start immediately after it is initiated and last for 3 days. In order to prevent damage to the system, the percentage that Tap can be increased at a time will be limited to 50% of the initial amount. (Attached TAP Voting Increase Prevention (Proof-of-Stake algorithm) Protocol, which aims to prevent holders of large amount of tokens from voting maliciously, such as exchanges, etc. The proportion of vote for each Ethereum wallet is limited to a certain number of tokens. (Voting weight <= 0.5% of all tokens.) Tokens that are locked by smart contracts have no voting rights, such as locked portion for cornerstone investment, private placement, team, fund, and incentive pool. Because it is controlled by smart contract rather than man’s will.)</p>

<p><b>Refund Vote: </b>If a token holder is dissatisfied with the team work of the project (considering that the team fails to perform the project), they can request a refund vote. Refund activities will continue to be available for the first two years after the end of token offering; however, if the operation team completes the floatation of tokens in the exchange within 2 years after the end of token offering, the refund activity will be closed. The refund vote is initiated by the team once every six months, which will start immediately and last for one week. If the number of votes for "agree" in the refund vote exceeds that of "disagree", the vote is considered to be successful. Voting will start immediately after it is initiated and last for 1 week, and voting results can be changed at any time during the voting period. After the vote is closed, the vote will be no longer accepted, and the holder who did not vote is deemed as "disagreed" by default. If the refund vote is successful, the token holder shall keep its token and do not transfer it to another ETH wallet before the first day of the next month. In this case, the vote will be deemed as completed. If a token is transferred, the current voting right of token holder will be reduced. For example, if a person invested 1000 tokens and moved 500 of them to another wallet, his voting weight will be reduced to 500 instead of 1000. We will calculate the final voting result based on the actual transfer of tokens on the first day of the next month following the successful refund vote. If the first refund vote is successful, the team's withdrawal will be locked, and the second refund vote shall be conducted within one month. Similar to the first refund vote, the second refund vote will last for one week. Vote results can be changed at any time during the vote period, and no other vote operation is accepted after the vote is closed. If the second refund vote is successful, token holder can return the remaining funds; or the team's withdrawal is unlocked. This two-stage voting system is designed to protect the project from affecting the hasty decision of token holders caused by the rapid changes in the cryptocurrency market. If the refund is performed, the current GEB/ETH exchange rate is calculated by dividing the remaining ETH of the current fund account by the total amount of tokens after tokens of team, incentive pool and fund have been destroyed. And then, rest of funds would be returned to token holders according to the rate above. (Attached Refund voting prevention (Proof-of-Stake algorithm) Protocol, aiming to prevent holders of large amount of tokens from voting maliciously, such as exchanges, etc. The proportion of vote for each Ethereum wallet is limited to a certain number of tokens. (Voting weight <= 0.1% of all tokens.) Tokens that are locked by smart contracts have no voting rights, such as locked portion for cornerstone investment, private placement, teams, funds, and incentive pool. Because it is controlled by the smart contract rather than man’s will.)</p>

<p>We believe that DAICO's fund management scheme will provide investors with an unprecedented safety, transparency and control to promote sound and healthy development of the project.</p>

### 4.6. GEB Investment Fund
<p>After GEB Network's fundraising work is completed, the GEB Foundation will establish a GEB investment fund specifically for investing and incubating companies and DAOs within the GEB Ecosystem, from 30% of the funds raised and the 300 million GEB Tokens of the foundation, respectively. The direction of investment includes blockchain underlying technologies, blockchain protocols and applications, and GEB protocol extensions. The GEB investment fund is directly managed by the GEB DAO Committee, accompanied with a professional investment research team and post-investment management team. 20% to 50% of the fund income will be used to repurchase and destroy the GEB Token circulating on the market (the size of the repurchasing will be determined according to the GEB Token price), and the residual income will be used for continuous rolling investment.</p>

<br /><br />
## 5. GEB Protocol Ecology

### 5.1. The Overall Architecture of GEB Network

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/network-structure.jpg)

### 5.2. Network of Jurors
<p>The smart contract can resolve disputes by controlling transactions on the chain, but it cannot control transactions under the chain. The network of jurors is used to handle situations which cannot be judged by the smart contract and submit the results to the smart contract. When users apply for arbitration during the transaction, the juror network will initiate. The network of jurors is designed to establish a decentralized dispute resolution mechanism through economic incentives, avoiding absolute trust from a single arbitral institution and thereby providing a higher degree of security. The full set of arbitration software runs on the infrastructure built by Ethereum and IPFS. Through a simple user interface, the juror can easily receive the evidence submitted by the parties to the dispute and arbitrate. All records for arbitration will be permanently stored on the Ethereum blockchain. All tamper-proof cryptographic evidence (generated by <a href="https://tlsnotary.org/pagesigner.html">PageSigner</a>) will be permanently stored on the IPFS.</p>

#### 5.2.1. Juror Application
<p>To join the GEB juror network, you need to first submit an application to GEB DAO and provide proof of identity. After passing the review, you need to participate in online training and assessment of GEB juror. After the assessment is passed, you are required to sign a contract online with the GEB Foundation and purchase a certain number of GEB Token to mortgage to the GEB Foundation. The juror is not allowed to use the mortgage token during the contract term. If the contract will not be renewed after its expiry, the GEB Foundation will return the mortgage token to the juror.</p>

#### 5.2.2. Arbitration
- **Phase1**: The user initiates an arbitration request and the arbitration software will notify both parties to the dispute, requesting both parties to submit a cryptographic evidence in the prescribed format within 24 hours (using <a href="https://tlsnotary.org/pagesigner.html">PageSigner</a>, a Firefox/Chrome plug-in that allows the user to generate tamper-evident webpage evidence) and other supplementary evidences (text, pictures, voice, video, etc.). All evidences are packaged, signed and uploaded to IPFS. At the same time, the arbitration software will randomly select three jurors from the contracted jurors and notify them to prepare for the arbitration(excluding the jurors' possibility of arbitrating themselves through KYC data verification). The juror must response within 8 hours. If the juror does not response timely, it will be fined X (mortgage token), and the arbitration software will re-select the juror. The entire process must be completed within 24 hours.
- **Phase2**: The jurors accept the evidences submitted by both parties to the dispute, verify the signature and review the evidences. The jurors can also request to review the KYC data of both parties. In order to avoid conspiracy to commit fraud, the jurors cannot communicate with each other nor can they directly communicate with both parties. The juror must complete the review within 8 hours and make an independent conclusion (may support the disputing party or may not be able to make a decision). The juror will be fined if it do not make a decision timely. Subsequently, the arbitration software will judge the arbitration result as follows:
    - If three jurors support the same party, such party wins and the arbitration ends. The arbitration software informs the DEX Contract of the arbitration results.
    - Otherwise, the arbitration will go to Phase3.
- **Phase3**: If the arbitration does not end in Phase2, then the evidences submitted by both parties and the decisions of the three jurors will be submitted to the GEB DAO Committee for final decision. The GEB DAO Committee may request both parties to submit additional evidences, and may even request video s or screen sharing with both parties when necessary to ensure the conclusion is correct. All evidences and video materials will be uploaded to IPFS. There is no fixed time limit for phase 3, and the arbitration will continue until the GEB DAO Committee makes a final decision.

#### 5.2.3. Economic Incentives and Deposits
<p>In order to motivate the jurors to exercise the jury power properly, the jurors need to mortgage a certain amount of GEB Token as deposit in GEB DAO. After each arbitration is completed, the arbitration system rewards or punishes each of the three jurors (A, B, and C) according to their decision and <b>the final result R</b>. The specific rules are as follows (+X indicates reward X. ,-X means fine X, 0 means neither rewards nor punishments):</p>

<div class="tg-wrap"><table align="center">
  <tr>
    <th colspan="3">Decision</th>
    <th colspan="3">Reward or Punishment</th>
  </tr>
  <tr>
    <td>A</td>
    <td>B</td>
    <td>C</td>
    <td>A</td>
    <td>B</td>
    <td>C</td>
  </tr>
  <tr>
    <td>R</td>
    <td>R</td>
    <td>R</td>
    <td>+X</td>
    <td>+X</td>
    <td>+X</td>
  </tr>
  <tr>
    <td>R</td>
    <td>R</td>
    <td>¬R</td>
    <td>+X</td>
    <td>+X</td>
    <td>-X</td>
  </tr>
  <tr>
    <td>R</td>
    <td>R</td>
    <td>Can not Decide</td>
    <td>+X</td>
    <td>+X</td>
    <td>0</td>
  </tr>
  <tr>
    <td>R</td>
    <td>R</td>
    <td>Overtime</td>
    <td>+X</td>
    <td>+X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>R</td>
    <td>¬R</td>
    <td>¬R</td>
    <td>+X</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>R</td>
    <td>¬R</td>
    <td>Can not Decide</td>
    <td>+X</td>
    <td>-X</td>
    <td>0</td>
  </tr>
  <tr>
    <td>R</td>
    <td>¬R</td>
    <td>Overtime</td>
    <td>+X</td>
    <td>-X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>R</td>
    <td>Can not Decide</td>
    <td>Can not Decide</td>
    <td>+X</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>R</td>
    <td>Can not Decide</td>
    <td>Overtime</td>
    <td>+X</td>
    <td>0</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>R</td>
    <td>Overtime</td>
    <td>Overtime</td>
    <td>+X</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>¬R</td>
    <td>Can not Decide</td>
    <td>0</td>
    <td>0</td>
    <td>+X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>¬R</td>
    <td>Overtime</td>
    <td>0</td>
    <td>0</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>Can not Decide</td>
    <td>Can not Decide</td>
    <td>-X</td>
    <td>+X/2</td>
    <td>+X/2</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>Can not Decide</td>
    <td>Overtime</td>
    <td>-X</td>
    <td>+X/2</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>Overtime</td>
    <td>Overtime</td>
    <td>0</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td width="200">Can not Decide</td>
    <td width="200">Can not Decide</td>
    <td width="200">Can not Decide</td>
    <td width="200">+X/2</td>
    <td width="200">+X/2</td>
    <td width="200">+X/2</td>
  </tr>
  <tr>
    <td>Can not Decide</td>
    <td>Can not Decide</td>
    <td>Overtime</td>
    <td>+X/2</td>
    <td>+X/2</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>Can not Decide</td>
    <td>Overtime</td>
    <td>Overtime</td>
    <td>0</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>Overtime</td>
    <td>Overtime</td>
    <td>Overtime</td>
    <td>-2X</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
</table></div>

<p>Because the order of A, B, and C is irrelevant, the above table already contains all possible combinations of the decisions of the three jurors. The fact that the jurors did not make a decision in the time limit is rare, as this would result in the juror being subject to double the fine of tokens.</p>

#### 5.2.4. Exit Mechanism
<p> If the following circumstances occur during the contract term, an exit mechanism will be initiated.</p>

- **The juror applies for exit**: The juror who is not within an arbitration period may apply for exit to GEB DAO. After reviewed by the GEB DAO Committee, if it is confirmed that the juror has no misconducts, the application will be past and the remaining mortgaged tokens and reward tokens will be returned.
- **Fined more than 5 times during the contract term**: The quit process will be initiated mandatorily. After reviewed by the GEB DAO Committee, if it is confirmed that the juror has no other misconducts, the juror is forced to quit from the network and the remaining mortgaged tokens and reward tokens will be returned.
- **The GEB DAO Committee determined that the juror had obvious misconduct (such as conspiracy to defraud)**: All mortgaged tokens and reward tokens will be deducted, the juror is forced to exit from the network and GEB DAO reserves the right to further investigate the juror.

### 5.3. Dealer Network
<p>The main role of the dealer network is to promote the liquidity of GEB Network and provide users with comprehensive transaction services. Trading service providers may establish GEB transactions through the deployment of GEB open source software or achievement of self-developed (secondary development) GEB protocol, and make a profit from transaction fees. To apply for becoming a GEB certified trading service provider, the following conditions must be met:</p>

- Shall occupy the operational qualifications of microfinance lending of the place where it operates, corporate entity and fixed office space, and experience in the operation of microfinance lending industry. GEB officially provides a full set of open source software and secondary development technical support (free technical training, engineers 7 * 24 remote technical support). Shall sign for three years for the first time.
- Shall purchase 1000000GEB at the price of 1ETH = 10000GEB (the first batch, the purchase price and quantity will be adjusted in the future with the change of GEB price) and mortgage it in the GEB Foundation. During the contract term. the trading service provider is not allowed to use this deposit. If the contract will not be renewed after its expiry, the GEB Foundation will return the mortgage token to the juror.
- Must comply with the laws, regulations, and policies of the place where it operates. If the trading service provider violates the law, the GEB DAO Committee has the right to fine the trading service provider until it is disqualified.
- Shall ensure that the trading software can fully implement all the GEB Protocol requirements and strictly execute them. Any trading service provider that does not comply with the GEB Protocol will be fined until it is disqualified.
- Not allowed to apply for quit during the contract term.

### 5.4. Decentralized Identity Authentication
<p>In order to ensure transaction security, users shall complete authentication before using the GEB Network. The traditional KYC/AML system stores user identity data on a centralized server, which leads to a serious risk of user privacy leakage and it has aggravated the inequality of the right between users and service providers. We will return the ownership of user data on GEB Network to the user. To implement this purpose, we designed a set of decentralized authentication protocols for GEB Network. Users can register, request, send certificates, and securely manage their key and privacy data on the GEB Network.</p>

#### 5.4.1. DID and DID Documents
<p>Our authentication protocol design refers to the work of the W3C Credentials Community Group on Decentralized Identifiers and Identity Credentials (see https://w3c-ccg.github.io/did-spec/, https://opencreds.org/specs/source/identity-credentials/ ). The identity is identified by a decentralized identifier (DID) and points to a DID document. The combination of the DID and its associated DID document forms the root record of the decentralized identifier.</p>

<p>The DID generation methods currently supported by GEB Network are as follows:</p>

```gebdid
geb-did = "did:geb:"geb-specific-idstring
geb-specific-idstring = network":"address
network = "mainnet"/"ropsten"/"rinkeby"/"kovan"
address = 40*HEXDIG
```

- The network currently only supports Ethereum's "mainnet", "ropsten", "rinkeby", and "kovan", but it can be extended in the future to support arbitrary Ethereum instances (including private instances).
- address is the Ethereum address HEX encoded (without 0x prefix).

<p>The DID document shall be a single JSON object, the format of which is specified in <a href="https://json-ld.org/">JSON-LD</a>. <a href="https://json-ld.org/">JSON-LD</a> is a format used for mapping JSON data to the RDF semantic graph model defined by <a href="https://www.w3.org/TR/json-ld/">[JSON-LD]</a>. A basic example of a DID document is shown as follows:</p>

```json
{
  "@context": "https://github.com/gebnetwork/geb-connect/geb-did-v1.jsonld",
  "@id": "did:geb:mainnet:d278018404b0889326f1799beecf8724b61d691e",
  "@type": "Person",
  "name": "ZhuWei",
  "email": "geekchu@qq.com",
  "born": "1986-05-26",
  "credential": [{
    "@graph": {
      "@context": "https://w3id.org/identity/v1",
      "@id": "http://example.gov/credentials/3732",
      "@type": ["Credential", "PassportCredential"],
      "name": "Passport",
      "issuer": "https://example.gov",
      "issued": "2010-01-01",
      "claim": {
        "@id": "did:ebfeb1f712ebc6f1c276e12ec21",
        "name": "Alice Bobman",
        "birthDate": "1985-12-14",
        "gender": "female",
        "nationality": {
          "name": "United States"
        },
        "address": {
          "@type": "PostalAddress",
          "addressStreet": "372 Sumter Lane",
          "addressLocality": "Blackrock",
          "addressRegion": "Nevada",
          "postalCode": "237842",
          "addressCountry": "US"
        },
        "passport": {
          "@type": "Passport",
          "name": "United States Passport",
          "documentId": "123-45-6789",
          "issuer": "https://example.gov",
          "issued": "2010-01-07T01:02:03Z",
          "expires": "2020-01-07T01:02:03Z"
        }
      },
      "signature": {
        "@type": "LinkedDataSignature2015",
        "creator": "https://example.gov/keys/27",
        "signature": "3780eyfh3q0fhhfiq3q9f8ahsidfhf29rhaish"
      }
    }
  }],
  "signature": {
    "@type": "EcdsaKoblitzSignature2016",
    "created": "2016-10-23T05:50:16Z",
    "creator": "ecdsa-koblitz-pubkey:020d79074ef137d4f338c2e6bef2a49c618109eccf1cd01ccc3286634789baef4b",
    "signatureValue": "..."
  }
}
```

- The credential is a set of digital certificates issued by a third party to prove digital identity. See https://opencreds.org/specs/source/identity-credentials/ for details.
- DID documents can be linked to data signatures (Linked Data Signatures) to ensure the correctness and completeness of the document. See https://w3c-dvcg.github.io/ld-signatures for details.

<p>The DID document uses the SHA256 hash as the file name, with the public key encrypted and stored on the IPFS. The mapping relationship between DID and DID documents is stored in the etcd cluster maintained by GEB Certified Exchange (The storage of this mapping relationship in the Ethereum smart contract will result in transaction fees. Considering most of the GEB users creating their identities initially do not hold the ether, this will significantly increase the threshold for the user to use GEB Network). Users can create identities (DID documents) through GEB DApp (WEB/Mobile) and bind with an Ethereum address (DID). After the identity is successfully created, the user can authorize a GEB exchange to access its identity data to complete KYC. After successfully authenticated, the GEB Exchange will issue a digital certificate to the user. The user may store such digital certificate in the DID document, which can be used for identification in the future.</p>

#### 5.4.2. GEB Connect
<p>We plan to upgrade the GEB decentralized authentication protocol to GEB Connect in the future (2019-2020), which is an Ethereum identity management infrastructure, allowing users to log in to all Ethereum DApps using a unique DID, register their identities, request and send certificates of identity, send Ethereum transactions, share data with anyone they trust, and manage their key and private data safely. Some other projects, such as uport and kec.legal, are also making similar attempts, but we think it is difficult to succeed for a decentralized identity authentication project lacking use scenario and user size base. The development of GEB Connect will rely on the huge ecological network and strict KYC requirements of the GEB Network project. With the expansion of the scale of GEB Network users, GEB Connect will be widely applied in the fields of finance, insurance, recruitment, e-commerce, credit, etc.</p>

### 5.5. Shared Liquidity Pool
<p>Liquidity is the “soul” of any market, and the user can obtain an excellent transaction experience in a dynamic market. Therefore, we provide a shared liquidity pool to maintain the liquidity of transactions in the GEB Network. The shared liquidity pool mainly has the following applicable scenarios:</p>

- If an exchange's liquidity is insufficient, he can put his own resting orders on the shared liquidity pool and the other exchanges can pick orders from the shared liquidity pool to their own exchange for presentation. If the order is done, the two exchanges will get the commission of the transaction in proportion to the value of the order attribute in margin Split Percentage.
- If the user wants to borrow fiat currency from an exchange where the fiat currency is not in circulation, the exchange can provide a channel that directly forwards the order to the shared liquidity pool, prompting the transaction to be quickly traded on other eligible exchanges to improve the user experience. The transaction commission is still charged in proportion by the two exchanges based on the value of the order attribute in margin Split Percentage.

#### 5.5.1. Shared Orders
<p>We said that the orders that the exchanges want to place into the shared liquidity pool are shared orders. Its format is as follows:</p>

```protobuf
message sharedOrder {
  string originExAddr/DID;
  bytes rawOrder;
  uint8 marginSplitPercentage; // [1-100]; we will set a default value:3;
  uint8 v;
  bytes r;
  bytes s;
  uint256 nonce;
}
```

#### 5.5.2. Micro-services and Clusters
<p>In the GEB Network, the shared liquidity pool exists in the form of a service organization. In order to be able to expand and upgrade service better in the future, we have adopted micro-service architecture design. The nodes participating in the maintenance of the shared liquidity pool need to pay the security bond and submit the server parameter configuration and other related materials to the GEB Foundation. After passing the certification, they can join the service cluster. For honest nodes that provide services for long-term stability, we use GEB Token for settlement through quality-of-service-weighted charging or on-time charging.</p>

<p>From a simple and secure perspective, to support the RESTful API access and optional SSL client certificate authentication, we use etcd as the primary technology for the shared liquidity pool. Etcd is a high-availability KV storage system that can be used to share configuration and service discovery. In the persistence layer, the service list and the order list are mainly maintained, the service list is used for service searching when the exchange consumption data is used, such as an exchange initiative choosing orders, a hot spot account configuration, and the like; The order list is a collection of orders placed by the Exchange to a shared liquidity pool, and in order to ensure the source of orders, each order in the order list is signed by a private key of the source exchange for a parameter hash other than the field origin ExAddr. Therefore, it is also necessary for the exchange to select the order to check the signature, if the checking is not passed, the feedback order is invalid, and the cluster service will be updated in the order list. In the service layer, in general, a change in the Topic global version number is broadcast by using the Pub-Sub mode. The so-ed Topic global version number update is a change in the Topic directed any service list or order list, and this Topic version number is incremented. The exchange that receives the subscribed Topic version number changes can request services to the target server.</p>

```javascript
var pubsub = new PubSub(),
	grab = function(shareOrder) {
    	// do something
    	putToEx(sharedOrder)
        ...
    };

pubsub.on('orderList', grab);
pubsub.emit('orderList', newOrders);
```

<p>When the amount of the shared orders is too high, since the service cluster tracks the data of each exchange for a long time and analyzes the log data, we can improve the transaction efficiency by setting high performance nodes in the cluster according to the conclusion in order to actively push orders to the high liquidity exchanges.</p>

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/sharded-pool.jpg)

### 5.6. Credible Oracle Set
<p>Because the subjectivity of smart contracts deployed on the Blockchain network is reflected in the access to In-chain data, the Out-chain data can only be passively accepted. Therefore, we need a trusted entity——Oracle to complete the input of honest data. The Oracle is a bridge between the Blockchain and the real world. It provides an accurate, immutable, stable and auditable data query interface. A general process of acquiring Out- chain data in a Blockchain system: Smart contracts can obtain and input data from a data source outside the chain at a predetermined time or through an event trigger, and then the smart contract takes a preset action in accordance with the acquired data. However, the realization of the process needs to resolve two key issues: 1) Consensus; 2) Credit Receiver.</p>

<p>The GEB network uses reputation system and mobile service mechanism to solve the above problems. Firstly, we select N Oracles to form a hybrid network and establish a 1: M relationship between a single Oracle and a data source in the network. Secondly, a reputation system is respectively arranged on the data source and the Oracle, and a double-layer safeguard mechanism is formed for the trust input. Finally, according to the data source and the credit accumulation of the multiple workflow of the Oracle, the mobile service is carried out so as to form forward feedback to improve the efficiency of data query and data input.</p>

![img](https://raw.githubusercontent.com/gebnetwork/DAICO/master/whitepaper/images/data-feed.jpg)

<p>Both the Oracle network and the data source are dynamic, and it is the basis for realizing the mobile service. Each Oracle contract instance needs to be registered in the GEB Network and populated with target data keywords, fees, margin thresholds, participation thresholds, and so on. When you need to get out-of-chain data, the GEB Network formally tries to match the demand side and the Oracle based on the contract instance content and composes the Oracle network through pledging GEB Token after matching successfully. In the consensus phase, check whether the quantity of Oracles reaching a consensus meets the preset value in the Oracle contract instance, and if it is in conformity, then conduct Data Feed and distribute the bounty; If not, then the Data Feed process is blocked and all Oracles retry the process that has not exceeding the limited K times to obtain data from the data source and the process of the consensus. In the process of retry, Oracle has the right to update the data source and maintain a list of data source credit integration updates to improve the query efficiency. If a consensus cannot be reached after a limited number of K retries, it is dealt with in the following cases:</p>

<p><b>The pre-set conditions, the number of the Oracle network nodes N, the preset value of the consensus node number C, where C satisfies:</b></p>

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;![](https://latex.codecogs.com/gif.latex?N*%5Cfrac%7B2%7D%7B3%7D&plus;1%5Cleq%20C%5Cleq%20N)

1. When the number of actual consensus nodes is N/2 <C'<C, N-C' no consensus node lose reputation point and security deposit, and actively update the list of data source credit integration maintained by itself.<br />
2. When the number of actual consensus nodes is N/3 <=C'<=N/2, all Oracle network nodes lose the reputation point and actively update the list of data source credit integration maintained by itself.<br />
3. When the number of actual consensus nodes is C'<N/3, all Oracle network nodes lose reputation point and security deposit, and actively update the list of data source credit integration maintained by itself, and the whole Oracle network shuffles and recombines.<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/oracle.jpg)

<p>The following describes the attributes that Oracle contracts need to include but are not limited to:</p>

| Field       |  Type  | Description                              |
| ----------- | :----: | :--------------------------------------- |
| charge      | uint64 | Service charge, bounty.                  |
| deposit     | uint64 | Prevent Oracle Nodes from doing evil.    |
| reputation  | uint32 | The credit threshold for participating in Oracles network. |
| sourceType  | string | Keywords for reducing search scope and improving query efficiency.eg:"chaindata,UML". |
| oracleCount | uint8  | Expected number of Oracle.               |
| agreeCount  | uint8  | The number of Oracle reaching a consensus. |
| threshold   | uint32 | Comprehensive assessment of Oracle and the list of data sources it maintains. |

### 5.7. GEB Open Source Software
<p>The GEB team will provide but is not limited to the following software in the future:</p>

- Trading market node software
- Trading market DApp
- H5 trading market plug-in
- Jury arbitration software

<br /><br />
## 6. Protocol Safety Analysis

### 6.1. Fiat Currency Transfer Risk
<p>The OTC and collateral lending in the GEB Network have realized the conversion between Token and fiat currency. Therefore, it’s a problem that mismatch between the irreversibility of the Blockchain encryption assets transfer and retractability of many methods of fiat currency payment we often considered when performing a transaction. Common payment methods and their transaction reversibility are as follows:</p>

| Payment Method      | Currencies            | Reversibility of Transactions            |
| :------------------ | :-------------------- | :--------------------------------------- |
| PayPal - regular    | Most world currencies | Extremely easy to charge back. Also, since trading bitcoin is against their ToS, good luck disputing the chargeback. |
| Paypal - personal   | Most world currencies | If funded via bank, requires person to dispute the ACH, which may be more arduous. If funded via credit card, requires person to dispute the CC charge, which is pretty easy. Since there's no way to tell what the funding source was... it's a gamble. Also, if paypal account is reported stolen, paypal will probably attempt to claw back the money. |
| AliPay / Wechat Pay | CNY                   | There are reports of reversed AliPay payments can be found on the Internet. |
| Dwolla              | USD                   | Since Dwolla amounts are funded via ACH, Dwolla will now reverse payments if the funds were the result of fraud. Additionally, Dwolla's Terms and Conditions now state that peyments received are subject to chargebacks as the result of their internal dispute resolution process. |
| Credit / Debit card | Any currency          | Extremely easy to charge back.           |

<p>In response to this mismatch, the GEB Foundation will make relevant requirements for the payment methods of the fiat currency supported by the certified dealers, and must choose payment methods with irreversibility of transactions (such as Bank wire, MoneyPak, Webmoney, LavaPay, OKPay, etc)that are compliant with regional laws and regulations, to match the characteristics of Blockchain asset transfer to achieve a broad degree of transactional atomicity and prevent fraud and other risks.</p>

### 6.2. Oracle Attack
<p>The effective contract operations under the GEB protocol are reflected to the changes of the global state of Ethereum Blockchain, namely APPLY (S, TX) - > S '. and protocol stack is composed of a set or several sets of stateful contracts, and a non-correct (false data, disorder, etc) input will make the unintended results permanently written into the account books. Input and output with dependence on forward and backward states mean to have orderliness and logical, which put high demands on the robustness of the contract procedure and the correctness of the input. Contract writing needs our careful thinking, good coding habits and detailed audit work. Data input needs to ensure that data source is reliable. In the GEB Network, for data source access and preventing the Oracle nodes from evilly cooperating with each other, we set the application-level consensus, reputation systems, mortgage bond liquidity services and other mechanisms. When the matching demand is to feed prices from the external market, we must consider the fluctuation of prices and the timeliness of transactions. A limited K retries without a consensus among Oracles could become an attack point. We will ensure the security of the system according to multiple factors such as traffic monitoring, design the dynamic adjustment strategy for K value and combine with the processing mode of culling the maximum and minimum data and then taking the mean to feed prices. In addition, for a specific external data input we also set up encryption and decryption Oracles to protect the data and promote the safety of the system.</p>

### 6.3. Middleman Attack
<p>A middleman attack occurs primarily in the process of communicating between the user and the server. In the GEB network, there are shared liquidity pools of distributed cluster services and decentralized juror networks. In that cluster of shared liquidity pool, the exchange needs to communicate directly with the service node, in normal case the content is encrypted under the TLS connection, and the third party cannot decrypt even if all the data can be detected. But the third party, that is, the middleman can establish a connection with the exchange, and then the middleman establishes a connection with the service node and forwards the content between them. At this time, the middleman can decrypt and obtain the plaintext information and modify it. If the middleman intercepts a shared order issued by the exchange, forwarding it to the service node after being tampered with will cause a large number of garbage transactions to be filled in the shared liquidity pool, so that other exchanges may acquire a large number of invalid shared orders. Thus, the GEB Foundation will defend against such attacks by issuing certificates to certified cluster nodes based on their DID through DAO. In the juror network, we have adopted the content push-and-pull split design so that the user does not interact directly with the jury network. Instead, the content of the evidence is hashed On-chain and stored through the PageSigner or other methods, and the juror actively reviews the evidence, thus preventing the middleman attack.</p>

### 6.4. Sybil or Denial of Service Attack
<p>Disguising multiple nodes to perform a malicious activity is a Sybil attack, which causes an attacker to withstand the false data of the multi-party camouflage nodes. A denial of service attack is an attacker trying to stop the target machine from providing services. Sybil and DOS attack models can often be combined. For example, only 20 witch nodes are needed, DOS can completely attack the database of a P2P oracles to take it offline, and can also archive all traffic on the network. There exists a dependency relationship of the security between the GEB network and the Ethereum Blockchain. One of the purposes of the workload proof in the Ethereum is to make the creation of the block difficult, thereby preventing the witch attacker from malicious re-generating block chains. In the GEB protocol ecosystem, the jurors, traders, and the shared liquidity pool cluster nodes undergo decentralized identity authentication. There is no attacker who can broadcast multiple identity IDs to the network to act as a plurality of different nodes by only deploying one entity. In addition, the DDOS attacks on shared liquidity pools can be defended with solutions such as spider systems.</p>

<p>It is also worth noting that in the context of mortgage loan, the role of the witch attacker may be played by the lender due to the presence and floating of mortgage loan rate. The intention of the attacker is to use a large number of fraudulent identities to initiate mortgage loan orders according to the mortgage loan rate and the analysis of market conditions. After the transaction, all of them are in default or intentionally overdue to make profits. GEB protocol at this stage, however, is designed to be secured debt, even if the attack is successful, the gains are minimal. Besides, our requirement is that all the debt/creditors require decentralized identity authentication, so do not have conditions to initiate the witch attack.</p>

### 6.5. Penny-Spend Attack
<p>Penny-spend attack refers to a waste of node’s storage resources via sending a huge number of small-value transactions or an interest arbitrage strategy for defrauding GEB Token by attackers. Under the mode “Off-Chain Ordering and On-Chain Settlement” based on GEB protocol, consolidating orders in the preceding settlement of transactions is an effective precautionary measure in case of attack caused by zero-cost discretionary order (In practice, this is a common business mode in tradition centralized transaction). However, the exchange itself probably want to pollute shared liquidity pool via sending a huge number of invalid shared orders; in response, we can trace the source of shared order according to its DID/originExAddr, monitor malicious behavior in the cluster service, and submit application for accreditation disqualification and cash deposit confiscation if malicious behavior is convicted. What’s more, to avoid the situation of gaining GEB Token in exchange via scalping transaction volume, the avoidable measure is verifying the legitimacy of transaction by Ethereum miner due to its commission charge is happened after on-chain settlement.</p>

### 6.6. Confidence Attack
<p>Confidence attack refers to the attackers’ taking advantage of typical human features such as greed, dishonesty, vanity, opportunism, desire, sympathy, gullibility, irresponsibility, despair and innocence to scam the target. However, the reflection of confidence attacks in the GEB network is mainly characterized by the fact that an attacker has acquired relevant information of the counterpart, and analyzes the data to learn about its vulnerability. Firstly, the trust cheating is obtained. (An attacker usually establishes a sample database and carries out cluster analysis in order to carry out the attack. After obtaining information, the corresponding attack means can be quickly adopted though only matching with the oracles), and the transaction between the two parties can be completed in the scene which is separated from the GEB protocol through the guidance mode. In order to protect against such attacks, we require traders to present risk warnings such as "Do not transfer transactions outside the GEB Network” on the provided transaction tools. In addition, in the case of the system itself, we have designed a decentralized identity authentication mechanism with a high degree of privacy protection. It is difficult for an attacker to obtain the target privacy data in the GEB network. At the same time, we also encourage the users to pay attention to the reasonable maintenance of the weak correlation between their own capital account addresses and the social attribute App, and to promote the self-privacy protection consciousness.</p>

### 6.7. Code Audit for Smart Contract
<p>Looking back on the DAO event on June 17, 2016, the bug of Parity multi-signature contract on November 6, 2017, and the recent SMT, BEC contract integer overflow vulnerability events, etc., all contributed to financial losses. Without strict code auditing and safety protection, ecological construction becomes a blank paper. Therefore, all contract codes of the GEB network will be reviewed and fully tested through professional smart contract security audit institutions and the test report and related materials will also be submitted.</p>

<p>In view of the upgrade of the protocol, some components of the GEB Network are likely to be built on the Zeppelin_OS. Zeppelin_OS is a decentralised platform for securely building and managing a smart contract application for EVM ecosystem. It is equipped with a security mechanism to manage and upgrade the contract code, while also providing a toolbox for attack response to prevent attacks. When an attack is encountered, Zeppelin_OS will be triggered an emergency pause to recover to the previously unaffected state.</p>

<p>We believe that a series of rigorous and detailed research and development work will be able to protect the ecological construction road of the GEB Network.</p>

<br /><br />
## 7. Market Analysis
### 7.1. The Present Market Situation of Cryptocurrency
<p>According to CoinMarketCap’s research, in September 2017, the average daily trading volume of the cryptocurrency has exceeded $4 billion, and the total market value of the cryptocurrency market has exceeded $13 billion. However, the cryptocurrency market is still small compared with the global legal currency transactions. For example, the trading volume of the global foreign exchange market assessed by the BIS is $5.1 trillion. It is probable that the similar trading volume with the foreign exchange market will be achieved within the next three years according to the current growth rate of the cryptocurrency. Because we will soon live in a reality dominated by digital currency.</p>

<p>In terms of market response and data, the cryptocurrency market in 2017 has reached the size that the government cannot ignore. As a result, an increasing number of countries will recognize the cryptocurrency and carry out relevant regulations and legislation. It is clear that the cryptocurrency has a huge potential of development in the future.</p>

### 7.2. Attitudes from Countries about Blockchain
<p>In general, most countries hold a welcome attitude towards cryptocurrency and Blockchain technologies, and attempt to promote the application of cryptocurrency and to explore and innovate technology:</p>

- **China: Although China is currently keeping a conservative attitude towards the exchange of cryptocurrency, it has never stopped the research of the underlying technology of the Blockchain at the government level.**

<p>In February, 2016, Zhou Xiaochuan, the central bank governor of China, stated that the digital currency must be issued by the central bank, and the Blockchain has become an optional technology for the development of digital currency.</p>

<p>In December, 2016, the country put the Blockchain in the 13th National Five-Year Informatization Plan.</p>

<p>In October, 2016, the MIIT released the 2016 China Blockchain Technology and Application Development White Paper.</p>

<p>In September, 2017, ICO is an unauthorized illegal public financing act, which jointly determined by the People's Bank of China and other seven ministries. It is suspected of illegally selling token tickets, illegally issuing securities, and illegally raising funds, financial fraud and pyramid schemes.</p>

- **Russia: Russia's attitude is more complex, and Russia has banned citizens from holding and trading Bitcoin, but it's very popular for Blockchain technology.**

<p>In June, 2017, Russian President Vladimir Putin met the founder of the Ethereum, Vitalik Buterin.</p>

<p>In August, 2017, Russia's National Development Bank o and the Ethereum Foundation have reached strategic cooperation.</p>

- **South Korea: South Korea is supporting the Blockchain at present, and has strengthened supervision over digital assets such as Bitcoin and Ethereum.**

<p>In February, 2016, South Korea's Central Bank proposed to encourage exploration of Blockchain technology in the report.</p>

<p>In September, 2017, South Korea FSC announced how to regulate digital currencies, such as Bitcoin and ether. South Korea has stepped up its regulation to investigate illegal trade in money-laundering, illicit financing and other digital currencies.</p>

- **India: India, as a country with great population and powerful software development, has always attached importance to the application of Blockchain technology.**

<p>In January, 2017, India's Central Bank issued a comprehensive Blockchain white paper, arguing that the time for the Blockchain to launch digital currencies in India was ripe.</p>

<p>In June, 2017, the Government Committee of India announced its support for the establishment of a dedicated task group to regulate Bitcoin, and the creation of regulatory framework plans to fully complete the legalization of Bitcoin in a short time.</p>

- **Australia: Australia pays more attention to the application of Blockchain technology and the formulation of standards.**

<p>In April, 2016, Australian Bureau of Standards ed for the formulation of global ISO Blockchain standards.</p>

<p>In March 2017, the Australian National Bureau of Standards issued a route map for the development of conceptual standards for the international community in line with the tasks assigned by ISO.</p>

<p>In August, 2017, Australian Government announced the incorporation of digital currencies and exchanges in the regulation of Australia Transaction Data Analysis Center. The Australian stock exchanges and other institutions are using Blockchain technology to conduct transactions.</p>

- **UK: Britain is the first country in Europe to conduct research and validation of the Blockchain.**

<p>On January 19, 2016, the UK government took the lead in publishing the 88-page white paper Distributed Ledger Technology: Beyond the Blockchain, while actively assessing the potential of Blockchain technology, considering that it will be used in the field of reducing financial fraud and reducing costs.</p>

<p>In March, 2016, ECB publicly announced in this consulting report The future vision of the euro system —— The future of European financial market infrastructure that it is exploring ways to use Blockchain technology for its own use.</p>

- **Netherlands: The Dutch Central Bank issued a view that Blockchain technology could improve its financial business quality.**

<p>In September, 2016, a Blockchain park was established in the Netherlands, and banks and financial companies were cooperating to develop the application of Blockchain technology in the field of payment and general finance.</p>

- **Germany: Germany will seize the opportunity and meet the challenges under the new situation of the Blockchain.**

<p>In November, 2016, Deutsche Bundesbank and Frankfurt School of Financial Management jointly convened a conference of Blockchain technology opportunities and challenges. The main purpose of the conference is to research the potential application of distributed Ledger, including cross-border payment, cross-bank transfers and the storage of trade data, etc.
</p>

- **USA: USA supports the development of Blockchain through legislation.**

<p>In June, 2014, the governor of California, USA, signed a legal document numbered AB129 to protect the legalization of the California Bitcoin and other digital currency transactions.</p>

<p>In June, 2016, and USA Department of Homeland Security subsidized six development companies that are dedicated to government management applications.</p>

<p>In February, 2017, Arizona, USA, passed Blockchain Signature and Smart Contract Legitimacy Act. In the same month, ONC, the USA healthcare department, was developing a marathon using health-care hackers to apply Blockchain technology to health care. The USA Congress announced the establishment of the Congress Blockchain decision-making committee and recognized the potential of Blockchain and ed for the application of Blockchain technology in the public sector, while attitudes towards Bitcoin, USA were also encouraged to invest and enforce strict supervision.</p>

<p>In July, 2017, the SEC determined that the Ethereum token belongs to the securities, and the issuer shall handle the registration of securities issuance in accordance with the law. In the same month, the CFTC approved LedgerX to provide a liquidation service with an option and derivatives linked to the cryptocurrency market.</p>

- **Japan: Japan has a very positive attitude. Japan's Central Bank is trying some Blockchain projects, which is largely based on the application of digital assets such as Bitcoin.**

<p>In March, 2016, the Japanese Cabinet voted for Bitcoin and digital currency as digital equivalent currencies.</p>

<p>On April 1, 2017, Japan implemented The Payment Services Act and formally recognized that Bitcoin is a legal means of payment and provides clear regulatory requirements for the digital asset exchanges.</p>

<p>In July, 2017, Japan's new consumption tax officially took effect, and Bitcoin transactions would no longer need to pay 8% consumption tax.</p>

- **Singapore: Singapore is a fertile soil for Blockchain. The country’s Prime Minister, Li Xianlong, publicly urged the Singapore financial sectors to keep pace with the development of Blockchain technology. As a result, Singapore is far more open to regulatory policies of Blockchain securities financial innovation than other Asian countries.**

<p>In June,2016, Singapore's Monetary Authority, has launched Sandbox mechanism, which allows the business to be engaged in conflict with existing laws and regulations as long as any financial science and technology company registered under the law has been reported in advance, even if the related business is later officially terminated, the relevant legal responsibilities are not pursued.. Through this Sandbox mechanism, the Singapore government is able to encourage enterprises to carry out various financial innovation of Blockchain within a controlled range.</p>

<p>According to the above analysis, the GEB team will strictly abide by the relevant policies and regulations of all countries in the world when issuing tokens in the future, and begin to develop from Singapore with relatively open digital monetary policy to other countries.</p>

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/world.jpg)

### 7.3. SWOT Analysis

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/swot-en.jpg)

<br /><br />
## 8. Roadmap

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/roadmap-horizontal.jpg)

<div class="tg-wrap"><table>
  <tr>
    <td rowspan="3">Gödel</td>
    <td rowspan="3">2018.Q2</td>
    <td>Publish the White Paper.</td>
  </tr>
  <tr>
    <td>Official Website of GEB Network came to be launched.</td>
  </tr>
  <tr>
    <td>Start the global community operations, including USA, China, Canada, Australia, Russia, etc.</td>
  </tr>
  <tr>
    <td rowspan="6">Escher</td>
    <td rowspan="4">2018.Q3</td>
    <td>Open dealer application.</td>
  </tr>
  <tr>
    <td>DAICO startup.</td>
  </tr>
  <tr>
    <td>GEB Token on-line exchange.</td>
  </tr>
  <tr>
    <td>Smart contract exploitation.</td>
  </tr>
  <tr>
    <td rowspan="2">2018.Q4</td>
    <td>Platform Software exploitation.</td>
  </tr>
  <tr>
    <td>Publish the internal testing version of the GEB Protocol.</td>
  </tr>
  <tr>
    <td rowspan="3">Bach</td>
    <td rowspan="3">2019.Q1</td>
    <td>At least 10 GEB certified exchanges to be online.</td>
  </tr>
  <tr>
    <td>Publish the public testing version of the GEB protocol, and platform open source.</td>
  </tr>
  <tr>
    <td>Official Exchanges try running and simulate transactions.</td>
  </tr>
  <tr>
    <td rowspan="3">Tao</td>
    <td rowspan="3">2019.Q2</td>
    <td>Main network of GEB Network is to be online.</td>
  </tr>
  <tr>
    <td>Official exchange of GEB is to be formally operating.</td>
  </tr>
  <tr>
    <td>Establishment of GEB Network North America and Europe Offices to expand global business.</td>
  </tr>
</table></div>

<br /><br />
## 9. Team Introduction

- Foundation Chairman & CSO: Wei Zhu

<p>Wei Zhu, bachelor of science in microelectronics of Fudan University and a practitioner with 10-odd-year experience in R&D and management in the Internet technology industry, preacher of Blockchain and artificial intelligence well as a growth hacker and lifelong learner. Zhu has founded Xinpu IT Consulting Firm, which is one of the earliest enterprises providing blockchain technology consulting services. He has successively held the posts of chief architect at Qihoo 360 in charging of WiFi business and technical director of DeNA China in charging of R&D management of 100 million level user products. Zhu is the pioneer of technological innovation advocating the restructuring of the Internet infrastructure from the protocol layer. He is lucubrating and sharply observing into the theory of Blockchain, distributed computing, event tracing, Turing calculation, deep learner and so on.</p>

- CEO: Ching Zhu

<p>Ching Zhu, a gainer of the Honors Outstanding Students from UESTC, is the founder of the ChainBoard Technology. Ching held the post of technical director of a famous fintech company ICE KREDIT in charging of designing and leading the R&D for integrated platform of risk management and big data-based credit platform. She has accumulated rich experience in the design of credit investigation and financial risk management on internet and the R&D for architecture design of microservice system. In 2016, Ching began to lead the team to master and successfully developed the blockchain-based industry application, and participate in the operation of the Blockchain project in a listed company. She has served as a special technical consultant to provide consultation service on architecture and design to a number of listed companies and has served as a lecturer to share keynote speeches at several well-known technical forums.</p>

- CTO: Jeremy Lan

<p>Jeremy Lan, a senior Blockchain engineer, is the co-founder and CTO of Hardrole. He is interested in logic and strategic research and is abundant with experience in internet practice and deep technical insight. Jeremy has held the post of principal of a well-known artificial intelligence company Hiscene in charging of cloud architecture design and product development. With years of striving in the blockchain field, Jeremy is familiar with the underlying technology of Blockchain, multi-currency digital wallet and exchange, as well as all kinds of safety protection. In addition, Jeremy is also a member of Core Team participating in Metaverse Blockchain. Currently, he commit himself to actively explore and solve problems in projects, such as scalability of Blockchain and the ordering scheme of DAG partial sequence network.</p>


- COO: Yuanfei Zhu

<p>Yuanfei Zhu, recommend him for admission to Shanghai Jiao Tong University as one of top students majoring in computer science and technology with excellent performance in the computer/physics competition during his senior high school. He has founded Moregg during his suspension of schooling, and thus gained a lot of achievements from nothing to something while achieving outstanding result. After his graduation, he mainly engaged in the work of algorithm for big data in situations of online advertising, marketing and security and for machine learning in Silicon Valley, and and is abundant with rich experience in  data analysis and operation experience at Yahoo. Since participating in Blockchain project development in 2016 as an early developer of Ethereum, he has pursued the bottom technology of the Blockchain and has participated in the high-performance exchange architecture design, operated the ico delegated investment platform Beico, and successfully completed a series of smart contracts-based projects such as ENS. In 2017, he established Satori in Singapore and managing a professional team providing world-class services such as overseas compliance for funds and foundations. The partners have served and estanlished cooperative relationship with IOST, ZJL, TNC, etc.</p>

- CFO: Chun Jiang

<p>Chun Jiang, bachelor of Fudan University and master in International Trade and Economics from Duke University. Jiang once held the post of a financial analyst of Morgan Stanley in London, and served in the World Bank engaging in global value chain research for analyzing the impact of China's economic and financial policies on industrial chain upgrading and globalization.</p>

- Overseas Market Operation Officer: Amira Zhou

<p>Amira Zhou, practitioner with seven-year experience in business negotiation and project management in overseas markets, once held the post of the principal in charging of overseas market business in a well-known vehicle networking company Dina Technology. Her contribution in achieving cooperation with ten million level operator in Malaysia has created a pioneer practice that domestic vehicle networking companies provide overseas operators with integrated solutions including the car networking big data platform and hardware. Also, she has held the post of a senior English interpreter serving as a simultaneous interpreter at the Shanghai G20 Finance Ministers' Meeting. Currently, she focuses on industry research and market operations related with cryptocurrency investment and Blockchain based on her extensive experience in overseas business and project operations.</p>


<br /><br />
## 10. Advisors

- Benjamin Gu

<p>Benjamin Gu, mmaster on business administration from University of Texas, master from University of Notre Dame, master of China University of Science and Technology, and bachelor of Shandong University. Benjamin is currently holding the posts of chief strategy officer and Chairman of the foundation of DAEX. He has held the post of Deputy Chief Information Technology Officer of Huatai United Securities and Chief Operating Officer of several financial services companies. He has accumulated rich working experience in senior management and R&D in the well-known Internet finance companies in both China and the United States. Also, Benjamin previously held a post of principal in charging of the development and operation of ENCORE, sole clearing system for the US options trading market in the U.S. Options Clearing Company.</p>

- Yang Zhao

<p>Yang Zhao, ex-president of E Surfing Credit Investigation of China Telecom, is currently holding the post of Chief Operating Officer of Shanghai Xinyan Credit Investigation Service Co., Ltd. Zhao has accumulated years’ experience in applying data from telecom operators to credit investigation and risk management. Now, he is leading a professional team to co-establish Xinyan concentrating on big data-based credit investigation. With their professional products and high quality services, Xinyan has thrived in the market.</p>

- Yanpeng Lv

<p>Yanpeng Lv, a graduate from USTC, is currently holding the post of chief architecture officer of Jiedaibao platform of JD Capital. Lv published many essays on artificial intelligence in journals, many of them were cited many times and have influence on artificial intelligence research. He has held the post of principal of 360 Mobile Assistant in charging of business promotion and App marketing service for 1000-million-yuan users. During his tenure, the recommended algorithm developed by him can exactly match users’ demand so that 20 percent more download speed has been gained by users. With his years’ experience on payment sector and his original understanding on loan transaction, Lv is in charging of R&D on the core system for loan and finance business, and deeply explaining for the proper framework caused by policy change on Depository. With his effort, the upgrade of depository system is finished.</p>

<br /><br />
## 11. References
[1] W3C. JSON-LD 1.0, https://www.w3.org/TR/json-ld/, 2014.<br />
[2] Jorge Izquierdo. The new operating system for protocols and DApps, https://blog.aragon.one/introducing-aragonos-3-0-alpha-the-new-operating-system-for-protocols-and-dapps-348f7ac92cff, 2018.<br />
[3] BitcoinWiki. Payment methods, https://en.bitcoin.it/wiki/Payment_methods, 2016.<br />
[4] Joseph Poon, Thaddeus Dryja. The Bitcoin Lightning Network: Scalable Off-Chain Instant Payments, 2016.<br />
[5] Vitalik Buterin. A Next-Generation Smart Contract and Decentralized Application Platform, https://github.com/ethereum/wiki/wiki/White-Paper, 2014.<br />
[6] Vitalik Buterin. Explanation of DAICOs, https://ethresear.ch/t/explanation-of-daicos/465, 2018.<br />
[7] Vitalik Buterin. On Medium-of-Exchange Token Valuations, https://vitalik.ca/general/2017/10/17/moe.html, 2017.<br />
[8] Conner Fromknecht. Connecting Blockchains: Instant Cross-Chain Transactions On Lightning, https://blog.lightning.engineering/announcement/2017/11/16/ln-swap.html, 2017.<br />
[9] Alex Evans. On Value, Velocity and Monetary Theory, https://medium.com/blockchannel/on-value-velocity-and-monetary-theory-a-new-approach-to-cryptoasset-valuations-32c9b22e3b6f, 2018.<br />
[10] Matus Lestan, Joe Urgo, Alexander Khoriaty. district0x Network: A cooperative of decentralized marketplaces and communities, 2017.<br />
[11] Shiliang Huang. Refusal of payment arbitrage attack -- An attack technique in OTC transactions and precautions for it, https://mp.weixin.qq.com/s?__biz=MzIxNTA0NDQzMA==&mid=2651798518&idx=1&sn=4e91bac98cea5bc600e8429f1af3a728, 2017.<br />
[12] RSK Labs. Sidechains, Drivechains, and RSK 2-Way peg Design, https://www.rsk.co/blog/sidechains-drivechains-and-rsk-2-way-peg-design, 2017.<br />
