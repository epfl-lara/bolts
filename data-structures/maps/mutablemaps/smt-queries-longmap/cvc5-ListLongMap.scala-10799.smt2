; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126424 () Bool)

(assert start!126424)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!830915 () Bool)

(declare-fun b!1481481 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!646755 () (_ BitVec 64))

(declare-datatypes ((array!99360 0))(
  ( (array!99361 (arr!47953 (Array (_ BitVec 32) (_ BitVec 64))) (size!48504 (_ BitVec 32))) )
))
(declare-fun lt!646754 () array!99360)

(declare-datatypes ((SeekEntryResult!12216 0))(
  ( (MissingZero!12216 (index!51255 (_ BitVec 32))) (Found!12216 (index!51256 (_ BitVec 32))) (Intermediate!12216 (undefined!13028 Bool) (index!51257 (_ BitVec 32)) (x!132846 (_ BitVec 32))) (Undefined!12216) (MissingVacant!12216 (index!51258 (_ BitVec 32))) )
))
(declare-fun lt!646753 () SeekEntryResult!12216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99360 (_ BitVec 32)) SeekEntryResult!12216)

(assert (=> b!1481481 (= e!830915 (= lt!646753 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646755 lt!646754 mask!2687)))))

(declare-fun b!1481482 () Bool)

(declare-fun res!1006906 () Bool)

(declare-fun e!830912 () Bool)

(assert (=> b!1481482 (=> (not res!1006906) (not e!830912))))

(assert (=> b!1481482 (= res!1006906 e!830915)))

(declare-fun c!136814 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481482 (= c!136814 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481483 () Bool)

(declare-fun res!1006913 () Bool)

(declare-fun e!830914 () Bool)

(assert (=> b!1481483 (=> (not res!1006913) (not e!830914))))

(declare-fun a!2862 () array!99360)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481483 (= res!1006913 (validKeyInArray!0 (select (arr!47953 a!2862) i!1006)))))

(declare-fun b!1481484 () Bool)

(declare-fun res!1006907 () Bool)

