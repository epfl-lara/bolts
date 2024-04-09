; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126224 () Bool)

(assert start!126224)

(declare-fun b!1477808 () Bool)

(declare-fun e!829061 () Bool)

(declare-fun e!829058 () Bool)

(assert (=> b!1477808 (= e!829061 e!829058)))

(declare-fun res!1003999 () Bool)

(assert (=> b!1477808 (=> (not res!1003999) (not e!829058))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99247 0))(
  ( (array!99248 (arr!47898 (Array (_ BitVec 32) (_ BitVec 64))) (size!48449 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99247)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12161 0))(
  ( (MissingZero!12161 (index!51035 (_ BitVec 32))) (Found!12161 (index!51036 (_ BitVec 32))) (Intermediate!12161 (undefined!12973 Bool) (index!51037 (_ BitVec 32)) (x!132627 (_ BitVec 32))) (Undefined!12161) (MissingVacant!12161 (index!51038 (_ BitVec 32))) )
))
(declare-fun lt!645438 () SeekEntryResult!12161)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99247 (_ BitVec 32)) SeekEntryResult!12161)

(assert (=> b!1477808 (= res!1003999 (= lt!645438 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47898 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477810 () Bool)

(declare-fun res!1003997 () Bool)

(declare-fun e!829059 () Bool)

(assert (=> b!1477810 (=> (not res!1003997) (not e!829059))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477810 (= res!1003997 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!829055 () Bool)

(declare-fun lt!645437 () (_ BitVec 64))

(declare-fun b!1477811 () Bool)

(declare-fun lt!645440 () array!99247)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99247 (_ BitVec 32)) SeekEntryResult!12161)

(assert (=> b!1477811 (= e!829055 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645437 lt!645440 mask!2687) (seekEntryOrOpen!0 lt!645437 lt!645440 mask!2687)))))

(declare-fun b!1477812 () Bool)

(declare-fun res!1004006 () Bool)

(declare-fun e!829057 () Bool)

(assert (=> b!1477812 (=> (not res!1004006) (not e!829057))))

(declare-datatypes ((List!34579 0))(
  ( (Nil!34576) (Cons!34575 (h!35943 (_ BitVec 64)) (t!49280 List!34579)) )
))
(declare-fun arrayNoDuplicates!0 (array!99247 (_ BitVec 32) List!34579) Bool)

(assert (=> b!1477812 (= res!1004006 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34576))))

(declare-fun b!1477813 () Bool)

(declare-fun e!829056 () Bool)

(assert (=> b!1477813 (= e!829056 e!829059)))

(declare-fun res!1004001 () Bool)

(assert (=> b!1477813 (=> (not res!1004001) (not e!829059))))

(declare-fun lt!645441 () SeekEntryResult!12161)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477813 (= res!1004001 (= lt!645441 (Intermediate!12161 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99247 (_ BitVec 32)) SeekEntryResult!12161)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477813 (= lt!645441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645437 mask!2687) lt!645437 lt!645440 mask!2687))))

