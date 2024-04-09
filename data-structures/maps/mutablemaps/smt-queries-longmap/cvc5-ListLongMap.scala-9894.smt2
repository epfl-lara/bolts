; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117152 () Bool)

(assert start!117152)

(declare-fun b!1378379 () Bool)

(declare-fun e!780870 () Bool)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378379 (= e!780870 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((array!93685 0))(
  ( (array!93686 (arr!45238 (Array (_ BitVec 32) (_ BitVec 64))) (size!45789 (_ BitVec 32))) )
))
(declare-fun lt!606565 () array!93685)

(declare-fun a!4094 () array!93685)

(declare-fun arrayCountValidKeys!0 (array!93685 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378379 (= (arrayCountValidKeys!0 lt!606565 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45737 0))(
  ( (Unit!45738) )
))
(declare-fun lt!606560 () Unit!45737)

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93685 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45737)

(assert (=> b!1378379 (= lt!606560 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378380 () Bool)

(declare-fun res!921025 () Bool)

(declare-fun e!780869 () Bool)

(assert (=> b!1378380 (=> (not res!921025) (not e!780869))))

(assert (=> b!1378380 (= res!921025 (and (bvslt (size!45789 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45789 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921024 () Bool)

(assert (=> start!117152 (=> (not res!921024) (not e!780869))))

(assert (=> start!117152 (= res!921024 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45789 a!4094))))))

(assert (=> start!117152 e!780869))

(assert (=> start!117152 true))

(declare-fun array_inv!34183 (array!93685) Bool)

(assert (=> start!117152 (array_inv!34183 a!4094)))

(declare-fun b!1378381 () Bool)

(declare-fun e!780872 () Bool)

(assert (=> b!1378381 (= e!780872 (not e!780870))))

(declare-fun res!921022 () Bool)

(assert (=> b!1378381 (=> res!921022 e!780870)))

(declare-fun lt!606567 () (_ BitVec 32))

(declare-fun lt!606561 () (_ BitVec 32))

(assert (=> b!1378381 (= res!921022 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45789 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606561 (bvsub lt!606567 #b00000000000000000000000000000001)))))))

(declare-fun lt!606563 () (_ BitVec 32))

(declare-fun lt!606564 () (_ BitVec 32))

(assert (=> b!1378381 (= (bvadd lt!606563 lt!606564) lt!606561)))

(assert (=> b!1378381 (= lt!606561 (arrayCountValidKeys!0 lt!606565 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378381 (= lt!606563 (arrayCountValidKeys!0 lt!606565 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606562 () Unit!45737)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45737)

(assert (=> b!1378381 (= lt!606562 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606565 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606559 () (_ BitVec 32))

(declare-fun lt!606566 () (_ BitVec 32))

(assert (=> b!1378381 (= (bvadd lt!606559 lt!606566) lt!606567)))

(assert (=> b!1378381 (= lt!606567 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378381 (= lt!606559 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606568 () Unit!45737)

(assert (=> b!1378381 (= lt!606568 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378382 () Bool)

(assert (=> b!1378382 (= e!780869 e!780872)))

(declare-fun res!921027 () Bool)

(assert (=> b!1378382 (=> (not res!921027) (not e!780872))))

(assert (=> b!1378382 (= res!921027 (and (= lt!606564 (bvsub lt!606566 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378382 (= lt!606564 (arrayCountValidKeys!0 lt!606565 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378382 (= lt!606566 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378382 (= lt!606565 (array!93686 (store (arr!45238 a!4094) i!1451 k!2953) (size!45789 a!4094)))))

(declare-fun b!1378383 () Bool)

(declare-fun res!921026 () Bool)

(assert (=> b!1378383 (=> (not res!921026) (not e!780869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378383 (= res!921026 (validKeyInArray!0 (select (arr!45238 a!4094) i!1451)))))

(declare-fun b!1378384 () Bool)

(declare-fun res!921023 () Bool)

(assert (=> b!1378384 (=> (not res!921023) (not e!780869))))

(assert (=> b!1378384 (= res!921023 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117152 res!921024) b!1378383))

(assert (= (and b!1378383 res!921026) b!1378384))

(assert (= (and b!1378384 res!921023) b!1378380))

(assert (= (and b!1378380 res!921025) b!1378382))

(assert (= (and b!1378382 res!921027) b!1378381))

(assert (= (and b!1378381 (not res!921022)) b!1378379))

(declare-fun m!1263087 () Bool)

(assert (=> b!1378384 m!1263087))

(declare-fun m!1263089 () Bool)

(assert (=> b!1378379 m!1263089))

(declare-fun m!1263091 () Bool)

(assert (=> b!1378379 m!1263091))

(declare-fun m!1263093 () Bool)

(assert (=> b!1378379 m!1263093))

(declare-fun m!1263095 () Bool)

(assert (=> b!1378381 m!1263095))

(declare-fun m!1263097 () Bool)

(assert (=> b!1378381 m!1263097))

(declare-fun m!1263099 () Bool)

(assert (=> b!1378381 m!1263099))

(declare-fun m!1263101 () Bool)

(assert (=> b!1378381 m!1263101))

(declare-fun m!1263103 () Bool)

(assert (=> b!1378381 m!1263103))

(declare-fun m!1263105 () Bool)

(assert (=> b!1378381 m!1263105))

(declare-fun m!1263107 () Bool)

(assert (=> b!1378383 m!1263107))

(assert (=> b!1378383 m!1263107))

(declare-fun m!1263109 () Bool)

(assert (=> b!1378383 m!1263109))

(declare-fun m!1263111 () Bool)

(assert (=> start!117152 m!1263111))

(declare-fun m!1263113 () Bool)

(assert (=> b!1378382 m!1263113))

(declare-fun m!1263115 () Bool)

(assert (=> b!1378382 m!1263115))

(declare-fun m!1263117 () Bool)

(assert (=> b!1378382 m!1263117))

(push 1)

(assert (not b!1378381))

(assert (not b!1378383))

(assert (not start!117152))

(assert (not b!1378379))

(assert (not b!1378384))

(assert (not b!1378382))

(check-sat)

(pop 1)

