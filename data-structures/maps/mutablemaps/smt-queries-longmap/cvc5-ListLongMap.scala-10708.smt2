; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125428 () Bool)

(assert start!125428)

(declare-fun b!1466125 () Bool)

(declare-fun res!994987 () Bool)

(declare-fun e!823743 () Bool)

(assert (=> b!1466125 (=> (not res!994987) (not e!823743))))

(declare-datatypes ((array!98793 0))(
  ( (array!98794 (arr!47680 (Array (_ BitVec 32) (_ BitVec 64))) (size!48231 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98793)

(declare-datatypes ((List!34361 0))(
  ( (Nil!34358) (Cons!34357 (h!35707 (_ BitVec 64)) (t!49062 List!34361)) )
))
(declare-fun arrayNoDuplicates!0 (array!98793 (_ BitVec 32) List!34361) Bool)

(assert (=> b!1466125 (= res!994987 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34358))))

(declare-fun b!1466126 () Bool)

(declare-fun e!823745 () Bool)

(assert (=> b!1466126 (= e!823745 true)))

(declare-fun lt!641609 () array!98793)

(declare-datatypes ((SeekEntryResult!11955 0))(
  ( (MissingZero!11955 (index!50211 (_ BitVec 32))) (Found!11955 (index!50212 (_ BitVec 32))) (Intermediate!11955 (undefined!12767 Bool) (index!50213 (_ BitVec 32)) (x!131791 (_ BitVec 32))) (Undefined!11955) (MissingVacant!11955 (index!50214 (_ BitVec 32))) )
))
(declare-fun lt!641607 () SeekEntryResult!11955)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!641610 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98793 (_ BitVec 32)) SeekEntryResult!11955)

(assert (=> b!1466126 (= lt!641607 (seekEntryOrOpen!0 lt!641610 lt!641609 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49354 0))(
  ( (Unit!49355) )
))
(declare-fun lt!641611 () Unit!49354)

(declare-fun lt!641612 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49354)

(assert (=> b!1466126 (= lt!641611 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641612 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466127 () Bool)

(declare-fun e!823746 () Bool)

(declare-fun e!823750 () Bool)

(assert (=> b!1466127 (= e!823746 (not e!823750))))

(declare-fun res!994989 () Bool)

(assert (=> b!1466127 (=> res!994989 e!823750)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1466127 (= res!994989 (or (and (= (select (arr!47680 a!2862) index!646) (select (store (arr!47680 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47680 a!2862) index!646) (select (arr!47680 a!2862) j!93))) (= (select (arr!47680 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466127 (and (= lt!641607 (Found!11955 j!93)) (or (= (select (arr!47680 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47680 a!2862) intermediateBeforeIndex!19) (select (arr!47680 a!2862) j!93))))))

(assert (=> b!1466127 (= lt!641607 (seekEntryOrOpen!0 (select (arr!47680 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98793 (_ BitVec 32)) Bool)

(assert (=> b!1466127 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641614 () Unit!49354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49354)

(assert (=> b!1466127 (= lt!641614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466128 () Bool)

(declare-fun res!994985 () Bool)

(assert (=> b!1466128 (=> (not res!994985) (not e!823743))))

(assert (=> b!1466128 (= res!994985 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48231 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48231 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48231 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466130 () Bool)

(declare-fun e!823749 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98793 (_ BitVec 32)) SeekEntryResult!11955)

(assert (=> b!1466130 (= e!823749 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641612 intermediateAfterIndex!19 lt!641610 lt!641609 mask!2687) (seekEntryOrOpen!0 lt!641610 lt!641609 mask!2687))))))

(declare-fun b!1466131 () Bool)

(declare-fun res!994983 () Bool)

(assert (=> b!1466131 (=> (not res!994983) (not e!823743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466131 (= res!994983 (validKeyInArray!0 (select (arr!47680 a!2862) j!93)))))

(declare-fun b!1466132 () Bool)

(declare-fun res!994992 () Bool)

(declare-fun e!823747 () Bool)

(assert (=> b!1466132 (=> (not res!994992) (not e!823747))))

(declare-fun lt!641608 () SeekEntryResult!11955)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98793 (_ BitVec 32)) SeekEntryResult!11955)

(assert (=> b!1466132 (= res!994992 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47680 a!2862) j!93) a!2862 mask!2687) lt!641608))))

(declare-fun b!1466133 () Bool)

(declare-fun e!823748 () Bool)

(assert (=> b!1466133 (= e!823748 e!823747)))

(declare-fun res!994995 () Bool)

(assert (=> b!1466133 (=> (not res!994995) (not e!823747))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466133 (= res!994995 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47680 a!2862) j!93) mask!2687) (select (arr!47680 a!2862) j!93) a!2862 mask!2687) lt!641608))))

(assert (=> b!1466133 (= lt!641608 (Intermediate!11955 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466134 () Bool)

(declare-fun e!823744 () Bool)

(assert (=> b!1466134 (= e!823744 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641610 lt!641609 mask!2687) (seekEntryOrOpen!0 lt!641610 lt!641609 mask!2687)))))

(declare-fun b!1466135 () Bool)

(declare-fun res!994998 () Bool)

(assert (=> b!1466135 (=> (not res!994998) (not e!823743))))

(assert (=> b!1466135 (= res!994998 (validKeyInArray!0 (select (arr!47680 a!2862) i!1006)))))

(declare-fun b!1466136 () Bool)

(declare-fun res!994996 () Bool)

(assert (=> b!1466136 (=> (not res!994996) (not e!823746))))

(assert (=> b!1466136 (= res!994996 e!823744)))

(declare-fun c!135085 () Bool)

(assert (=> b!1466136 (= c!135085 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466129 () Bool)

(assert (=> b!1466129 (= e!823743 e!823748)))

(declare-fun res!994984 () Bool)

(assert (=> b!1466129 (=> (not res!994984) (not e!823748))))

(assert (=> b!1466129 (= res!994984 (= (select (store (arr!47680 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466129 (= lt!641609 (array!98794 (store (arr!47680 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48231 a!2862)))))

(declare-fun res!994988 () Bool)

(assert (=> start!125428 (=> (not res!994988) (not e!823743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125428 (= res!994988 (validMask!0 mask!2687))))

(assert (=> start!125428 e!823743))

(assert (=> start!125428 true))

(declare-fun array_inv!36625 (array!98793) Bool)

(assert (=> start!125428 (array_inv!36625 a!2862)))

(declare-fun b!1466137 () Bool)

(assert (=> b!1466137 (= e!823747 e!823746)))

(declare-fun res!994993 () Bool)

(assert (=> b!1466137 (=> (not res!994993) (not e!823746))))

(declare-fun lt!641613 () SeekEntryResult!11955)

(assert (=> b!1466137 (= res!994993 (= lt!641613 (Intermediate!11955 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466137 (= lt!641613 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641610 mask!2687) lt!641610 lt!641609 mask!2687))))

(assert (=> b!1466137 (= lt!641610 (select (store (arr!47680 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466138 () Bool)

(declare-fun res!994982 () Bool)

(assert (=> b!1466138 (=> (not res!994982) (not e!823743))))

(assert (=> b!1466138 (= res!994982 (and (= (size!48231 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48231 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48231 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466139 () Bool)

(assert (=> b!1466139 (= e!823750 e!823745)))

(declare-fun res!994981 () Bool)

(assert (=> b!1466139 (=> res!994981 e!823745)))

(assert (=> b!1466139 (= res!994981 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641612 #b00000000000000000000000000000000) (bvsge lt!641612 (size!48231 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466139 (= lt!641612 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466140 () Bool)

(declare-fun res!994986 () Bool)

(assert (=> b!1466140 (=> res!994986 e!823745)))

(assert (=> b!1466140 (= res!994986 e!823749)))

(declare-fun c!135086 () Bool)

(assert (=> b!1466140 (= c!135086 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466141 () Bool)

(declare-fun res!994997 () Bool)

(assert (=> b!1466141 (=> (not res!994997) (not e!823746))))

(assert (=> b!1466141 (= res!994997 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466142 () Bool)

(declare-fun res!994990 () Bool)

(assert (=> b!1466142 (=> (not res!994990) (not e!823743))))

(assert (=> b!1466142 (= res!994990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466143 () Bool)

(assert (=> b!1466143 (= e!823749 (not (= lt!641613 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641612 lt!641610 lt!641609 mask!2687))))))

(declare-fun b!1466144 () Bool)

(declare-fun res!994991 () Bool)

(assert (=> b!1466144 (=> res!994991 e!823745)))

(assert (=> b!1466144 (= res!994991 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641612 (select (arr!47680 a!2862) j!93) a!2862 mask!2687) lt!641608)))))

(declare-fun b!1466145 () Bool)

(declare-fun res!994994 () Bool)

(assert (=> b!1466145 (=> res!994994 e!823745)))

(assert (=> b!1466145 (= res!994994 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466146 () Bool)

(assert (=> b!1466146 (= e!823744 (= lt!641613 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641610 lt!641609 mask!2687)))))

(assert (= (and start!125428 res!994988) b!1466138))

(assert (= (and b!1466138 res!994982) b!1466135))

(assert (= (and b!1466135 res!994998) b!1466131))

(assert (= (and b!1466131 res!994983) b!1466142))

(assert (= (and b!1466142 res!994990) b!1466125))

(assert (= (and b!1466125 res!994987) b!1466128))

(assert (= (and b!1466128 res!994985) b!1466129))

(assert (= (and b!1466129 res!994984) b!1466133))

(assert (= (and b!1466133 res!994995) b!1466132))

(assert (= (and b!1466132 res!994992) b!1466137))

(assert (= (and b!1466137 res!994993) b!1466136))

(assert (= (and b!1466136 c!135085) b!1466146))

(assert (= (and b!1466136 (not c!135085)) b!1466134))

(assert (= (and b!1466136 res!994996) b!1466141))

(assert (= (and b!1466141 res!994997) b!1466127))

(assert (= (and b!1466127 (not res!994989)) b!1466139))

(assert (= (and b!1466139 (not res!994981)) b!1466144))

(assert (= (and b!1466144 (not res!994991)) b!1466140))

(assert (= (and b!1466140 c!135086) b!1466143))

(assert (= (and b!1466140 (not c!135086)) b!1466130))

(assert (= (and b!1466140 (not res!994986)) b!1466145))

(assert (= (and b!1466145 (not res!994994)) b!1466126))

(declare-fun m!1353195 () Bool)

(assert (=> b!1466143 m!1353195))

(declare-fun m!1353197 () Bool)

(assert (=> b!1466126 m!1353197))

(declare-fun m!1353199 () Bool)

(assert (=> b!1466126 m!1353199))

(declare-fun m!1353201 () Bool)

(assert (=> b!1466130 m!1353201))

(assert (=> b!1466130 m!1353197))

(declare-fun m!1353203 () Bool)

(assert (=> b!1466146 m!1353203))

(declare-fun m!1353205 () Bool)

(assert (=> b!1466125 m!1353205))

(declare-fun m!1353207 () Bool)

(assert (=> b!1466142 m!1353207))

(declare-fun m!1353209 () Bool)

(assert (=> b!1466134 m!1353209))

(assert (=> b!1466134 m!1353197))

(declare-fun m!1353211 () Bool)

(assert (=> start!125428 m!1353211))

(declare-fun m!1353213 () Bool)

(assert (=> start!125428 m!1353213))

(declare-fun m!1353215 () Bool)

(assert (=> b!1466127 m!1353215))

(declare-fun m!1353217 () Bool)

(assert (=> b!1466127 m!1353217))

(declare-fun m!1353219 () Bool)

(assert (=> b!1466127 m!1353219))

(declare-fun m!1353221 () Bool)

(assert (=> b!1466127 m!1353221))

(declare-fun m!1353223 () Bool)

(assert (=> b!1466127 m!1353223))

(declare-fun m!1353225 () Bool)

(assert (=> b!1466127 m!1353225))

(declare-fun m!1353227 () Bool)

(assert (=> b!1466127 m!1353227))

(declare-fun m!1353229 () Bool)

(assert (=> b!1466127 m!1353229))

(assert (=> b!1466127 m!1353225))

(assert (=> b!1466144 m!1353225))

(assert (=> b!1466144 m!1353225))

(declare-fun m!1353231 () Bool)

(assert (=> b!1466144 m!1353231))

(assert (=> b!1466131 m!1353225))

(assert (=> b!1466131 m!1353225))

(declare-fun m!1353233 () Bool)

(assert (=> b!1466131 m!1353233))

(declare-fun m!1353235 () Bool)

(assert (=> b!1466137 m!1353235))

(assert (=> b!1466137 m!1353235))

(declare-fun m!1353237 () Bool)

(assert (=> b!1466137 m!1353237))

(assert (=> b!1466137 m!1353217))

(declare-fun m!1353239 () Bool)

(assert (=> b!1466137 m!1353239))

(declare-fun m!1353241 () Bool)

(assert (=> b!1466139 m!1353241))

(assert (=> b!1466129 m!1353217))

(declare-fun m!1353243 () Bool)

(assert (=> b!1466129 m!1353243))

(assert (=> b!1466133 m!1353225))

(assert (=> b!1466133 m!1353225))

(declare-fun m!1353245 () Bool)

(assert (=> b!1466133 m!1353245))

(assert (=> b!1466133 m!1353245))

(assert (=> b!1466133 m!1353225))

(declare-fun m!1353247 () Bool)

(assert (=> b!1466133 m!1353247))

(declare-fun m!1353249 () Bool)

(assert (=> b!1466135 m!1353249))

(assert (=> b!1466135 m!1353249))

(declare-fun m!1353251 () Bool)

(assert (=> b!1466135 m!1353251))

(assert (=> b!1466132 m!1353225))

(assert (=> b!1466132 m!1353225))

(declare-fun m!1353253 () Bool)

(assert (=> b!1466132 m!1353253))

(push 1)

