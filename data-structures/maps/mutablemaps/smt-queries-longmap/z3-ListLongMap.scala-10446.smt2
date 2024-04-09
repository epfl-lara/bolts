; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122880 () Bool)

(assert start!122880)

(declare-datatypes ((array!97163 0))(
  ( (array!97164 (arr!46895 (Array (_ BitVec 32) (_ BitVec 64))) (size!47446 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97163)

(declare-fun e!805154 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1424713 () Bool)

(declare-datatypes ((SeekEntryResult!11202 0))(
  ( (MissingZero!11202 (index!47199 (_ BitVec 32))) (Found!11202 (index!47200 (_ BitVec 32))) (Intermediate!11202 (undefined!12014 Bool) (index!47201 (_ BitVec 32)) (x!128831 (_ BitVec 32))) (Undefined!11202) (MissingVacant!11202 (index!47202 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97163 (_ BitVec 32)) SeekEntryResult!11202)

(assert (=> b!1424713 (= e!805154 (= (seekEntryOrOpen!0 (select (arr!46895 a!2831) j!81) a!2831 mask!2608) (Found!11202 j!81)))))

(declare-fun b!1424714 () Bool)

(declare-fun res!960255 () Bool)

(declare-fun e!805157 () Bool)

(assert (=> b!1424714 (=> (not res!960255) (not e!805157))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1424714 (= res!960255 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47446 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47446 a!2831))))))

(declare-fun res!960257 () Bool)

(assert (=> start!122880 (=> (not res!960257) (not e!805157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122880 (= res!960257 (validMask!0 mask!2608))))

(assert (=> start!122880 e!805157))

(assert (=> start!122880 true))

(declare-fun array_inv!35840 (array!97163) Bool)

(assert (=> start!122880 (array_inv!35840 a!2831)))

(declare-fun b!1424715 () Bool)

(declare-fun res!960269 () Bool)

(declare-fun e!805155 () Bool)

(assert (=> b!1424715 (=> res!960269 e!805155)))

(declare-fun lt!627648 () (_ BitVec 32))

(declare-fun lt!627646 () SeekEntryResult!11202)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97163 (_ BitVec 32)) SeekEntryResult!11202)

(assert (=> b!1424715 (= res!960269 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627648 (select (arr!46895 a!2831) j!81) a!2831 mask!2608) lt!627646)))))

(declare-fun b!1424716 () Bool)

(declare-fun res!960263 () Bool)

(assert (=> b!1424716 (=> (not res!960263) (not e!805157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424716 (= res!960263 (validKeyInArray!0 (select (arr!46895 a!2831) j!81)))))

(declare-fun b!1424717 () Bool)

(declare-fun e!805156 () Bool)

(assert (=> b!1424717 (= e!805157 e!805156)))

(declare-fun res!960270 () Bool)

(assert (=> b!1424717 (=> (not res!960270) (not e!805156))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424717 (= res!960270 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46895 a!2831) j!81) mask!2608) (select (arr!46895 a!2831) j!81) a!2831 mask!2608) lt!627646))))

