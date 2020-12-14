module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 40306,
      network_id: "4869",
      //from:"0x23e54f2baaff3042865144da0377f75015e48a7a",
      gas: 4600000      //make sure this gas allocation isn't over 4M, which is the max
    }
  }
}
