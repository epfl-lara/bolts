; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121488 () Bool)

(assert start!121488)

(declare-fun b!1411007 () Bool)

(declare-fun res!948351 () Bool)

(declare-fun e!798517 () Bool)

(assert (=> b!1411007 (=> (not res!948351) (not e!798517))))

(declare-datatypes ((array!96407 0))(
  ( (array!96408 (arr!46538 (Array (_ BitVec 32) (_ BitVec 64))) (size!47089 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96407)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411007 (= res!948351 (validKeyInArray!0 (select (arr!46538 a!2901) j!112)))))

(declare-fun b!1411008 () Bool)

(declare-fun res!948343 () Bool)

(assert (=> b!1411008 (=> (not res!948343) (not e!798517))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411008 (= res!948343 (validKeyInArray!0 (select (arr!46538 a!2901) i!1037)))))

(declare-fun b!1411009 () Bool)

(declare-fun e!798514 () Bool)

(assert (=> b!1411009 (= e!798514 true)))

(declare-datatypes ((SeekEntryResult!10871 0))(
  ( (MissingZero!10871 (index!45860 (_ BitVec 32))) (Found!10871 (index!45861 (_ BitVec 32))) (Intermediate!10871 (undefined!11683 Bool) (index!45862 (_ BitVec 32)) (x!127461 (_ BitVec 32))) (Undefined!10871) (MissingVacant!10871 (index!45863 (_ BitVec 32))) )
))
(declare-fun lt!621455 () SeekEntryResult!10871)

(declare-fun lt!621454 () SeekEntryResult!10871)

(assert (=> b!1411009 (and (not (undefined!11683 lt!621455)) (= (index!45862 lt!621455) i!1037) (bvslt (x!127461 lt!621455) (x!127461 lt!621454)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47666 0))(
  ( (Unit!47667) )
))
(declare-fun lt!621456 () Unit!47666)

(declare-fun lt!621453 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47666)

(assert (=> b!1411009 (= lt!621456 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621453 (x!127461 lt!621454) (index!45862 lt!621454) (x!127461 lt!621455) (index!45862 lt!621455) (undefined!11683 lt!621455) mask!2840))))

(declare-fun res!948349 () Bool)

(assert (=> start!121488 (=> (not res!948349) (not e!798517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121488 (= res!948349 (validMask!0 mask!2840))))

(assert (=> start!121488 e!798517))

(assert (=> start!121488 true))

(declare-fun array_inv!35483 (array!96407) Bool)

(assert (=> start!121488 (array_inv!35483 a!2901)))

(declare-fun b!1411010 () Bool)

(declare-fun res!948346 () Bool)

(assert (=> b!1411010 (=> (not res!948346) (not e!798517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96407 (_ BitVec 32)) Bool)

(assert (=> b!1411010 (= res!948346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411011 () Bool)

(declare-fun res!948344 () Bool)

(assert (=> b!1411011 (=> (not res!948344) (not e!798517))))

(declare-datatypes ((List!33237 0))(
  ( (Nil!33234) (Cons!33233 (h!34505 (_ BitVec 64)) (t!47938 List!33237)) )
))
(declare-fun arrayNoDuplicates!0 (array!96407 (_ BitVec 32) List!33237) Bool)

(assert (=> b!1411011 (= res!948344 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33234))))

(declare-fun b!1411012 () Bool)

(declare-fun res!948347 () Bool)

(assert (=> b!1411012 (=> (not res!948347) (not e!798517))))

(assert (=> b!1411012 (= res!948347 (and (= (size!47089 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47089 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47089 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411013 () Bool)

(declare-fun e!798518 () Bool)

(assert (=> b!1411013 (= e!798518 e!798514)))

(declare-fun res!948348 () Bool)

(assert (=> b!1411013 (=> res!948348 e!798514)))

(get-info :version)

(assert (=> b!1411013 (= res!948348 (or (= lt!621454 lt!621455) (not ((_ is Intermediate!10871) lt!621455))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96407 (_ BitVec 32)) SeekEntryResult!10871)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411013 (= lt!621455 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46538 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46538 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96408 (store (arr!46538 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47089 a!2901)) mask!2840))))

(declare-fun b!1411014 () Bool)

(declare-fun e!798515 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96407 (_ BitVec 32)) SeekEntryResult!10871)

(assert (=> b!1411014 (= e!798515 (= (seekEntryOrOpen!0 (select (arr!46538 a!2901) j!112) a!2901 mask!2840) (Found!10871 j!112)))))

(declare-fun b!1411015 () Bool)

(assert (=> b!1411015 (= e!798517 (not e!798518))))

(declare-fun res!948350 () Bool)

(assert (=> b!1411015 (=> res!948350 e!798518)))

(assert (=> b!1411015 (= res!948350 (or (not ((_ is Intermediate!10871) lt!621454)) (undefined!11683 lt!621454)))))

(assert (=> b!1411015 e!798515))

(declare-fun res!948345 () Bool)

(assert (=> b!1411015 (=> (not res!948345) (not e!798515))))

(assert (=> b!1411015 (= res!948345 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621457 () Unit!47666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47666)

(assert (=> b!1411015 (= lt!621457 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411015 (= lt!621454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621453 (select (arr!46538 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411015 (= lt!621453 (toIndex!0 (select (arr!46538 a!2901) j!112) mask!2840))))

(assert (= (and start!121488 res!948349) b!1411012))

(assert (= (and b!1411012 res!948347) b!1411008))

(assert (= (and b!1411008 res!948343) b!1411007))

(assert (= (and b!1411007 res!948351) b!1411010))

(assert (= (and b!1411010 res!948346) b!1411011))

(assert (= (and b!1411011 res!948344) b!1411015))

(assert (= (and b!1411015 res!948345) b!1411014))

(assert (= (and b!1411015 (not res!948350)) b!1411013))

(assert (= (and b!1411013 (not res!948348)) b!1411009))

(declare-fun m!1300793 () Bool)

(assert (=> b!1411010 m!1300793))

(declare-fun m!1300795 () Bool)

(assert (=> b!1411008 m!1300795))

(assert (=> b!1411008 m!1300795))

(declare-fun m!1300797 () Bool)

(assert (=> b!1411008 m!1300797))

(declare-fun m!1300799 () Bool)

(assert (=> b!1411007 m!1300799))

(assert (=> b!1411007 m!1300799))

(declare-fun m!1300801 () Bool)

(assert (=> b!1411007 m!1300801))

(declare-fun m!1300803 () Bool)

(assert (=> b!1411011 m!1300803))

(assert (=> b!1411015 m!1300799))

(declare-fun m!1300805 () Bool)

(assert (=> b!1411015 m!1300805))

(assert (=> b!1411015 m!1300799))

(declare-fun m!1300807 () Bool)

(assert (=> b!1411015 m!1300807))

(assert (=> b!1411015 m!1300799))

(declare-fun m!1300809 () Bool)

(assert (=> b!1411015 m!1300809))

(declare-fun m!1300811 () Bool)

(assert (=> b!1411015 m!1300811))

(assert (=> b!1411014 m!1300799))

(assert (=> b!1411014 m!1300799))

(declare-fun m!1300813 () Bool)

(assert (=> b!1411014 m!1300813))

(declare-fun m!1300815 () Bool)

(assert (=> start!121488 m!1300815))

(declare-fun m!1300817 () Bool)

(assert (=> start!121488 m!1300817))

(declare-fun m!1300819 () Bool)

(assert (=> b!1411013 m!1300819))

(declare-fun m!1300821 () Bool)

(assert (=> b!1411013 m!1300821))

(assert (=> b!1411013 m!1300821))

(declare-fun m!1300823 () Bool)

(assert (=> b!1411013 m!1300823))

(assert (=> b!1411013 m!1300823))

(assert (=> b!1411013 m!1300821))

(declare-fun m!1300825 () Bool)

(assert (=> b!1411013 m!1300825))

(declare-fun m!1300827 () Bool)

(assert (=> b!1411009 m!1300827))

(check-sat (not b!1411014) (not b!1411015) (not start!121488) (not b!1411007) (not b!1411013) (not b!1411010) (not b!1411009) (not b!1411008) (not b!1411011))
(check-sat)
