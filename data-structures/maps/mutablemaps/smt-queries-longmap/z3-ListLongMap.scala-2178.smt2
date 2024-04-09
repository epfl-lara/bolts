; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36412 () Bool)

(assert start!36412)

(declare-fun b!363935 () Bool)

(declare-fun res!203248 () Bool)

(declare-fun e!222847 () Bool)

(assert (=> b!363935 (=> (not res!203248) (not e!222847))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20654 0))(
  ( (array!20655 (arr!9803 (Array (_ BitVec 32) (_ BitVec 64))) (size!10155 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20654)

(assert (=> b!363935 (= res!203248 (and (bvslt (size!10155 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10155 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203247 () Bool)

(assert (=> start!36412 (=> (not res!203247) (not e!222847))))

(assert (=> start!36412 (= res!203247 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10155 a!4289))))))

(assert (=> start!36412 e!222847))

(assert (=> start!36412 true))

(declare-fun array_inv!7241 (array!20654) Bool)

(assert (=> start!36412 (array_inv!7241 a!4289)))

(declare-fun b!363936 () Bool)

(declare-fun e!222846 () Bool)

(declare-fun e!222848 () Bool)

(assert (=> b!363936 (= e!222846 (not e!222848))))

(declare-fun res!203251 () Bool)

(assert (=> b!363936 (=> res!203251 e!222848)))

(declare-fun lt!168358 () (_ BitVec 32))

(declare-fun lt!168359 () (_ BitVec 32))

(assert (=> b!363936 (= res!203251 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10155 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168358 (bvadd #b00000000000000000000000000000001 lt!168359)))))))

(declare-fun lt!168352 () (_ BitVec 32))

(declare-fun lt!168353 () (_ BitVec 32))

(assert (=> b!363936 (= (bvadd lt!168352 lt!168353) lt!168358)))

(declare-fun lt!168356 () array!20654)

(declare-fun arrayCountValidKeys!0 (array!20654 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363936 (= lt!168358 (arrayCountValidKeys!0 lt!168356 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363936 (= lt!168352 (arrayCountValidKeys!0 lt!168356 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11301 0))(
  ( (Unit!11302) )
))
(declare-fun lt!168354 () Unit!11301)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11301)

(assert (=> b!363936 (= lt!168354 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168356 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168357 () (_ BitVec 32))

(declare-fun lt!168355 () (_ BitVec 32))

(assert (=> b!363936 (= (bvadd lt!168357 lt!168355) lt!168359)))

(assert (=> b!363936 (= lt!168359 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363936 (= lt!168357 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168350 () Unit!11301)

(assert (=> b!363936 (= lt!168350 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363937 () Bool)

(declare-fun res!203249 () Bool)

(assert (=> b!363937 (=> (not res!203249) (not e!222847))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363937 (= res!203249 (validKeyInArray!0 k0!2974))))

(declare-fun b!363938 () Bool)

(declare-fun res!203246 () Bool)

(assert (=> b!363938 (=> (not res!203246) (not e!222847))))

(assert (=> b!363938 (= res!203246 (not (validKeyInArray!0 (select (arr!9803 a!4289) i!1472))))))

(declare-fun b!363939 () Bool)

(assert (=> b!363939 (= e!222847 e!222846)))

(declare-fun res!203250 () Bool)

(assert (=> b!363939 (=> (not res!203250) (not e!222846))))

(assert (=> b!363939 (= res!203250 (and (= lt!168353 (bvadd #b00000000000000000000000000000001 lt!168355)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363939 (= lt!168353 (arrayCountValidKeys!0 lt!168356 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363939 (= lt!168355 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363939 (= lt!168356 (array!20655 (store (arr!9803 a!4289) i!1472 k0!2974) (size!10155 a!4289)))))

(declare-fun b!363940 () Bool)

(assert (=> b!363940 (= e!222848 true)))

(assert (=> b!363940 (= (arrayCountValidKeys!0 lt!168356 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168351 () Unit!11301)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20654 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11301)

(assert (=> b!363940 (= lt!168351 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k0!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(assert (= (and start!36412 res!203247) b!363938))

(assert (= (and b!363938 res!203246) b!363937))

(assert (= (and b!363937 res!203249) b!363935))

(assert (= (and b!363935 res!203248) b!363939))

(assert (= (and b!363939 res!203250) b!363936))

(assert (= (and b!363936 (not res!203251)) b!363940))

(declare-fun m!361443 () Bool)

(assert (=> b!363939 m!361443))

(declare-fun m!361445 () Bool)

(assert (=> b!363939 m!361445))

(declare-fun m!361447 () Bool)

(assert (=> b!363939 m!361447))

(declare-fun m!361449 () Bool)

(assert (=> b!363938 m!361449))

(assert (=> b!363938 m!361449))

(declare-fun m!361451 () Bool)

(assert (=> b!363938 m!361451))

(declare-fun m!361453 () Bool)

(assert (=> b!363937 m!361453))

(declare-fun m!361455 () Bool)

(assert (=> b!363940 m!361455))

(declare-fun m!361457 () Bool)

(assert (=> b!363940 m!361457))

(declare-fun m!361459 () Bool)

(assert (=> b!363940 m!361459))

(declare-fun m!361461 () Bool)

(assert (=> b!363936 m!361461))

(declare-fun m!361463 () Bool)

(assert (=> b!363936 m!361463))

(declare-fun m!361465 () Bool)

(assert (=> b!363936 m!361465))

(declare-fun m!361467 () Bool)

(assert (=> b!363936 m!361467))

(declare-fun m!361469 () Bool)

(assert (=> b!363936 m!361469))

(declare-fun m!361471 () Bool)

(assert (=> b!363936 m!361471))

(declare-fun m!361473 () Bool)

(assert (=> start!36412 m!361473))

(check-sat (not b!363936) (not b!363939) (not b!363937) (not start!36412) (not b!363940) (not b!363938))
(check-sat)
