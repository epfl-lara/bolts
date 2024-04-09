; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125212 () Bool)

(assert start!125212)

(declare-fun b!1459168 () Bool)

(declare-fun res!989257 () Bool)

(declare-fun e!820668 () Bool)

(assert (=> b!1459168 (=> res!989257 e!820668)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11847 0))(
  ( (MissingZero!11847 (index!49779 (_ BitVec 32))) (Found!11847 (index!49780 (_ BitVec 32))) (Intermediate!11847 (undefined!12659 Bool) (index!49781 (_ BitVec 32)) (x!131395 (_ BitVec 32))) (Undefined!11847) (MissingVacant!11847 (index!49782 (_ BitVec 32))) )
))
(declare-fun lt!639305 () SeekEntryResult!11847)

(declare-fun lt!639312 () (_ BitVec 32))

(declare-datatypes ((array!98577 0))(
  ( (array!98578 (arr!47572 (Array (_ BitVec 32) (_ BitVec 64))) (size!48123 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98577)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98577 (_ BitVec 32)) SeekEntryResult!11847)

(assert (=> b!1459168 (= res!989257 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639312 (select (arr!47572 a!2862) j!93) a!2862 mask!2687) lt!639305)))))

(declare-fun b!1459169 () Bool)

(declare-fun res!989254 () Bool)

(declare-fun e!820671 () Bool)

