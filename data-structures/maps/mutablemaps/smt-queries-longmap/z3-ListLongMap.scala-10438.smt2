; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122832 () Bool)

(assert start!122832)

(declare-fun b!1423561 () Bool)

(declare-fun res!959109 () Bool)

(declare-fun e!804650 () Bool)

(assert (=> b!1423561 (=> (not res!959109) (not e!804650))))

(declare-datatypes ((array!97115 0))(
  ( (array!97116 (arr!46871 (Array (_ BitVec 32) (_ BitVec 64))) (size!47422 (_ BitVec 32))) )
))
(declare-fun lt!627145 () array!97115)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11178 0))(
  ( (MissingZero!11178 (index!47103 (_ BitVec 32))) (Found!11178 (index!47104 (_ BitVec 32))) (Intermediate!11178 (undefined!11990 Bool) (index!47105 (_ BitVec 32)) (x!128743 (_ BitVec 32))) (Undefined!11178) (MissingVacant!11178 (index!47106 (_ BitVec 32))) )
))
(declare-fun lt!627142 () SeekEntryResult!11178)

(declare-fun lt!627144 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97115 (_ BitVec 32)) SeekEntryResult!11178)

(assert (=> b!1423561 (= res!959109 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627144 lt!627145 mask!2608) lt!627142))))

(declare-fun b!1423562 () Bool)

(declare-fun res!959105 () Bool)

(declare-fun e!804653 () Bool)

(assert (=> b!1423562 (=> (not res!959105) (not e!804653))))

(declare-fun a!2831 () array!97115)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97115 (_ BitVec 32)) Bool)

(assert (=> b!1423562 (= res!959105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423563 () Bool)

(declare-fun res!959114 () Bool)

(declare-fun e!804654 () Bool)

(assert (=> b!1423563 (=> res!959114 e!804654)))

(declare-fun lt!627143 () SeekEntryResult!11178)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun lt!627147 () (_ BitVec 32))

(assert (=> b!1423563 (= res!959114 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627147 (select (arr!46871 a!2831) j!81) a!2831 mask!2608) lt!627143)))))

(declare-fun b!1423564 () Bool)

(declare-fun res!959117 () Bool)

(assert (=> b!1423564 (=> (not res!959117) (not e!804650))))

(assert (=> b!1423564 (= res!959117 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46871 a!2831) j!81) a!2831 mask!2608) lt!627143))))

(declare-fun res!959111 () Bool)

