; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125116 () Bool)

(assert start!125116)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!638128 () (_ BitVec 64))

(declare-fun lt!638124 () (_ BitVec 32))

(declare-datatypes ((array!98481 0))(
  ( (array!98482 (arr!47524 (Array (_ BitVec 32) (_ BitVec 64))) (size!48075 (_ BitVec 32))) )
))
(declare-fun lt!638125 () array!98481)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11799 0))(
  ( (MissingZero!11799 (index!49587 (_ BitVec 32))) (Found!11799 (index!49588 (_ BitVec 32))) (Intermediate!11799 (undefined!12611 Bool) (index!49589 (_ BitVec 32)) (x!131219 (_ BitVec 32))) (Undefined!11799) (MissingVacant!11799 (index!49590 (_ BitVec 32))) )
))
(declare-fun lt!638129 () SeekEntryResult!11799)

(declare-fun b!1456000 () Bool)

(declare-fun e!819254 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98481 (_ BitVec 32)) SeekEntryResult!11799)

(assert (=> b!1456000 (= e!819254 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638124 intermediateAfterIndex!19 lt!638128 lt!638125 mask!2687) lt!638129)))))

(declare-fun b!1456001 () Bool)

(declare-fun res!986660 () Bool)

(declare-fun e!819256 () Bool)

