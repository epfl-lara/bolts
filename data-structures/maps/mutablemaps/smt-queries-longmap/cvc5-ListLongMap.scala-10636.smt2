; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124996 () Bool)

(assert start!124996)

(declare-fun b!1452273 () Bool)

(declare-fun res!983517 () Bool)

(declare-fun e!817589 () Bool)

(assert (=> b!1452273 (=> (not res!983517) (not e!817589))))

(declare-datatypes ((array!98361 0))(
  ( (array!98362 (arr!47464 (Array (_ BitVec 32) (_ BitVec 64))) (size!48015 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98361)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452273 (= res!983517 (validKeyInArray!0 (select (arr!47464 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1452274 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!817585 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452274 (= e!817585 (and (or (= (select (arr!47464 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47464 a!2862) intermediateBeforeIndex!19) (select (arr!47464 a!2862) j!93))) (or (and (= (select (arr!47464 a!2862) index!646) (select (store (arr!47464 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47464 a!2862) index!646) (select (arr!47464 a!2862) j!93))) (= (select (arr!47464 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47464 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452275 () Bool)

(declare-fun res!983516 () Bool)

(assert (=> b!1452275 (=> (not res!983516) (not e!817589))))

(declare-datatypes ((List!34145 0))(
  ( (Nil!34142) (Cons!34141 (h!35491 (_ BitVec 64)) (t!48846 List!34145)) )
))
(declare-fun arrayNoDuplicates!0 (array!98361 (_ BitVec 32) List!34145) Bool)

(assert (=> b!1452275 (= res!983516 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34142))))

(declare-fun b!1452276 () Bool)

(declare-fun res!983523 () Bool)

(assert (=> b!1452276 (=> (not res!983523) (not e!817585))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11739 0))(
  ( (MissingZero!11739 (index!49347 (_ BitVec 32))) (Found!11739 (index!49348 (_ BitVec 32))) (Intermediate!11739 (undefined!12551 Bool) (index!49349 (_ BitVec 32)) (x!130999 (_ BitVec 32))) (Undefined!11739) (MissingVacant!11739 (index!49350 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98361 (_ BitVec 32)) SeekEntryResult!11739)

(assert (=> b!1452276 (= res!983523 (= (seekEntryOrOpen!0 (select (arr!47464 a!2862) j!93) a!2862 mask!2687) (Found!11739 j!93)))))

(declare-fun b!1452277 () Bool)

(declare-fun res!983514 () Bool)

(assert (=> b!1452277 (=> (not res!983514) (not e!817589))))

(assert (=> b!1452277 (= res!983514 (validKeyInArray!0 (select (arr!47464 a!2862) i!1006)))))

(declare-fun e!817586 () Bool)

(declare-fun lt!636859 () (_ BitVec 64))

(declare-fun lt!636862 () array!98361)

(declare-fun b!1452278 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98361 (_ BitVec 32)) SeekEntryResult!11739)

(assert (=> b!1452278 (= e!817586 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636859 lt!636862 mask!2687) (seekEntryOrOpen!0 lt!636859 lt!636862 mask!2687)))))

(declare-fun b!1452279 () Bool)

(declare-fun res!983522 () Bool)

(assert (=> b!1452279 (=> (not res!983522) (not e!817589))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452279 (= res!983522 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48015 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48015 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48015 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452280 () Bool)

(declare-fun res!983509 () Bool)

(declare-fun e!817587 () Bool)

(assert (=> b!1452280 (=> (not res!983509) (not e!817587))))

(assert (=> b!1452280 (= res!983509 e!817586)))

(declare-fun c!133895 () Bool)

(assert (=> b!1452280 (= c!133895 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452281 () Bool)

(declare-fun res!983519 () Bool)

(assert (=> b!1452281 (=> (not res!983519) (not e!817587))))

(assert (=> b!1452281 (= res!983519 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452282 () Bool)

(declare-fun e!817588 () Bool)

(assert (=> b!1452282 (= e!817588 e!817587)))

(declare-fun res!983510 () Bool)

(assert (=> b!1452282 (=> (not res!983510) (not e!817587))))

(declare-fun lt!636861 () SeekEntryResult!11739)

(assert (=> b!1452282 (= res!983510 (= lt!636861 (Intermediate!11739 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98361 (_ BitVec 32)) SeekEntryResult!11739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452282 (= lt!636861 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636859 mask!2687) lt!636859 lt!636862 mask!2687))))

(assert (=> b!1452282 (= lt!636859 (select (store (arr!47464 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!983518 () Bool)

(assert (=> start!124996 (=> (not res!983518) (not e!817589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124996 (= res!983518 (validMask!0 mask!2687))))

(assert (=> start!124996 e!817589))

(assert (=> start!124996 true))

(declare-fun array_inv!36409 (array!98361) Bool)

(assert (=> start!124996 (array_inv!36409 a!2862)))

(declare-fun b!1452283 () Bool)

(declare-fun res!983511 () Bool)

(assert (=> b!1452283 (=> (not res!983511) (not e!817588))))

(declare-fun lt!636858 () SeekEntryResult!11739)

(assert (=> b!1452283 (= res!983511 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47464 a!2862) j!93) a!2862 mask!2687) lt!636858))))

(declare-fun b!1452284 () Bool)

(declare-fun e!817583 () Bool)

(assert (=> b!1452284 (= e!817589 e!817583)))

(declare-fun res!983513 () Bool)

(assert (=> b!1452284 (=> (not res!983513) (not e!817583))))

(assert (=> b!1452284 (= res!983513 (= (select (store (arr!47464 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452284 (= lt!636862 (array!98362 (store (arr!47464 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48015 a!2862)))))

(declare-fun b!1452285 () Bool)

(declare-fun res!983520 () Bool)

(assert (=> b!1452285 (=> (not res!983520) (not e!817589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98361 (_ BitVec 32)) Bool)

(assert (=> b!1452285 (= res!983520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452286 () Bool)

(assert (=> b!1452286 (= e!817586 (= lt!636861 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636859 lt!636862 mask!2687)))))

(declare-fun b!1452287 () Bool)

(assert (=> b!1452287 (= e!817587 (not true))))

(assert (=> b!1452287 e!817585))

(declare-fun res!983515 () Bool)

(assert (=> b!1452287 (=> (not res!983515) (not e!817585))))

(assert (=> b!1452287 (= res!983515 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48922 0))(
  ( (Unit!48923) )
))
(declare-fun lt!636860 () Unit!48922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48922)

(assert (=> b!1452287 (= lt!636860 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452288 () Bool)

(declare-fun res!983512 () Bool)

(assert (=> b!1452288 (=> (not res!983512) (not e!817589))))

(assert (=> b!1452288 (= res!983512 (and (= (size!48015 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48015 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48015 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452289 () Bool)

(assert (=> b!1452289 (= e!817583 e!817588)))

(declare-fun res!983521 () Bool)

(assert (=> b!1452289 (=> (not res!983521) (not e!817588))))

(assert (=> b!1452289 (= res!983521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47464 a!2862) j!93) mask!2687) (select (arr!47464 a!2862) j!93) a!2862 mask!2687) lt!636858))))

(assert (=> b!1452289 (= lt!636858 (Intermediate!11739 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124996 res!983518) b!1452288))

(assert (= (and b!1452288 res!983512) b!1452277))

(assert (= (and b!1452277 res!983514) b!1452273))

(assert (= (and b!1452273 res!983517) b!1452285))

(assert (= (and b!1452285 res!983520) b!1452275))

(assert (= (and b!1452275 res!983516) b!1452279))

(assert (= (and b!1452279 res!983522) b!1452284))

(assert (= (and b!1452284 res!983513) b!1452289))

(assert (= (and b!1452289 res!983521) b!1452283))

(assert (= (and b!1452283 res!983511) b!1452282))

(assert (= (and b!1452282 res!983510) b!1452280))

(assert (= (and b!1452280 c!133895) b!1452286))

(assert (= (and b!1452280 (not c!133895)) b!1452278))

(assert (= (and b!1452280 res!983509) b!1452281))

(assert (= (and b!1452281 res!983519) b!1452287))

(assert (= (and b!1452287 res!983515) b!1452276))

(assert (= (and b!1452276 res!983523) b!1452274))

(declare-fun m!1340907 () Bool)

(assert (=> b!1452289 m!1340907))

(assert (=> b!1452289 m!1340907))

(declare-fun m!1340909 () Bool)

(assert (=> b!1452289 m!1340909))

(assert (=> b!1452289 m!1340909))

(assert (=> b!1452289 m!1340907))

(declare-fun m!1340911 () Bool)

(assert (=> b!1452289 m!1340911))

(assert (=> b!1452273 m!1340907))

(assert (=> b!1452273 m!1340907))

(declare-fun m!1340913 () Bool)

(assert (=> b!1452273 m!1340913))

(declare-fun m!1340915 () Bool)

(assert (=> b!1452278 m!1340915))

(declare-fun m!1340917 () Bool)

(assert (=> b!1452278 m!1340917))

(declare-fun m!1340919 () Bool)

(assert (=> b!1452287 m!1340919))

(declare-fun m!1340921 () Bool)

(assert (=> b!1452287 m!1340921))

(declare-fun m!1340923 () Bool)

(assert (=> start!124996 m!1340923))

(declare-fun m!1340925 () Bool)

(assert (=> start!124996 m!1340925))

(assert (=> b!1452283 m!1340907))

(assert (=> b!1452283 m!1340907))

(declare-fun m!1340927 () Bool)

(assert (=> b!1452283 m!1340927))

(declare-fun m!1340929 () Bool)

(assert (=> b!1452285 m!1340929))

(declare-fun m!1340931 () Bool)

(assert (=> b!1452284 m!1340931))

(declare-fun m!1340933 () Bool)

(assert (=> b!1452284 m!1340933))

(declare-fun m!1340935 () Bool)

(assert (=> b!1452286 m!1340935))

(declare-fun m!1340937 () Bool)

(assert (=> b!1452277 m!1340937))

(assert (=> b!1452277 m!1340937))

(declare-fun m!1340939 () Bool)

(assert (=> b!1452277 m!1340939))

(assert (=> b!1452274 m!1340931))

(declare-fun m!1340941 () Bool)

(assert (=> b!1452274 m!1340941))

(declare-fun m!1340943 () Bool)

(assert (=> b!1452274 m!1340943))

(declare-fun m!1340945 () Bool)

(assert (=> b!1452274 m!1340945))

(assert (=> b!1452274 m!1340907))

(declare-fun m!1340947 () Bool)

(assert (=> b!1452275 m!1340947))

(assert (=> b!1452276 m!1340907))

(assert (=> b!1452276 m!1340907))

(declare-fun m!1340949 () Bool)

(assert (=> b!1452276 m!1340949))

(declare-fun m!1340951 () Bool)

(assert (=> b!1452282 m!1340951))

(assert (=> b!1452282 m!1340951))

(declare-fun m!1340953 () Bool)

(assert (=> b!1452282 m!1340953))

(assert (=> b!1452282 m!1340931))

(declare-fun m!1340955 () Bool)

(assert (=> b!1452282 m!1340955))

(push 1)

