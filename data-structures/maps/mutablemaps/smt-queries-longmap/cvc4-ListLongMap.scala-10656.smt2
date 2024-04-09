; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125120 () Bool)

(assert start!125120)

(declare-fun b!1456132 () Bool)

(declare-fun res!986764 () Bool)

(declare-fun e!819319 () Bool)

(assert (=> b!1456132 (=> (not res!986764) (not e!819319))))

(declare-fun e!819315 () Bool)

(assert (=> b!1456132 (= res!986764 e!819315)))

(declare-fun c!134197 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456132 (= c!134197 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456133 () Bool)

(declare-fun res!986767 () Bool)

(declare-fun e!819322 () Bool)

(assert (=> b!1456133 (=> res!986767 e!819322)))

(declare-datatypes ((SeekEntryResult!11801 0))(
  ( (MissingZero!11801 (index!49595 (_ BitVec 32))) (Found!11801 (index!49596 (_ BitVec 32))) (Intermediate!11801 (undefined!12613 Bool) (index!49597 (_ BitVec 32)) (x!131221 (_ BitVec 32))) (Undefined!11801) (MissingVacant!11801 (index!49598 (_ BitVec 32))) )
))
(declare-fun lt!638176 () SeekEntryResult!11801)

(declare-datatypes ((array!98485 0))(
  ( (array!98486 (arr!47526 (Array (_ BitVec 32) (_ BitVec 64))) (size!48077 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98485)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!638178 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98485 (_ BitVec 32)) SeekEntryResult!11801)

(assert (=> b!1456133 (= res!986767 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638178 (select (arr!47526 a!2862) j!93) a!2862 mask!2687) lt!638176)))))

(declare-fun b!1456135 () Bool)

(declare-fun lt!638173 () (_ BitVec 64))

(declare-fun e!819314 () Bool)

(declare-fun lt!638177 () SeekEntryResult!11801)

(declare-fun lt!638174 () array!98485)

