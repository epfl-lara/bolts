; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125186 () Bool)

(assert start!125186)

(declare-fun b!1458310 () Bool)

(declare-fun res!988548 () Bool)

(declare-fun e!820306 () Bool)

(assert (=> b!1458310 (=> (not res!988548) (not e!820306))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11834 0))(
  ( (MissingZero!11834 (index!49727 (_ BitVec 32))) (Found!11834 (index!49728 (_ BitVec 32))) (Intermediate!11834 (undefined!12646 Bool) (index!49729 (_ BitVec 32)) (x!131342 (_ BitVec 32))) (Undefined!11834) (MissingVacant!11834 (index!49730 (_ BitVec 32))) )
))
(declare-fun lt!638969 () SeekEntryResult!11834)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98551 0))(
  ( (array!98552 (arr!47559 (Array (_ BitVec 32) (_ BitVec 64))) (size!48110 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98551)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98551 (_ BitVec 32)) SeekEntryResult!11834)

(assert (=> b!1458310 (= res!988548 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47559 a!2862) j!93) a!2862 mask!2687) lt!638969))))

(declare-fun b!1458311 () Bool)

(declare-fun res!988560 () Bool)

(declare-fun e!820313 () Bool)

(assert (=> b!1458311 (=> (not res!988560) (not e!820313))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1458311 (= res!988560 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48110 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48110 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48110 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!820312 () Bool)

(declare-fun lt!638964 () (_ BitVec 64))

(declare-fun lt!638967 () SeekEntryResult!11834)

(declare-fun lt!638968 () array!98551)

(declare-fun b!1458312 () Bool)

(declare-fun lt!638965 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98551 (_ BitVec 32)) SeekEntryResult!11834)

(assert (=> b!1458312 (= e!820312 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638965 intermediateAfterIndex!19 lt!638964 lt!638968 mask!2687) lt!638967)))))

(declare-fun b!1458313 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun e!820305 () Bool)

