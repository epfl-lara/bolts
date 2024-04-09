; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117162 () Bool)

(assert start!117162)

(declare-fun res!921112 () Bool)

(declare-fun e!780930 () Bool)

(assert (=> start!117162 (=> (not res!921112) (not e!780930))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93695 0))(
  ( (array!93696 (arr!45243 (Array (_ BitVec 32) (_ BitVec 64))) (size!45794 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93695)

(assert (=> start!117162 (= res!921112 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45794 a!4094))))))

(assert (=> start!117162 e!780930))

(assert (=> start!117162 true))

(declare-fun array_inv!34188 (array!93695) Bool)

(assert (=> start!117162 (array_inv!34188 a!4094)))

(declare-fun b!1378469 () Bool)

(declare-fun e!780932 () Bool)

(assert (=> b!1378469 (= e!780930 e!780932)))

(declare-fun res!921116 () Bool)

(assert (=> b!1378469 (=> (not res!921116) (not e!780932))))

(declare-fun lt!606715 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606716 () (_ BitVec 32))

(assert (=> b!1378469 (= res!921116 (and (= lt!606716 (bvsub lt!606715 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606712 () array!93695)

(declare-fun arrayCountValidKeys!0 (array!93695 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378469 (= lt!606716 (arrayCountValidKeys!0 lt!606712 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378469 (= lt!606715 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378469 (= lt!606712 (array!93696 (store (arr!45243 a!4094) i!1451 k!2953) (size!45794 a!4094)))))

(declare-fun b!1378470 () Bool)

(declare-fun res!921114 () Bool)

(assert (=> b!1378470 (=> (not res!921114) (not e!780930))))

(assert (=> b!1378470 (= res!921114 (and (bvslt (size!45794 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45794 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378471 () Bool)

(declare-fun res!921113 () Bool)

(assert (=> b!1378471 (=> (not res!921113) (not e!780930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378471 (= res!921113 (validKeyInArray!0 (select (arr!45243 a!4094) i!1451)))))

(declare-fun b!1378472 () Bool)

(declare-fun e!780929 () Bool)

(assert (=> b!1378472 (= e!780929 true)))

(assert (=> b!1378472 (= (arrayCountValidKeys!0 lt!606712 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45747 0))(
  ( (Unit!45748) )
))
(declare-fun lt!606709 () Unit!45747)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93695 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45747)

(assert (=> b!1378472 (= lt!606709 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378473 () Bool)

(declare-fun res!921117 () Bool)

(assert (=> b!1378473 (=> (not res!921117) (not e!780930))))

(assert (=> b!1378473 (= res!921117 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378474 () Bool)

(assert (=> b!1378474 (= e!780932 (not e!780929))))

(declare-fun res!921115 () Bool)

(assert (=> b!1378474 (=> res!921115 e!780929)))

(declare-fun lt!606714 () (_ BitVec 32))

(declare-fun lt!606713 () (_ BitVec 32))

(assert (=> b!1378474 (= res!921115 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45794 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606713 (bvsub lt!606714 #b00000000000000000000000000000001)))))))

(declare-fun lt!606711 () (_ BitVec 32))

(assert (=> b!1378474 (= (bvadd lt!606711 lt!606716) lt!606713)))

(assert (=> b!1378474 (= lt!606713 (arrayCountValidKeys!0 lt!606712 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378474 (= lt!606711 (arrayCountValidKeys!0 lt!606712 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606717 () Unit!45747)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45747)

(assert (=> b!1378474 (= lt!606717 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606712 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606710 () (_ BitVec 32))

(assert (=> b!1378474 (= (bvadd lt!606710 lt!606715) lt!606714)))

(assert (=> b!1378474 (= lt!606714 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378474 (= lt!606710 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606718 () Unit!45747)

(assert (=> b!1378474 (= lt!606718 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117162 res!921112) b!1378471))

(assert (= (and b!1378471 res!921113) b!1378473))

(assert (= (and b!1378473 res!921117) b!1378470))

(assert (= (and b!1378470 res!921114) b!1378469))

(assert (= (and b!1378469 res!921116) b!1378474))

(assert (= (and b!1378474 (not res!921115)) b!1378472))

(declare-fun m!1263247 () Bool)

(assert (=> start!117162 m!1263247))

(declare-fun m!1263249 () Bool)

(assert (=> b!1378472 m!1263249))

(declare-fun m!1263251 () Bool)

(assert (=> b!1378472 m!1263251))

(declare-fun m!1263253 () Bool)

(assert (=> b!1378472 m!1263253))

(declare-fun m!1263255 () Bool)

(assert (=> b!1378474 m!1263255))

(declare-fun m!1263257 () Bool)

(assert (=> b!1378474 m!1263257))

(declare-fun m!1263259 () Bool)

(assert (=> b!1378474 m!1263259))

(declare-fun m!1263261 () Bool)

(assert (=> b!1378474 m!1263261))

(declare-fun m!1263263 () Bool)

(assert (=> b!1378474 m!1263263))

(declare-fun m!1263265 () Bool)

(assert (=> b!1378474 m!1263265))

(declare-fun m!1263267 () Bool)

(assert (=> b!1378473 m!1263267))

(declare-fun m!1263269 () Bool)

(assert (=> b!1378469 m!1263269))

(declare-fun m!1263271 () Bool)

(assert (=> b!1378469 m!1263271))

(declare-fun m!1263273 () Bool)

(assert (=> b!1378469 m!1263273))

(declare-fun m!1263275 () Bool)

(assert (=> b!1378471 m!1263275))

(assert (=> b!1378471 m!1263275))

(declare-fun m!1263277 () Bool)

(assert (=> b!1378471 m!1263277))

(push 1)

(assert (not b!1378469))

(assert (not start!117162))

(assert (not b!1378471))

(assert (not b!1378474))

(assert (not b!1378473))

(assert (not b!1378472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

