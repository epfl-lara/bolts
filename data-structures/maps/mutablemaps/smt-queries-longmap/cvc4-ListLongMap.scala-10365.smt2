; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122048 () Bool)

(assert start!122048)

(declare-fun b!1416025 () Bool)

(declare-fun e!801479 () Bool)

(declare-fun e!801478 () Bool)

(assert (=> b!1416025 (= e!801479 e!801478)))

(declare-fun res!952181 () Bool)

(assert (=> b!1416025 (=> res!952181 e!801478)))

(declare-datatypes ((SeekEntryResult!10986 0))(
  ( (MissingZero!10986 (index!46335 (_ BitVec 32))) (Found!10986 (index!46336 (_ BitVec 32))) (Intermediate!10986 (undefined!11798 Bool) (index!46337 (_ BitVec 32)) (x!127940 (_ BitVec 32))) (Undefined!10986) (MissingVacant!10986 (index!46338 (_ BitVec 32))) )
))
(declare-fun lt!624606 () SeekEntryResult!10986)

(declare-fun lt!624604 () SeekEntryResult!10986)

(assert (=> b!1416025 (= res!952181 (or (= lt!624606 lt!624604) (not (is-Intermediate!10986 lt!624604))))))

(declare-datatypes ((array!96652 0))(
  ( (array!96653 (arr!46653 (Array (_ BitVec 32) (_ BitVec 64))) (size!47204 (_ BitVec 32))) )
))
(declare-fun lt!624610 () array!96652)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!624605 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96652 (_ BitVec 32)) SeekEntryResult!10986)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416025 (= lt!624604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624605 mask!2840) lt!624605 lt!624610 mask!2840))))

