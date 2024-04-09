; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122874 () Bool)

(assert start!122874)

(declare-fun b!1424569 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97157 0))(
  ( (array!97158 (arr!46892 (Array (_ BitVec 32) (_ BitVec 64))) (size!47443 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97157)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun e!805091 () Bool)

(declare-datatypes ((SeekEntryResult!11199 0))(
  ( (MissingZero!11199 (index!47187 (_ BitVec 32))) (Found!11199 (index!47188 (_ BitVec 32))) (Intermediate!11199 (undefined!12011 Bool) (index!47189 (_ BitVec 32)) (x!128820 (_ BitVec 32))) (Undefined!11199) (MissingVacant!11199 (index!47190 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97157 (_ BitVec 32)) SeekEntryResult!11199)

(assert (=> b!1424569 (= e!805091 (= (seekEntryOrOpen!0 (select (arr!46892 a!2831) j!81) a!2831 mask!2608) (Found!11199 j!81)))))

(declare-fun b!1424570 () Bool)

(declare-fun e!805093 () Bool)

(declare-fun e!805094 () Bool)

(assert (=> b!1424570 (= e!805093 (not e!805094))))

(declare-fun res!960111 () Bool)

(assert (=> b!1424570 (=> res!960111 e!805094)))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424570 (= res!960111 (or (= (select (arr!46892 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46892 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46892 a!2831) index!585) (select (arr!46892 a!2831) j!81)) (= (select (store (arr!46892 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424570 e!805091))

(declare-fun res!960114 () Bool)

(assert (=> b!1424570 (=> (not res!960114) (not e!805091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97157 (_ BitVec 32)) Bool)

(assert (=> b!1424570 (= res!960114 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48182 0))(
  ( (Unit!48183) )
))
(declare-fun lt!627588 () Unit!48182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48182)

(assert (=> b!1424570 (= lt!627588 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424571 () Bool)

(declare-fun res!960119 () Bool)

(declare-fun e!805096 () Bool)

(assert (=> b!1424571 (=> (not res!960119) (not e!805096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424571 (= res!960119 (validKeyInArray!0 (select (arr!46892 a!2831) j!81)))))

(declare-fun b!1424572 () Bool)

(declare-fun e!805097 () Bool)

(assert (=> b!1424572 (= e!805094 e!805097)))

(declare-fun res!960112 () Bool)

(assert (=> b!1424572 (=> res!960112 e!805097)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627586 () (_ BitVec 32))

(assert (=> b!1424572 (= res!960112 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627586 #b00000000000000000000000000000000) (bvsge lt!627586 (size!47443 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424572 (= lt!627586 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!960121 () Bool)

(assert (=> start!122874 (=> (not res!960121) (not e!805096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122874 (= res!960121 (validMask!0 mask!2608))))

(assert (=> start!122874 e!805096))

(assert (=> start!122874 true))

(declare-fun array_inv!35837 (array!97157) Bool)

(assert (=> start!122874 (array_inv!35837 a!2831)))

(declare-fun b!1424573 () Bool)

(declare-fun e!805092 () Bool)

(assert (=> b!1424573 (= e!805096 e!805092)))

(declare-fun res!960115 () Bool)

(assert (=> b!1424573 (=> (not res!960115) (not e!805092))))

(declare-fun lt!627585 () SeekEntryResult!11199)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97157 (_ BitVec 32)) SeekEntryResult!11199)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424573 (= res!960115 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46892 a!2831) j!81) mask!2608) (select (arr!46892 a!2831) j!81) a!2831 mask!2608) lt!627585))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424573 (= lt!627585 (Intermediate!11199 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424574 () Bool)

(declare-fun res!960123 () Bool)

(assert (=> b!1424574 (=> (not res!960123) (not e!805093))))

(assert (=> b!1424574 (= res!960123 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46892 a!2831) j!81) a!2831 mask!2608) lt!627585))))

(declare-fun b!1424575 () Bool)

(assert (=> b!1424575 (= e!805097 true)))

(declare-fun lt!627589 () array!97157)

(declare-fun lt!627583 () (_ BitVec 64))

(declare-fun lt!627584 () SeekEntryResult!11199)

(assert (=> b!1424575 (= lt!627584 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627586 lt!627583 lt!627589 mask!2608))))

(declare-fun b!1424576 () Bool)

(declare-fun res!960116 () Bool)

(assert (=> b!1424576 (=> res!960116 e!805097)))

(assert (=> b!1424576 (= res!960116 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627586 (select (arr!46892 a!2831) j!81) a!2831 mask!2608) lt!627585)))))

(declare-fun b!1424577 () Bool)

(declare-fun res!960113 () Bool)

(assert (=> b!1424577 (=> (not res!960113) (not e!805096))))

(assert (=> b!1424577 (= res!960113 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47443 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47443 a!2831))))))

(declare-fun b!1424578 () Bool)

(declare-fun res!960122 () Bool)

(assert (=> b!1424578 (=> (not res!960122) (not e!805093))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424578 (= res!960122 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424579 () Bool)

(assert (=> b!1424579 (= e!805092 e!805093)))

(declare-fun res!960120 () Bool)

(assert (=> b!1424579 (=> (not res!960120) (not e!805093))))

(declare-fun lt!627587 () SeekEntryResult!11199)

(assert (=> b!1424579 (= res!960120 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627583 mask!2608) lt!627583 lt!627589 mask!2608) lt!627587))))

(assert (=> b!1424579 (= lt!627587 (Intermediate!11199 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424579 (= lt!627583 (select (store (arr!46892 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424579 (= lt!627589 (array!97158 (store (arr!46892 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47443 a!2831)))))

(declare-fun b!1424580 () Bool)

(declare-fun res!960118 () Bool)

(assert (=> b!1424580 (=> (not res!960118) (not e!805096))))

(declare-datatypes ((List!33582 0))(
  ( (Nil!33579) (Cons!33578 (h!34880 (_ BitVec 64)) (t!48283 List!33582)) )
))
(declare-fun arrayNoDuplicates!0 (array!97157 (_ BitVec 32) List!33582) Bool)

(assert (=> b!1424580 (= res!960118 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33579))))

(declare-fun b!1424581 () Bool)

(declare-fun res!960117 () Bool)

(assert (=> b!1424581 (=> (not res!960117) (not e!805096))))

(assert (=> b!1424581 (= res!960117 (validKeyInArray!0 (select (arr!46892 a!2831) i!982)))))

(declare-fun b!1424582 () Bool)

(declare-fun res!960126 () Bool)

(assert (=> b!1424582 (=> (not res!960126) (not e!805093))))

(assert (=> b!1424582 (= res!960126 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627583 lt!627589 mask!2608) lt!627587))))

(declare-fun b!1424583 () Bool)

(declare-fun res!960125 () Bool)

(assert (=> b!1424583 (=> (not res!960125) (not e!805096))))

(assert (=> b!1424583 (= res!960125 (and (= (size!47443 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47443 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47443 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424584 () Bool)

(declare-fun res!960124 () Bool)

(assert (=> b!1424584 (=> (not res!960124) (not e!805096))))

(assert (=> b!1424584 (= res!960124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122874 res!960121) b!1424583))

(assert (= (and b!1424583 res!960125) b!1424581))

(assert (= (and b!1424581 res!960117) b!1424571))

(assert (= (and b!1424571 res!960119) b!1424584))

(assert (= (and b!1424584 res!960124) b!1424580))

(assert (= (and b!1424580 res!960118) b!1424577))

(assert (= (and b!1424577 res!960113) b!1424573))

(assert (= (and b!1424573 res!960115) b!1424579))

(assert (= (and b!1424579 res!960120) b!1424574))

(assert (= (and b!1424574 res!960123) b!1424582))

(assert (= (and b!1424582 res!960126) b!1424578))

(assert (= (and b!1424578 res!960122) b!1424570))

(assert (= (and b!1424570 res!960114) b!1424569))

(assert (= (and b!1424570 (not res!960111)) b!1424572))

(assert (= (and b!1424572 (not res!960112)) b!1424576))

(assert (= (and b!1424576 (not res!960116)) b!1424575))

(declare-fun m!1315175 () Bool)

(assert (=> b!1424582 m!1315175))

(declare-fun m!1315177 () Bool)

(assert (=> b!1424584 m!1315177))

(declare-fun m!1315179 () Bool)

(assert (=> b!1424580 m!1315179))

(declare-fun m!1315181 () Bool)

(assert (=> b!1424570 m!1315181))

(declare-fun m!1315183 () Bool)

(assert (=> b!1424570 m!1315183))

(declare-fun m!1315185 () Bool)

(assert (=> b!1424570 m!1315185))

(declare-fun m!1315187 () Bool)

(assert (=> b!1424570 m!1315187))

(declare-fun m!1315189 () Bool)

(assert (=> b!1424570 m!1315189))

(declare-fun m!1315191 () Bool)

(assert (=> b!1424570 m!1315191))

(assert (=> b!1424571 m!1315189))

(assert (=> b!1424571 m!1315189))

(declare-fun m!1315193 () Bool)

(assert (=> b!1424571 m!1315193))

(assert (=> b!1424569 m!1315189))

(assert (=> b!1424569 m!1315189))

(declare-fun m!1315195 () Bool)

(assert (=> b!1424569 m!1315195))

(declare-fun m!1315197 () Bool)

(assert (=> start!122874 m!1315197))

(declare-fun m!1315199 () Bool)

(assert (=> start!122874 m!1315199))

(declare-fun m!1315201 () Bool)

(assert (=> b!1424572 m!1315201))

(assert (=> b!1424573 m!1315189))

(assert (=> b!1424573 m!1315189))

(declare-fun m!1315203 () Bool)

(assert (=> b!1424573 m!1315203))

(assert (=> b!1424573 m!1315203))

(assert (=> b!1424573 m!1315189))

(declare-fun m!1315205 () Bool)

(assert (=> b!1424573 m!1315205))

(assert (=> b!1424576 m!1315189))

(assert (=> b!1424576 m!1315189))

(declare-fun m!1315207 () Bool)

(assert (=> b!1424576 m!1315207))

(assert (=> b!1424574 m!1315189))

(assert (=> b!1424574 m!1315189))

(declare-fun m!1315209 () Bool)

(assert (=> b!1424574 m!1315209))

(declare-fun m!1315211 () Bool)

(assert (=> b!1424575 m!1315211))

(declare-fun m!1315213 () Bool)

(assert (=> b!1424581 m!1315213))

(assert (=> b!1424581 m!1315213))

(declare-fun m!1315215 () Bool)

(assert (=> b!1424581 m!1315215))

(declare-fun m!1315217 () Bool)

(assert (=> b!1424579 m!1315217))

(assert (=> b!1424579 m!1315217))

(declare-fun m!1315219 () Bool)

(assert (=> b!1424579 m!1315219))

(assert (=> b!1424579 m!1315181))

(declare-fun m!1315221 () Bool)

(assert (=> b!1424579 m!1315221))

(check-sat (not b!1424576) (not b!1424575) (not b!1424570) (not b!1424582) (not b!1424572) (not b!1424571) (not start!122874) (not b!1424579) (not b!1424573) (not b!1424574) (not b!1424584) (not b!1424580) (not b!1424569) (not b!1424581))
(check-sat)
