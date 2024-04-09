; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125218 () Bool)

(assert start!125218)

(declare-fun b!1459366 () Bool)

(declare-fun res!989425 () Bool)

(declare-fun e!820754 () Bool)

(assert (=> b!1459366 (=> (not res!989425) (not e!820754))))

(declare-datatypes ((array!98583 0))(
  ( (array!98584 (arr!47575 (Array (_ BitVec 32) (_ BitVec 64))) (size!48126 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98583)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98583 (_ BitVec 32)) Bool)

(assert (=> b!1459366 (= res!989425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459367 () Bool)

(declare-fun res!989424 () Bool)

(assert (=> b!1459367 (=> (not res!989424) (not e!820754))))

(declare-datatypes ((List!34256 0))(
  ( (Nil!34253) (Cons!34252 (h!35602 (_ BitVec 64)) (t!48957 List!34256)) )
))
(declare-fun arrayNoDuplicates!0 (array!98583 (_ BitVec 32) List!34256) Bool)

(assert (=> b!1459367 (= res!989424 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34253))))

(declare-fun b!1459368 () Bool)

(declare-fun e!820750 () Bool)

(declare-fun e!820746 () Bool)

(assert (=> b!1459368 (= e!820750 e!820746)))

(declare-fun res!989420 () Bool)

(assert (=> b!1459368 (=> (not res!989420) (not e!820746))))

(declare-datatypes ((SeekEntryResult!11850 0))(
  ( (MissingZero!11850 (index!49791 (_ BitVec 32))) (Found!11850 (index!49792 (_ BitVec 32))) (Intermediate!11850 (undefined!12662 Bool) (index!49793 (_ BitVec 32)) (x!131406 (_ BitVec 32))) (Undefined!11850) (MissingVacant!11850 (index!49794 (_ BitVec 32))) )
))
(declare-fun lt!639392 () SeekEntryResult!11850)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98583 (_ BitVec 32)) SeekEntryResult!11850)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459368 (= res!989420 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47575 a!2862) j!93) mask!2687) (select (arr!47575 a!2862) j!93) a!2862 mask!2687) lt!639392))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459368 (= lt!639392 (Intermediate!11850 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459369 () Bool)

(declare-fun e!820752 () Bool)

(assert (=> b!1459369 (= e!820746 e!820752)))

(declare-fun res!989423 () Bool)

(assert (=> b!1459369 (=> (not res!989423) (not e!820752))))

(declare-fun lt!639394 () SeekEntryResult!11850)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459369 (= res!989423 (= lt!639394 (Intermediate!11850 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639390 () array!98583)

(declare-fun lt!639387 () (_ BitVec 64))

(assert (=> b!1459369 (= lt!639394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639387 mask!2687) lt!639387 lt!639390 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1459369 (= lt!639387 (select (store (arr!47575 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459371 () Bool)

(declare-fun res!989415 () Bool)

(assert (=> b!1459371 (=> (not res!989415) (not e!820752))))

(declare-fun e!820753 () Bool)

(assert (=> b!1459371 (= res!989415 e!820753)))

(declare-fun c!134492 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1459371 (= c!134492 (bvsle x!665 intermediateAfterX!19))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1459372 () Bool)

(assert (=> b!1459372 (= e!820753 (= lt!639394 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639387 lt!639390 mask!2687)))))

(declare-fun b!1459373 () Bool)

(declare-fun res!989417 () Bool)

(assert (=> b!1459373 (=> (not res!989417) (not e!820752))))

(assert (=> b!1459373 (= res!989417 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459374 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98583 (_ BitVec 32)) SeekEntryResult!11850)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98583 (_ BitVec 32)) SeekEntryResult!11850)

(assert (=> b!1459374 (= e!820753 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639387 lt!639390 mask!2687) (seekEntryOrOpen!0 lt!639387 lt!639390 mask!2687)))))

(declare-fun b!1459375 () Bool)

(declare-fun res!989421 () Bool)

(assert (=> b!1459375 (=> (not res!989421) (not e!820746))))

(assert (=> b!1459375 (= res!989421 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47575 a!2862) j!93) a!2862 mask!2687) lt!639392))))

(declare-fun lt!639389 () (_ BitVec 32))

(declare-fun e!820749 () Bool)

(declare-fun b!1459376 () Bool)

(assert (=> b!1459376 (= e!820749 (not (= lt!639394 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639389 lt!639387 lt!639390 mask!2687))))))

(declare-fun b!1459377 () Bool)

(declare-fun res!989416 () Bool)

(assert (=> b!1459377 (=> (not res!989416) (not e!820754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459377 (= res!989416 (validKeyInArray!0 (select (arr!47575 a!2862) j!93)))))

(declare-fun b!1459378 () Bool)

(declare-fun lt!639391 () SeekEntryResult!11850)

(assert (=> b!1459378 (= e!820749 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639389 intermediateAfterIndex!19 lt!639387 lt!639390 mask!2687) lt!639391)))))