(assert (=> b!1424717 (= lt!627646 (Intermediate!11202 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424718 () Bool)

(declare-fun e!805159 () Bool)

(declare-fun e!805160 () Bool)

(assert (=> b!1424718 (= e!805159 (not e!805160))))

(declare-fun res!960260 () Bool)

(assert (=> b!1424718 (=> res!960260 e!805160)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424718 (= res!960260 (or (= (select (arr!46895 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46895 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46895 a!2831) index!585) (select (arr!46895 a!2831) j!81)) (= (select (store (arr!46895 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424718 e!805154))

(declare-fun res!960264 () Bool)

(assert (=> b!1424718 (=> (not res!960264) (not e!805154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97163 (_ BitVec 32)) Bool)

(assert (=> b!1424718 (= res!960264 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48188 0))(
  ( (Unit!48189) )
))
(declare-fun lt!627651 () Unit!48188)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48188)

(assert (=> b!1424718 (= lt!627651 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424719 () Bool)

(declare-fun res!960259 () Bool)

(assert (=> b!1424719 (=> (not res!960259) (not e!805159))))

(declare-fun lt!627647 () SeekEntryResult!11202)

(declare-fun lt!627650 () (_ BitVec 64))

(declare-fun lt!627652 () array!97163)

(assert (=> b!1424719 (= res!960259 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627650 lt!627652 mask!2608) lt!627647))))

(declare-fun b!1424720 () Bool)

(declare-fun res!960262 () Bool)

(assert (=> b!1424720 (=> (not res!960262) (not e!805157))))

(declare-datatypes ((List!33585 0))(
  ( (Nil!33582) (Cons!33581 (h!34883 (_ BitVec 64)) (t!48286 List!33585)) )
))
(declare-fun arrayNoDuplicates!0 (array!97163 (_ BitVec 32) List!33585) Bool)

(assert (=> b!1424720 (= res!960262 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33582))))

(declare-fun b!1424721 () Bool)

(declare-fun res!960267 () Bool)

(assert (=> b!1424721 (=> (not res!960267) (not e!805157))))

(assert (=> b!1424721 (= res!960267 (validKeyInArray!0 (select (arr!46895 a!2831) i!982)))))

(declare-fun b!1424722 () Bool)

(assert (=> b!1424722 (= e!805160 e!805155)))

(declare-fun res!960258 () Bool)

(assert (=> b!1424722 (=> res!960258 e!805155)))

(assert (=> b!1424722 (= res!960258 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627648 #b00000000000000000000000000000000) (bvsge lt!627648 (size!47446 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424722 (= lt!627648 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424723 () Bool)

(declare-fun res!960266 () Bool)

(assert (=> b!1424723 (=> (not res!960266) (not e!805159))))

(assert (=> b!1424723 (= res!960266 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46895 a!2831) j!81) a!2831 mask!2608) lt!627646))))

(declare-fun b!1424724 () Bool)

(declare-fun res!960265 () Bool)

(assert (=> b!1424724 (=> (not res!960265) (not e!805157))))

(assert (=> b!1424724 (= res!960265 (and (= (size!47446 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47446 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47446 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424725 () Bool)

(assert (=> b!1424725 (= e!805155 true)))

(declare-fun lt!627649 () SeekEntryResult!11202)

(assert (=> b!1424725 (= lt!627649 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627648 lt!627650 lt!627652 mask!2608))))

(declare-fun b!1424726 () Bool)

(declare-fun res!960268 () Bool)

(assert (=> b!1424726 (=> (not res!960268) (not e!805157))))

(assert (=> b!1424726 (= res!960268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424727 () Bool)

(assert (=> b!1424727 (= e!805156 e!805159)))

(declare-fun res!960261 () Bool)

(assert (=> b!1424727 (=> (not res!960261) (not e!805159))))

(assert (=> b!1424727 (= res!960261 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627650 mask!2608) lt!627650 lt!627652 mask!2608) lt!627647))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424727 (= lt!627647 (Intermediate!11202 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424727 (= lt!627650 (select (store (arr!46895 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424727 (= lt!627652 (array!97164 (store (arr!46895 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47446 a!2831)))))

(declare-fun b!1424728 () Bool)

(declare-fun res!960256 () Bool)

(assert (=> b!1424728 (=> (not res!960256) (not e!805159))))

(assert (=> b!1424728 (= res!960256 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122880 res!960257) b!1424724))

(assert (= (and b!1424724 res!960265) b!1424721))

(assert (= (and b!1424721 res!960267) b!1424716))

(assert (= (and b!1424716 res!960263) b!1424726))

(assert (= (and b!1424726 res!960268) b!1424720))

(assert (= (and b!1424720 res!960262) b!1424714))

(assert (= (and b!1424714 res!960255) b!1424717))

(assert (= (and b!1424717 res!960270) b!1424727))

(assert (= (and b!1424727 res!960261) b!1424723))

(assert (= (and b!1424723 res!960266) b!1424719))

(assert (= (and b!1424719 res!960259) b!1424728))

(assert (= (and b!1424728 res!960256) b!1424718))

(assert (= (and b!1424718 res!960264) b!1424713))

(assert (= (and b!1424718 (not res!960260)) b!1424722))

(assert (= (and b!1424722 (not res!960258)) b!1424715))

(assert (= (and b!1424715 (not res!960269)) b!1424725))

(declare-fun m!1315319 () Bool)

(assert (=> b!1424721 m!1315319))

(assert (=> b!1424721 m!1315319))

(declare-fun m!1315321 () Bool)

(assert (=> b!1424721 m!1315321))

(declare-fun m!1315323 () Bool)

(assert (=> b!1424720 m!1315323))

(declare-fun m!1315325 () Bool)

(assert (=> b!1424723 m!1315325))

(assert (=> b!1424723 m!1315325))

(declare-fun m!1315327 () Bool)

(assert (=> b!1424723 m!1315327))

(assert (=> b!1424715 m!1315325))

(assert (=> b!1424715 m!1315325))

(declare-fun m!1315329 () Bool)

(assert (=> b!1424715 m!1315329))

(declare-fun m!1315331 () Bool)

(assert (=> b!1424722 m!1315331))

(declare-fun m!1315333 () Bool)

(assert (=> b!1424719 m!1315333))

(declare-fun m!1315335 () Bool)

(assert (=> b!1424718 m!1315335))

(declare-fun m!1315337 () Bool)

(assert (=> b!1424718 m!1315337))

(declare-fun m!1315339 () Bool)

(assert (=> b!1424718 m!1315339))

(declare-fun m!1315341 () Bool)

(assert (=> b!1424718 m!1315341))

(assert (=> b!1424718 m!1315325))

(declare-fun m!1315343 () Bool)

(assert (=> b!1424718 m!1315343))

(assert (=> b!1424717 m!1315325))

(assert (=> b!1424717 m!1315325))

(declare-fun m!1315345 () Bool)

(assert (=> b!1424717 m!1315345))

(assert (=> b!1424717 m!1315345))

(assert (=> b!1424717 m!1315325))

(declare-fun m!1315347 () Bool)

(assert (=> b!1424717 m!1315347))

(assert (=> b!1424716 m!1315325))

(assert (=> b!1424716 m!1315325))

(declare-fun m!1315349 () Bool)

(assert (=> b!1424716 m!1315349))

(declare-fun m!1315351 () Bool)

(assert (=> b!1424727 m!1315351))

(assert (=> b!1424727 m!1315351))

(declare-fun m!1315353 () Bool)

(assert (=> b!1424727 m!1315353))

(assert (=> b!1424727 m!1315335))

(declare-fun m!1315355 () Bool)

(assert (=> b!1424727 m!1315355))

(declare-fun m!1315357 () Bool)

(assert (=> start!122880 m!1315357))

(declare-fun m!1315359 () Bool)

(assert (=> start!122880 m!1315359))

(declare-fun m!1315361 () Bool)

(assert (=> b!1424725 m!1315361))

(declare-fun m!1315363 () Bool)

(assert (=> b!1424726 m!1315363))

(assert (=> b!1424713 m!1315325))

(assert (=> b!1424713 m!1315325))

(declare-fun m!1315365 () Bool)

(assert (=> b!1424713 m!1315365))

(check-sat (not b!1424725) (not b!1424713) (not b!1424720) (not b!1424723) (not start!122880) (not b!1424717) (not b!1424719) (not b!1424721) (not b!1424716) (not b!1424722) (not b!1424718) (not b!1424726) (not b!1424727) (not b!1424715))
(check-sat)
