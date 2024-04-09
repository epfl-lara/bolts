; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125328 () Bool)

(assert start!125328)

(declare-fun b!1462825 () Bool)

(declare-fun res!992298 () Bool)

(declare-fun e!822269 () Bool)

(assert (=> b!1462825 (=> (not res!992298) (not e!822269))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98693 0))(
  ( (array!98694 (arr!47630 (Array (_ BitVec 32) (_ BitVec 64))) (size!48181 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98693)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11905 0))(
  ( (MissingZero!11905 (index!50011 (_ BitVec 32))) (Found!11905 (index!50012 (_ BitVec 32))) (Intermediate!11905 (undefined!12717 Bool) (index!50013 (_ BitVec 32)) (x!131605 (_ BitVec 32))) (Undefined!11905) (MissingVacant!11905 (index!50014 (_ BitVec 32))) )
))
(declare-fun lt!640540 () SeekEntryResult!11905)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98693 (_ BitVec 32)) SeekEntryResult!11905)

(assert (=> b!1462825 (= res!992298 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47630 a!2862) j!93) a!2862 mask!2687) lt!640540))))

(declare-fun b!1462826 () Bool)

(declare-fun e!822271 () Bool)

(assert (=> b!1462826 (= e!822271 e!822269)))

(declare-fun res!992293 () Bool)

(assert (=> b!1462826 (=> (not res!992293) (not e!822269))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462826 (= res!992293 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47630 a!2862) j!93) mask!2687) (select (arr!47630 a!2862) j!93) a!2862 mask!2687) lt!640540))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462826 (= lt!640540 (Intermediate!11905 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462827 () Bool)

(declare-fun res!992285 () Bool)

(declare-fun e!822263 () Bool)

(assert (=> b!1462827 (=> res!992285 e!822263)))

(declare-fun lt!640541 () (_ BitVec 32))

(assert (=> b!1462827 (= res!992285 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640541 (select (arr!47630 a!2862) j!93) a!2862 mask!2687) lt!640540)))))

(declare-fun b!1462828 () Bool)

(declare-fun res!992288 () Bool)

(declare-fun e!822270 () Bool)

(assert (=> b!1462828 (=> (not res!992288) (not e!822270))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1462828 (= res!992288 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!640543 () (_ BitVec 64))

(declare-fun lt!640542 () array!98693)

(declare-fun e!822267 () Bool)

(declare-fun b!1462829 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98693 (_ BitVec 32)) SeekEntryResult!11905)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98693 (_ BitVec 32)) SeekEntryResult!11905)

(assert (=> b!1462829 (= e!822267 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640541 intermediateAfterIndex!19 lt!640543 lt!640542 mask!2687) (seekEntryOrOpen!0 lt!640543 lt!640542 mask!2687))))))

(declare-fun lt!640539 () SeekEntryResult!11905)

(declare-fun b!1462830 () Bool)

(assert (=> b!1462830 (= e!822267 (not (= lt!640539 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640541 lt!640543 lt!640542 mask!2687))))))

(declare-fun b!1462831 () Bool)

(declare-fun res!992291 () Bool)

(assert (=> b!1462831 (=> (not res!992291) (not e!822270))))

(declare-fun e!822266 () Bool)

(assert (=> b!1462831 (= res!992291 e!822266)))

(declare-fun c!134786 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462831 (= c!134786 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462832 () Bool)

(assert (=> b!1462832 (= e!822266 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640543 lt!640542 mask!2687) (seekEntryOrOpen!0 lt!640543 lt!640542 mask!2687)))))

(declare-fun b!1462833 () Bool)

(declare-fun res!992289 () Bool)

(declare-fun e!822268 () Bool)

(assert (=> b!1462833 (=> (not res!992289) (not e!822268))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462833 (= res!992289 (validKeyInArray!0 (select (arr!47630 a!2862) j!93)))))

(declare-fun b!1462834 () Bool)

(declare-fun res!992283 () Bool)

(assert (=> b!1462834 (=> (not res!992283) (not e!822268))))