(assert (=> b!1456135 (= e!819314 (not (= lt!638177 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638178 lt!638173 lt!638174 mask!2687))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1456136 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!819321 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1456136 (= e!819321 (and (or (= (select (arr!47526 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47526 a!2862) intermediateBeforeIndex!19) (select (arr!47526 a!2862) j!93))) (let ((bdg!53221 (select (store (arr!47526 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47526 a!2862) index!646) bdg!53221) (= (select (arr!47526 a!2862) index!646) (select (arr!47526 a!2862) j!93))) (= (select (arr!47526 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53221 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456137 () Bool)

(declare-fun e!819316 () Bool)

(declare-fun e!819317 () Bool)

(assert (=> b!1456137 (= e!819316 e!819317)))

(declare-fun res!986778 () Bool)

(assert (=> b!1456137 (=> (not res!986778) (not e!819317))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456137 (= res!986778 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47526 a!2862) j!93) mask!2687) (select (arr!47526 a!2862) j!93) a!2862 mask!2687) lt!638176))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456137 (= lt!638176 (Intermediate!11801 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456138 () Bool)

(declare-fun res!986780 () Bool)

(declare-fun e!819320 () Bool)

(assert (=> b!1456138 (=> (not res!986780) (not e!819320))))

(assert (=> b!1456138 (= res!986780 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48077 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48077 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48077 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456139 () Bool)

(declare-fun res!986774 () Bool)

(assert (=> b!1456139 (=> (not res!986774) (not e!819321))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98485 (_ BitVec 32)) SeekEntryResult!11801)

(assert (=> b!1456139 (= res!986774 (= (seekEntryOrOpen!0 (select (arr!47526 a!2862) j!93) a!2862 mask!2687) (Found!11801 j!93)))))

(declare-fun b!1456140 () Bool)

(declare-fun res!986772 () Bool)

(assert (=> b!1456140 (=> (not res!986772) (not e!819320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456140 (= res!986772 (validKeyInArray!0 (select (arr!47526 a!2862) i!1006)))))

(declare-fun b!1456141 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98485 (_ BitVec 32)) SeekEntryResult!11801)

(assert (=> b!1456141 (= e!819315 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638173 lt!638174 mask!2687) (seekEntryOrOpen!0 lt!638173 lt!638174 mask!2687)))))

(declare-fun b!1456142 () Bool)

(declare-fun lt!638175 () SeekEntryResult!11801)

(assert (=> b!1456142 (= e!819314 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638178 intermediateAfterIndex!19 lt!638173 lt!638174 mask!2687) lt!638175)))))

(declare-fun b!1456143 () Bool)

(assert (=> b!1456143 (= e!819315 (= lt!638177 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638173 lt!638174 mask!2687)))))

(declare-fun b!1456144 () Bool)

(declare-fun res!986773 () Bool)

(assert (=> b!1456144 (=> (not res!986773) (not e!819320))))

(assert (=> b!1456144 (= res!986773 (validKeyInArray!0 (select (arr!47526 a!2862) j!93)))))

(declare-fun b!1456145 () Bool)

(assert (=> b!1456145 (= e!819320 e!819316)))

(declare-fun res!986769 () Bool)

(assert (=> b!1456145 (=> (not res!986769) (not e!819316))))

(assert (=> b!1456145 (= res!986769 (= (select (store (arr!47526 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456145 (= lt!638174 (array!98486 (store (arr!47526 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48077 a!2862)))))

(declare-fun b!1456146 () Bool)

(assert (=> b!1456146 (= e!819322 true)))

(declare-fun lt!638172 () Bool)

(assert (=> b!1456146 (= lt!638172 e!819314)))

(declare-fun c!134198 () Bool)

(assert (=> b!1456146 (= c!134198 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456147 () Bool)

(assert (=> b!1456147 (= e!819317 e!819319)))

(declare-fun res!986779 () Bool)

(assert (=> b!1456147 (=> (not res!986779) (not e!819319))))

(assert (=> b!1456147 (= res!986779 (= lt!638177 (Intermediate!11801 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456147 (= lt!638177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638173 mask!2687) lt!638173 lt!638174 mask!2687))))

(assert (=> b!1456147 (= lt!638173 (select (store (arr!47526 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!986770 () Bool)

(assert (=> start!125120 (=> (not res!986770) (not e!819320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125120 (= res!986770 (validMask!0 mask!2687))))

(assert (=> start!125120 e!819320))

(assert (=> start!125120 true))

(declare-fun array_inv!36471 (array!98485) Bool)

(assert (=> start!125120 (array_inv!36471 a!2862)))

(declare-fun b!1456134 () Bool)

(declare-fun res!986766 () Bool)

(assert (=> b!1456134 (=> (not res!986766) (not e!819319))))

(assert (=> b!1456134 (= res!986766 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456148 () Bool)

(declare-fun res!986768 () Bool)

(assert (=> b!1456148 (=> (not res!986768) (not e!819320))))

(assert (=> b!1456148 (= res!986768 (and (= (size!48077 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48077 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48077 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456149 () Bool)

(declare-fun res!986777 () Bool)

(assert (=> b!1456149 (=> (not res!986777) (not e!819320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98485 (_ BitVec 32)) Bool)

(assert (=> b!1456149 (= res!986777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456150 () Bool)

(declare-fun e!819318 () Bool)

(assert (=> b!1456150 (= e!819318 e!819322)))

(declare-fun res!986781 () Bool)

(assert (=> b!1456150 (=> res!986781 e!819322)))

(assert (=> b!1456150 (= res!986781 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638178 #b00000000000000000000000000000000) (bvsge lt!638178 (size!48077 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456150 (= lt!638178 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456150 (= lt!638175 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638173 lt!638174 mask!2687))))

(assert (=> b!1456150 (= lt!638175 (seekEntryOrOpen!0 lt!638173 lt!638174 mask!2687))))

(declare-fun b!1456151 () Bool)

(assert (=> b!1456151 (= e!819319 (not e!819318))))

(declare-fun res!986776 () Bool)

(assert (=> b!1456151 (=> res!986776 e!819318)))

(assert (=> b!1456151 (= res!986776 (or (and (= (select (arr!47526 a!2862) index!646) (select (store (arr!47526 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47526 a!2862) index!646) (select (arr!47526 a!2862) j!93))) (= (select (arr!47526 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456151 e!819321))

(declare-fun res!986765 () Bool)

(assert (=> b!1456151 (=> (not res!986765) (not e!819321))))

(assert (=> b!1456151 (= res!986765 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49046 0))(
  ( (Unit!49047) )
))
(declare-fun lt!638179 () Unit!49046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98485 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49046)

(assert (=> b!1456151 (= lt!638179 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456152 () Bool)

(declare-fun res!986771 () Bool)

(assert (=> b!1456152 (=> (not res!986771) (not e!819320))))

(declare-datatypes ((List!34207 0))(
  ( (Nil!34204) (Cons!34203 (h!35553 (_ BitVec 64)) (t!48908 List!34207)) )
))
(declare-fun arrayNoDuplicates!0 (array!98485 (_ BitVec 32) List!34207) Bool)

(assert (=> b!1456152 (= res!986771 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34204))))

(declare-fun b!1456153 () Bool)

(declare-fun res!986775 () Bool)

(assert (=> b!1456153 (=> (not res!986775) (not e!819317))))

(assert (=> b!1456153 (= res!986775 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47526 a!2862) j!93) a!2862 mask!2687) lt!638176))))

(assert (= (and start!125120 res!986770) b!1456148))

(assert (= (and b!1456148 res!986768) b!1456140))

(assert (= (and b!1456140 res!986772) b!1456144))

(assert (= (and b!1456144 res!986773) b!1456149))

(assert (= (and b!1456149 res!986777) b!1456152))

(assert (= (and b!1456152 res!986771) b!1456138))

(assert (= (and b!1456138 res!986780) b!1456145))

(assert (= (and b!1456145 res!986769) b!1456137))

(assert (= (and b!1456137 res!986778) b!1456153))

(assert (= (and b!1456153 res!986775) b!1456147))

(assert (= (and b!1456147 res!986779) b!1456132))

(assert (= (and b!1456132 c!134197) b!1456143))

(assert (= (and b!1456132 (not c!134197)) b!1456141))

(assert (= (and b!1456132 res!986764) b!1456134))

(assert (= (and b!1456134 res!986766) b!1456151))

(assert (= (and b!1456151 res!986765) b!1456139))

(assert (= (and b!1456139 res!986774) b!1456136))

(assert (= (and b!1456151 (not res!986776)) b!1456150))

(assert (= (and b!1456150 (not res!986781)) b!1456133))

(assert (= (and b!1456133 (not res!986767)) b!1456146))

(assert (= (and b!1456146 c!134198) b!1456135))

(assert (= (and b!1456146 (not c!134198)) b!1456142))

(declare-fun m!1344317 () Bool)

(assert (=> b!1456140 m!1344317))

(assert (=> b!1456140 m!1344317))

(declare-fun m!1344319 () Bool)

(assert (=> b!1456140 m!1344319))

(declare-fun m!1344321 () Bool)

(assert (=> b!1456137 m!1344321))

(assert (=> b!1456137 m!1344321))

(declare-fun m!1344323 () Bool)

(assert (=> b!1456137 m!1344323))

(assert (=> b!1456137 m!1344323))

(assert (=> b!1456137 m!1344321))

(declare-fun m!1344325 () Bool)

(assert (=> b!1456137 m!1344325))

(declare-fun m!1344327 () Bool)

(assert (=> b!1456152 m!1344327))

(declare-fun m!1344329 () Bool)

(assert (=> b!1456145 m!1344329))

(declare-fun m!1344331 () Bool)

(assert (=> b!1456145 m!1344331))

(declare-fun m!1344333 () Bool)

(assert (=> b!1456149 m!1344333))

(declare-fun m!1344335 () Bool)

(assert (=> b!1456141 m!1344335))

(declare-fun m!1344337 () Bool)

(assert (=> b!1456141 m!1344337))

(declare-fun m!1344339 () Bool)

(assert (=> b!1456150 m!1344339))

(assert (=> b!1456150 m!1344335))

(assert (=> b!1456150 m!1344337))

(declare-fun m!1344341 () Bool)

(assert (=> b!1456143 m!1344341))

(assert (=> b!1456144 m!1344321))

(assert (=> b!1456144 m!1344321))

(declare-fun m!1344343 () Bool)

(assert (=> b!1456144 m!1344343))

(assert (=> b!1456133 m!1344321))

(assert (=> b!1456133 m!1344321))

(declare-fun m!1344345 () Bool)

(assert (=> b!1456133 m!1344345))

(declare-fun m!1344347 () Bool)

(assert (=> b!1456135 m!1344347))

(declare-fun m!1344349 () Bool)

(assert (=> b!1456147 m!1344349))

(assert (=> b!1456147 m!1344349))

(declare-fun m!1344351 () Bool)

(assert (=> b!1456147 m!1344351))

(assert (=> b!1456147 m!1344329))

(declare-fun m!1344353 () Bool)

(assert (=> b!1456147 m!1344353))

(assert (=> b!1456136 m!1344329))

(declare-fun m!1344355 () Bool)

(assert (=> b!1456136 m!1344355))

(declare-fun m!1344357 () Bool)

(assert (=> b!1456136 m!1344357))

(declare-fun m!1344359 () Bool)

(assert (=> b!1456136 m!1344359))

(assert (=> b!1456136 m!1344321))

(assert (=> b!1456153 m!1344321))

(assert (=> b!1456153 m!1344321))

(declare-fun m!1344361 () Bool)

(assert (=> b!1456153 m!1344361))

(declare-fun m!1344363 () Bool)

(assert (=> b!1456142 m!1344363))

(assert (=> b!1456139 m!1344321))

(assert (=> b!1456139 m!1344321))

(declare-fun m!1344365 () Bool)

(assert (=> b!1456139 m!1344365))

(declare-fun m!1344367 () Bool)

(assert (=> start!125120 m!1344367))

(declare-fun m!1344369 () Bool)

(assert (=> start!125120 m!1344369))

(declare-fun m!1344371 () Bool)

(assert (=> b!1456151 m!1344371))

(assert (=> b!1456151 m!1344329))

(assert (=> b!1456151 m!1344357))

(assert (=> b!1456151 m!1344359))

(declare-fun m!1344373 () Bool)

(assert (=> b!1456151 m!1344373))

(assert (=> b!1456151 m!1344321))

(push 1)

