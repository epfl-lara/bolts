; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125256 () Bool)

(assert start!125256)

(declare-fun b!1460514 () Bool)

(declare-fun res!990388 () Bool)

(declare-fun e!821224 () Bool)

(assert (=> b!1460514 (=> (not res!990388) (not e!821224))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1460514 (= res!990388 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460515 () Bool)

(declare-fun res!990389 () Bool)

(declare-fun e!821228 () Bool)

(assert (=> b!1460515 (=> (not res!990389) (not e!821228))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98621 0))(
  ( (array!98622 (arr!47594 (Array (_ BitVec 32) (_ BitVec 64))) (size!48145 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98621)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11869 0))(
  ( (MissingZero!11869 (index!49867 (_ BitVec 32))) (Found!11869 (index!49868 (_ BitVec 32))) (Intermediate!11869 (undefined!12681 Bool) (index!49869 (_ BitVec 32)) (x!131473 (_ BitVec 32))) (Undefined!11869) (MissingVacant!11869 (index!49870 (_ BitVec 32))) )
))
(declare-fun lt!639810 () SeekEntryResult!11869)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98621 (_ BitVec 32)) SeekEntryResult!11869)

(assert (=> b!1460515 (= res!990389 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47594 a!2862) j!93) a!2862 mask!2687) lt!639810))))

(declare-fun b!1460516 () Bool)

(declare-fun e!821227 () Bool)

(assert (=> b!1460516 (= e!821227 e!821228)))

(declare-fun res!990376 () Bool)

