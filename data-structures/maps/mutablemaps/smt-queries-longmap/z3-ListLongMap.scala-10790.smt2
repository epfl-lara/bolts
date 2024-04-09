; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126282 () Bool)

(assert start!126282)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!829855 () Bool)

(declare-datatypes ((array!99305 0))(
  ( (array!99306 (arr!47927 (Array (_ BitVec 32) (_ BitVec 64))) (size!48478 (_ BitVec 32))) )
))
(declare-fun lt!645978 () array!99305)

(declare-datatypes ((SeekEntryResult!12190 0))(
  ( (MissingZero!12190 (index!51151 (_ BitVec 32))) (Found!12190 (index!51152 (_ BitVec 32))) (Intermediate!12190 (undefined!13002 Bool) (index!51153 (_ BitVec 32)) (x!132736 (_ BitVec 32))) (Undefined!12190) (MissingVacant!12190 (index!51154 (_ BitVec 32))) )
))
(declare-fun lt!645980 () SeekEntryResult!12190)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1479393 () Bool)

(declare-fun lt!645985 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99305 (_ BitVec 32)) SeekEntryResult!12190)

(assert (=> b!1479393 (= e!829855 (= lt!645980 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645985 lt!645978 mask!2687)))))

(declare-fun b!1479394 () Bool)

(declare-fun res!1005404 () Bool)

(declare-fun e!829850 () Bool)

(assert (=> b!1479394 (=> (not res!1005404) (not e!829850))))

(declare-fun a!2862 () array!99305)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!645983 () SeekEntryResult!12190)

(assert (=> b!1479394 (= res!1005404 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47927 a!2862) j!93) a!2862 mask!2687) lt!645983))))

(declare-fun b!1479395 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99305 (_ BitVec 32)) SeekEntryResult!12190)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99305 (_ BitVec 32)) SeekEntryResult!12190)

(assert (=> b!1479395 (= e!829855 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645985 lt!645978 mask!2687) (seekEntryOrOpen!0 lt!645985 lt!645978 mask!2687)))))

(declare-fun b!1479396 () Bool)

(declare-fun res!1005412 () Bool)

(declare-fun e!829854 () Bool)

(assert (=> b!1479396 (=> res!1005412 e!829854)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!645981 () SeekEntryResult!12190)

(assert (=> b!1479396 (= res!1005412 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47927 a!2862) j!93) a!2862 mask!2687) lt!645981)))))

(declare-fun b!1479397 () Bool)

(declare-fun e!829853 () Bool)

(assert (=> b!1479397 (= e!829850 e!829853)))

(declare-fun res!1005413 () Bool)

