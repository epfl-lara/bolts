; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117114 () Bool)

(assert start!117114)

(declare-fun b!1378091 () Bool)

(declare-fun res!920734 () Bool)

(declare-fun e!780696 () Bool)

(assert (=> b!1378091 (=> (not res!920734) (not e!780696))))

(declare-datatypes ((array!93647 0))(
  ( (array!93648 (arr!45219 (Array (_ BitVec 32) (_ BitVec 64))) (size!45770 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93647)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378091 (= res!920734 (validKeyInArray!0 (select (arr!45219 a!4094) i!1451)))))

(declare-fun b!1378092 () Bool)

(declare-fun e!780697 () Bool)

(assert (=> b!1378092 (= e!780697 (not true))))

(declare-fun lt!606268 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93647 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378092 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606268) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45699 0))(
  ( (Unit!45700) )
))
(declare-fun lt!606267 () Unit!45699)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45699)

(assert (=> b!1378092 (= lt!606267 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378093 () Bool)

(declare-fun res!920735 () Bool)

(assert (=> b!1378093 (=> (not res!920735) (not e!780696))))

(assert (=> b!1378093 (= res!920735 (and (bvslt (size!45770 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45770 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!920736 () Bool)

(assert (=> start!117114 (=> (not res!920736) (not e!780696))))

(assert (=> start!117114 (= res!920736 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45770 a!4094))))))

(assert (=> start!117114 e!780696))

(assert (=> start!117114 true))

(declare-fun array_inv!34164 (array!93647) Bool)

(assert (=> start!117114 (array_inv!34164 a!4094)))

(declare-fun b!1378094 () Bool)

(declare-fun res!920738 () Bool)

(assert (=> b!1378094 (=> (not res!920738) (not e!780696))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378094 (= res!920738 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378095 () Bool)

(declare-fun res!920739 () Bool)

(assert (=> b!1378095 (=> (not res!920739) (not e!780697))))

(assert (=> b!1378095 (= res!920739 (bvsgt from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1378096 () Bool)

(assert (=> b!1378096 (= e!780696 e!780697)))

(declare-fun res!920737 () Bool)

(assert (=> b!1378096 (=> (not res!920737) (not e!780697))))

(assert (=> b!1378096 (= res!920737 (= (arrayCountValidKeys!0 (array!93648 (store (arr!45219 a!4094) i!1451 k!2953) (size!45770 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606268 #b00000000000000000000000000000001)))))

(assert (=> b!1378096 (= lt!606268 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (= (and start!117114 res!920736) b!1378091))

(assert (= (and b!1378091 res!920734) b!1378094))

(assert (= (and b!1378094 res!920738) b!1378093))

(assert (= (and b!1378093 res!920735) b!1378096))

(assert (= (and b!1378096 res!920737) b!1378095))

(assert (= (and b!1378095 res!920739) b!1378092))

(declare-fun m!1262599 () Bool)

(assert (=> b!1378091 m!1262599))

(assert (=> b!1378091 m!1262599))

(declare-fun m!1262601 () Bool)

(assert (=> b!1378091 m!1262601))

(declare-fun m!1262603 () Bool)

(assert (=> b!1378096 m!1262603))

(declare-fun m!1262605 () Bool)

(assert (=> b!1378096 m!1262605))

(declare-fun m!1262607 () Bool)

(assert (=> b!1378096 m!1262607))

(declare-fun m!1262609 () Bool)

(assert (=> b!1378092 m!1262609))

(declare-fun m!1262611 () Bool)

(assert (=> b!1378092 m!1262611))

(declare-fun m!1262613 () Bool)

(assert (=> b!1378092 m!1262613))

(declare-fun m!1262615 () Bool)

(assert (=> b!1378094 m!1262615))

(declare-fun m!1262617 () Bool)

(assert (=> start!117114 m!1262617))

(push 1)

(assert (not start!117114))

(assert (not b!1378091))

(assert (not b!1378094))

(assert (not b!1378092))

(assert (not b!1378096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

