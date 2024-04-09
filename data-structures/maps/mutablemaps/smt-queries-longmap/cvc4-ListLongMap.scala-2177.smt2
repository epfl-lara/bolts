; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36408 () Bool)

(assert start!36408)

(declare-fun b!363899 () Bool)

(declare-fun res!203215 () Bool)

(declare-fun e!222824 () Bool)

(assert (=> b!363899 (=> (not res!203215) (not e!222824))))

(declare-datatypes ((array!20650 0))(
  ( (array!20651 (arr!9801 (Array (_ BitVec 32) (_ BitVec 64))) (size!10153 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20650)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363899 (= res!203215 (not (validKeyInArray!0 (select (arr!9801 a!4289) i!1472))))))

(declare-fun b!363901 () Bool)

(declare-fun e!222823 () Bool)

(assert (=> b!363901 (= e!222824 e!222823)))

(declare-fun res!203213 () Bool)

(assert (=> b!363901 (=> (not res!203213) (not e!222823))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168294 () (_ BitVec 32))

(declare-fun lt!168292 () (_ BitVec 32))

(assert (=> b!363901 (= res!203213 (and (= lt!168294 (bvadd #b00000000000000000000000000000001 lt!168292)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168295 () array!20650)

(declare-fun arrayCountValidKeys!0 (array!20650 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363901 (= lt!168294 (arrayCountValidKeys!0 lt!168295 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363901 (= lt!168292 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363901 (= lt!168295 (array!20651 (store (arr!9801 a!4289) i!1472 k!2974) (size!10153 a!4289)))))

(declare-fun b!363902 () Bool)

(declare-fun res!203214 () Bool)

(assert (=> b!363902 (=> (not res!203214) (not e!222824))))

(assert (=> b!363902 (= res!203214 (validKeyInArray!0 k!2974))))

(declare-fun b!363903 () Bool)

(declare-fun e!222821 () Bool)

(assert (=> b!363903 (= e!222821 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363903 (= (arrayCountValidKeys!0 lt!168295 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-datatypes ((Unit!11297 0))(
  ( (Unit!11298) )
))
(declare-fun lt!168296 () Unit!11297)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20650 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11297)

(assert (=> b!363903 (= lt!168296 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!363904 () Bool)

(assert (=> b!363904 (= e!222823 (not e!222821))))

(declare-fun res!203212 () Bool)

(assert (=> b!363904 (=> res!203212 e!222821)))

(declare-fun lt!168291 () (_ BitVec 32))

(declare-fun lt!168293 () (_ BitVec 32))

(assert (=> b!363904 (= res!203212 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10153 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168291 (bvadd #b00000000000000000000000000000001 lt!168293)))))))

(declare-fun lt!168299 () (_ BitVec 32))

(assert (=> b!363904 (= (bvadd lt!168299 lt!168294) lt!168291)))

(assert (=> b!363904 (= lt!168291 (arrayCountValidKeys!0 lt!168295 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363904 (= lt!168299 (arrayCountValidKeys!0 lt!168295 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168297 () Unit!11297)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11297)

(assert (=> b!363904 (= lt!168297 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168295 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168290 () (_ BitVec 32))

(assert (=> b!363904 (= (bvadd lt!168290 lt!168292) lt!168293)))

(assert (=> b!363904 (= lt!168293 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363904 (= lt!168290 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168298 () Unit!11297)

(assert (=> b!363904 (= lt!168298 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203210 () Bool)

(assert (=> start!36408 (=> (not res!203210) (not e!222824))))

(assert (=> start!36408 (= res!203210 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10153 a!4289))))))

(assert (=> start!36408 e!222824))

(assert (=> start!36408 true))

(declare-fun array_inv!7239 (array!20650) Bool)

(assert (=> start!36408 (array_inv!7239 a!4289)))

(declare-fun b!363900 () Bool)

(declare-fun res!203211 () Bool)

(assert (=> b!363900 (=> (not res!203211) (not e!222824))))

(assert (=> b!363900 (= res!203211 (and (bvslt (size!10153 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10153 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36408 res!203210) b!363899))

(assert (= (and b!363899 res!203215) b!363902))

(assert (= (and b!363902 res!203214) b!363900))

(assert (= (and b!363900 res!203211) b!363901))

(assert (= (and b!363901 res!203213) b!363904))

(assert (= (and b!363904 (not res!203212)) b!363903))

(declare-fun m!361379 () Bool)

(assert (=> b!363899 m!361379))

(assert (=> b!363899 m!361379))

(declare-fun m!361381 () Bool)

(assert (=> b!363899 m!361381))

(declare-fun m!361383 () Bool)

(assert (=> b!363901 m!361383))

(declare-fun m!361385 () Bool)

(assert (=> b!363901 m!361385))

(declare-fun m!361387 () Bool)

(assert (=> b!363901 m!361387))

(declare-fun m!361389 () Bool)

(assert (=> b!363903 m!361389))

(declare-fun m!361391 () Bool)

(assert (=> b!363903 m!361391))

(declare-fun m!361393 () Bool)

(assert (=> b!363903 m!361393))

(declare-fun m!361395 () Bool)

(assert (=> b!363904 m!361395))

(declare-fun m!361397 () Bool)

(assert (=> b!363904 m!361397))

(declare-fun m!361399 () Bool)

(assert (=> b!363904 m!361399))

(declare-fun m!361401 () Bool)

(assert (=> b!363904 m!361401))

(declare-fun m!361403 () Bool)

(assert (=> b!363904 m!361403))

(declare-fun m!361405 () Bool)

(assert (=> b!363904 m!361405))

(declare-fun m!361407 () Bool)

(assert (=> b!363902 m!361407))

(declare-fun m!361409 () Bool)

(assert (=> start!36408 m!361409))

(push 1)

(assert (not start!36408))

(assert (not b!363902))

(assert (not b!363901))

(assert (not b!363903))

(assert (not b!363899))

(assert (not b!363904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

