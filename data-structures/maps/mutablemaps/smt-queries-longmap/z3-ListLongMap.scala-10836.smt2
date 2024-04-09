; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126906 () Bool)

(assert start!126906)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12328 0))(
  ( (MissingZero!12328 (index!51703 (_ BitVec 32))) (Found!12328 (index!51704 (_ BitVec 32))) (Intermediate!12328 (undefined!13140 Bool) (index!51705 (_ BitVec 32)) (x!133299 (_ BitVec 32))) (Undefined!12328) (MissingVacant!12328 (index!51706 (_ BitVec 32))) )
))
(declare-fun lt!649772 () SeekEntryResult!12328)

(declare-datatypes ((array!99596 0))(
  ( (array!99597 (arr!48065 (Array (_ BitVec 32) (_ BitVec 64))) (size!48616 (_ BitVec 32))) )
))
(declare-fun lt!649775 () array!99596)

(declare-fun e!835028 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1490038 () Bool)

(declare-fun lt!649773 () (_ BitVec 64))

(declare-fun lt!649771 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99596 (_ BitVec 32)) SeekEntryResult!12328)

(assert (=> b!1490038 (= e!835028 (not (= lt!649772 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649771 lt!649773 lt!649775 mask!2687))))))

(declare-fun b!1490039 () Bool)

(declare-fun res!1013469 () Bool)

(declare-fun e!835026 () Bool)

(assert (=> b!1490039 (=> (not res!1013469) (not e!835026))))

(declare-fun e!835029 () Bool)

(assert (=> b!1490039 (= res!1013469 e!835029)))

(declare-fun c!137815 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490039 (= c!137815 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1013484 () Bool)

(declare-fun e!835031 () Bool)

(assert (=> start!126906 (=> (not res!1013484) (not e!835031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126906 (= res!1013484 (validMask!0 mask!2687))))

(assert (=> start!126906 e!835031))

(assert (=> start!126906 true))

(declare-fun a!2862 () array!99596)

(declare-fun array_inv!37010 (array!99596) Bool)

(assert (=> start!126906 (array_inv!37010 a!2862)))

(declare-fun b!1490040 () Bool)

(declare-fun res!1013468 () Bool)

(assert (=> b!1490040 (=> (not res!1013468) (not e!835031))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490040 (= res!1013468 (validKeyInArray!0 (select (arr!48065 a!2862) j!93)))))

(declare-fun b!1490041 () Bool)

(declare-fun lt!649777 () SeekEntryResult!12328)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99596 (_ BitVec 32)) SeekEntryResult!12328)

(assert (=> b!1490041 (= e!835028 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649771 intermediateAfterIndex!19 lt!649773 lt!649775 mask!2687) lt!649777)))))

(declare-fun b!1490042 () Bool)

(declare-fun res!1013480 () Bool)

(assert (=> b!1490042 (=> (not res!1013480) (not e!835031))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490042 (= res!1013480 (validKeyInArray!0 (select (arr!48065 a!2862) i!1006)))))

(declare-fun b!1490043 () Bool)

(declare-fun res!1013483 () Bool)