(assert (=> b!1477813 (= lt!645437 (select (store (arr!47898 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477814 () Bool)

(assert (=> b!1477814 (= e!829059 (not true))))

(declare-fun e!829060 () Bool)

(assert (=> b!1477814 e!829060))

(declare-fun res!1004004 () Bool)

(assert (=> b!1477814 (=> (not res!1004004) (not e!829060))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1477814 (= res!1004004 (and (= lt!645438 (Found!12161 j!93)) (or (= (select (arr!47898 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47898 a!2862) intermediateBeforeIndex!19) (select (arr!47898 a!2862) j!93)))))))

(assert (=> b!1477814 (= lt!645438 (seekEntryOrOpen!0 (select (arr!47898 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99247 (_ BitVec 32)) Bool)

(assert (=> b!1477814 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49610 0))(
  ( (Unit!49611) )
))
(declare-fun lt!645442 () Unit!49610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99247 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49610)

(assert (=> b!1477814 (= lt!645442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477815 () Bool)

(declare-fun res!1004005 () Bool)

(assert (=> b!1477815 (=> (not res!1004005) (not e!829057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477815 (= res!1004005 (validKeyInArray!0 (select (arr!47898 a!2862) j!93)))))

(declare-fun b!1477816 () Bool)

(declare-fun res!1004003 () Bool)

(assert (=> b!1477816 (=> (not res!1004003) (not e!829056))))

(declare-fun lt!645439 () SeekEntryResult!12161)

(assert (=> b!1477816 (= res!1004003 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47898 a!2862) j!93) a!2862 mask!2687) lt!645439))))

(declare-fun b!1477817 () Bool)

(assert (=> b!1477817 (= e!829058 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477809 () Bool)

(declare-fun e!829054 () Bool)

(assert (=> b!1477809 (= e!829054 e!829056)))

(declare-fun res!1003994 () Bool)

(assert (=> b!1477809 (=> (not res!1003994) (not e!829056))))

(assert (=> b!1477809 (= res!1003994 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47898 a!2862) j!93) mask!2687) (select (arr!47898 a!2862) j!93) a!2862 mask!2687) lt!645439))))

(assert (=> b!1477809 (= lt!645439 (Intermediate!12161 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1003992 () Bool)

(assert (=> start!126224 (=> (not res!1003992) (not e!829057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126224 (= res!1003992 (validMask!0 mask!2687))))

(assert (=> start!126224 e!829057))

(assert (=> start!126224 true))

(declare-fun array_inv!36843 (array!99247) Bool)

(assert (=> start!126224 (array_inv!36843 a!2862)))

(declare-fun b!1477818 () Bool)

(declare-fun res!1004002 () Bool)

(assert (=> b!1477818 (=> (not res!1004002) (not e!829057))))

(assert (=> b!1477818 (= res!1004002 (and (= (size!48449 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48449 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48449 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477819 () Bool)

(declare-fun res!1003996 () Bool)

(assert (=> b!1477819 (=> (not res!1003996) (not e!829057))))

(assert (=> b!1477819 (= res!1003996 (validKeyInArray!0 (select (arr!47898 a!2862) i!1006)))))

(declare-fun b!1477820 () Bool)

(assert (=> b!1477820 (= e!829060 e!829061)))

(declare-fun res!1004007 () Bool)

(assert (=> b!1477820 (=> res!1004007 e!829061)))

(assert (=> b!1477820 (= res!1004007 (or (and (= (select (arr!47898 a!2862) index!646) (select (store (arr!47898 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47898 a!2862) index!646) (select (arr!47898 a!2862) j!93))) (not (= (select (arr!47898 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477821 () Bool)

(declare-fun res!1003993 () Bool)

(assert (=> b!1477821 (=> (not res!1003993) (not e!829057))))

(assert (=> b!1477821 (= res!1003993 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48449 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48449 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48449 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477822 () Bool)

(declare-fun res!1003995 () Bool)

(assert (=> b!1477822 (=> (not res!1003995) (not e!829059))))

(assert (=> b!1477822 (= res!1003995 e!829055)))

(declare-fun c!136430 () Bool)

(assert (=> b!1477822 (= c!136430 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477823 () Bool)

(declare-fun res!1004000 () Bool)

(assert (=> b!1477823 (=> (not res!1004000) (not e!829057))))

(assert (=> b!1477823 (= res!1004000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477824 () Bool)

(assert (=> b!1477824 (= e!829057 e!829054)))

(declare-fun res!1003998 () Bool)

(assert (=> b!1477824 (=> (not res!1003998) (not e!829054))))

(assert (=> b!1477824 (= res!1003998 (= (select (store (arr!47898 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477824 (= lt!645440 (array!99248 (store (arr!47898 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48449 a!2862)))))

(declare-fun b!1477825 () Bool)

(assert (=> b!1477825 (= e!829055 (= lt!645441 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645437 lt!645440 mask!2687)))))

(assert (= (and start!126224 res!1003992) b!1477818))

(assert (= (and b!1477818 res!1004002) b!1477819))

(assert (= (and b!1477819 res!1003996) b!1477815))

(assert (= (and b!1477815 res!1004005) b!1477823))

(assert (= (and b!1477823 res!1004000) b!1477812))

(assert (= (and b!1477812 res!1004006) b!1477821))

(assert (= (and b!1477821 res!1003993) b!1477824))

(assert (= (and b!1477824 res!1003998) b!1477809))

(assert (= (and b!1477809 res!1003994) b!1477816))

(assert (= (and b!1477816 res!1004003) b!1477813))

(assert (= (and b!1477813 res!1004001) b!1477822))

(assert (= (and b!1477822 c!136430) b!1477825))

(assert (= (and b!1477822 (not c!136430)) b!1477811))

(assert (= (and b!1477822 res!1003995) b!1477810))

(assert (= (and b!1477810 res!1003997) b!1477814))

(assert (= (and b!1477814 res!1004004) b!1477820))

(assert (= (and b!1477820 (not res!1004007)) b!1477808))

(assert (= (and b!1477808 res!1003999) b!1477817))

(declare-fun m!1363799 () Bool)

(assert (=> b!1477816 m!1363799))

(assert (=> b!1477816 m!1363799))

(declare-fun m!1363801 () Bool)

(assert (=> b!1477816 m!1363801))

(declare-fun m!1363803 () Bool)

(assert (=> b!1477819 m!1363803))

(assert (=> b!1477819 m!1363803))

(declare-fun m!1363805 () Bool)

(assert (=> b!1477819 m!1363805))

(assert (=> b!1477809 m!1363799))

(assert (=> b!1477809 m!1363799))

(declare-fun m!1363807 () Bool)

(assert (=> b!1477809 m!1363807))

(assert (=> b!1477809 m!1363807))

(assert (=> b!1477809 m!1363799))

(declare-fun m!1363809 () Bool)

(assert (=> b!1477809 m!1363809))

(declare-fun m!1363811 () Bool)

(assert (=> b!1477824 m!1363811))

(declare-fun m!1363813 () Bool)

(assert (=> b!1477824 m!1363813))

(declare-fun m!1363815 () Bool)

(assert (=> b!1477814 m!1363815))

(declare-fun m!1363817 () Bool)

(assert (=> b!1477814 m!1363817))

(assert (=> b!1477814 m!1363799))

(declare-fun m!1363819 () Bool)

(assert (=> b!1477814 m!1363819))

(declare-fun m!1363821 () Bool)

(assert (=> b!1477814 m!1363821))

(assert (=> b!1477814 m!1363799))

(assert (=> b!1477808 m!1363799))

(assert (=> b!1477808 m!1363799))

(declare-fun m!1363823 () Bool)

(assert (=> b!1477808 m!1363823))

(declare-fun m!1363825 () Bool)

(assert (=> b!1477823 m!1363825))

(declare-fun m!1363827 () Bool)

(assert (=> b!1477820 m!1363827))

(assert (=> b!1477820 m!1363811))

(declare-fun m!1363829 () Bool)

(assert (=> b!1477820 m!1363829))

(assert (=> b!1477820 m!1363799))

(assert (=> b!1477815 m!1363799))

(assert (=> b!1477815 m!1363799))

(declare-fun m!1363831 () Bool)

(assert (=> b!1477815 m!1363831))

(declare-fun m!1363833 () Bool)

(assert (=> b!1477825 m!1363833))

(declare-fun m!1363835 () Bool)

(assert (=> b!1477812 m!1363835))

(declare-fun m!1363837 () Bool)

(assert (=> b!1477813 m!1363837))

(assert (=> b!1477813 m!1363837))

(declare-fun m!1363839 () Bool)

(assert (=> b!1477813 m!1363839))

(assert (=> b!1477813 m!1363811))

(declare-fun m!1363841 () Bool)

(assert (=> b!1477813 m!1363841))

(declare-fun m!1363843 () Bool)

(assert (=> start!126224 m!1363843))

(declare-fun m!1363845 () Bool)

(assert (=> start!126224 m!1363845))

(declare-fun m!1363847 () Bool)

(assert (=> b!1477811 m!1363847))

(declare-fun m!1363849 () Bool)

(assert (=> b!1477811 m!1363849))

(push 1)