(declare-fun a!2901 () array!96652)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416025 (= lt!624605 (select (store (arr!46653 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416025 (= lt!624610 (array!96653 (store (arr!46653 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47204 a!2901)))))

(declare-fun b!1416026 () Bool)

(declare-fun e!801476 () Bool)

(assert (=> b!1416026 (= e!801478 e!801476)))

(declare-fun res!952183 () Bool)

(assert (=> b!1416026 (=> res!952183 e!801476)))

(declare-fun lt!624603 () (_ BitVec 32))

(assert (=> b!1416026 (= res!952183 (or (bvslt (x!127940 lt!624606) #b00000000000000000000000000000000) (bvsgt (x!127940 lt!624606) #b01111111111111111111111111111110) (bvslt (x!127940 lt!624604) #b00000000000000000000000000000000) (bvsgt (x!127940 lt!624604) #b01111111111111111111111111111110) (bvslt lt!624603 #b00000000000000000000000000000000) (bvsge lt!624603 (size!47204 a!2901)) (bvslt (index!46337 lt!624606) #b00000000000000000000000000000000) (bvsge (index!46337 lt!624606) (size!47204 a!2901)) (bvslt (index!46337 lt!624604) #b00000000000000000000000000000000) (bvsge (index!46337 lt!624604) (size!47204 a!2901)) (not (= lt!624606 (Intermediate!10986 false (index!46337 lt!624606) (x!127940 lt!624606)))) (not (= lt!624604 (Intermediate!10986 false (index!46337 lt!624604) (x!127940 lt!624604))))))))

(declare-fun lt!624607 () SeekEntryResult!10986)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96652 (_ BitVec 32)) SeekEntryResult!10986)

(assert (=> b!1416026 (= lt!624607 (seekKeyOrZeroReturnVacant!0 (x!127940 lt!624604) (index!46337 lt!624604) (index!46337 lt!624604) (select (arr!46653 a!2901) j!112) lt!624610 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96652 (_ BitVec 32)) SeekEntryResult!10986)

(assert (=> b!1416026 (= lt!624607 (seekEntryOrOpen!0 lt!624605 lt!624610 mask!2840))))

(assert (=> b!1416026 (and (not (undefined!11798 lt!624604)) (= (index!46337 lt!624604) i!1037) (bvslt (x!127940 lt!624604) (x!127940 lt!624606)) (= (select (store (arr!46653 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46337 lt!624604)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47896 0))(
  ( (Unit!47897) )
))
(declare-fun lt!624608 () Unit!47896)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47896)

(assert (=> b!1416026 (= lt!624608 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624603 (x!127940 lt!624606) (index!46337 lt!624606) (x!127940 lt!624604) (index!46337 lt!624604) (undefined!11798 lt!624604) mask!2840))))

(declare-fun b!1416027 () Bool)

(declare-fun res!952178 () Bool)

(declare-fun e!801475 () Bool)

(assert (=> b!1416027 (=> (not res!952178) (not e!801475))))

(assert (=> b!1416027 (= res!952178 (and (= (size!47204 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47204 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47204 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!952177 () Bool)

(assert (=> start!122048 (=> (not res!952177) (not e!801475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122048 (= res!952177 (validMask!0 mask!2840))))

(assert (=> start!122048 e!801475))

(assert (=> start!122048 true))

(declare-fun array_inv!35598 (array!96652) Bool)

(assert (=> start!122048 (array_inv!35598 a!2901)))

(declare-fun b!1416028 () Bool)

(declare-fun res!952182 () Bool)

(assert (=> b!1416028 (=> (not res!952182) (not e!801475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416028 (= res!952182 (validKeyInArray!0 (select (arr!46653 a!2901) j!112)))))

(declare-fun b!1416029 () Bool)

(declare-fun res!952179 () Bool)

(assert (=> b!1416029 (=> (not res!952179) (not e!801475))))

(declare-datatypes ((List!33352 0))(
  ( (Nil!33349) (Cons!33348 (h!34635 (_ BitVec 64)) (t!48053 List!33352)) )
))
(declare-fun arrayNoDuplicates!0 (array!96652 (_ BitVec 32) List!33352) Bool)

(assert (=> b!1416029 (= res!952179 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33349))))

(declare-fun b!1416030 () Bool)

(assert (=> b!1416030 (= e!801475 (not e!801479))))

(declare-fun res!952185 () Bool)

(assert (=> b!1416030 (=> res!952185 e!801479)))

(assert (=> b!1416030 (= res!952185 (or (not (is-Intermediate!10986 lt!624606)) (undefined!11798 lt!624606)))))

(declare-fun lt!624602 () SeekEntryResult!10986)

(assert (=> b!1416030 (= lt!624602 (Found!10986 j!112))))

(assert (=> b!1416030 (= lt!624602 (seekEntryOrOpen!0 (select (arr!46653 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96652 (_ BitVec 32)) Bool)

(assert (=> b!1416030 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624609 () Unit!47896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47896)

(assert (=> b!1416030 (= lt!624609 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416030 (= lt!624606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624603 (select (arr!46653 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416030 (= lt!624603 (toIndex!0 (select (arr!46653 a!2901) j!112) mask!2840))))

(declare-fun b!1416031 () Bool)

(assert (=> b!1416031 (= e!801476 true)))

(assert (=> b!1416031 (= lt!624602 lt!624607)))

(declare-fun lt!624601 () Unit!47896)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47896)

(assert (=> b!1416031 (= lt!624601 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624603 (x!127940 lt!624606) (index!46337 lt!624606) (x!127940 lt!624604) (index!46337 lt!624604) mask!2840))))

(declare-fun b!1416032 () Bool)

(declare-fun res!952180 () Bool)

(assert (=> b!1416032 (=> (not res!952180) (not e!801475))))

(assert (=> b!1416032 (= res!952180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416033 () Bool)

(declare-fun res!952176 () Bool)

(assert (=> b!1416033 (=> (not res!952176) (not e!801475))))

(assert (=> b!1416033 (= res!952176 (validKeyInArray!0 (select (arr!46653 a!2901) i!1037)))))

(declare-fun b!1416034 () Bool)

(declare-fun res!952184 () Bool)

(assert (=> b!1416034 (=> res!952184 e!801476)))

(assert (=> b!1416034 (= res!952184 (not (= lt!624604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624603 lt!624605 lt!624610 mask!2840))))))

(assert (= (and start!122048 res!952177) b!1416027))

(assert (= (and b!1416027 res!952178) b!1416033))

(assert (= (and b!1416033 res!952176) b!1416028))

(assert (= (and b!1416028 res!952182) b!1416032))

(assert (= (and b!1416032 res!952180) b!1416029))

(assert (= (and b!1416029 res!952179) b!1416030))

(assert (= (and b!1416030 (not res!952185)) b!1416025))

(assert (= (and b!1416025 (not res!952181)) b!1416026))

(assert (= (and b!1416026 (not res!952183)) b!1416034))

(assert (= (and b!1416034 (not res!952184)) b!1416031))

(declare-fun m!1306633 () Bool)

(assert (=> b!1416029 m!1306633))

(declare-fun m!1306635 () Bool)

(assert (=> b!1416025 m!1306635))

(assert (=> b!1416025 m!1306635))

(declare-fun m!1306637 () Bool)

(assert (=> b!1416025 m!1306637))

(declare-fun m!1306639 () Bool)

(assert (=> b!1416025 m!1306639))

(declare-fun m!1306641 () Bool)

(assert (=> b!1416025 m!1306641))

(declare-fun m!1306643 () Bool)

(assert (=> b!1416033 m!1306643))

(assert (=> b!1416033 m!1306643))

(declare-fun m!1306645 () Bool)

(assert (=> b!1416033 m!1306645))

(declare-fun m!1306647 () Bool)

(assert (=> b!1416030 m!1306647))

(declare-fun m!1306649 () Bool)

(assert (=> b!1416030 m!1306649))

(assert (=> b!1416030 m!1306647))

(declare-fun m!1306651 () Bool)

(assert (=> b!1416030 m!1306651))

(assert (=> b!1416030 m!1306647))

(declare-fun m!1306653 () Bool)

(assert (=> b!1416030 m!1306653))

(assert (=> b!1416030 m!1306647))

(declare-fun m!1306655 () Bool)

(assert (=> b!1416030 m!1306655))

(declare-fun m!1306657 () Bool)

(assert (=> b!1416030 m!1306657))

(declare-fun m!1306659 () Bool)

(assert (=> start!122048 m!1306659))

(declare-fun m!1306661 () Bool)

(assert (=> start!122048 m!1306661))

(declare-fun m!1306663 () Bool)

(assert (=> b!1416034 m!1306663))

(assert (=> b!1416028 m!1306647))

(assert (=> b!1416028 m!1306647))

(declare-fun m!1306665 () Bool)

(assert (=> b!1416028 m!1306665))

(declare-fun m!1306667 () Bool)

(assert (=> b!1416026 m!1306667))

(declare-fun m!1306669 () Bool)

(assert (=> b!1416026 m!1306669))

(assert (=> b!1416026 m!1306647))

(declare-fun m!1306671 () Bool)

(assert (=> b!1416026 m!1306671))

(assert (=> b!1416026 m!1306647))

(declare-fun m!1306673 () Bool)

(assert (=> b!1416026 m!1306673))

(assert (=> b!1416026 m!1306639))

(declare-fun m!1306675 () Bool)

(assert (=> b!1416032 m!1306675))

(declare-fun m!1306677 () Bool)

(assert (=> b!1416031 m!1306677))

(push 1)