(assert (=> b!1456001 (=> (not res!986660) (not e!819256))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun a!2862 () array!98481)

(assert (=> b!1456001 (= res!986660 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48075 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48075 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48075 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456002 () Bool)

(declare-fun e!819259 () Bool)

(declare-fun e!819263 () Bool)

(assert (=> b!1456002 (= e!819259 (not e!819263))))

(declare-fun res!986666 () Bool)

(assert (=> b!1456002 (=> res!986666 e!819263)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1456002 (= res!986666 (or (and (= (select (arr!47524 a!2862) index!646) (select (store (arr!47524 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47524 a!2862) index!646) (select (arr!47524 a!2862) j!93))) (= (select (arr!47524 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819255 () Bool)

(assert (=> b!1456002 e!819255))

(declare-fun res!986657 () Bool)

(assert (=> b!1456002 (=> (not res!986657) (not e!819255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98481 (_ BitVec 32)) Bool)

(assert (=> b!1456002 (= res!986657 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49042 0))(
  ( (Unit!49043) )
))
(declare-fun lt!638127 () Unit!49042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98481 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49042)

(assert (=> b!1456002 (= lt!638127 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456003 () Bool)

(declare-fun res!986659 () Bool)

(assert (=> b!1456003 (=> (not res!986659) (not e!819259))))

(declare-fun e!819260 () Bool)

(assert (=> b!1456003 (= res!986659 e!819260)))

(declare-fun c!134185 () Bool)

(assert (=> b!1456003 (= c!134185 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456005 () Bool)

(declare-fun res!986673 () Bool)

(assert (=> b!1456005 (=> (not res!986673) (not e!819256))))

(assert (=> b!1456005 (= res!986673 (and (= (size!48075 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48075 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48075 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456006 () Bool)

(declare-fun res!986658 () Bool)

(declare-fun e!819261 () Bool)

(assert (=> b!1456006 (=> (not res!986658) (not e!819261))))

(declare-fun lt!638126 () SeekEntryResult!11799)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98481 (_ BitVec 32)) SeekEntryResult!11799)

(assert (=> b!1456006 (= res!986658 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47524 a!2862) j!93) a!2862 mask!2687) lt!638126))))

(declare-fun b!1456007 () Bool)

(declare-fun res!986665 () Bool)

(assert (=> b!1456007 (=> (not res!986665) (not e!819255))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98481 (_ BitVec 32)) SeekEntryResult!11799)

(assert (=> b!1456007 (= res!986665 (= (seekEntryOrOpen!0 (select (arr!47524 a!2862) j!93) a!2862 mask!2687) (Found!11799 j!93)))))

(declare-fun b!1456008 () Bool)

(declare-fun e!819258 () Bool)

(assert (=> b!1456008 (= e!819258 e!819261)))

(declare-fun res!986656 () Bool)

(assert (=> b!1456008 (=> (not res!986656) (not e!819261))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456008 (= res!986656 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47524 a!2862) j!93) mask!2687) (select (arr!47524 a!2862) j!93) a!2862 mask!2687) lt!638126))))

(assert (=> b!1456008 (= lt!638126 (Intermediate!11799 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456009 () Bool)

(declare-fun res!986662 () Bool)

(assert (=> b!1456009 (=> (not res!986662) (not e!819259))))

(assert (=> b!1456009 (= res!986662 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456010 () Bool)

(declare-fun res!986663 () Bool)

(assert (=> b!1456010 (=> (not res!986663) (not e!819256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456010 (= res!986663 (validKeyInArray!0 (select (arr!47524 a!2862) i!1006)))))

(declare-fun b!1456011 () Bool)

(assert (=> b!1456011 (= e!819256 e!819258)))

(declare-fun res!986671 () Bool)

(assert (=> b!1456011 (=> (not res!986671) (not e!819258))))

(assert (=> b!1456011 (= res!986671 (= (select (store (arr!47524 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456011 (= lt!638125 (array!98482 (store (arr!47524 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48075 a!2862)))))

(declare-fun b!1456012 () Bool)

(declare-fun res!986667 () Bool)

(assert (=> b!1456012 (=> (not res!986667) (not e!819256))))

(declare-datatypes ((List!34205 0))(
  ( (Nil!34202) (Cons!34201 (h!35551 (_ BitVec 64)) (t!48906 List!34205)) )
))
(declare-fun arrayNoDuplicates!0 (array!98481 (_ BitVec 32) List!34205) Bool)

(assert (=> b!1456012 (= res!986667 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34202))))

(declare-fun b!1456013 () Bool)

(assert (=> b!1456013 (= e!819261 e!819259)))

(declare-fun res!986669 () Bool)

(assert (=> b!1456013 (=> (not res!986669) (not e!819259))))

(declare-fun lt!638130 () SeekEntryResult!11799)

(assert (=> b!1456013 (= res!986669 (= lt!638130 (Intermediate!11799 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456013 (= lt!638130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638128 mask!2687) lt!638128 lt!638125 mask!2687))))

(assert (=> b!1456013 (= lt!638128 (select (store (arr!47524 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456014 () Bool)

(assert (=> b!1456014 (= e!819255 (and (or (= (select (arr!47524 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47524 a!2862) intermediateBeforeIndex!19) (select (arr!47524 a!2862) j!93))) (let ((bdg!53215 (select (store (arr!47524 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47524 a!2862) index!646) bdg!53215) (= (select (arr!47524 a!2862) index!646) (select (arr!47524 a!2862) j!93))) (= (select (arr!47524 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53215 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456004 () Bool)

(declare-fun e!819262 () Bool)

(assert (=> b!1456004 (= e!819263 e!819262)))

(declare-fun res!986672 () Bool)

(assert (=> b!1456004 (=> res!986672 e!819262)))

(assert (=> b!1456004 (= res!986672 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638124 #b00000000000000000000000000000000) (bvsge lt!638124 (size!48075 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456004 (= lt!638124 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456004 (= lt!638129 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638128 lt!638125 mask!2687))))

(assert (=> b!1456004 (= lt!638129 (seekEntryOrOpen!0 lt!638128 lt!638125 mask!2687))))

(declare-fun res!986670 () Bool)

(assert (=> start!125116 (=> (not res!986670) (not e!819256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125116 (= res!986670 (validMask!0 mask!2687))))

(assert (=> start!125116 e!819256))

(assert (=> start!125116 true))

(declare-fun array_inv!36469 (array!98481) Bool)

(assert (=> start!125116 (array_inv!36469 a!2862)))

(declare-fun b!1456015 () Bool)

(assert (=> b!1456015 (= e!819260 (= lt!638130 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638128 lt!638125 mask!2687)))))

(declare-fun b!1456016 () Bool)

(assert (=> b!1456016 (= e!819254 (not (= lt!638130 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638124 lt!638128 lt!638125 mask!2687))))))

(declare-fun b!1456017 () Bool)

(assert (=> b!1456017 (= e!819262 true)))

(declare-fun lt!638131 () Bool)

(assert (=> b!1456017 (= lt!638131 e!819254)))

(declare-fun c!134186 () Bool)

(assert (=> b!1456017 (= c!134186 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456018 () Bool)

(declare-fun res!986664 () Bool)

(assert (=> b!1456018 (=> (not res!986664) (not e!819256))))

(assert (=> b!1456018 (= res!986664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456019 () Bool)

(declare-fun res!986668 () Bool)

(assert (=> b!1456019 (=> (not res!986668) (not e!819256))))

(assert (=> b!1456019 (= res!986668 (validKeyInArray!0 (select (arr!47524 a!2862) j!93)))))

(declare-fun b!1456020 () Bool)

(assert (=> b!1456020 (= e!819260 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638128 lt!638125 mask!2687) (seekEntryOrOpen!0 lt!638128 lt!638125 mask!2687)))))

(declare-fun b!1456021 () Bool)

(declare-fun res!986661 () Bool)

(assert (=> b!1456021 (=> res!986661 e!819262)))

(assert (=> b!1456021 (= res!986661 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638124 (select (arr!47524 a!2862) j!93) a!2862 mask!2687) lt!638126)))))

(assert (= (and start!125116 res!986670) b!1456005))

(assert (= (and b!1456005 res!986673) b!1456010))

(assert (= (and b!1456010 res!986663) b!1456019))

(assert (= (and b!1456019 res!986668) b!1456018))

(assert (= (and b!1456018 res!986664) b!1456012))

(assert (= (and b!1456012 res!986667) b!1456001))

(assert (= (and b!1456001 res!986660) b!1456011))

(assert (= (and b!1456011 res!986671) b!1456008))

(assert (= (and b!1456008 res!986656) b!1456006))

(assert (= (and b!1456006 res!986658) b!1456013))

(assert (= (and b!1456013 res!986669) b!1456003))

(assert (= (and b!1456003 c!134185) b!1456015))

(assert (= (and b!1456003 (not c!134185)) b!1456020))

(assert (= (and b!1456003 res!986659) b!1456009))

(assert (= (and b!1456009 res!986662) b!1456002))

(assert (= (and b!1456002 res!986657) b!1456007))

(assert (= (and b!1456007 res!986665) b!1456014))

(assert (= (and b!1456002 (not res!986666)) b!1456004))

(assert (= (and b!1456004 (not res!986672)) b!1456021))

(assert (= (and b!1456021 (not res!986661)) b!1456017))

(assert (= (and b!1456017 c!134186) b!1456016))

(assert (= (and b!1456017 (not c!134186)) b!1456000))

(declare-fun m!1344201 () Bool)

(assert (=> b!1456002 m!1344201))

(declare-fun m!1344203 () Bool)

(assert (=> b!1456002 m!1344203))

(declare-fun m!1344205 () Bool)

(assert (=> b!1456002 m!1344205))

(declare-fun m!1344207 () Bool)

(assert (=> b!1456002 m!1344207))

(declare-fun m!1344209 () Bool)

(assert (=> b!1456002 m!1344209))

(declare-fun m!1344211 () Bool)

(assert (=> b!1456002 m!1344211))

(declare-fun m!1344213 () Bool)

(assert (=> b!1456015 m!1344213))

(declare-fun m!1344215 () Bool)

(assert (=> b!1456000 m!1344215))

(assert (=> b!1456019 m!1344211))

(assert (=> b!1456019 m!1344211))

(declare-fun m!1344217 () Bool)

(assert (=> b!1456019 m!1344217))

(assert (=> b!1456006 m!1344211))

(assert (=> b!1456006 m!1344211))

(declare-fun m!1344219 () Bool)

(assert (=> b!1456006 m!1344219))

(assert (=> b!1456021 m!1344211))

(assert (=> b!1456021 m!1344211))

(declare-fun m!1344221 () Bool)

(assert (=> b!1456021 m!1344221))

(declare-fun m!1344223 () Bool)

(assert (=> b!1456004 m!1344223))

(declare-fun m!1344225 () Bool)

(assert (=> b!1456004 m!1344225))

(declare-fun m!1344227 () Bool)

(assert (=> b!1456004 m!1344227))

(declare-fun m!1344229 () Bool)

(assert (=> start!125116 m!1344229))

(declare-fun m!1344231 () Bool)

(assert (=> start!125116 m!1344231))

(assert (=> b!1456008 m!1344211))

(assert (=> b!1456008 m!1344211))

(declare-fun m!1344233 () Bool)

(assert (=> b!1456008 m!1344233))

(assert (=> b!1456008 m!1344233))

(assert (=> b!1456008 m!1344211))

(declare-fun m!1344235 () Bool)

(assert (=> b!1456008 m!1344235))

(assert (=> b!1456007 m!1344211))

(assert (=> b!1456007 m!1344211))

(declare-fun m!1344237 () Bool)

(assert (=> b!1456007 m!1344237))

(assert (=> b!1456014 m!1344203))

(declare-fun m!1344239 () Bool)

(assert (=> b!1456014 m!1344239))

(assert (=> b!1456014 m!1344205))

(assert (=> b!1456014 m!1344207))

(assert (=> b!1456014 m!1344211))

(assert (=> b!1456020 m!1344225))

(assert (=> b!1456020 m!1344227))

(declare-fun m!1344241 () Bool)

(assert (=> b!1456018 m!1344241))

(declare-fun m!1344243 () Bool)

(assert (=> b!1456013 m!1344243))

(assert (=> b!1456013 m!1344243))

(declare-fun m!1344245 () Bool)

(assert (=> b!1456013 m!1344245))

(assert (=> b!1456013 m!1344203))

(declare-fun m!1344247 () Bool)

(assert (=> b!1456013 m!1344247))

(declare-fun m!1344249 () Bool)

(assert (=> b!1456010 m!1344249))

(assert (=> b!1456010 m!1344249))

(declare-fun m!1344251 () Bool)

(assert (=> b!1456010 m!1344251))

(declare-fun m!1344253 () Bool)

(assert (=> b!1456012 m!1344253))

(assert (=> b!1456011 m!1344203))

(declare-fun m!1344255 () Bool)

(assert (=> b!1456011 m!1344255))

(declare-fun m!1344257 () Bool)

(assert (=> b!1456016 m!1344257))

(push 1)