(declare-fun b!1459379 () Bool)

(declare-fun res!989426 () Bool)

(declare-fun e!820747 () Bool)

(assert (=> b!1459379 (=> res!989426 e!820747)))

(assert (=> b!1459379 (= res!989426 e!820749)))

(declare-fun c!134491 () Bool)

(assert (=> b!1459379 (= c!134491 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459380 () Bool)

(declare-fun e!820748 () Bool)

(assert (=> b!1459380 (= e!820752 (not e!820748))))

(declare-fun res!989419 () Bool)

(assert (=> b!1459380 (=> res!989419 e!820748)))

(assert (=> b!1459380 (= res!989419 (or (and (= (select (arr!47575 a!2862) index!646) (select (store (arr!47575 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47575 a!2862) index!646) (select (arr!47575 a!2862) j!93))) (= (select (arr!47575 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun lt!639388 () SeekEntryResult!11850)

(assert (=> b!1459380 (and (= lt!639388 (Found!11850 j!93)) (or (= (select (arr!47575 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47575 a!2862) intermediateBeforeIndex!19) (select (arr!47575 a!2862) j!93))) (let ((bdg!53513 (select (store (arr!47575 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47575 a!2862) index!646) bdg!53513) (= (select (arr!47575 a!2862) index!646) (select (arr!47575 a!2862) j!93))) (= (select (arr!47575 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53513 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459380 (= lt!639388 (seekEntryOrOpen!0 (select (arr!47575 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1459380 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49144 0))(
  ( (Unit!49145) )
))
(declare-fun lt!639393 () Unit!49144)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49144)

(assert (=> b!1459380 (= lt!639393 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459381 () Bool)

(declare-fun res!989414 () Bool)

(assert (=> b!1459381 (=> res!989414 e!820747)))

(assert (=> b!1459381 (= res!989414 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639389 (select (arr!47575 a!2862) j!93) a!2862 mask!2687) lt!639392)))))

(declare-fun b!1459382 () Bool)

(declare-fun res!989427 () Bool)

(assert (=> b!1459382 (=> (not res!989427) (not e!820754))))

(assert (=> b!1459382 (= res!989427 (and (= (size!48126 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48126 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48126 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!989413 () Bool)

(assert (=> start!125218 (=> (not res!989413) (not e!820754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125218 (= res!989413 (validMask!0 mask!2687))))

(assert (=> start!125218 e!820754))

(assert (=> start!125218 true))

(declare-fun array_inv!36520 (array!98583) Bool)

(assert (=> start!125218 (array_inv!36520 a!2862)))

(declare-fun b!1459370 () Bool)

(declare-fun res!989410 () Bool)

(assert (=> b!1459370 (=> (not res!989410) (not e!820754))))

(assert (=> b!1459370 (= res!989410 (validKeyInArray!0 (select (arr!47575 a!2862) i!1006)))))

(declare-fun b!1459383 () Bool)

(assert (=> b!1459383 (= e!820748 e!820747)))

(declare-fun res!989422 () Bool)

(assert (=> b!1459383 (=> res!989422 e!820747)))

(assert (=> b!1459383 (= res!989422 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639389 #b00000000000000000000000000000000) (bvsge lt!639389 (size!48126 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459383 (= lt!639389 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1459383 (= lt!639391 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639387 lt!639390 mask!2687))))

(assert (=> b!1459383 (= lt!639391 (seekEntryOrOpen!0 lt!639387 lt!639390 mask!2687))))

(declare-fun b!1459384 () Bool)

(declare-fun res!989411 () Bool)

(assert (=> b!1459384 (=> res!989411 e!820747)))

(assert (=> b!1459384 (= res!989411 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459385 () Bool)

(assert (=> b!1459385 (= e!820747 true)))

(assert (=> b!1459385 (= lt!639388 lt!639391)))

(declare-fun lt!639386 () Unit!49144)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49144)

(assert (=> b!1459385 (= lt!639386 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639389 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459386 () Bool)

(declare-fun res!989418 () Bool)

(assert (=> b!1459386 (=> (not res!989418) (not e!820754))))

(assert (=> b!1459386 (= res!989418 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48126 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48126 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48126 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459387 () Bool)

(assert (=> b!1459387 (= e!820754 e!820750)))

(declare-fun res!989412 () Bool)

(assert (=> b!1459387 (=> (not res!989412) (not e!820750))))

(assert (=> b!1459387 (= res!989412 (= (select (store (arr!47575 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459387 (= lt!639390 (array!98584 (store (arr!47575 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48126 a!2862)))))

(assert (= (and start!125218 res!989413) b!1459382))

(assert (= (and b!1459382 res!989427) b!1459370))

(assert (= (and b!1459370 res!989410) b!1459377))

(assert (= (and b!1459377 res!989416) b!1459366))

(assert (= (and b!1459366 res!989425) b!1459367))

(assert (= (and b!1459367 res!989424) b!1459386))

(assert (= (and b!1459386 res!989418) b!1459387))

(assert (= (and b!1459387 res!989412) b!1459368))

(assert (= (and b!1459368 res!989420) b!1459375))

(assert (= (and b!1459375 res!989421) b!1459369))

(assert (= (and b!1459369 res!989423) b!1459371))

(assert (= (and b!1459371 c!134492) b!1459372))

(assert (= (and b!1459371 (not c!134492)) b!1459374))

(assert (= (and b!1459371 res!989415) b!1459373))

(assert (= (and b!1459373 res!989417) b!1459380))

(assert (= (and b!1459380 (not res!989419)) b!1459383))

(assert (= (and b!1459383 (not res!989422)) b!1459381))

(assert (= (and b!1459381 (not res!989414)) b!1459379))

(assert (= (and b!1459379 c!134491) b!1459376))

(assert (= (and b!1459379 (not c!134491)) b!1459378))

(assert (= (and b!1459379 (not res!989426)) b!1459384))

(assert (= (and b!1459384 (not res!989411)) b!1459385))

(declare-fun m!1347183 () Bool)

(assert (=> b!1459374 m!1347183))

(declare-fun m!1347185 () Bool)

(assert (=> b!1459374 m!1347185))

(declare-fun m!1347187 () Bool)

(assert (=> b!1459375 m!1347187))

(assert (=> b!1459375 m!1347187))

(declare-fun m!1347189 () Bool)

(assert (=> b!1459375 m!1347189))

(assert (=> b!1459368 m!1347187))

(assert (=> b!1459368 m!1347187))

(declare-fun m!1347191 () Bool)

(assert (=> b!1459368 m!1347191))

(assert (=> b!1459368 m!1347191))

(assert (=> b!1459368 m!1347187))

(declare-fun m!1347193 () Bool)

(assert (=> b!1459368 m!1347193))

(assert (=> b!1459381 m!1347187))

(assert (=> b!1459381 m!1347187))

(declare-fun m!1347195 () Bool)

(assert (=> b!1459381 m!1347195))

(declare-fun m!1347197 () Bool)

(assert (=> b!1459370 m!1347197))

(assert (=> b!1459370 m!1347197))

(declare-fun m!1347199 () Bool)

(assert (=> b!1459370 m!1347199))

(declare-fun m!1347201 () Bool)

(assert (=> b!1459378 m!1347201))

(assert (=> b!1459377 m!1347187))

(assert (=> b!1459377 m!1347187))

(declare-fun m!1347203 () Bool)

(assert (=> b!1459377 m!1347203))

(declare-fun m!1347205 () Bool)

(assert (=> b!1459372 m!1347205))

(declare-fun m!1347207 () Bool)

(assert (=> b!1459387 m!1347207))

(declare-fun m!1347209 () Bool)

(assert (=> b!1459387 m!1347209))

(declare-fun m!1347211 () Bool)

(assert (=> b!1459367 m!1347211))

(declare-fun m!1347213 () Bool)

(assert (=> start!125218 m!1347213))

(declare-fun m!1347215 () Bool)

(assert (=> start!125218 m!1347215))

(declare-fun m!1347217 () Bool)

(assert (=> b!1459366 m!1347217))

(declare-fun m!1347219 () Bool)

(assert (=> b!1459369 m!1347219))

(assert (=> b!1459369 m!1347219))

(declare-fun m!1347221 () Bool)

(assert (=> b!1459369 m!1347221))

(assert (=> b!1459369 m!1347207))

(declare-fun m!1347223 () Bool)

(assert (=> b!1459369 m!1347223))

(declare-fun m!1347225 () Bool)

(assert (=> b!1459385 m!1347225))

(declare-fun m!1347227 () Bool)

(assert (=> b!1459383 m!1347227))

(assert (=> b!1459383 m!1347183))

(assert (=> b!1459383 m!1347185))

(declare-fun m!1347229 () Bool)

(assert (=> b!1459380 m!1347229))

(assert (=> b!1459380 m!1347207))

(declare-fun m!1347231 () Bool)

(assert (=> b!1459380 m!1347231))

(declare-fun m!1347233 () Bool)

(assert (=> b!1459380 m!1347233))

(declare-fun m!1347235 () Bool)

(assert (=> b!1459380 m!1347235))

(assert (=> b!1459380 m!1347187))

(declare-fun m!1347237 () Bool)

(assert (=> b!1459380 m!1347237))

(declare-fun m!1347239 () Bool)

(assert (=> b!1459380 m!1347239))

(assert (=> b!1459380 m!1347187))

(declare-fun m!1347241 () Bool)

(assert (=> b!1459376 m!1347241))

(push 1)