(assert (=> b!1490043 (=> (not res!1013483) (not e!835031))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1490043 (= res!1013483 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48616 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48616 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48616 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490044 () Bool)

(assert (=> b!1490044 (= e!835029 (= lt!649772 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649773 lt!649775 mask!2687)))))

(declare-fun b!1490045 () Bool)

(declare-fun e!835027 () Bool)

(declare-fun e!835030 () Bool)

(assert (=> b!1490045 (= e!835027 e!835030)))

(declare-fun res!1013472 () Bool)

(assert (=> b!1490045 (=> res!1013472 e!835030)))

(assert (=> b!1490045 (= res!1013472 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649771 #b00000000000000000000000000000000) (bvsge lt!649771 (size!48616 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490045 (= lt!649771 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1490045 (= lt!649777 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649773 lt!649775 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99596 (_ BitVec 32)) SeekEntryResult!12328)

(assert (=> b!1490045 (= lt!649777 (seekEntryOrOpen!0 lt!649773 lt!649775 mask!2687))))

(declare-fun b!1490046 () Bool)

(declare-fun e!835033 () Bool)

(assert (=> b!1490046 (= e!835031 e!835033)))

(declare-fun res!1013482 () Bool)

(assert (=> b!1490046 (=> (not res!1013482) (not e!835033))))

(assert (=> b!1490046 (= res!1013482 (= (select (store (arr!48065 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490046 (= lt!649775 (array!99597 (store (arr!48065 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48616 a!2862)))))

(declare-fun b!1490047 () Bool)

(assert (=> b!1490047 (= e!835029 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649773 lt!649775 mask!2687) (seekEntryOrOpen!0 lt!649773 lt!649775 mask!2687)))))

(declare-fun b!1490048 () Bool)

(declare-fun res!1013471 () Bool)

(assert (=> b!1490048 (=> res!1013471 e!835030)))

(declare-fun lt!649770 () SeekEntryResult!12328)

(assert (=> b!1490048 (= res!1013471 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649771 (select (arr!48065 a!2862) j!93) a!2862 mask!2687) lt!649770)))))

(declare-fun b!1490049 () Bool)

(declare-fun res!1013481 () Bool)

(assert (=> b!1490049 (=> (not res!1013481) (not e!835026))))

(assert (=> b!1490049 (= res!1013481 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490050 () Bool)

(declare-fun res!1013474 () Bool)

(assert (=> b!1490050 (=> (not res!1013474) (not e!835031))))

(assert (=> b!1490050 (= res!1013474 (and (= (size!48616 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48616 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48616 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490051 () Bool)

(declare-fun res!1013476 () Bool)

(declare-fun e!835034 () Bool)

(assert (=> b!1490051 (=> (not res!1013476) (not e!835034))))

(assert (=> b!1490051 (= res!1013476 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48065 a!2862) j!93) a!2862 mask!2687) lt!649770))))

(declare-fun b!1490052 () Bool)

(declare-fun res!1013475 () Bool)

(assert (=> b!1490052 (=> res!1013475 e!835030)))

(assert (=> b!1490052 (= res!1013475 e!835028)))

(declare-fun c!137816 () Bool)

(assert (=> b!1490052 (= c!137816 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1490053 () Bool)

(declare-fun res!1013467 () Bool)

(assert (=> b!1490053 (=> res!1013467 e!835030)))

(assert (=> b!1490053 (= res!1013467 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1490054 () Bool)

(assert (=> b!1490054 (= e!835030 true)))

(declare-fun lt!649776 () SeekEntryResult!12328)

(assert (=> b!1490054 (= lt!649776 lt!649777)))

(declare-datatypes ((Unit!49944 0))(
  ( (Unit!49945) )
))
(declare-fun lt!649774 () Unit!49944)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49944)

(assert (=> b!1490054 (= lt!649774 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649771 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1490055 () Bool)

(assert (=> b!1490055 (= e!835033 e!835034)))

(declare-fun res!1013470 () Bool)

(assert (=> b!1490055 (=> (not res!1013470) (not e!835034))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490055 (= res!1013470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48065 a!2862) j!93) mask!2687) (select (arr!48065 a!2862) j!93) a!2862 mask!2687) lt!649770))))

(assert (=> b!1490055 (= lt!649770 (Intermediate!12328 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490056 () Bool)

(declare-fun res!1013473 () Bool)

(assert (=> b!1490056 (=> (not res!1013473) (not e!835031))))

(declare-datatypes ((List!34746 0))(
  ( (Nil!34743) (Cons!34742 (h!36125 (_ BitVec 64)) (t!49447 List!34746)) )
))
(declare-fun arrayNoDuplicates!0 (array!99596 (_ BitVec 32) List!34746) Bool)

(assert (=> b!1490056 (= res!1013473 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34743))))

(declare-fun b!1490057 () Bool)

(assert (=> b!1490057 (= e!835034 e!835026)))

(declare-fun res!1013478 () Bool)

(assert (=> b!1490057 (=> (not res!1013478) (not e!835026))))

(assert (=> b!1490057 (= res!1013478 (= lt!649772 (Intermediate!12328 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1490057 (= lt!649772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649773 mask!2687) lt!649773 lt!649775 mask!2687))))

(assert (=> b!1490057 (= lt!649773 (select (store (arr!48065 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490058 () Bool)

(declare-fun res!1013479 () Bool)

(assert (=> b!1490058 (=> (not res!1013479) (not e!835031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99596 (_ BitVec 32)) Bool)

(assert (=> b!1490058 (= res!1013479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490059 () Bool)

(assert (=> b!1490059 (= e!835026 (not e!835027))))

(declare-fun res!1013477 () Bool)

(assert (=> b!1490059 (=> res!1013477 e!835027)))

(assert (=> b!1490059 (= res!1013477 (or (and (= (select (arr!48065 a!2862) index!646) (select (store (arr!48065 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48065 a!2862) index!646) (select (arr!48065 a!2862) j!93))) (= (select (arr!48065 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1490059 (and (= lt!649776 (Found!12328 j!93)) (or (= (select (arr!48065 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48065 a!2862) intermediateBeforeIndex!19) (select (arr!48065 a!2862) j!93))) (let ((bdg!54772 (select (store (arr!48065 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48065 a!2862) index!646) bdg!54772) (= (select (arr!48065 a!2862) index!646) (select (arr!48065 a!2862) j!93))) (= (select (arr!48065 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54772 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1490059 (= lt!649776 (seekEntryOrOpen!0 (select (arr!48065 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1490059 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649769 () Unit!49944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49944)

(assert (=> b!1490059 (= lt!649769 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126906 res!1013484) b!1490050))

(assert (= (and b!1490050 res!1013474) b!1490042))

(assert (= (and b!1490042 res!1013480) b!1490040))

(assert (= (and b!1490040 res!1013468) b!1490058))

(assert (= (and b!1490058 res!1013479) b!1490056))

(assert (= (and b!1490056 res!1013473) b!1490043))

(assert (= (and b!1490043 res!1013483) b!1490046))

(assert (= (and b!1490046 res!1013482) b!1490055))

(assert (= (and b!1490055 res!1013470) b!1490051))

(assert (= (and b!1490051 res!1013476) b!1490057))

(assert (= (and b!1490057 res!1013478) b!1490039))

(assert (= (and b!1490039 c!137815) b!1490044))

(assert (= (and b!1490039 (not c!137815)) b!1490047))

(assert (= (and b!1490039 res!1013469) b!1490049))

(assert (= (and b!1490049 res!1013481) b!1490059))

(assert (= (and b!1490059 (not res!1013477)) b!1490045))

(assert (= (and b!1490045 (not res!1013472)) b!1490048))

(assert (= (and b!1490048 (not res!1013471)) b!1490052))

(assert (= (and b!1490052 c!137816) b!1490038))

(assert (= (and b!1490052 (not c!137816)) b!1490041))

(assert (= (and b!1490052 (not res!1013475)) b!1490053))

(assert (= (and b!1490053 (not res!1013467)) b!1490054))

(declare-fun m!1374267 () Bool)

(assert (=> b!1490048 m!1374267))

(assert (=> b!1490048 m!1374267))

(declare-fun m!1374269 () Bool)

(assert (=> b!1490048 m!1374269))

(declare-fun m!1374271 () Bool)

(assert (=> b!1490047 m!1374271))

(declare-fun m!1374273 () Bool)

(assert (=> b!1490047 m!1374273))

(declare-fun m!1374275 () Bool)

(assert (=> b!1490057 m!1374275))

(assert (=> b!1490057 m!1374275))

(declare-fun m!1374277 () Bool)

(assert (=> b!1490057 m!1374277))

(declare-fun m!1374279 () Bool)

(assert (=> b!1490057 m!1374279))

(declare-fun m!1374281 () Bool)

(assert (=> b!1490057 m!1374281))

(declare-fun m!1374283 () Bool)

(assert (=> b!1490054 m!1374283))

(declare-fun m!1374285 () Bool)

(assert (=> b!1490059 m!1374285))

(assert (=> b!1490059 m!1374279))

(declare-fun m!1374287 () Bool)

(assert (=> b!1490059 m!1374287))

(declare-fun m!1374289 () Bool)

(assert (=> b!1490059 m!1374289))

(declare-fun m!1374291 () Bool)

(assert (=> b!1490059 m!1374291))

(assert (=> b!1490059 m!1374267))

(declare-fun m!1374293 () Bool)

(assert (=> b!1490059 m!1374293))

(declare-fun m!1374295 () Bool)

(assert (=> b!1490059 m!1374295))

(assert (=> b!1490059 m!1374267))

(declare-fun m!1374297 () Bool)

(assert (=> b!1490042 m!1374297))

(assert (=> b!1490042 m!1374297))

(declare-fun m!1374299 () Bool)

(assert (=> b!1490042 m!1374299))

(assert (=> b!1490051 m!1374267))

(assert (=> b!1490051 m!1374267))

(declare-fun m!1374301 () Bool)

(assert (=> b!1490051 m!1374301))

(assert (=> b!1490055 m!1374267))

(assert (=> b!1490055 m!1374267))

(declare-fun m!1374303 () Bool)

(assert (=> b!1490055 m!1374303))

(assert (=> b!1490055 m!1374303))

(assert (=> b!1490055 m!1374267))

(declare-fun m!1374305 () Bool)

(assert (=> b!1490055 m!1374305))

(declare-fun m!1374307 () Bool)

(assert (=> start!126906 m!1374307))

(declare-fun m!1374309 () Bool)

(assert (=> start!126906 m!1374309))

(declare-fun m!1374311 () Bool)

(assert (=> b!1490041 m!1374311))

(declare-fun m!1374313 () Bool)

(assert (=> b!1490045 m!1374313))

(assert (=> b!1490045 m!1374271))

(assert (=> b!1490045 m!1374273))

(declare-fun m!1374315 () Bool)

(assert (=> b!1490038 m!1374315))

(assert (=> b!1490046 m!1374279))

(declare-fun m!1374317 () Bool)

(assert (=> b!1490046 m!1374317))

(assert (=> b!1490040 m!1374267))

(assert (=> b!1490040 m!1374267))

(declare-fun m!1374319 () Bool)

(assert (=> b!1490040 m!1374319))

(declare-fun m!1374321 () Bool)

(assert (=> b!1490058 m!1374321))

(declare-fun m!1374323 () Bool)

(assert (=> b!1490044 m!1374323))

(declare-fun m!1374325 () Bool)

(assert (=> b!1490056 m!1374325))

(check-sat (not b!1490059) (not b!1490038) (not start!126906) (not b!1490057) (not b!1490041) (not b!1490051) (not b!1490058) (not b!1490054) (not b!1490042) (not b!1490047) (not b!1490045) (not b!1490048) (not b!1490055) (not b!1490056) (not b!1490044) (not b!1490040))
