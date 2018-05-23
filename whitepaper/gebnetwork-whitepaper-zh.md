# <h1 align="center">GEB Network</h1>

## <h2 align="center">去中心化的抵押借贷及OTC交易协议</h2>

## <h3 align="center">摘要</h3>
&emsp;&emsp;我们描述了一种基于以太坊区块链的去中心化的抵押借贷及OTC交易协议。该协议会成为构建一个全球性的点对点抵押借贷及OTC交易网络的开放标准和基石，为基于该协议构建的DApp提供了可靠的互操作性。任何DApp都可以通过内嵌一系列免费，公开的以太坊智能合约模板来执行抵押借贷及OTC交易。基于该协议构建的DApp可以建立自己的流动性池，也可以从共享的流动性池中获取交易订单，并通过撮合交易收取手续费获利。一个分散的陪审员网络将被用于仲裁可能出现的交易纠纷，并通过代币经济激励保证网络的公正性。该协议保证了不偏袒协议的任何一方，协议本身不收取任何费用。一个去中心化自治组织（DAO）将负责管理协议的升级并确保协议的安全性和兼容性。<br />

#### 目录
- [1. GEB Network简介](#1-geb-network简介)
    - [1.1. 背景介绍](#11-背景介绍)
    - [1.2. 什么是 GEB Network](#12-什么是-geb-network)
    - [1.3. GEB Network的主要特点](#13-geb-network的主要特点)
    - [1.4. GEB Network的商业模式](#14-geb-network的商业模式)
- [2. 现有方案的问题](#2-现有方案的问题)
    - [2.1. 线下交易](#21-线下交易)
    - [2.2. 中心化的OTC交易所](#22-中心化的otc交易所)
    - [2.3. 中心化的抵押贷款机构](#23-中心化的抵押贷款机构)
    - [2.4. GEB协议的优势](#24-geb协议的优势)
        - [2.4.1. 对协议参与者](#241-对协议参与者)
        - [2.4.2. 竞争对手比较](#242-竞争对手比较)
- [3. GEB协议详述](#3-geb协议详述)
    - [3.1. 协议流程](#31-协议流程)
        - [3.1.1. OTC交易协议](#311-otc交易协议)
        - [3.1.2. 抵押借贷协议](#312-抵押借贷协议)
    - [3.2. 交易订单格式](#32-交易订单格式)
        - [3.2.1. OTC交易订单](#321-otc交易订单)
        - [3.2.2. 抵押贷款交易订单](#322-抵押贷款交易订单)
    - [3.3. 价格、利率、清算与保护机制](#33-价格利率清算与保护机制)
    - [3.4. 黑天鹅事件](#34-黑天鹅事件)
    - [3.5. 智能合约技术](#35-智能合约技术)
        - [3.5.1. 签名认证](#351-签名认证)
        - [3.5.2. 时间锁定](#352-时间锁定)
        - [3.5.3. 填充和部分填充订单](#353-填充和部分填充订单)
        - [3.5.4. 过期时间](#354-过期时间)
        - [3.5.5. 取消订单](#355-取消订单)
        - [3.5.6. WETH合约](#356-weth合约)
    - [3.6. 非以太坊加密货币兼容](#36-非以太坊加密货币兼容)
        - [3.6.1. 双向挂钩（2-way peg）技术（当前方案）](#361-双向挂钩2-way-peg技术当前方案)
        - [3.6.2. 闪电原子交换（Lighting atomic swap）技术（演进方案）](#362-闪电原子交换lighting-atomic-swap技术演进方案)
- [4. GEB协议代币](#4-geb协议代币)
    - [4.1. GEB代币经济模型](#41-geb代币经济模型)
    - [4.2. GEB代币用例](#42-geb代币用例)
    - [4.3. GEB代币增发](#43-geb代币增发)
    - [4.4. Aragon DAO治理](#44-aragon-dao治理)
    - [4.5. 首次代币发行](#45-首次代币发行)
        - [4.5.1. 代币发行计划——DAICO](#451-代币发行计划daico)
        - [4.5.2. 代币分配计划](#452-代币分配计划)
        - [4.5.3. 资金取款](#453-资金取款)
    - [4.5. GEB投资基金](#45-geb投资基金)
- [5. GEB协议生态](#5-geb协议生态)
    - [5.1. GEB Network整体架构](#51-geb-network整体架构)
    - [5.2. 陪审员网络](#52-陪审员网络)
        - [5.2.1 陪审员申请](#521-陪审员申请)
        - [5.2.2 仲裁流程](#522-仲裁流程)
        - [5.2.3 经济激励与保证金](#523-经济激励与保证金)
        - [5.2.4 退出机制](#524-退出机制)
    - [5.3. 交易商网络](#53-交易商网络)
    - [5.4. 去中心化身份认证](#54-去中心化身份认证)
        - [5.4.1 DID与DID文档](#541-did与did文档)
        - [5.4.2 GEB Connect](#542-geb-connect)
    - [5.5. 共享流动性池](#55-共享流动性池)
        - [5.5.1 共享订单](#551-共享订单)
        - [5.5.2 微服务与集群](#552-微服务与集群)
    - [5.6. 可信预言机集合](#56-可信预言机集合)
    - [5.7. GEB开源软件](#57-geb开源软件)
- [6. 协议安全分析](#6-协议安全分析)
    - [6.1. 法币转移风险](#61-法币转移风险)
    - [6.2. 预言机攻击](#62-预言机攻击)
    - [6.3. 中间人攻击](#63-中间人攻击)
    - [6.4. 女巫攻击或拒绝服务攻击](#64-女巫攻击或拒绝服务攻击)
    - [6.5. Penny-Spend 攻击](#65-penny-spend-攻击)
    - [6.6. 信心攻击](#66-信心攻击)
    - [6.7. 智能合约代码审核](#67-智能合约代码审核)
- [7. 市场分析](#7-市场分析)
    - [7.1. 加密货币市场现状](#71-加密货币市场现状)
    - [7.2. 世界各国对区块链的态度](#72-世界各国对区块链的态度)
    - [7.3. SWOT分析](#73-swot分析)
- [8. 路线图](#8-路线图)
- [9. 团队介绍](#9-团队介绍)
- [10. 参考文献](#10-参考文献)

## 1. GEB Network简介

### 1.1. 背景介绍
&emsp;&emsp;数字经济正在快速增长。2012年，波士顿咨询集团评估仅G20国家数字经济的潜力为4.2万亿美元。此外，2015年牛津大学经济学系与埃森哲的联合研究得出结论，到2020年，数字经济将为全球国内生产总值贡献1.36万亿美元。数字经济的快速增长增加了对在线支付的需求，而加密货币正在成为日益流行的满足数字经济要求的支付解决方案。<br />
&emsp;&emsp;区块链代表着由去中心化、不可篡改、无需信任等一系列特性所构建的价值传输网络。区块链技术能够在网络中建立点对点之间的可靠信任，使得价值传递过程脱离对中介的依赖，既公开信息又保护隐私，既共同决策又保护个体权益，这种机制提高了价值交互的效率并降低了交易成本。<br />
&emsp;&emsp;今天，世界上已经有数千种加密货币，任何人都可以安全地持有加密货币。但是，在世界的很多地方，加密货币与法币之间的交易依然困难并且成本高昂，这阻碍了加密货币的普及并扭曲了交易价格。目前，加密货币与法币的交易主要通过中心化的OTC交易平台进行。大多数国家缺乏加密货币立法，这意味着此类交易平台不需要获得许可证，也不受监管。因此，用户在此类平台进行交易往往承受了较高的资金安全与隐私泄露风险，与此同时，交易平台有可能操纵交易价格以获取超额利润。<br />
&emsp;&emsp;在Poloniex, Bitfinex等中心化的加密货币交易所，USDT被当作USD的数字替代品进行交易。然而，USDT作为由Tether公司发行的一种中心化的锚定美元的数字货币，长期以来存在诸多严重问题，主要包括：<br />
1. Tether公司可能破产<br />
2. Tether公司开设账户的银行可能破产<br />
3. 银行可能冻结Tether公司的资金<br />
4. Tether公司可能超发USDT<br />
5. 手续费贵，到账速度慢，提现困难<br />
6. Tether公司曾爆出账户被盗的安全问题<br />

&emsp;&emsp;显而易见的是，如果用户能够安全方便地进行加密货币和法币之间的交易，对USDT类的法币的数字替代品的需求将会显著下降。<br />
&emsp;&emsp;加密货币领域另一个显著的问题是没有一个去中心化的服务可以让加密货币持有者安全地通过抵押加密货币借入法币，而这已经成为一个显著的需求，特别是对于持有大量加密货币并对加密货币价格看涨的用户。而全球的法币投资者也在寻找低风险，高收益的投资渠道，他们向来非常青睐有抵押的借贷市场。中心化的抵押贷款服务商经常利用自己的垄断优势获取超额利润，也更容易受到来自市场价格波动，经营管理不善，内部人员贪腐，监管政策变化等因素的影响。此外，对于隐私泄露风险的忧虑也将促使用户向去中心化的服务转移。<br />
&emsp;&emsp;在GEB Network，我们相信交易应该直接在有关各方之间进行，而不需要使用中介，人们应该可以自由地管理自己的资产，而不受第三方的干扰。GEB协议实现了个人之间无需信任第三方进行加密货币和法币的交易和抵押借贷的想法。GEB Network白皮书详细描述了该协议的技术细节，以及我们的后续开发计划。<br />

### 1.2. 什么是 GEB Network
&emsp;&emsp;GEB Network项目的目标是通过GEB协议创建一个去中心的抵押借贷及OTC交易网络。GEB协议允许用户在没有中间人的情况下进行加密货币与法币之间的交易，或者以加密货币作为抵押借入法币，并使用智能合约来防止欺诈行为。加入GEB Network的用户可以从加密货币市场的发展中受益，同时缓解由加密货币价格波动，不诚实的交易商等因素带来的风险。<br />
&emsp;&emsp;GEB Network项目的关键要素是GEB交易市场节点。GEB协议使用一种我们称之为“链下订单中继链上结算”的混合技术实现了交易的效率与安全的平衡。在这种方法中，带加密签名的交易订单是通过链下通道发送的，感兴趣的交易对手可以将一个或多个交易订单注入智能合约中，以便确保使用智能合约完成交易。GEB协议显著降低了做市商的交易摩擦成本，因为交易意图可以通过链下发送，而链上交易只有在价值转移时才会发生。我们通过开放GEB交易市场节点申请和将GEB协议设计为应用程序无关的方式扩展GEB Network。<br />
&emsp;&emsp;GEB Network为交易商和用户提供了显著的优势。GEB交易市场将为用户提供准确的市场数据，以及公平，透明，安全和低费率的OTC交易和抵押借贷服务。每个GEB交易市场节点代表一个独立的商业机构，并将从其提供的各种金融服务中获得收入。我们的使命是促进加密货币社区的健康发展。<br />

### 1.3. GEB Network的主要特点
- 支持加密货币与法币的交易和抵押借贷
- 支持ETH，ERC20，BTC，BCH，未来计划支持更多种加密货币
- 使用代币经济模型构建分布式商业网络
- 用户必须通过KYC才能进行交易
- 交易双方无需信任任何一个第三方中介，交易的安全性通过协议保证
- 交易协议通过一组部署在以太坊上的智能合约（DEX Contract）实现
- 通过带时间锁定的智能合约（Timelock Contract）解决交易对手恶意退出风险
- 仅支持不可逆转的法币转账方式，以最大限度的降低退款风险（参见https://en.bitcoin.it/wiki/Payment_methods）
- 分散的陪审员网络作为主要的交易保护机制
- 限制交易金额（50ETH）以降低整体风险敞口
- 智能合约持有所有交易详情，并由交易双方签名，如有争议，将用作证据
- 通过ethereum-alarm-clock定时调用价格预言机合约，从可信预言机集合（trusted-oracles-set）获取抵押代币实时价格
- 通过强制清算机制解决抵押物价格下跌的风险
- 通过协议代币增发机制解决抵押物价格快速跌破债务金额（来不及强制清算）的风险
- 使用Aragon软件进行去中心化治理
- 使用Zeppelin_OS安全地构建和管理智能合约
- 使用开源许可证（AGPL）发布源代码

### 1.4. GEB Network的商业模式
&emsp;&emsp;GEB Network不是一家公司，而是一个旨在填补加密货币生态系统缺口的开源项目。GEB基金会是由GEB团队于2018年6月在新加坡成立的非盈利机构。设立GEB基金会的目的是保证GEB项目的可持续性，去中心化治理的有效性，募集资金的安全性和透明性，以及协助创业公司在GEB协议上进行开发与商业创新。<br />
&emsp;&emsp;GEB基金会建立了完善的激励机制来推动GEB Network的健康发展，主要包括：<br />
- 交易市场节点需要通过审核并向GEB基金会抵押一定数量的GEB Token作为保证金，交易市场可以通过收取交易手续费获利。
- 陪审员节点需要通过审核并向GEB基金会抵押一定数量的GEB Token作为保证金。每次仲裁结束，裁决结果合理的陪审员会获得代币奖励，裁决结果不合理的陪审员会遭受代币损失（详见5.2.3）。
- 用户使用GEB Token支付OTC交易手续费可以享受50%折扣优惠，优惠部分由GEB Token增发补足。
- 用户使用GEB Token作为抵押物借款可以享受50%的手续费优惠，并且获得更高的抵押率和更低的清算线，优惠部分由GEB Token增发补足。
- GEB Token持有者可以参与GEB协议治理，对协议开发者提出的协议改进提案进行投票。

<br /><br />
## 2. 现有方案的问题

### 2.1. 线下交易
&emsp;&emsp;交易双方通过Facebook，Telegram，微信，QQ等软件约定交易数量，交易价格，交易时间地点，交易没有第三方参与。这种方法一般适用于同城交易，且具有较高的资金安全风险，甚至存在人身安全风险。由于加密货币的匿名性，一旦一方违约，另一方的权益很难得到保障，事后取证和举证更是困难重重。除了个别国家以发放牌照的方式将加密货币交易纳入监管框架，多数国家和地区的加密货币交易都没有法律保护，这也提高了交易者遭遇欺诈风险的概率。<br />

### 2.2. 中心化的OTC交易所
&emsp;&emsp;Localbitcoins，otcbtc，huobi等OTC交易平台向用户提供C2C模式的加密货币/法币交易服务。这是一种类似于Ebay和Taobao的担保交易模式。加密货币出售方在平台上发布出售广告，并将相应数量的加密货币转入交易平台提供的地址。购买方填写并提交购买订单后，需要将法币转入出售方指定的账户。待出售方确认法币到账以后，交易平台将加密货币转入购买方地址。如果交易过程中出现纠纷，由交易平台进行仲裁。<br />
&emsp;&emsp;这种交易方式依赖于对中心化交易平台的信任，而这种模型的脆弱性已经被反复证明（Mt.Gox，CoinCheck，Bithumb等知名交易所均曾被黑客入侵）。具体而言，中心化交易平台对用户存在如下风险：<br />
1. 交易平台破产<br />
2. 交易平台挪用用户资金<br />
3. 交易平台遭受黑客攻击<br />
4. 合规/监管风险<br />
5. 交易平台操纵价格<br />
6. 交易平台垄断市场，收取高额手续费<br />

### 2.3. 中心化的抵押贷款机构
&emsp;&emsp;中心化的抵押贷款机构通常只能服务于特定的地区和人群。在银行等传统机构办理抵押贷款通常流程繁琐，成本高昂，并且充满了不公平和不透明的条款。目前，世界上绝大部分贷款机构还不能接受加密货币作为抵押物。我们希望加密货币持有者能从世界的任何地方获得贷款，而不依赖于当地的银行和抵押贷款机构。<br />
&emsp;&emsp;今天，不平等影响了全球抵押贷款市场，贷款市场受政府货币政策控制，不同的风险水平和法币通胀率造成了国家和地区之间的利率差异。例如，巴西的房地产抵押贷款可能会有32％的年利率（通胀调整），而欧洲的类似贷款可能会有0.5％～5％的年利率。另一方面，通过设置准入门槛和对资金，征信数据，市场渠道等资源的垄断，银行和抵押贷款机构通常在存款人和借款人之间收取高额的利差（中国的信用卡年化利率在20%左右，而同期一年定期存款的利率仅为1.75%）。当区块链技术和抵押贷款市场结合时，真正的革命可能发生。借助GEB Network，抵押贷款市场将对所有贷款人和借款人开放，贷款将不受国界，司法管辖区和银行系统的限制。法币持有者可以安全地向任何人贷款，并获得他们满意的利率。加密货币持有者可以在世界的任何地方方便地获得贷款，并且只需承担低于银行等传统金融机构给出的利率。由于加密货币不受某个国家或地区货币政策的控制，当越来越多的人开始使用GEB Network，越来越多的流动性被注入市场。由于竞争更加激烈，在中国或者欧洲或者非洲，抵押贷款市场都具有相同的流动性，国家和地区之间的利率差异将会消失。
    
### 2.4. GEB协议的优势

#### 2.4.1. 对协议参与者

| 角色     | 优势                              |
| :----- | :------------------------------ |
| OTC交易者 | 随时随地与任何交易对手进行方便，安全，快速，低费用的OTC交易 |
| 借款人    | 通过抵押数字货币，获得低利率的法币贷款             |
| 放贷人    | 获得安全且收益率高于银行利率的法币投资渠道           |
| 交易商    | 维护一个订单簿，并通过促成交易收取手续费获利          |
| 陪审员    | 通过仲裁智能合约无法判断的争议获取代币奖励           |

#### 2.4.2. 竞争对手比较

|           |   ***GEB Network***   |   ETHlend    |      SALT      |     Everex     |     Libra      |   Coinloan   |
| :-------: | :-------------------: | :----------: | :------------: | :------------: | :------------: | :----------: |
|   项目类型    |  ***协议型（P2P交易协议）***   | 平台型（P2P交易平台） |  平台型（P2P交易平台）  | 应用型（中心化抵押贷款机构） | 应用型（中心化抵押贷款机构） | 平台型（P2P交易平台） |
|  去中心化程度   |       ***完全***        |      高       |       中等       |       低        |       低        |      中等      |
|    安全性    |    ***高（智能合约保证）***    |  高（智能合约保证）   |   中等（需要信任平台）   |   中等（需要信任机构）   |   中等（需要信任机构）   |  中等（需要信任平台）  |
|  生态扩张能力   |    ***强（利润分配广泛）***    |      中等      |       中等       |       低        |       低        |      中等      |
|  OTC交易功能  |        ***有***        |      无       |       无        |       无        |       无        |      无       |
| 链下争议 解决方案 |    ***分散的陪审员网络***     |      无       |      精简仲裁      |       无        |       无        |      无       |
|  跨链技术方案   |   ***双向挂钩，闪电原子交换***   |    无明确说明     |     无明确说明      |     无明确说明      |     无明确说明      |    无明确说明     |
|  用户隐私保护   |    ***去中心化身份认证***     |    无明确说明     | 授权获取用户数据，分布式存储 |    授权获取用户数据    |     无明确说明      |    无明确说明     |
| Token升值逻辑 | ***抵押需求，保证金需求，代币回购*** |     抵押需求     |      抵押需求      |      抵押需求      |      抵押需求      |     抵押需求     |

<br /><br />
## 3. GEB协议详述

### 3.1. 协议流程

#### 3.1.1. OTC交易协议
1. Maker和Taker均需要通过Relayer进行KYC。
2. Maker批准DEX contract使用他的账户中的Token A。
3. Maker通过Relayer提供的Dapp创建出售Token A获取法币B的订单，设置好交易数量X，交易价格，法币接收账户和订单过期时间，并用自己的私钥签名。
4. Maker把签名后的订单发送给Relayer。
5. Relayer接收订单并对订单进行校验。如果校验失败，此订单将被拒绝接收；如果校验成功，Relayer将此订单写入自己的订单簿。
6. Taker通过Relayer提供的DApp获取包含了Maker订单的新版本订单簿。
7. Taker填写购买Token A订单，设置买入数量Y(Y≦X)，并向以太坊上DEX contract提交。
8. Maker订单中数量Y的代币被DEX contract锁定，等待Taker付款。
9. Taker在指定的时间范围内向Maker指定的法币接收账户转入法币B。
10. Maker收到法币后，向DEX contract提交交易确认。
11. DEX contract验证Maker签名，订单是否过期，是否已经成交，校验成功后将数量Y的Token A转入Taker账户。

#### 3.1.2. 抵押借贷协议
**借款：**<br />
1. Maker和Taker均需要通过Relayer进行KYC。
2. Maker批准DEX contract使用其账户中的Token A作为抵押物。
3. Maker通过Relayer提供的DApp创建抵押Token A借入法币B的订单，设置好借款金额X，借款方式（目前仅支持到期还本付息），借款时间，年化利率，法币接收账户和订单过期时间，并用自己的私钥签名。
4. Maker把签名后的订单发送给Relayer。
5. Relayer接收订单并对订单进行校验。如果校验失败，此订单将被拒绝接收；如果校验成功，Relayer将此订单写入自己的订单簿。
6. Taker通过Relayer提供的DApp获取包含了Maker订单的新版本订单簿。
7. Taker填写借出法币B订单，设置借出金额Y(Y≦X)，并向以太坊上DEX contract提交。
8. DEX contract向Oracle询问Token A对法币B的比价，并锁定等值于1.5倍借出金额Y的Token A。若Maker账户中的Token A数量不足，则借款失败，该订单被取消。
9. Taker在指定的时间范围内向Maker指定的法币接收账户转入金额Y的法币B。
10. Maker收到法币后，向DEX contract提交交易确认。
11. DEX contract验证Maker签名，订单是否过期，是否已经成交，校验成功后借贷合同生效。

**还款：**<br />
1. 抵押贷款到期后，DEX contract通知Maker还款。
2. Maker在指定的时间内向Taker的法币账户转入应还的本息总额。
3. Taker收到法币后，向DEX contract提交收款确认。
4. DEX contract验证Taker签名，订单是否存在，校验成功后将锁定的抵押代币转入Maker地址。

### 3.2. 交易订单格式
&emsp;&emsp;每个交易订单都是一个包含交易参数和相关签名的数据包。订单参数按key升序排列连接并通过Keccak SHA3函数散列为32个字节。交易订单发布者使用他们的私钥签署交易参数散列以产生ECDSA签名。<br />
&emsp;&emsp;GEB交易所仅负责保存和传播一个订单簿来促进交易信息流动，并对交易收取少量手续费（全网统一，默认1%，交易双方各收取0.5%，费率可由GEB DAO投票表决修改）。和中心化的交易所不同，GEB交易所不托管用户的加密货币，也不代表交易双方执行交易，这意味着交易双方不需要信任GEB交易所的运营者。<br />
&emsp;&emsp;交易所可以选择是否将交易订单放入共享流动性池中。如果交易订单被放入共享流动性池中并在其他交易所成交，那么手续费的70%将被分配给创建订单的交易所，30%被分配给成交订单的交易所。<br />

#### 3.2.1. OTC交易订单

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
    <td>realname</td>
    <td>string</td>
    <td>Realname of maker.</td>
  </tr>
  <tr>
    <td>paychannel</td>
    <td>bytes</td>
    <td>Fiat pay channel (eg. paypal, alipay).</td>
  </tr>
  <tr>
    <td>paydetail</td>
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

feeRecipientA代表默认交易所的收费地址，feeRecipientB代表将订单从共享流动性池中取出的交易所的收费地址。

#### 3.2.2. 抵押贷款交易订单

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
    <td>realname</td>
    <td>string</td>
    <td>Realname of maker.</td>
  </tr>
  <tr>
    <td>paychannel</td>
    <td>bytes</td>
    <td>Fiat pay channel (eg. paypal, alipay).</td>
  </tr>
  <tr>
    <td>paydetail</td>
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

### 3.3. 价格、利率、清算与保护机制
&emsp;&emsp;GEB交易所不能决定OTC交易价格，而只能向交易双方推荐一个当前市场的公允价格，具体成交价格由交易双方共同决定。为了促进流动性，GEB交易所内的OTC交易订单列表将按照价格由低到高的顺序排列。GEB交易所也不能决定抵押贷款利率，利率由借入方自行设定。如果出借方对于借入方给出的利率满意，那么双方将通过智能合约完成交易。为了控制抵押贷款风险，可抵押代币种类，抵押率，强制清算线均由GEB协议开发组统一设置。这些全局设置将保存在一个由GEB基金会部署的以太坊智能合约中，任何一个设置参数的修改均需要DAO投票通过。为了应对突发情况，GEB基金会可选出若干成员组成GEB DAO委员会，委员会中的多数成员确认即可执行某项修改操作。<br />
&emsp;&emsp;在借款期内，使用ethereum-alarm-clock定时调用价格预言机合约，从可信预言机集合（trusted-oracles-set）获取抵押代币实时价格，并通知所有DEX Contract。DEX Contract收到价格通知以后，计算本合约内所有抵押贷款订单的抵押物价值是否低于清算线。如果发现抵押物价值低于清算线，则立即向借款方发送通知，要求其在指定时间内补充抵押物至安全水平。指定时间过后DEX Contract再次计算抵押物价值，如果仍低于清算线则立即自动执行强制清算。清算方法为：计算实时应还的本息总额，将价值等于本息总额105%（至多）的代币转入出借方地址，剩余代币转入借入方地址。<br />
&emsp;&emsp;为了防止多种欺诈和攻击情况，我们使用（不限于）如下的保护机制：<br />
- 用户 - 必须通过KYC才能进行交易
- 交易所 - 必须通过GEB基金会认证，必须抵押保证金
- 陪审员 - 必须通过GEB基金会认证，必须抵押保证金，匿名并随机分配仲裁
- 数字签名订单 - 交易细节不可伪造的证据
- [PageSigner](https://tlsnotary.org/pagesigner.html)证据 - 法币转账不可伪造的证据
- 交易金额限制 - 限制最大交易金额（50ETH）以减少欺诈的潜在收益
- 时间锁定智能合约（Timelock Contract）- 解决交易对手恶意退出风险
- 仅支持不可逆转的法币转账方式，以最大限度的降低退款风险（参见[https://en.bitcoin.it/wiki/Payment_methods](https://en.bitcoin.it/wiki/Payment_methods)）
- 价格观察机制 - 通过ethereum-alarm-clock定时调用价格预言机合约，从可信预言机集合（trusted-oracles-set）获取抵押代币实时价格
- 可信预言机集合 - DAO有权投票决定一组可信的预言机节点，突发情况下，DAO委员会中多数成员确认即可增加或删除若干预言机节点
- 强制清算机制 - 解决抵押物价格下跌的风险
- 不得在加密货币交易非法的司法管辖区使用GEB Network

### 3.4. 黑天鹅事件
&emsp;&emsp;黑天鹅事件是指非常难以预测，且不寻常的事件，通常会引起市场连锁负面反应甚至颠覆。加密货币市场具有很大的波动性，因此我们必须考虑一种极端情况：某种抵押代币的价格在短时间内快速下跌，DEX Contract还来不及执行强制清算，抵押物价格就已经跌破了债务金额。在这种情况下，为了防止风险敞口扩大，DEX Contract会立即自动执行强制清算，并请求GEB ERC20 Contract根据GEB Token的市场价格增发一定数量的GEB给出借方以补偿抵押物价值与债务金额之差。这种增发机制虽然会对GEB Token造成一定程度的价值稀释，但是与大规模债务违约对GEB Network造成的伤害相比较，这种价值稀释是温和并且可控的，也符合绝大多数GEB Token持有者的长期利益。<br />
&emsp;&emsp;如果加密货币市场价格大幅波动，那么GEB DAO委员会有权决定将某些种类的加密货币移出可抵押代币范围，甚至暂时关闭全网抵押贷款业务。由于GEB Network的主要业务体系完全建立在以太坊和比特币（未来可能拓展到EOS）生态系统之上，因此GEB Network的安全性和实用性以及GEB Token的价格都会在很大程度上取决于以太坊和比特币生态系统的健康程度。从长远来看，GEB团队将持续密切关注区块链底层技术的发展方向，GEB Network也将因此受益于整个加密货币生态的繁荣而获得持续的健康发展。<br />

### 3.5. 智能合约技术
&emsp;&emsp;GEB协议通过一组部署在以太坊上的智能合约（DEX Contract）完成了一个标准实现。该组合约代码是开源的（使用AGPL协议发布源代码）并可以免费使用（仅需要标准gas消耗）。它们是用Solidity语言编写的，包含了实现OTC交易和抵押借贷的全部功能。<br />

#### 3.5.1. 签名认证
&emsp;&emsp;DEX Contract能够使用ecrecover函数认证交易订单的Maker的签名，以防止Taker提交伪造的Maker订单进行欺诈。该函数将哈希和签名哈希作为参数，返回生成签名的公钥地址。如果ecrecover返回的公钥地址等于Maker的地址，则该签名是真实的。<br />

```solidity
address publicKeyAddr = ecrecover(hash, signature(hash));
if(publicKeyAddr != maker) throw;
```

#### 3.5.2. 时间锁定
- 抵押贷款和OTC交易中，Taker提交订单后，必须在30分钟内完成法币转账并点击“已转账”按钮，否则视为放弃交易，DEX Contract将锁定的Token退还Maker地址。
- 抵押贷款和OTC交易中，Taker点击“已转账”按钮后，Maker会立即收到通知。此后Maker必须在1小时内点击“确认收款”或者“申请仲裁”，否则视为恶意退出交易，DEX Contract将锁定的Token转入Taker地址。
- 抵押贷款到期后，DEX Contract向Maker发出还款通知，Maker必须在24小时内完成法币还款并点击“已还款”按钮，否则视为还款逾期，DEX Contract将立即执行强制清算。
- 抵押贷款到期后，Maker点击“已还款”后，Taker必须在24小时内点击“确认收款”或者“申请仲裁”，否则视为恶意退出交易，DEX Contract将锁定的Token退还Maker地址。
- 任意一方申请仲裁后，交易双方必须在24小时内按照系统要求提交证据，此后进入陪审员仲裁阶段，未提交证据方将没有机会再次提交证据。

#### 3.5.3. 填充和部分填充订单
&emsp;&emsp;DEX Contract存储了每个先前提交的订单。每个订单由一个结构体（struct）构成。订单列表被存储在一个mapping（一种类似于哈希表的solidity数据结构）中。这个mapping将32字节的数据块映射到订单结构体。将订单参数传递到Keccak SHA3函数中会生成一个唯一的32字节散列，用于唯一标识该订单（哈希碰撞的几率实际上为零）。在订单结构体中有一个成员ValueFill，用于表示该订单被填充的数量。每次订单被填充时，mapping都会更新订单填充数量的累计值。<br />

```solidity
struct Order {
  ...
  uint256 valueFill;
}
mapping(bytes32 => Order) internal OrderList
```
&emsp;&emsp;在填充OTC交易订单和抵押贷款订单时，Taker可以通过指定附加参数valueFill来部分填充订单。只要部分填充的总和不超过订单总额，就可以对单个订单执行多次部分填充。<br />

| Name      | Data Type | Description                              |
| :-------- | :-------: | :--------------------------------------- |
| valueFill |  uint256  | Total units of token or fiat to be filled (valueFill ≤ valueA or valueB). |

&emsp;&emsp;在填充抵押贷款订单时，Taker需要指定附加参数takerrealname, paybackchannel, paybackdetail来指定法币还款方式。<br />

| Name           | Data Type | Description                              |
| :------------- | :-------: | :--------------------------------------- |
| takerrealname  |  string   | Realname of Taker                        |
| paybackchannel |   bytes   | Fiat payback channel (eg. paypal, alipay) |
| paybackdetail  |  string   | Details of payment                       |

#### 3.5.4. 过期时间
&emsp;&emsp;订单的过期时间由创造订单的Maker指定。过期时间是一个无符号整数值，表示一个UNIX时间戳。该值一旦被签名就无法更改。<br />
&emsp;&emsp;以太坊虚拟机中的时间由每次挖出新区块时设置的块时间戳给出。因此，判断订单是否过期并不取决于Taker提交订单的时间，而是取决于矿工在EVM中执行填充功能的时间。矿工无法将当前区块的时间戳设置为早于前一个区块的时间戳。<br />

#### 3.5.5. 取消订单
&emsp;&emsp;在订单被提交给DEX Contract之前，Maker可以随时向Relayer请求取消订单。在订单被提交给DEX Contract后，Maker可以通过DEX Contract的取消功能取消未填充且未过期的订单部分。该功能将订单的valueFill更改到最大值以防止后续填充。通过DEX Contract取消订单会产生费用，因此该功能仅用作备用机制。通常情况下，Maker可以通过将订单过期时间设置为与他们打算更新订单的时间相匹配来避免链上取消订单交易。<br />
&emsp;&emsp;这种方法存在的一个问题是它可能会造成一种情况：Maker在试图取消订单的同时，Taker试图填充同一订单。这会导致两笔交易中的一笔失败，并浪费gas。交易开采顺序的不确定性有时会导致非预期的结果，如果以太坊区块链上待处理的交易大量积压，这种不确定性可能会增加。<br />
#### 3.5.6. WETH合约
&emsp;&emsp;[ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md)为以太坊令牌建立了一个标准接口，以允许以太坊智能合约与任何符合标准的令牌进行交互。ETH是以太坊的基础货币，不符合ERC20令牌标准。许多DApp开发者发现，通过将ETH抽象为兼容ERC20的令牌，智能合约可以通过去除用于处理ETH的业务逻辑代码来简化。<br />
&emsp;&emsp;我们使用由[Makerdao](https://medium.com/@MakerDAO)团队部署的WETH合约来实现上述功能。<br />
**合约部署地址：**<br />
- Mainnet：[0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2](https://etherscan.io/address/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
- Kovan：[0xd0a1e359811322d97991e03f863a0c30c2cf029c](https://kovan.etherscan.io/address/0xd0a1e359811322d97991e03f863a0c30c2cf029c)
- Ropsten：[0xc778417e063141139fce010982780140aa0cd5ab](https://ropsten.etherscan.io/address/0xc778417e063141139fce010982780140aa0cd5ab)
- Rinkeby：[0xc778417e063141139fce010982780140aa0cd5ab](https://rinkeby.etherscan.io/address/0xc778417e063141139fce010982780140aa0cd5ab)

### 3.6. 非以太坊加密货币兼容
&emsp;&emsp;GEB协议在设计之初就考虑了对非以太坊数字货币的兼容。为了实现这一目标，我们需要依靠允许这些加密数字货币网络之间相互通信的技术和协议。我们很高兴地看到许多优秀的团队 — — 比如，Polkadot和Cosmos — — 正在着手解决这一问题。遗憾的是，这些项目现今仍处于紧张的开发阶段 — — 有的要么尚未公布具体的发布日期（例如Polkadot），要么仅仅适用于基于权益证明（PoS）机制的区块链（例如Cosmos）。因此，现有区块链间的跨链通信的实际解决方案依然有待探索。在综合比较了多种跨链技术方案以后，GEB团队选择了一条分两步实施的技术路线。<br />
#### 3.6.1. 双向挂钩（2-way peg）技术（当前方案）
&emsp;&emsp;以下是关于双向挂钩的一般性描述：我们把以太坊上的比特币代理币称为E-BTC。当一个用户“存放”BTC时，这些BTC在比特币区块链上被锁定。这些BTC的交易证明被发送到一个以太坊合约中，该合约被称为PegContract。PegContract验证这笔交易，并发行E-BTC到用户的以太坊地址。比特币系统中的1BTC等价于以太坊系统中的1E-BTC。之后，当用户想把E-BTC换回到BTC时，只要燃烧掉E-BTC，再提供一个烧毁证明给比特币区块链。比特币区块链验证这些E-BTC已经烧毁后，解锁原始的BTC。<br />
&emsp;&emsp;这种PegContract现在就能在以太坊上实现，并且能够无需信任地完成所有工作：它能够验证BTC已经被发送到某个地址并且锁定了；它能够发行E-BTC；它能够燃烧E-BTC并提供烧毁证明。BTC-Relay就是这样一种合约，BTC-Relay实现了比特币简化支付证明（SPV），从而能够验证一笔交易是否已经在比特币区块链上被确认（需要向Relayer支付验证手续费以激励Relayer持续向BTC-Relay合约提交比特币区块头）。因此在比特币系统中的任何交易，从支付到BTC的锁定，都可以被以太坊合约验证。同理我们可以实现用以太坊合约验证比特币现金（BCH）区块链上的交易。<br />
&emsp;&emsp;双向挂钩存在的问题是，我们无法在比特币区块链上部署ETH-Relay或者任何锁定合约。我们可以等到RootStock发布以后，在ETH和RootStock之间建立一个双向挂钩，以实现比特币和以太坊之间的交互。另一个实际的解决方案是，将用户的BTC锁定在多重签名地址中，其中每个签名者必须在以太坊PegContract中存入ETH。当BTC被锁定时，PegContract将照常发行E-BTC。当E-BTC被发回PegContract时，它们将被烧毁并由PegContract生成证明。同时PegContract开始倒计时，为签名者提供足够的时间来验证烧毁证明并解锁BTC。如果任何签名者不签署多重签名，他存放在PegContract中的ETH会被转入用户的以太坊地址。为了使赎回过程更加顺利，签名者可以从每次存入/赎回过程中获得手续费奖励。具体原理如下图所示：<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/cross-chain-vertical.jpg)

#### 3.6.2. 闪电原子交换（Lighting atomic swap）技术（演进方案）
&emsp;&emsp;为了确保跨链交易的安全性，双向挂钩技术的交易速度必须满足以下不等式：<br />

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7Bv%7D%5Cgeq%20%5Cfrac%7B1%7D%7Bv1%7D&plus;%5Cfrac%7B1%7D%7Bv2%7D)

v表示跨链安全交易速度；v1、v2分别表示两条区块链单独的安全交易速度。从上式可以看出，跨链安全交易的速度比任意一条区块链上的安全交易速度更慢。对于比特币区块链，安全的交易确认时间可能需要30分钟甚至更久。另一方面，由于需要在两条区块链上各上链一笔交易并且支付一笔SPV验证的gas费用和一笔Relayer手续费，所以使用双向挂钩技术实现跨链交易是比较昂贵的。<br />
&emsp;&emsp;闪电原子交换是一种结合了闪电网络和原子交换两种技术的即时跨链交易技术。闪电网络是一种协议，它通过在不同的交易者之间创建链下支付通道来工作，只有在打开和关闭支付通道时才需要上链交易。这有三大好处：第一，加快交易速度；第二，降低交易费用；第三，提高交易容量。原子交换是另一种协议，它能够让交易双方无需信任地进行跨链交易。原子交换的执行只有两种结果，要么双方成功完成数字货币交换，要么什么都没有发生。最重要的是，因为交易无需信任任何第三方，也就避免了欺诈。<br />
&emsp;&emsp;单独使用原子交换需要很长的等待时间来确保安全，并且需要上链至少四笔交易。而在两条区块链均存在支付通道的情况下，使用闪电原子交换可以大大缩短等待时间，并且不需要上链任何一笔交易。Lightning实验室已经于2017年11月16日确认完成了全球首次基于比特币-莱特币区块链的闪电原子交换。具体的技术原理如下图所示：<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/lightning-swap-vertical.jpg)

截至本文写作时，比特币闪电网络已经在比特币主网成功发布，以太坊上的闪电网络——雷电网络（Raiden Network）正在密集研发中。我们将持续关注相关项目的进展并在合适的时间（待相关技术的可靠性得到验证）将闪电原子交换技术引入GEB Network。<br />

<br /><br />
## 4. GEB协议代币
&emsp;&emsp;为了促进GEB Network的发展并让更多人能够参与GEB生态建设，分享GEB生态收益，在GEB Network上建立分散的协同决策机制。GEB团队将发行基于以太坊区块链的ERC20代币GEB Token。GEB Token将主要用于在GEB生态内部流通，并激励GEB用户建设、使用和维护GEB Network。GEB Token将成为GEB Network稳定运转的润滑剂。<br />

### 4.1. GEB代币经济模型
&emsp;&emsp;协议代币的价值储存功能和流通功能是代币经济模型设计中的一对矛盾。如果代币经济模型设计偏向于价值储存功能，由于存在价格上涨预期，代币拥有者倾向于持有而非使用代币，这又进一步导致了流动性减弱。这种自我强化的正反馈导致新用户进入门槛过高，协议使用范围的扩大受到阻碍。这种情况已经在比特币系统中得到了验证。可以预见，当这种自我强化达到极限，市场上已经没有人再使用这种代币，也没有新用户进入，那么整个代币经济模型就接近了崩溃边缘。代币交易完全由投机需求驱动，代币价格随时可能在最高点突然崩盘。如果代币经济模型设计偏向于流通功能，那么用户就没有动力持有代币，而是选择尽快交易，尤其是当协议代币价格上升预期低于其他具有价值储存功能的代币的时候。这种情况下，用户持有协议代币的平均时间取决于对代币价格的预期，代币的使用价值和使用频率，代币与其他货币的交易成本。任何一个因素的下降都会导致用户倾向于交易而非持有代币，这又进一步导致了代币价格的下跌预期。这种逆向的正反馈会导致协议代币价格崩溃，甚至整个协议生态的死亡。</br>
&emsp;&emsp;通过上面的分析我们得出结论，一种协议代币只有同时具备价值储存和流通功能并维持两者之间的平衡，才能保持相对稳定的价格。Vitalic Buterin在2017年的一篇博客中对这一问题进行了论述，并提出了一个评估代币价格的公式：<br />
<p align="center">MC = TH</p>

- M表示代币供应总量
- C表示代币价格
- T表示代币交易量
- H表示用户持有代币的平均时间

我们对GEB代币经济模型的设计目标是使代币价格C保持一个相对平稳的长期增长率，同时尽可能做大代币总市值MC/TH。这要求我们关注两个方面：第一，尽可能扩大代币交易量T并提高用户持有代币的平均时间H；第二，保持代币供应总量的增长率低于TH的增长率。在用户量快速增长阶段，代币交易量T同步增长，TH的增长主要由新增用户的T驱动；当用户量增长放缓甚至停滞，T和H开始呈现负相关关系，TH存在一个极大值。因此，在GEB Network的发展早期，做大GEB Token总市值最有效的方法是尽可能吸引更多新用户加入GEB Network，并鼓励用户持有更多GEB Token。只有当GEB Network发展到覆盖了大部分加密货币用户，并且整个加密货币生态的用户总数增长放缓，我们才需要考虑通过提高系统内部的流动性使TH向极大值靠拢。<br />
&emsp;&emsp;在充分考虑了以上因素后，结合GEB Network的使用场景，我们为GEB协议设计了非常巧妙并且独一无二的代币经济模型。在GEB协议设计中，存在一种特殊类型的代币交易——代币抵押。在GEB代币抵押过程中，我们仍可以将这些代币视为处于用户持有状态，因为市场上的流动性并没有增加。通过鼓励用户抵押GEB代币，我们提升了用户对GEB代币的需求，同时延长了用户持有代币的时间。我们将这种模型称为“使用即持有”的代币经济模型。显而易见的是，这种模型将极大地刺激GEB代币价格上涨，因此，我们需要设计一种代币增发机制以将GEB代币的价格上涨速度控制在一个合理的范围内。幸运的是，在GEB协议生态内部有丰富的场景让我们可以通过增发GEB代币来激励用户共同建设和维护GEB Network。4.2、4.3两小节列举了一些GEB Token的具体用例和增发场景。<br />
&emsp;&emsp;除此以外，我们还为GEB Token设计了一个额外的价格调节机制。通过成立GEB投资基金，我们将投资于GEB协议生态内的企业和DAO，并将投资收益的一部分用于回购市场上流通的GEB Token并销毁（详见4.6）。<br />

### 4.2. GEB代币用例
- 建立GEB认证交易所需要在GEB基金会抵押一定数量的GEB Token
- 担任GEB认证陪审员需要在GEB基金会抵押一定数量的GEB Token
- 用户使用GEB Token支付OTC交易手续费可以享受50%折扣优惠
- 用户使用GEB Token作为抵押物借款可以享受50%的手续费优惠，并且获得更高的抵押率和更低的清算线
- 使用GEB Token作为抵押物的借款订单将被高亮显示
- GEB Token持有者可以参加GEB DAO投票，成为协议治理决策层的一员

### 4.3. GEB代币增发
&emsp;&emsp;GEB代币初始发行量为10亿枚，此后每年都会有一定数量的增发。GEB代币增发量与GEB Network的运行状况密切相关，目前已经确定以下的增发场景：<br />
- GEB交易所接受GEB Token作为手续费，给予用户优惠部分由增发补足
- GEB陪审员做出恰当的仲裁将获得GEB Token奖励，奖励部分由增发产生
- 用户邀请好友注册GEB交易所并完成KYC将获得GEB Token奖励，奖励部分由增发产生
- 黑天鹅事件发生时，立即执行强制清算并增发GEB Token补偿出借方以避免债务违约

如果未来需要增加任何GEB Token增发场景，需要向GEB DAO提交提案并通过DAO投票表决。

### 4.4. Aragon DAO治理
&emsp;&emsp;Aragon于2017年发布，是一款去中心化自治组织的操作系统。在Aragon上可以方便地实现一套简单易用的去中心化自治组织的基本管理组件。这些组件包括：代币分配管理，组织成员管理，⻆⾊权限管理，投票管理，众筹管理以及财务管理等。Aragon组织的行为很容易通过更改章程来定制。此外，Aragon组织可通过与组织合约交互的第三方模块进行扩展。<br />

![img](https://images-cdn.shimo.im/HzrAKHaKcJwws0mN/aragon.gif)

&emsp;&emsp;GEB Token持有者可以通过Aragon软件的投票模块对GEB协议的各方面提案进行投票表决，这些方面包括但不限于：<br />
- DAICO资金解锁提案
- GEB协议升级提案
- GEB Token增发提案
- GEB DAO委员会选举
- 可信预言机集合修改提案
- GEB Network全局参数（可抵押代币范围，抵押率，强制清算线，手续费率，可用法币转账渠道等）修改提案
- GEB Network临时关闭和开启提案

&emsp;&emsp;GEB Network最终能否被大众认可在很大程度上取决于能否在一个健全的去中心化生态系统中提高流动性。参与生态建设的角色不局限于GEB Token持有者，还可以是开发者，终端用户等。为了高效的广泛采纳建议，我们遵循分布式治理的理念建立一套标准决策流程托管至Aragon中，其中涉及到用[Aragon Group](https://wiki.aragon.one/dev/apps/group/)进行成员和权限管理，用[Aragon Finance](https://wiki.aragon.one/dev/apps/finance/)进行财务管理以及其他的管理模块。<br />
&emsp;&emsp;随着AragonOS release 3.0的发布，投票管理成为了DAO治理更加灵活的入口，我们可以在ACL自定义参数化规则来处理不同的投票场景，也可以使用Forwarders将投票结果轻而易举地转发至不同的DAO管理应用程序。以下是一个自定义参数规则验证的程序示例：<br />

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

&emsp;&emsp;DAO的治理模型是多样化且动态调整的，AragonOS给我们提供了便利也给予了一定的安全保证。<br />

### 4.5. 首次代币发行

#### 4.5.1. 代币发行计划——DAICO
&emsp;&emsp;2018年1月，Vitalik Buterin提出了一个革命性的概念——结合ICO和DAO（分布式自治系统）的DAICO （https://ethresear.ch/t/explanation-of-daicos/465） 在DAICO中参与者可以投票赞成或者反对固定的预算增加，如果团队没有成功实施该项目，参与者可以投票退回。<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/daico.jpg)

&emsp;&emsp;GEB Network将使用DAICO进行资金的众筹和使用管理，将规则100%透明的嵌入在代码中，直接由参与者和智能合约控制，不再有第三方。<br />

#### 4.5.2. 代币分配计划
&emsp;&emsp;团队、顾问、众筹销售、基金会和激励池的代币将由智能合约分配如下：<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/token-distributed.jpg)

- 团队和顾问：团队部分的GEB代币将通过智能合约冻结2年。顾问的代币不受锁定期约束，在代币销售结束之后将直接分发给该项目的顾问。
- 众筹销售：众售分配的GEB代币将分为两部分：1）未参与锁定激励计划的部分将在众筹结束后解锁并分发到参与者的钱包中; 2）参与锁定激励计划的部分将被锁定在众售智能合约中，再根据既定规则分期解锁分发至参与者钱包中。
- 基金会：该部分的GEB代币将由智能合约冻结1年。
- 激励池：该部分的GEB代币将由智能合约冻结4年。

#### 4.5.3. 资金取款
&emsp;&emsp;众筹销售结束之后Fund contract转为TeamWithdraw模式，允许该项目的团队定期提取筹集资金的有限数量。所筹集的资金通过Fund contract可以使用两种方式给开发团队支付：<br />
- 有限直接支付（第一次取款）

&emsp;&emsp;考虑到ETH价格的波动性较高，出于对项目的保护，团队有可能在众筹销售结束之后立即提取软顶的一半，并将其兑换成法定货币或者DAI。<br />
- 基于TAP模式支付

&emsp;&emsp;**Tap (wei/秒钟)**：这是项目团队每个月可以从Fund contract提取合理的最大金额。初始Tap由智能合约规定为77160493827160 (wei/秒钟) = 200 ETH/月份。Tap用来支持平台的长期发展。如果Tap没有支出，则不断积累。<br />
  **Tap的增加**：如果团队由于任何原因需要更多资金，可以发起增加Tap的投票。代币持有者可以根据他们在钱包上保持的代币数量（N, where N≠0）进行投票，表决是否批准向团队支出额外的资金。增加Tap的投票将于每个月1日进行。如果“同意”的投票数量超过“不同意”的话，投票就被视为成功完成。投票进行3天，发起之后立即开始。为了防止系统被破坏，Tap可以一次提升的百分数将限制在初始数量的50%。（附Tap的增加投票预防性（Proof-of-Stake算法）协议，该协议旨在防止巨额持有者恶意投票，如交易所等。每一个Ethereum钱包投票的比重被限制在一定的代币数量之内（投票权重<=0.5%所有代币数量）。被智能合约锁定的代币不具备投票资格，如基石投资、私募、团队、基金和激励池的锁定部分，因为该部分被智能合约控制，不以人的意志为转移。）<br />
  **退款投票**：如果代币持有者对项目的团队工作不满意(以及认为团队未能履约项目），他们就可以要求进行退款投票。退款活动将会在代币销售结束后的前两年持续可用，但如果在销售结束后的两年内，运营团队完成交易所上币工作，则退款活动将被关闭。退款投票每半年由团队发起一次，发起之后立即开始，投票延续一个星期。如果退款投票中“同意”的投票数量超过“不同意”的话，投票就被视为成功完成。投票进行一星期 ，发起之后立即开始，在投票期间可随时更改投票结果。投票关闭之后，不再接受投票，未参与投票的默认视为“不同意”。如果退款投票成功，代币持有者需要保留代币，并在下个月的第一天之前不发生将其转移到另一个ETH钱包的行为。 在这种情况下，投票将被视为已完成。 如果代币被转移，代币持有者当前的投票权重将减少。 例如，如果一个人投了1000个代币并将其中的500个移动到另一个钱包，那么他的投票权重将减少到500而不是1000。我们将根据退款投票成功后次月第一天的代币实际的转移情况计算最终的投票结果。如果第一次退款投票成功，团队的取款被锁定，并且第二次退款投票在一个月期间内要进行，与第一次投票相似，我们第二次的投票时间也为一个星期，期间可以随时更改投票的结果，结束后不再接受任何投票操作。如果第二次退款投票获得成功，代币持有者可以返回剩下的资金。在不成功的情况下，团队的取款被解锁。这种包括两阶段的投票系统是为了保护该项目免受由于加密货币市场急剧变化而引起的代币持有者的仓促决定。如果退款最终执行的话，在团队、激励池和基金的代币被销毁之后，以当前资金账户剩余的ETH除以代币总量算出当前GEB/ETH汇率，用以返回资金给代币持有者。（附退款投票预防性（Proof-of-Stake算法）协议，该协议旨在防止巨额持有者恶意投票，如交易所等。每一个Ethereum钱包投票的比重被限制在一定的代币数量之内（投票权重<=0.1%所有代币数量）。被智能合约锁定的代币不具备投票资格，如基石投资、私募、团队、基金和激励池的锁定部分，因为该部分被智能合约控制，不以人的意志为转移。）<br />
&emsp;&emsp;我们相信采用DAICO的资金管理方案会提供给投资者前所未有的安全，透明性和控制性的水平，帮助项目良好、健康地发展。<br />

### 4.5. GEB投资基金
&emsp;&emsp;GEB DAICO完成后，GEB基金会将从募集到的资金和基金会中的3亿个GEB Token中各拿出30%成立GEB投资基金，专门用于投资孵化GEB协议生态内的企业和DAO。投资的方向主要包括区块链底层技术，区块链协议与应用，GEB协议扩展等。GEB投资基金由GEB DAO委员会直接管理并配置专业的投研团队和投后管理团队。基金收益的20%～50%将被用于回购市场上流通的GEB Token并销毁（视GEB Token价格决定回购规模），剩余收益将用于持续滚动投资。<br />

<br /><br />
## 5. GEB协议生态

### 5.1. GEB Network整体架构

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/network-structure.jpg)

### 5.2. 陪审员网络
&emsp;&emsp;智能合约可以通过控制链上交易来解决争端，但是无法控制链下交易。陪审员网络用于处理智能合约无法判断的情况，并将处理结果提交给智能合约。当用户在交易过程中申请仲裁时，陪审员网络将介入处理。陪审员网络的设计目标是通过经济激励建立一个分散的争议解决机制，这种机制避免了对单一仲裁机构的绝对信任，因此具有更高的安全性。整套仲裁软件运行在由以太坊和IPFS构建的基础设施之上。通过一个简单的用户界面，陪审员可以方便地接收争议双方提交的证据并做出仲裁。所有的仲裁记录都会被永久保存在以太坊区块链上，所有不可篡改的加密证据（由[PageSigner](https://tlsnotary.org/pagesigner.html)生成）都会被永久保存在IPFS上。<br />

#### 5.2.1 陪审员申请
&emsp;&emsp;要加入GEB陪审员网络需要首先向GEB DAO提交申请并提供身份证明材料，审核通过后需要参加GEB陪审员在线培训和考核。考核通过后需要与GEB基金会在线签约并购买一定数量的GEB Token抵押给GEB基金会。签约期内陪审员不得动用抵押代币。签约期满后若不再续约，GEB基金会将把抵押代币退还陪审员。<br />

#### 5.2.2 仲裁流程
- **Phase1**：用户发起仲裁申请，仲裁软件会向争议双方发出通知，要求双方在24小时内按照规定格式各提交一份加密证据（使用[PageSigner](https://tlsnotary.org/pagesigner.html)，一个允许用户生成不可篡改的网页证据的Firefox/Chrome插件）以及其他补充证据（文字，图片，语音，视频等）。所有证据文件会被打包并签名后上传至IPFS。与此同时，仲裁软件会从签约陪审员中随机选取三名陪审员并通知他们进入仲裁准备状态（通过KYC信息校验排除陪审员自己仲裁自己的可能性）。陪审员必须在8小时内应答，如果超时不应答会被罚款X（抵押代币），仲裁软件会重新选择陪审员。整个流程必须在24小时内完成。
- **Phase2**：陪审员接受争议双方提交的证据文件，校验签名后进行审查。陪审员还可以请求审查争议双方的KYC资料。为了避免共谋欺诈，陪审员之间不能够互相沟通，也不能与争议双方直接沟通。陪审员必须在8小时内完成审查并独立作出裁决（裁决可以是支持争议的一方或者无法判定）。如果陪审员超时未做出裁决会被罚款。裁决完成后仲裁软件会按照如下方式评判仲裁结果：
    - 如果三名陪审员支持同一方，则该方胜诉，仲裁结束。仲裁软件通知DEX Contract仲裁结果。
    - 其他情况仲裁将进入Phase3阶段。
- **Phase3**：如果仲裁在Phase2没有结束，那么争议双方提交的证据文件和三名陪审员的裁决结果将被提交给GEB DAO委员会进行最后裁决。GEB DAO委员会可能会要求争议双方提交补充证据，在必要时甚至可能要求与争议双方进行视频通话或者屏幕共享以确保裁决的正确性。所有的证据文件和视频材料都会被上传至IPFS。Phase3阶段没有固定时间限制，仲裁将持续至GEB DAO委员会做出最终裁决。

#### 5.2.3 经济激励与保证金
&emsp;&emsp;为了激励陪审员正确行使陪审权力，陪审员需要在GEB DAO抵押一定数量GEB Token作为保证金。每次仲裁结束后，仲裁系统会根据每名陪审员的裁决和**最终仲裁结果R**对三名陪审员（A、B、C）分别进行代币奖励或惩罚，具体规则如下（+X表示奖励X，-X表示罚款X，0表示无奖惩）：<br />

<div class="tg-wrap"><table align="center">
  <tr>
    <th colspan="3">裁决</th>
    <th colspan="3">奖惩</th>
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
    <td>无法判定</td>
    <td>+X</td>
    <td>+X</td>
    <td>0</td>
  </tr>
  <tr>
    <td>R</td>
    <td>R</td>
    <td>超时</td>
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
    <td>无法判定</td>
    <td>+X</td>
    <td>-X</td>
    <td>0</td>
  </tr>
  <tr>
    <td>R</td>
    <td>¬R</td>
    <td>超时</td>
    <td>+X</td>
    <td>-X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>R</td>
    <td>无法判定</td>
    <td>无法判定</td>
    <td>+X</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>R</td>
    <td>无法判定</td>
    <td>超时</td>
    <td>+X</td>
    <td>0</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>R</td>
    <td>超时</td>
    <td>超时</td>
    <td>+X</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>¬R</td>
    <td>无法判定</td>
    <td>0</td>
    <td>0</td>
    <td>+X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>¬R</td>
    <td>超时</td>
    <td>0</td>
    <td>0</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>无法判定</td>
    <td>无法判定</td>
    <td>-X</td>
    <td>+X/2</td>
    <td>+X/2</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>无法判定</td>
    <td>超时</td>
    <td>-X</td>
    <td>+X/2</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>¬R</td>
    <td>超时</td>
    <td>超时</td>
    <td>0</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td width="200">无法判定</td>
    <td width="200">无法判定</td>
    <td width="200">无法判定</td>
    <td width="200">+X/2</td>
    <td width="200">+X/2</td>
    <td width="200">+X/2</td>
  </tr>
  <tr>
    <td>无法判定</td>
    <td>无法判定</td>
    <td>超时</td>
    <td>+X/2</td>
    <td>+X/2</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>无法判定</td>
    <td>超时</td>
    <td>超时</td>
    <td>0</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
  <tr>
    <td>超时</td>
    <td>超时</td>
    <td>超时</td>
    <td>-2X</td>
    <td>-2X</td>
    <td>-2X</td>
  </tr>
</table></div>

因A、B、C顺序无关，以上表格已经包含了三名陪审员所有可能的裁决结果组合。陪审员超时未裁决的情况事实上较少发生，因为这会导致该陪审员遭受双倍的代币罚款。<br />

#### 5.2.4 退出机制
&emsp;&emsp;陪审员在签约期内如果发生以下情况，将启动退出机制。<br />
- **陪审员主动申请退出**：陪审员不在任何仲裁期内，可向GEB DAO提出退出申请。GEB DAO委员会经过审查后，如果确认该陪审员无任何不当行为，则通过申请并退还剩余的抵押代币和奖励代币。
- **签约期内被罚款超过5次**：将启动强制退出流程。经GEB DAO委员会审查后，如果确认该陪审员无其他不当行为，则强制该陪审员退网并退还剩余的抵押代币和奖励代币。
- **GEB DAO委员会认定该陪审员有明显的不当行为（如共谋欺诈）**：扣除所有抵押代币和奖励代币并强制退网，GEB DAO保留对该陪审员进一步追究责任的权利。

### 5.3. 交易商网络
&emsp;&emsp;交易商网络的主要作用是促进GEB Network的流动性，并为用户提供全面的交易服务。交易服务商可以通过部署GEB开源软件或者自主开发（二次开发）GEB协议实现来建立GEB交易所并通过收取交易手续费获利。申请成为GEB认证交易服务商需要满足以下条件：<br />
- 认证交易服务商需要有经营所在地的小额借贷运营资质，有公司实体和固定办公场地，有小额借贷行业运营经验。GEB官方提供全套开源软件和二次开发技术支持（免费技术培训，工程师7\*24远程技术支持）。首次签约三年。
- 认证交易服务商需要按照 1ETH = 10000GEB 的价格购买 1000000GEB（首批，未来会随GEB价格的变化调整购买价格和购买数量），并抵押在GEB基金会中。签约期内交易服务商不可动用该笔保证金，签约期满后若不再续约，GEB基金会将保证金退还交易服务商。
- 认证交易服务商需遵守经营所在地的法律法规和政策。如交易服务商出现违法违规行为，GEB DAO委员会有权对交易服务商进行罚款直至取消认证交易服务商资格。
- 认证交易服务商需要确保交易软件完整实现GEB协议的所有规定并严格执行。任何不遵守GEB协议的交易服务商将会被罚款直至取消认证交易服务商资格。
- 签约期内认证交易服务商不得申请退出。

### 5.4. 去中心化身份认证
&emsp;&emsp;为了保证交易安全，用户使用GEB Network之前需要完成身份认证。传统的KYC/AML系统将用户身份数据保存在中心化的服务器上，这导致了严重的用户隐私泄露风险，并加剧了用户和服务商之间权利的不平等。我们希望将GEB Network用户数据的所有权归还给用户本人。为了达到这个目标，我们为GEB Network设计了一套去中心化的身份认证协议。用户可以在GEB Network上注册自己的身份，请求和发送证明凭证，安全地管理他们的密钥和隐私数据。<br />

#### 5.4.1 DID与DID文档
&emsp;&emsp;我们的身份认证协议设计参考了W3C Credentials Community Group关于Decentralized Identifiers和Identity Credentials的工作 （参见https://w3c-ccg.github.io/did-spec/, https://opencreds.org/specs/source/identity-credentials/） 。身份由分散标识符（DID）标识，并指向一个DID文档。DID及其关联的DID文档的组合形成分散标识符的根记录。<br />
&emsp;&emsp;GEB Network目前支持的DID生成方法如下所示：<br />

```gebdid
geb-did = "did:geb:"geb-specific-idstring
geb-specific-idstring = network":"address
network = "mainnet"/"ropsten"/"rinkeby"/"kovan"
address = 40*HEXDIG
```

- network目前仅支持以太坊的"mainnet", "ropsten", "rinkeby"和"kovan"，但可以在未来扩展以支持任意以太坊实例（包括私有实例）。
- address为HEX编码的以太坊地址（不带0x前缀）。

&emsp;&emsp;DID文档必须是单个JSON对象，此JSON对象的格式是在[JSON-LD](https://json-ld.org/)中指定的。[JSON-LD](https://json-ld.org/)是一种用于将JSON数据映射到[[JSON-LD](https://www.w3.org/TR/json-ld/)]定义的RDF语义图模型的格式。一个基本的DID文档示例如下所示：<br />

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

- credential是由第三方发布的用于证明数字身份的数字证书集合。详见https://opencreds.org/specs/source/identity-credentials/。
- DID文档可以附加关联数据签名（Linked Data Signatures）以保证文档的正确性和完整性。详见https://w3c-dvcg.github.io/ld-signatures。

&emsp;&emsp;DID文档使用SHA256哈希值作为文件名，公钥加密后存储在IPFS上。DID和DID文档的映射关系存储在由GEB认证的节点所维护的etcd集群中（将此映射关系存储在以太坊智能合约中会产生交易费用，考虑到初次创建身份的GEB用户大多并未持有以太币，这将显著提高用户使用GEB Network的门槛）。用户可以通过GEB DApp（WEB/Mobile）创建身份（DID文档）并与一个以太坊地址（DID）绑定。身份创建成功后，用户可以授权某个GEB交易所访问他们的身份数据以完成KYC。身份认证成功后，GEB交易所将会向用户颁发数字证书。用户将该数字证书存储在DID文档中，并可在未来用于身份证明。<br />

#### 5.4.2 GEB Connect
&emsp;&emsp;我们计划在未来（2019～2020）将GEB去中心化身份认证协议升级为GEB Connect，一个允许用户使用唯一的DID登录所有的以太坊DAPP，注册自己的身份，请求和发送身份证明凭证，发送以太坊交易，与任何他们信任的人分享数据，安全地管理他们的密钥和隐私数据的以太坊身份管理基础设施。一些其他项目，比如uport和kyc.legal也在进行类似的尝试，然而我们认为缺乏使用场景和用户规模基础的去中心化身份认证项目很难获得成功。而GEB Connect的发展将依托于GEB Network项目庞大的生态网络和严格的KYC要求。随着GEB Network用户规模的扩大，GEB Connect必将在金融，保险，招聘，电商，征信等领域获得广泛的应用。<br />

### 5.5. 共享流动性池
&emsp;&emsp;流动性(liquidity)是任何一个市场的“灵魂”，用户在有活力的市场中能够获得极佳的交易体验。因此，我们提供了一个共享流动性池来保持GEB Network中交易的流动性。共享流动性池主要有以下适用场景：<br />
- 如果一个交易所流动性不足，他可以把他自己交易所的挂单放到共享流动性池中，而其他交易所可以把共享流动性池中的订单挑选至自己的交易所进行展示。如果订单成交，则两家交易所将根据订单属性 marginSplitPercentage 的值按比例获取该笔交易的佣金。
- 用户想在某交易所借贷非所在地流通的法币，该交易所可提供一种直接将订单转发至共享流动性池中的通道，促使该笔交易在其他符合条件的交易所快速成交以提升用户体验。交易佣金依然由两家交易所根据订单属性 marginSplitPercentage 的值按比例收取。

#### 5.5.1 共享订单
&emsp;&emsp;我们称交易所想要投放至共享流动性池中的订单为共享订单，其格式如下：<br />

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

#### 5.5.2 微服务与集群
&emsp;&emsp;在GEB Network中，共享流动性池以服务组织的形式存在。为了未来能够更好地拓展与升级服务，我们采用了微服务的架构设计。参与维护共享流动性池的节点需要抵押保证金并向GEB基金会提交服务器参数配置等相关材料，认证通过后方可加入服务集群。对于长期稳定提供服务的诚实节点，我们通过服务质量加权计费或按时计费等方式用GEB Token进行结算。<br />
&emsp;&emsp;从简单和安全的角度出发，为支持RESTful API访问和可选的SSL客户端证书认证，我们以etcd作为共享流动性池的主要技术实现。etcd是一个高可用的KV存储系统，可用于共享配置和服务发现。在其持久化层，主要维护的是服务列表和订单列表，服务列表用于交易所消费数据时进行服务查找，如交易所主动选单，热点账户配置等；订单列表是交易所向共享流动性池投放的订单集合，为了保证订单来源，订单列表中的每一笔订单都是用源交易所的私钥对除字段 originExAddr 以外的参数哈希进行签名得到。因此，挑选该订单的交易所也需要对其进行验签，如果验签不通过则反馈订单无效，集群服务会在订单列表中进行状态更新。在服务层，一般情况下是使用Pub-Sub模式广播Topic全局版本号的变动。所谓Topic全局版本号更新就是Topic指向的任意服务列表或者Topic指向的订单列表发生了变动，这个Topic版本号都会递增。接收到所订阅Topic版本号变动的交易所可向目标服务器请求服务。<br />

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

当共享订单数过高时，由于服务集群会长期追踪各个交易所的数据并对日志数据进行分析，因此我们可根据结论在集群中设置高性能节点以主动推送订单给流动性高的交易所的方式来提升撮合效率。<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/sharded-pool.jpg)

### 5.6. 可信预言机集合
&emsp;&emsp;由于部署在区块链网络中的智能合约的主观性体现在对链内数据的访问，而对于链外数据只能被动接受。因此，我们需要一个可信任的实体——预言机（Oracle）来完成诚实数据的输入。预言机是区块链世界与现实世界沟通的桥梁，它提供了一个权威准确、不可篡改、稳定、并可接受审计的数据查询接口。在区块链系统中获取链外数据的一般性流程：智能合约会在预定的时间或通过事件触发让Oracle从链外的数据源获取数据并输入，然后智能合约按照获取的数据采取预设的行动。然而该过程的实现，我们要解决两个关键问题：1)共识；2）受信方。<br />
&emsp;&emsp;GEB Network采用声誉系统和流动服务机制来解决以上问题。首先，我们选取N个预言机组成混合网络，并让网络中单一预言机与数据源之间建立1:M的关系。其次，在数据源和预言机上分别设有声誉系统，对可信输入形成双层保障机制。最后，根据数据源和预言机的多次工作流的信用积累实行流动服务，以此形成正向反馈来提高数据查询与数据写入的效率。<br />

![img](https://raw.githubusercontent.com/gebnetwork/DAICO/master/whitepaper/images/data-feed.jpg)

&emsp;&emsp;预言机网络和数据源都是动态的，它是实现流动服务的基础。每一个Oracle合约实例都需要在GEB Network中进行注册，并填充目标数据关键字，费用，保证金阈值，参与门槛等内容。在需要获取链外数据时，GEB Network会根据合约实例内容撮合需求方和Oracle，匹配成功后Oracle抵押GEB Token正式组成预言机网络。在共识阶段，先检查达成共识的Oracle数是否符合Oracle合约实例中的预设值，若符合，则进行Data Feed及分发奖励金；若不符合，则阻塞Data Feed进程且所有Oracle重试不超过有限K次向数据源获取数据并进行共识的过程，在重试的过程中，Oracle有权更新数据源并应该自身维护一个对数据源信用积分更新的列表来提高查询效率。若有限K次重试后仍然无法达成共识，则分以下几种情况处理：<br />
&emsp;&emsp;**前置条件，预言机网络节点数N，共识节点数预设值C，其中C满足：**<br />

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;![](https://latex.codecogs.com/gif.latex?N*%5Cfrac%7B2%7D%7B3%7D&plus;1%5Cleq%20C%5Cleq%20N)

1. 当实际共识节点数N/2<C'<C时，则N-C'个未达成共识节点失去声誉点和保证金，并应主动更新自身所维护的数据源信用积分列表。<br />
2. 当实际共识节点数N/3<=C'<=N/2时，所有预言机网络节点失去声誉点，并应主动更新自身所维护的数据源信用积分列表。<br />
3. 当实际共识节点数C'<N/3时，所有预言机网络节点失去声誉点和保证金，并应主动更新自身所维护的数据源信用积分列表，整个预言机网络洗牌重组。<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/oracle.jpg)

&emsp;&emsp;以下我们描述了Oracle合约需具备但不限于所列出的属性：<br/>

| Field       |  Type  | Description                              |
| ----------- | :----: | :--------------------------------------- |
| charge      | uint64 | Service charge, bounty.                  |
| deposit     | uint64 | Prevent Oracle Nodes from doing evil.    |
| reputation  | uint32 | The credit threshold for participating in Oracles network. |
| sourceType  | string | Keywords for reducing search scope and improving query efficiency.eg:"chaindata,UML". |
| oracleCount | uint8  | Expected number of Oracle.               |
| agreeCount  | uint8  | The number of Oracle reaching a consensus. |
| threshold   | uint32 | Comprehensive assessment of Oracle and the list of data sources it maintains. |

### 5.7. GEB开源软件
&emsp;&emsp;GEB团队将在未来提供以下（不限于）的开源软件：<br />
- 交易市场节点软件
- 交易市场DApp
- H5交易市场插件
- 陪审员仲裁软件

<br /><br />
## 6. 协议安全分析

### 6.1. 法币转移风险
&emsp;&emsp;GEB Network中的OTC以及抵押借贷都实现了Token与法币之间的兑换。因此，在执行交易时，我们要考虑经常会出现的问题是区块链加密资产转移的不可回退性与许多法币支付方式可回退性之间的不匹配。常见的支付方式及其交易回退性如下：<br />

| Payment Method      | Currencies            | Reversibility of Transactions            |
| :------------------ | :-------------------- | :--------------------------------------- |
| PayPal - regular    | Most world currencies | Extremely easy to charge back. Also, since trading bitcoin is against their ToS, good luck disputing the chargeback. |
| Paypal - personal   | Most world currencies | If funded via bank, requires person to dispute the ACH, which may be more arduous. If funded via credit card, requires person to dispute the CC charge, which is pretty easy. Since there's no way to tell what the funding source was... it's a gamble. Also, if paypal account is reported stolen, paypal will probably attempt to claw back the money. |
| AliPay / Wechat Pay | CNY                   | There are reports of reversed AliPay payments can be found on the Internet. |
| Dwolla              | USD                   | Since Dwolla amounts are funded via ACH, Dwolla will now reverse payments if the funds were the result of fraud. Additionally, Dwolla's Terms and Conditions now state that peyments received are subject to chargebacks as the result of their internal dispute resolution process. |
| Credit / Debit card | Any currency          | Extremely easy to charge back.           |

&emsp;&emsp;针对这种不匹配性矛盾，GEB基金会将对认证的交易商所支持的法币支付方式做相关要求，必须选择符合地区法律监管，交易不可回退的支付方式（如Bank wire，MoneyPak，Webmoney，[LavaPay](https://en.bitcoin.it/wiki/LavaPay)，OKPay等）以匹配区块链资产转移的特性，从而实现广义程度上的交易原子性，防范欺诈等风险。<br />

### 6.2. 预言机攻击
&emsp;&emsp;GEB协议下的有效合约操作都映射到以太坊区块链全局状态的更改，即APPLY(S,TX) -> S'。而协议簇是由一组或多组有状态的合约构成，一个非正确性（虚假数据，乱序等）的输入就会使得非预期性结果永久被写入账本。有前后状态依赖的输入输出意味着具备有序性与逻辑性，这就对合约程序的鲁棒性和输入的正确性都提出了很高的要求。合约编写需要我们缜密的思考，良好的编码习惯及细致的审计工作。数据的输入需要保证数据源的可靠，在GEB Network中对于数据源的接入以及防止Oracle节点联合作恶，我们设置了应用层共识，声誉系统、抵押保证金、流动性服务等机制。在匹配需求是从外部行情市场进行喂价时，要考虑价格的波动和成交的及时性，Oracle之间未达成共识时的有限K次重试就可能会成为攻击点，我们会在保证系统安全的情况下根据流量监控等多重因素，设计出K值的动态调整策略以尽量减少K值并结合对数据进行剔除最值再取均值的处理方式来完成喂价。此外，针对特定的外部数据输入我们还设立了加解密预言机来保护数据和提升系统的安全性。

### 6.3. 中间人攻击
&emsp;&emsp;中间人攻击主要发生在用户与服务器通信的过程中。在GEB Network中设有共享流动性池分布式集群服务和分散的陪审员网络。在共享流动性池集群中，交易所需要与服务节点直接通信，正常情况下两者在TLS连接下内容是加密的，第三方即使可以嗅探到所有的数据，也不能解密。但第三方即中间人可以与交易所建立连接，然后中间人再与服务节点建立连接，转发他们之间的内容，这时候中间人就能解密获取明文信息并进行修改。如果中间人截获交易所发出的共享订单，经篡改后转发至服务节点则导致大量垃圾交易被填充在共享流动性池中，进而使得其他交易所可能获取的是大量的无效共享订单。因此，GEB基金会将通过DAO给已认证的集群节点根据其DID颁发证书来防范此类攻击。在陪审员网络中，我们采用了内容推拉分离式设计使得用户与陪审员网络不直接交互，而是通过PageSigner等方式将证据的内容哈希上链存储，而陪审员主动提审证据，从而防范了中间人攻击。<br />

### 6.4. 女巫攻击或拒绝服务攻击
&emsp;&emsp;伪装成多个节点执行恶意行为称为Sybil攻击，它致使被攻击者承受多方伪装节点的虚假数据。而拒绝服务攻击即是攻击者想办法让目标机器停止提供服务。Sybil和DOS两种攻击模型经常能够组合出现，比如只需要20个女巫节点，DOS就能完全可以泛滥式攻击某P2P网络的数据库使其脱机，还能对网络上的所有流量进行归档。GEB Network 与以太坊区块链存在安全性的从属依赖关系，在以太坊中工作量证明的目的之一就是使区块的创建变得困难，从而阻止女巫攻击者恶意重新生成区块链。在GEB协议生态中，陪审员、交易商、共享流动性池集群节点都经过去中心化身份认证，不存在攻击者可以通过只部署一个实体，向网络中广播多个身份ID，来充当多个不同的节点。此外，有关对共享流动性池的DDOS攻击可选用如蜘蛛系统等解决方案进行防御。<br />

### 6.5. Penny-Spend 攻击
&emsp;&emsp;Penny-Spend 攻击是指攻击者通过发送大量微小金额的交易来浪费节点的存储资源或作为套利手段骗取GEB Token。GEB协议设计成“链下订单中继链上结算”的模式，那么在交易结算之前的订单合并是防范由于零成本的订单委托容易成为攻击切入口的有效措施（实际上，此为传统中心化交易所常见的业务模式）。但是，交易所本身可能会想通过发送大量垃圾共享订单来污染共享流动性池，关于此种做法，我们能够根据共享订单中的DID/originExAddr来追踪共享订单来源，在集群服务中对恶意行为进行监控，如有发现作恶则提交至DAO来取消该交易所的认证资格和没收保证金。此外，关于交易所通过刷量交易获取GEB Token的情形，由于交易所收取交易佣金是在上链结算之后，交易的合法性也会经以太坊矿工验证，因此可以杜绝此类现象。<br />

### 6.6. 信心攻击
&emsp;&emsp;信心攻击是指攻击者利用典型的人类特征，如贪婪，不诚实，虚荣，机会主义，欲望，同情，轻信，不负责任，绝望和天真等对目标者实施诈骗。 然而，信心攻击在GEB Network中的体现主要在于攻击者已经获取对手方的相关信息，并且分析数据来了解其弱点先行进行信任骗取（攻击者为了实行攻击，通常建立了样本库并进行过聚类分析，获取信息后只需与数据库进行匹配就可快速采取相应的攻击手段），再通过引导的方式让双方的交易在脱离GEB协议的场景下完成。为防范此类攻击，我们要求交易商在所提供的交易工具上呈现醒目的类似“请勿将交易转移至GEB Network之外的环境执行”等风险提示。此外，就系统本身而言，我们设计了去中心化身份认证机制，具有高度的隐私保护性，攻击者想在GEB Network中获取目标隐私数据是困难的。同时，我们也倡议用户注意合理维护自身资金账户地址与社交属性App之间的弱相关性，提升自我隐私保护意识。<br />

### 6.7. 智能合约代码审核
&emsp;&emsp;回顾2016年6月17日The DAO事件，2017年11月6日Parity多重签名合约漏洞事件，以及最近的SMT、BEC合约的整数溢出漏洞事件等均造成了资金上的巨大损失。若不做好严格的代码审计和安全防护，生态建设就成为了一纸空文。因此，GEB Network 的所有合约代码均会经专业的智能合约安全审计机构进行审阅和充分测试，届时还会提交测试报告及相关材料。<br />
&emsp;&emsp;考虑到协议的升级，GEB Network 的部分组件有可能建立在Zeppelin_OS之上。Zeppelin_OS是用以安全地构建和管理EVM生态的智能合约应用的去中心化平台。它设有担保机制实现合约代码的管理与升级，同时还提供了一个用于攻击响应的工具箱来预防攻击，当遭遇黑客攻击时，Zeppelin_OS将被触发紧急暂停，恢复到之前未受影响的状态。<br />
&emsp;&emsp;我们相信，一系列严谨细致的研发工作将能为 GEB Network 的生态建设之路保驾护航。<br />

<br /><br />
## 7. 市场分析

### 7.1. 加密货币市场现状
&emsp;&emsp;根据CoinMarketCap的研究，在2017年9月，加密货币的平均日交易量已经超过了40亿美元，加密货币市场的总市值已经超过了130亿美元。然而，与全球法定货币的交易相比，加密货币市场仍然很小。例如，国际清算银行评估的全球外汇市场日交易量为5.1万亿美元，根据加密货币目前的增长率，很可能在未来3年内就能达到与外汇市场相似的交易量。因为我们很快就会生活在一个以数字货币为主导的现实中。<br />
&emsp;&emsp;从市场反应和数据上看，2017年加密货币市场已经达到了政府无法忽视的规模，因此，越来越多的国家将会认可加密货币，并对其进行相关规范和立法，可见加密货币未来巨大的发展潜力。<br />

### 7.2. 世界各国对区块链的态度
&emsp;&emsp;总的来说，大多数国家对于加密货币和区块链技术的都持欢迎的态度，并且已经开始尝试推动加密货币的应用落地以及在技术上进行探索与创新：<br />

- **中国**：虽然中国目前对加密货币的交易持保守态度，但是在政府层面上从未停止对区块链底层技术的研究。

2016年2月，中国的央行行长周小川表示数字货币必须由央行来发行，区块链成为研发数字货币可选的技术。<br />
2016年12月，国家将区块链列入了十三五国家信息化规划。<br />
2016年10月，工信部发布了2016中国区块链技术和应用发展白皮书。<br />
2017年9月，中国人民银行等七部委联合发文认定ICO是一种未经批准的非法公开融资的行为，涉嫌非法发售代币票券，非法发行证券，以及非法集资金融诈骗传销等违法行为。

- **俄罗斯**：俄罗斯政府的态度比较复杂，俄罗斯之前禁止公民持有和交易比特币，但是对于区块链技术却非常欢迎。

2017年6月，俄罗斯总统普京接见了以太坊创始人Vitalic Buterin。<br />
2017年8月，俄罗斯国家开发银行与以太坊基金会达成了战略合作。<br />

- **韩国**：韩国对区块链目前持支持的态度，对比特币以太坊等数字资产在加强监管。

2016年2月，韩国央行在报告中提出鼓励探索区块链技术。<br />
2017年9月，韩国金融服务委员会FSC宣布将如何对数字货币，比如比特币，以太币进行监管。韩国加大监管力度，对于洗钱，非法融资和其他数字货币非法交易进行调查。<br />

- **印度**：印度作为人口大国以及软件开发强国，一直很重视区块链技术的应用。

2017年1月，印度的央行发布了一份全面的区块链白皮书，认为区块链对于印度发行数字货币的时机已经成熟。<br />
2017年6月，印度政府委员会宣布支持监管比特币成立专门的任务组，创建监管框架计划短期内全面完成比特币的合法化。<br />

- **澳大利亚**：澳大利亚比较注重区块链技术的应用和标准的制定。

2016年4月，澳大利亚标准局呼吁制定全球ISO区块链标准。<br />
2017年3月，澳大利亚国家标准局根据国际标准组织iSO分配的任务，发布了国际区观念标准开发路线图。<br />
2017年8月，澳大利亚政府宣布将数字货币，交易所纳入澳大利亚交易数据分析中心监管。澳大利亚证券交易所等均在使用区块链技术进行交易的测试。<br />

- **英国**：英国是欧洲地区最早对区块链进行研究验证的国家。

2016年1月19日，英国政府率先发布了长达88页的《分布式账本技术：超越区块链》的白皮书，同时积极评估区块链技术的潜力，考虑它将用于减少金融欺诈降低成本的领域。<br />
2016年3月，欧洲央行ECB在《欧元体系的愿景——欧洲金融市场基础设施的未来》这个咨询报告中公开宣布正在探索如何使用区块链技术为己所用。<br />

- **荷兰**：荷兰央行发布观点认为区块链技术可以改善其金融业务质量。

2016年9月，荷兰境内成立区块链园区，由银行和金融公司合作开发区块链技术在支付和泛金融领域的应用。<br />

- **德国**：德国在区块链新风口将抓住机遇与迎接挑战。

2016年11月，德意志联邦银行和法兰克福金融管理学院联合召开区块链技术机遇与挑战的大会，大会的主要目的都是对分布式账本的潜在运用展开研究，包括跨境支付跨行转账以及贸易数据的存储等等。<br />

- **美国**：美国通过立法来支持区块链的发展。

2014年6月，美国加利福尼亚州州长签署了一项编号为 AB129 的法律文件，保障加州比特币以及其他数字货币交易的合法化。<br />
2016年6月，美国国土安全部对六家致力于政府去管理应用的开发公司进行补贴。<br />
2017年2月，美国亚利桑那州通过区块链签名和智能合约合法性法案。同月，美国医疗保健部门 ONC 以举办医疗保健黑客应用开发马拉松，将区块链技术应用到医疗保健领域当中。美国国会宣布成立国会区块链决策委员会并承认了区块链的潜力，呼吁发展区块链技术在公共部门中的应用，而在比特币的态度上，美国也是鼓励投资并实施严格的监管。<br />
2017年7月，美国证券交易委员会 SEC 认定以太坊代币属于证券，发行方需要依法办理证券发行的登记。同月，美国商品期货交易委员会 CFTC 批准 LedgerX 与以加密币市场挂钩的期权和衍生品提供清算服务。<br />

- **日本**：日本的态度非常积极。日本的央行自己在尝试一些区块链项目，在立法监管上主要是针对如何推动比特币等数字资产的应用落地。

2016年3月，日本内阁通过投票将比特币和数字货币均视为数字等价货币。<br />
2017年4月1日，日本实施了《支付服务法案》，正式承认比特币是一种合法的支付方式，对于数字资产交易所提出了明确的监管要求。<br />
2017年7月，日本新版消费税正式生效，比特币交易将不再需要缴纳 8% 的消费税。<br />

- **新加坡**：新加坡的是一片区块链的沃土，该国总理李显龙公开督促新加坡金融部门跟上区块链技术的发展的步伐。因此，新加坡在对于区块链证券金融创新监管政策的开放程度远超亚洲其他国家。

2016年6月，新加坡金融管理局推出了沙盒机制 Sandbox，只要任何在法律规定的受保护中注册的金融科技公司，在事先报备的情况下，允许从事和目前法律法规有所冲突的业务，并且即使以后被官方终止相关业务，也不会追究其相关的法律责任。通过这种沙盒的机制，新加坡政府能够在可控范围内鼓励企业进行各种区块链的金融创新。<br />
&emsp;&emsp;综上分析可知，GEB团队在未来发行代币时将会严格遵守世界各国目前的相关政策法规，先从对数字货币政策相对开放的新加坡发行，逐步向其他国家发展。<br />

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/world.jpg)

<br /><br />
### 7.3. SWOT分析

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/swot.jpg)

<br /><br />
## 8. 路线图

![img](https://github.com/gebnetwork/DAICO/blob/master/whitepaper/images/roadmap-horizontal.jpg)

<div class="tg-wrap"><table>
  <tr>
    <td rowspan="3">2018.Q2</td>
    <td>白皮书发布</td>
  </tr>
  <tr>
    <td>GEB Network官网上线</td>
  </tr>
  <tr>
    <td>启动全球社群运营，包括美国，中国，加拿大，澳大利亚，俄罗斯等国家</td>
  </tr>
  <tr>
    <td rowspan="4">2018.Q3</td>
    <td>开放交易商申请</td>
  </tr>
  <tr>
    <td>DAICO启动，分为Phase Ⅰ和Phase Ⅱ两个阶段</td>
  </tr>
  <tr>
    <td>GEB代币上线交易所</td>
  </tr>
  <tr>
    <td>智能合约开发</td>
  </tr>
  <tr>
    <td rowspan="2">2018.Q4</td>
    <td>平台软件开发</td>
  </tr>
  <tr>
    <td>发布GEB协议内测版</td>
  </tr>
  <tr>
    <td rowspan="3">2019.Q1</td>
    <td>上线至少10家GEB认证交易所</td>
  </tr>
  <tr>
    <td>发布GEB协议公测版，及平台开源</td>
  </tr>
  <tr>
    <td>官方交易所试运行，模拟交易</td>
  </tr>
  <tr>
    <td rowspan="2">2019.Q1</td>
    <td>GEB Network主网上线</td>
  </tr>
  <tr>
    <td>GEB官方交易所正式运行</td>
  </tr>
  <tr>
    <td>2019.Q2</td>
    <td>设立GEB Network北美、欧洲办公室，扩展全球业务</td>
  </tr>
</table></div>

<br /><br />
## 9. 团队介绍
- CEO: 朱崴

&emsp;&emsp;复旦大学微电子学学士，十余年互联网行业技术研发和技术管理经验。区块链，人工智能布道者。增长黑客，终身学习者。曾创办新普IT咨询，为国内最早的从事区块链技术咨询的企业。曾任奇虎360WiFi业务首席架构师，DeNA China技术总监，主持亿级用户产品的研发管理工作。技术创新先驱，主张从协议层对互联网基础设施进行重构。对区块链、分布式计算、事件溯源，图灵计算、深度学习等理论有深入研究和独到的见解。<br />

- CTO: 朱清

&emsp;&emsp;电子科技大学最高荣誉“成电杰出学生”获得者，chainboard.io链博科技创始人。曾任冰鉴科技技术总监，设计并主导了风控一体化平台和信用大数据平台的研发。在互联网征信与风控模型设计、微服务系统架构设计和研发方面有着丰富经验。并从2016年开始带领团队掌握并成功开发基于区块链技术的行业应用，参与上市公司的区块链项目运作。曾作为特聘技术顾问给多家上市公司提供架构咨询及设计，并在多个知名技术论坛上作为讲师分享主题。<br />

- CPO: 兰坚

  Hardrole联合创始人兼CTO，资深区块链工程师。爱好逻辑学与战略研究，有着丰富的互联网从业经验和深刻的技术洞见，曾在著名人工智能公司Hiscene负责云架构设计与产品开发。在区块链领域浸泡多年，熟悉区块链底层，多币种钱包和交易所等技术以及各类安全防护。此外，还参与了Metaverse开发，是Core Team成员。目前正积极研究区块链扩容和DAG偏序网络结构下定序等方案的工程方面的问题。<br />

- COO: 朱帅

&emsp;&emsp;中国版Minergate-GPU360项目联合创始人，研发总监，前SAP中国实验室，趋势科技中国研发中心，资深研发工程师，谷歌开发者社区负责人，毕业于电子科技大学。作为国内早期区块链技术布道者，从2015年开始进行区块链技术相关的研发实践，并参与了Bitbank、同心互助等多个区块链技术应用项目。曾参与组建了多家技术型创业公司的核心研发团队，其中包括被Gartner评为全球最具创新能力大数据安全公司——瀚思安信。<br />

- CFO: 江纯

&emsp;&emsp;本科毕业于复旦大学，硕士就读于杜克大学国际经贸专业。曾就职于摩根士丹利伦敦，任职金融分析师。曾供职于世界银行，从事全球价值链研究，分析中国经济金融政策对产业链升级和全球化的影响。<br />

- Senior Engineer: 谢玮峰

&emsp;&emsp;本科毕业于复旦大学计算机系，曾任职于微软中国，负责微软在线支付系统的技术架构工作。2013年开始关注比特币及相关技术，对区块链技术有深入研究，目前专注于企业级数字货币钱包和区块链底层研发。<br />

<br /><br />
## 10. 参考文献
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
[11] 黄世亮. 拒绝付款套利攻击——比特币场外交易的一种攻击手法及防范, https://mp.weixin.qq.com/s?__biz=MzIxNTA0NDQzMA==&mid=2651798518&idx=1&sn=4e91bac98cea5bc600e8429f1af3a728, 2017.<br />
[12] RSK Labs. Sidechains, Drivechains, and RSK 2-Way peg Design, https://www.rsk.co/blog/sidechains-drivechains-and-rsk-2-way-peg-design, 2017.<br />
