
# Election - DAPP Tutorial
Create an election poll using blockchain

Follow the steps below to download, install, and run this project.

## Dependencies
Install these prerequisites to follow along with the tutorial. See free video tutorial or a full explanation of each prerequisite.
- NPM: https://nodejs.org
- Truffle: https://github.com/trufflesuite/truffle
- Ganache: http://truffleframework.com/ganache/
- Metamask: https://metamask.io/
    For metamask install it from chrome extensions and be sure that it is enabled

## Step 1. Install dependencies

## Step 2. Download and start Ganache
Download Ganache from https://truffleframework.com/ganache
Open the Ganache GUI client that you downloaded and installed. This will start your local blockchain instance and it will have ethereum accounts already loaded with fake eth.

## Step 4. Compile & Deploy Election Smart Contract
`$ truffle migrate --reset`
You must migrate the election smart contract each time your restart ganache.

## Step 5. Configure Metamask
- Unlock Metamask (create an account)
- Connect metamask to your local Etherum blockchain provided by Ganache.
- Import an account provided by ganache.

## Step 6. Run the Front End Application
`$ npm run dev`
Visit this URL in your browser: http://localhost:3000