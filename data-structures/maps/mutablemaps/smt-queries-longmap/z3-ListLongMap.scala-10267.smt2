; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120804 () Bool)

(assert start!120804)

(declare-fun b!1405093 () Bool)

(declare-fun res!943425 () Bool)

(declare-fun e!795427 () Bool)

(assert (=> b!1405093 (=> (not res!943425) (not e!795427))))

(declare-datatypes ((array!96029 0))(
  ( (array!96030 (arr!46358 (Array (_ BitVec 32) (_ BitVec 64))) (size!46909 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96029)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96029 (_ BitVec 32)) Bool)

(assert (=> b!1405093 (= res!943425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943423 () Bool)

(assert (=> start!120804 (=> (not res!943423) (not e!795427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120804 (= res!943423 (validMask!0 mask!2840))))

(assert (=> start!120804 e!795427))

(assert (=> start!120804 true))

(declare-fun array_inv!35303 (array!96029) Bool)

(assert (=> start!120804 (array_inv!35303 a!2901)))

(declare-fun b!1405094 () Bool)

(declare-fun res!943422 () Bool)

(assert (=> b!1405094 (=> (not res!943422) (not e!795427))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405094 (= res!943422 (and (= (size!46909 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46909 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46909 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405095 () Bool)

(assert (=> b!1405095 (= e!795427 (not true))))

(declare-fun e!795426 () Bool)

(assert (=> b!1405095 e!795426))

(declare-fun res!943419 () Bool)

(assert (=> b!1405095 (=> (not res!943419) (not e!795426))))

(assert (=> b!1405095 (= res!943419 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47306 0))(
  ( (Unit!47307) )
))
(declare-fun lt!618892 () Unit!47306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47306)

(assert (=> b!1405095 (= lt!618892 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10691 0))(
  ( (MissingZero!10691 (index!45140 (_ BitVec 32))) (Found!10691 (index!45141 (_ BitVec 32))) (Intermediate!10691 (undefined!11503 Bool) (index!45142 (_ BitVec 32)) (x!126765 (_ BitVec 32))) (Undefined!10691) (MissingVacant!10691 (index!45143 (_ BitVec 32))) )
))
(declare-fun lt!618891 () SeekEntryResult!10691)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96029 (_ BitVec 32)) SeekEntryResult!10691)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405095 (= lt!618891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46358 a!2901) j!112) mask!2840) (select (arr!46358 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405096 () Bool)

(declare-fun res!943424 () Bool)

(assert (=> b!1405096 (=> (not res!943424) (not e!795427))))

(declare-datatypes ((List!33057 0))(
  ( (Nil!33054) (Cons!33053 (h!34307 (_ BitVec 64)) (t!47758 List!33057)) )
))
(declare-fun arrayNoDuplicates!0 (array!96029 (_ BitVec 32) List!33057) Bool)

(assert (=> b!1405096 (= res!943424 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33054))))

(declare-fun b!1405097 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96029 (_ BitVec 32)) SeekEntryResult!10691)

(assert (=> b!1405097 (= e!795426 (= (seekEntryOrOpen!0 (select (arr!46358 a!2901) j!112) a!2901 mask!2840) (Found!10691 j!112)))))

(declare-fun b!1405098 () Bool)

(declare-fun res!943420 () Bool)

(assert (=> b!1405098 (=> (not res!943420) (not e!795427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405098 (= res!943420 (validKeyInArray!0 (select (arr!46358 a!2901) i!1037)))))

(declare-fun b!1405099 () Bool)

(declare-fun res!943421 () Bool)

(assert (=> b!1405099 (=> (not res!943421) (not e!795427))))

(assert (=> b!1405099 (= res!943421 (validKeyInArray!0 (select (arr!46358 a!2901) j!112)))))

(assert (= (and start!120804 res!943423) b!1405094))

(assert (= (and b!1405094 res!943422) b!1405098))

(assert (= (and b!1405098 res!943420) b!1405099))

(assert (= (and b!1405099 res!943421) b!1405093))

(assert (= (and b!1405093 res!943425) b!1405096))

(assert (= (and b!1405096 res!943424) b!1405095))

(assert (= (and b!1405095 res!943419) b!1405097))

(declare-fun m!1293871 () Bool)

(assert (=> b!1405098 m!1293871))

(assert (=> b!1405098 m!1293871))

(declare-fun m!1293873 () Bool)

(assert (=> b!1405098 m!1293873))

(declare-fun m!1293875 () Bool)

(assert (=> b!1405097 m!1293875))

(assert (=> b!1405097 m!1293875))

(declare-fun m!1293877 () Bool)

(assert (=> b!1405097 m!1293877))

(declare-fun m!1293879 () Bool)

(assert (=> start!120804 m!1293879))

(declare-fun m!1293881 () Bool)

(assert (=> start!120804 m!1293881))

(assert (=> b!1405095 m!1293875))

(declare-fun m!1293883 () Bool)

(assert (=> b!1405095 m!1293883))

(assert (=> b!1405095 m!1293875))

(declare-fun m!1293885 () Bool)

(assert (=> b!1405095 m!1293885))

(assert (=> b!1405095 m!1293883))

(assert (=> b!1405095 m!1293875))

(declare-fun m!1293887 () Bool)

(assert (=> b!1405095 m!1293887))

(declare-fun m!1293889 () Bool)

(assert (=> b!1405095 m!1293889))

(declare-fun m!1293891 () Bool)

(assert (=> b!1405096 m!1293891))

(assert (=> b!1405099 m!1293875))

(assert (=> b!1405099 m!1293875))

(declare-fun m!1293893 () Bool)

(assert (=> b!1405099 m!1293893))

(declare-fun m!1293895 () Bool)

(assert (=> b!1405093 m!1293895))

(check-sat (not b!1405097) (not b!1405093) (not b!1405099) (not b!1405096) (not b!1405098) (not start!120804) (not b!1405095))