(assert (=> b!1481484 (=> (not res!1006907) (not e!830912))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481484 (= res!1006907 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481485 () Bool)

(declare-fun res!1006909 () Bool)

(assert (=> b!1481485 (=> (not res!1006909) (not e!830914))))

(declare-datatypes ((List!34634 0))(
  ( (Nil!34631) (Cons!34630 (h!36001 (_ BitVec 64)) (t!49335 List!34634)) )
))
(declare-fun arrayNoDuplicates!0 (array!99360 (_ BitVec 32) List!34634) Bool)

(assert (=> b!1481485 (= res!1006909 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34631))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1481486 () Bool)

(declare-fun e!830913 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1481486 (= e!830913 (and (or (= (select (arr!47953 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47953 a!2862) intermediateBeforeIndex!19) (select (arr!47953 a!2862) j!93))) (or (and (= (select (arr!47953 a!2862) index!646) (select (store (arr!47953 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47953 a!2862) index!646) (select (arr!47953 a!2862) j!93))) (= (select (arr!47953 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47953 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481487 () Bool)

(declare-fun res!1006911 () Bool)

(assert (=> b!1481487 (=> (not res!1006911) (not e!830913))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99360 (_ BitVec 32)) SeekEntryResult!12216)

(assert (=> b!1481487 (= res!1006911 (= (seekEntryOrOpen!0 (select (arr!47953 a!2862) j!93) a!2862 mask!2687) (Found!12216 j!93)))))

(declare-fun b!1481488 () Bool)

(declare-fun e!830909 () Bool)

(declare-fun e!830911 () Bool)

(assert (=> b!1481488 (= e!830909 e!830911)))

(declare-fun res!1006903 () Bool)

(assert (=> b!1481488 (=> (not res!1006903) (not e!830911))))

(declare-fun lt!646756 () SeekEntryResult!12216)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481488 (= res!1006903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47953 a!2862) j!93) mask!2687) (select (arr!47953 a!2862) j!93) a!2862 mask!2687) lt!646756))))

(assert (=> b!1481488 (= lt!646756 (Intermediate!12216 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481489 () Bool)

(assert (=> b!1481489 (= e!830912 (not true))))

(assert (=> b!1481489 e!830913))

(declare-fun res!1006908 () Bool)

(assert (=> b!1481489 (=> (not res!1006908) (not e!830913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99360 (_ BitVec 32)) Bool)

(assert (=> b!1481489 (= res!1006908 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49720 0))(
  ( (Unit!49721) )
))
(declare-fun lt!646752 () Unit!49720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99360 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49720)

(assert (=> b!1481489 (= lt!646752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481490 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99360 (_ BitVec 32)) SeekEntryResult!12216)

(assert (=> b!1481490 (= e!830915 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646755 lt!646754 mask!2687) (seekEntryOrOpen!0 lt!646755 lt!646754 mask!2687)))))

(declare-fun res!1006904 () Bool)

(assert (=> start!126424 (=> (not res!1006904) (not e!830914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126424 (= res!1006904 (validMask!0 mask!2687))))

(assert (=> start!126424 e!830914))

(assert (=> start!126424 true))

(declare-fun array_inv!36898 (array!99360) Bool)

(assert (=> start!126424 (array_inv!36898 a!2862)))

(declare-fun b!1481491 () Bool)

(declare-fun res!1006905 () Bool)

(assert (=> b!1481491 (=> (not res!1006905) (not e!830914))))

(assert (=> b!1481491 (= res!1006905 (validKeyInArray!0 (select (arr!47953 a!2862) j!93)))))

(declare-fun b!1481492 () Bool)

(assert (=> b!1481492 (= e!830911 e!830912)))

(declare-fun res!1006914 () Bool)

(assert (=> b!1481492 (=> (not res!1006914) (not e!830912))))

(assert (=> b!1481492 (= res!1006914 (= lt!646753 (Intermediate!12216 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1481492 (= lt!646753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646755 mask!2687) lt!646755 lt!646754 mask!2687))))

(assert (=> b!1481492 (= lt!646755 (select (store (arr!47953 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481493 () Bool)

(assert (=> b!1481493 (= e!830914 e!830909)))

(declare-fun res!1006912 () Bool)

(assert (=> b!1481493 (=> (not res!1006912) (not e!830909))))

(assert (=> b!1481493 (= res!1006912 (= (select (store (arr!47953 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481493 (= lt!646754 (array!99361 (store (arr!47953 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48504 a!2862)))))

(declare-fun b!1481494 () Bool)

(declare-fun res!1006901 () Bool)

(assert (=> b!1481494 (=> (not res!1006901) (not e!830911))))

(assert (=> b!1481494 (= res!1006901 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47953 a!2862) j!93) a!2862 mask!2687) lt!646756))))

(declare-fun b!1481495 () Bool)

(declare-fun res!1006902 () Bool)

(assert (=> b!1481495 (=> (not res!1006902) (not e!830914))))

(assert (=> b!1481495 (= res!1006902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481496 () Bool)

(declare-fun res!1006910 () Bool)

(assert (=> b!1481496 (=> (not res!1006910) (not e!830914))))

(assert (=> b!1481496 (= res!1006910 (and (= (size!48504 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48504 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48504 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481497 () Bool)

(declare-fun res!1006900 () Bool)

(assert (=> b!1481497 (=> (not res!1006900) (not e!830914))))

(assert (=> b!1481497 (= res!1006900 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48504 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48504 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48504 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126424 res!1006904) b!1481496))

(assert (= (and b!1481496 res!1006910) b!1481483))

(assert (= (and b!1481483 res!1006913) b!1481491))

(assert (= (and b!1481491 res!1006905) b!1481495))

(assert (= (and b!1481495 res!1006902) b!1481485))

(assert (= (and b!1481485 res!1006909) b!1481497))

(assert (= (and b!1481497 res!1006900) b!1481493))

(assert (= (and b!1481493 res!1006912) b!1481488))

(assert (= (and b!1481488 res!1006903) b!1481494))

(assert (= (and b!1481494 res!1006901) b!1481492))

(assert (= (and b!1481492 res!1006914) b!1481482))

(assert (= (and b!1481482 c!136814) b!1481481))

(assert (= (and b!1481482 (not c!136814)) b!1481490))

(assert (= (and b!1481482 res!1006906) b!1481484))

(assert (= (and b!1481484 res!1006907) b!1481489))

(assert (= (and b!1481489 res!1006908) b!1481487))

(assert (= (and b!1481487 res!1006911) b!1481486))

(declare-fun m!1367277 () Bool)

(assert (=> b!1481493 m!1367277))

(declare-fun m!1367279 () Bool)

(assert (=> b!1481493 m!1367279))

(declare-fun m!1367281 () Bool)

(assert (=> b!1481492 m!1367281))

(assert (=> b!1481492 m!1367281))

(declare-fun m!1367283 () Bool)

(assert (=> b!1481492 m!1367283))

(assert (=> b!1481492 m!1367277))

(declare-fun m!1367285 () Bool)

(assert (=> b!1481492 m!1367285))

(declare-fun m!1367287 () Bool)

(assert (=> b!1481495 m!1367287))

(declare-fun m!1367289 () Bool)

(assert (=> b!1481491 m!1367289))

(assert (=> b!1481491 m!1367289))

(declare-fun m!1367291 () Bool)

(assert (=> b!1481491 m!1367291))

(declare-fun m!1367293 () Bool)

(assert (=> b!1481490 m!1367293))

(declare-fun m!1367295 () Bool)

(assert (=> b!1481490 m!1367295))

(assert (=> b!1481487 m!1367289))

(assert (=> b!1481487 m!1367289))

(declare-fun m!1367297 () Bool)

(assert (=> b!1481487 m!1367297))

(declare-fun m!1367299 () Bool)

(assert (=> b!1481489 m!1367299))

(declare-fun m!1367301 () Bool)

(assert (=> b!1481489 m!1367301))

(declare-fun m!1367303 () Bool)

(assert (=> b!1481485 m!1367303))

(assert (=> b!1481494 m!1367289))

(assert (=> b!1481494 m!1367289))

(declare-fun m!1367305 () Bool)

(assert (=> b!1481494 m!1367305))

(declare-fun m!1367307 () Bool)

(assert (=> start!126424 m!1367307))

(declare-fun m!1367309 () Bool)

(assert (=> start!126424 m!1367309))

(declare-fun m!1367311 () Bool)

(assert (=> b!1481483 m!1367311))

(assert (=> b!1481483 m!1367311))

(declare-fun m!1367313 () Bool)

(assert (=> b!1481483 m!1367313))

(declare-fun m!1367315 () Bool)

(assert (=> b!1481481 m!1367315))

(assert (=> b!1481488 m!1367289))

(assert (=> b!1481488 m!1367289))

(declare-fun m!1367317 () Bool)

(assert (=> b!1481488 m!1367317))

(assert (=> b!1481488 m!1367317))

(assert (=> b!1481488 m!1367289))

(declare-fun m!1367319 () Bool)

(assert (=> b!1481488 m!1367319))

(assert (=> b!1481486 m!1367277))

(declare-fun m!1367321 () Bool)

(assert (=> b!1481486 m!1367321))

(declare-fun m!1367323 () Bool)

(assert (=> b!1481486 m!1367323))

(declare-fun m!1367325 () Bool)

(assert (=> b!1481486 m!1367325))

(assert (=> b!1481486 m!1367289))

(push 1)

