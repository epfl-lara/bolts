; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117120 () Bool)

(assert start!117120)

(declare-fun res!920784 () Bool)

(declare-fun e!780724 () Bool)

(assert (=> start!117120 (=> (not res!920784) (not e!780724))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93653 0))(
  ( (array!93654 (arr!45222 (Array (_ BitVec 32) (_ BitVec 64))) (size!45773 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93653)

(assert (=> start!117120 (= res!920784 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45773 a!4094))))))

(assert (=> start!117120 e!780724))

(assert (=> start!117120 true))

(declare-fun array_inv!34167 (array!93653) Bool)

(assert (=> start!117120 (array_inv!34167 a!4094)))

(declare-fun b!1378137 () Bool)

(declare-fun e!780725 () Bool)

(assert (=> b!1378137 (= e!780724 e!780725)))

(declare-fun res!920780 () Bool)

(assert (=> b!1378137 (=> (not res!920780) (not e!780725))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606311 () (_ BitVec 32))

(declare-fun lt!606310 () (_ BitVec 32))

(assert (=> b!1378137 (= res!920780 (and (= lt!606310 (bvsub lt!606311 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606313 () array!93653)

(declare-fun arrayCountValidKeys!0 (array!93653 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378137 (= lt!606310 (arrayCountValidKeys!0 lt!606313 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378137 (= lt!606311 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378137 (= lt!606313 (array!93654 (store (arr!45222 a!4094) i!1451 k!2953) (size!45773 a!4094)))))

(declare-fun b!1378138 () Bool)

(declare-fun res!920781 () Bool)

(assert (=> b!1378138 (=> (not res!920781) (not e!780724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378138 (= res!920781 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378139 () Bool)

(declare-fun res!920783 () Bool)

(assert (=> b!1378139 (=> (not res!920783) (not e!780724))))

(assert (=> b!1378139 (= res!920783 (and (bvslt (size!45773 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45773 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378140 () Bool)

(assert (=> b!1378140 (= e!780725 (not true))))

(assert (=> b!1378140 (= (bvadd (arrayCountValidKeys!0 lt!606313 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606310) (arrayCountValidKeys!0 lt!606313 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45705 0))(
  ( (Unit!45706) )
))
(declare-fun lt!606312 () Unit!45705)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45705)

(assert (=> b!1378140 (= lt!606312 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606313 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378140 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606311) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606309 () Unit!45705)

(assert (=> b!1378140 (= lt!606309 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378141 () Bool)

(declare-fun res!920782 () Bool)

(assert (=> b!1378141 (=> (not res!920782) (not e!780724))))

(assert (=> b!1378141 (= res!920782 (validKeyInArray!0 (select (arr!45222 a!4094) i!1451)))))

(assert (= (and start!117120 res!920784) b!1378141))

(assert (= (and b!1378141 res!920782) b!1378138))

(assert (= (and b!1378138 res!920781) b!1378139))

(assert (= (and b!1378139 res!920783) b!1378137))

(assert (= (and b!1378137 res!920780) b!1378140))

(declare-fun m!1262671 () Bool)

(assert (=> b!1378141 m!1262671))

(assert (=> b!1378141 m!1262671))

(declare-fun m!1262673 () Bool)

(assert (=> b!1378141 m!1262673))

(declare-fun m!1262675 () Bool)

(assert (=> start!117120 m!1262675))

(declare-fun m!1262677 () Bool)

(assert (=> b!1378137 m!1262677))

(declare-fun m!1262679 () Bool)

(assert (=> b!1378137 m!1262679))

(declare-fun m!1262681 () Bool)

(assert (=> b!1378137 m!1262681))

(declare-fun m!1262683 () Bool)

(assert (=> b!1378138 m!1262683))

(declare-fun m!1262685 () Bool)

(assert (=> b!1378140 m!1262685))

(declare-fun m!1262687 () Bool)

(assert (=> b!1378140 m!1262687))

(declare-fun m!1262689 () Bool)

(assert (=> b!1378140 m!1262689))

(declare-fun m!1262691 () Bool)

(assert (=> b!1378140 m!1262691))

(declare-fun m!1262693 () Bool)

(assert (=> b!1378140 m!1262693))

(declare-fun m!1262695 () Bool)

(assert (=> b!1378140 m!1262695))

(push 1)

(assert (not start!117120))

(assert (not b!1378137))

(assert (not b!1378140))

(assert (not b!1378138))

(assert (not b!1378141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

