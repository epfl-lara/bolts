; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127386 () Bool)

(assert start!127386)

(declare-fun b!1496299 () Bool)

(declare-fun res!1017733 () Bool)

(declare-fun e!838121 () Bool)

(assert (=> b!1496299 (=> (not res!1017733) (not e!838121))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99761 0))(
  ( (array!99762 (arr!48140 (Array (_ BitVec 32) (_ BitVec 64))) (size!48691 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99761)

(assert (=> b!1496299 (= res!1017733 (and (= (size!48691 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48691 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48691 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496300 () Bool)

(declare-fun e!838119 () Bool)

(declare-fun e!838116 () Bool)

(assert (=> b!1496300 (= e!838119 (not e!838116))))

(declare-fun res!1017744 () Bool)

(assert (=> b!1496300 (=> res!1017744 e!838116)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1496300 (= res!1017744 (or (and (= (select (arr!48140 a!2862) index!646) (select (store (arr!48140 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48140 a!2862) index!646) (select (arr!48140 a!2862) j!93))) (= (select (arr!48140 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!838118 () Bool)

(assert (=> b!1496300 e!838118))

(declare-fun res!1017750 () Bool)

(assert (=> b!1496300 (=> (not res!1017750) (not e!838118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99761 (_ BitVec 32)) Bool)

(assert (=> b!1496300 (= res!1017750 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50094 0))(
  ( (Unit!50095) )
))
(declare-fun lt!652027 () Unit!50094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50094)

(assert (=> b!1496300 (= lt!652027 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!652032 () (_ BitVec 64))

(declare-fun lt!652033 () (_ BitVec 32))

(declare-fun lt!652031 () array!99761)

(declare-fun b!1496301 () Bool)

(declare-fun e!838117 () Bool)

(declare-datatypes ((SeekEntryResult!12403 0))(
  ( (MissingZero!12403 (index!52003 (_ BitVec 32))) (Found!12403 (index!52004 (_ BitVec 32))) (Intermediate!12403 (undefined!13215 Bool) (index!52005 (_ BitVec 32)) (x!133634 (_ BitVec 32))) (Undefined!12403) (MissingVacant!12403 (index!52006 (_ BitVec 32))) )
))
(declare-fun lt!652028 () SeekEntryResult!12403)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99761 (_ BitVec 32)) SeekEntryResult!12403)

(assert (=> b!1496301 (= e!838117 (not (= lt!652028 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652033 lt!652032 lt!652031 mask!2687))))))

(declare-fun b!1496302 () Bool)

(declare-fun res!1017746 () Bool)

(declare-fun e!838120 () Bool)

(assert (=> b!1496302 (=> (not res!1017746) (not e!838120))))

(declare-fun lt!652029 () SeekEntryResult!12403)

(assert (=> b!1496302 (= res!1017746 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48140 a!2862) j!93) a!2862 mask!2687) lt!652029))))

(declare-fun b!1496303 () Bool)

(declare-fun res!1017749 () Bool)

(assert (=> b!1496303 (=> (not res!1017749) (not e!838118))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99761 (_ BitVec 32)) SeekEntryResult!12403)

(assert (=> b!1496303 (= res!1017749 (= (seekEntryOrOpen!0 (select (arr!48140 a!2862) j!93) a!2862 mask!2687) (Found!12403 j!93)))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1496304 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99761 (_ BitVec 32)) SeekEntryResult!12403)

(assert (=> b!1496304 (= e!838117 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652033 intermediateAfterIndex!19 lt!652032 lt!652031 mask!2687) (seekEntryOrOpen!0 lt!652032 lt!652031 mask!2687))))))

(declare-fun b!1496305 () Bool)

(assert (=> b!1496305 (= e!838120 e!838119)))

(declare-fun res!1017748 () Bool)

(assert (=> b!1496305 (=> (not res!1017748) (not e!838119))))

(assert (=> b!1496305 (= res!1017748 (= lt!652028 (Intermediate!12403 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496305 (= lt!652028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652032 mask!2687) lt!652032 lt!652031 mask!2687))))

(assert (=> b!1496305 (= lt!652032 (select (store (arr!48140 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496306 () Bool)

(declare-fun res!1017738 () Bool)

(assert (=> b!1496306 (=> (not res!1017738) (not e!838121))))

(assert (=> b!1496306 (= res!1017738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496307 () Bool)

(declare-fun e!838115 () Bool)

(assert (=> b!1496307 (= e!838115 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652032 lt!652031 mask!2687) (seekEntryOrOpen!0 lt!652032 lt!652031 mask!2687)))))

(declare-fun b!1496308 () Bool)

(declare-fun res!1017740 () Bool)

(assert (=> b!1496308 (=> (not res!1017740) (not e!838121))))

(declare-datatypes ((List!34821 0))(
  ( (Nil!34818) (Cons!34817 (h!36215 (_ BitVec 64)) (t!49522 List!34821)) )
))
(declare-fun arrayNoDuplicates!0 (array!99761 (_ BitVec 32) List!34821) Bool)

(assert (=> b!1496308 (= res!1017740 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34818))))

(declare-fun b!1496309 () Bool)

(declare-fun res!1017745 () Bool)

(assert (=> b!1496309 (=> (not res!1017745) (not e!838119))))

(assert (=> b!1496309 (= res!1017745 e!838115)))

(declare-fun c!138821 () Bool)

(assert (=> b!1496309 (= c!138821 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496310 () Bool)

(declare-fun res!1017736 () Bool)

(declare-fun e!838114 () Bool)

(assert (=> b!1496310 (=> res!1017736 e!838114)))

(assert (=> b!1496310 (= res!1017736 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652033 (select (arr!48140 a!2862) j!93) a!2862 mask!2687) lt!652029)))))

(declare-fun b!1496311 () Bool)

(declare-fun res!1017741 () Bool)

(assert (=> b!1496311 (=> (not res!1017741) (not e!838121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496311 (= res!1017741 (validKeyInArray!0 (select (arr!48140 a!2862) j!93)))))

(declare-fun b!1496312 () Bool)

(declare-fun e!838113 () Bool)

(assert (=> b!1496312 (= e!838113 e!838120)))

(declare-fun res!1017734 () Bool)

(assert (=> b!1496312 (=> (not res!1017734) (not e!838120))))

(assert (=> b!1496312 (= res!1017734 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48140 a!2862) j!93) mask!2687) (select (arr!48140 a!2862) j!93) a!2862 mask!2687) lt!652029))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1496312 (= lt!652029 (Intermediate!12403 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1017742 () Bool)

(assert (=> start!127386 (=> (not res!1017742) (not e!838121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127386 (= res!1017742 (validMask!0 mask!2687))))

(assert (=> start!127386 e!838121))

(assert (=> start!127386 true))

(declare-fun array_inv!37085 (array!99761) Bool)

(assert (=> start!127386 (array_inv!37085 a!2862)))

(declare-fun b!1496313 () Bool)

(assert (=> b!1496313 (= e!838114 true)))

(declare-fun lt!652030 () Bool)

(assert (=> b!1496313 (= lt!652030 e!838117)))

(declare-fun c!138820 () Bool)

(assert (=> b!1496313 (= c!138820 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496314 () Bool)

(assert (=> b!1496314 (= e!838116 e!838114)))

(declare-fun res!1017743 () Bool)

(assert (=> b!1496314 (=> res!1017743 e!838114)))

(assert (=> b!1496314 (= res!1017743 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652033 #b00000000000000000000000000000000) (bvsge lt!652033 (size!48691 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496314 (= lt!652033 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496315 () Bool)

(assert (=> b!1496315 (= e!838118 (or (= (select (arr!48140 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48140 a!2862) intermediateBeforeIndex!19) (select (arr!48140 a!2862) j!93))))))

(declare-fun b!1496316 () Bool)

(assert (=> b!1496316 (= e!838121 e!838113)))

(declare-fun res!1017737 () Bool)

(assert (=> b!1496316 (=> (not res!1017737) (not e!838113))))

(assert (=> b!1496316 (= res!1017737 (= (select (store (arr!48140 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496316 (= lt!652031 (array!99762 (store (arr!48140 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48691 a!2862)))))

(declare-fun b!1496317 () Bool)

(declare-fun res!1017735 () Bool)

(assert (=> b!1496317 (=> (not res!1017735) (not e!838121))))

(assert (=> b!1496317 (= res!1017735 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48691 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48691 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48691 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496318 () Bool)

(assert (=> b!1496318 (= e!838115 (= lt!652028 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652032 lt!652031 mask!2687)))))

(declare-fun b!1496319 () Bool)

(declare-fun res!1017739 () Bool)

(assert (=> b!1496319 (=> (not res!1017739) (not e!838121))))

(assert (=> b!1496319 (= res!1017739 (validKeyInArray!0 (select (arr!48140 a!2862) i!1006)))))

(declare-fun b!1496320 () Bool)

(declare-fun res!1017747 () Bool)

(assert (=> b!1496320 (=> (not res!1017747) (not e!838119))))

(assert (=> b!1496320 (= res!1017747 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!127386 res!1017742) b!1496299))

(assert (= (and b!1496299 res!1017733) b!1496319))

(assert (= (and b!1496319 res!1017739) b!1496311))

(assert (= (and b!1496311 res!1017741) b!1496306))

(assert (= (and b!1496306 res!1017738) b!1496308))

(assert (= (and b!1496308 res!1017740) b!1496317))

(assert (= (and b!1496317 res!1017735) b!1496316))

(assert (= (and b!1496316 res!1017737) b!1496312))

(assert (= (and b!1496312 res!1017734) b!1496302))

(assert (= (and b!1496302 res!1017746) b!1496305))

(assert (= (and b!1496305 res!1017748) b!1496309))

(assert (= (and b!1496309 c!138821) b!1496318))

(assert (= (and b!1496309 (not c!138821)) b!1496307))

(assert (= (and b!1496309 res!1017745) b!1496320))

(assert (= (and b!1496320 res!1017747) b!1496300))

(assert (= (and b!1496300 res!1017750) b!1496303))

(assert (= (and b!1496303 res!1017749) b!1496315))

(assert (= (and b!1496300 (not res!1017744)) b!1496314))

(assert (= (and b!1496314 (not res!1017743)) b!1496310))

(assert (= (and b!1496310 (not res!1017736)) b!1496313))

(assert (= (and b!1496313 c!138820) b!1496301))

(assert (= (and b!1496313 (not c!138820)) b!1496304))

(declare-fun m!1379551 () Bool)

(assert (=> b!1496301 m!1379551))

(declare-fun m!1379553 () Bool)

(assert (=> b!1496300 m!1379553))

(declare-fun m!1379555 () Bool)

(assert (=> b!1496300 m!1379555))

(declare-fun m!1379557 () Bool)

(assert (=> b!1496300 m!1379557))

(declare-fun m!1379559 () Bool)

(assert (=> b!1496300 m!1379559))

(declare-fun m!1379561 () Bool)

(assert (=> b!1496300 m!1379561))

(declare-fun m!1379563 () Bool)

(assert (=> b!1496300 m!1379563))

(declare-fun m!1379565 () Bool)

(assert (=> b!1496306 m!1379565))

(assert (=> b!1496310 m!1379563))

(assert (=> b!1496310 m!1379563))

(declare-fun m!1379567 () Bool)

(assert (=> b!1496310 m!1379567))

(declare-fun m!1379569 () Bool)

(assert (=> b!1496304 m!1379569))

(declare-fun m!1379571 () Bool)

(assert (=> b!1496304 m!1379571))

(assert (=> b!1496311 m!1379563))

(assert (=> b!1496311 m!1379563))

(declare-fun m!1379573 () Bool)

(assert (=> b!1496311 m!1379573))

(declare-fun m!1379575 () Bool)

(assert (=> b!1496305 m!1379575))

(assert (=> b!1496305 m!1379575))

(declare-fun m!1379577 () Bool)

(assert (=> b!1496305 m!1379577))

(assert (=> b!1496305 m!1379555))

(declare-fun m!1379579 () Bool)

(assert (=> b!1496305 m!1379579))

(assert (=> b!1496316 m!1379555))

(declare-fun m!1379581 () Bool)

(assert (=> b!1496316 m!1379581))

(declare-fun m!1379583 () Bool)

(assert (=> start!127386 m!1379583))

(declare-fun m!1379585 () Bool)

(assert (=> start!127386 m!1379585))

(assert (=> b!1496303 m!1379563))

(assert (=> b!1496303 m!1379563))

(declare-fun m!1379587 () Bool)

(assert (=> b!1496303 m!1379587))

(declare-fun m!1379589 () Bool)

(assert (=> b!1496308 m!1379589))

(declare-fun m!1379591 () Bool)

(assert (=> b!1496318 m!1379591))

(assert (=> b!1496302 m!1379563))

(assert (=> b!1496302 m!1379563))

(declare-fun m!1379593 () Bool)

(assert (=> b!1496302 m!1379593))

(assert (=> b!1496312 m!1379563))

(assert (=> b!1496312 m!1379563))

(declare-fun m!1379595 () Bool)

(assert (=> b!1496312 m!1379595))

(assert (=> b!1496312 m!1379595))

(assert (=> b!1496312 m!1379563))

(declare-fun m!1379597 () Bool)

(assert (=> b!1496312 m!1379597))

(declare-fun m!1379599 () Bool)

(assert (=> b!1496307 m!1379599))

(assert (=> b!1496307 m!1379571))

(declare-fun m!1379601 () Bool)

(assert (=> b!1496315 m!1379601))

(assert (=> b!1496315 m!1379563))

(declare-fun m!1379603 () Bool)

(assert (=> b!1496314 m!1379603))

(declare-fun m!1379605 () Bool)

(assert (=> b!1496319 m!1379605))

(assert (=> b!1496319 m!1379605))

(declare-fun m!1379607 () Bool)

(assert (=> b!1496319 m!1379607))

(check-sat (not b!1496311) (not b!1496307) (not b!1496305) (not b!1496310) (not b!1496301) (not b!1496318) (not b!1496302) (not b!1496300) (not b!1496312) (not start!127386) (not b!1496308) (not b!1496303) (not b!1496314) (not b!1496304) (not b!1496319) (not b!1496306))
