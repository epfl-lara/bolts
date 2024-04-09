; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36406 () Bool)

(assert start!36406)

(declare-fun b!363881 () Bool)

(declare-fun res!203196 () Bool)

(declare-fun e!222812 () Bool)

(assert (=> b!363881 (=> (not res!203196) (not e!222812))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20648 0))(
  ( (array!20649 (arr!9800 (Array (_ BitVec 32) (_ BitVec 64))) (size!10152 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20648)

(assert (=> b!363881 (= res!203196 (and (bvslt (size!10152 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10152 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363883 () Bool)

(declare-fun res!203194 () Bool)

(assert (=> b!363883 (=> (not res!203194) (not e!222812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363883 (= res!203194 (not (validKeyInArray!0 (select (arr!9800 a!4289) i!1472))))))

(declare-fun b!363884 () Bool)

(declare-fun e!222809 () Bool)

(assert (=> b!363884 (= e!222812 e!222809)))

(declare-fun res!203195 () Bool)

(assert (=> b!363884 (=> (not res!203195) (not e!222809))))

(declare-fun lt!168267 () (_ BitVec 32))

(declare-fun lt!168265 () (_ BitVec 32))

(assert (=> b!363884 (= res!203195 (and (= lt!168265 (bvadd #b00000000000000000000000000000001 lt!168267)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168264 () array!20648)

(declare-fun arrayCountValidKeys!0 (array!20648 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363884 (= lt!168265 (arrayCountValidKeys!0 lt!168264 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363884 (= lt!168267 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!363884 (= lt!168264 (array!20649 (store (arr!9800 a!4289) i!1472 k0!2974) (size!10152 a!4289)))))

(declare-fun b!363885 () Bool)

(declare-fun res!203193 () Bool)

(assert (=> b!363885 (=> (not res!203193) (not e!222812))))

(assert (=> b!363885 (= res!203193 (validKeyInArray!0 k0!2974))))

(declare-fun b!363886 () Bool)

(declare-fun e!222811 () Bool)

(assert (=> b!363886 (= e!222811 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363886 (= (arrayCountValidKeys!0 lt!168264 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-datatypes ((Unit!11295 0))(
  ( (Unit!11296) )
))
(declare-fun lt!168262 () Unit!11295)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20648 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11295)

(assert (=> b!363886 (= lt!168262 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k0!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun res!203197 () Bool)

(assert (=> start!36406 (=> (not res!203197) (not e!222812))))

(assert (=> start!36406 (= res!203197 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10152 a!4289))))))

(assert (=> start!36406 e!222812))

(assert (=> start!36406 true))

(declare-fun array_inv!7238 (array!20648) Bool)

(assert (=> start!36406 (array_inv!7238 a!4289)))

(declare-fun b!363882 () Bool)

(assert (=> b!363882 (= e!222809 (not e!222811))))

(declare-fun res!203192 () Bool)

(assert (=> b!363882 (=> res!203192 e!222811)))

(declare-fun lt!168268 () (_ BitVec 32))

(declare-fun lt!168263 () (_ BitVec 32))

(assert (=> b!363882 (= res!203192 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10152 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168263 (bvadd #b00000000000000000000000000000001 lt!168268)))))))

(declare-fun lt!168261 () (_ BitVec 32))

(assert (=> b!363882 (= (bvadd lt!168261 lt!168265) lt!168263)))

(assert (=> b!363882 (= lt!168263 (arrayCountValidKeys!0 lt!168264 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363882 (= lt!168261 (arrayCountValidKeys!0 lt!168264 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168260 () Unit!11295)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11295)

(assert (=> b!363882 (= lt!168260 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168264 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168269 () (_ BitVec 32))

(assert (=> b!363882 (= (bvadd lt!168269 lt!168267) lt!168268)))

(assert (=> b!363882 (= lt!168268 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363882 (= lt!168269 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168266 () Unit!11295)

(assert (=> b!363882 (= lt!168266 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36406 res!203197) b!363883))

(assert (= (and b!363883 res!203194) b!363885))

(assert (= (and b!363885 res!203193) b!363881))

(assert (= (and b!363881 res!203196) b!363884))

(assert (= (and b!363884 res!203195) b!363882))

(assert (= (and b!363882 (not res!203192)) b!363886))

(declare-fun m!361347 () Bool)

(assert (=> b!363885 m!361347))

(declare-fun m!361349 () Bool)

(assert (=> b!363884 m!361349))

(declare-fun m!361351 () Bool)

(assert (=> b!363884 m!361351))

(declare-fun m!361353 () Bool)

(assert (=> b!363884 m!361353))

(declare-fun m!361355 () Bool)

(assert (=> b!363883 m!361355))

(assert (=> b!363883 m!361355))

(declare-fun m!361357 () Bool)

(assert (=> b!363883 m!361357))

(declare-fun m!361359 () Bool)

(assert (=> start!36406 m!361359))

(declare-fun m!361361 () Bool)

(assert (=> b!363886 m!361361))

(declare-fun m!361363 () Bool)

(assert (=> b!363886 m!361363))

(declare-fun m!361365 () Bool)

(assert (=> b!363886 m!361365))

(declare-fun m!361367 () Bool)

(assert (=> b!363882 m!361367))

(declare-fun m!361369 () Bool)

(assert (=> b!363882 m!361369))

(declare-fun m!361371 () Bool)

(assert (=> b!363882 m!361371))

(declare-fun m!361373 () Bool)

(assert (=> b!363882 m!361373))

(declare-fun m!361375 () Bool)

(assert (=> b!363882 m!361375))

(declare-fun m!361377 () Bool)

(assert (=> b!363882 m!361377))

(check-sat (not b!363886) (not start!36406) (not b!363883) (not b!363884) (not b!363885) (not b!363882))
(check-sat)
