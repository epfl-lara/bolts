; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124932 () Bool)

(assert start!124932)

(declare-fun b!1450557 () Bool)

(declare-fun res!981986 () Bool)

(declare-fun e!816831 () Bool)

(assert (=> b!1450557 (=> (not res!981986) (not e!816831))))

(declare-datatypes ((array!98297 0))(
  ( (array!98298 (arr!47432 (Array (_ BitVec 32) (_ BitVec 64))) (size!47983 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98297)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98297 (_ BitVec 32)) Bool)

(assert (=> b!1450557 (= res!981986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!636318 () array!98297)

(declare-fun lt!636316 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1450558 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11707 0))(
  ( (MissingZero!11707 (index!49219 (_ BitVec 32))) (Found!11707 (index!49220 (_ BitVec 32))) (Intermediate!11707 (undefined!12519 Bool) (index!49221 (_ BitVec 32)) (x!130879 (_ BitVec 32))) (Undefined!11707) (MissingVacant!11707 (index!49222 (_ BitVec 32))) )
))
(declare-fun lt!636314 () SeekEntryResult!11707)

(declare-fun e!816829 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98297 (_ BitVec 32)) SeekEntryResult!11707)

(assert (=> b!1450558 (= e!816829 (= lt!636314 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636316 lt!636318 mask!2687)))))

(declare-fun b!1450559 () Bool)

(declare-fun e!816836 () Bool)

(declare-fun e!816833 () Bool)

(assert (=> b!1450559 (= e!816836 e!816833)))

(declare-fun res!981996 () Bool)

