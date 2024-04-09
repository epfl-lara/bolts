; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120792 () Bool)

(assert start!120792)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96017 0))(
  ( (array!96018 (arr!46352 (Array (_ BitVec 32) (_ BitVec 64))) (size!46903 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96017)

(declare-fun e!795373 () Bool)

(declare-fun b!1404967 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10685 0))(
  ( (MissingZero!10685 (index!45116 (_ BitVec 32))) (Found!10685 (index!45117 (_ BitVec 32))) (Intermediate!10685 (undefined!11497 Bool) (index!45118 (_ BitVec 32)) (x!126743 (_ BitVec 32))) (Undefined!10685) (MissingVacant!10685 (index!45119 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96017 (_ BitVec 32)) SeekEntryResult!10685)

(assert (=> b!1404967 (= e!795373 (= (seekEntryOrOpen!0 (select (arr!46352 a!2901) j!112) a!2901 mask!2840) (Found!10685 j!112)))))

(declare-fun b!1404968 () Bool)

(declare-fun res!943293 () Bool)

(declare-fun e!795374 () Bool)

(assert (=> b!1404968 (=> (not res!943293) (not e!795374))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404968 (= res!943293 (validKeyInArray!0 (select (arr!46352 a!2901) i!1037)))))

(declare-fun b!1404969 () Bool)

(assert (=> b!1404969 (= e!795374 (not true))))

(assert (=> b!1404969 e!795373))

(declare-fun res!943299 () Bool)

(assert (=> b!1404969 (=> (not res!943299) (not e!795373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96017 (_ BitVec 32)) Bool)

(assert (=> b!1404969 (= res!943299 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47294 0))(
  ( (Unit!47295) )
))
(declare-fun lt!618856 () Unit!47294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47294)

(assert (=> b!1404969 (= lt!618856 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618855 () SeekEntryResult!10685)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96017 (_ BitVec 32)) SeekEntryResult!10685)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404969 (= lt!618855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46352 a!2901) j!112) mask!2840) (select (arr!46352 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404970 () Bool)

(declare-fun res!943298 () Bool)

(assert (=> b!1404970 (=> (not res!943298) (not e!795374))))

(declare-datatypes ((List!33051 0))(
  ( (Nil!33048) (Cons!33047 (h!34301 (_ BitVec 64)) (t!47752 List!33051)) )
))
(declare-fun arrayNoDuplicates!0 (array!96017 (_ BitVec 32) List!33051) Bool)

(assert (=> b!1404970 (= res!943298 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33048))))

(declare-fun b!1404971 () Bool)

(declare-fun res!943294 () Bool)

(assert (=> b!1404971 (=> (not res!943294) (not e!795374))))

(assert (=> b!1404971 (= res!943294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404972 () Bool)

(declare-fun res!943297 () Bool)

(assert (=> b!1404972 (=> (not res!943297) (not e!795374))))

(assert (=> b!1404972 (= res!943297 (and (= (size!46903 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46903 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46903 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404973 () Bool)

(declare-fun res!943296 () Bool)

(assert (=> b!1404973 (=> (not res!943296) (not e!795374))))

(assert (=> b!1404973 (= res!943296 (validKeyInArray!0 (select (arr!46352 a!2901) j!112)))))

(declare-fun res!943295 () Bool)

(assert (=> start!120792 (=> (not res!943295) (not e!795374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120792 (= res!943295 (validMask!0 mask!2840))))

(assert (=> start!120792 e!795374))

(assert (=> start!120792 true))

(declare-fun array_inv!35297 (array!96017) Bool)

(assert (=> start!120792 (array_inv!35297 a!2901)))

(assert (= (and start!120792 res!943295) b!1404972))

(assert (= (and b!1404972 res!943297) b!1404968))

(assert (= (and b!1404968 res!943293) b!1404973))

(assert (= (and b!1404973 res!943296) b!1404971))

(assert (= (and b!1404971 res!943294) b!1404970))

(assert (= (and b!1404970 res!943298) b!1404969))

(assert (= (and b!1404969 res!943299) b!1404967))

(declare-fun m!1293715 () Bool)

(assert (=> b!1404967 m!1293715))

(assert (=> b!1404967 m!1293715))

(declare-fun m!1293717 () Bool)

(assert (=> b!1404967 m!1293717))

(declare-fun m!1293719 () Bool)

(assert (=> start!120792 m!1293719))

(declare-fun m!1293721 () Bool)

(assert (=> start!120792 m!1293721))

(declare-fun m!1293723 () Bool)

(assert (=> b!1404968 m!1293723))

(assert (=> b!1404968 m!1293723))

(declare-fun m!1293725 () Bool)

(assert (=> b!1404968 m!1293725))

(assert (=> b!1404969 m!1293715))

(declare-fun m!1293727 () Bool)

(assert (=> b!1404969 m!1293727))

(assert (=> b!1404969 m!1293715))

(declare-fun m!1293729 () Bool)

(assert (=> b!1404969 m!1293729))

(assert (=> b!1404969 m!1293727))

(assert (=> b!1404969 m!1293715))

(declare-fun m!1293731 () Bool)

(assert (=> b!1404969 m!1293731))

(declare-fun m!1293733 () Bool)

(assert (=> b!1404969 m!1293733))

(declare-fun m!1293735 () Bool)

(assert (=> b!1404971 m!1293735))

(declare-fun m!1293737 () Bool)

(assert (=> b!1404970 m!1293737))

(assert (=> b!1404973 m!1293715))

(assert (=> b!1404973 m!1293715))

(declare-fun m!1293739 () Bool)

(assert (=> b!1404973 m!1293739))

(check-sat (not b!1404973) (not b!1404968) (not b!1404969) (not start!120792) (not b!1404970) (not b!1404971) (not b!1404967))
