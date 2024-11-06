# Smart Contract MiniSocial

## Aperçu

Le smart contract `MiniSocial` est une plateforme de médias sociaux décentralisée qui permet aux utilisateurs de publier des messages. Chaque message inclut un texte et l'adresse Ethereum de l'utilisateur qui l'a publié. Les utilisateurs peuvent interagir avec le contrat pour publier, consulter des messages par index, et voir le nombre total de messages publiés.

## Fonctions du Contrat

1. **publishPost(string memory _message)** : Permet à un utilisateur de publier un nouveau message. Le message est stocké avec l'adresse de l'auteur.
2. **getTotalPosts()** : Retourne le nombre total de messages publiés.
3. **getPost(uint index)** : Retourne le message et l'adresse de l'auteur pour l'index spécifié. Si l'index est invalide, la transaction échoue avec une erreur.

## Déploiement et Interactions

### 1. Déploiement du Contrat

```plaintext
[vm]
from: 0x5B3...eddC4
to: MiniSocial.(constructor)
value: 0 wei
data: 0x608...a0033
logs: 0
hash: 0xad8...f9e58
status: Transaction réussie
transaction hash: 0xad84e1618b6d48cad29eef7eddae900ec63b7dfe2b3302d402d2a2bc0e8f9e58
block hash: 0x40daf4a075e4cbfac1651dcd1cb48b5703469fe8716b3dc06873c807b52a9392
block number: 6
contract address: 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
gas: 654039
transaction cost: 568729
execution cost: 478709
```

### 2. Publication d'un Nouveau Message

```plaintext
transact to MiniSocial.publishPost pending ... 

[vm]
from: 0x5B3...eddC4
to: MiniSocial.publishPost(string) 0xDA0...42B53
value: 0 wei
data: 0xc57...00000
logs: 0
hash: 0xf1b...a0b7e
status	0x1 Transaction mined and execution succeed
transaction hash	0xf1b6d29ef27f9af8a6ee9f75c54b6b1f0e11b792b86213d516dea94eb7da0b7e
block hash	0x5ca0b60c899e69d05ef5d9477ff63c0b83b157021cd07c7704916f409d02dc45
block number	7
from	0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to	MiniSocial.publishPost(string) 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
gas	103149 gas
transaction cost	89694 gas 
execution cost	68162 gas 
input	0xc57...00000
output	0x
decoded input	{
	"string _message": "hello"
}
```

### 4. Vérification du Nombre Total de Messages

```plaintext
call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: MiniSocial.getTotalPosts()
data: 0x5fa...g825d
from	0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to	MiniSocial.getTotalPosts() 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
execution cost	2440 gas (Cost only applies when called by a contract)
input	0x5fe...226b4
output	0x0000000000000000000000000000000000000000000000000000000000000002
decoded input	{}
decoded output	{
	"0": "uint256: 1"
}
logs	[]
raw logs	[]
```

### 5. Récupération d'un Message Spécifique

```plaintext
call to MiniSocial.getPost

[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: MiniSocial.getPost(uint256)
data: 0x407...00001
```

### 6. Gestion d'Erreur - Index Invalide

Lorsque l'on tente de récupérer un message avec un index inexistant, la transaction échoue :

```plaintext
call to MiniSocial.getPost errored: Error occurred: revert.

revert
	La transaction a échoué et est revenue à l'état initial.
Raison : "Index invalide".
```

### 7. Publication d'un Autre Message

```plaintext
transact to MiniSocial.publishPost pending...

[vm]
from: 0x5B3...eddC4
to: MiniSocial.publishPost(string) 0xDA0...42B53
value: 0 wei
data: 0xc57...00000
logs: 0
hash: 0x821...d1487
status	0x1 Transaction mined and execution succeed
transaction hash	0x821e3e10ee45a6e7d18680540470108341d6127a23afd3322e42b5227bcd1487
block hash	0x97ff51e2f29bebe9f942f26b76e88ebae367229d6e8bef6b098ceac2b3aea8dc
block number	8
from	0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to	MiniSocial.publishPost(string) 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
gas	83608 gas
transaction cost	72702 gas 
execution cost	51062 gas 
input	0xc57...00000
output	0x
decoded input	{
	"string _message": "i am a student"
}
```

### 8. Vérification du Nombre Total de Messages à Nouveau

```plaintext
call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: MiniSocial.getTotalPosts()
data: 0x5fe...226b4
from	0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to	MiniSocial.getTotalPosts() 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
execution cost	2440 gas (Cost only applies when called by a contract)
input	0x5fe...226b4
output	0x0000000000000000000000000000000000000000000000000000000000000002
decoded input	{}
decoded output	{
	"0": "uint256: 2"
}
logs	[]
raw logs	[]
```
