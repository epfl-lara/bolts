; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119646 () Bool)

(assert start!119646)

(declare-datatypes ((array!95246 0))(
  ( (array!95247 (arr!45977 (Array (_ BitVec 32) (_ BitVec 64))) (size!46528 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95246)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!788885 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1393125 () Bool)

(declare-datatypes ((SeekEntryResult!10316 0))(
  ( (MissingZero!10316 (index!43634 (_ BitVec 32))) (Found!10316 (index!43635 (_ BitVec 32))) (Intermediate!10316 (undefined!11128 Bool) (index!43636 (_ BitVec 32)) (x!125323 (_ BitVec 32))) (Undefined!10316) (MissingVacant!10316 (index!43637 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95246 (_ BitVec 32)) SeekEntryResult!10316)

(assert (=> b!1393125 (= e!788885 (= (seekEntryOrOpen!0 (select (arr!45977 a!2901) j!112) a!2901 mask!2840) (Found!10316 j!112)))))

(declare-fun b!1393126 () Bool)

(declare-fun res!932648 () Bool)

(declare-fun e!788888 () Bool)

(assert (=> b!1393126 (=> (not res!932648) (not e!788888))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393126 (= res!932648 (validKeyInArray!0 (select (arr!45977 a!2901) i!1037)))))

(declare-fun res!932642 () Bool)

(assert (=> start!119646 (=> (not res!932642) (not e!788888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119646 (= res!932642 (validMask!0 mask!2840))))

(assert (=> start!119646 e!788888))

(assert (=> start!119646 true))

(declare-fun array_inv!34922 (array!95246) Bool)

(assert (=> start!119646 (array_inv!34922 a!2901)))

(declare-fun b!1393127 () Bool)

(declare-fun e!788887 () Bool)

(assert (=> b!1393127 (= e!788888 (not e!788887))))

(declare-fun res!932645 () Bool)

(assert (=> b!1393127 (=> res!932645 e!788887)))

(declare-fun lt!611843 () SeekEntryResult!10316)

(get-info :version)

(assert (=> b!1393127 (= res!932645 (or (not ((_ is Intermediate!10316) lt!611843)) (undefined!11128 lt!611843)))))

(assert (=> b!1393127 e!788885))

(declare-fun res!932649 () Bool)

(assert (=> b!1393127 (=> (not res!932649) (not e!788885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95246 (_ BitVec 32)) Bool)

(assert (=> b!1393127 (= res!932649 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46586 0))(
  ( (Unit!46587) )
))
(declare-fun lt!611845 () Unit!46586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95246 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46586)

(assert (=> b!1393127 (= lt!611845 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95246 (_ BitVec 32)) SeekEntryResult!10316)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393127 (= lt!611843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45977 a!2901) j!112) mask!2840) (select (arr!45977 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393128 () Bool)

(declare-fun res!932644 () Bool)

(assert (=> b!1393128 (=> (not res!932644) (not e!788888))))

(declare-datatypes ((List!32676 0))(
  ( (Nil!32673) (Cons!32672 (h!33905 (_ BitVec 64)) (t!47377 List!32676)) )
))
(declare-fun arrayNoDuplicates!0 (array!95246 (_ BitVec 32) List!32676) Bool)

(assert (=> b!1393128 (= res!932644 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32673))))

(declare-fun b!1393129 () Bool)

(declare-fun res!932647 () Bool)

(assert (=> b!1393129 (=> (not res!932647) (not e!788888))))

(assert (=> b!1393129 (= res!932647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393130 () Bool)

(declare-fun res!932646 () Bool)

(assert (=> b!1393130 (=> (not res!932646) (not e!788888))))

(assert (=> b!1393130 (= res!932646 (and (= (size!46528 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46528 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46528 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393131 () Bool)

(assert (=> b!1393131 (= e!788887 true)))

(declare-fun lt!611844 () SeekEntryResult!10316)

(assert (=> b!1393131 (= lt!611844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45977 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45977 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95247 (store (arr!45977 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46528 a!2901)) mask!2840))))

(declare-fun b!1393132 () Bool)

(declare-fun res!932643 () Bool)

(assert (=> b!1393132 (=> (not res!932643) (not e!788888))))

(assert (=> b!1393132 (= res!932643 (validKeyInArray!0 (select (arr!45977 a!2901) j!112)))))

(assert (= (and start!119646 res!932642) b!1393130))

(assert (= (and b!1393130 res!932646) b!1393126))

(assert (= (and b!1393126 res!932648) b!1393132))

(assert (= (and b!1393132 res!932643) b!1393129))

(assert (= (and b!1393129 res!932647) b!1393128))

(assert (= (and b!1393128 res!932644) b!1393127))

(assert (= (and b!1393127 res!932649) b!1393125))

(assert (= (and b!1393127 (not res!932645)) b!1393131))

(declare-fun m!1278999 () Bool)

(assert (=> b!1393127 m!1278999))

(declare-fun m!1279001 () Bool)

(assert (=> b!1393127 m!1279001))

(assert (=> b!1393127 m!1278999))

(declare-fun m!1279003 () Bool)

(assert (=> b!1393127 m!1279003))

(assert (=> b!1393127 m!1279001))

(assert (=> b!1393127 m!1278999))

(declare-fun m!1279005 () Bool)

(assert (=> b!1393127 m!1279005))

(declare-fun m!1279007 () Bool)

(assert (=> b!1393127 m!1279007))

(declare-fun m!1279009 () Bool)

(assert (=> b!1393131 m!1279009))

(declare-fun m!1279011 () Bool)

(assert (=> b!1393131 m!1279011))

(assert (=> b!1393131 m!1279011))

(declare-fun m!1279013 () Bool)

(assert (=> b!1393131 m!1279013))

(assert (=> b!1393131 m!1279013))

(assert (=> b!1393131 m!1279011))

(declare-fun m!1279015 () Bool)

(assert (=> b!1393131 m!1279015))

(declare-fun m!1279017 () Bool)

(assert (=> b!1393126 m!1279017))

(assert (=> b!1393126 m!1279017))

(declare-fun m!1279019 () Bool)

(assert (=> b!1393126 m!1279019))

(declare-fun m!1279021 () Bool)

(assert (=> b!1393128 m!1279021))

(assert (=> b!1393125 m!1278999))

(assert (=> b!1393125 m!1278999))

(declare-fun m!1279023 () Bool)

(assert (=> b!1393125 m!1279023))

(assert (=> b!1393132 m!1278999))

(assert (=> b!1393132 m!1278999))

(declare-fun m!1279025 () Bool)

(assert (=> b!1393132 m!1279025))

(declare-fun m!1279027 () Bool)

(assert (=> b!1393129 m!1279027))

(declare-fun m!1279029 () Bool)

(assert (=> start!119646 m!1279029))

(declare-fun m!1279031 () Bool)

(assert (=> start!119646 m!1279031))

(check-sat (not b!1393128) (not b!1393127) (not b!1393131) (not b!1393129) (not start!119646) (not b!1393132) (not b!1393126) (not b!1393125))
