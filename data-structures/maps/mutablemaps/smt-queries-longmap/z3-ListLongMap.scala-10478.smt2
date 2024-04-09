; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123288 () Bool)

(assert start!123288)

(declare-fun b!1429012 () Bool)

(declare-fun res!963751 () Bool)

(declare-fun e!806993 () Bool)

(assert (=> b!1429012 (=> (not res!963751) (not e!806993))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((array!97367 0))(
  ( (array!97368 (arr!46991 (Array (_ BitVec 32) (_ BitVec 64))) (size!47542 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97367)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11292 0))(
  ( (MissingZero!11292 (index!47559 (_ BitVec 32))) (Found!11292 (index!47560 (_ BitVec 32))) (Intermediate!11292 (undefined!12104 Bool) (index!47561 (_ BitVec 32)) (x!129201 (_ BitVec 32))) (Undefined!11292) (MissingVacant!11292 (index!47562 (_ BitVec 32))) )
))
(declare-fun lt!629174 () SeekEntryResult!11292)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97367 (_ BitVec 32)) SeekEntryResult!11292)

(assert (=> b!1429012 (= res!963751 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46991 a!2831) j!81) a!2831 mask!2608) lt!629174))))

(declare-fun b!1429013 () Bool)

(declare-fun res!963762 () Bool)

(declare-fun e!806991 () Bool)

(assert (=> b!1429013 (=> (not res!963762) (not e!806991))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1429013 (= res!963762 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47542 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47542 a!2831))))))

(declare-fun b!1429014 () Bool)

(assert (=> b!1429014 (= e!806993 (not true))))

(declare-fun e!806992 () Bool)

(assert (=> b!1429014 e!806992))

(declare-fun res!963758 () Bool)

