; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120014 () Bool)

(assert start!120014)

(declare-fun b!1396523 () Bool)

(declare-fun e!790654 () Bool)

(declare-fun e!790651 () Bool)

(assert (=> b!1396523 (= e!790654 e!790651)))

(declare-fun res!935551 () Bool)

(assert (=> b!1396523 (=> res!935551 e!790651)))

(declare-datatypes ((array!95461 0))(
  ( (array!95462 (arr!46080 (Array (_ BitVec 32) (_ BitVec 64))) (size!46631 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95461)

(declare-fun lt!613496 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10419 0))(
  ( (MissingZero!10419 (index!44046 (_ BitVec 32))) (Found!10419 (index!44047 (_ BitVec 32))) (Intermediate!10419 (undefined!11231 Bool) (index!44048 (_ BitVec 32)) (x!125716 (_ BitVec 32))) (Undefined!10419) (MissingVacant!10419 (index!44049 (_ BitVec 32))) )
))
(declare-fun lt!613501 () SeekEntryResult!10419)

(declare-fun lt!613499 () SeekEntryResult!10419)

(assert (=> b!1396523 (= res!935551 (or (= lt!613501 lt!613499) (not (is-Intermediate!10419 lt!613499)) (bvslt (x!125716 lt!613501) #b00000000000000000000000000000000) (bvsgt (x!125716 lt!613501) #b01111111111111111111111111111110) (bvslt lt!613496 #b00000000000000000000000000000000) (bvsge lt!613496 (size!46631 a!2901)) (bvslt (index!44048 lt!613501) #b00000000000000000000000000000000) (bvsge (index!44048 lt!613501) (size!46631 a!2901)) (not (= lt!613501 (Intermediate!10419 false (index!44048 lt!613501) (x!125716 lt!613501)))) (not (= lt!613499 (Intermediate!10419 (undefined!11231 lt!613499) (index!44048 lt!613499) (x!125716 lt!613499))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!613498 () array!95461)

(declare-fun lt!613497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95461 (_ BitVec 32)) SeekEntryResult!10419)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396523 (= lt!613499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613497 mask!2840) lt!613497 lt!613498 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1396523 (= lt!613497 (select (store (arr!46080 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396523 (= lt!613498 (array!95462 (store (arr!46080 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46631 a!2901)))))

(declare-fun b!1396524 () Bool)

(declare-fun res!935553 () Bool)

(declare-fun e!790652 () Bool)

(assert (=> b!1396524 (=> (not res!935553) (not e!790652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396524 (= res!935553 (validKeyInArray!0 (select (arr!46080 a!2901) i!1037)))))

(declare-fun b!1396525 () Bool)

(declare-fun res!935552 () Bool)

(assert (=> b!1396525 (=> (not res!935552) (not e!790652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95461 (_ BitVec 32)) Bool)

(assert (=> b!1396525 (= res!935552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396527 () Bool)

(assert (=> b!1396527 (= e!790652 (not e!790654))))

(declare-fun res!935548 () Bool)

(assert (=> b!1396527 (=> res!935548 e!790654)))

(assert (=> b!1396527 (= res!935548 (or (not (is-Intermediate!10419 lt!613501)) (undefined!11231 lt!613501)))))

(declare-fun e!790655 () Bool)

(assert (=> b!1396527 e!790655))

(declare-fun res!935547 () Bool)

(assert (=> b!1396527 (=> (not res!935547) (not e!790655))))

(assert (=> b!1396527 (= res!935547 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46792 0))(
  ( (Unit!46793) )
))
(declare-fun lt!613495 () Unit!46792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46792)

(assert (=> b!1396527 (= lt!613495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396527 (= lt!613501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613496 (select (arr!46080 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396527 (= lt!613496 (toIndex!0 (select (arr!46080 a!2901) j!112) mask!2840))))

(declare-fun b!1396528 () Bool)

(declare-fun res!935545 () Bool)

(assert (=> b!1396528 (=> (not res!935545) (not e!790652))))

(declare-datatypes ((List!32779 0))(
  ( (Nil!32776) (Cons!32775 (h!34017 (_ BitVec 64)) (t!47480 List!32779)) )
))
(declare-fun arrayNoDuplicates!0 (array!95461 (_ BitVec 32) List!32779) Bool)

(assert (=> b!1396528 (= res!935545 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32776))))

(declare-fun b!1396529 () Bool)

(declare-fun res!935546 () Bool)

(assert (=> b!1396529 (=> (not res!935546) (not e!790652))))

(assert (=> b!1396529 (= res!935546 (validKeyInArray!0 (select (arr!46080 a!2901) j!112)))))

(declare-fun b!1396526 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95461 (_ BitVec 32)) SeekEntryResult!10419)

(assert (=> b!1396526 (= e!790655 (= (seekEntryOrOpen!0 (select (arr!46080 a!2901) j!112) a!2901 mask!2840) (Found!10419 j!112)))))

(declare-fun res!935549 () Bool)

(assert (=> start!120014 (=> (not res!935549) (not e!790652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120014 (= res!935549 (validMask!0 mask!2840))))

(assert (=> start!120014 e!790652))

(assert (=> start!120014 true))

(declare-fun array_inv!35025 (array!95461) Bool)

(assert (=> start!120014 (array_inv!35025 a!2901)))

(declare-fun b!1396530 () Bool)

(assert (=> b!1396530 (= e!790651 true)))

(declare-fun lt!613500 () SeekEntryResult!10419)

(assert (=> b!1396530 (= lt!613500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613496 lt!613497 lt!613498 mask!2840))))

(declare-fun b!1396531 () Bool)

(declare-fun res!935550 () Bool)

(assert (=> b!1396531 (=> (not res!935550) (not e!790652))))

(assert (=> b!1396531 (= res!935550 (and (= (size!46631 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46631 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46631 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120014 res!935549) b!1396531))

(assert (= (and b!1396531 res!935550) b!1396524))

(assert (= (and b!1396524 res!935553) b!1396529))

(assert (= (and b!1396529 res!935546) b!1396525))

(assert (= (and b!1396525 res!935552) b!1396528))

(assert (= (and b!1396528 res!935545) b!1396527))

(assert (= (and b!1396527 res!935547) b!1396526))

(assert (= (and b!1396527 (not res!935548)) b!1396523))

(assert (= (and b!1396523 (not res!935551)) b!1396530))

(declare-fun m!1283075 () Bool)

(assert (=> b!1396527 m!1283075))

(declare-fun m!1283077 () Bool)

(assert (=> b!1396527 m!1283077))

(assert (=> b!1396527 m!1283075))

(assert (=> b!1396527 m!1283075))

(declare-fun m!1283079 () Bool)

(assert (=> b!1396527 m!1283079))

(declare-fun m!1283081 () Bool)

(assert (=> b!1396527 m!1283081))

(declare-fun m!1283083 () Bool)

(assert (=> b!1396527 m!1283083))

(declare-fun m!1283085 () Bool)

(assert (=> b!1396523 m!1283085))

(assert (=> b!1396523 m!1283085))

(declare-fun m!1283087 () Bool)

(assert (=> b!1396523 m!1283087))

(declare-fun m!1283089 () Bool)

(assert (=> b!1396523 m!1283089))

(declare-fun m!1283091 () Bool)

(assert (=> b!1396523 m!1283091))

(declare-fun m!1283093 () Bool)

(assert (=> b!1396530 m!1283093))

(declare-fun m!1283095 () Bool)

(assert (=> b!1396528 m!1283095))

(assert (=> b!1396529 m!1283075))

(assert (=> b!1396529 m!1283075))

(declare-fun m!1283097 () Bool)

(assert (=> b!1396529 m!1283097))

(assert (=> b!1396526 m!1283075))

(assert (=> b!1396526 m!1283075))

(declare-fun m!1283099 () Bool)

(assert (=> b!1396526 m!1283099))

(declare-fun m!1283101 () Bool)

(assert (=> b!1396524 m!1283101))

(assert (=> b!1396524 m!1283101))

(declare-fun m!1283103 () Bool)

(assert (=> b!1396524 m!1283103))

(declare-fun m!1283105 () Bool)

(assert (=> b!1396525 m!1283105))

(declare-fun m!1283107 () Bool)

(assert (=> start!120014 m!1283107))

(declare-fun m!1283109 () Bool)

(assert (=> start!120014 m!1283109))

(push 1)

