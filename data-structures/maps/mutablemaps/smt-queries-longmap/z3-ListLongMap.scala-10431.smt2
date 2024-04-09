; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122790 () Bool)

(assert start!122790)

(declare-fun b!1422553 () Bool)

(declare-fun res!958102 () Bool)

(declare-fun e!804209 () Bool)

(assert (=> b!1422553 (=> res!958102 e!804209)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97073 0))(
  ( (array!97074 (arr!46850 (Array (_ BitVec 32) (_ BitVec 64))) (size!47401 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97073)

(declare-datatypes ((SeekEntryResult!11157 0))(
  ( (MissingZero!11157 (index!47019 (_ BitVec 32))) (Found!11157 (index!47020 (_ BitVec 32))) (Intermediate!11157 (undefined!11969 Bool) (index!47021 (_ BitVec 32)) (x!128666 (_ BitVec 32))) (Undefined!11157) (MissingVacant!11157 (index!47022 (_ BitVec 32))) )
))
(declare-fun lt!626706 () SeekEntryResult!11157)

(declare-fun lt!626702 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97073 (_ BitVec 32)) SeekEntryResult!11157)

(assert (=> b!1422553 (= res!958102 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626702 (select (arr!46850 a!2831) j!81) a!2831 mask!2608) lt!626706)))))

(declare-fun b!1422554 () Bool)

(assert (=> b!1422554 (= e!804209 true)))

(declare-fun lt!626705 () array!97073)

(declare-fun lt!626703 () (_ BitVec 64))

(declare-fun lt!626707 () SeekEntryResult!11157)

(assert (=> b!1422554 (= lt!626707 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626702 lt!626703 lt!626705 mask!2608))))

(declare-fun b!1422555 () Bool)

(declare-fun e!804211 () Bool)

(assert (=> b!1422555 (= e!804211 e!804209)))

(declare-fun res!958096 () Bool)

(assert (=> b!1422555 (=> res!958096 e!804209)))

