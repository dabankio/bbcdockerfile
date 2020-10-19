mkf -daemon

sleep 2

mkf-cli -rpcport=9550 -rpcuser=mkf -rpcpassword=123 importprivkey 4aa6bd8c70e3adde7dc39d873c9d73006c0ba41e96f6a973dc2b7adad14ade66 123
mkf-cli -rpcport=9550 -rpcuser=mkf -rpcpassword=123 importprivkey 1122513e6d8ad7529d46f52d673c297cb2c8729919420f6435fb36bfd4aac494 123

mkf-cli -rpcport=9550 -rpcuser=mkf -rpcpassword=123 addnewtemplate mint '{"mint": "4c71f61cb70740151c15ea26f6c714817840dcadabf96844b6faabd19ea86665", "spent": "1cnaa5cbevj46n3hvavvj7rab669nrcqs7d6w9prw9zjebwq5rcxzt9hc"}'

mkf-cli -rpcport=9550 -rpcuser=mkf -rpcpassword=123 listaddress
tail -f /home/big/.mkf/testnet/logs/`ls /home/big/.mkf/testnet/logs`