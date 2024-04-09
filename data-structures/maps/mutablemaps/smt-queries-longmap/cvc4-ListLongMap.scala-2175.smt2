; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36396 () Bool)

(assert start!36396)

(declare-fun res!203107 () Bool)

(declare-fun e!222752 () Bool)

(assert (=> start!36396 (=> (not res!203107) (not e!222752))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20638 0))(
  ( (array!20639 (arr!9795 (Array (_ BitVec 32) (_ BitVec 64))) (size!10147 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20638)

(assert (=> start!36396 (= res!203107 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10147 a!4289))))))

(assert (=> start!36396 e!222752))

(assert (=> start!36396 true))

(declare-fun array_inv!7233 (array!20638) Bool)

(assert (=> start!36396 (array_inv!7233 a!4289)))

(declare-fun b!363791 () Bool)

(declare-fun res!203105 () Bool)

(assert (=> b!363791 (=> (not res!203105) (not e!222752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363791 (= res!203105 (not (validKeyInArray!0 (select (arr!9795 a!4289) i!1472))))))

(declare-fun b!363792 () Bool)

(declare-fun res!203104 () Bool)

(assert (=> b!363792 (=> (not res!203104) (not e!222752))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363792 (= res!203104 (and (bvslt (size!10147 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10147 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363793 () Bool)

(declare-fun e!222750 () Bool)

(assert (=> b!363793 (= e!222750 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168116 () array!20638)

(declare-fun arrayCountValidKeys!0 (array!20638 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363793 (= (arrayCountValidKeys!0 lt!168116 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-datatypes ((Unit!11285 0))(
  ( (Unit!11286) )
))
(declare-fun lt!168117 () Unit!11285)

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20638 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11285)

(assert (=> b!363793 (= lt!168117 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!363794 () Bool)

(declare-fun e!222749 () Bool)

(assert (=> b!363794 (= e!222752 e!222749)))

(declare-fun res!203102 () Bool)

(assert (=> b!363794 (=> (not res!203102) (not e!222749))))

(declare-fun lt!168115 () (_ BitVec 32))

(declare-fun lt!168111 () (_ BitVec 32))

(assert (=> b!363794 (= res!203102 (and (= lt!168111 (bvadd #b00000000000000000000000000000001 lt!168115)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363794 (= lt!168111 (arrayCountValidKeys!0 lt!168116 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363794 (= lt!168115 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363794 (= lt!168116 (array!20639 (store (arr!9795 a!4289) i!1472 k!2974) (size!10147 a!4289)))))

(declare-fun b!363795 () Bool)

(declare-fun res!203106 () Bool)

(assert (=> b!363795 (=> (not res!203106) (not e!222752))))

(assert (=> b!363795 (= res!203106 (validKeyInArray!0 k!2974))))

(declare-fun b!363796 () Bool)

(assert (=> b!363796 (= e!222749 (not e!222750))))

(declare-fun res!203103 () Bool)

(assert (=> b!363796 (=> res!203103 e!222750)))

(declare-fun lt!168118 () (_ BitVec 32))

(declare-fun lt!168114 () (_ BitVec 32))

(assert (=> b!363796 (= res!203103 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10147 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168118 (bvadd #b00000000000000000000000000000001 lt!168114)))))))

(declare-fun lt!168110 () (_ BitVec 32))

(assert (=> b!363796 (= (bvadd lt!168110 lt!168111) lt!168118)))

(assert (=> b!363796 (= lt!168118 (arrayCountValidKeys!0 lt!168116 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363796 (= lt!168110 (arrayCountValidKeys!0 lt!168116 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168113 () Unit!11285)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11285)

(assert (=> b!363796 (= lt!168113 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168116 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168112 () (_ BitVec 32))

(assert (=> b!363796 (= (bvadd lt!168112 lt!168115) lt!168114)))

(assert (=> b!363796 (= lt!168114 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363796 (= lt!168112 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168119 () Unit!11285)

(assert (=> b!363796 (= lt!168119 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36396 res!203107) b!363791))

(assert (= (and b!363791 res!203105) b!363795))

(assert (= (and b!363795 res!203106) b!363792))

(assert (= (and b!363792 res!203104) b!363794))

(assert (= (and b!363794 res!203102) b!363796))

(assert (= (and b!363796 (not res!203103)) b!363793))

(declare-fun m!361187 () Bool)

(assert (=> b!363796 m!361187))

(declare-fun m!361189 () Bool)

(assert (=> b!363796 m!361189))

(declare-fun m!361191 () Bool)

(assert (=> b!363796 m!361191))

(declare-fun m!361193 () Bool)

(assert (=> b!363796 m!361193))

(declare-fun m!361195 () Bool)

(assert (=> b!363796 m!361195))

(declare-fun m!361197 () Bool)

(assert (=> b!363796 m!361197))

(declare-fun m!361199 () Bool)

(assert (=> start!36396 m!361199))

(declare-fun m!361201 () Bool)

(assert (=> b!363794 m!361201))

(declare-fun m!361203 () Bool)

(assert (=> b!363794 m!361203))

(declare-fun m!361205 () Bool)

(assert (=> b!363794 m!361205))

(declare-fun m!361207 () Bool)

(assert (=> b!363793 m!361207))

(declare-fun m!361209 () Bool)

(assert (=> b!363793 m!361209))

(declare-fun m!361211 () Bool)

(assert (=> b!363793 m!361211))

(declare-fun m!361213 () Bool)

(assert (=> b!363791 m!361213))

(assert (=> b!363791 m!361213))

(declare-fun m!361215 () Bool)

(assert (=> b!363791 m!361215))

(declare-fun m!361217 () Bool)

(assert (=> b!363795 m!361217))

(push 1)

(assert (not b!363793))

(assert (not b!363795))

(assert (not b!363796))

(assert (not b!363794))

(assert (not start!36396))

(assert (not b!363791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

