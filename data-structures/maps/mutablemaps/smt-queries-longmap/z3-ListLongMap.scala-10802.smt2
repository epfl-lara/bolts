; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126444 () Bool)

(assert start!126444)

(declare-fun b!1481991 () Bool)

(declare-fun res!1007355 () Bool)

(declare-fun e!831119 () Bool)

(assert (=> b!1481991 (=> (not res!1007355) (not e!831119))))

(declare-datatypes ((array!99380 0))(
  ( (array!99381 (arr!47963 (Array (_ BitVec 32) (_ BitVec 64))) (size!48514 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99380)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481991 (= res!1007355 (validKeyInArray!0 (select (arr!47963 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1481992 () Bool)

(declare-datatypes ((SeekEntryResult!12226 0))(
  ( (MissingZero!12226 (index!51295 (_ BitVec 32))) (Found!12226 (index!51296 (_ BitVec 32))) (Intermediate!12226 (undefined!13038 Bool) (index!51297 (_ BitVec 32)) (x!132880 (_ BitVec 32))) (Undefined!12226) (MissingVacant!12226 (index!51298 (_ BitVec 32))) )
))
(declare-fun lt!646906 () SeekEntryResult!12226)

(declare-fun lt!646904 () array!99380)

(declare-fun e!831125 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!646903 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99380 (_ BitVec 32)) SeekEntryResult!12226)

(assert (=> b!1481992 (= e!831125 (= lt!646906 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646903 lt!646904 mask!2687)))))

(declare-fun b!1481994 () Bool)

(declare-fun res!1007350 () Bool)

(declare-fun e!831124 () Bool)

(assert (=> b!1481994 (=> (not res!1007350) (not e!831124))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481994 (= res!1007350 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481995 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99380 (_ BitVec 32)) SeekEntryResult!12226)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99380 (_ BitVec 32)) SeekEntryResult!12226)

(assert (=> b!1481995 (= e!831125 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646903 lt!646904 mask!2687) (seekEntryOrOpen!0 lt!646903 lt!646904 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!831123 () Bool)

(declare-fun b!1481996 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1481996 (= e!831123 (and (or (= (select (arr!47963 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47963 a!2862) intermediateBeforeIndex!19) (select (arr!47963 a!2862) j!93))) (or (and (= (select (arr!47963 a!2862) index!646) (select (store (arr!47963 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47963 a!2862) index!646) (select (arr!47963 a!2862) j!93))) (= (select (arr!47963 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47963 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481997 () Bool)

(declare-fun e!831121 () Bool)

(assert (=> b!1481997 (= e!831119 e!831121)))

(declare-fun res!1007363 () Bool)

(assert (=> b!1481997 (=> (not res!1007363) (not e!831121))))

(assert (=> b!1481997 (= res!1007363 (= (select (store (arr!47963 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481997 (= lt!646904 (array!99381 (store (arr!47963 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48514 a!2862)))))

(declare-fun b!1481998 () Bool)

(declare-fun res!1007364 () Bool)

(assert (=> b!1481998 (=> (not res!1007364) (not e!831124))))

(assert (=> b!1481998 (= res!1007364 e!831125)))

(declare-fun c!136844 () Bool)

(assert (=> b!1481998 (= c!136844 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481999 () Bool)

(assert (=> b!1481999 (= e!831124 (not true))))

(assert (=> b!1481999 e!831123))

(declare-fun res!1007362 () Bool)

(assert (=> b!1481999 (=> (not res!1007362) (not e!831123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99380 (_ BitVec 32)) Bool)

(assert (=> b!1481999 (= res!1007362 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49740 0))(
  ( (Unit!49741) )
))
(declare-fun lt!646905 () Unit!49740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49740)

(assert (=> b!1481999 (= lt!646905 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482000 () Bool)

(declare-fun res!1007352 () Bool)

(assert (=> b!1482000 (=> (not res!1007352) (not e!831119))))

(declare-datatypes ((List!34644 0))(
  ( (Nil!34641) (Cons!34640 (h!36011 (_ BitVec 64)) (t!49345 List!34644)) )
))
(declare-fun arrayNoDuplicates!0 (array!99380 (_ BitVec 32) List!34644) Bool)

(assert (=> b!1482000 (= res!1007352 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34641))))

(declare-fun res!1007358 () Bool)

(assert (=> start!126444 (=> (not res!1007358) (not e!831119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126444 (= res!1007358 (validMask!0 mask!2687))))

(assert (=> start!126444 e!831119))

(assert (=> start!126444 true))

(declare-fun array_inv!36908 (array!99380) Bool)

(assert (=> start!126444 (array_inv!36908 a!2862)))

(declare-fun b!1481993 () Bool)

(declare-fun e!831122 () Bool)

(assert (=> b!1481993 (= e!831121 e!831122)))

(declare-fun res!1007360 () Bool)

(assert (=> b!1481993 (=> (not res!1007360) (not e!831122))))

(declare-fun lt!646902 () SeekEntryResult!12226)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481993 (= res!1007360 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47963 a!2862) j!93) mask!2687) (select (arr!47963 a!2862) j!93) a!2862 mask!2687) lt!646902))))

(assert (=> b!1481993 (= lt!646902 (Intermediate!12226 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1482001 () Bool)

(declare-fun res!1007359 () Bool)

(assert (=> b!1482001 (=> (not res!1007359) (not e!831123))))

(assert (=> b!1482001 (= res!1007359 (= (seekEntryOrOpen!0 (select (arr!47963 a!2862) j!93) a!2862 mask!2687) (Found!12226 j!93)))))

(declare-fun b!1482002 () Bool)

(declare-fun res!1007354 () Bool)

(assert (=> b!1482002 (=> (not res!1007354) (not e!831119))))

(assert (=> b!1482002 (= res!1007354 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48514 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48514 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48514 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482003 () Bool)

(assert (=> b!1482003 (= e!831122 e!831124)))

(declare-fun res!1007351 () Bool)

(assert (=> b!1482003 (=> (not res!1007351) (not e!831124))))

(assert (=> b!1482003 (= res!1007351 (= lt!646906 (Intermediate!12226 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1482003 (= lt!646906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646903 mask!2687) lt!646903 lt!646904 mask!2687))))

(assert (=> b!1482003 (= lt!646903 (select (store (arr!47963 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482004 () Bool)

(declare-fun res!1007356 () Bool)

(assert (=> b!1482004 (=> (not res!1007356) (not e!831119))))

(assert (=> b!1482004 (= res!1007356 (and (= (size!48514 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48514 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48514 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482005 () Bool)

(declare-fun res!1007353 () Bool)

(assert (=> b!1482005 (=> (not res!1007353) (not e!831119))))

(assert (=> b!1482005 (= res!1007353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482006 () Bool)

(declare-fun res!1007361 () Bool)

(assert (=> b!1482006 (=> (not res!1007361) (not e!831119))))

(assert (=> b!1482006 (= res!1007361 (validKeyInArray!0 (select (arr!47963 a!2862) j!93)))))

(declare-fun b!1482007 () Bool)

(declare-fun res!1007357 () Bool)

(assert (=> b!1482007 (=> (not res!1007357) (not e!831122))))

(assert (=> b!1482007 (= res!1007357 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47963 a!2862) j!93) a!2862 mask!2687) lt!646902))))

(assert (= (and start!126444 res!1007358) b!1482004))

(assert (= (and b!1482004 res!1007356) b!1481991))

(assert (= (and b!1481991 res!1007355) b!1482006))

(assert (= (and b!1482006 res!1007361) b!1482005))

(assert (= (and b!1482005 res!1007353) b!1482000))

(assert (= (and b!1482000 res!1007352) b!1482002))

(assert (= (and b!1482002 res!1007354) b!1481997))

(assert (= (and b!1481997 res!1007363) b!1481993))

(assert (= (and b!1481993 res!1007360) b!1482007))

(assert (= (and b!1482007 res!1007357) b!1482003))

(assert (= (and b!1482003 res!1007351) b!1481998))

(assert (= (and b!1481998 c!136844) b!1481992))

(assert (= (and b!1481998 (not c!136844)) b!1481995))

(assert (= (and b!1481998 res!1007364) b!1481994))

(assert (= (and b!1481994 res!1007350) b!1481999))

(assert (= (and b!1481999 res!1007362) b!1482001))

(assert (= (and b!1482001 res!1007359) b!1481996))

(declare-fun m!1367777 () Bool)

(assert (=> start!126444 m!1367777))

(declare-fun m!1367779 () Bool)

(assert (=> start!126444 m!1367779))

(declare-fun m!1367781 () Bool)

(assert (=> b!1482006 m!1367781))

(assert (=> b!1482006 m!1367781))

(declare-fun m!1367783 () Bool)

(assert (=> b!1482006 m!1367783))

(declare-fun m!1367785 () Bool)

(assert (=> b!1481997 m!1367785))

(declare-fun m!1367787 () Bool)

(assert (=> b!1481997 m!1367787))

(declare-fun m!1367789 () Bool)

(assert (=> b!1481995 m!1367789))

(declare-fun m!1367791 () Bool)

(assert (=> b!1481995 m!1367791))

(declare-fun m!1367793 () Bool)

(assert (=> b!1481992 m!1367793))

(declare-fun m!1367795 () Bool)

(assert (=> b!1482005 m!1367795))

(declare-fun m!1367797 () Bool)

(assert (=> b!1481991 m!1367797))

(assert (=> b!1481991 m!1367797))

(declare-fun m!1367799 () Bool)

(assert (=> b!1481991 m!1367799))

(declare-fun m!1367801 () Bool)

(assert (=> b!1481999 m!1367801))

(declare-fun m!1367803 () Bool)

(assert (=> b!1481999 m!1367803))

(declare-fun m!1367805 () Bool)

(assert (=> b!1482003 m!1367805))

(assert (=> b!1482003 m!1367805))

(declare-fun m!1367807 () Bool)

(assert (=> b!1482003 m!1367807))

(assert (=> b!1482003 m!1367785))

(declare-fun m!1367809 () Bool)

(assert (=> b!1482003 m!1367809))

(assert (=> b!1482001 m!1367781))

(assert (=> b!1482001 m!1367781))

(declare-fun m!1367811 () Bool)

(assert (=> b!1482001 m!1367811))

(declare-fun m!1367813 () Bool)

(assert (=> b!1482000 m!1367813))

(assert (=> b!1481993 m!1367781))

(assert (=> b!1481993 m!1367781))

(declare-fun m!1367815 () Bool)

(assert (=> b!1481993 m!1367815))

(assert (=> b!1481993 m!1367815))

(assert (=> b!1481993 m!1367781))

(declare-fun m!1367817 () Bool)

(assert (=> b!1481993 m!1367817))

(assert (=> b!1482007 m!1367781))

(assert (=> b!1482007 m!1367781))

(declare-fun m!1367819 () Bool)

(assert (=> b!1482007 m!1367819))

(assert (=> b!1481996 m!1367785))

(declare-fun m!1367821 () Bool)

(assert (=> b!1481996 m!1367821))

(declare-fun m!1367823 () Bool)

(assert (=> b!1481996 m!1367823))

(declare-fun m!1367825 () Bool)

(assert (=> b!1481996 m!1367825))

(assert (=> b!1481996 m!1367781))

(check-sat (not start!126444) (not b!1482000) (not b!1481993) (not b!1481999) (not b!1482006) (not b!1481995) (not b!1482005) (not b!1482003) (not b!1482001) (not b!1481992) (not b!1481991) (not b!1482007))
(check-sat)
