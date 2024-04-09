; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122142 () Bool)

(assert start!122142)

(declare-fun b!1416816 () Bool)

(declare-fun res!952807 () Bool)

(declare-fun e!801904 () Bool)

(assert (=> b!1416816 (=> (not res!952807) (not e!801904))))

(declare-datatypes ((array!96695 0))(
  ( (array!96696 (arr!46673 (Array (_ BitVec 32) (_ BitVec 64))) (size!47224 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96695)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416816 (= res!952807 (validKeyInArray!0 (select (arr!46673 a!2901) j!112)))))

(declare-fun b!1416817 () Bool)

(declare-fun e!801905 () Bool)

(assert (=> b!1416817 (= e!801904 (not e!801905))))

(declare-fun res!952804 () Bool)

(assert (=> b!1416817 (=> res!952804 e!801905)))

(declare-datatypes ((SeekEntryResult!11006 0))(
  ( (MissingZero!11006 (index!46415 (_ BitVec 32))) (Found!11006 (index!46416 (_ BitVec 32))) (Intermediate!11006 (undefined!11818 Bool) (index!46417 (_ BitVec 32)) (x!128022 (_ BitVec 32))) (Undefined!11006) (MissingVacant!11006 (index!46418 (_ BitVec 32))) )
))
(declare-fun lt!625098 () SeekEntryResult!11006)

(get-info :version)

(assert (=> b!1416817 (= res!952804 (or (not ((_ is Intermediate!11006) lt!625098)) (undefined!11818 lt!625098)))))

(declare-fun e!801903 () Bool)

(assert (=> b!1416817 e!801903))

(declare-fun res!952803 () Bool)

(assert (=> b!1416817 (=> (not res!952803) (not e!801903))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96695 (_ BitVec 32)) Bool)

(assert (=> b!1416817 (= res!952803 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47936 0))(
  ( (Unit!47937) )
))
(declare-fun lt!625097 () Unit!47936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47936)

(assert (=> b!1416817 (= lt!625097 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96695 (_ BitVec 32)) SeekEntryResult!11006)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416817 (= lt!625098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46673 a!2901) j!112) mask!2840) (select (arr!46673 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416818 () Bool)

(declare-fun res!952808 () Bool)

(assert (=> b!1416818 (=> (not res!952808) (not e!801904))))

(assert (=> b!1416818 (= res!952808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416819 () Bool)

(declare-fun res!952802 () Bool)

(assert (=> b!1416819 (=> (not res!952802) (not e!801904))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416819 (= res!952802 (and (= (size!47224 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47224 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47224 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416820 () Bool)

(assert (=> b!1416820 (= e!801905 true)))

(declare-fun lt!625099 () SeekEntryResult!11006)

(assert (=> b!1416820 (= lt!625099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46673 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46673 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96696 (store (arr!46673 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47224 a!2901)) mask!2840))))

(declare-fun b!1416821 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96695 (_ BitVec 32)) SeekEntryResult!11006)

(assert (=> b!1416821 (= e!801903 (= (seekEntryOrOpen!0 (select (arr!46673 a!2901) j!112) a!2901 mask!2840) (Found!11006 j!112)))))

(declare-fun res!952806 () Bool)

(assert (=> start!122142 (=> (not res!952806) (not e!801904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122142 (= res!952806 (validMask!0 mask!2840))))

(assert (=> start!122142 e!801904))

(assert (=> start!122142 true))

(declare-fun array_inv!35618 (array!96695) Bool)

(assert (=> start!122142 (array_inv!35618 a!2901)))

(declare-fun b!1416822 () Bool)

(declare-fun res!952805 () Bool)

(assert (=> b!1416822 (=> (not res!952805) (not e!801904))))

(assert (=> b!1416822 (= res!952805 (validKeyInArray!0 (select (arr!46673 a!2901) i!1037)))))

(declare-fun b!1416823 () Bool)

(declare-fun res!952809 () Bool)

(assert (=> b!1416823 (=> (not res!952809) (not e!801904))))

(declare-datatypes ((List!33372 0))(
  ( (Nil!33369) (Cons!33368 (h!34658 (_ BitVec 64)) (t!48073 List!33372)) )
))
(declare-fun arrayNoDuplicates!0 (array!96695 (_ BitVec 32) List!33372) Bool)

(assert (=> b!1416823 (= res!952809 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33369))))

(assert (= (and start!122142 res!952806) b!1416819))

(assert (= (and b!1416819 res!952802) b!1416822))

(assert (= (and b!1416822 res!952805) b!1416816))

(assert (= (and b!1416816 res!952807) b!1416818))

(assert (= (and b!1416818 res!952808) b!1416823))

(assert (= (and b!1416823 res!952809) b!1416817))

(assert (= (and b!1416817 res!952803) b!1416821))

(assert (= (and b!1416817 (not res!952804)) b!1416820))

(declare-fun m!1307583 () Bool)

(assert (=> b!1416818 m!1307583))

(declare-fun m!1307585 () Bool)

(assert (=> b!1416817 m!1307585))

(declare-fun m!1307587 () Bool)

(assert (=> b!1416817 m!1307587))

(assert (=> b!1416817 m!1307585))

(declare-fun m!1307589 () Bool)

(assert (=> b!1416817 m!1307589))

(assert (=> b!1416817 m!1307587))

(assert (=> b!1416817 m!1307585))

(declare-fun m!1307591 () Bool)

(assert (=> b!1416817 m!1307591))

(declare-fun m!1307593 () Bool)

(assert (=> b!1416817 m!1307593))

(declare-fun m!1307595 () Bool)

(assert (=> b!1416820 m!1307595))

(declare-fun m!1307597 () Bool)

(assert (=> b!1416820 m!1307597))

(assert (=> b!1416820 m!1307597))

(declare-fun m!1307599 () Bool)

(assert (=> b!1416820 m!1307599))

(assert (=> b!1416820 m!1307599))

(assert (=> b!1416820 m!1307597))

(declare-fun m!1307601 () Bool)

(assert (=> b!1416820 m!1307601))

(assert (=> b!1416821 m!1307585))

(assert (=> b!1416821 m!1307585))

(declare-fun m!1307603 () Bool)

(assert (=> b!1416821 m!1307603))

(declare-fun m!1307605 () Bool)

(assert (=> b!1416823 m!1307605))

(declare-fun m!1307607 () Bool)

(assert (=> b!1416822 m!1307607))

(assert (=> b!1416822 m!1307607))

(declare-fun m!1307609 () Bool)

(assert (=> b!1416822 m!1307609))

(declare-fun m!1307611 () Bool)

(assert (=> start!122142 m!1307611))

(declare-fun m!1307613 () Bool)

(assert (=> start!122142 m!1307613))

(assert (=> b!1416816 m!1307585))

(assert (=> b!1416816 m!1307585))

(declare-fun m!1307615 () Bool)

(assert (=> b!1416816 m!1307615))

(check-sat (not b!1416816) (not b!1416822) (not b!1416818) (not b!1416817) (not b!1416820) (not b!1416821) (not start!122142) (not b!1416823))
