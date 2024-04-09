; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36398 () Bool)

(assert start!36398)

(declare-fun b!363809 () Bool)

(declare-fun e!222764 () Bool)

(declare-fun e!222763 () Bool)

(assert (=> b!363809 (= e!222764 (not e!222763))))

(declare-fun res!203124 () Bool)

(assert (=> b!363809 (=> res!203124 e!222763)))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20640 0))(
  ( (array!20641 (arr!9796 (Array (_ BitVec 32) (_ BitVec 64))) (size!10148 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20640)

(declare-fun lt!168144 () (_ BitVec 32))

(declare-fun lt!168141 () (_ BitVec 32))

(assert (=> b!363809 (= res!203124 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10148 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168141 (bvadd #b00000000000000000000000000000001 lt!168144)))))))

(declare-fun lt!168148 () (_ BitVec 32))

(declare-fun lt!168142 () (_ BitVec 32))

(assert (=> b!363809 (= (bvadd lt!168148 lt!168142) lt!168141)))

(declare-fun lt!168146 () array!20640)

(declare-fun arrayCountValidKeys!0 (array!20640 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363809 (= lt!168141 (arrayCountValidKeys!0 lt!168146 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363809 (= lt!168148 (arrayCountValidKeys!0 lt!168146 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11287 0))(
  ( (Unit!11288) )
))
(declare-fun lt!168149 () Unit!11287)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11287)

(assert (=> b!363809 (= lt!168149 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168146 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168147 () (_ BitVec 32))

(declare-fun lt!168143 () (_ BitVec 32))

(assert (=> b!363809 (= (bvadd lt!168147 lt!168143) lt!168144)))

(assert (=> b!363809 (= lt!168144 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363809 (= lt!168147 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168140 () Unit!11287)

(assert (=> b!363809 (= lt!168140 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203120 () Bool)

(declare-fun e!222761 () Bool)

(assert (=> start!36398 (=> (not res!203120) (not e!222761))))

(assert (=> start!36398 (= res!203120 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10148 a!4289))))))

(assert (=> start!36398 e!222761))

(assert (=> start!36398 true))

(declare-fun array_inv!7234 (array!20640) Bool)

(assert (=> start!36398 (array_inv!7234 a!4289)))

(declare-fun b!363810 () Bool)

(assert (=> b!363810 (= e!222761 e!222764)))

(declare-fun res!203121 () Bool)

(assert (=> b!363810 (=> (not res!203121) (not e!222764))))

(assert (=> b!363810 (= res!203121 (and (= lt!168142 (bvadd #b00000000000000000000000000000001 lt!168143)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363810 (= lt!168142 (arrayCountValidKeys!0 lt!168146 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363810 (= lt!168143 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363810 (= lt!168146 (array!20641 (store (arr!9796 a!4289) i!1472 k!2974) (size!10148 a!4289)))))

(declare-fun b!363811 () Bool)

(declare-fun res!203122 () Bool)

(assert (=> b!363811 (=> (not res!203122) (not e!222761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363811 (= res!203122 (not (validKeyInArray!0 (select (arr!9796 a!4289) i!1472))))))

(declare-fun b!363812 () Bool)

(declare-fun res!203123 () Bool)

(assert (=> b!363812 (=> (not res!203123) (not e!222761))))

(assert (=> b!363812 (= res!203123 (and (bvslt (size!10148 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10148 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363813 () Bool)

(declare-fun res!203125 () Bool)

(assert (=> b!363813 (=> (not res!203125) (not e!222761))))

(assert (=> b!363813 (= res!203125 (validKeyInArray!0 k!2974))))

(declare-fun b!363814 () Bool)

(assert (=> b!363814 (= e!222763 true)))

(assert (=> b!363814 (= (arrayCountValidKeys!0 lt!168146 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168145 () Unit!11287)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20640 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11287)

(assert (=> b!363814 (= lt!168145 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(assert (= (and start!36398 res!203120) b!363811))

(assert (= (and b!363811 res!203122) b!363813))

(assert (= (and b!363813 res!203125) b!363812))

(assert (= (and b!363812 res!203123) b!363810))

(assert (= (and b!363810 res!203121) b!363809))

(assert (= (and b!363809 (not res!203124)) b!363814))

(declare-fun m!361219 () Bool)

(assert (=> b!363810 m!361219))

(declare-fun m!361221 () Bool)

(assert (=> b!363810 m!361221))

(declare-fun m!361223 () Bool)

(assert (=> b!363810 m!361223))

(declare-fun m!361225 () Bool)

(assert (=> b!363809 m!361225))

(declare-fun m!361227 () Bool)

(assert (=> b!363809 m!361227))

(declare-fun m!361229 () Bool)

(assert (=> b!363809 m!361229))

(declare-fun m!361231 () Bool)

(assert (=> b!363809 m!361231))

(declare-fun m!361233 () Bool)

(assert (=> b!363809 m!361233))

(declare-fun m!361235 () Bool)

(assert (=> b!363809 m!361235))

(declare-fun m!361237 () Bool)

(assert (=> b!363811 m!361237))

(assert (=> b!363811 m!361237))

(declare-fun m!361239 () Bool)

(assert (=> b!363811 m!361239))

(declare-fun m!361241 () Bool)

(assert (=> b!363814 m!361241))

(declare-fun m!361243 () Bool)

(assert (=> b!363814 m!361243))

(declare-fun m!361245 () Bool)

(assert (=> b!363814 m!361245))

(declare-fun m!361247 () Bool)

(assert (=> b!363813 m!361247))

(declare-fun m!361249 () Bool)

(assert (=> start!36398 m!361249))

(push 1)

(assert (not b!363814))

(assert (not b!363811))

(assert (not start!36398))

(assert (not b!363813))

(assert (not b!363809))

(assert (not b!363810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

