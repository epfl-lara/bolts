; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126194 () Bool)

(assert start!126194)

(declare-fun res!1003280 () Bool)

(declare-fun e!828655 () Bool)

(assert (=> start!126194 (=> (not res!1003280) (not e!828655))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126194 (= res!1003280 (validMask!0 mask!2687))))

(assert (=> start!126194 e!828655))

(assert (=> start!126194 true))

(declare-datatypes ((array!99217 0))(
  ( (array!99218 (arr!47883 (Array (_ BitVec 32) (_ BitVec 64))) (size!48434 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99217)

(declare-fun array_inv!36828 (array!99217) Bool)

(assert (=> start!126194 (array_inv!36828 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1476998 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!645168 () array!99217)

(declare-fun e!828653 () Bool)

(declare-fun lt!645170 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12146 0))(
  ( (MissingZero!12146 (index!50975 (_ BitVec 32))) (Found!12146 (index!50976 (_ BitVec 32))) (Intermediate!12146 (undefined!12958 Bool) (index!50977 (_ BitVec 32)) (x!132572 (_ BitVec 32))) (Undefined!12146) (MissingVacant!12146 (index!50978 (_ BitVec 32))) )
))
(declare-fun lt!645172 () SeekEntryResult!12146)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99217 (_ BitVec 32)) SeekEntryResult!12146)

(assert (=> b!1476998 (= e!828653 (= lt!645172 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645170 lt!645168 mask!2687)))))

(declare-fun b!1476999 () Bool)

(declare-fun res!1003287 () Bool)

(assert (=> b!1476999 (=> (not res!1003287) (not e!828655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99217 (_ BitVec 32)) Bool)

(assert (=> b!1476999 (= res!1003287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477000 () Bool)

(declare-fun e!828652 () Bool)

(declare-fun e!828648 () Bool)

(assert (=> b!1477000 (= e!828652 e!828648)))

(declare-fun res!1003274 () Bool)

(assert (=> b!1477000 (=> (not res!1003274) (not e!828648))))

(declare-fun lt!645167 () SeekEntryResult!12146)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477000 (= res!1003274 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47883 a!2862) j!93) mask!2687) (select (arr!47883 a!2862) j!93) a!2862 mask!2687) lt!645167))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477000 (= lt!645167 (Intermediate!12146 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477001 () Bool)

(declare-fun res!1003273 () Bool)

(assert (=> b!1477001 (=> (not res!1003273) (not e!828655))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477001 (= res!1003273 (and (= (size!48434 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48434 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48434 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477002 () Bool)

(declare-fun e!828654 () Bool)

(declare-fun e!828649 () Bool)

(assert (=> b!1477002 (= e!828654 e!828649)))

(declare-fun res!1003279 () Bool)

(assert (=> b!1477002 (=> (not res!1003279) (not e!828649))))

(declare-fun lt!645171 () SeekEntryResult!12146)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99217 (_ BitVec 32)) SeekEntryResult!12146)

(assert (=> b!1477002 (= res!1003279 (= lt!645171 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47883 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477003 () Bool)

(declare-fun e!828650 () Bool)

(assert (=> b!1477003 (= e!828650 e!828654)))

(declare-fun res!1003282 () Bool)

(assert (=> b!1477003 (=> res!1003282 e!828654)))

(assert (=> b!1477003 (= res!1003282 (or (and (= (select (arr!47883 a!2862) index!646) (select (store (arr!47883 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47883 a!2862) index!646) (select (arr!47883 a!2862) j!93))) (not (= (select (arr!47883 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477004 () Bool)

(declare-fun res!1003277 () Bool)

(assert (=> b!1477004 (=> (not res!1003277) (not e!828655))))

(declare-datatypes ((List!34564 0))(
  ( (Nil!34561) (Cons!34560 (h!35928 (_ BitVec 64)) (t!49265 List!34564)) )
))
(declare-fun arrayNoDuplicates!0 (array!99217 (_ BitVec 32) List!34564) Bool)

(assert (=> b!1477004 (= res!1003277 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34561))))

(declare-fun b!1477005 () Bool)

(declare-fun res!1003276 () Bool)

(declare-fun e!828651 () Bool)

(assert (=> b!1477005 (=> (not res!1003276) (not e!828651))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477005 (= res!1003276 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477006 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99217 (_ BitVec 32)) SeekEntryResult!12146)

(assert (=> b!1477006 (= e!828653 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645170 lt!645168 mask!2687) (seekEntryOrOpen!0 lt!645170 lt!645168 mask!2687)))))

(declare-fun b!1477007 () Bool)

(declare-fun res!1003286 () Bool)

(assert (=> b!1477007 (=> (not res!1003286) (not e!828651))))

(assert (=> b!1477007 (= res!1003286 e!828653)))

(declare-fun c!136385 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477007 (= c!136385 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477008 () Bool)

(assert (=> b!1477008 (= e!828648 e!828651)))

(declare-fun res!1003281 () Bool)

(assert (=> b!1477008 (=> (not res!1003281) (not e!828651))))

(assert (=> b!1477008 (= res!1003281 (= lt!645172 (Intermediate!12146 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1477008 (= lt!645172 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645170 mask!2687) lt!645170 lt!645168 mask!2687))))

(assert (=> b!1477008 (= lt!645170 (select (store (arr!47883 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477009 () Bool)

(declare-fun res!1003284 () Bool)

(assert (=> b!1477009 (=> (not res!1003284) (not e!828655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477009 (= res!1003284 (validKeyInArray!0 (select (arr!47883 a!2862) i!1006)))))

(declare-fun b!1477010 () Bool)

(assert (=> b!1477010 (= e!828649 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477011 () Bool)

(declare-fun res!1003283 () Bool)

(assert (=> b!1477011 (=> (not res!1003283) (not e!828648))))

(assert (=> b!1477011 (= res!1003283 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47883 a!2862) j!93) a!2862 mask!2687) lt!645167))))

(declare-fun b!1477012 () Bool)

(declare-fun res!1003275 () Bool)

(assert (=> b!1477012 (=> (not res!1003275) (not e!828655))))

(assert (=> b!1477012 (= res!1003275 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48434 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48434 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48434 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477013 () Bool)

(assert (=> b!1477013 (= e!828655 e!828652)))

(declare-fun res!1003285 () Bool)

(assert (=> b!1477013 (=> (not res!1003285) (not e!828652))))

(assert (=> b!1477013 (= res!1003285 (= (select (store (arr!47883 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477013 (= lt!645168 (array!99218 (store (arr!47883 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48434 a!2862)))))

(declare-fun b!1477014 () Bool)

(assert (=> b!1477014 (= e!828651 (not true))))

(assert (=> b!1477014 e!828650))

(declare-fun res!1003278 () Bool)

(assert (=> b!1477014 (=> (not res!1003278) (not e!828650))))

(assert (=> b!1477014 (= res!1003278 (and (= lt!645171 (Found!12146 j!93)) (or (= (select (arr!47883 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47883 a!2862) intermediateBeforeIndex!19) (select (arr!47883 a!2862) j!93)))))))

(assert (=> b!1477014 (= lt!645171 (seekEntryOrOpen!0 (select (arr!47883 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477014 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49580 0))(
  ( (Unit!49581) )
))
(declare-fun lt!645169 () Unit!49580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99217 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49580)

(assert (=> b!1477014 (= lt!645169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477015 () Bool)

(declare-fun res!1003272 () Bool)

(assert (=> b!1477015 (=> (not res!1003272) (not e!828655))))

(assert (=> b!1477015 (= res!1003272 (validKeyInArray!0 (select (arr!47883 a!2862) j!93)))))

(assert (= (and start!126194 res!1003280) b!1477001))

(assert (= (and b!1477001 res!1003273) b!1477009))

(assert (= (and b!1477009 res!1003284) b!1477015))

(assert (= (and b!1477015 res!1003272) b!1476999))

(assert (= (and b!1476999 res!1003287) b!1477004))

(assert (= (and b!1477004 res!1003277) b!1477012))

(assert (= (and b!1477012 res!1003275) b!1477013))

(assert (= (and b!1477013 res!1003285) b!1477000))

(assert (= (and b!1477000 res!1003274) b!1477011))

(assert (= (and b!1477011 res!1003283) b!1477008))

(assert (= (and b!1477008 res!1003281) b!1477007))

(assert (= (and b!1477007 c!136385) b!1476998))

(assert (= (and b!1477007 (not c!136385)) b!1477006))

(assert (= (and b!1477007 res!1003286) b!1477005))

(assert (= (and b!1477005 res!1003276) b!1477014))

(assert (= (and b!1477014 res!1003278) b!1477003))

(assert (= (and b!1477003 (not res!1003282)) b!1477002))

(assert (= (and b!1477002 res!1003279) b!1477010))

(declare-fun m!1363019 () Bool)

(assert (=> b!1476999 m!1363019))

(declare-fun m!1363021 () Bool)

(assert (=> start!126194 m!1363021))

(declare-fun m!1363023 () Bool)

(assert (=> start!126194 m!1363023))

(declare-fun m!1363025 () Bool)

(assert (=> b!1476998 m!1363025))

(declare-fun m!1363027 () Bool)

(assert (=> b!1477014 m!1363027))

(declare-fun m!1363029 () Bool)

(assert (=> b!1477014 m!1363029))

(declare-fun m!1363031 () Bool)

(assert (=> b!1477014 m!1363031))

(declare-fun m!1363033 () Bool)

(assert (=> b!1477014 m!1363033))

(declare-fun m!1363035 () Bool)

(assert (=> b!1477014 m!1363035))

(assert (=> b!1477014 m!1363031))

(assert (=> b!1477002 m!1363031))

(assert (=> b!1477002 m!1363031))

(declare-fun m!1363037 () Bool)

(assert (=> b!1477002 m!1363037))

(declare-fun m!1363039 () Bool)

(assert (=> b!1477003 m!1363039))

(declare-fun m!1363041 () Bool)

(assert (=> b!1477003 m!1363041))

(declare-fun m!1363043 () Bool)

(assert (=> b!1477003 m!1363043))

(assert (=> b!1477003 m!1363031))

(declare-fun m!1363045 () Bool)

(assert (=> b!1477006 m!1363045))

(declare-fun m!1363047 () Bool)

(assert (=> b!1477006 m!1363047))

(assert (=> b!1477015 m!1363031))

(assert (=> b!1477015 m!1363031))

(declare-fun m!1363049 () Bool)

(assert (=> b!1477015 m!1363049))

(declare-fun m!1363051 () Bool)

(assert (=> b!1477004 m!1363051))

(assert (=> b!1477013 m!1363041))

(declare-fun m!1363053 () Bool)

(assert (=> b!1477013 m!1363053))

(assert (=> b!1477000 m!1363031))

(assert (=> b!1477000 m!1363031))

(declare-fun m!1363055 () Bool)

(assert (=> b!1477000 m!1363055))

(assert (=> b!1477000 m!1363055))

(assert (=> b!1477000 m!1363031))

(declare-fun m!1363057 () Bool)

(assert (=> b!1477000 m!1363057))

(assert (=> b!1477011 m!1363031))

(assert (=> b!1477011 m!1363031))

(declare-fun m!1363059 () Bool)

(assert (=> b!1477011 m!1363059))

(declare-fun m!1363061 () Bool)

(assert (=> b!1477009 m!1363061))

(assert (=> b!1477009 m!1363061))

(declare-fun m!1363063 () Bool)

(assert (=> b!1477009 m!1363063))

(declare-fun m!1363065 () Bool)

(assert (=> b!1477008 m!1363065))

(assert (=> b!1477008 m!1363065))

(declare-fun m!1363067 () Bool)

(assert (=> b!1477008 m!1363067))

(assert (=> b!1477008 m!1363041))

(declare-fun m!1363069 () Bool)

(assert (=> b!1477008 m!1363069))

(push 1)

