; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121132 () Bool)

(assert start!121132)

(declare-fun b!1407819 () Bool)

(declare-fun res!945654 () Bool)

(declare-fun e!796832 () Bool)

(assert (=> b!1407819 (=> (not res!945654) (not e!796832))))

(declare-datatypes ((array!96204 0))(
  ( (array!96205 (arr!46441 (Array (_ BitVec 32) (_ BitVec 64))) (size!46992 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96204)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96204 (_ BitVec 32)) Bool)

(assert (=> b!1407819 (= res!945654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407820 () Bool)

(declare-fun res!945653 () Bool)

(assert (=> b!1407820 (=> (not res!945653) (not e!796832))))

(declare-datatypes ((List!33140 0))(
  ( (Nil!33137) (Cons!33136 (h!34399 (_ BitVec 64)) (t!47841 List!33140)) )
))
(declare-fun arrayNoDuplicates!0 (array!96204 (_ BitVec 32) List!33140) Bool)

(assert (=> b!1407820 (= res!945653 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33137))))

(declare-fun b!1407822 () Bool)

(declare-fun e!796835 () Bool)

(assert (=> b!1407822 (= e!796832 (not e!796835))))

(declare-fun res!945652 () Bool)

(assert (=> b!1407822 (=> res!945652 e!796835)))

(declare-datatypes ((SeekEntryResult!10774 0))(
  ( (MissingZero!10774 (index!45472 (_ BitVec 32))) (Found!10774 (index!45473 (_ BitVec 32))) (Intermediate!10774 (undefined!11586 Bool) (index!45474 (_ BitVec 32)) (x!127090 (_ BitVec 32))) (Undefined!10774) (MissingVacant!10774 (index!45475 (_ BitVec 32))) )
))
(declare-fun lt!619923 () SeekEntryResult!10774)

(assert (=> b!1407822 (= res!945652 (or (not (is-Intermediate!10774 lt!619923)) (undefined!11586 lt!619923)))))

(declare-fun e!796833 () Bool)

(assert (=> b!1407822 e!796833))

(declare-fun res!945650 () Bool)

(assert (=> b!1407822 (=> (not res!945650) (not e!796833))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1407822 (= res!945650 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47472 0))(
  ( (Unit!47473) )
))
(declare-fun lt!619922 () Unit!47472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96204 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47472)

(assert (=> b!1407822 (= lt!619922 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96204 (_ BitVec 32)) SeekEntryResult!10774)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407822 (= lt!619923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46441 a!2901) j!112) mask!2840) (select (arr!46441 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407823 () Bool)

(declare-fun res!945657 () Bool)

(assert (=> b!1407823 (=> (not res!945657) (not e!796832))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407823 (= res!945657 (validKeyInArray!0 (select (arr!46441 a!2901) i!1037)))))

(declare-fun b!1407824 () Bool)

(assert (=> b!1407824 (= e!796835 true)))

(declare-fun lt!619924 () SeekEntryResult!10774)

(assert (=> b!1407824 (= lt!619924 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46441 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46441 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96205 (store (arr!46441 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46992 a!2901)) mask!2840))))

(declare-fun b!1407825 () Bool)

(declare-fun res!945655 () Bool)

(assert (=> b!1407825 (=> (not res!945655) (not e!796832))))

(assert (=> b!1407825 (= res!945655 (and (= (size!46992 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46992 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46992 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407826 () Bool)

(declare-fun res!945656 () Bool)

(assert (=> b!1407826 (=> (not res!945656) (not e!796832))))

(assert (=> b!1407826 (= res!945656 (validKeyInArray!0 (select (arr!46441 a!2901) j!112)))))

(declare-fun b!1407821 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96204 (_ BitVec 32)) SeekEntryResult!10774)

(assert (=> b!1407821 (= e!796833 (= (seekEntryOrOpen!0 (select (arr!46441 a!2901) j!112) a!2901 mask!2840) (Found!10774 j!112)))))

(declare-fun res!945651 () Bool)

(assert (=> start!121132 (=> (not res!945651) (not e!796832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121132 (= res!945651 (validMask!0 mask!2840))))

(assert (=> start!121132 e!796832))

(assert (=> start!121132 true))

(declare-fun array_inv!35386 (array!96204) Bool)

(assert (=> start!121132 (array_inv!35386 a!2901)))

(assert (= (and start!121132 res!945651) b!1407825))

(assert (= (and b!1407825 res!945655) b!1407823))

(assert (= (and b!1407823 res!945657) b!1407826))

(assert (= (and b!1407826 res!945656) b!1407819))

(assert (= (and b!1407819 res!945654) b!1407820))

(assert (= (and b!1407820 res!945653) b!1407822))

(assert (= (and b!1407822 res!945650) b!1407821))

(assert (= (and b!1407822 (not res!945652)) b!1407824))

(declare-fun m!1296959 () Bool)

(assert (=> b!1407826 m!1296959))

(assert (=> b!1407826 m!1296959))

(declare-fun m!1296961 () Bool)

(assert (=> b!1407826 m!1296961))

(declare-fun m!1296963 () Bool)

(assert (=> b!1407819 m!1296963))

(declare-fun m!1296965 () Bool)

(assert (=> start!121132 m!1296965))

(declare-fun m!1296967 () Bool)

(assert (=> start!121132 m!1296967))

(assert (=> b!1407821 m!1296959))

(assert (=> b!1407821 m!1296959))

(declare-fun m!1296969 () Bool)

(assert (=> b!1407821 m!1296969))

(declare-fun m!1296971 () Bool)

(assert (=> b!1407824 m!1296971))

(declare-fun m!1296973 () Bool)

(assert (=> b!1407824 m!1296973))

(assert (=> b!1407824 m!1296973))

(declare-fun m!1296975 () Bool)

(assert (=> b!1407824 m!1296975))

(assert (=> b!1407824 m!1296975))

(assert (=> b!1407824 m!1296973))

(declare-fun m!1296977 () Bool)

(assert (=> b!1407824 m!1296977))

(declare-fun m!1296979 () Bool)

(assert (=> b!1407823 m!1296979))

(assert (=> b!1407823 m!1296979))

(declare-fun m!1296981 () Bool)

(assert (=> b!1407823 m!1296981))

(assert (=> b!1407822 m!1296959))

(declare-fun m!1296983 () Bool)

(assert (=> b!1407822 m!1296983))

(assert (=> b!1407822 m!1296959))

(declare-fun m!1296985 () Bool)

(assert (=> b!1407822 m!1296985))

(assert (=> b!1407822 m!1296983))

(assert (=> b!1407822 m!1296959))

(declare-fun m!1296987 () Bool)

(assert (=> b!1407822 m!1296987))

(declare-fun m!1296989 () Bool)

(assert (=> b!1407822 m!1296989))

(declare-fun m!1296991 () Bool)

(assert (=> b!1407820 m!1296991))

(push 1)

(assert (not b!1407820))

(assert (not b!1407823))

(assert (not b!1407824))

(assert (not b!1407822))

(assert (not start!121132))

(assert (not b!1407819))

(assert (not b!1407821))

(assert (not b!1407826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