(assert (=> b!1458313 (= e!820305 (and (or (= (select (arr!47559 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47559 a!2862) intermediateBeforeIndex!19) (select (arr!47559 a!2862) j!93))) (let ((bdg!53419 (select (store (arr!47559 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47559 a!2862) index!646) bdg!53419) (= (select (arr!47559 a!2862) index!646) (select (arr!47559 a!2862) j!93))) (= (select (arr!47559 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53419 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1458314 () Bool)

(declare-fun e!820310 () Bool)

(assert (=> b!1458314 (= e!820306 e!820310)))

(declare-fun res!988558 () Bool)

(assert (=> b!1458314 (=> (not res!988558) (not e!820310))))

(declare-fun lt!638966 () SeekEntryResult!11834)

(assert (=> b!1458314 (= res!988558 (= lt!638966 (Intermediate!11834 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458314 (= lt!638966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638964 mask!2687) lt!638964 lt!638968 mask!2687))))

(assert (=> b!1458314 (= lt!638964 (select (store (arr!47559 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458315 () Bool)

(declare-fun res!988559 () Bool)

(assert (=> b!1458315 (=> (not res!988559) (not e!820313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98551 (_ BitVec 32)) Bool)

(assert (=> b!1458315 (= res!988559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458316 () Bool)

(assert (=> b!1458316 (= e!820312 (not (= lt!638966 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638965 lt!638964 lt!638968 mask!2687))))))

(declare-fun b!1458317 () Bool)

(declare-fun res!988553 () Bool)

(declare-fun e!820307 () Bool)

(assert (=> b!1458317 (=> res!988553 e!820307)))

(assert (=> b!1458317 (= res!988553 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638965 (select (arr!47559 a!2862) j!93) a!2862 mask!2687) lt!638969)))))

(declare-fun b!1458318 () Bool)

(declare-fun e!820304 () Bool)

(assert (=> b!1458318 (= e!820304 e!820307)))

(declare-fun res!988551 () Bool)

(assert (=> b!1458318 (=> res!988551 e!820307)))

(assert (=> b!1458318 (= res!988551 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638965 #b00000000000000000000000000000000) (bvsge lt!638965 (size!48110 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458318 (= lt!638965 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458318 (= lt!638967 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638964 lt!638968 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98551 (_ BitVec 32)) SeekEntryResult!11834)

(assert (=> b!1458318 (= lt!638967 (seekEntryOrOpen!0 lt!638964 lt!638968 mask!2687))))

(declare-fun b!1458319 () Bool)

(declare-fun e!820308 () Bool)

(assert (=> b!1458319 (= e!820308 e!820306)))

(declare-fun res!988563 () Bool)

(assert (=> b!1458319 (=> (not res!988563) (not e!820306))))

(assert (=> b!1458319 (= res!988563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47559 a!2862) j!93) mask!2687) (select (arr!47559 a!2862) j!93) a!2862 mask!2687) lt!638969))))

(assert (=> b!1458319 (= lt!638969 (Intermediate!11834 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!988546 () Bool)

(assert (=> start!125186 (=> (not res!988546) (not e!820313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125186 (= res!988546 (validMask!0 mask!2687))))

(assert (=> start!125186 e!820313))

(assert (=> start!125186 true))

(declare-fun array_inv!36504 (array!98551) Bool)

(assert (=> start!125186 (array_inv!36504 a!2862)))

(declare-fun b!1458320 () Bool)

(declare-fun res!988557 () Bool)

(assert (=> b!1458320 (=> (not res!988557) (not e!820313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458320 (= res!988557 (validKeyInArray!0 (select (arr!47559 a!2862) i!1006)))))

(declare-fun b!1458321 () Bool)

(declare-fun res!988549 () Bool)

(assert (=> b!1458321 (=> (not res!988549) (not e!820310))))

(declare-fun e!820309 () Bool)

(assert (=> b!1458321 (= res!988549 e!820309)))

(declare-fun c!134396 () Bool)

(assert (=> b!1458321 (= c!134396 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458322 () Bool)

(assert (=> b!1458322 (= e!820313 e!820308)))

(declare-fun res!988547 () Bool)

(assert (=> b!1458322 (=> (not res!988547) (not e!820308))))

(assert (=> b!1458322 (= res!988547 (= (select (store (arr!47559 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458322 (= lt!638968 (array!98552 (store (arr!47559 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48110 a!2862)))))

(declare-fun b!1458323 () Bool)

(assert (=> b!1458323 (= e!820309 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638964 lt!638968 mask!2687) (seekEntryOrOpen!0 lt!638964 lt!638968 mask!2687)))))

(declare-fun b!1458324 () Bool)

(assert (=> b!1458324 (= e!820309 (= lt!638966 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638964 lt!638968 mask!2687)))))

(declare-fun b!1458325 () Bool)

(assert (=> b!1458325 (= e!820307 true)))

(declare-fun lt!638970 () Bool)

(assert (=> b!1458325 (= lt!638970 e!820312)))

(declare-fun c!134395 () Bool)

(assert (=> b!1458325 (= c!134395 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458326 () Bool)

(declare-fun res!988561 () Bool)

(assert (=> b!1458326 (=> (not res!988561) (not e!820305))))

(assert (=> b!1458326 (= res!988561 (= (seekEntryOrOpen!0 (select (arr!47559 a!2862) j!93) a!2862 mask!2687) (Found!11834 j!93)))))

(declare-fun b!1458327 () Bool)

(assert (=> b!1458327 (= e!820310 (not e!820304))))

(declare-fun res!988554 () Bool)

(assert (=> b!1458327 (=> res!988554 e!820304)))

(assert (=> b!1458327 (= res!988554 (or (and (= (select (arr!47559 a!2862) index!646) (select (store (arr!47559 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47559 a!2862) index!646) (select (arr!47559 a!2862) j!93))) (= (select (arr!47559 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458327 e!820305))

(declare-fun res!988552 () Bool)

(assert (=> b!1458327 (=> (not res!988552) (not e!820305))))

(assert (=> b!1458327 (= res!988552 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49112 0))(
  ( (Unit!49113) )
))
(declare-fun lt!638971 () Unit!49112)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98551 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49112)

(assert (=> b!1458327 (= lt!638971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458328 () Bool)

(declare-fun res!988550 () Bool)

(assert (=> b!1458328 (=> (not res!988550) (not e!820313))))

(assert (=> b!1458328 (= res!988550 (and (= (size!48110 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48110 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48110 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458329 () Bool)

(declare-fun res!988555 () Bool)

(assert (=> b!1458329 (=> (not res!988555) (not e!820313))))

(declare-datatypes ((List!34240 0))(
  ( (Nil!34237) (Cons!34236 (h!35586 (_ BitVec 64)) (t!48941 List!34240)) )
))
(declare-fun arrayNoDuplicates!0 (array!98551 (_ BitVec 32) List!34240) Bool)

(assert (=> b!1458329 (= res!988555 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34237))))

(declare-fun b!1458330 () Bool)

(declare-fun res!988556 () Bool)

(assert (=> b!1458330 (=> (not res!988556) (not e!820310))))

(assert (=> b!1458330 (= res!988556 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458331 () Bool)

(declare-fun res!988562 () Bool)

(assert (=> b!1458331 (=> (not res!988562) (not e!820313))))

(assert (=> b!1458331 (= res!988562 (validKeyInArray!0 (select (arr!47559 a!2862) j!93)))))

(assert (= (and start!125186 res!988546) b!1458328))

(assert (= (and b!1458328 res!988550) b!1458320))

(assert (= (and b!1458320 res!988557) b!1458331))

(assert (= (and b!1458331 res!988562) b!1458315))

(assert (= (and b!1458315 res!988559) b!1458329))

(assert (= (and b!1458329 res!988555) b!1458311))

(assert (= (and b!1458311 res!988560) b!1458322))

(assert (= (and b!1458322 res!988547) b!1458319))

(assert (= (and b!1458319 res!988563) b!1458310))

(assert (= (and b!1458310 res!988548) b!1458314))

(assert (= (and b!1458314 res!988558) b!1458321))

(assert (= (and b!1458321 c!134396) b!1458324))

(assert (= (and b!1458321 (not c!134396)) b!1458323))

(assert (= (and b!1458321 res!988549) b!1458330))

(assert (= (and b!1458330 res!988556) b!1458327))

(assert (= (and b!1458327 res!988552) b!1458326))

(assert (= (and b!1458326 res!988561) b!1458313))

(assert (= (and b!1458327 (not res!988554)) b!1458318))

(assert (= (and b!1458318 (not res!988551)) b!1458317))

(assert (= (and b!1458317 (not res!988553)) b!1458325))

(assert (= (and b!1458325 c!134395) b!1458316))

(assert (= (and b!1458325 (not c!134395)) b!1458312))

(declare-fun m!1346231 () Bool)

(assert (=> b!1458322 m!1346231))

(declare-fun m!1346233 () Bool)

(assert (=> b!1458322 m!1346233))

(declare-fun m!1346235 () Bool)

(assert (=> b!1458323 m!1346235))

(declare-fun m!1346237 () Bool)

(assert (=> b!1458323 m!1346237))

(declare-fun m!1346239 () Bool)

(assert (=> b!1458320 m!1346239))

(assert (=> b!1458320 m!1346239))

(declare-fun m!1346241 () Bool)

(assert (=> b!1458320 m!1346241))

(declare-fun m!1346243 () Bool)

(assert (=> b!1458324 m!1346243))

(declare-fun m!1346245 () Bool)

(assert (=> b!1458312 m!1346245))

(declare-fun m!1346247 () Bool)

(assert (=> b!1458314 m!1346247))

(assert (=> b!1458314 m!1346247))

(declare-fun m!1346249 () Bool)

(assert (=> b!1458314 m!1346249))

(assert (=> b!1458314 m!1346231))

(declare-fun m!1346251 () Bool)

(assert (=> b!1458314 m!1346251))

(declare-fun m!1346253 () Bool)

(assert (=> b!1458317 m!1346253))

(assert (=> b!1458317 m!1346253))

(declare-fun m!1346255 () Bool)

(assert (=> b!1458317 m!1346255))

(declare-fun m!1346257 () Bool)

(assert (=> b!1458315 m!1346257))

(declare-fun m!1346259 () Bool)

(assert (=> b!1458318 m!1346259))

(assert (=> b!1458318 m!1346235))

(assert (=> b!1458318 m!1346237))

(assert (=> b!1458310 m!1346253))

(assert (=> b!1458310 m!1346253))

(declare-fun m!1346261 () Bool)

(assert (=> b!1458310 m!1346261))

(assert (=> b!1458319 m!1346253))

(assert (=> b!1458319 m!1346253))

(declare-fun m!1346263 () Bool)

(assert (=> b!1458319 m!1346263))

(assert (=> b!1458319 m!1346263))

(assert (=> b!1458319 m!1346253))

(declare-fun m!1346265 () Bool)

(assert (=> b!1458319 m!1346265))

(declare-fun m!1346267 () Bool)

(assert (=> start!125186 m!1346267))

(declare-fun m!1346269 () Bool)

(assert (=> start!125186 m!1346269))

(declare-fun m!1346271 () Bool)

(assert (=> b!1458327 m!1346271))

(assert (=> b!1458327 m!1346231))

(declare-fun m!1346273 () Bool)

(assert (=> b!1458327 m!1346273))

(declare-fun m!1346275 () Bool)

(assert (=> b!1458327 m!1346275))

(declare-fun m!1346277 () Bool)

(assert (=> b!1458327 m!1346277))

(assert (=> b!1458327 m!1346253))

(declare-fun m!1346279 () Bool)

(assert (=> b!1458329 m!1346279))

(assert (=> b!1458313 m!1346231))

(declare-fun m!1346281 () Bool)

(assert (=> b!1458313 m!1346281))

(assert (=> b!1458313 m!1346273))

(assert (=> b!1458313 m!1346275))

(assert (=> b!1458313 m!1346253))

(declare-fun m!1346283 () Bool)

(assert (=> b!1458316 m!1346283))

(assert (=> b!1458331 m!1346253))

(assert (=> b!1458331 m!1346253))

(declare-fun m!1346285 () Bool)

(assert (=> b!1458331 m!1346285))

(assert (=> b!1458326 m!1346253))

(assert (=> b!1458326 m!1346253))

(declare-fun m!1346287 () Bool)

(assert (=> b!1458326 m!1346287))

(push 1)

