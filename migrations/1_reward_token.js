const Token = artifacts.require('Staked');
const Reward = artifacts.require('Gold');

module.exports = async (deployer, network, addresses) => {
  const [admin, investor, _, someone] = addresses;
  await deployer.deploy(Reward);
  const rewardDeployed = await Reward.deployed();
  console.log('Reward Contract Address', rewardDeployed.address);
  await deployer.deploy(Token, rewardDeployed.address);
  const token = await Token.deployed();
  console.log('Token Contract Address', token.address);
};
