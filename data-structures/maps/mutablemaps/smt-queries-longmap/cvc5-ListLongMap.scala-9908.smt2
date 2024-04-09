; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117236 () Bool)

(assert start!117236)

(declare-fun b!1379034 () Bool)

(declare-fun e!781229 () Bool)

(assert (=> b!1379034 (= e!781229 (not true))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-datatypes ((array!93769 0))(
  ( (array!93770 (arr!45280 (Array (_ BitVec 32) (_ BitVec 64))) (size!45831 (_ BitVec 32))) )
))
(declare-fun lt!607093 () array!93769)

(declare-fun lt!607090 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93769 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379034 (= (bvadd (arrayCountValidKeys!0 lt!607093 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607090) (arrayCountValidKeys!0 lt!607093 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45785 0))(
  ( (Unit!45786) )
))
(declare-fun lt!607091 () Unit!45785)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45785)

(assert (=> b!1379034 (= lt!607091 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607093 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607092 () (_ BitVec 32))

(declare-fun a!4094 () array!93769)

(assert (=> b!1379034 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607092) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607089 () Unit!45785)

(assert (=> b!1379034 (= lt!607089 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379035 () Bool)

(declare-fun res!921681 () Bool)

(declare-fun e!781227 () Bool)

(assert (=> b!1379035 (=> (not res!921681) (not e!781227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379035 (= res!921681 (validKeyInArray!0 (select (arr!45280 a!4094) i!1451)))))

(declare-fun b!1379036 () Bool)

(declare-fun res!921679 () Bool)

(assert (=> b!1379036 (=> (not res!921679) (not e!781227))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379036 (= res!921679 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379037 () Bool)

(assert (=> b!1379037 (= e!781227 e!781229)))

(declare-fun res!921678 () Bool)

(assert (=> b!1379037 (=> (not res!921678) (not e!781229))))

(assert (=> b!1379037 (= res!921678 (and (= lt!607090 (bvsub lt!607092 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379037 (= lt!607090 (arrayCountValidKeys!0 lt!607093 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379037 (= lt!607092 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379037 (= lt!607093 (array!93770 (store (arr!45280 a!4094) i!1451 k!2953) (size!45831 a!4094)))))

(declare-fun res!921677 () Bool)

(assert (=> start!117236 (=> (not res!921677) (not e!781227))))

(assert (=> start!117236 (= res!921677 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45831 a!4094))))))

(assert (=> start!117236 e!781227))

(assert (=> start!117236 true))

(declare-fun array_inv!34225 (array!93769) Bool)

(assert (=> start!117236 (array_inv!34225 a!4094)))

(declare-fun b!1379038 () Bool)

(declare-fun res!921680 () Bool)

(assert (=> b!1379038 (=> (not res!921680) (not e!781227))))

(assert (=> b!1379038 (= res!921680 (and (bvslt (size!45831 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45831 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117236 res!921677) b!1379035))

(assert (= (and b!1379035 res!921681) b!1379036))

(assert (= (and b!1379036 res!921679) b!1379038))

(assert (= (and b!1379038 res!921680) b!1379037))

(assert (= (and b!1379037 res!921678) b!1379034))

(declare-fun m!1263999 () Bool)

(assert (=> b!1379035 m!1263999))

(assert (=> b!1379035 m!1263999))

(declare-fun m!1264001 () Bool)

(assert (=> b!1379035 m!1264001))

(declare-fun m!1264003 () Bool)

(assert (=> start!117236 m!1264003))

(declare-fun m!1264005 () Bool)

(assert (=> b!1379037 m!1264005))

(declare-fun m!1264007 () Bool)

(assert (=> b!1379037 m!1264007))

(declare-fun m!1264009 () Bool)

(assert (=> b!1379037 m!1264009))

(declare-fun m!1264011 () Bool)

(assert (=> b!1379034 m!1264011))

(declare-fun m!1264013 () Bool)

(assert (=> b!1379034 m!1264013))

(declare-fun m!1264015 () Bool)

(assert (=> b!1379034 m!1264015))

(declare-fun m!1264017 () Bool)

(assert (=> b!1379034 m!1264017))

(declare-fun m!1264019 () Bool)

(assert (=> b!1379034 m!1264019))

(declare-fun m!1264021 () Bool)

(assert (=> b!1379034 m!1264021))

(declare-fun m!1264023 () Bool)

(assert (=> b!1379036 m!1264023))

(push 1)

(assert (not b!1379036))

(assert (not b!1379034))

(assert (not start!117236))

(assert (not b!1379037))

(assert (not b!1379035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

