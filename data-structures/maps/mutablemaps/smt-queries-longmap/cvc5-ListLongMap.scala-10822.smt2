; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126688 () Bool)

(assert start!126688)

(declare-fun b!1486355 () Bool)

(declare-fun e!833259 () Bool)

(assert (=> b!1486355 (= e!833259 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648410 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486355 (= lt!648410 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486356 () Bool)

(declare-fun res!1010814 () Bool)

(declare-fun e!833257 () Bool)

(assert (=> b!1486356 (=> (not res!1010814) (not e!833257))))

(declare-datatypes ((array!99504 0))(
  ( (array!99505 (arr!48022 (Array (_ BitVec 32) (_ BitVec 64))) (size!48573 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99504)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486356 (= res!1010814 (validKeyInArray!0 (select (arr!48022 a!2862) i!1006)))))

(declare-fun b!1486357 () Bool)

(declare-fun res!1010821 () Bool)

(assert (=> b!1486357 (=> (not res!1010821) (not e!833257))))

(declare-datatypes ((List!34703 0))(
  ( (Nil!34700) (Cons!34699 (h!36076 (_ BitVec 64)) (t!49404 List!34703)) )
))
(declare-fun arrayNoDuplicates!0 (array!99504 (_ BitVec 32) List!34703) Bool)

(assert (=> b!1486357 (= res!1010821 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34700))))

(declare-fun res!1010830 () Bool)

(assert (=> start!126688 (=> (not res!1010830) (not e!833257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126688 (= res!1010830 (validMask!0 mask!2687))))

(assert (=> start!126688 e!833257))

(assert (=> start!126688 true))

(declare-fun array_inv!36967 (array!99504) Bool)

(assert (=> start!126688 (array_inv!36967 a!2862)))

(declare-fun b!1486358 () Bool)

(declare-fun res!1010826 () Bool)

(assert (=> b!1486358 (=> (not res!1010826) (not e!833257))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1486358 (= res!1010826 (validKeyInArray!0 (select (arr!48022 a!2862) j!93)))))

(declare-fun b!1486359 () Bool)

(declare-fun e!833255 () Bool)

(assert (=> b!1486359 (= e!833255 (not e!833259))))

(declare-fun res!1010818 () Bool)

(assert (=> b!1486359 (=> res!1010818 e!833259)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1486359 (= res!1010818 (or (and (= (select (arr!48022 a!2862) index!646) (select (store (arr!48022 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48022 a!2862) index!646) (select (arr!48022 a!2862) j!93))) (= (select (arr!48022 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!833258 () Bool)

(assert (=> b!1486359 e!833258))

(declare-fun res!1010822 () Bool)

(assert (=> b!1486359 (=> (not res!1010822) (not e!833258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99504 (_ BitVec 32)) Bool)

(assert (=> b!1486359 (= res!1010822 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49858 0))(
  ( (Unit!49859) )
))
(declare-fun lt!648411 () Unit!49858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49858)

(assert (=> b!1486359 (= lt!648411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486360 () Bool)

(declare-fun res!1010820 () Bool)

(assert (=> b!1486360 (=> (not res!1010820) (not e!833255))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486360 (= res!1010820 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486361 () Bool)

(declare-fun res!1010816 () Bool)

(declare-fun e!833260 () Bool)

(assert (=> b!1486361 (=> (not res!1010816) (not e!833260))))

(declare-datatypes ((SeekEntryResult!12285 0))(
  ( (MissingZero!12285 (index!51531 (_ BitVec 32))) (Found!12285 (index!51532 (_ BitVec 32))) (Intermediate!12285 (undefined!13097 Bool) (index!51533 (_ BitVec 32)) (x!133120 (_ BitVec 32))) (Undefined!12285) (MissingVacant!12285 (index!51534 (_ BitVec 32))) )
))
(declare-fun lt!648407 () SeekEntryResult!12285)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99504 (_ BitVec 32)) SeekEntryResult!12285)

(assert (=> b!1486361 (= res!1010816 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48022 a!2862) j!93) a!2862 mask!2687) lt!648407))))

(declare-fun e!833264 () Bool)

(declare-fun lt!648406 () (_ BitVec 64))

(declare-fun b!1486362 () Bool)

(declare-fun lt!648408 () SeekEntryResult!12285)

(declare-fun lt!648409 () array!99504)

(assert (=> b!1486362 (= e!833264 (= lt!648408 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648406 lt!648409 mask!2687)))))

(declare-fun b!1486363 () Bool)

(declare-fun res!1010823 () Bool)

(assert (=> b!1486363 (=> (not res!1010823) (not e!833258))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99504 (_ BitVec 32)) SeekEntryResult!12285)

(assert (=> b!1486363 (= res!1010823 (= (seekEntryOrOpen!0 (select (arr!48022 a!2862) j!93) a!2862 mask!2687) (Found!12285 j!93)))))

(declare-fun b!1486364 () Bool)

(declare-fun e!833263 () Bool)

(declare-fun e!833261 () Bool)

(assert (=> b!1486364 (= e!833263 e!833261)))

(declare-fun res!1010824 () Bool)

(assert (=> b!1486364 (=> (not res!1010824) (not e!833261))))

(declare-fun lt!648412 () (_ BitVec 64))

(assert (=> b!1486364 (= res!1010824 (and (= index!646 intermediateAfterIndex!19) (= lt!648412 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486365 () Bool)

(declare-fun res!1010825 () Bool)

(assert (=> b!1486365 (=> (not res!1010825) (not e!833255))))

(assert (=> b!1486365 (= res!1010825 e!833264)))

(declare-fun c!137297 () Bool)

(assert (=> b!1486365 (= c!137297 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486366 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99504 (_ BitVec 32)) SeekEntryResult!12285)

(assert (=> b!1486366 (= e!833264 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648406 lt!648409 mask!2687) (seekEntryOrOpen!0 lt!648406 lt!648409 mask!2687)))))

(declare-fun b!1486367 () Bool)

(assert (=> b!1486367 (= e!833260 e!833255)))

(declare-fun res!1010819 () Bool)

(assert (=> b!1486367 (=> (not res!1010819) (not e!833255))))

(assert (=> b!1486367 (= res!1010819 (= lt!648408 (Intermediate!12285 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486367 (= lt!648408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648406 mask!2687) lt!648406 lt!648409 mask!2687))))

(assert (=> b!1486367 (= lt!648406 (select (store (arr!48022 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486368 () Bool)

(declare-fun e!833256 () Bool)

(assert (=> b!1486368 (= e!833256 e!833260)))

(declare-fun res!1010815 () Bool)

(assert (=> b!1486368 (=> (not res!1010815) (not e!833260))))

(assert (=> b!1486368 (= res!1010815 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48022 a!2862) j!93) mask!2687) (select (arr!48022 a!2862) j!93) a!2862 mask!2687) lt!648407))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1486368 (= lt!648407 (Intermediate!12285 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486369 () Bool)

(declare-fun res!1010831 () Bool)

(assert (=> b!1486369 (=> (not res!1010831) (not e!833257))))

(assert (=> b!1486369 (= res!1010831 (and (= (size!48573 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48573 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48573 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486370 () Bool)

(declare-fun res!1010828 () Bool)

(assert (=> b!1486370 (=> (not res!1010828) (not e!833258))))

(assert (=> b!1486370 (= res!1010828 (or (= (select (arr!48022 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48022 a!2862) intermediateBeforeIndex!19) (select (arr!48022 a!2862) j!93))))))

(declare-fun b!1486371 () Bool)

(declare-fun res!1010827 () Bool)

(assert (=> b!1486371 (=> (not res!1010827) (not e!833257))))

(assert (=> b!1486371 (= res!1010827 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48573 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48573 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48573 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486372 () Bool)

(assert (=> b!1486372 (= e!833257 e!833256)))

(declare-fun res!1010832 () Bool)

(assert (=> b!1486372 (=> (not res!1010832) (not e!833256))))

(assert (=> b!1486372 (= res!1010832 (= (select (store (arr!48022 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486372 (= lt!648409 (array!99505 (store (arr!48022 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48573 a!2862)))))

(declare-fun b!1486373 () Bool)

(assert (=> b!1486373 (= e!833258 e!833263)))

(declare-fun res!1010817 () Bool)

(assert (=> b!1486373 (=> res!1010817 e!833263)))

(assert (=> b!1486373 (= res!1010817 (or (and (= (select (arr!48022 a!2862) index!646) lt!648412) (= (select (arr!48022 a!2862) index!646) (select (arr!48022 a!2862) j!93))) (= (select (arr!48022 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486373 (= lt!648412 (select (store (arr!48022 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486374 () Bool)

(declare-fun res!1010829 () Bool)

(assert (=> b!1486374 (=> (not res!1010829) (not e!833257))))

(assert (=> b!1486374 (= res!1010829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486375 () Bool)

(assert (=> b!1486375 (= e!833261 (= (seekEntryOrOpen!0 lt!648406 lt!648409 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648406 lt!648409 mask!2687)))))

(assert (= (and start!126688 res!1010830) b!1486369))

(assert (= (and b!1486369 res!1010831) b!1486356))

(assert (= (and b!1486356 res!1010814) b!1486358))

(assert (= (and b!1486358 res!1010826) b!1486374))

(assert (= (and b!1486374 res!1010829) b!1486357))

(assert (= (and b!1486357 res!1010821) b!1486371))

(assert (= (and b!1486371 res!1010827) b!1486372))

(assert (= (and b!1486372 res!1010832) b!1486368))

(assert (= (and b!1486368 res!1010815) b!1486361))

(assert (= (and b!1486361 res!1010816) b!1486367))

(assert (= (and b!1486367 res!1010819) b!1486365))

(assert (= (and b!1486365 c!137297) b!1486362))

(assert (= (and b!1486365 (not c!137297)) b!1486366))

(assert (= (and b!1486365 res!1010825) b!1486360))

(assert (= (and b!1486360 res!1010820) b!1486359))

(assert (= (and b!1486359 res!1010822) b!1486363))

(assert (= (and b!1486363 res!1010823) b!1486370))

(assert (= (and b!1486370 res!1010828) b!1486373))

(assert (= (and b!1486373 (not res!1010817)) b!1486364))

(assert (= (and b!1486364 res!1010824) b!1486375))

(assert (= (and b!1486359 (not res!1010818)) b!1486355))

(declare-fun m!1371291 () Bool)

(assert (=> b!1486372 m!1371291))

(declare-fun m!1371293 () Bool)

(assert (=> b!1486372 m!1371293))

(declare-fun m!1371295 () Bool)

(assert (=> b!1486374 m!1371295))

(declare-fun m!1371297 () Bool)

(assert (=> b!1486373 m!1371297))

(declare-fun m!1371299 () Bool)

(assert (=> b!1486373 m!1371299))

(assert (=> b!1486373 m!1371291))

(declare-fun m!1371301 () Bool)

(assert (=> b!1486373 m!1371301))

(assert (=> b!1486361 m!1371299))

(assert (=> b!1486361 m!1371299))

(declare-fun m!1371303 () Bool)

(assert (=> b!1486361 m!1371303))

(declare-fun m!1371305 () Bool)

(assert (=> b!1486355 m!1371305))

(declare-fun m!1371307 () Bool)

(assert (=> b!1486367 m!1371307))

(assert (=> b!1486367 m!1371307))

(declare-fun m!1371309 () Bool)

(assert (=> b!1486367 m!1371309))

(assert (=> b!1486367 m!1371291))

(declare-fun m!1371311 () Bool)

(assert (=> b!1486367 m!1371311))

(declare-fun m!1371313 () Bool)

(assert (=> b!1486366 m!1371313))

(declare-fun m!1371315 () Bool)

(assert (=> b!1486366 m!1371315))

(declare-fun m!1371317 () Bool)

(assert (=> b!1486370 m!1371317))

(assert (=> b!1486370 m!1371299))

(declare-fun m!1371319 () Bool)

(assert (=> b!1486356 m!1371319))

(assert (=> b!1486356 m!1371319))

(declare-fun m!1371321 () Bool)

(assert (=> b!1486356 m!1371321))

(declare-fun m!1371323 () Bool)

(assert (=> b!1486362 m!1371323))

(declare-fun m!1371325 () Bool)

(assert (=> b!1486357 m!1371325))

(assert (=> b!1486358 m!1371299))

(assert (=> b!1486358 m!1371299))

(declare-fun m!1371327 () Bool)

(assert (=> b!1486358 m!1371327))

(assert (=> b!1486375 m!1371315))

(assert (=> b!1486375 m!1371313))

(declare-fun m!1371329 () Bool)

(assert (=> b!1486359 m!1371329))

(assert (=> b!1486359 m!1371291))

(assert (=> b!1486359 m!1371301))

(assert (=> b!1486359 m!1371297))

(declare-fun m!1371331 () Bool)

(assert (=> b!1486359 m!1371331))

(assert (=> b!1486359 m!1371299))

(declare-fun m!1371333 () Bool)

(assert (=> start!126688 m!1371333))

(declare-fun m!1371335 () Bool)

(assert (=> start!126688 m!1371335))

(assert (=> b!1486363 m!1371299))

(assert (=> b!1486363 m!1371299))

(declare-fun m!1371337 () Bool)

(assert (=> b!1486363 m!1371337))

(assert (=> b!1486368 m!1371299))

(assert (=> b!1486368 m!1371299))

(declare-fun m!1371339 () Bool)

(assert (=> b!1486368 m!1371339))

(assert (=> b!1486368 m!1371339))

(assert (=> b!1486368 m!1371299))

(declare-fun m!1371341 () Bool)

(assert (=> b!1486368 m!1371341))

(push 1)

