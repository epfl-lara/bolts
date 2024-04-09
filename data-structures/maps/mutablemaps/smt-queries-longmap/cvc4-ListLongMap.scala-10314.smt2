; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121250 () Bool)

(assert start!121250)

(declare-fun res!947118 () Bool)

(declare-fun e!797541 () Bool)

(assert (=> start!121250 (=> (not res!947118) (not e!797541))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121250 (= res!947118 (validMask!0 mask!2840))))

(assert (=> start!121250 e!797541))

(assert (=> start!121250 true))

(declare-datatypes ((array!96322 0))(
  ( (array!96323 (arr!46500 (Array (_ BitVec 32) (_ BitVec 64))) (size!47051 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96322)

(declare-fun array_inv!35445 (array!96322) Bool)

(assert (=> start!121250 (array_inv!35445 a!2901)))

(declare-fun b!1409280 () Bool)

(declare-fun res!947117 () Bool)

(assert (=> b!1409280 (=> (not res!947117) (not e!797541))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409280 (= res!947117 (validKeyInArray!0 (select (arr!46500 a!2901) j!112)))))

(declare-fun b!1409281 () Bool)

(declare-fun res!947114 () Bool)

(assert (=> b!1409281 (=> (not res!947114) (not e!797541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96322 (_ BitVec 32)) Bool)

(assert (=> b!1409281 (= res!947114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409282 () Bool)

(declare-fun res!947111 () Bool)

(assert (=> b!1409282 (=> (not res!947111) (not e!797541))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409282 (= res!947111 (validKeyInArray!0 (select (arr!46500 a!2901) i!1037)))))

(declare-fun b!1409283 () Bool)

(declare-fun res!947116 () Bool)

(assert (=> b!1409283 (=> (not res!947116) (not e!797541))))

(assert (=> b!1409283 (= res!947116 (and (= (size!47051 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47051 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47051 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409284 () Bool)

(declare-fun e!797543 () Bool)

(assert (=> b!1409284 (= e!797541 (not e!797543))))

(declare-fun res!947115 () Bool)

(assert (=> b!1409284 (=> res!947115 e!797543)))

(declare-datatypes ((SeekEntryResult!10833 0))(
  ( (MissingZero!10833 (index!45708 (_ BitVec 32))) (Found!10833 (index!45709 (_ BitVec 32))) (Intermediate!10833 (undefined!11645 Bool) (index!45710 (_ BitVec 32)) (x!127301 (_ BitVec 32))) (Undefined!10833) (MissingVacant!10833 (index!45711 (_ BitVec 32))) )
))
(declare-fun lt!620634 () SeekEntryResult!10833)

(assert (=> b!1409284 (= res!947115 (or (not (is-Intermediate!10833 lt!620634)) (undefined!11645 lt!620634)))))

(declare-fun e!797540 () Bool)

(assert (=> b!1409284 e!797540))

(declare-fun res!947112 () Bool)

(assert (=> b!1409284 (=> (not res!947112) (not e!797540))))

(assert (=> b!1409284 (= res!947112 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47590 0))(
  ( (Unit!47591) )
))
(declare-fun lt!620633 () Unit!47590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47590)

(assert (=> b!1409284 (= lt!620633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96322 (_ BitVec 32)) SeekEntryResult!10833)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409284 (= lt!620634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46500 a!2901) j!112) mask!2840) (select (arr!46500 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409285 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96322 (_ BitVec 32)) SeekEntryResult!10833)

(assert (=> b!1409285 (= e!797540 (= (seekEntryOrOpen!0 (select (arr!46500 a!2901) j!112) a!2901 mask!2840) (Found!10833 j!112)))))

(declare-fun b!1409286 () Bool)

(declare-fun res!947113 () Bool)

(assert (=> b!1409286 (=> (not res!947113) (not e!797541))))

(declare-datatypes ((List!33199 0))(
  ( (Nil!33196) (Cons!33195 (h!34458 (_ BitVec 64)) (t!47900 List!33199)) )
))
(declare-fun arrayNoDuplicates!0 (array!96322 (_ BitVec 32) List!33199) Bool)

(assert (=> b!1409286 (= res!947113 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33196))))

(declare-fun b!1409287 () Bool)

(assert (=> b!1409287 (= e!797543 true)))

(declare-fun lt!620635 () SeekEntryResult!10833)

(assert (=> b!1409287 (= lt!620635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46500 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46500 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96323 (store (arr!46500 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47051 a!2901)) mask!2840))))

(assert (= (and start!121250 res!947118) b!1409283))

(assert (= (and b!1409283 res!947116) b!1409282))

(assert (= (and b!1409282 res!947111) b!1409280))

(assert (= (and b!1409280 res!947117) b!1409281))

(assert (= (and b!1409281 res!947114) b!1409286))

(assert (= (and b!1409286 res!947113) b!1409284))

(assert (= (and b!1409284 res!947112) b!1409285))

(assert (= (and b!1409284 (not res!947115)) b!1409287))

(declare-fun m!1299025 () Bool)

(assert (=> b!1409284 m!1299025))

(declare-fun m!1299027 () Bool)

(assert (=> b!1409284 m!1299027))

(assert (=> b!1409284 m!1299025))

(declare-fun m!1299029 () Bool)

(assert (=> b!1409284 m!1299029))

(assert (=> b!1409284 m!1299027))

(assert (=> b!1409284 m!1299025))

(declare-fun m!1299031 () Bool)

(assert (=> b!1409284 m!1299031))

(declare-fun m!1299033 () Bool)

(assert (=> b!1409284 m!1299033))

(declare-fun m!1299035 () Bool)

(assert (=> b!1409282 m!1299035))

(assert (=> b!1409282 m!1299035))

(declare-fun m!1299037 () Bool)

(assert (=> b!1409282 m!1299037))

(assert (=> b!1409285 m!1299025))

(assert (=> b!1409285 m!1299025))

(declare-fun m!1299039 () Bool)

(assert (=> b!1409285 m!1299039))

(assert (=> b!1409280 m!1299025))

(assert (=> b!1409280 m!1299025))

(declare-fun m!1299041 () Bool)

(assert (=> b!1409280 m!1299041))

(declare-fun m!1299043 () Bool)

(assert (=> b!1409286 m!1299043))

(declare-fun m!1299045 () Bool)

(assert (=> b!1409281 m!1299045))

(declare-fun m!1299047 () Bool)

(assert (=> start!121250 m!1299047))

(declare-fun m!1299049 () Bool)

(assert (=> start!121250 m!1299049))

(declare-fun m!1299051 () Bool)

(assert (=> b!1409287 m!1299051))

(declare-fun m!1299053 () Bool)

(assert (=> b!1409287 m!1299053))

(assert (=> b!1409287 m!1299053))

(declare-fun m!1299055 () Bool)

(assert (=> b!1409287 m!1299055))

(assert (=> b!1409287 m!1299055))

(assert (=> b!1409287 m!1299053))

(declare-fun m!1299057 () Bool)

(assert (=> b!1409287 m!1299057))

(push 1)

(assert (not start!121250))

(assert (not b!1409286))

(assert (not b!1409284))

(assert (not b!1409285))

(assert (not b!1409282))

