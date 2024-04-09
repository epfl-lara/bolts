; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126526 () Bool)

(assert start!126526)

(declare-fun b!1482950 () Bool)

(declare-fun e!831593 () Bool)

(declare-fun e!831596 () Bool)

(assert (=> b!1482950 (= e!831593 e!831596)))

(declare-fun res!1007975 () Bool)

(assert (=> b!1482950 (=> (not res!1007975) (not e!831596))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99405 0))(
  ( (array!99406 (arr!47974 (Array (_ BitVec 32) (_ BitVec 64))) (size!48525 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99405)

(assert (=> b!1482950 (= res!1007975 (= (select (store (arr!47974 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647234 () array!99405)

(assert (=> b!1482950 (= lt!647234 (array!99406 (store (arr!47974 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48525 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!647232 () (_ BitVec 64))

(declare-fun e!831590 () Bool)

(declare-fun b!1482951 () Bool)

(declare-datatypes ((SeekEntryResult!12237 0))(
  ( (MissingZero!12237 (index!51339 (_ BitVec 32))) (Found!12237 (index!51340 (_ BitVec 32))) (Intermediate!12237 (undefined!13049 Bool) (index!51341 (_ BitVec 32)) (x!132932 (_ BitVec 32))) (Undefined!12237) (MissingVacant!12237 (index!51342 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99405 (_ BitVec 32)) SeekEntryResult!12237)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99405 (_ BitVec 32)) SeekEntryResult!12237)

(assert (=> b!1482951 (= e!831590 (= (seekEntryOrOpen!0 lt!647232 lt!647234 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647232 lt!647234 mask!2687)))))

(declare-fun b!1482952 () Bool)

(declare-fun e!831592 () Bool)

(declare-fun e!831599 () Bool)

(assert (=> b!1482952 (= e!831592 e!831599)))

(declare-fun res!1007981 () Bool)

(assert (=> b!1482952 (=> res!1007981 e!831599)))

(declare-fun lt!647231 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1482952 (= res!1007981 (or (and (= (select (arr!47974 a!2862) index!646) lt!647231) (= (select (arr!47974 a!2862) index!646) (select (arr!47974 a!2862) j!93))) (= (select (arr!47974 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1482952 (= lt!647231 (select (store (arr!47974 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1482953 () Bool)

(declare-fun res!1007972 () Bool)

(assert (=> b!1482953 (=> (not res!1007972) (not e!831593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482953 (= res!1007972 (validKeyInArray!0 (select (arr!47974 a!2862) i!1006)))))

(declare-fun b!1482954 () Bool)

(declare-fun res!1007976 () Bool)

(assert (=> b!1482954 (=> (not res!1007976) (not e!831593))))

(declare-datatypes ((List!34655 0))(
  ( (Nil!34652) (Cons!34651 (h!36025 (_ BitVec 64)) (t!49356 List!34655)) )
))
(declare-fun arrayNoDuplicates!0 (array!99405 (_ BitVec 32) List!34655) Bool)

(assert (=> b!1482954 (= res!1007976 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34652))))

(declare-fun b!1482955 () Bool)

(declare-fun res!1007987 () Bool)

(assert (=> b!1482955 (=> (not res!1007987) (not e!831592))))

(assert (=> b!1482955 (= res!1007987 (= (seekEntryOrOpen!0 (select (arr!47974 a!2862) j!93) a!2862 mask!2687) (Found!12237 j!93)))))

(declare-fun b!1482957 () Bool)

(declare-fun e!831595 () Bool)

(assert (=> b!1482957 (= e!831595 true)))

(declare-fun lt!647233 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482957 (= lt!647233 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1482958 () Bool)

(declare-fun res!1007979 () Bool)

(assert (=> b!1482958 (=> (not res!1007979) (not e!831593))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482958 (= res!1007979 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48525 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48525 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48525 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482959 () Bool)

(declare-fun res!1007980 () Bool)

(assert (=> b!1482959 (=> (not res!1007980) (not e!831593))))

(assert (=> b!1482959 (= res!1007980 (and (= (size!48525 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48525 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48525 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!647235 () SeekEntryResult!12237)

(declare-fun b!1482960 () Bool)

(declare-fun e!831591 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99405 (_ BitVec 32)) SeekEntryResult!12237)

(assert (=> b!1482960 (= e!831591 (= lt!647235 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647232 lt!647234 mask!2687)))))

(declare-fun b!1482961 () Bool)

(declare-fun res!1007978 () Bool)

(assert (=> b!1482961 (=> (not res!1007978) (not e!831593))))

(assert (=> b!1482961 (= res!1007978 (validKeyInArray!0 (select (arr!47974 a!2862) j!93)))))

(declare-fun b!1482962 () Bool)

(declare-fun e!831597 () Bool)

(assert (=> b!1482962 (= e!831597 (not e!831595))))

(declare-fun res!1007977 () Bool)

(assert (=> b!1482962 (=> res!1007977 e!831595)))

(assert (=> b!1482962 (= res!1007977 (or (and (= (select (arr!47974 a!2862) index!646) (select (store (arr!47974 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47974 a!2862) index!646) (select (arr!47974 a!2862) j!93))) (= (select (arr!47974 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1482962 e!831592))

(declare-fun res!1007970 () Bool)

(assert (=> b!1482962 (=> (not res!1007970) (not e!831592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99405 (_ BitVec 32)) Bool)

(assert (=> b!1482962 (= res!1007970 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49762 0))(
  ( (Unit!49763) )
))
(declare-fun lt!647236 () Unit!49762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49762)

(assert (=> b!1482962 (= lt!647236 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482963 () Bool)

(declare-fun e!831598 () Bool)

(assert (=> b!1482963 (= e!831598 e!831597)))

(declare-fun res!1007982 () Bool)

(assert (=> b!1482963 (=> (not res!1007982) (not e!831597))))

(assert (=> b!1482963 (= res!1007982 (= lt!647235 (Intermediate!12237 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482963 (= lt!647235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647232 mask!2687) lt!647232 lt!647234 mask!2687))))

(assert (=> b!1482963 (= lt!647232 (select (store (arr!47974 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482964 () Bool)

(declare-fun res!1007985 () Bool)

(assert (=> b!1482964 (=> (not res!1007985) (not e!831597))))

(assert (=> b!1482964 (= res!1007985 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482965 () Bool)

(assert (=> b!1482965 (= e!831599 e!831590)))

(declare-fun res!1007986 () Bool)

(assert (=> b!1482965 (=> (not res!1007986) (not e!831590))))

(assert (=> b!1482965 (= res!1007986 (and (= index!646 intermediateAfterIndex!19) (= lt!647231 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482966 () Bool)

(declare-fun res!1007983 () Bool)

(assert (=> b!1482966 (=> (not res!1007983) (not e!831592))))

(assert (=> b!1482966 (= res!1007983 (or (= (select (arr!47974 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47974 a!2862) intermediateBeforeIndex!19) (select (arr!47974 a!2862) j!93))))))

(declare-fun b!1482967 () Bool)

(assert (=> b!1482967 (= e!831591 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647232 lt!647234 mask!2687) (seekEntryOrOpen!0 lt!647232 lt!647234 mask!2687)))))

(declare-fun b!1482968 () Bool)

(declare-fun res!1007988 () Bool)

(assert (=> b!1482968 (=> (not res!1007988) (not e!831593))))

(assert (=> b!1482968 (= res!1007988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482969 () Bool)

(declare-fun res!1007973 () Bool)

(assert (=> b!1482969 (=> (not res!1007973) (not e!831598))))

(declare-fun lt!647230 () SeekEntryResult!12237)

(assert (=> b!1482969 (= res!1007973 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47974 a!2862) j!93) a!2862 mask!2687) lt!647230))))

(declare-fun b!1482970 () Bool)

(declare-fun res!1007974 () Bool)

(assert (=> b!1482970 (=> (not res!1007974) (not e!831597))))

(assert (=> b!1482970 (= res!1007974 e!831591)))

(declare-fun c!137015 () Bool)

(assert (=> b!1482970 (= c!137015 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1007971 () Bool)

(assert (=> start!126526 (=> (not res!1007971) (not e!831593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126526 (= res!1007971 (validMask!0 mask!2687))))

(assert (=> start!126526 e!831593))

(assert (=> start!126526 true))

(declare-fun array_inv!36919 (array!99405) Bool)

(assert (=> start!126526 (array_inv!36919 a!2862)))

(declare-fun b!1482956 () Bool)

(assert (=> b!1482956 (= e!831596 e!831598)))

(declare-fun res!1007984 () Bool)

(assert (=> b!1482956 (=> (not res!1007984) (not e!831598))))

(assert (=> b!1482956 (= res!1007984 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47974 a!2862) j!93) mask!2687) (select (arr!47974 a!2862) j!93) a!2862 mask!2687) lt!647230))))

(assert (=> b!1482956 (= lt!647230 (Intermediate!12237 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126526 res!1007971) b!1482959))

(assert (= (and b!1482959 res!1007980) b!1482953))

(assert (= (and b!1482953 res!1007972) b!1482961))

(assert (= (and b!1482961 res!1007978) b!1482968))

(assert (= (and b!1482968 res!1007988) b!1482954))

(assert (= (and b!1482954 res!1007976) b!1482958))

(assert (= (and b!1482958 res!1007979) b!1482950))

(assert (= (and b!1482950 res!1007975) b!1482956))

(assert (= (and b!1482956 res!1007984) b!1482969))

(assert (= (and b!1482969 res!1007973) b!1482963))

(assert (= (and b!1482963 res!1007982) b!1482970))

(assert (= (and b!1482970 c!137015) b!1482960))

(assert (= (and b!1482970 (not c!137015)) b!1482967))

(assert (= (and b!1482970 res!1007974) b!1482964))

(assert (= (and b!1482964 res!1007985) b!1482962))

(assert (= (and b!1482962 res!1007970) b!1482955))

(assert (= (and b!1482955 res!1007987) b!1482966))

(assert (= (and b!1482966 res!1007983) b!1482952))

(assert (= (and b!1482952 (not res!1007981)) b!1482965))

(assert (= (and b!1482965 res!1007986) b!1482951))

(assert (= (and b!1482962 (not res!1007977)) b!1482957))

(declare-fun m!1368561 () Bool)

(assert (=> b!1482957 m!1368561))

(declare-fun m!1368563 () Bool)

(assert (=> b!1482963 m!1368563))

(assert (=> b!1482963 m!1368563))

(declare-fun m!1368565 () Bool)

(assert (=> b!1482963 m!1368565))

(declare-fun m!1368567 () Bool)

(assert (=> b!1482963 m!1368567))

(declare-fun m!1368569 () Bool)

(assert (=> b!1482963 m!1368569))

(declare-fun m!1368571 () Bool)

(assert (=> b!1482954 m!1368571))

(declare-fun m!1368573 () Bool)

(assert (=> b!1482955 m!1368573))

(assert (=> b!1482955 m!1368573))

(declare-fun m!1368575 () Bool)

(assert (=> b!1482955 m!1368575))

(assert (=> b!1482961 m!1368573))

(assert (=> b!1482961 m!1368573))

(declare-fun m!1368577 () Bool)

(assert (=> b!1482961 m!1368577))

(assert (=> b!1482950 m!1368567))

(declare-fun m!1368579 () Bool)

(assert (=> b!1482950 m!1368579))

(declare-fun m!1368581 () Bool)

(assert (=> start!126526 m!1368581))

(declare-fun m!1368583 () Bool)

(assert (=> start!126526 m!1368583))

(declare-fun m!1368585 () Bool)

(assert (=> b!1482966 m!1368585))

(assert (=> b!1482966 m!1368573))

(declare-fun m!1368587 () Bool)

(assert (=> b!1482962 m!1368587))

(assert (=> b!1482962 m!1368567))

(declare-fun m!1368589 () Bool)

(assert (=> b!1482962 m!1368589))

(declare-fun m!1368591 () Bool)

(assert (=> b!1482962 m!1368591))

(declare-fun m!1368593 () Bool)

(assert (=> b!1482962 m!1368593))

(assert (=> b!1482962 m!1368573))

(declare-fun m!1368595 () Bool)

(assert (=> b!1482951 m!1368595))

(declare-fun m!1368597 () Bool)

(assert (=> b!1482951 m!1368597))

(assert (=> b!1482969 m!1368573))

(assert (=> b!1482969 m!1368573))

(declare-fun m!1368599 () Bool)

(assert (=> b!1482969 m!1368599))

(declare-fun m!1368601 () Bool)

(assert (=> b!1482960 m!1368601))

(declare-fun m!1368603 () Bool)

(assert (=> b!1482968 m!1368603))

(assert (=> b!1482956 m!1368573))

(assert (=> b!1482956 m!1368573))

(declare-fun m!1368605 () Bool)

(assert (=> b!1482956 m!1368605))

(assert (=> b!1482956 m!1368605))

(assert (=> b!1482956 m!1368573))

(declare-fun m!1368607 () Bool)

(assert (=> b!1482956 m!1368607))

(assert (=> b!1482952 m!1368591))

(assert (=> b!1482952 m!1368573))

(assert (=> b!1482952 m!1368567))

(assert (=> b!1482952 m!1368589))

(assert (=> b!1482967 m!1368597))

(assert (=> b!1482967 m!1368595))

(declare-fun m!1368609 () Bool)

(assert (=> b!1482953 m!1368609))

(assert (=> b!1482953 m!1368609))

(declare-fun m!1368611 () Bool)

(assert (=> b!1482953 m!1368611))

(push 1)