(assert (=> b!1479397 (=> (not res!1005413) (not e!829853))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479397 (= res!1005413 (= lt!645980 (Intermediate!12190 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479397 (= lt!645980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645985 mask!2687) lt!645985 lt!645978 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1479397 (= lt!645985 (select (store (arr!47927 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479398 () Bool)

(declare-fun e!829858 () Bool)

(declare-fun e!829852 () Bool)

(assert (=> b!1479398 (= e!829858 e!829852)))

(declare-fun res!1005403 () Bool)

(assert (=> b!1479398 (=> (not res!1005403) (not e!829852))))

(declare-fun lt!645984 () SeekEntryResult!12190)

(assert (=> b!1479398 (= res!1005403 (= lt!645984 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47927 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479399 () Bool)

(declare-fun e!829857 () Bool)

(assert (=> b!1479399 (= e!829857 e!829858)))

(declare-fun res!1005414 () Bool)

(assert (=> b!1479399 (=> res!1005414 e!829858)))

(assert (=> b!1479399 (= res!1005414 (or (and (= (select (arr!47927 a!2862) index!646) (select (store (arr!47927 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47927 a!2862) index!646) (select (arr!47927 a!2862) j!93))) (not (= (select (arr!47927 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479400 () Bool)

(declare-fun res!1005411 () Bool)

(assert (=> b!1479400 (=> (not res!1005411) (not e!829853))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479400 (= res!1005411 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1005408 () Bool)

(declare-fun e!829856 () Bool)

(assert (=> start!126282 (=> (not res!1005408) (not e!829856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126282 (= res!1005408 (validMask!0 mask!2687))))

(assert (=> start!126282 e!829856))

(assert (=> start!126282 true))

(declare-fun array_inv!36872 (array!99305) Bool)

(assert (=> start!126282 (array_inv!36872 a!2862)))

(declare-fun b!1479401 () Bool)

(assert (=> b!1479401 (= e!829854 true)))

(assert (=> b!1479401 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645985 lt!645978 mask!2687) lt!645981)))

(declare-datatypes ((Unit!49668 0))(
  ( (Unit!49669) )
))
(declare-fun lt!645982 () Unit!49668)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49668)

(assert (=> b!1479401 (= lt!645982 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479402 () Bool)

(assert (=> b!1479402 (= e!829853 (not e!829854))))

(declare-fun res!1005406 () Bool)

(assert (=> b!1479402 (=> res!1005406 e!829854)))

(assert (=> b!1479402 (= res!1005406 (or (and (= (select (arr!47927 a!2862) index!646) (select (store (arr!47927 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47927 a!2862) index!646) (select (arr!47927 a!2862) j!93))) (not (= (select (arr!47927 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47927 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1479402 e!829857))

(declare-fun res!1005418 () Bool)

(assert (=> b!1479402 (=> (not res!1005418) (not e!829857))))

(assert (=> b!1479402 (= res!1005418 (and (= lt!645984 lt!645981) (or (= (select (arr!47927 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47927 a!2862) intermediateBeforeIndex!19) (select (arr!47927 a!2862) j!93)))))))

(assert (=> b!1479402 (= lt!645981 (Found!12190 j!93))))

(assert (=> b!1479402 (= lt!645984 (seekEntryOrOpen!0 (select (arr!47927 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99305 (_ BitVec 32)) Bool)

(assert (=> b!1479402 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!645979 () Unit!49668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49668)

(assert (=> b!1479402 (= lt!645979 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479403 () Bool)

(declare-fun res!1005405 () Bool)

(assert (=> b!1479403 (=> (not res!1005405) (not e!829856))))

(declare-datatypes ((List!34608 0))(
  ( (Nil!34605) (Cons!34604 (h!35972 (_ BitVec 64)) (t!49309 List!34608)) )
))
(declare-fun arrayNoDuplicates!0 (array!99305 (_ BitVec 32) List!34608) Bool)

(assert (=> b!1479403 (= res!1005405 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34605))))

(declare-fun b!1479404 () Bool)

(declare-fun res!1005410 () Bool)

(assert (=> b!1479404 (=> (not res!1005410) (not e!829856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479404 (= res!1005410 (validKeyInArray!0 (select (arr!47927 a!2862) j!93)))))

(declare-fun b!1479405 () Bool)

(declare-fun res!1005409 () Bool)

(assert (=> b!1479405 (=> (not res!1005409) (not e!829853))))

(assert (=> b!1479405 (= res!1005409 e!829855)))

(declare-fun c!136517 () Bool)

(assert (=> b!1479405 (= c!136517 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479406 () Bool)

(declare-fun e!829851 () Bool)

(assert (=> b!1479406 (= e!829851 e!829850)))

(declare-fun res!1005416 () Bool)

(assert (=> b!1479406 (=> (not res!1005416) (not e!829850))))

(assert (=> b!1479406 (= res!1005416 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47927 a!2862) j!93) mask!2687) (select (arr!47927 a!2862) j!93) a!2862 mask!2687) lt!645983))))

(assert (=> b!1479406 (= lt!645983 (Intermediate!12190 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479407 () Bool)

(declare-fun res!1005420 () Bool)

(assert (=> b!1479407 (=> (not res!1005420) (not e!829856))))

(assert (=> b!1479407 (= res!1005420 (and (= (size!48478 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48478 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48478 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479408 () Bool)

(assert (=> b!1479408 (= e!829856 e!829851)))

(declare-fun res!1005419 () Bool)

(assert (=> b!1479408 (=> (not res!1005419) (not e!829851))))

(assert (=> b!1479408 (= res!1005419 (= (select (store (arr!47927 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479408 (= lt!645978 (array!99306 (store (arr!47927 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48478 a!2862)))))

(declare-fun b!1479409 () Bool)

(declare-fun res!1005415 () Bool)

(assert (=> b!1479409 (=> (not res!1005415) (not e!829856))))

(assert (=> b!1479409 (= res!1005415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479410 () Bool)

(declare-fun res!1005417 () Bool)

(assert (=> b!1479410 (=> (not res!1005417) (not e!829856))))

(assert (=> b!1479410 (= res!1005417 (validKeyInArray!0 (select (arr!47927 a!2862) i!1006)))))

(declare-fun b!1479411 () Bool)

(assert (=> b!1479411 (= e!829852 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479412 () Bool)

(declare-fun res!1005407 () Bool)

(assert (=> b!1479412 (=> (not res!1005407) (not e!829856))))

(assert (=> b!1479412 (= res!1005407 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48478 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48478 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48478 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126282 res!1005408) b!1479407))

(assert (= (and b!1479407 res!1005420) b!1479410))

(assert (= (and b!1479410 res!1005417) b!1479404))

(assert (= (and b!1479404 res!1005410) b!1479409))

(assert (= (and b!1479409 res!1005415) b!1479403))

(assert (= (and b!1479403 res!1005405) b!1479412))

(assert (= (and b!1479412 res!1005407) b!1479408))

(assert (= (and b!1479408 res!1005419) b!1479406))

(assert (= (and b!1479406 res!1005416) b!1479394))

(assert (= (and b!1479394 res!1005404) b!1479397))

(assert (= (and b!1479397 res!1005413) b!1479405))

(assert (= (and b!1479405 c!136517) b!1479393))

(assert (= (and b!1479405 (not c!136517)) b!1479395))

(assert (= (and b!1479405 res!1005409) b!1479400))

(assert (= (and b!1479400 res!1005411) b!1479402))

(assert (= (and b!1479402 res!1005418) b!1479399))

(assert (= (and b!1479399 (not res!1005414)) b!1479398))

(assert (= (and b!1479398 res!1005403) b!1479411))

(assert (= (and b!1479402 (not res!1005406)) b!1479396))

(assert (= (and b!1479396 (not res!1005412)) b!1479401))

(declare-fun m!1365317 () Bool)

(assert (=> b!1479398 m!1365317))

(assert (=> b!1479398 m!1365317))

(declare-fun m!1365319 () Bool)

(assert (=> b!1479398 m!1365319))

(declare-fun m!1365321 () Bool)

(assert (=> b!1479409 m!1365321))

(declare-fun m!1365323 () Bool)

(assert (=> b!1479393 m!1365323))

(declare-fun m!1365325 () Bool)

(assert (=> b!1479403 m!1365325))

(assert (=> b!1479406 m!1365317))

(assert (=> b!1479406 m!1365317))

(declare-fun m!1365327 () Bool)

(assert (=> b!1479406 m!1365327))

(assert (=> b!1479406 m!1365327))

(assert (=> b!1479406 m!1365317))

(declare-fun m!1365329 () Bool)

(assert (=> b!1479406 m!1365329))

(assert (=> b!1479404 m!1365317))

(assert (=> b!1479404 m!1365317))

(declare-fun m!1365331 () Bool)

(assert (=> b!1479404 m!1365331))

(declare-fun m!1365333 () Bool)

(assert (=> b!1479401 m!1365333))

(declare-fun m!1365335 () Bool)

(assert (=> b!1479401 m!1365335))

(assert (=> b!1479394 m!1365317))

(assert (=> b!1479394 m!1365317))

(declare-fun m!1365337 () Bool)

(assert (=> b!1479394 m!1365337))

(declare-fun m!1365339 () Bool)

(assert (=> b!1479408 m!1365339))

(declare-fun m!1365341 () Bool)

(assert (=> b!1479408 m!1365341))

(declare-fun m!1365343 () Bool)

(assert (=> start!126282 m!1365343))

(declare-fun m!1365345 () Bool)

(assert (=> start!126282 m!1365345))

(assert (=> b!1479395 m!1365333))

(declare-fun m!1365347 () Bool)

(assert (=> b!1479395 m!1365347))

(declare-fun m!1365349 () Bool)

(assert (=> b!1479397 m!1365349))

(assert (=> b!1479397 m!1365349))

(declare-fun m!1365351 () Bool)

(assert (=> b!1479397 m!1365351))

(assert (=> b!1479397 m!1365339))

(declare-fun m!1365353 () Bool)

(assert (=> b!1479397 m!1365353))

(declare-fun m!1365355 () Bool)

(assert (=> b!1479399 m!1365355))

(assert (=> b!1479399 m!1365339))

(declare-fun m!1365357 () Bool)

(assert (=> b!1479399 m!1365357))

(assert (=> b!1479399 m!1365317))

(declare-fun m!1365359 () Bool)

(assert (=> b!1479402 m!1365359))

(assert (=> b!1479402 m!1365339))

(declare-fun m!1365361 () Bool)

(assert (=> b!1479402 m!1365361))

(assert (=> b!1479402 m!1365357))

(assert (=> b!1479402 m!1365355))

(assert (=> b!1479402 m!1365317))

(declare-fun m!1365363 () Bool)

(assert (=> b!1479402 m!1365363))

(declare-fun m!1365365 () Bool)

(assert (=> b!1479402 m!1365365))

(assert (=> b!1479402 m!1365317))

(declare-fun m!1365367 () Bool)

(assert (=> b!1479410 m!1365367))

(assert (=> b!1479410 m!1365367))

(declare-fun m!1365369 () Bool)

(assert (=> b!1479410 m!1365369))

(assert (=> b!1479396 m!1365317))

(assert (=> b!1479396 m!1365317))

(declare-fun m!1365371 () Bool)

(assert (=> b!1479396 m!1365371))

(check-sat (not b!1479401) (not b!1479396) (not start!126282) (not b!1479397) (not b!1479403) (not b!1479402) (not b!1479409) (not b!1479398) (not b!1479394) (not b!1479404) (not b!1479406) (not b!1479395) (not b!1479393) (not b!1479410))
(check-sat)