(assert (=> b!1422555 (= res!958096 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626702 #b00000000000000000000000000000000) (bvsge lt!626702 (size!47401 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422555 (= lt!626702 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun e!804210 () Bool)

(declare-fun b!1422557 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97073 (_ BitVec 32)) SeekEntryResult!11157)

(assert (=> b!1422557 (= e!804210 (= (seekEntryOrOpen!0 (select (arr!46850 a!2831) j!81) a!2831 mask!2608) (Found!11157 j!81)))))

(declare-fun b!1422558 () Bool)

(declare-fun e!804213 () Bool)

(assert (=> b!1422558 (= e!804213 (not e!804211))))

(declare-fun res!958101 () Bool)

(assert (=> b!1422558 (=> res!958101 e!804211)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422558 (= res!958101 (or (= (select (arr!46850 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46850 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46850 a!2831) index!585) (select (arr!46850 a!2831) j!81)) (= (select (store (arr!46850 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422558 e!804210))

(declare-fun res!958109 () Bool)

(assert (=> b!1422558 (=> (not res!958109) (not e!804210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97073 (_ BitVec 32)) Bool)

(assert (=> b!1422558 (= res!958109 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48098 0))(
  ( (Unit!48099) )
))
(declare-fun lt!626701 () Unit!48098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48098)

(assert (=> b!1422558 (= lt!626701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422559 () Bool)

(declare-fun res!958104 () Bool)

(assert (=> b!1422559 (=> (not res!958104) (not e!804213))))

(declare-fun lt!626704 () SeekEntryResult!11157)

(assert (=> b!1422559 (= res!958104 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626703 lt!626705 mask!2608) lt!626704))))

(declare-fun b!1422560 () Bool)

(declare-fun res!958097 () Bool)

(declare-fun e!804212 () Bool)

(assert (=> b!1422560 (=> (not res!958097) (not e!804212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422560 (= res!958097 (validKeyInArray!0 (select (arr!46850 a!2831) i!982)))))

(declare-fun b!1422561 () Bool)

(declare-fun res!958099 () Bool)

(assert (=> b!1422561 (=> (not res!958099) (not e!804212))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1422561 (= res!958099 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47401 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47401 a!2831))))))

(declare-fun b!1422562 () Bool)

(declare-fun e!804215 () Bool)

(assert (=> b!1422562 (= e!804215 e!804213)))

(declare-fun res!958098 () Bool)

(assert (=> b!1422562 (=> (not res!958098) (not e!804213))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422562 (= res!958098 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626703 mask!2608) lt!626703 lt!626705 mask!2608) lt!626704))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422562 (= lt!626704 (Intermediate!11157 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422562 (= lt!626703 (select (store (arr!46850 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422562 (= lt!626705 (array!97074 (store (arr!46850 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47401 a!2831)))))

(declare-fun b!1422563 () Bool)

(declare-fun res!958100 () Bool)

(assert (=> b!1422563 (=> (not res!958100) (not e!804212))))

(assert (=> b!1422563 (= res!958100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422564 () Bool)

(declare-fun res!958110 () Bool)

(assert (=> b!1422564 (=> (not res!958110) (not e!804212))))

(assert (=> b!1422564 (= res!958110 (and (= (size!47401 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47401 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47401 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422565 () Bool)

(declare-fun res!958103 () Bool)

(assert (=> b!1422565 (=> (not res!958103) (not e!804212))))

(declare-datatypes ((List!33540 0))(
  ( (Nil!33537) (Cons!33536 (h!34838 (_ BitVec 64)) (t!48241 List!33540)) )
))
(declare-fun arrayNoDuplicates!0 (array!97073 (_ BitVec 32) List!33540) Bool)

(assert (=> b!1422565 (= res!958103 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33537))))

(declare-fun b!1422566 () Bool)

(declare-fun res!958108 () Bool)

(assert (=> b!1422566 (=> (not res!958108) (not e!804212))))

(assert (=> b!1422566 (= res!958108 (validKeyInArray!0 (select (arr!46850 a!2831) j!81)))))

(declare-fun res!958105 () Bool)

(assert (=> start!122790 (=> (not res!958105) (not e!804212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122790 (= res!958105 (validMask!0 mask!2608))))

(assert (=> start!122790 e!804212))

(assert (=> start!122790 true))

(declare-fun array_inv!35795 (array!97073) Bool)

(assert (=> start!122790 (array_inv!35795 a!2831)))

(declare-fun b!1422556 () Bool)

(declare-fun res!958106 () Bool)

(assert (=> b!1422556 (=> (not res!958106) (not e!804213))))

(assert (=> b!1422556 (= res!958106 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422567 () Bool)

(declare-fun res!958107 () Bool)

(assert (=> b!1422567 (=> (not res!958107) (not e!804213))))

(assert (=> b!1422567 (= res!958107 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46850 a!2831) j!81) a!2831 mask!2608) lt!626706))))

(declare-fun b!1422568 () Bool)

(assert (=> b!1422568 (= e!804212 e!804215)))

(declare-fun res!958095 () Bool)

(assert (=> b!1422568 (=> (not res!958095) (not e!804215))))

(assert (=> b!1422568 (= res!958095 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46850 a!2831) j!81) mask!2608) (select (arr!46850 a!2831) j!81) a!2831 mask!2608) lt!626706))))

(assert (=> b!1422568 (= lt!626706 (Intermediate!11157 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122790 res!958105) b!1422564))

(assert (= (and b!1422564 res!958110) b!1422560))

(assert (= (and b!1422560 res!958097) b!1422566))

(assert (= (and b!1422566 res!958108) b!1422563))

(assert (= (and b!1422563 res!958100) b!1422565))

(assert (= (and b!1422565 res!958103) b!1422561))

(assert (= (and b!1422561 res!958099) b!1422568))

(assert (= (and b!1422568 res!958095) b!1422562))

(assert (= (and b!1422562 res!958098) b!1422567))

(assert (= (and b!1422567 res!958107) b!1422559))

(assert (= (and b!1422559 res!958104) b!1422556))

(assert (= (and b!1422556 res!958106) b!1422558))

(assert (= (and b!1422558 res!958109) b!1422557))

(assert (= (and b!1422558 (not res!958101)) b!1422555))

(assert (= (and b!1422555 (not res!958096)) b!1422553))

(assert (= (and b!1422553 (not res!958102)) b!1422554))

(declare-fun m!1313159 () Bool)

(assert (=> b!1422563 m!1313159))

(declare-fun m!1313161 () Bool)

(assert (=> b!1422553 m!1313161))

(assert (=> b!1422553 m!1313161))

(declare-fun m!1313163 () Bool)

(assert (=> b!1422553 m!1313163))

(declare-fun m!1313165 () Bool)

(assert (=> start!122790 m!1313165))

(declare-fun m!1313167 () Bool)

(assert (=> start!122790 m!1313167))

(declare-fun m!1313169 () Bool)

(assert (=> b!1422560 m!1313169))

(assert (=> b!1422560 m!1313169))

(declare-fun m!1313171 () Bool)

(assert (=> b!1422560 m!1313171))

(assert (=> b!1422568 m!1313161))

(assert (=> b!1422568 m!1313161))

(declare-fun m!1313173 () Bool)

(assert (=> b!1422568 m!1313173))

(assert (=> b!1422568 m!1313173))

(assert (=> b!1422568 m!1313161))

(declare-fun m!1313175 () Bool)

(assert (=> b!1422568 m!1313175))

(declare-fun m!1313177 () Bool)

(assert (=> b!1422559 m!1313177))

(declare-fun m!1313179 () Bool)

(assert (=> b!1422555 m!1313179))

(declare-fun m!1313181 () Bool)

(assert (=> b!1422562 m!1313181))

(assert (=> b!1422562 m!1313181))

(declare-fun m!1313183 () Bool)

(assert (=> b!1422562 m!1313183))

(declare-fun m!1313185 () Bool)

(assert (=> b!1422562 m!1313185))

(declare-fun m!1313187 () Bool)

(assert (=> b!1422562 m!1313187))

(assert (=> b!1422567 m!1313161))

(assert (=> b!1422567 m!1313161))

(declare-fun m!1313189 () Bool)

(assert (=> b!1422567 m!1313189))

(assert (=> b!1422566 m!1313161))

(assert (=> b!1422566 m!1313161))

(declare-fun m!1313191 () Bool)

(assert (=> b!1422566 m!1313191))

(assert (=> b!1422557 m!1313161))

(assert (=> b!1422557 m!1313161))

(declare-fun m!1313193 () Bool)

(assert (=> b!1422557 m!1313193))

(declare-fun m!1313195 () Bool)

(assert (=> b!1422554 m!1313195))

(declare-fun m!1313197 () Bool)

(assert (=> b!1422565 m!1313197))

(assert (=> b!1422558 m!1313185))

(declare-fun m!1313199 () Bool)

(assert (=> b!1422558 m!1313199))

(declare-fun m!1313201 () Bool)

(assert (=> b!1422558 m!1313201))

(declare-fun m!1313203 () Bool)

(assert (=> b!1422558 m!1313203))

(assert (=> b!1422558 m!1313161))

(declare-fun m!1313205 () Bool)

(assert (=> b!1422558 m!1313205))

(check-sat (not b!1422555) (not b!1422554) (not start!122790) (not b!1422558) (not b!1422567) (not b!1422568) (not b!1422553) (not b!1422562) (not b!1422557) (not b!1422565) (not b!1422559) (not b!1422566) (not b!1422563) (not b!1422560))
(check-sat)
