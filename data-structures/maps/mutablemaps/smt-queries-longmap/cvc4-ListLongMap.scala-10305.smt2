; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121196 () Bool)

(assert start!121196)

(declare-fun b!1408632 () Bool)

(declare-fun e!797218 () Bool)

(declare-fun e!797217 () Bool)

(assert (=> b!1408632 (= e!797218 (not e!797217))))

(declare-fun res!946467 () Bool)

(assert (=> b!1408632 (=> res!946467 e!797217)))

(declare-datatypes ((SeekEntryResult!10806 0))(
  ( (MissingZero!10806 (index!45600 (_ BitVec 32))) (Found!10806 (index!45601 (_ BitVec 32))) (Intermediate!10806 (undefined!11618 Bool) (index!45602 (_ BitVec 32)) (x!127202 (_ BitVec 32))) (Undefined!10806) (MissingVacant!10806 (index!45603 (_ BitVec 32))) )
))
(declare-fun lt!620392 () SeekEntryResult!10806)

(assert (=> b!1408632 (= res!946467 (or (not (is-Intermediate!10806 lt!620392)) (undefined!11618 lt!620392)))))

(declare-fun e!797219 () Bool)

(assert (=> b!1408632 e!797219))

(declare-fun res!946470 () Bool)

(assert (=> b!1408632 (=> (not res!946470) (not e!797219))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!96268 0))(
  ( (array!96269 (arr!46473 (Array (_ BitVec 32) (_ BitVec 64))) (size!47024 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96268)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96268 (_ BitVec 32)) Bool)

(assert (=> b!1408632 (= res!946470 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47536 0))(
  ( (Unit!47537) )
))
(declare-fun lt!620390 () Unit!47536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96268 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47536)

(assert (=> b!1408632 (= lt!620390 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96268 (_ BitVec 32)) SeekEntryResult!10806)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408632 (= lt!620392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46473 a!2901) j!112) mask!2840) (select (arr!46473 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408633 () Bool)

(declare-fun res!946464 () Bool)

(assert (=> b!1408633 (=> (not res!946464) (not e!797218))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408633 (= res!946464 (and (= (size!47024 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47024 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47024 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408634 () Bool)

(declare-fun res!946468 () Bool)

(assert (=> b!1408634 (=> (not res!946468) (not e!797218))))

(assert (=> b!1408634 (= res!946468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408636 () Bool)

(declare-fun res!946463 () Bool)

(assert (=> b!1408636 (=> (not res!946463) (not e!797218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408636 (= res!946463 (validKeyInArray!0 (select (arr!46473 a!2901) j!112)))))

(declare-fun b!1408637 () Bool)

(declare-fun res!946469 () Bool)

(assert (=> b!1408637 (=> (not res!946469) (not e!797218))))

(declare-datatypes ((List!33172 0))(
  ( (Nil!33169) (Cons!33168 (h!34431 (_ BitVec 64)) (t!47873 List!33172)) )
))
(declare-fun arrayNoDuplicates!0 (array!96268 (_ BitVec 32) List!33172) Bool)

(assert (=> b!1408637 (= res!946469 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33169))))

(declare-fun b!1408638 () Bool)

(declare-fun res!946466 () Bool)

(assert (=> b!1408638 (=> (not res!946466) (not e!797218))))

(assert (=> b!1408638 (= res!946466 (validKeyInArray!0 (select (arr!46473 a!2901) i!1037)))))

(declare-fun b!1408639 () Bool)

(assert (=> b!1408639 (= e!797217 true)))

(declare-fun lt!620391 () SeekEntryResult!10806)

(assert (=> b!1408639 (= lt!620391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46473 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46473 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96269 (store (arr!46473 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47024 a!2901)) mask!2840))))

(declare-fun res!946465 () Bool)

(assert (=> start!121196 (=> (not res!946465) (not e!797218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121196 (= res!946465 (validMask!0 mask!2840))))

(assert (=> start!121196 e!797218))

(assert (=> start!121196 true))

(declare-fun array_inv!35418 (array!96268) Bool)

(assert (=> start!121196 (array_inv!35418 a!2901)))

(declare-fun b!1408635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96268 (_ BitVec 32)) SeekEntryResult!10806)

(assert (=> b!1408635 (= e!797219 (= (seekEntryOrOpen!0 (select (arr!46473 a!2901) j!112) a!2901 mask!2840) (Found!10806 j!112)))))

(assert (= (and start!121196 res!946465) b!1408633))

(assert (= (and b!1408633 res!946464) b!1408638))

(assert (= (and b!1408638 res!946466) b!1408636))

(assert (= (and b!1408636 res!946463) b!1408634))

(assert (= (and b!1408634 res!946468) b!1408637))

(assert (= (and b!1408637 res!946469) b!1408632))

(assert (= (and b!1408632 res!946470) b!1408635))

(assert (= (and b!1408632 (not res!946467)) b!1408639))

(declare-fun m!1298107 () Bool)

(assert (=> b!1408639 m!1298107))

(declare-fun m!1298109 () Bool)

(assert (=> b!1408639 m!1298109))

(assert (=> b!1408639 m!1298109))

(declare-fun m!1298111 () Bool)

(assert (=> b!1408639 m!1298111))

(assert (=> b!1408639 m!1298111))

(assert (=> b!1408639 m!1298109))

(declare-fun m!1298113 () Bool)

(assert (=> b!1408639 m!1298113))

(declare-fun m!1298115 () Bool)

(assert (=> b!1408636 m!1298115))

(assert (=> b!1408636 m!1298115))

(declare-fun m!1298117 () Bool)

(assert (=> b!1408636 m!1298117))

(assert (=> b!1408632 m!1298115))

(declare-fun m!1298119 () Bool)

(assert (=> b!1408632 m!1298119))

(assert (=> b!1408632 m!1298115))

(declare-fun m!1298121 () Bool)

(assert (=> b!1408632 m!1298121))

(assert (=> b!1408632 m!1298119))

(assert (=> b!1408632 m!1298115))

(declare-fun m!1298123 () Bool)

(assert (=> b!1408632 m!1298123))

(declare-fun m!1298125 () Bool)

(assert (=> b!1408632 m!1298125))

(declare-fun m!1298127 () Bool)

(assert (=> b!1408638 m!1298127))

(assert (=> b!1408638 m!1298127))

(declare-fun m!1298129 () Bool)

(assert (=> b!1408638 m!1298129))

(declare-fun m!1298131 () Bool)

(assert (=> start!121196 m!1298131))

(declare-fun m!1298133 () Bool)

(assert (=> start!121196 m!1298133))

(declare-fun m!1298135 () Bool)

(assert (=> b!1408634 m!1298135))

(declare-fun m!1298137 () Bool)

(assert (=> b!1408637 m!1298137))

(assert (=> b!1408635 m!1298115))

(assert (=> b!1408635 m!1298115))

(declare-fun m!1298139 () Bool)

(assert (=> b!1408635 m!1298139))

(push 1)

(assert (not start!121196))

(assert (not b!1408635))

(assert (not b!1408637))

(assert (not b!1408632))

(assert (not b!1408636))

(assert (not b!1408638))

(assert (not b!1408634))

(assert (not b!1408639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

