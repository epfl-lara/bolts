; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36414 () Bool)

(assert start!36414)

(declare-fun b!363953 () Bool)

(declare-fun res!203267 () Bool)

(declare-fun e!222857 () Bool)

(assert (=> b!363953 (=> (not res!203267) (not e!222857))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20656 0))(
  ( (array!20657 (arr!9804 (Array (_ BitVec 32) (_ BitVec 64))) (size!10156 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20656)

(assert (=> b!363953 (= res!203267 (and (bvslt (size!10156 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10156 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363954 () Bool)

(declare-fun res!203265 () Bool)

(assert (=> b!363954 (=> (not res!203265) (not e!222857))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363954 (= res!203265 (validKeyInArray!0 k!2974))))

(declare-fun b!363955 () Bool)

(declare-fun e!222859 () Bool)

(assert (=> b!363955 (= e!222857 e!222859)))

(declare-fun res!203268 () Bool)

(assert (=> b!363955 (=> (not res!203268) (not e!222859))))

(declare-fun lt!168386 () (_ BitVec 32))

(declare-fun lt!168389 () (_ BitVec 32))

(assert (=> b!363955 (= res!203268 (and (= lt!168389 (bvadd #b00000000000000000000000000000001 lt!168386)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168382 () array!20656)

(declare-fun arrayCountValidKeys!0 (array!20656 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363955 (= lt!168389 (arrayCountValidKeys!0 lt!168382 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363955 (= lt!168386 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363955 (= lt!168382 (array!20657 (store (arr!9804 a!4289) i!1472 k!2974) (size!10156 a!4289)))))

(declare-fun b!363956 () Bool)

(declare-fun res!203264 () Bool)

(assert (=> b!363956 (=> (not res!203264) (not e!222857))))

(assert (=> b!363956 (= res!203264 (not (validKeyInArray!0 (select (arr!9804 a!4289) i!1472))))))

(declare-fun b!363957 () Bool)

(declare-fun e!222858 () Bool)

(assert (=> b!363957 (= e!222859 (not e!222858))))

(declare-fun res!203269 () Bool)

(assert (=> b!363957 (=> res!203269 e!222858)))

(declare-fun lt!168380 () (_ BitVec 32))

(declare-fun lt!168384 () (_ BitVec 32))

(assert (=> b!363957 (= res!203269 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10156 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168384 (bvadd #b00000000000000000000000000000001 lt!168380)))))))

(declare-fun lt!168387 () (_ BitVec 32))

(assert (=> b!363957 (= (bvadd lt!168387 lt!168389) lt!168384)))

(assert (=> b!363957 (= lt!168384 (arrayCountValidKeys!0 lt!168382 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363957 (= lt!168387 (arrayCountValidKeys!0 lt!168382 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11303 0))(
  ( (Unit!11304) )
))
(declare-fun lt!168385 () Unit!11303)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11303)

(assert (=> b!363957 (= lt!168385 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168382 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168388 () (_ BitVec 32))

(assert (=> b!363957 (= (bvadd lt!168388 lt!168386) lt!168380)))

(assert (=> b!363957 (= lt!168380 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363957 (= lt!168388 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168383 () Unit!11303)

(assert (=> b!363957 (= lt!168383 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363958 () Bool)

(assert (=> b!363958 (= e!222858 true)))

(assert (=> b!363958 (= (arrayCountValidKeys!0 lt!168382 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168381 () Unit!11303)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20656 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11303)

(assert (=> b!363958 (= lt!168381 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun res!203266 () Bool)

(assert (=> start!36414 (=> (not res!203266) (not e!222857))))

(assert (=> start!36414 (= res!203266 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10156 a!4289))))))

(assert (=> start!36414 e!222857))

(assert (=> start!36414 true))

(declare-fun array_inv!7242 (array!20656) Bool)

(assert (=> start!36414 (array_inv!7242 a!4289)))

(assert (= (and start!36414 res!203266) b!363956))

(assert (= (and b!363956 res!203264) b!363954))

(assert (= (and b!363954 res!203265) b!363953))

(assert (= (and b!363953 res!203267) b!363955))

(assert (= (and b!363955 res!203268) b!363957))

(assert (= (and b!363957 (not res!203269)) b!363958))

(declare-fun m!361475 () Bool)

(assert (=> b!363955 m!361475))

(declare-fun m!361477 () Bool)

(assert (=> b!363955 m!361477))

(declare-fun m!361479 () Bool)

(assert (=> b!363955 m!361479))

(declare-fun m!361481 () Bool)

(assert (=> start!36414 m!361481))

(declare-fun m!361483 () Bool)

(assert (=> b!363957 m!361483))

(declare-fun m!361485 () Bool)

(assert (=> b!363957 m!361485))

(declare-fun m!361487 () Bool)

(assert (=> b!363957 m!361487))

(declare-fun m!361489 () Bool)

(assert (=> b!363957 m!361489))

(declare-fun m!361491 () Bool)

(assert (=> b!363957 m!361491))

(declare-fun m!361493 () Bool)

(assert (=> b!363957 m!361493))

(declare-fun m!361495 () Bool)

(assert (=> b!363956 m!361495))

(assert (=> b!363956 m!361495))

(declare-fun m!361497 () Bool)

(assert (=> b!363956 m!361497))

(declare-fun m!361499 () Bool)

(assert (=> b!363958 m!361499))

(declare-fun m!361501 () Bool)

(assert (=> b!363958 m!361501))

(declare-fun m!361503 () Bool)

(assert (=> b!363958 m!361503))

(declare-fun m!361505 () Bool)

(assert (=> b!363954 m!361505))

(push 1)

(assert (not start!36414))

(assert (not b!363954))

(assert (not b!363958))

(assert (not b!363957))

(assert (not b!363955))

(assert (not b!363956))

(check-sat)

