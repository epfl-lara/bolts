; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117310 () Bool)

(assert start!117310)

(declare-fun b!1379519 () Bool)

(declare-fun e!781511 () Bool)

(declare-fun e!781510 () Bool)

(assert (=> b!1379519 (= e!781511 e!781510)))

(declare-fun res!922067 () Bool)

(assert (=> b!1379519 (=> (not res!922067) (not e!781510))))

(declare-datatypes ((array!93822 0))(
  ( (array!93823 (arr!45305 (Array (_ BitVec 32) (_ BitVec 64))) (size!45856 (_ BitVec 32))) )
))
(declare-fun lt!607615 () array!93822)

(declare-fun a!4094 () array!93822)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93822 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379519 (= res!922067 (= (arrayCountValidKeys!0 lt!607615 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379519 (= lt!607615 (array!93823 (store (arr!45305 a!4094) i!1451 k0!2953) (size!45856 a!4094)))))

(declare-fun b!1379520 () Bool)

(declare-fun res!922070 () Bool)

(assert (=> b!1379520 (=> (not res!922070) (not e!781510))))

(assert (=> b!1379520 (= res!922070 (bvsle from!3466 #b00000000000000000000000000000000))))

(declare-fun res!922066 () Bool)

(assert (=> start!117310 (=> (not res!922066) (not e!781511))))

(assert (=> start!117310 (= res!922066 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45856 a!4094))))))

(assert (=> start!117310 e!781511))

(assert (=> start!117310 true))

(declare-fun array_inv!34250 (array!93822) Bool)

(assert (=> start!117310 (array_inv!34250 a!4094)))

(declare-fun b!1379521 () Bool)

(assert (=> b!1379521 (= e!781510 (not (= (arrayCountValidKeys!0 lt!607615 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))))

(declare-fun b!1379522 () Bool)

(declare-fun res!922071 () Bool)

(assert (=> b!1379522 (=> (not res!922071) (not e!781511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379522 (= res!922071 (validKeyInArray!0 (select (arr!45305 a!4094) i!1451)))))

(declare-fun b!1379523 () Bool)

(declare-fun res!922069 () Bool)

(assert (=> b!1379523 (=> (not res!922069) (not e!781511))))

(assert (=> b!1379523 (= res!922069 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1379524 () Bool)

(declare-fun res!922068 () Bool)

(assert (=> b!1379524 (=> (not res!922068) (not e!781511))))

(assert (=> b!1379524 (= res!922068 (and (bvslt (size!45856 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45856 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117310 res!922066) b!1379522))

(assert (= (and b!1379522 res!922071) b!1379523))

(assert (= (and b!1379523 res!922069) b!1379524))

(assert (= (and b!1379524 res!922068) b!1379519))

(assert (= (and b!1379519 res!922067) b!1379520))

(assert (= (and b!1379520 res!922070) b!1379521))

(declare-fun m!1264737 () Bool)

(assert (=> b!1379523 m!1264737))

(declare-fun m!1264739 () Bool)

(assert (=> start!117310 m!1264739))

(declare-fun m!1264741 () Bool)

(assert (=> b!1379521 m!1264741))

(declare-fun m!1264743 () Bool)

(assert (=> b!1379521 m!1264743))

(declare-fun m!1264745 () Bool)

(assert (=> b!1379519 m!1264745))

(declare-fun m!1264747 () Bool)

(assert (=> b!1379519 m!1264747))

(declare-fun m!1264749 () Bool)

(assert (=> b!1379519 m!1264749))

(declare-fun m!1264751 () Bool)

(assert (=> b!1379522 m!1264751))

(assert (=> b!1379522 m!1264751))

(declare-fun m!1264753 () Bool)

(assert (=> b!1379522 m!1264753))

(check-sat (not b!1379521) (not b!1379523) (not b!1379519) (not start!117310) (not b!1379522))
(check-sat)