(assert (=> b!1460516 (=> (not res!990376) (not e!821228))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460516 (= res!990376 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47594 a!2862) j!93) mask!2687) (select (arr!47594 a!2862) j!93) a!2862 mask!2687) lt!639810))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1460516 (= lt!639810 (Intermediate!11869 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460517 () Bool)

(declare-fun res!990383 () Bool)

(declare-fun e!821223 () Bool)

(assert (=> b!1460517 (=> (not res!990383) (not e!821223))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98621 (_ BitVec 32)) SeekEntryResult!11869)

(assert (=> b!1460517 (= res!990383 (= (seekEntryOrOpen!0 (select (arr!47594 a!2862) j!93) a!2862 mask!2687) (Found!11869 j!93)))))

(declare-fun b!1460518 () Bool)

(assert (=> b!1460518 (= e!821228 e!821224)))

(declare-fun res!990390 () Bool)

(assert (=> b!1460518 (=> (not res!990390) (not e!821224))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!639808 () SeekEntryResult!11869)

(assert (=> b!1460518 (= res!990390 (= lt!639808 (Intermediate!11869 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639811 () array!98621)

(declare-fun lt!639807 () (_ BitVec 64))

(assert (=> b!1460518 (= lt!639808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639807 mask!2687) lt!639807 lt!639811 mask!2687))))

(assert (=> b!1460518 (= lt!639807 (select (store (arr!47594 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!821222 () Bool)

(declare-fun b!1460519 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98621 (_ BitVec 32)) SeekEntryResult!11869)

(assert (=> b!1460519 (= e!821222 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639807 lt!639811 mask!2687) (seekEntryOrOpen!0 lt!639807 lt!639811 mask!2687)))))

(declare-fun b!1460520 () Bool)

(declare-fun e!821225 () Bool)

(assert (=> b!1460520 (= e!821225 e!821227)))

(declare-fun res!990381 () Bool)

(assert (=> b!1460520 (=> (not res!990381) (not e!821227))))

(assert (=> b!1460520 (= res!990381 (= (select (store (arr!47594 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460520 (= lt!639811 (array!98622 (store (arr!47594 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48145 a!2862)))))

(declare-fun b!1460521 () Bool)

(assert (=> b!1460521 (= e!821223 (or (= (select (arr!47594 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47594 a!2862) intermediateBeforeIndex!19) (select (arr!47594 a!2862) j!93))))))

(declare-fun b!1460522 () Bool)

(declare-fun res!990386 () Bool)

(assert (=> b!1460522 (=> (not res!990386) (not e!821224))))

(assert (=> b!1460522 (= res!990386 e!821222)))

(declare-fun c!134582 () Bool)

(assert (=> b!1460522 (= c!134582 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!990387 () Bool)

(assert (=> start!125256 (=> (not res!990387) (not e!821225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125256 (= res!990387 (validMask!0 mask!2687))))

(assert (=> start!125256 e!821225))

(assert (=> start!125256 true))

(declare-fun array_inv!36539 (array!98621) Bool)

(assert (=> start!125256 (array_inv!36539 a!2862)))

(declare-fun b!1460523 () Bool)

(declare-fun res!990378 () Bool)

(assert (=> b!1460523 (=> (not res!990378) (not e!821225))))

(assert (=> b!1460523 (= res!990378 (and (= (size!48145 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48145 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48145 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460524 () Bool)

(declare-fun res!990380 () Bool)

(assert (=> b!1460524 (=> (not res!990380) (not e!821225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98621 (_ BitVec 32)) Bool)

(assert (=> b!1460524 (= res!990380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460525 () Bool)

(assert (=> b!1460525 (= e!821222 (= lt!639808 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639807 lt!639811 mask!2687)))))

(declare-fun b!1460526 () Bool)

(declare-fun res!990384 () Bool)

(assert (=> b!1460526 (=> (not res!990384) (not e!821225))))

(declare-datatypes ((List!34275 0))(
  ( (Nil!34272) (Cons!34271 (h!35621 (_ BitVec 64)) (t!48976 List!34275)) )
))
(declare-fun arrayNoDuplicates!0 (array!98621 (_ BitVec 32) List!34275) Bool)

(assert (=> b!1460526 (= res!990384 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34272))))

(declare-fun b!1460527 () Bool)

(declare-fun res!990382 () Bool)

(assert (=> b!1460527 (=> (not res!990382) (not e!821225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460527 (= res!990382 (validKeyInArray!0 (select (arr!47594 a!2862) i!1006)))))

(declare-fun b!1460528 () Bool)

(declare-fun res!990377 () Bool)

(assert (=> b!1460528 (=> (not res!990377) (not e!821225))))

(assert (=> b!1460528 (= res!990377 (validKeyInArray!0 (select (arr!47594 a!2862) j!93)))))

(declare-fun b!1460529 () Bool)

(assert (=> b!1460529 (= e!821224 (not (or (and (= (select (arr!47594 a!2862) index!646) (select (store (arr!47594 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47594 a!2862) index!646) (select (arr!47594 a!2862) j!93))) (= (select (arr!47594 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1460529 e!821223))

(declare-fun res!990379 () Bool)

(assert (=> b!1460529 (=> (not res!990379) (not e!821223))))

(assert (=> b!1460529 (= res!990379 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49182 0))(
  ( (Unit!49183) )
))
(declare-fun lt!639809 () Unit!49182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98621 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49182)

(assert (=> b!1460529 (= lt!639809 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460530 () Bool)

(declare-fun res!990385 () Bool)

(assert (=> b!1460530 (=> (not res!990385) (not e!821225))))

(assert (=> b!1460530 (= res!990385 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48145 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48145 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48145 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125256 res!990387) b!1460523))

(assert (= (and b!1460523 res!990378) b!1460527))

(assert (= (and b!1460527 res!990382) b!1460528))

(assert (= (and b!1460528 res!990377) b!1460524))

(assert (= (and b!1460524 res!990380) b!1460526))

(assert (= (and b!1460526 res!990384) b!1460530))

(assert (= (and b!1460530 res!990385) b!1460520))

(assert (= (and b!1460520 res!990381) b!1460516))

(assert (= (and b!1460516 res!990376) b!1460515))

(assert (= (and b!1460515 res!990389) b!1460518))

(assert (= (and b!1460518 res!990390) b!1460522))

(assert (= (and b!1460522 c!134582) b!1460525))

(assert (= (and b!1460522 (not c!134582)) b!1460519))

(assert (= (and b!1460522 res!990386) b!1460514))

(assert (= (and b!1460514 res!990388) b!1460529))

(assert (= (and b!1460529 res!990379) b!1460517))

(assert (= (and b!1460517 res!990383) b!1460521))

(declare-fun m!1348247 () Bool)

(assert (=> b!1460525 m!1348247))

(declare-fun m!1348249 () Bool)

(assert (=> b!1460518 m!1348249))

(assert (=> b!1460518 m!1348249))

(declare-fun m!1348251 () Bool)

(assert (=> b!1460518 m!1348251))

(declare-fun m!1348253 () Bool)

(assert (=> b!1460518 m!1348253))

(declare-fun m!1348255 () Bool)

(assert (=> b!1460518 m!1348255))

(declare-fun m!1348257 () Bool)

(assert (=> b!1460528 m!1348257))

(assert (=> b!1460528 m!1348257))

(declare-fun m!1348259 () Bool)

(assert (=> b!1460528 m!1348259))

(declare-fun m!1348261 () Bool)

(assert (=> b!1460527 m!1348261))

(assert (=> b!1460527 m!1348261))

(declare-fun m!1348263 () Bool)

(assert (=> b!1460527 m!1348263))

(declare-fun m!1348265 () Bool)

(assert (=> b!1460529 m!1348265))

(assert (=> b!1460529 m!1348253))

(declare-fun m!1348267 () Bool)

(assert (=> b!1460529 m!1348267))

(declare-fun m!1348269 () Bool)

(assert (=> b!1460529 m!1348269))

(declare-fun m!1348271 () Bool)

(assert (=> b!1460529 m!1348271))

(assert (=> b!1460529 m!1348257))

(assert (=> b!1460516 m!1348257))

(assert (=> b!1460516 m!1348257))

(declare-fun m!1348273 () Bool)

(assert (=> b!1460516 m!1348273))

(assert (=> b!1460516 m!1348273))

(assert (=> b!1460516 m!1348257))

(declare-fun m!1348275 () Bool)

(assert (=> b!1460516 m!1348275))

(declare-fun m!1348277 () Bool)

(assert (=> b!1460526 m!1348277))

(declare-fun m!1348279 () Bool)

(assert (=> b!1460519 m!1348279))

(declare-fun m!1348281 () Bool)

(assert (=> b!1460519 m!1348281))

(assert (=> b!1460520 m!1348253))

(declare-fun m!1348283 () Bool)

(assert (=> b!1460520 m!1348283))

(declare-fun m!1348285 () Bool)

(assert (=> b!1460524 m!1348285))

(assert (=> b!1460515 m!1348257))

(assert (=> b!1460515 m!1348257))

(declare-fun m!1348287 () Bool)

(assert (=> b!1460515 m!1348287))

(assert (=> b!1460517 m!1348257))

(assert (=> b!1460517 m!1348257))

(declare-fun m!1348289 () Bool)

(assert (=> b!1460517 m!1348289))

(declare-fun m!1348291 () Bool)

(assert (=> start!125256 m!1348291))

(declare-fun m!1348293 () Bool)

(assert (=> start!125256 m!1348293))

(declare-fun m!1348295 () Bool)

(assert (=> b!1460521 m!1348295))

(assert (=> b!1460521 m!1348257))

(check-sat (not b!1460515) (not b!1460526) (not b!1460519) (not b!1460528) (not b!1460516) (not b!1460518) (not b!1460517) (not b!1460525) (not b!1460529) (not b!1460524) (not b!1460527) (not start!125256))
(check-sat)
