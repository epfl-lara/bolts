; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122246 () Bool)

(assert start!122246)

(declare-fun b!1417591 () Bool)

(declare-fun res!953436 () Bool)

(declare-fun e!802294 () Bool)

(assert (=> b!1417591 (=> (not res!953436) (not e!802294))))

(declare-datatypes ((array!96748 0))(
  ( (array!96749 (arr!46698 (Array (_ BitVec 32) (_ BitVec 64))) (size!47249 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96748)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417591 (= res!953436 (validKeyInArray!0 (select (arr!46698 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!802293 () Bool)

(declare-fun b!1417592 () Bool)

(declare-datatypes ((SeekEntryResult!11031 0))(
  ( (MissingZero!11031 (index!46515 (_ BitVec 32))) (Found!11031 (index!46516 (_ BitVec 32))) (Intermediate!11031 (undefined!11843 Bool) (index!46517 (_ BitVec 32)) (x!128117 (_ BitVec 32))) (Undefined!11031) (MissingVacant!11031 (index!46518 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96748 (_ BitVec 32)) SeekEntryResult!11031)

(assert (=> b!1417592 (= e!802293 (= (seekEntryOrOpen!0 (select (arr!46698 a!2901) j!112) a!2901 mask!2840) (Found!11031 j!112)))))

(declare-fun b!1417593 () Bool)

(declare-fun res!953435 () Bool)

(assert (=> b!1417593 (=> (not res!953435) (not e!802294))))

(declare-datatypes ((List!33397 0))(
  ( (Nil!33394) (Cons!33393 (h!34686 (_ BitVec 64)) (t!48098 List!33397)) )
))
(declare-fun arrayNoDuplicates!0 (array!96748 (_ BitVec 32) List!33397) Bool)

(assert (=> b!1417593 (= res!953435 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33394))))

(declare-fun b!1417594 () Bool)

(assert (=> b!1417594 (= e!802294 (not true))))

(assert (=> b!1417594 e!802293))

(declare-fun res!953433 () Bool)

(assert (=> b!1417594 (=> (not res!953433) (not e!802293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96748 (_ BitVec 32)) Bool)

(assert (=> b!1417594 (= res!953433 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47986 0))(
  ( (Unit!47987) )
))
(declare-fun lt!625378 () Unit!47986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96748 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47986)

(assert (=> b!1417594 (= lt!625378 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!625377 () SeekEntryResult!11031)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96748 (_ BitVec 32)) SeekEntryResult!11031)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417594 (= lt!625377 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46698 a!2901) j!112) mask!2840) (select (arr!46698 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!953430 () Bool)

(assert (=> start!122246 (=> (not res!953430) (not e!802294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122246 (= res!953430 (validMask!0 mask!2840))))

(assert (=> start!122246 e!802294))

(assert (=> start!122246 true))

(declare-fun array_inv!35643 (array!96748) Bool)

(assert (=> start!122246 (array_inv!35643 a!2901)))

(declare-fun b!1417595 () Bool)

(declare-fun res!953431 () Bool)

(assert (=> b!1417595 (=> (not res!953431) (not e!802294))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1417595 (= res!953431 (validKeyInArray!0 (select (arr!46698 a!2901) i!1037)))))

(declare-fun b!1417596 () Bool)

(declare-fun res!953432 () Bool)

(assert (=> b!1417596 (=> (not res!953432) (not e!802294))))

(assert (=> b!1417596 (= res!953432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417597 () Bool)

(declare-fun res!953434 () Bool)

(assert (=> b!1417597 (=> (not res!953434) (not e!802294))))

(assert (=> b!1417597 (= res!953434 (and (= (size!47249 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47249 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47249 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122246 res!953430) b!1417597))

(assert (= (and b!1417597 res!953434) b!1417595))

(assert (= (and b!1417595 res!953431) b!1417591))

(assert (= (and b!1417591 res!953436) b!1417596))

(assert (= (and b!1417596 res!953432) b!1417593))

(assert (= (and b!1417593 res!953435) b!1417594))

(assert (= (and b!1417594 res!953433) b!1417592))

(declare-fun m!1308423 () Bool)

(assert (=> b!1417594 m!1308423))

(declare-fun m!1308425 () Bool)

(assert (=> b!1417594 m!1308425))

(assert (=> b!1417594 m!1308423))

(declare-fun m!1308427 () Bool)

(assert (=> b!1417594 m!1308427))

(assert (=> b!1417594 m!1308425))

(assert (=> b!1417594 m!1308423))

(declare-fun m!1308429 () Bool)

(assert (=> b!1417594 m!1308429))

(declare-fun m!1308431 () Bool)

(assert (=> b!1417594 m!1308431))

(declare-fun m!1308433 () Bool)

(assert (=> b!1417593 m!1308433))

(declare-fun m!1308435 () Bool)

(assert (=> start!122246 m!1308435))

(declare-fun m!1308437 () Bool)

(assert (=> start!122246 m!1308437))

(assert (=> b!1417591 m!1308423))

(assert (=> b!1417591 m!1308423))

(declare-fun m!1308439 () Bool)

(assert (=> b!1417591 m!1308439))

(declare-fun m!1308441 () Bool)

(assert (=> b!1417596 m!1308441))

(declare-fun m!1308443 () Bool)

(assert (=> b!1417595 m!1308443))

(assert (=> b!1417595 m!1308443))

(declare-fun m!1308445 () Bool)

(assert (=> b!1417595 m!1308445))

(assert (=> b!1417592 m!1308423))

(assert (=> b!1417592 m!1308423))

(declare-fun m!1308447 () Bool)

(assert (=> b!1417592 m!1308447))

(push 1)

(assert (not b!1417591))

(assert (not b!1417592))

(assert (not b!1417593))

(assert (not start!122246))

(assert (not b!1417594))

(assert (not b!1417596))