(assert (=> start!122832 (=> (not res!959111) (not e!804653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122832 (= res!959111 (validMask!0 mask!2608))))

(assert (=> start!122832 e!804653))

(assert (=> start!122832 true))

(declare-fun array_inv!35816 (array!97115) Bool)

(assert (=> start!122832 (array_inv!35816 a!2831)))

(declare-fun b!1423565 () Bool)

(assert (=> b!1423565 (= e!804654 true)))

(declare-fun lt!627148 () SeekEntryResult!11178)

(assert (=> b!1423565 (= lt!627148 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627147 lt!627144 lt!627145 mask!2608))))

(declare-fun b!1423566 () Bool)

(declare-fun res!959110 () Bool)

(assert (=> b!1423566 (=> (not res!959110) (not e!804650))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423566 (= res!959110 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423567 () Bool)

(declare-fun e!804655 () Bool)

(assert (=> b!1423567 (= e!804650 (not e!804655))))

(declare-fun res!959103 () Bool)

(assert (=> b!1423567 (=> res!959103 e!804655)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423567 (= res!959103 (or (= (select (arr!46871 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46871 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46871 a!2831) index!585) (select (arr!46871 a!2831) j!81)) (= (select (store (arr!46871 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804656 () Bool)

(assert (=> b!1423567 e!804656))

(declare-fun res!959104 () Bool)

(assert (=> b!1423567 (=> (not res!959104) (not e!804656))))

(assert (=> b!1423567 (= res!959104 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48140 0))(
  ( (Unit!48141) )
))
(declare-fun lt!627146 () Unit!48140)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48140)

(assert (=> b!1423567 (= lt!627146 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423568 () Bool)

(declare-fun res!959118 () Bool)

(assert (=> b!1423568 (=> (not res!959118) (not e!804653))))

(declare-datatypes ((List!33561 0))(
  ( (Nil!33558) (Cons!33557 (h!34859 (_ BitVec 64)) (t!48262 List!33561)) )
))
(declare-fun arrayNoDuplicates!0 (array!97115 (_ BitVec 32) List!33561) Bool)

(assert (=> b!1423568 (= res!959118 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33558))))

(declare-fun b!1423569 () Bool)

(assert (=> b!1423569 (= e!804655 e!804654)))

(declare-fun res!959115 () Bool)

(assert (=> b!1423569 (=> res!959115 e!804654)))

(assert (=> b!1423569 (= res!959115 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627147 #b00000000000000000000000000000000) (bvsge lt!627147 (size!47422 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423569 (= lt!627147 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423570 () Bool)

(declare-fun e!804651 () Bool)

(assert (=> b!1423570 (= e!804651 e!804650)))

(declare-fun res!959107 () Bool)

(assert (=> b!1423570 (=> (not res!959107) (not e!804650))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423570 (= res!959107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627144 mask!2608) lt!627144 lt!627145 mask!2608) lt!627142))))

(assert (=> b!1423570 (= lt!627142 (Intermediate!11178 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423570 (= lt!627144 (select (store (arr!46871 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423570 (= lt!627145 (array!97116 (store (arr!46871 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47422 a!2831)))))

(declare-fun b!1423571 () Bool)

(declare-fun res!959112 () Bool)

(assert (=> b!1423571 (=> (not res!959112) (not e!804653))))

(assert (=> b!1423571 (= res!959112 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47422 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47422 a!2831))))))

(declare-fun b!1423572 () Bool)

(declare-fun res!959106 () Bool)

(assert (=> b!1423572 (=> (not res!959106) (not e!804653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423572 (= res!959106 (validKeyInArray!0 (select (arr!46871 a!2831) j!81)))))

(declare-fun b!1423573 () Bool)

(assert (=> b!1423573 (= e!804653 e!804651)))

(declare-fun res!959116 () Bool)

(assert (=> b!1423573 (=> (not res!959116) (not e!804651))))

(assert (=> b!1423573 (= res!959116 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46871 a!2831) j!81) mask!2608) (select (arr!46871 a!2831) j!81) a!2831 mask!2608) lt!627143))))

(assert (=> b!1423573 (= lt!627143 (Intermediate!11178 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423574 () Bool)

(declare-fun res!959108 () Bool)

(assert (=> b!1423574 (=> (not res!959108) (not e!804653))))

(assert (=> b!1423574 (= res!959108 (validKeyInArray!0 (select (arr!46871 a!2831) i!982)))))

(declare-fun b!1423575 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97115 (_ BitVec 32)) SeekEntryResult!11178)

(assert (=> b!1423575 (= e!804656 (= (seekEntryOrOpen!0 (select (arr!46871 a!2831) j!81) a!2831 mask!2608) (Found!11178 j!81)))))

(declare-fun b!1423576 () Bool)

(declare-fun res!959113 () Bool)

(assert (=> b!1423576 (=> (not res!959113) (not e!804653))))

(assert (=> b!1423576 (= res!959113 (and (= (size!47422 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47422 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47422 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122832 res!959111) b!1423576))

(assert (= (and b!1423576 res!959113) b!1423574))

(assert (= (and b!1423574 res!959108) b!1423572))

(assert (= (and b!1423572 res!959106) b!1423562))

(assert (= (and b!1423562 res!959105) b!1423568))

(assert (= (and b!1423568 res!959118) b!1423571))

(assert (= (and b!1423571 res!959112) b!1423573))

(assert (= (and b!1423573 res!959116) b!1423570))

(assert (= (and b!1423570 res!959107) b!1423564))

(assert (= (and b!1423564 res!959117) b!1423561))

(assert (= (and b!1423561 res!959109) b!1423566))

(assert (= (and b!1423566 res!959110) b!1423567))

(assert (= (and b!1423567 res!959104) b!1423575))

(assert (= (and b!1423567 (not res!959103)) b!1423569))

(assert (= (and b!1423569 (not res!959115)) b!1423563))

(assert (= (and b!1423563 (not res!959114)) b!1423565))

(declare-fun m!1314167 () Bool)

(assert (=> b!1423575 m!1314167))

(assert (=> b!1423575 m!1314167))

(declare-fun m!1314169 () Bool)

(assert (=> b!1423575 m!1314169))

(declare-fun m!1314171 () Bool)

(assert (=> b!1423574 m!1314171))

(assert (=> b!1423574 m!1314171))

(declare-fun m!1314173 () Bool)

(assert (=> b!1423574 m!1314173))

(declare-fun m!1314175 () Bool)

(assert (=> start!122832 m!1314175))

(declare-fun m!1314177 () Bool)

(assert (=> start!122832 m!1314177))

(declare-fun m!1314179 () Bool)

(assert (=> b!1423569 m!1314179))

(declare-fun m!1314181 () Bool)

(assert (=> b!1423561 m!1314181))

(declare-fun m!1314183 () Bool)

(assert (=> b!1423570 m!1314183))

(assert (=> b!1423570 m!1314183))

(declare-fun m!1314185 () Bool)

(assert (=> b!1423570 m!1314185))

(declare-fun m!1314187 () Bool)

(assert (=> b!1423570 m!1314187))

(declare-fun m!1314189 () Bool)

(assert (=> b!1423570 m!1314189))

(declare-fun m!1314191 () Bool)

(assert (=> b!1423565 m!1314191))

(assert (=> b!1423567 m!1314187))

(declare-fun m!1314193 () Bool)

(assert (=> b!1423567 m!1314193))

(declare-fun m!1314195 () Bool)

(assert (=> b!1423567 m!1314195))

(declare-fun m!1314197 () Bool)

(assert (=> b!1423567 m!1314197))

(assert (=> b!1423567 m!1314167))

(declare-fun m!1314199 () Bool)

(assert (=> b!1423567 m!1314199))

(assert (=> b!1423564 m!1314167))

(assert (=> b!1423564 m!1314167))

(declare-fun m!1314201 () Bool)

(assert (=> b!1423564 m!1314201))

(declare-fun m!1314203 () Bool)

(assert (=> b!1423568 m!1314203))

(assert (=> b!1423573 m!1314167))

(assert (=> b!1423573 m!1314167))

(declare-fun m!1314205 () Bool)

(assert (=> b!1423573 m!1314205))

(assert (=> b!1423573 m!1314205))

(assert (=> b!1423573 m!1314167))

(declare-fun m!1314207 () Bool)

(assert (=> b!1423573 m!1314207))

(assert (=> b!1423572 m!1314167))

(assert (=> b!1423572 m!1314167))

(declare-fun m!1314209 () Bool)

(assert (=> b!1423572 m!1314209))

(assert (=> b!1423563 m!1314167))

(assert (=> b!1423563 m!1314167))

(declare-fun m!1314211 () Bool)

(assert (=> b!1423563 m!1314211))

(declare-fun m!1314213 () Bool)

(assert (=> b!1423562 m!1314213))

(check-sat (not b!1423561) (not b!1423567) (not start!122832) (not b!1423569) (not b!1423568) (not b!1423562) (not b!1423573) (not b!1423565) (not b!1423575) (not b!1423572) (not b!1423563) (not b!1423564) (not b!1423574) (not b!1423570))
(check-sat)