(assert (=> b!1429014 (=> (not res!963758) (not e!806992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97367 (_ BitVec 32)) Bool)

(assert (=> b!1429014 (= res!963758 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48278 0))(
  ( (Unit!48279) )
))
(declare-fun lt!629176 () Unit!48278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97367 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48278)

(assert (=> b!1429014 (= lt!629176 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429015 () Bool)

(declare-fun res!963750 () Bool)

(assert (=> b!1429015 (=> (not res!963750) (not e!806993))))

(declare-fun lt!629175 () SeekEntryResult!11292)

(declare-fun lt!629173 () array!97367)

(declare-fun lt!629172 () (_ BitVec 64))

(assert (=> b!1429015 (= res!963750 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629172 lt!629173 mask!2608) lt!629175))))

(declare-fun b!1429016 () Bool)

(declare-fun res!963757 () Bool)

(assert (=> b!1429016 (=> (not res!963757) (not e!806991))))

(assert (=> b!1429016 (= res!963757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429017 () Bool)

(declare-fun res!963753 () Bool)

(assert (=> b!1429017 (=> (not res!963753) (not e!806991))))

(declare-datatypes ((List!33681 0))(
  ( (Nil!33678) (Cons!33677 (h!34991 (_ BitVec 64)) (t!48382 List!33681)) )
))
(declare-fun arrayNoDuplicates!0 (array!97367 (_ BitVec 32) List!33681) Bool)

(assert (=> b!1429017 (= res!963753 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33678))))

(declare-fun b!1429018 () Bool)

(declare-fun res!963755 () Bool)

(assert (=> b!1429018 (=> (not res!963755) (not e!806991))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429018 (= res!963755 (validKeyInArray!0 (select (arr!46991 a!2831) i!982)))))

(declare-fun b!1429019 () Bool)

(declare-fun res!963754 () Bool)

(assert (=> b!1429019 (=> (not res!963754) (not e!806991))))

(assert (=> b!1429019 (= res!963754 (and (= (size!47542 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47542 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47542 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429020 () Bool)

(declare-fun res!963760 () Bool)

(assert (=> b!1429020 (=> (not res!963760) (not e!806991))))

(assert (=> b!1429020 (= res!963760 (validKeyInArray!0 (select (arr!46991 a!2831) j!81)))))

(declare-fun res!963756 () Bool)

(assert (=> start!123288 (=> (not res!963756) (not e!806991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123288 (= res!963756 (validMask!0 mask!2608))))

(assert (=> start!123288 e!806991))

(assert (=> start!123288 true))

(declare-fun array_inv!35936 (array!97367) Bool)

(assert (=> start!123288 (array_inv!35936 a!2831)))

(declare-fun b!1429021 () Bool)

(declare-fun e!806990 () Bool)

(assert (=> b!1429021 (= e!806990 e!806993)))

(declare-fun res!963752 () Bool)

(assert (=> b!1429021 (=> (not res!963752) (not e!806993))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429021 (= res!963752 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629172 mask!2608) lt!629172 lt!629173 mask!2608) lt!629175))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429021 (= lt!629175 (Intermediate!11292 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429021 (= lt!629172 (select (store (arr!46991 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429021 (= lt!629173 (array!97368 (store (arr!46991 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47542 a!2831)))))

(declare-fun b!1429022 () Bool)

(assert (=> b!1429022 (= e!806991 e!806990)))

(declare-fun res!963759 () Bool)

(assert (=> b!1429022 (=> (not res!963759) (not e!806990))))

(assert (=> b!1429022 (= res!963759 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46991 a!2831) j!81) mask!2608) (select (arr!46991 a!2831) j!81) a!2831 mask!2608) lt!629174))))

(assert (=> b!1429022 (= lt!629174 (Intermediate!11292 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429023 () Bool)

(declare-fun res!963761 () Bool)

(assert (=> b!1429023 (=> (not res!963761) (not e!806993))))

(assert (=> b!1429023 (= res!963761 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429024 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97367 (_ BitVec 32)) SeekEntryResult!11292)

(assert (=> b!1429024 (= e!806992 (= (seekEntryOrOpen!0 (select (arr!46991 a!2831) j!81) a!2831 mask!2608) (Found!11292 j!81)))))

(assert (= (and start!123288 res!963756) b!1429019))

(assert (= (and b!1429019 res!963754) b!1429018))

(assert (= (and b!1429018 res!963755) b!1429020))

(assert (= (and b!1429020 res!963760) b!1429016))

(assert (= (and b!1429016 res!963757) b!1429017))

(assert (= (and b!1429017 res!963753) b!1429013))

(assert (= (and b!1429013 res!963762) b!1429022))

(assert (= (and b!1429022 res!963759) b!1429021))

(assert (= (and b!1429021 res!963752) b!1429012))

(assert (= (and b!1429012 res!963751) b!1429015))

(assert (= (and b!1429015 res!963750) b!1429023))

(assert (= (and b!1429023 res!963761) b!1429014))

(assert (= (and b!1429014 res!963758) b!1429024))

(declare-fun m!1319179 () Bool)

(assert (=> b!1429015 m!1319179))

(declare-fun m!1319181 () Bool)

(assert (=> b!1429018 m!1319181))

(assert (=> b!1429018 m!1319181))

(declare-fun m!1319183 () Bool)

(assert (=> b!1429018 m!1319183))

(declare-fun m!1319185 () Bool)

(assert (=> b!1429024 m!1319185))

(assert (=> b!1429024 m!1319185))

(declare-fun m!1319187 () Bool)

(assert (=> b!1429024 m!1319187))

(declare-fun m!1319189 () Bool)

(assert (=> b!1429014 m!1319189))

(declare-fun m!1319191 () Bool)

(assert (=> b!1429014 m!1319191))

(assert (=> b!1429022 m!1319185))

(assert (=> b!1429022 m!1319185))

(declare-fun m!1319193 () Bool)

(assert (=> b!1429022 m!1319193))

(assert (=> b!1429022 m!1319193))

(assert (=> b!1429022 m!1319185))

(declare-fun m!1319195 () Bool)

(assert (=> b!1429022 m!1319195))

(declare-fun m!1319197 () Bool)

(assert (=> b!1429016 m!1319197))

(assert (=> b!1429020 m!1319185))

(assert (=> b!1429020 m!1319185))

(declare-fun m!1319199 () Bool)

(assert (=> b!1429020 m!1319199))

(declare-fun m!1319201 () Bool)

(assert (=> b!1429021 m!1319201))

(assert (=> b!1429021 m!1319201))

(declare-fun m!1319203 () Bool)

(assert (=> b!1429021 m!1319203))

(declare-fun m!1319205 () Bool)

(assert (=> b!1429021 m!1319205))

(declare-fun m!1319207 () Bool)

(assert (=> b!1429021 m!1319207))

(declare-fun m!1319209 () Bool)

(assert (=> start!123288 m!1319209))

(declare-fun m!1319211 () Bool)

(assert (=> start!123288 m!1319211))

(assert (=> b!1429012 m!1319185))

(assert (=> b!1429012 m!1319185))

(declare-fun m!1319213 () Bool)

(assert (=> b!1429012 m!1319213))

(declare-fun m!1319215 () Bool)

(assert (=> b!1429017 m!1319215))

(check-sat (not b!1429024) (not b!1429018) (not b!1429016) (not b!1429020) (not b!1429021) (not b!1429022) (not b!1429015) (not b!1429012) (not start!123288) (not b!1429014) (not b!1429017))
(check-sat)