(assert (=> b!1459169 (=> (not res!989254) (not e!820671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459169 (= res!989254 (validKeyInArray!0 (select (arr!47572 a!2862) j!93)))))

(declare-fun b!1459170 () Bool)

(declare-fun e!820666 () Bool)

(assert (=> b!1459170 (= e!820671 e!820666)))

(declare-fun res!989261 () Bool)

(assert (=> b!1459170 (=> (not res!989261) (not e!820666))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459170 (= res!989261 (= (select (store (arr!47572 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!639310 () array!98577)

(assert (=> b!1459170 (= lt!639310 (array!98578 (store (arr!47572 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48123 a!2862)))))

(declare-fun b!1459171 () Bool)

(declare-fun e!820667 () Bool)

(assert (=> b!1459171 (= e!820667 e!820668)))

(declare-fun res!989260 () Bool)

(assert (=> b!1459171 (=> res!989260 e!820668)))

(assert (=> b!1459171 (= res!989260 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639312 #b00000000000000000000000000000000) (bvsge lt!639312 (size!48123 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459171 (= lt!639312 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639311 () (_ BitVec 64))

(declare-fun lt!639306 () SeekEntryResult!11847)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98577 (_ BitVec 32)) SeekEntryResult!11847)

(assert (=> b!1459171 (= lt!639306 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639311 lt!639310 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98577 (_ BitVec 32)) SeekEntryResult!11847)

(assert (=> b!1459171 (= lt!639306 (seekEntryOrOpen!0 lt!639311 lt!639310 mask!2687))))

(declare-fun b!1459172 () Bool)

(declare-fun e!820665 () Bool)

(assert (=> b!1459172 (= e!820666 e!820665)))

(declare-fun res!989262 () Bool)

(assert (=> b!1459172 (=> (not res!989262) (not e!820665))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459172 (= res!989262 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47572 a!2862) j!93) mask!2687) (select (arr!47572 a!2862) j!93) a!2862 mask!2687) lt!639305))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459172 (= lt!639305 (Intermediate!11847 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459173 () Bool)

(declare-fun res!989263 () Bool)

(assert (=> b!1459173 (=> (not res!989263) (not e!820671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98577 (_ BitVec 32)) Bool)

(assert (=> b!1459173 (= res!989263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459174 () Bool)

(declare-fun e!820669 () Bool)

(assert (=> b!1459174 (= e!820669 (not e!820667))))

(declare-fun res!989250 () Bool)

(assert (=> b!1459174 (=> res!989250 e!820667)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1459174 (= res!989250 (or (and (= (select (arr!47572 a!2862) index!646) (select (store (arr!47572 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47572 a!2862) index!646) (select (arr!47572 a!2862) j!93))) (= (select (arr!47572 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun lt!639307 () SeekEntryResult!11847)

(assert (=> b!1459174 (and (= lt!639307 (Found!11847 j!93)) (or (= (select (arr!47572 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47572 a!2862) intermediateBeforeIndex!19) (select (arr!47572 a!2862) j!93))) (let ((bdg!53497 (select (store (arr!47572 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47572 a!2862) index!646) bdg!53497) (= (select (arr!47572 a!2862) index!646) (select (arr!47572 a!2862) j!93))) (= (select (arr!47572 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53497 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459174 (= lt!639307 (seekEntryOrOpen!0 (select (arr!47572 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1459174 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49138 0))(
  ( (Unit!49139) )
))
(declare-fun lt!639309 () Unit!49138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49138)

(assert (=> b!1459174 (= lt!639309 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459175 () Bool)

(declare-fun res!989255 () Bool)

(assert (=> b!1459175 (=> (not res!989255) (not e!820669))))

(declare-fun e!820673 () Bool)

(assert (=> b!1459175 (= res!989255 e!820673)))

(declare-fun c!134473 () Bool)

(assert (=> b!1459175 (= c!134473 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459176 () Bool)

(declare-fun res!989264 () Bool)

(assert (=> b!1459176 (=> (not res!989264) (not e!820669))))

(assert (=> b!1459176 (= res!989264 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459177 () Bool)

(declare-fun res!989252 () Bool)

(assert (=> b!1459177 (=> (not res!989252) (not e!820671))))

(assert (=> b!1459177 (= res!989252 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48123 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48123 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48123 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459178 () Bool)

(declare-fun res!989251 () Bool)

(assert (=> b!1459178 (=> (not res!989251) (not e!820671))))

(declare-datatypes ((List!34253 0))(
  ( (Nil!34250) (Cons!34249 (h!35599 (_ BitVec 64)) (t!48954 List!34253)) )
))
(declare-fun arrayNoDuplicates!0 (array!98577 (_ BitVec 32) List!34253) Bool)

(assert (=> b!1459178 (= res!989251 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34250))))

(declare-fun b!1459179 () Bool)

(declare-fun res!989265 () Bool)

(assert (=> b!1459179 (=> (not res!989265) (not e!820671))))

(assert (=> b!1459179 (= res!989265 (validKeyInArray!0 (select (arr!47572 a!2862) i!1006)))))

(declare-fun b!1459180 () Bool)

(declare-fun e!820670 () Bool)

(assert (=> b!1459180 (= e!820670 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639312 intermediateAfterIndex!19 lt!639311 lt!639310 mask!2687) lt!639306)))))

(declare-fun b!1459181 () Bool)

(declare-fun res!989249 () Bool)

(assert (=> b!1459181 (=> res!989249 e!820668)))

(assert (=> b!1459181 (= res!989249 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459182 () Bool)

(assert (=> b!1459182 (= e!820673 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639311 lt!639310 mask!2687) (seekEntryOrOpen!0 lt!639311 lt!639310 mask!2687)))))

(declare-fun b!1459183 () Bool)

(declare-fun res!989258 () Bool)

(assert (=> b!1459183 (=> (not res!989258) (not e!820671))))

(assert (=> b!1459183 (= res!989258 (and (= (size!48123 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48123 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48123 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459184 () Bool)

(declare-fun lt!639313 () SeekEntryResult!11847)

(assert (=> b!1459184 (= e!820673 (= lt!639313 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639311 lt!639310 mask!2687)))))

(declare-fun b!1459185 () Bool)

(assert (=> b!1459185 (= e!820670 (not (= lt!639313 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639312 lt!639311 lt!639310 mask!2687))))))

(declare-fun b!1459186 () Bool)

(declare-fun res!989259 () Bool)

(assert (=> b!1459186 (=> res!989259 e!820668)))

(assert (=> b!1459186 (= res!989259 e!820670)))

(declare-fun c!134474 () Bool)

(assert (=> b!1459186 (= c!134474 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459187 () Bool)

(assert (=> b!1459187 (= e!820665 e!820669)))

(declare-fun res!989253 () Bool)

(assert (=> b!1459187 (=> (not res!989253) (not e!820669))))

(assert (=> b!1459187 (= res!989253 (= lt!639313 (Intermediate!11847 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1459187 (= lt!639313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639311 mask!2687) lt!639311 lt!639310 mask!2687))))

(assert (=> b!1459187 (= lt!639311 (select (store (arr!47572 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459188 () Bool)

(assert (=> b!1459188 (= e!820668 true)))

(assert (=> b!1459188 (= lt!639307 lt!639306)))

(declare-fun lt!639308 () Unit!49138)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49138)

(assert (=> b!1459188 (= lt!639308 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639312 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!989256 () Bool)

(assert (=> start!125212 (=> (not res!989256) (not e!820671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125212 (= res!989256 (validMask!0 mask!2687))))

(assert (=> start!125212 e!820671))

(assert (=> start!125212 true))

(declare-fun array_inv!36517 (array!98577) Bool)

(assert (=> start!125212 (array_inv!36517 a!2862)))

(declare-fun b!1459189 () Bool)

(declare-fun res!989248 () Bool)

(assert (=> b!1459189 (=> (not res!989248) (not e!820665))))

(assert (=> b!1459189 (= res!989248 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47572 a!2862) j!93) a!2862 mask!2687) lt!639305))))

(assert (= (and start!125212 res!989256) b!1459183))

(assert (= (and b!1459183 res!989258) b!1459179))

(assert (= (and b!1459179 res!989265) b!1459169))

(assert (= (and b!1459169 res!989254) b!1459173))

(assert (= (and b!1459173 res!989263) b!1459178))

(assert (= (and b!1459178 res!989251) b!1459177))

(assert (= (and b!1459177 res!989252) b!1459170))

(assert (= (and b!1459170 res!989261) b!1459172))

(assert (= (and b!1459172 res!989262) b!1459189))

(assert (= (and b!1459189 res!989248) b!1459187))

(assert (= (and b!1459187 res!989253) b!1459175))

(assert (= (and b!1459175 c!134473) b!1459184))

(assert (= (and b!1459175 (not c!134473)) b!1459182))

(assert (= (and b!1459175 res!989255) b!1459176))

(assert (= (and b!1459176 res!989264) b!1459174))

(assert (= (and b!1459174 (not res!989250)) b!1459171))

(assert (= (and b!1459171 (not res!989260)) b!1459168))

(assert (= (and b!1459168 (not res!989257)) b!1459186))

(assert (= (and b!1459186 c!134474) b!1459185))

(assert (= (and b!1459186 (not c!134474)) b!1459180))

(assert (= (and b!1459186 (not res!989259)) b!1459181))

(assert (= (and b!1459181 (not res!989249)) b!1459188))

(declare-fun m!1347003 () Bool)

(assert (=> b!1459185 m!1347003))

(declare-fun m!1347005 () Bool)

(assert (=> b!1459171 m!1347005))

(declare-fun m!1347007 () Bool)

(assert (=> b!1459171 m!1347007))

(declare-fun m!1347009 () Bool)

(assert (=> b!1459171 m!1347009))

(assert (=> b!1459182 m!1347007))

(assert (=> b!1459182 m!1347009))

(declare-fun m!1347011 () Bool)

(assert (=> b!1459184 m!1347011))

(declare-fun m!1347013 () Bool)

(assert (=> b!1459170 m!1347013))

(declare-fun m!1347015 () Bool)

(assert (=> b!1459170 m!1347015))

(declare-fun m!1347017 () Bool)

(assert (=> start!125212 m!1347017))

(declare-fun m!1347019 () Bool)

(assert (=> start!125212 m!1347019))

(declare-fun m!1347021 () Bool)

(assert (=> b!1459179 m!1347021))

(assert (=> b!1459179 m!1347021))

(declare-fun m!1347023 () Bool)

(assert (=> b!1459179 m!1347023))

(declare-fun m!1347025 () Bool)

(assert (=> b!1459172 m!1347025))

(assert (=> b!1459172 m!1347025))

(declare-fun m!1347027 () Bool)

(assert (=> b!1459172 m!1347027))

(assert (=> b!1459172 m!1347027))

(assert (=> b!1459172 m!1347025))

(declare-fun m!1347029 () Bool)

(assert (=> b!1459172 m!1347029))

(declare-fun m!1347031 () Bool)

(assert (=> b!1459178 m!1347031))

(declare-fun m!1347033 () Bool)

(assert (=> b!1459174 m!1347033))

(assert (=> b!1459174 m!1347013))

(declare-fun m!1347035 () Bool)

(assert (=> b!1459174 m!1347035))

(declare-fun m!1347037 () Bool)

(assert (=> b!1459174 m!1347037))

(declare-fun m!1347039 () Bool)

(assert (=> b!1459174 m!1347039))

(assert (=> b!1459174 m!1347025))

(declare-fun m!1347041 () Bool)

(assert (=> b!1459174 m!1347041))

(declare-fun m!1347043 () Bool)

(assert (=> b!1459174 m!1347043))

(assert (=> b!1459174 m!1347025))

(assert (=> b!1459169 m!1347025))

(assert (=> b!1459169 m!1347025))

(declare-fun m!1347045 () Bool)

(assert (=> b!1459169 m!1347045))

(declare-fun m!1347047 () Bool)

(assert (=> b!1459188 m!1347047))

(declare-fun m!1347049 () Bool)

(assert (=> b!1459173 m!1347049))

(declare-fun m!1347051 () Bool)

(assert (=> b!1459187 m!1347051))

(assert (=> b!1459187 m!1347051))

(declare-fun m!1347053 () Bool)

(assert (=> b!1459187 m!1347053))

(assert (=> b!1459187 m!1347013))

(declare-fun m!1347055 () Bool)

(assert (=> b!1459187 m!1347055))

(assert (=> b!1459168 m!1347025))

(assert (=> b!1459168 m!1347025))

(declare-fun m!1347057 () Bool)

(assert (=> b!1459168 m!1347057))

(assert (=> b!1459189 m!1347025))

(assert (=> b!1459189 m!1347025))

(declare-fun m!1347059 () Bool)

(assert (=> b!1459189 m!1347059))

(declare-fun m!1347061 () Bool)

(assert (=> b!1459180 m!1347061))

(push 1)

