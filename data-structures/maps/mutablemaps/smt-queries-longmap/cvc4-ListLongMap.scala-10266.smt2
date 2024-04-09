; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120800 () Bool)

(assert start!120800)

(declare-fun b!1405051 () Bool)

(declare-fun e!795408 () Bool)

(assert (=> b!1405051 (= e!795408 (not true))))

(declare-fun e!795410 () Bool)

(assert (=> b!1405051 e!795410))

(declare-fun res!943377 () Bool)

(assert (=> b!1405051 (=> (not res!943377) (not e!795410))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96025 0))(
  ( (array!96026 (arr!46356 (Array (_ BitVec 32) (_ BitVec 64))) (size!46907 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96025)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96025 (_ BitVec 32)) Bool)

(assert (=> b!1405051 (= res!943377 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47302 0))(
  ( (Unit!47303) )
))
(declare-fun lt!618879 () Unit!47302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47302)

(assert (=> b!1405051 (= lt!618879 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10689 0))(
  ( (MissingZero!10689 (index!45132 (_ BitVec 32))) (Found!10689 (index!45133 (_ BitVec 32))) (Intermediate!10689 (undefined!11501 Bool) (index!45134 (_ BitVec 32)) (x!126755 (_ BitVec 32))) (Undefined!10689) (MissingVacant!10689 (index!45135 (_ BitVec 32))) )
))
(declare-fun lt!618880 () SeekEntryResult!10689)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96025 (_ BitVec 32)) SeekEntryResult!10689)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405051 (= lt!618880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46356 a!2901) j!112) mask!2840) (select (arr!46356 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!943381 () Bool)

(assert (=> start!120800 (=> (not res!943381) (not e!795408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120800 (= res!943381 (validMask!0 mask!2840))))

(assert (=> start!120800 e!795408))

(assert (=> start!120800 true))

(declare-fun array_inv!35301 (array!96025) Bool)

(assert (=> start!120800 (array_inv!35301 a!2901)))

(declare-fun b!1405052 () Bool)

(declare-fun res!943380 () Bool)

(assert (=> b!1405052 (=> (not res!943380) (not e!795408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405052 (= res!943380 (validKeyInArray!0 (select (arr!46356 a!2901) j!112)))))

(declare-fun b!1405053 () Bool)

(declare-fun res!943383 () Bool)

(assert (=> b!1405053 (=> (not res!943383) (not e!795408))))

(declare-datatypes ((List!33055 0))(
  ( (Nil!33052) (Cons!33051 (h!34305 (_ BitVec 64)) (t!47756 List!33055)) )
))
(declare-fun arrayNoDuplicates!0 (array!96025 (_ BitVec 32) List!33055) Bool)

(assert (=> b!1405053 (= res!943383 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33052))))

(declare-fun b!1405054 () Bool)

(declare-fun res!943382 () Bool)

(assert (=> b!1405054 (=> (not res!943382) (not e!795408))))

(assert (=> b!1405054 (= res!943382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405055 () Bool)

(declare-fun res!943379 () Bool)

(assert (=> b!1405055 (=> (not res!943379) (not e!795408))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405055 (= res!943379 (and (= (size!46907 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46907 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46907 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405056 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96025 (_ BitVec 32)) SeekEntryResult!10689)

(assert (=> b!1405056 (= e!795410 (= (seekEntryOrOpen!0 (select (arr!46356 a!2901) j!112) a!2901 mask!2840) (Found!10689 j!112)))))

(declare-fun b!1405057 () Bool)

(declare-fun res!943378 () Bool)

(assert (=> b!1405057 (=> (not res!943378) (not e!795408))))

(assert (=> b!1405057 (= res!943378 (validKeyInArray!0 (select (arr!46356 a!2901) i!1037)))))

(assert (= (and start!120800 res!943381) b!1405055))

(assert (= (and b!1405055 res!943379) b!1405057))

(assert (= (and b!1405057 res!943378) b!1405052))

(assert (= (and b!1405052 res!943380) b!1405054))

(assert (= (and b!1405054 res!943382) b!1405053))

(assert (= (and b!1405053 res!943383) b!1405051))

(assert (= (and b!1405051 res!943377) b!1405056))

(declare-fun m!1293819 () Bool)

(assert (=> b!1405056 m!1293819))

(assert (=> b!1405056 m!1293819))

(declare-fun m!1293821 () Bool)

(assert (=> b!1405056 m!1293821))

(declare-fun m!1293823 () Bool)

(assert (=> b!1405054 m!1293823))

(assert (=> b!1405051 m!1293819))

(declare-fun m!1293825 () Bool)

(assert (=> b!1405051 m!1293825))

(assert (=> b!1405051 m!1293819))

(declare-fun m!1293827 () Bool)

(assert (=> b!1405051 m!1293827))

(assert (=> b!1405051 m!1293825))

(assert (=> b!1405051 m!1293819))

(declare-fun m!1293829 () Bool)

(assert (=> b!1405051 m!1293829))

(declare-fun m!1293831 () Bool)

(assert (=> b!1405051 m!1293831))

(assert (=> b!1405052 m!1293819))

(assert (=> b!1405052 m!1293819))

(declare-fun m!1293833 () Bool)

(assert (=> b!1405052 m!1293833))

(declare-fun m!1293835 () Bool)

(assert (=> b!1405053 m!1293835))

(declare-fun m!1293837 () Bool)

(assert (=> start!120800 m!1293837))

(declare-fun m!1293839 () Bool)

(assert (=> start!120800 m!1293839))

(declare-fun m!1293841 () Bool)

(assert (=> b!1405057 m!1293841))

(assert (=> b!1405057 m!1293841))

(declare-fun m!1293843 () Bool)

(assert (=> b!1405057 m!1293843))

(push 1)

(assert (not b!1405052))

(assert (not b!1405051))

(assert (not b!1405057))

(assert (not b!1405053))

(assert (not b!1405054))

(assert (not b!1405056))

(assert (not start!120800))

(check-sat)

(pop 1)