(assert (=> b!1462834 (= res!992283 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48181 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48181 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48181 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462835 () Bool)

(assert (=> b!1462835 (= e!822268 e!822271)))

(declare-fun res!992286 () Bool)

(assert (=> b!1462835 (=> (not res!992286) (not e!822271))))

(assert (=> b!1462835 (= res!992286 (= (select (store (arr!47630 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462835 (= lt!640542 (array!98694 (store (arr!47630 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48181 a!2862)))))

(declare-fun b!1462836 () Bool)

(assert (=> b!1462836 (= e!822269 e!822270)))

(declare-fun res!992295 () Bool)

(assert (=> b!1462836 (=> (not res!992295) (not e!822270))))

(assert (=> b!1462836 (= res!992295 (= lt!640539 (Intermediate!11905 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1462836 (= lt!640539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640543 mask!2687) lt!640543 lt!640542 mask!2687))))

(assert (=> b!1462836 (= lt!640543 (select (store (arr!47630 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462837 () Bool)

(assert (=> b!1462837 (= e!822266 (= lt!640539 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640543 lt!640542 mask!2687)))))

(declare-fun b!1462839 () Bool)

(declare-fun res!992284 () Bool)

(assert (=> b!1462839 (=> (not res!992284) (not e!822268))))

(declare-datatypes ((List!34311 0))(
  ( (Nil!34308) (Cons!34307 (h!35657 (_ BitVec 64)) (t!49012 List!34311)) )
))
(declare-fun arrayNoDuplicates!0 (array!98693 (_ BitVec 32) List!34311) Bool)

(assert (=> b!1462839 (= res!992284 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34308))))

(declare-fun b!1462840 () Bool)

(declare-fun e!822265 () Bool)

(assert (=> b!1462840 (= e!822270 (not e!822265))))

(declare-fun res!992281 () Bool)

(assert (=> b!1462840 (=> res!992281 e!822265)))

(assert (=> b!1462840 (= res!992281 (or (and (= (select (arr!47630 a!2862) index!646) (select (store (arr!47630 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47630 a!2862) index!646) (select (arr!47630 a!2862) j!93))) (= (select (arr!47630 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822264 () Bool)

(assert (=> b!1462840 e!822264))

(declare-fun res!992292 () Bool)

(assert (=> b!1462840 (=> (not res!992292) (not e!822264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98693 (_ BitVec 32)) Bool)

(assert (=> b!1462840 (= res!992292 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49254 0))(
  ( (Unit!49255) )
))
(declare-fun lt!640537 () Unit!49254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49254)

(assert (=> b!1462840 (= lt!640537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462841 () Bool)

(assert (=> b!1462841 (= e!822265 e!822263)))

(declare-fun res!992282 () Bool)

(assert (=> b!1462841 (=> res!992282 e!822263)))

(assert (=> b!1462841 (= res!992282 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640541 #b00000000000000000000000000000000) (bvsge lt!640541 (size!48181 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462841 (= lt!640541 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462842 () Bool)

(declare-fun res!992294 () Bool)

(assert (=> b!1462842 (=> (not res!992294) (not e!822268))))

(assert (=> b!1462842 (= res!992294 (and (= (size!48181 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48181 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48181 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462843 () Bool)

(assert (=> b!1462843 (= e!822264 (or (= (select (arr!47630 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47630 a!2862) intermediateBeforeIndex!19) (select (arr!47630 a!2862) j!93))))))

(declare-fun b!1462844 () Bool)

(declare-fun res!992296 () Bool)

(assert (=> b!1462844 (=> (not res!992296) (not e!822268))))

(assert (=> b!1462844 (= res!992296 (validKeyInArray!0 (select (arr!47630 a!2862) i!1006)))))

(declare-fun b!1462845 () Bool)

(assert (=> b!1462845 (= e!822263 true)))

(declare-fun lt!640538 () Bool)

(assert (=> b!1462845 (= lt!640538 e!822267)))

(declare-fun c!134785 () Bool)

(assert (=> b!1462845 (= c!134785 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462846 () Bool)

(declare-fun res!992290 () Bool)

(assert (=> b!1462846 (=> (not res!992290) (not e!822268))))

(assert (=> b!1462846 (= res!992290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462838 () Bool)

(declare-fun res!992297 () Bool)

(assert (=> b!1462838 (=> (not res!992297) (not e!822264))))

(assert (=> b!1462838 (= res!992297 (= (seekEntryOrOpen!0 (select (arr!47630 a!2862) j!93) a!2862 mask!2687) (Found!11905 j!93)))))

(declare-fun res!992287 () Bool)

(assert (=> start!125328 (=> (not res!992287) (not e!822268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125328 (= res!992287 (validMask!0 mask!2687))))

(assert (=> start!125328 e!822268))

(assert (=> start!125328 true))

(declare-fun array_inv!36575 (array!98693) Bool)

(assert (=> start!125328 (array_inv!36575 a!2862)))

(assert (= (and start!125328 res!992287) b!1462842))

(assert (= (and b!1462842 res!992294) b!1462844))

(assert (= (and b!1462844 res!992296) b!1462833))

(assert (= (and b!1462833 res!992289) b!1462846))

(assert (= (and b!1462846 res!992290) b!1462839))

(assert (= (and b!1462839 res!992284) b!1462834))

(assert (= (and b!1462834 res!992283) b!1462835))

(assert (= (and b!1462835 res!992286) b!1462826))

(assert (= (and b!1462826 res!992293) b!1462825))

(assert (= (and b!1462825 res!992298) b!1462836))

(assert (= (and b!1462836 res!992295) b!1462831))

(assert (= (and b!1462831 c!134786) b!1462837))

(assert (= (and b!1462831 (not c!134786)) b!1462832))

(assert (= (and b!1462831 res!992291) b!1462828))

(assert (= (and b!1462828 res!992288) b!1462840))

(assert (= (and b!1462840 res!992292) b!1462838))

(assert (= (and b!1462838 res!992297) b!1462843))

(assert (= (and b!1462840 (not res!992281)) b!1462841))

(assert (= (and b!1462841 (not res!992282)) b!1462827))

(assert (= (and b!1462827 (not res!992285)) b!1462845))

(assert (= (and b!1462845 c!134785) b!1462830))

(assert (= (and b!1462845 (not c!134785)) b!1462829))

(declare-fun m!1350283 () Bool)

(assert (=> b!1462829 m!1350283))

(declare-fun m!1350285 () Bool)

(assert (=> b!1462829 m!1350285))

(declare-fun m!1350287 () Bool)

(assert (=> b!1462838 m!1350287))

(assert (=> b!1462838 m!1350287))

(declare-fun m!1350289 () Bool)

(assert (=> b!1462838 m!1350289))

(assert (=> b!1462825 m!1350287))

(assert (=> b!1462825 m!1350287))

(declare-fun m!1350291 () Bool)

(assert (=> b!1462825 m!1350291))

(declare-fun m!1350293 () Bool)

(assert (=> b!1462839 m!1350293))

(declare-fun m!1350295 () Bool)

(assert (=> b!1462837 m!1350295))

(assert (=> b!1462833 m!1350287))

(assert (=> b!1462833 m!1350287))

(declare-fun m!1350297 () Bool)

(assert (=> b!1462833 m!1350297))

(declare-fun m!1350299 () Bool)

(assert (=> b!1462844 m!1350299))

(assert (=> b!1462844 m!1350299))

(declare-fun m!1350301 () Bool)

(assert (=> b!1462844 m!1350301))

(declare-fun m!1350303 () Bool)

(assert (=> b!1462835 m!1350303))

(declare-fun m!1350305 () Bool)

(assert (=> b!1462835 m!1350305))

(declare-fun m!1350307 () Bool)

(assert (=> start!125328 m!1350307))

(declare-fun m!1350309 () Bool)

(assert (=> start!125328 m!1350309))

(declare-fun m!1350311 () Bool)

(assert (=> b!1462846 m!1350311))

(assert (=> b!1462827 m!1350287))

(assert (=> b!1462827 m!1350287))

(declare-fun m!1350313 () Bool)

(assert (=> b!1462827 m!1350313))

(assert (=> b!1462826 m!1350287))

(assert (=> b!1462826 m!1350287))

(declare-fun m!1350315 () Bool)

(assert (=> b!1462826 m!1350315))

(assert (=> b!1462826 m!1350315))

(assert (=> b!1462826 m!1350287))

(declare-fun m!1350317 () Bool)

(assert (=> b!1462826 m!1350317))

(declare-fun m!1350319 () Bool)

(assert (=> b!1462836 m!1350319))

(assert (=> b!1462836 m!1350319))

(declare-fun m!1350321 () Bool)

(assert (=> b!1462836 m!1350321))

(assert (=> b!1462836 m!1350303))

(declare-fun m!1350323 () Bool)

(assert (=> b!1462836 m!1350323))

(declare-fun m!1350325 () Bool)

(assert (=> b!1462841 m!1350325))

(declare-fun m!1350327 () Bool)

(assert (=> b!1462830 m!1350327))

(declare-fun m!1350329 () Bool)

(assert (=> b!1462843 m!1350329))

(assert (=> b!1462843 m!1350287))

(declare-fun m!1350331 () Bool)

(assert (=> b!1462840 m!1350331))

(assert (=> b!1462840 m!1350303))

(declare-fun m!1350333 () Bool)

(assert (=> b!1462840 m!1350333))

(declare-fun m!1350335 () Bool)

(assert (=> b!1462840 m!1350335))

(declare-fun m!1350337 () Bool)

(assert (=> b!1462840 m!1350337))

(assert (=> b!1462840 m!1350287))

(declare-fun m!1350339 () Bool)

(assert (=> b!1462832 m!1350339))

(assert (=> b!1462832 m!1350285))

(check-sat (not b!1462839) (not b!1462836) (not b!1462825) (not b!1462833) (not b!1462832) (not b!1462840) (not b!1462837) (not b!1462841) (not start!125328) (not b!1462829) (not b!1462826) (not b!1462846) (not b!1462844) (not b!1462838) (not b!1462827) (not b!1462830))
(check-sat)