(assert (=> b!1450559 (=> (not res!981996) (not e!816833))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450559 (= res!981996 (= lt!636314 (Intermediate!11707 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450559 (= lt!636314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636316 mask!2687) lt!636316 lt!636318 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450559 (= lt!636316 (select (store (arr!47432 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450561 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98297 (_ BitVec 32)) SeekEntryResult!11707)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98297 (_ BitVec 32)) SeekEntryResult!11707)

(assert (=> b!1450561 (= e!816829 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636316 lt!636318 mask!2687) (seekEntryOrOpen!0 lt!636316 lt!636318 mask!2687)))))

(declare-fun b!1450562 () Bool)

(declare-fun res!982001 () Bool)

(assert (=> b!1450562 (=> (not res!982001) (not e!816831))))

(assert (=> b!1450562 (= res!982001 (and (= (size!47983 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47983 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47983 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450563 () Bool)

(declare-fun res!981985 () Bool)

(assert (=> b!1450563 (=> (not res!981985) (not e!816833))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450563 (= res!981985 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450564 () Bool)

(declare-fun res!981992 () Bool)

(declare-fun e!816830 () Bool)

(assert (=> b!1450564 (=> res!981992 e!816830)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!636317 () SeekEntryResult!11707)

(assert (=> b!1450564 (= res!981992 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47432 a!2862) j!93) a!2862 mask!2687) lt!636317)))))

(declare-fun b!1450565 () Bool)

(declare-fun e!816835 () Bool)

(assert (=> b!1450565 (= e!816835 e!816836)))

(declare-fun res!981999 () Bool)

(assert (=> b!1450565 (=> (not res!981999) (not e!816836))))

(declare-fun lt!636315 () SeekEntryResult!11707)

(assert (=> b!1450565 (= res!981999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47432 a!2862) j!93) mask!2687) (select (arr!47432 a!2862) j!93) a!2862 mask!2687) lt!636315))))

(assert (=> b!1450565 (= lt!636315 (Intermediate!11707 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450560 () Bool)

(assert (=> b!1450560 (= e!816830 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1450560 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636316 lt!636318 mask!2687) lt!636317)))

(declare-datatypes ((Unit!48858 0))(
  ( (Unit!48859) )
))
(declare-fun lt!636312 () Unit!48858)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48858)

(assert (=> b!1450560 (= lt!636312 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!981994 () Bool)

(assert (=> start!124932 (=> (not res!981994) (not e!816831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124932 (= res!981994 (validMask!0 mask!2687))))

(assert (=> start!124932 e!816831))

(assert (=> start!124932 true))

(declare-fun array_inv!36377 (array!98297) Bool)

(assert (=> start!124932 (array_inv!36377 a!2862)))

(declare-fun b!1450566 () Bool)

(declare-fun e!816832 () Bool)

(declare-fun e!816827 () Bool)

(assert (=> b!1450566 (= e!816832 e!816827)))

(declare-fun res!981989 () Bool)

(assert (=> b!1450566 (=> res!981989 e!816827)))

(assert (=> b!1450566 (= res!981989 (or (and (= (select (arr!47432 a!2862) index!646) (select (store (arr!47432 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47432 a!2862) index!646) (select (arr!47432 a!2862) j!93))) (not (= (select (arr!47432 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450567 () Bool)

(declare-fun e!816828 () Bool)

(assert (=> b!1450567 (= e!816827 e!816828)))

(declare-fun res!981991 () Bool)

(assert (=> b!1450567 (=> (not res!981991) (not e!816828))))

(declare-fun lt!636313 () SeekEntryResult!11707)

(assert (=> b!1450567 (= res!981991 (= lt!636313 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47432 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450568 () Bool)

(assert (=> b!1450568 (= e!816831 e!816835)))

(declare-fun res!981998 () Bool)

(assert (=> b!1450568 (=> (not res!981998) (not e!816835))))

(assert (=> b!1450568 (= res!981998 (= (select (store (arr!47432 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450568 (= lt!636318 (array!98298 (store (arr!47432 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47983 a!2862)))))

(declare-fun b!1450569 () Bool)

(declare-fun res!982000 () Bool)

(assert (=> b!1450569 (=> (not res!982000) (not e!816831))))

(declare-datatypes ((List!34113 0))(
  ( (Nil!34110) (Cons!34109 (h!35459 (_ BitVec 64)) (t!48814 List!34113)) )
))
(declare-fun arrayNoDuplicates!0 (array!98297 (_ BitVec 32) List!34113) Bool)

(assert (=> b!1450569 (= res!982000 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34110))))

(declare-fun b!1450570 () Bool)

(declare-fun res!981993 () Bool)

(assert (=> b!1450570 (=> (not res!981993) (not e!816836))))

(assert (=> b!1450570 (= res!981993 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47432 a!2862) j!93) a!2862 mask!2687) lt!636315))))

(declare-fun b!1450571 () Bool)

(declare-fun res!981997 () Bool)

(assert (=> b!1450571 (=> (not res!981997) (not e!816833))))

(assert (=> b!1450571 (= res!981997 e!816829)))

(declare-fun c!133799 () Bool)

(assert (=> b!1450571 (= c!133799 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450572 () Bool)

(declare-fun res!981990 () Bool)

(assert (=> b!1450572 (=> (not res!981990) (not e!816831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450572 (= res!981990 (validKeyInArray!0 (select (arr!47432 a!2862) j!93)))))

(declare-fun b!1450573 () Bool)

(declare-fun res!981987 () Bool)

(assert (=> b!1450573 (=> (not res!981987) (not e!816831))))

(assert (=> b!1450573 (= res!981987 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47983 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47983 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47983 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450574 () Bool)

(assert (=> b!1450574 (= e!816833 (not e!816830))))

(declare-fun res!981995 () Bool)

(assert (=> b!1450574 (=> res!981995 e!816830)))

(assert (=> b!1450574 (= res!981995 (or (and (= (select (arr!47432 a!2862) index!646) (select (store (arr!47432 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47432 a!2862) index!646) (select (arr!47432 a!2862) j!93))) (not (= (select (arr!47432 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47432 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450574 e!816832))

(declare-fun res!982002 () Bool)

(assert (=> b!1450574 (=> (not res!982002) (not e!816832))))

(assert (=> b!1450574 (= res!982002 (and (= lt!636313 lt!636317) (or (= (select (arr!47432 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47432 a!2862) intermediateBeforeIndex!19) (select (arr!47432 a!2862) j!93)))))))

(assert (=> b!1450574 (= lt!636317 (Found!11707 j!93))))

(assert (=> b!1450574 (= lt!636313 (seekEntryOrOpen!0 (select (arr!47432 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450574 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636319 () Unit!48858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48858)

(assert (=> b!1450574 (= lt!636319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450575 () Bool)

(assert (=> b!1450575 (= e!816828 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450576 () Bool)

(declare-fun res!981988 () Bool)

(assert (=> b!1450576 (=> (not res!981988) (not e!816831))))

(assert (=> b!1450576 (= res!981988 (validKeyInArray!0 (select (arr!47432 a!2862) i!1006)))))

(assert (= (and start!124932 res!981994) b!1450562))

(assert (= (and b!1450562 res!982001) b!1450576))

(assert (= (and b!1450576 res!981988) b!1450572))

(assert (= (and b!1450572 res!981990) b!1450557))

(assert (= (and b!1450557 res!981986) b!1450569))

(assert (= (and b!1450569 res!982000) b!1450573))

(assert (= (and b!1450573 res!981987) b!1450568))

(assert (= (and b!1450568 res!981998) b!1450565))

(assert (= (and b!1450565 res!981999) b!1450570))

(assert (= (and b!1450570 res!981993) b!1450559))

(assert (= (and b!1450559 res!981996) b!1450571))

(assert (= (and b!1450571 c!133799) b!1450558))

(assert (= (and b!1450571 (not c!133799)) b!1450561))

(assert (= (and b!1450571 res!981997) b!1450563))

(assert (= (and b!1450563 res!981985) b!1450574))

(assert (= (and b!1450574 res!982002) b!1450566))

(assert (= (and b!1450566 (not res!981989)) b!1450567))

(assert (= (and b!1450567 res!981991) b!1450575))

(assert (= (and b!1450574 (not res!981995)) b!1450564))

(assert (= (and b!1450564 (not res!981992)) b!1450560))

(declare-fun m!1339247 () Bool)

(assert (=> b!1450561 m!1339247))

(declare-fun m!1339249 () Bool)

(assert (=> b!1450561 m!1339249))

(declare-fun m!1339251 () Bool)

(assert (=> b!1450565 m!1339251))

(assert (=> b!1450565 m!1339251))

(declare-fun m!1339253 () Bool)

(assert (=> b!1450565 m!1339253))

(assert (=> b!1450565 m!1339253))

(assert (=> b!1450565 m!1339251))

(declare-fun m!1339255 () Bool)

(assert (=> b!1450565 m!1339255))

(declare-fun m!1339257 () Bool)

(assert (=> start!124932 m!1339257))

(declare-fun m!1339259 () Bool)

(assert (=> start!124932 m!1339259))

(declare-fun m!1339261 () Bool)

(assert (=> b!1450557 m!1339261))

(declare-fun m!1339263 () Bool)

(assert (=> b!1450569 m!1339263))

(assert (=> b!1450564 m!1339251))

(assert (=> b!1450564 m!1339251))

(declare-fun m!1339265 () Bool)

(assert (=> b!1450564 m!1339265))

(assert (=> b!1450572 m!1339251))

(assert (=> b!1450572 m!1339251))

(declare-fun m!1339267 () Bool)

(assert (=> b!1450572 m!1339267))

(declare-fun m!1339269 () Bool)

(assert (=> b!1450576 m!1339269))

(assert (=> b!1450576 m!1339269))

(declare-fun m!1339271 () Bool)

(assert (=> b!1450576 m!1339271))

(declare-fun m!1339273 () Bool)

(assert (=> b!1450568 m!1339273))

(declare-fun m!1339275 () Bool)

(assert (=> b!1450568 m!1339275))

(declare-fun m!1339277 () Bool)

(assert (=> b!1450574 m!1339277))

(assert (=> b!1450574 m!1339273))

(declare-fun m!1339279 () Bool)

(assert (=> b!1450574 m!1339279))

(declare-fun m!1339281 () Bool)

(assert (=> b!1450574 m!1339281))

(declare-fun m!1339283 () Bool)

(assert (=> b!1450574 m!1339283))

(assert (=> b!1450574 m!1339251))

(declare-fun m!1339285 () Bool)

(assert (=> b!1450574 m!1339285))

(declare-fun m!1339287 () Bool)

(assert (=> b!1450574 m!1339287))

(assert (=> b!1450574 m!1339251))

(assert (=> b!1450560 m!1339247))

(declare-fun m!1339289 () Bool)

(assert (=> b!1450560 m!1339289))

(assert (=> b!1450566 m!1339283))

(assert (=> b!1450566 m!1339273))

(assert (=> b!1450566 m!1339281))

(assert (=> b!1450566 m!1339251))

(declare-fun m!1339291 () Bool)

(assert (=> b!1450558 m!1339291))

(assert (=> b!1450570 m!1339251))

(assert (=> b!1450570 m!1339251))

(declare-fun m!1339293 () Bool)

(assert (=> b!1450570 m!1339293))

(declare-fun m!1339295 () Bool)

(assert (=> b!1450559 m!1339295))

(assert (=> b!1450559 m!1339295))

(declare-fun m!1339297 () Bool)

(assert (=> b!1450559 m!1339297))

(assert (=> b!1450559 m!1339273))

(declare-fun m!1339299 () Bool)

(assert (=> b!1450559 m!1339299))

(assert (=> b!1450567 m!1339251))

(assert (=> b!1450567 m!1339251))

(declare-fun m!1339301 () Bool)

(assert (=> b!1450567 m!1339301))

(check-sat (not b!1450564) (not b!1450567) (not b!1450574) (not start!124932) (not b!1450565) (not b!1450572) (not b!1450570) (not b!1450569) (not b!1450559) (not b!1450561) (not b!1450558) (not b!1450560) (not b!1450576) (not b!1450557))
(check-sat)
