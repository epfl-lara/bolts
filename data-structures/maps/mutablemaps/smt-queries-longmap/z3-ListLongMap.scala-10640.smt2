; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125022 () Bool)

(assert start!125022)

(declare-fun b!1452960 () Bool)

(declare-fun res!984119 () Bool)

(declare-fun e!817883 () Bool)

(assert (=> b!1452960 (=> (not res!984119) (not e!817883))))

(declare-fun e!817882 () Bool)

(assert (=> b!1452960 (= res!984119 e!817882)))

(declare-fun c!133934 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452960 (= c!133934 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452961 () Bool)

(declare-fun res!984135 () Bool)

(assert (=> b!1452961 (=> (not res!984135) (not e!817883))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452961 (= res!984135 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452962 () Bool)

(declare-fun res!984124 () Bool)

(declare-fun e!817879 () Bool)

(assert (=> b!1452962 (=> (not res!984124) (not e!817879))))

(declare-datatypes ((array!98387 0))(
  ( (array!98388 (arr!47477 (Array (_ BitVec 32) (_ BitVec 64))) (size!48028 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98387)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11752 0))(
  ( (MissingZero!11752 (index!49399 (_ BitVec 32))) (Found!11752 (index!49400 (_ BitVec 32))) (Intermediate!11752 (undefined!12564 Bool) (index!49401 (_ BitVec 32)) (x!131044 (_ BitVec 32))) (Undefined!11752) (MissingVacant!11752 (index!49402 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98387 (_ BitVec 32)) SeekEntryResult!11752)

(assert (=> b!1452962 (= res!984124 (= (seekEntryOrOpen!0 (select (arr!47477 a!2862) j!93) a!2862 mask!2687) (Found!11752 j!93)))))

(declare-fun b!1452963 () Bool)

(declare-fun res!984120 () Bool)

(declare-fun e!817878 () Bool)

(assert (=> b!1452963 (=> (not res!984120) (not e!817878))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1452963 (= res!984120 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48028 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48028 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48028 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452964 () Bool)

(assert (=> b!1452964 (= e!817883 (not true))))

(assert (=> b!1452964 e!817879))

(declare-fun res!984131 () Bool)

(assert (=> b!1452964 (=> (not res!984131) (not e!817879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98387 (_ BitVec 32)) Bool)

(assert (=> b!1452964 (= res!984131 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48948 0))(
  ( (Unit!48949) )
))
(declare-fun lt!637062 () Unit!48948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98387 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48948)

(assert (=> b!1452964 (= lt!637062 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!637059 () array!98387)

(declare-fun b!1452966 () Bool)

(declare-fun e!817876 () Bool)

(declare-fun lt!637063 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98387 (_ BitVec 32)) SeekEntryResult!11752)

(assert (=> b!1452966 (= e!817876 (= (seekEntryOrOpen!0 lt!637063 lt!637059 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637063 lt!637059 mask!2687)))))

(declare-fun b!1452967 () Bool)

(declare-fun res!984129 () Bool)

(assert (=> b!1452967 (=> (not res!984129) (not e!817878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452967 (= res!984129 (validKeyInArray!0 (select (arr!47477 a!2862) i!1006)))))

(declare-fun b!1452968 () Bool)

(declare-fun e!817877 () Bool)

(declare-fun e!817880 () Bool)

(assert (=> b!1452968 (= e!817877 e!817880)))

(declare-fun res!984128 () Bool)

(assert (=> b!1452968 (=> (not res!984128) (not e!817880))))

(declare-fun lt!637061 () SeekEntryResult!11752)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98387 (_ BitVec 32)) SeekEntryResult!11752)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452968 (= res!984128 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47477 a!2862) j!93) mask!2687) (select (arr!47477 a!2862) j!93) a!2862 mask!2687) lt!637061))))

(assert (=> b!1452968 (= lt!637061 (Intermediate!11752 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452969 () Bool)

(declare-fun res!984132 () Bool)

(assert (=> b!1452969 (=> (not res!984132) (not e!817879))))

(assert (=> b!1452969 (= res!984132 (or (= (select (arr!47477 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47477 a!2862) intermediateBeforeIndex!19) (select (arr!47477 a!2862) j!93))))))

(declare-fun b!1452970 () Bool)

(declare-fun e!817875 () Bool)

(assert (=> b!1452970 (= e!817875 e!817876)))

(declare-fun res!984118 () Bool)

(assert (=> b!1452970 (=> (not res!984118) (not e!817876))))

(declare-fun lt!637060 () (_ BitVec 64))

(assert (=> b!1452970 (= res!984118 (and (= index!646 intermediateAfterIndex!19) (= lt!637060 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1452971 () Bool)

(declare-fun res!984121 () Bool)

(assert (=> b!1452971 (=> (not res!984121) (not e!817878))))

(declare-datatypes ((List!34158 0))(
  ( (Nil!34155) (Cons!34154 (h!35504 (_ BitVec 64)) (t!48859 List!34158)) )
))
(declare-fun arrayNoDuplicates!0 (array!98387 (_ BitVec 32) List!34158) Bool)

(assert (=> b!1452971 (= res!984121 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34155))))

(declare-fun b!1452972 () Bool)

(assert (=> b!1452972 (= e!817878 e!817877)))

(declare-fun res!984130 () Bool)

(assert (=> b!1452972 (=> (not res!984130) (not e!817877))))

(assert (=> b!1452972 (= res!984130 (= (select (store (arr!47477 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452972 (= lt!637059 (array!98388 (store (arr!47477 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48028 a!2862)))))

(declare-fun b!1452973 () Bool)

(assert (=> b!1452973 (= e!817882 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637063 lt!637059 mask!2687) (seekEntryOrOpen!0 lt!637063 lt!637059 mask!2687)))))

(declare-fun lt!637058 () SeekEntryResult!11752)

(declare-fun b!1452974 () Bool)

(assert (=> b!1452974 (= e!817882 (= lt!637058 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637063 lt!637059 mask!2687)))))

(declare-fun b!1452975 () Bool)

(assert (=> b!1452975 (= e!817879 e!817875)))

(declare-fun res!984126 () Bool)

(assert (=> b!1452975 (=> res!984126 e!817875)))

(assert (=> b!1452975 (= res!984126 (or (and (= (select (arr!47477 a!2862) index!646) lt!637060) (= (select (arr!47477 a!2862) index!646) (select (arr!47477 a!2862) j!93))) (= (select (arr!47477 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1452975 (= lt!637060 (select (store (arr!47477 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1452976 () Bool)

(declare-fun res!984127 () Bool)

(assert (=> b!1452976 (=> (not res!984127) (not e!817880))))

(assert (=> b!1452976 (= res!984127 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47477 a!2862) j!93) a!2862 mask!2687) lt!637061))))

(declare-fun b!1452977 () Bool)

(declare-fun res!984123 () Bool)

(assert (=> b!1452977 (=> (not res!984123) (not e!817878))))

(assert (=> b!1452977 (= res!984123 (validKeyInArray!0 (select (arr!47477 a!2862) j!93)))))

(declare-fun b!1452965 () Bool)

(assert (=> b!1452965 (= e!817880 e!817883)))

(declare-fun res!984122 () Bool)

(assert (=> b!1452965 (=> (not res!984122) (not e!817883))))

(assert (=> b!1452965 (= res!984122 (= lt!637058 (Intermediate!11752 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452965 (= lt!637058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637063 mask!2687) lt!637063 lt!637059 mask!2687))))

(assert (=> b!1452965 (= lt!637063 (select (store (arr!47477 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!984134 () Bool)

(assert (=> start!125022 (=> (not res!984134) (not e!817878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125022 (= res!984134 (validMask!0 mask!2687))))

(assert (=> start!125022 e!817878))

(assert (=> start!125022 true))

(declare-fun array_inv!36422 (array!98387) Bool)

(assert (=> start!125022 (array_inv!36422 a!2862)))

(declare-fun b!1452978 () Bool)

(declare-fun res!984133 () Bool)

(assert (=> b!1452978 (=> (not res!984133) (not e!817878))))

(assert (=> b!1452978 (= res!984133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452979 () Bool)

(declare-fun res!984125 () Bool)

(assert (=> b!1452979 (=> (not res!984125) (not e!817878))))

(assert (=> b!1452979 (= res!984125 (and (= (size!48028 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48028 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48028 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125022 res!984134) b!1452979))

(assert (= (and b!1452979 res!984125) b!1452967))

(assert (= (and b!1452967 res!984129) b!1452977))

(assert (= (and b!1452977 res!984123) b!1452978))

(assert (= (and b!1452978 res!984133) b!1452971))

(assert (= (and b!1452971 res!984121) b!1452963))

(assert (= (and b!1452963 res!984120) b!1452972))

(assert (= (and b!1452972 res!984130) b!1452968))

(assert (= (and b!1452968 res!984128) b!1452976))

(assert (= (and b!1452976 res!984127) b!1452965))

(assert (= (and b!1452965 res!984122) b!1452960))

(assert (= (and b!1452960 c!133934) b!1452974))

(assert (= (and b!1452960 (not c!133934)) b!1452973))

(assert (= (and b!1452960 res!984119) b!1452961))

(assert (= (and b!1452961 res!984135) b!1452964))

(assert (= (and b!1452964 res!984131) b!1452962))

(assert (= (and b!1452962 res!984124) b!1452969))

(assert (= (and b!1452969 res!984132) b!1452975))

(assert (= (and b!1452975 (not res!984126)) b!1452970))

(assert (= (and b!1452970 res!984118) b!1452966))

(declare-fun m!1341563 () Bool)

(assert (=> b!1452965 m!1341563))

(assert (=> b!1452965 m!1341563))

(declare-fun m!1341565 () Bool)

(assert (=> b!1452965 m!1341565))

(declare-fun m!1341567 () Bool)

(assert (=> b!1452965 m!1341567))

(declare-fun m!1341569 () Bool)

(assert (=> b!1452965 m!1341569))

(declare-fun m!1341571 () Bool)

(assert (=> b!1452971 m!1341571))

(declare-fun m!1341573 () Bool)

(assert (=> b!1452975 m!1341573))

(declare-fun m!1341575 () Bool)

(assert (=> b!1452975 m!1341575))

(assert (=> b!1452975 m!1341567))

(declare-fun m!1341577 () Bool)

(assert (=> b!1452975 m!1341577))

(declare-fun m!1341579 () Bool)

(assert (=> start!125022 m!1341579))

(declare-fun m!1341581 () Bool)

(assert (=> start!125022 m!1341581))

(assert (=> b!1452977 m!1341575))

(assert (=> b!1452977 m!1341575))

(declare-fun m!1341583 () Bool)

(assert (=> b!1452977 m!1341583))

(declare-fun m!1341585 () Bool)

(assert (=> b!1452964 m!1341585))

(declare-fun m!1341587 () Bool)

(assert (=> b!1452964 m!1341587))

(assert (=> b!1452976 m!1341575))

(assert (=> b!1452976 m!1341575))

(declare-fun m!1341589 () Bool)

(assert (=> b!1452976 m!1341589))

(declare-fun m!1341591 () Bool)

(assert (=> b!1452967 m!1341591))

(assert (=> b!1452967 m!1341591))

(declare-fun m!1341593 () Bool)

(assert (=> b!1452967 m!1341593))

(assert (=> b!1452968 m!1341575))

(assert (=> b!1452968 m!1341575))

(declare-fun m!1341595 () Bool)

(assert (=> b!1452968 m!1341595))

(assert (=> b!1452968 m!1341595))

(assert (=> b!1452968 m!1341575))

(declare-fun m!1341597 () Bool)

(assert (=> b!1452968 m!1341597))

(declare-fun m!1341599 () Bool)

(assert (=> b!1452973 m!1341599))

(declare-fun m!1341601 () Bool)

(assert (=> b!1452973 m!1341601))

(declare-fun m!1341603 () Bool)

(assert (=> b!1452974 m!1341603))

(assert (=> b!1452966 m!1341601))

(assert (=> b!1452966 m!1341599))

(declare-fun m!1341605 () Bool)

(assert (=> b!1452978 m!1341605))

(assert (=> b!1452962 m!1341575))

(assert (=> b!1452962 m!1341575))

(declare-fun m!1341607 () Bool)

(assert (=> b!1452962 m!1341607))

(declare-fun m!1341609 () Bool)

(assert (=> b!1452969 m!1341609))

(assert (=> b!1452969 m!1341575))

(assert (=> b!1452972 m!1341567))

(declare-fun m!1341611 () Bool)

(assert (=> b!1452972 m!1341611))

(check-sat (not b!1452977) (not b!1452965) (not b!1452974) (not b!1452971) (not b!1452964) (not b!1452976) (not b!1452968) (not start!125022) (not b!1452967) (not b!1452978) (not b!1452973) (not b!1452966) (not b!1452962))
(check-sat)
