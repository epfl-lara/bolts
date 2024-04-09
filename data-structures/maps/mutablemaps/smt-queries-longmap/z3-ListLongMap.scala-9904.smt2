; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117214 () Bool)

(assert start!117214)

(declare-fun b!1378856 () Bool)

(declare-fun res!921501 () Bool)

(declare-fun e!781130 () Bool)

(assert (=> b!1378856 (=> (not res!921501) (not e!781130))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378856 (= res!921501 (bvsgt from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1378857 () Bool)

(declare-fun res!921502 () Bool)

(declare-fun e!781129 () Bool)

(assert (=> b!1378857 (=> (not res!921502) (not e!781129))))

(declare-datatypes ((array!93747 0))(
  ( (array!93748 (arr!45269 (Array (_ BitVec 32) (_ BitVec 64))) (size!45820 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93747)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378857 (= res!921502 (validKeyInArray!0 (select (arr!45269 a!4094) i!1451)))))

(declare-fun b!1378858 () Bool)

(assert (=> b!1378858 (= e!781129 e!781130)))

(declare-fun res!921500 () Bool)

(assert (=> b!1378858 (=> (not res!921500) (not e!781130))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun lt!606964 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93747 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378858 (= res!921500 (= (arrayCountValidKeys!0 (array!93748 (store (arr!45269 a!4094) i!1451 k0!2953) (size!45820 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606964 #b00000000000000000000000000000001)))))

(assert (=> b!1378858 (= lt!606964 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378859 () Bool)

(assert (=> b!1378859 (= e!781130 (not true))))

(assert (=> b!1378859 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606964) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45763 0))(
  ( (Unit!45764) )
))
(declare-fun lt!606963 () Unit!45763)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45763)

(assert (=> b!1378859 (= lt!606963 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378860 () Bool)

(declare-fun res!921503 () Bool)

(assert (=> b!1378860 (=> (not res!921503) (not e!781129))))

(assert (=> b!1378860 (= res!921503 (and (bvslt (size!45820 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45820 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921504 () Bool)

(assert (=> start!117214 (=> (not res!921504) (not e!781129))))

(assert (=> start!117214 (= res!921504 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45820 a!4094))))))

(assert (=> start!117214 e!781129))

(assert (=> start!117214 true))

(declare-fun array_inv!34214 (array!93747) Bool)

(assert (=> start!117214 (array_inv!34214 a!4094)))

(declare-fun b!1378861 () Bool)

(declare-fun res!921499 () Bool)

(assert (=> b!1378861 (=> (not res!921499) (not e!781129))))

(assert (=> b!1378861 (= res!921499 (not (validKeyInArray!0 k0!2953)))))

(assert (= (and start!117214 res!921504) b!1378857))

(assert (= (and b!1378857 res!921502) b!1378861))

(assert (= (and b!1378861 res!921499) b!1378860))

(assert (= (and b!1378860 res!921503) b!1378858))

(assert (= (and b!1378858 res!921500) b!1378856))

(assert (= (and b!1378856 res!921501) b!1378859))

(declare-fun m!1263743 () Bool)

(assert (=> b!1378857 m!1263743))

(assert (=> b!1378857 m!1263743))

(declare-fun m!1263745 () Bool)

(assert (=> b!1378857 m!1263745))

(declare-fun m!1263747 () Bool)

(assert (=> b!1378858 m!1263747))

(declare-fun m!1263749 () Bool)

(assert (=> b!1378858 m!1263749))

(declare-fun m!1263751 () Bool)

(assert (=> b!1378858 m!1263751))

(declare-fun m!1263753 () Bool)

(assert (=> b!1378859 m!1263753))

(declare-fun m!1263755 () Bool)

(assert (=> b!1378859 m!1263755))

(declare-fun m!1263757 () Bool)

(assert (=> b!1378859 m!1263757))

(declare-fun m!1263759 () Bool)

(assert (=> b!1378861 m!1263759))

(declare-fun m!1263761 () Bool)

(assert (=> start!117214 m!1263761))

(check-sat (not b!1378857) (not start!117214) (not b!1378859) (not b!1378858) (not b!1378861))
(check-sat)
