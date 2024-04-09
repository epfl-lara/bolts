; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124864 () Bool)

(assert start!124864)

(declare-fun b!1448569 () Bool)

(declare-fun e!815812 () Bool)

(declare-fun e!815809 () Bool)

(assert (=> b!1448569 (= e!815812 (not e!815809))))

(declare-fun res!980203 () Bool)

(assert (=> b!1448569 (=> res!980203 e!815809)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98229 0))(
  ( (array!98230 (arr!47398 (Array (_ BitVec 32) (_ BitVec 64))) (size!47949 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98229)

(assert (=> b!1448569 (= res!980203 (or (and (= (select (arr!47398 a!2862) index!646) (select (store (arr!47398 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47398 a!2862) index!646) (select (arr!47398 a!2862) j!93))) (not (= (select (arr!47398 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47398 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815814 () Bool)

(assert (=> b!1448569 e!815814))

(declare-fun res!980208 () Bool)

(assert (=> b!1448569 (=> (not res!980208) (not e!815814))))

(declare-datatypes ((SeekEntryResult!11673 0))(
  ( (MissingZero!11673 (index!49083 (_ BitVec 32))) (Found!11673 (index!49084 (_ BitVec 32))) (Intermediate!11673 (undefined!12485 Bool) (index!49085 (_ BitVec 32)) (x!130757 (_ BitVec 32))) (Undefined!11673) (MissingVacant!11673 (index!49086 (_ BitVec 32))) )
))
(declare-fun lt!635551 () SeekEntryResult!11673)

(assert (=> b!1448569 (= res!980208 (and (= lt!635551 (Found!11673 j!93)) (or (= (select (arr!47398 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47398 a!2862) intermediateBeforeIndex!19) (select (arr!47398 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98229 (_ BitVec 32)) SeekEntryResult!11673)

(assert (=> b!1448569 (= lt!635551 (seekEntryOrOpen!0 (select (arr!47398 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98229 (_ BitVec 32)) Bool)

(assert (=> b!1448569 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48790 0))(
  ( (Unit!48791) )
))
(declare-fun lt!635552 () Unit!48790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98229 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48790)

(assert (=> b!1448569 (= lt!635552 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448571 () Bool)

(declare-fun e!815810 () Bool)

(declare-fun e!815807 () Bool)

(assert (=> b!1448571 (= e!815810 e!815807)))

(declare-fun res!980205 () Bool)

(assert (=> b!1448571 (=> (not res!980205) (not e!815807))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448571 (= res!980205 (= (select (store (arr!47398 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635554 () array!98229)

(assert (=> b!1448571 (= lt!635554 (array!98230 (store (arr!47398 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47949 a!2862)))))

(declare-fun b!1448572 () Bool)

(declare-fun res!980212 () Bool)

(assert (=> b!1448572 (=> (not res!980212) (not e!815812))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448572 (= res!980212 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448573 () Bool)

(declare-fun res!980211 () Bool)

(declare-fun e!815813 () Bool)

(assert (=> b!1448573 (=> (not res!980211) (not e!815813))))

(declare-fun lt!635548 () SeekEntryResult!11673)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98229 (_ BitVec 32)) SeekEntryResult!11673)

(assert (=> b!1448573 (= res!980211 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47398 a!2862) j!93) a!2862 mask!2687) lt!635548))))

(declare-fun b!1448574 () Bool)

(declare-fun res!980207 () Bool)

(assert (=> b!1448574 (=> (not res!980207) (not e!815810))))

(assert (=> b!1448574 (= res!980207 (and (= (size!47949 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47949 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47949 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448575 () Bool)

(declare-fun res!980204 () Bool)

(assert (=> b!1448575 (=> (not res!980204) (not e!815810))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448575 (= res!980204 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47949 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47949 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47949 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448576 () Bool)

(declare-fun e!815811 () Bool)

(declare-fun e!815816 () Bool)

(assert (=> b!1448576 (= e!815811 e!815816)))

(declare-fun res!980201 () Bool)

(assert (=> b!1448576 (=> (not res!980201) (not e!815816))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98229 (_ BitVec 32)) SeekEntryResult!11673)

(assert (=> b!1448576 (= res!980201 (= lt!635551 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47398 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448577 () Bool)

(declare-fun res!980210 () Bool)

(assert (=> b!1448577 (=> (not res!980210) (not e!815810))))

(declare-datatypes ((List!34079 0))(
  ( (Nil!34076) (Cons!34075 (h!35425 (_ BitVec 64)) (t!48780 List!34079)) )
))
(declare-fun arrayNoDuplicates!0 (array!98229 (_ BitVec 32) List!34079) Bool)

(assert (=> b!1448577 (= res!980210 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34076))))

(declare-fun lt!635549 () (_ BitVec 64))

(declare-fun b!1448578 () Bool)

(declare-fun e!815808 () Bool)

(assert (=> b!1448578 (= e!815808 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635549 lt!635554 mask!2687) (seekEntryOrOpen!0 lt!635549 lt!635554 mask!2687)))))

(declare-fun b!1448579 () Bool)

(assert (=> b!1448579 (= e!815814 e!815811)))

(declare-fun res!980215 () Bool)

(assert (=> b!1448579 (=> res!980215 e!815811)))

(assert (=> b!1448579 (= res!980215 (or (and (= (select (arr!47398 a!2862) index!646) (select (store (arr!47398 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47398 a!2862) index!646) (select (arr!47398 a!2862) j!93))) (not (= (select (arr!47398 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!635553 () SeekEntryResult!11673)

(declare-fun b!1448580 () Bool)

(assert (=> b!1448580 (= e!815808 (= lt!635553 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635549 lt!635554 mask!2687)))))

(declare-fun b!1448581 () Bool)

(declare-fun res!980202 () Bool)

(assert (=> b!1448581 (=> (not res!980202) (not e!815810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448581 (= res!980202 (validKeyInArray!0 (select (arr!47398 a!2862) i!1006)))))

(declare-fun b!1448582 () Bool)

(declare-fun res!980217 () Bool)

(assert (=> b!1448582 (=> (not res!980217) (not e!815810))))

(assert (=> b!1448582 (= res!980217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448583 () Bool)

(assert (=> b!1448583 (= e!815813 e!815812)))

(declare-fun res!980206 () Bool)

(assert (=> b!1448583 (=> (not res!980206) (not e!815812))))

(assert (=> b!1448583 (= res!980206 (= lt!635553 (Intermediate!11673 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448583 (= lt!635553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635549 mask!2687) lt!635549 lt!635554 mask!2687))))

(assert (=> b!1448583 (= lt!635549 (select (store (arr!47398 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!980213 () Bool)

(assert (=> start!124864 (=> (not res!980213) (not e!815810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124864 (= res!980213 (validMask!0 mask!2687))))

(assert (=> start!124864 e!815810))

(assert (=> start!124864 true))

(declare-fun array_inv!36343 (array!98229) Bool)

(assert (=> start!124864 (array_inv!36343 a!2862)))

(declare-fun b!1448570 () Bool)

(declare-fun res!980216 () Bool)

(assert (=> b!1448570 (=> (not res!980216) (not e!815812))))

(assert (=> b!1448570 (= res!980216 e!815808)))

(declare-fun c!133697 () Bool)

(assert (=> b!1448570 (= c!133697 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448584 () Bool)

(assert (=> b!1448584 (= e!815809 true)))

(declare-fun lt!635550 () SeekEntryResult!11673)

(assert (=> b!1448584 (= lt!635550 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47398 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448585 () Bool)

(declare-fun res!980214 () Bool)

(assert (=> b!1448585 (=> (not res!980214) (not e!815810))))

(assert (=> b!1448585 (= res!980214 (validKeyInArray!0 (select (arr!47398 a!2862) j!93)))))

(declare-fun b!1448586 () Bool)

(assert (=> b!1448586 (= e!815816 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448587 () Bool)

(assert (=> b!1448587 (= e!815807 e!815813)))

(declare-fun res!980209 () Bool)

(assert (=> b!1448587 (=> (not res!980209) (not e!815813))))

(assert (=> b!1448587 (= res!980209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47398 a!2862) j!93) mask!2687) (select (arr!47398 a!2862) j!93) a!2862 mask!2687) lt!635548))))

(assert (=> b!1448587 (= lt!635548 (Intermediate!11673 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124864 res!980213) b!1448574))

(assert (= (and b!1448574 res!980207) b!1448581))

(assert (= (and b!1448581 res!980202) b!1448585))

(assert (= (and b!1448585 res!980214) b!1448582))

(assert (= (and b!1448582 res!980217) b!1448577))

(assert (= (and b!1448577 res!980210) b!1448575))

(assert (= (and b!1448575 res!980204) b!1448571))

(assert (= (and b!1448571 res!980205) b!1448587))

(assert (= (and b!1448587 res!980209) b!1448573))

(assert (= (and b!1448573 res!980211) b!1448583))

(assert (= (and b!1448583 res!980206) b!1448570))

(assert (= (and b!1448570 c!133697) b!1448580))

(assert (= (and b!1448570 (not c!133697)) b!1448578))

(assert (= (and b!1448570 res!980216) b!1448572))

(assert (= (and b!1448572 res!980212) b!1448569))

(assert (= (and b!1448569 res!980208) b!1448579))

(assert (= (and b!1448579 (not res!980215)) b!1448576))

(assert (= (and b!1448576 res!980201) b!1448586))

(assert (= (and b!1448569 (not res!980203)) b!1448584))

(declare-fun m!1337379 () Bool)

(assert (=> b!1448577 m!1337379))

(declare-fun m!1337381 () Bool)

(assert (=> b!1448584 m!1337381))

(assert (=> b!1448584 m!1337381))

(declare-fun m!1337383 () Bool)

(assert (=> b!1448584 m!1337383))

(declare-fun m!1337385 () Bool)

(assert (=> b!1448583 m!1337385))

(assert (=> b!1448583 m!1337385))

(declare-fun m!1337387 () Bool)

(assert (=> b!1448583 m!1337387))

(declare-fun m!1337389 () Bool)

(assert (=> b!1448583 m!1337389))

(declare-fun m!1337391 () Bool)

(assert (=> b!1448583 m!1337391))

(assert (=> b!1448571 m!1337389))

(declare-fun m!1337393 () Bool)

(assert (=> b!1448571 m!1337393))

(assert (=> b!1448585 m!1337381))

(assert (=> b!1448585 m!1337381))

(declare-fun m!1337395 () Bool)

(assert (=> b!1448585 m!1337395))

(assert (=> b!1448587 m!1337381))

(assert (=> b!1448587 m!1337381))

(declare-fun m!1337397 () Bool)

(assert (=> b!1448587 m!1337397))

(assert (=> b!1448587 m!1337397))

(assert (=> b!1448587 m!1337381))

(declare-fun m!1337399 () Bool)

(assert (=> b!1448587 m!1337399))

(declare-fun m!1337401 () Bool)

(assert (=> b!1448580 m!1337401))

(declare-fun m!1337403 () Bool)

(assert (=> b!1448579 m!1337403))

(assert (=> b!1448579 m!1337389))

(declare-fun m!1337405 () Bool)

(assert (=> b!1448579 m!1337405))

(assert (=> b!1448579 m!1337381))

(assert (=> b!1448576 m!1337381))

(assert (=> b!1448576 m!1337381))

(declare-fun m!1337407 () Bool)

(assert (=> b!1448576 m!1337407))

(declare-fun m!1337409 () Bool)

(assert (=> start!124864 m!1337409))

(declare-fun m!1337411 () Bool)

(assert (=> start!124864 m!1337411))

(declare-fun m!1337413 () Bool)

(assert (=> b!1448578 m!1337413))

(declare-fun m!1337415 () Bool)

(assert (=> b!1448578 m!1337415))

(assert (=> b!1448573 m!1337381))

(assert (=> b!1448573 m!1337381))

(declare-fun m!1337417 () Bool)

(assert (=> b!1448573 m!1337417))

(declare-fun m!1337419 () Bool)

(assert (=> b!1448569 m!1337419))

(assert (=> b!1448569 m!1337389))

(declare-fun m!1337421 () Bool)

(assert (=> b!1448569 m!1337421))

(assert (=> b!1448569 m!1337405))

(assert (=> b!1448569 m!1337403))

(assert (=> b!1448569 m!1337381))

(declare-fun m!1337423 () Bool)

(assert (=> b!1448569 m!1337423))

(declare-fun m!1337425 () Bool)

(assert (=> b!1448569 m!1337425))

(assert (=> b!1448569 m!1337381))

(declare-fun m!1337427 () Bool)

(assert (=> b!1448581 m!1337427))

(assert (=> b!1448581 m!1337427))

(declare-fun m!1337429 () Bool)

(assert (=> b!1448581 m!1337429))

(declare-fun m!1337431 () Bool)

(assert (=> b!1448582 m!1337431))

(push 1)

