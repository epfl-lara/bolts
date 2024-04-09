; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125644 () Bool)

(assert start!125644)

(declare-fun b!1469801 () Bool)

(declare-fun e!825132 () Bool)

(assert (=> b!1469801 (= e!825132 (not true))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99009 0))(
  ( (array!99010 (arr!47788 (Array (_ BitVec 32) (_ BitVec 64))) (size!48339 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99009)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99009 (_ BitVec 32)) Bool)

(assert (=> b!1469801 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49390 0))(
  ( (Unit!49391) )
))
(declare-fun lt!642647 () Unit!49390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49390)

(assert (=> b!1469801 (= lt!642647 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1469802 () Bool)

(declare-fun res!998344 () Bool)

(assert (=> b!1469802 (=> (not res!998344) (not e!825132))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469802 (= res!998344 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1469803 () Bool)

(declare-fun res!998337 () Bool)

(declare-fun e!825137 () Bool)

(assert (=> b!1469803 (=> (not res!998337) (not e!825137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469803 (= res!998337 (validKeyInArray!0 (select (arr!47788 a!2862) j!93)))))

(declare-fun b!1469804 () Bool)

(declare-fun res!998339 () Bool)

(assert (=> b!1469804 (=> (not res!998339) (not e!825137))))

(assert (=> b!1469804 (= res!998339 (and (= (size!48339 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48339 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48339 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469805 () Bool)

(declare-fun e!825133 () Bool)

(assert (=> b!1469805 (= e!825133 e!825132)))

(declare-fun res!998346 () Bool)

(assert (=> b!1469805 (=> (not res!998346) (not e!825132))))

(declare-datatypes ((SeekEntryResult!12051 0))(
  ( (MissingZero!12051 (index!50595 (_ BitVec 32))) (Found!12051 (index!50596 (_ BitVec 32))) (Intermediate!12051 (undefined!12863 Bool) (index!50597 (_ BitVec 32)) (x!132175 (_ BitVec 32))) (Undefined!12051) (MissingVacant!12051 (index!50598 (_ BitVec 32))) )
))
(declare-fun lt!642645 () SeekEntryResult!12051)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469805 (= res!998346 (= lt!642645 (Intermediate!12051 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642646 () (_ BitVec 64))

(declare-fun lt!642649 () array!99009)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99009 (_ BitVec 32)) SeekEntryResult!12051)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469805 (= lt!642645 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642646 mask!2687) lt!642646 lt!642649 mask!2687))))

(assert (=> b!1469805 (= lt!642646 (select (store (arr!47788 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469806 () Bool)

(declare-fun res!998340 () Bool)

(assert (=> b!1469806 (=> (not res!998340) (not e!825137))))

(assert (=> b!1469806 (= res!998340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469807 () Bool)

(declare-fun res!998338 () Bool)

(assert (=> b!1469807 (=> (not res!998338) (not e!825137))))

(assert (=> b!1469807 (= res!998338 (validKeyInArray!0 (select (arr!47788 a!2862) i!1006)))))

(declare-fun b!1469808 () Bool)

(declare-fun e!825134 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1469808 (= e!825134 (= lt!642645 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642646 lt!642649 mask!2687)))))

(declare-fun res!998345 () Bool)

(assert (=> start!125644 (=> (not res!998345) (not e!825137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125644 (= res!998345 (validMask!0 mask!2687))))

(assert (=> start!125644 e!825137))

(assert (=> start!125644 true))

(declare-fun array_inv!36733 (array!99009) Bool)

(assert (=> start!125644 (array_inv!36733 a!2862)))

(declare-fun b!1469809 () Bool)

(declare-fun res!998349 () Bool)

(assert (=> b!1469809 (=> (not res!998349) (not e!825137))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1469809 (= res!998349 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48339 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48339 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48339 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469810 () Bool)

(declare-fun res!998348 () Bool)

(assert (=> b!1469810 (=> (not res!998348) (not e!825137))))

(declare-datatypes ((List!34469 0))(
  ( (Nil!34466) (Cons!34465 (h!35815 (_ BitVec 64)) (t!49170 List!34469)) )
))
(declare-fun arrayNoDuplicates!0 (array!99009 (_ BitVec 32) List!34469) Bool)

(assert (=> b!1469810 (= res!998348 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34466))))

(declare-fun b!1469811 () Bool)

(declare-fun e!825136 () Bool)

(assert (=> b!1469811 (= e!825136 e!825133)))

(declare-fun res!998347 () Bool)

(assert (=> b!1469811 (=> (not res!998347) (not e!825133))))

(declare-fun lt!642648 () SeekEntryResult!12051)

(assert (=> b!1469811 (= res!998347 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47788 a!2862) j!93) mask!2687) (select (arr!47788 a!2862) j!93) a!2862 mask!2687) lt!642648))))

(assert (=> b!1469811 (= lt!642648 (Intermediate!12051 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469812 () Bool)

(declare-fun res!998341 () Bool)

(assert (=> b!1469812 (=> (not res!998341) (not e!825132))))

(assert (=> b!1469812 (= res!998341 e!825134)))

(declare-fun c!135245 () Bool)

(assert (=> b!1469812 (= c!135245 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469813 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99009 (_ BitVec 32)) SeekEntryResult!12051)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99009 (_ BitVec 32)) SeekEntryResult!12051)

(assert (=> b!1469813 (= e!825134 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642646 lt!642649 mask!2687) (seekEntryOrOpen!0 lt!642646 lt!642649 mask!2687)))))

(declare-fun b!1469814 () Bool)

(declare-fun res!998343 () Bool)

(assert (=> b!1469814 (=> (not res!998343) (not e!825133))))

(assert (=> b!1469814 (= res!998343 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47788 a!2862) j!93) a!2862 mask!2687) lt!642648))))

(declare-fun b!1469815 () Bool)

(assert (=> b!1469815 (= e!825137 e!825136)))

(declare-fun res!998342 () Bool)

(assert (=> b!1469815 (=> (not res!998342) (not e!825136))))

(assert (=> b!1469815 (= res!998342 (= (select (store (arr!47788 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469815 (= lt!642649 (array!99010 (store (arr!47788 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48339 a!2862)))))

(assert (= (and start!125644 res!998345) b!1469804))

(assert (= (and b!1469804 res!998339) b!1469807))

(assert (= (and b!1469807 res!998338) b!1469803))

(assert (= (and b!1469803 res!998337) b!1469806))

(assert (= (and b!1469806 res!998340) b!1469810))

(assert (= (and b!1469810 res!998348) b!1469809))

(assert (= (and b!1469809 res!998349) b!1469815))

(assert (= (and b!1469815 res!998342) b!1469811))

(assert (= (and b!1469811 res!998347) b!1469814))

(assert (= (and b!1469814 res!998343) b!1469805))

(assert (= (and b!1469805 res!998346) b!1469812))

(assert (= (and b!1469812 c!135245) b!1469808))

(assert (= (and b!1469812 (not c!135245)) b!1469813))

(assert (= (and b!1469812 res!998341) b!1469802))

(assert (= (and b!1469802 res!998344) b!1469801))

(declare-fun m!1357005 () Bool)

(assert (=> b!1469801 m!1357005))

(declare-fun m!1357007 () Bool)

(assert (=> b!1469801 m!1357007))

(declare-fun m!1357009 () Bool)

(assert (=> b!1469810 m!1357009))

(declare-fun m!1357011 () Bool)

(assert (=> b!1469815 m!1357011))

(declare-fun m!1357013 () Bool)

(assert (=> b!1469815 m!1357013))

(declare-fun m!1357015 () Bool)

(assert (=> b!1469803 m!1357015))

(assert (=> b!1469803 m!1357015))

(declare-fun m!1357017 () Bool)

(assert (=> b!1469803 m!1357017))

(assert (=> b!1469814 m!1357015))

(assert (=> b!1469814 m!1357015))

(declare-fun m!1357019 () Bool)

(assert (=> b!1469814 m!1357019))

(declare-fun m!1357021 () Bool)

(assert (=> b!1469806 m!1357021))

(declare-fun m!1357023 () Bool)

(assert (=> b!1469808 m!1357023))

(declare-fun m!1357025 () Bool)

(assert (=> b!1469813 m!1357025))

(declare-fun m!1357027 () Bool)

(assert (=> b!1469813 m!1357027))

(assert (=> b!1469811 m!1357015))

(assert (=> b!1469811 m!1357015))

(declare-fun m!1357029 () Bool)

(assert (=> b!1469811 m!1357029))

(assert (=> b!1469811 m!1357029))

(assert (=> b!1469811 m!1357015))

(declare-fun m!1357031 () Bool)

(assert (=> b!1469811 m!1357031))

(declare-fun m!1357033 () Bool)

(assert (=> b!1469805 m!1357033))

(assert (=> b!1469805 m!1357033))

(declare-fun m!1357035 () Bool)

(assert (=> b!1469805 m!1357035))

(assert (=> b!1469805 m!1357011))

(declare-fun m!1357037 () Bool)

(assert (=> b!1469805 m!1357037))

(declare-fun m!1357039 () Bool)

(assert (=> b!1469807 m!1357039))

(assert (=> b!1469807 m!1357039))

(declare-fun m!1357041 () Bool)

(assert (=> b!1469807 m!1357041))

(declare-fun m!1357043 () Bool)

(assert (=> start!125644 m!1357043))

(declare-fun m!1357045 () Bool)

(assert (=> start!125644 m!1357045))

(push 1)

