; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117228 () Bool)

(assert start!117228)

(declare-fun b!1378974 () Bool)

(declare-fun e!781192 () Bool)

(declare-fun e!781191 () Bool)

(assert (=> b!1378974 (= e!781192 e!781191)))

(declare-fun res!921618 () Bool)

(assert (=> b!1378974 (=> (not res!921618) (not e!781191))))

(declare-fun lt!607029 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!607033 () (_ BitVec 32))

(assert (=> b!1378974 (= res!921618 (and (= lt!607029 (bvsub lt!607033 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93761 0))(
  ( (array!93762 (arr!45276 (Array (_ BitVec 32) (_ BitVec 64))) (size!45827 (_ BitVec 32))) )
))
(declare-fun lt!607031 () array!93761)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93761 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378974 (= lt!607029 (arrayCountValidKeys!0 lt!607031 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93761)

(assert (=> b!1378974 (= lt!607033 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378974 (= lt!607031 (array!93762 (store (arr!45276 a!4094) i!1451 k!2953) (size!45827 a!4094)))))

(declare-fun b!1378975 () Bool)

(declare-fun res!921621 () Bool)

(assert (=> b!1378975 (=> (not res!921621) (not e!781192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378975 (= res!921621 (validKeyInArray!0 (select (arr!45276 a!4094) i!1451)))))

(declare-fun b!1378976 () Bool)

(declare-fun res!921619 () Bool)

(assert (=> b!1378976 (=> (not res!921619) (not e!781192))))

(assert (=> b!1378976 (= res!921619 (not (validKeyInArray!0 k!2953)))))

(declare-fun res!921617 () Bool)

(assert (=> start!117228 (=> (not res!921617) (not e!781192))))

(assert (=> start!117228 (= res!921617 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45827 a!4094))))))

(assert (=> start!117228 e!781192))

(assert (=> start!117228 true))

(declare-fun array_inv!34221 (array!93761) Bool)

(assert (=> start!117228 (array_inv!34221 a!4094)))

(declare-fun b!1378977 () Bool)

(assert (=> b!1378977 (= e!781191 (not true))))

(assert (=> b!1378977 (= (bvadd (arrayCountValidKeys!0 lt!607031 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607029) (arrayCountValidKeys!0 lt!607031 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45777 0))(
  ( (Unit!45778) )
))
(declare-fun lt!607032 () Unit!45777)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45777)

(assert (=> b!1378977 (= lt!607032 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607031 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378977 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607033) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607030 () Unit!45777)

(assert (=> b!1378977 (= lt!607030 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378978 () Bool)

(declare-fun res!921620 () Bool)

(assert (=> b!1378978 (=> (not res!921620) (not e!781192))))

(assert (=> b!1378978 (= res!921620 (and (bvslt (size!45827 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45827 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117228 res!921617) b!1378975))

(assert (= (and b!1378975 res!921621) b!1378976))

(assert (= (and b!1378976 res!921619) b!1378978))

(assert (= (and b!1378978 res!921620) b!1378974))

(assert (= (and b!1378974 res!921618) b!1378977))

(declare-fun m!1263895 () Bool)

(assert (=> b!1378977 m!1263895))

(declare-fun m!1263897 () Bool)

(assert (=> b!1378977 m!1263897))

(declare-fun m!1263899 () Bool)

(assert (=> b!1378977 m!1263899))

(declare-fun m!1263901 () Bool)

(assert (=> b!1378977 m!1263901))

(declare-fun m!1263903 () Bool)

(assert (=> b!1378977 m!1263903))

(declare-fun m!1263905 () Bool)

(assert (=> b!1378977 m!1263905))

(declare-fun m!1263907 () Bool)

(assert (=> start!117228 m!1263907))

(declare-fun m!1263909 () Bool)

(assert (=> b!1378974 m!1263909))

(declare-fun m!1263911 () Bool)

(assert (=> b!1378974 m!1263911))

(declare-fun m!1263913 () Bool)

(assert (=> b!1378974 m!1263913))

(declare-fun m!1263915 () Bool)

(assert (=> b!1378975 m!1263915))

(assert (=> b!1378975 m!1263915))

(declare-fun m!1263917 () Bool)

(assert (=> b!1378975 m!1263917))

(declare-fun m!1263919 () Bool)

(assert (=> b!1378976 m!1263919))

(push 1)

(assert (not b!1378974))

(assert (not b!1378977))

(assert (not b!1378975))

(assert (not start!117228))

(assert (not b!1378976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

