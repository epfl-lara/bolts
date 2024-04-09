; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119924 () Bool)

(assert start!119924)

(declare-fun b!1395792 () Bool)

(declare-fun e!790243 () Bool)

(assert (=> b!1395792 (= e!790243 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95422 0))(
  ( (array!95423 (arr!46062 (Array (_ BitVec 32) (_ BitVec 64))) (size!46613 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95422)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10401 0))(
  ( (MissingZero!10401 (index!43974 (_ BitVec 32))) (Found!10401 (index!43975 (_ BitVec 32))) (Intermediate!10401 (undefined!11213 Bool) (index!43976 (_ BitVec 32)) (x!125644 (_ BitVec 32))) (Undefined!10401) (MissingVacant!10401 (index!43977 (_ BitVec 32))) )
))
(declare-fun lt!613109 () SeekEntryResult!10401)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95422 (_ BitVec 32)) SeekEntryResult!10401)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395792 (= lt!613109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46062 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46062 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95423 (store (arr!46062 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46613 a!2901)) mask!2840))))

(declare-fun b!1395793 () Bool)

(declare-fun res!934983 () Bool)

(declare-fun e!790242 () Bool)

(assert (=> b!1395793 (=> (not res!934983) (not e!790242))))

(assert (=> b!1395793 (= res!934983 (and (= (size!46613 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46613 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46613 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395795 () Bool)

(assert (=> b!1395795 (= e!790242 (not e!790243))))

(declare-fun res!934984 () Bool)

(assert (=> b!1395795 (=> res!934984 e!790243)))

(declare-fun lt!613111 () SeekEntryResult!10401)

(assert (=> b!1395795 (= res!934984 (or (not (is-Intermediate!10401 lt!613111)) (undefined!11213 lt!613111)))))

(declare-fun e!790244 () Bool)

(assert (=> b!1395795 e!790244))

(declare-fun res!934981 () Bool)

(assert (=> b!1395795 (=> (not res!934981) (not e!790244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95422 (_ BitVec 32)) Bool)

(assert (=> b!1395795 (= res!934981 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46756 0))(
  ( (Unit!46757) )
))
(declare-fun lt!613110 () Unit!46756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46756)

(assert (=> b!1395795 (= lt!613110 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395795 (= lt!613111 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46062 a!2901) j!112) mask!2840) (select (arr!46062 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395796 () Bool)

(declare-fun res!934982 () Bool)

(assert (=> b!1395796 (=> (not res!934982) (not e!790242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395796 (= res!934982 (validKeyInArray!0 (select (arr!46062 a!2901) j!112)))))

(declare-fun b!1395797 () Bool)

(declare-fun res!934985 () Bool)

(assert (=> b!1395797 (=> (not res!934985) (not e!790242))))

(assert (=> b!1395797 (= res!934985 (validKeyInArray!0 (select (arr!46062 a!2901) i!1037)))))

(declare-fun res!934986 () Bool)

(assert (=> start!119924 (=> (not res!934986) (not e!790242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119924 (= res!934986 (validMask!0 mask!2840))))

(assert (=> start!119924 e!790242))

(assert (=> start!119924 true))

(declare-fun array_inv!35007 (array!95422) Bool)

(assert (=> start!119924 (array_inv!35007 a!2901)))

(declare-fun b!1395794 () Bool)

(declare-fun res!934979 () Bool)

(assert (=> b!1395794 (=> (not res!934979) (not e!790242))))

(assert (=> b!1395794 (= res!934979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395798 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95422 (_ BitVec 32)) SeekEntryResult!10401)

(assert (=> b!1395798 (= e!790244 (= (seekEntryOrOpen!0 (select (arr!46062 a!2901) j!112) a!2901 mask!2840) (Found!10401 j!112)))))

(declare-fun b!1395799 () Bool)

(declare-fun res!934980 () Bool)

(assert (=> b!1395799 (=> (not res!934980) (not e!790242))))

(declare-datatypes ((List!32761 0))(
  ( (Nil!32758) (Cons!32757 (h!33996 (_ BitVec 64)) (t!47462 List!32761)) )
))
(declare-fun arrayNoDuplicates!0 (array!95422 (_ BitVec 32) List!32761) Bool)

(assert (=> b!1395799 (= res!934980 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32758))))

(assert (= (and start!119924 res!934986) b!1395793))

(assert (= (and b!1395793 res!934983) b!1395797))

(assert (= (and b!1395797 res!934985) b!1395796))

(assert (= (and b!1395796 res!934982) b!1395794))

(assert (= (and b!1395794 res!934979) b!1395799))

(assert (= (and b!1395799 res!934980) b!1395795))

(assert (= (and b!1395795 res!934981) b!1395798))

(assert (= (and b!1395795 (not res!934984)) b!1395792))

(declare-fun m!1282291 () Bool)

(assert (=> b!1395792 m!1282291))

(declare-fun m!1282293 () Bool)

(assert (=> b!1395792 m!1282293))

(assert (=> b!1395792 m!1282293))

(declare-fun m!1282295 () Bool)

(assert (=> b!1395792 m!1282295))

(assert (=> b!1395792 m!1282295))

(assert (=> b!1395792 m!1282293))

(declare-fun m!1282297 () Bool)

(assert (=> b!1395792 m!1282297))

(declare-fun m!1282299 () Bool)

(assert (=> b!1395797 m!1282299))

(assert (=> b!1395797 m!1282299))

(declare-fun m!1282301 () Bool)

(assert (=> b!1395797 m!1282301))

(declare-fun m!1282303 () Bool)

(assert (=> b!1395796 m!1282303))

(assert (=> b!1395796 m!1282303))

(declare-fun m!1282305 () Bool)

(assert (=> b!1395796 m!1282305))

(declare-fun m!1282307 () Bool)

(assert (=> b!1395799 m!1282307))

(assert (=> b!1395798 m!1282303))

(assert (=> b!1395798 m!1282303))

(declare-fun m!1282309 () Bool)

(assert (=> b!1395798 m!1282309))

(declare-fun m!1282311 () Bool)

(assert (=> start!119924 m!1282311))

(declare-fun m!1282313 () Bool)

(assert (=> start!119924 m!1282313))

(declare-fun m!1282315 () Bool)

(assert (=> b!1395794 m!1282315))

(assert (=> b!1395795 m!1282303))

(declare-fun m!1282317 () Bool)

(assert (=> b!1395795 m!1282317))

(assert (=> b!1395795 m!1282303))

(declare-fun m!1282319 () Bool)

(assert (=> b!1395795 m!1282319))

(assert (=> b!1395795 m!1282317))

(assert (=> b!1395795 m!1282303))

(declare-fun m!1282321 () Bool)

(assert (=> b!1395795 m!1282321))

(declare-fun m!1282323 () Bool)

(assert (=> b!1395795 m!1282323))

(push 1)

(assert (not b!1395795))

(assert (not b!1395798))

(assert (not start!119924))

(assert (not b!1395792))

(assert (not b!1395796))

(assert (not b!1395794))

(assert (not b!1395799))

(assert (not b!1395797))

(check-sat)

(pop 1)

