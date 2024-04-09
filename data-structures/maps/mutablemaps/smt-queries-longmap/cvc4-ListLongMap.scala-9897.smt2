; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117174 () Bool)

(assert start!117174)

(declare-fun b!1378577 () Bool)

(declare-fun e!781004 () Bool)

(declare-fun e!781003 () Bool)

(assert (=> b!1378577 (= e!781004 (not e!781003))))

(declare-fun res!921225 () Bool)

(assert (=> b!1378577 (=> res!921225 e!781003)))

(declare-datatypes ((array!93707 0))(
  ( (array!93708 (arr!45249 (Array (_ BitVec 32) (_ BitVec 64))) (size!45800 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93707)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606891 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun lt!606897 () (_ BitVec 32))

(assert (=> b!1378577 (= res!921225 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45800 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606891 (bvsub lt!606897 #b00000000000000000000000000000001)))))))

(declare-fun lt!606896 () (_ BitVec 32))

(declare-fun lt!606889 () (_ BitVec 32))

(assert (=> b!1378577 (= (bvadd lt!606896 lt!606889) lt!606891)))

(declare-fun lt!606893 () array!93707)

(declare-fun arrayCountValidKeys!0 (array!93707 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378577 (= lt!606891 (arrayCountValidKeys!0 lt!606893 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378577 (= lt!606896 (arrayCountValidKeys!0 lt!606893 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45759 0))(
  ( (Unit!45760) )
))
(declare-fun lt!606892 () Unit!45759)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45759)

(assert (=> b!1378577 (= lt!606892 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606893 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606895 () (_ BitVec 32))

(declare-fun lt!606894 () (_ BitVec 32))

(assert (=> b!1378577 (= (bvadd lt!606895 lt!606894) lt!606897)))

(assert (=> b!1378577 (= lt!606897 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378577 (= lt!606895 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606890 () Unit!45759)

(assert (=> b!1378577 (= lt!606890 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378578 () Bool)

(declare-fun res!921221 () Bool)

(declare-fun e!781002 () Bool)

(assert (=> b!1378578 (=> (not res!921221) (not e!781002))))

(assert (=> b!1378578 (= res!921221 (and (bvslt (size!45800 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45800 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921224 () Bool)

(assert (=> start!117174 (=> (not res!921224) (not e!781002))))

(assert (=> start!117174 (= res!921224 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45800 a!4094))))))

(assert (=> start!117174 e!781002))

(assert (=> start!117174 true))

(declare-fun array_inv!34194 (array!93707) Bool)

(assert (=> start!117174 (array_inv!34194 a!4094)))

(declare-fun b!1378579 () Bool)

(assert (=> b!1378579 (= e!781003 true)))

(assert (=> b!1378579 (= (arrayCountValidKeys!0 lt!606893 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun lt!606898 () Unit!45759)

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45759)

(assert (=> b!1378579 (= lt!606898 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378580 () Bool)

(assert (=> b!1378580 (= e!781002 e!781004)))

(declare-fun res!921223 () Bool)

(assert (=> b!1378580 (=> (not res!921223) (not e!781004))))

(assert (=> b!1378580 (= res!921223 (and (= lt!606889 (bvsub lt!606894 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378580 (= lt!606889 (arrayCountValidKeys!0 lt!606893 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378580 (= lt!606894 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378580 (= lt!606893 (array!93708 (store (arr!45249 a!4094) i!1451 k!2953) (size!45800 a!4094)))))

(declare-fun b!1378581 () Bool)

(declare-fun res!921222 () Bool)

(assert (=> b!1378581 (=> (not res!921222) (not e!781002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378581 (= res!921222 (validKeyInArray!0 (select (arr!45249 a!4094) i!1451)))))

(declare-fun b!1378582 () Bool)

(declare-fun res!921220 () Bool)

(assert (=> b!1378582 (=> (not res!921220) (not e!781002))))

(assert (=> b!1378582 (= res!921220 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117174 res!921224) b!1378581))

(assert (= (and b!1378581 res!921222) b!1378582))

(assert (= (and b!1378582 res!921220) b!1378578))

(assert (= (and b!1378578 res!921221) b!1378580))

(assert (= (and b!1378580 res!921223) b!1378577))

(assert (= (and b!1378577 (not res!921225)) b!1378579))

(declare-fun m!1263439 () Bool)

(assert (=> b!1378577 m!1263439))

(declare-fun m!1263441 () Bool)

(assert (=> b!1378577 m!1263441))

(declare-fun m!1263443 () Bool)

(assert (=> b!1378577 m!1263443))

(declare-fun m!1263445 () Bool)

(assert (=> b!1378577 m!1263445))

(declare-fun m!1263447 () Bool)

(assert (=> b!1378577 m!1263447))

(declare-fun m!1263449 () Bool)

(assert (=> b!1378577 m!1263449))

(declare-fun m!1263451 () Bool)

(assert (=> b!1378580 m!1263451))

(declare-fun m!1263453 () Bool)

(assert (=> b!1378580 m!1263453))

(declare-fun m!1263455 () Bool)

(assert (=> b!1378580 m!1263455))

(declare-fun m!1263457 () Bool)

(assert (=> start!117174 m!1263457))

(declare-fun m!1263459 () Bool)

(assert (=> b!1378579 m!1263459))

(declare-fun m!1263461 () Bool)

(assert (=> b!1378579 m!1263461))

(declare-fun m!1263463 () Bool)

(assert (=> b!1378579 m!1263463))

(declare-fun m!1263465 () Bool)

(assert (=> b!1378582 m!1263465))

(declare-fun m!1263467 () Bool)

(assert (=> b!1378581 m!1263467))

(assert (=> b!1378581 m!1263467))

(declare-fun m!1263469 () Bool)

(assert (=> b!1378581 m!1263469))

(push 1)

(assert (not b!1378579))

(assert (not b!1378577))

(assert (not b!1378581))

(assert (not b!1378582))

(assert (not start!117174))

(assert (not b!1378580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

