; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117244 () Bool)

(assert start!117244)

(declare-fun b!1379094 () Bool)

(declare-fun res!921739 () Bool)

(declare-fun e!781263 () Bool)

(assert (=> b!1379094 (=> (not res!921739) (not e!781263))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379094 (= res!921739 (not (validKeyInArray!0 k0!2953)))))

(declare-fun res!921737 () Bool)

(assert (=> start!117244 (=> (not res!921737) (not e!781263))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93777 0))(
  ( (array!93778 (arr!45284 (Array (_ BitVec 32) (_ BitVec 64))) (size!45835 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93777)

(assert (=> start!117244 (= res!921737 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45835 a!4094))))))

(assert (=> start!117244 e!781263))

(assert (=> start!117244 true))

(declare-fun array_inv!34229 (array!93777) Bool)

(assert (=> start!117244 (array_inv!34229 a!4094)))

(declare-fun b!1379095 () Bool)

(declare-fun e!781265 () Bool)

(assert (=> b!1379095 (= e!781263 e!781265)))

(declare-fun res!921740 () Bool)

(assert (=> b!1379095 (=> (not res!921740) (not e!781265))))

(declare-fun lt!607153 () (_ BitVec 32))

(declare-fun lt!607152 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379095 (= res!921740 (and (= lt!607153 (bvsub lt!607152 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607151 () array!93777)

(declare-fun arrayCountValidKeys!0 (array!93777 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379095 (= lt!607153 (arrayCountValidKeys!0 lt!607151 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379095 (= lt!607152 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379095 (= lt!607151 (array!93778 (store (arr!45284 a!4094) i!1451 k0!2953) (size!45835 a!4094)))))

(declare-fun b!1379096 () Bool)

(declare-fun res!921741 () Bool)

(assert (=> b!1379096 (=> (not res!921741) (not e!781263))))

(assert (=> b!1379096 (= res!921741 (and (bvslt (size!45835 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45835 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379097 () Bool)

(assert (=> b!1379097 (= e!781265 (not true))))

(assert (=> b!1379097 (= (bvadd (arrayCountValidKeys!0 lt!607151 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607153) (arrayCountValidKeys!0 lt!607151 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45793 0))(
  ( (Unit!45794) )
))
(declare-fun lt!607150 () Unit!45793)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45793)

(assert (=> b!1379097 (= lt!607150 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607151 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1379097 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607152) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607149 () Unit!45793)

(assert (=> b!1379097 (= lt!607149 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379098 () Bool)

(declare-fun res!921738 () Bool)

(assert (=> b!1379098 (=> (not res!921738) (not e!781263))))

(assert (=> b!1379098 (= res!921738 (validKeyInArray!0 (select (arr!45284 a!4094) i!1451)))))

(assert (= (and start!117244 res!921737) b!1379098))

(assert (= (and b!1379098 res!921738) b!1379094))

(assert (= (and b!1379094 res!921739) b!1379096))

(assert (= (and b!1379096 res!921741) b!1379095))

(assert (= (and b!1379095 res!921740) b!1379097))

(declare-fun m!1264103 () Bool)

(assert (=> b!1379097 m!1264103))

(declare-fun m!1264105 () Bool)

(assert (=> b!1379097 m!1264105))

(declare-fun m!1264107 () Bool)

(assert (=> b!1379097 m!1264107))

(declare-fun m!1264109 () Bool)

(assert (=> b!1379097 m!1264109))

(declare-fun m!1264111 () Bool)

(assert (=> b!1379097 m!1264111))

(declare-fun m!1264113 () Bool)

(assert (=> b!1379097 m!1264113))

(declare-fun m!1264115 () Bool)

(assert (=> b!1379094 m!1264115))

(declare-fun m!1264117 () Bool)

(assert (=> b!1379095 m!1264117))

(declare-fun m!1264119 () Bool)

(assert (=> b!1379095 m!1264119))

(declare-fun m!1264121 () Bool)

(assert (=> b!1379095 m!1264121))

(declare-fun m!1264123 () Bool)

(assert (=> start!117244 m!1264123))

(declare-fun m!1264125 () Bool)

(assert (=> b!1379098 m!1264125))

(assert (=> b!1379098 m!1264125))

(declare-fun m!1264127 () Bool)

(assert (=> b!1379098 m!1264127))

(check-sat (not start!117244) (not b!1379094) (not b!1379095) (not b!1379098) (not b!1379097))
(check-sat)
