; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126532 () Bool)

(assert start!126532)

(declare-fun b!1483139 () Bool)

(declare-fun res!1008145 () Bool)

(declare-fun e!831680 () Bool)

(assert (=> b!1483139 (=> (not res!1008145) (not e!831680))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99411 0))(
  ( (array!99412 (arr!47977 (Array (_ BitVec 32) (_ BitVec 64))) (size!48528 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99411)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1483139 (= res!1008145 (or (= (select (arr!47977 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47977 a!2862) intermediateBeforeIndex!19) (select (arr!47977 a!2862) j!93))))))

(declare-fun b!1483140 () Bool)

(declare-fun res!1008158 () Bool)

(declare-fun e!831688 () Bool)

(assert (=> b!1483140 (=> (not res!1008158) (not e!831688))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483140 (= res!1008158 (and (= (size!48528 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48528 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48528 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483141 () Bool)

(declare-fun res!1008150 () Bool)

(assert (=> b!1483141 (=> (not res!1008150) (not e!831688))))

(declare-datatypes ((List!34658 0))(
  ( (Nil!34655) (Cons!34654 (h!36028 (_ BitVec 64)) (t!49359 List!34658)) )
))
(declare-fun arrayNoDuplicates!0 (array!99411 (_ BitVec 32) List!34658) Bool)

(assert (=> b!1483141 (= res!1008150 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34655))))

(declare-fun b!1483142 () Bool)

(declare-fun lt!647298 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!831687 () Bool)

(declare-fun lt!647299 () array!99411)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12240 0))(
  ( (MissingZero!12240 (index!51351 (_ BitVec 32))) (Found!12240 (index!51352 (_ BitVec 32))) (Intermediate!12240 (undefined!13052 Bool) (index!51353 (_ BitVec 32)) (x!132943 (_ BitVec 32))) (Undefined!12240) (MissingVacant!12240 (index!51354 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99411 (_ BitVec 32)) SeekEntryResult!12240)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99411 (_ BitVec 32)) SeekEntryResult!12240)

(assert (=> b!1483142 (= e!831687 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647298 lt!647299 mask!2687) (seekEntryOrOpen!0 lt!647298 lt!647299 mask!2687)))))

(declare-fun b!1483143 () Bool)

(declare-fun res!1008146 () Bool)

(declare-fun e!831682 () Bool)

(assert (=> b!1483143 (=> (not res!1008146) (not e!831682))))

(assert (=> b!1483143 (= res!1008146 e!831687)))

(declare-fun c!137024 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483143 (= c!137024 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!831686 () Bool)

(declare-fun b!1483144 () Bool)

(assert (=> b!1483144 (= e!831686 (= (seekEntryOrOpen!0 lt!647298 lt!647299 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647298 lt!647299 mask!2687)))))

(declare-fun b!1483145 () Bool)

(declare-fun lt!647294 () SeekEntryResult!12240)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99411 (_ BitVec 32)) SeekEntryResult!12240)

(assert (=> b!1483145 (= e!831687 (= lt!647294 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647298 lt!647299 mask!2687)))))

(declare-fun res!1008147 () Bool)

(assert (=> start!126532 (=> (not res!1008147) (not e!831688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126532 (= res!1008147 (validMask!0 mask!2687))))

(assert (=> start!126532 e!831688))

(assert (=> start!126532 true))

(declare-fun array_inv!36922 (array!99411) Bool)

(assert (=> start!126532 (array_inv!36922 a!2862)))

(declare-fun b!1483146 () Bool)

(declare-fun res!1008155 () Bool)

(assert (=> b!1483146 (=> (not res!1008155) (not e!831688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483146 (= res!1008155 (validKeyInArray!0 (select (arr!47977 a!2862) j!93)))))

(declare-fun b!1483147 () Bool)

(declare-fun e!831683 () Bool)

(assert (=> b!1483147 (= e!831683 e!831686)))

(declare-fun res!1008141 () Bool)

(assert (=> b!1483147 (=> (not res!1008141) (not e!831686))))

(declare-fun lt!647297 () (_ BitVec 64))

(assert (=> b!1483147 (= res!1008141 (and (= index!646 intermediateAfterIndex!19) (= lt!647297 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483148 () Bool)

(declare-fun res!1008153 () Bool)

(assert (=> b!1483148 (=> (not res!1008153) (not e!831682))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483148 (= res!1008153 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483149 () Bool)

(declare-fun e!831684 () Bool)

(assert (=> b!1483149 (= e!831688 e!831684)))

(declare-fun res!1008149 () Bool)

(assert (=> b!1483149 (=> (not res!1008149) (not e!831684))))

(assert (=> b!1483149 (= res!1008149 (= (select (store (arr!47977 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483149 (= lt!647299 (array!99412 (store (arr!47977 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48528 a!2862)))))

(declare-fun b!1483150 () Bool)

(assert (=> b!1483150 (= e!831680 e!831683)))

(declare-fun res!1008143 () Bool)

(assert (=> b!1483150 (=> res!1008143 e!831683)))

(assert (=> b!1483150 (= res!1008143 (or (and (= (select (arr!47977 a!2862) index!646) lt!647297) (= (select (arr!47977 a!2862) index!646) (select (arr!47977 a!2862) j!93))) (= (select (arr!47977 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483150 (= lt!647297 (select (store (arr!47977 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483151 () Bool)

(declare-fun res!1008157 () Bool)

(assert (=> b!1483151 (=> (not res!1008157) (not e!831688))))

(assert (=> b!1483151 (= res!1008157 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48528 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48528 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48528 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483152 () Bool)

(declare-fun e!831689 () Bool)

(assert (=> b!1483152 (= e!831689 true)))

(declare-fun lt!647293 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483152 (= lt!647293 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483153 () Bool)

(declare-fun res!1008156 () Bool)

(assert (=> b!1483153 (=> (not res!1008156) (not e!831680))))

(assert (=> b!1483153 (= res!1008156 (= (seekEntryOrOpen!0 (select (arr!47977 a!2862) j!93) a!2862 mask!2687) (Found!12240 j!93)))))

(declare-fun b!1483154 () Bool)

(assert (=> b!1483154 (= e!831682 (not e!831689))))

(declare-fun res!1008152 () Bool)

(assert (=> b!1483154 (=> res!1008152 e!831689)))

(assert (=> b!1483154 (= res!1008152 (or (and (= (select (arr!47977 a!2862) index!646) (select (store (arr!47977 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47977 a!2862) index!646) (select (arr!47977 a!2862) j!93))) (= (select (arr!47977 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483154 e!831680))

(declare-fun res!1008148 () Bool)

(assert (=> b!1483154 (=> (not res!1008148) (not e!831680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99411 (_ BitVec 32)) Bool)

(assert (=> b!1483154 (= res!1008148 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49768 0))(
  ( (Unit!49769) )
))
(declare-fun lt!647296 () Unit!49768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49768)

(assert (=> b!1483154 (= lt!647296 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483155 () Bool)

(declare-fun e!831685 () Bool)

(assert (=> b!1483155 (= e!831684 e!831685)))

(declare-fun res!1008144 () Bool)

(assert (=> b!1483155 (=> (not res!1008144) (not e!831685))))

(declare-fun lt!647295 () SeekEntryResult!12240)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483155 (= res!1008144 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47977 a!2862) j!93) mask!2687) (select (arr!47977 a!2862) j!93) a!2862 mask!2687) lt!647295))))

(assert (=> b!1483155 (= lt!647295 (Intermediate!12240 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483156 () Bool)

(assert (=> b!1483156 (= e!831685 e!831682)))

(declare-fun res!1008151 () Bool)

(assert (=> b!1483156 (=> (not res!1008151) (not e!831682))))

(assert (=> b!1483156 (= res!1008151 (= lt!647294 (Intermediate!12240 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483156 (= lt!647294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647298 mask!2687) lt!647298 lt!647299 mask!2687))))

(assert (=> b!1483156 (= lt!647298 (select (store (arr!47977 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483157 () Bool)

(declare-fun res!1008154 () Bool)

(assert (=> b!1483157 (=> (not res!1008154) (not e!831688))))

(assert (=> b!1483157 (= res!1008154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483158 () Bool)

(declare-fun res!1008159 () Bool)

(assert (=> b!1483158 (=> (not res!1008159) (not e!831688))))

(assert (=> b!1483158 (= res!1008159 (validKeyInArray!0 (select (arr!47977 a!2862) i!1006)))))

(declare-fun b!1483159 () Bool)

(declare-fun res!1008142 () Bool)

(assert (=> b!1483159 (=> (not res!1008142) (not e!831685))))

(assert (=> b!1483159 (= res!1008142 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47977 a!2862) j!93) a!2862 mask!2687) lt!647295))))

(assert (= (and start!126532 res!1008147) b!1483140))

(assert (= (and b!1483140 res!1008158) b!1483158))

(assert (= (and b!1483158 res!1008159) b!1483146))

(assert (= (and b!1483146 res!1008155) b!1483157))

(assert (= (and b!1483157 res!1008154) b!1483141))

(assert (= (and b!1483141 res!1008150) b!1483151))

(assert (= (and b!1483151 res!1008157) b!1483149))

(assert (= (and b!1483149 res!1008149) b!1483155))

(assert (= (and b!1483155 res!1008144) b!1483159))

(assert (= (and b!1483159 res!1008142) b!1483156))

(assert (= (and b!1483156 res!1008151) b!1483143))

(assert (= (and b!1483143 c!137024) b!1483145))

(assert (= (and b!1483143 (not c!137024)) b!1483142))

(assert (= (and b!1483143 res!1008146) b!1483148))

(assert (= (and b!1483148 res!1008153) b!1483154))

(assert (= (and b!1483154 res!1008148) b!1483153))

(assert (= (and b!1483153 res!1008156) b!1483139))

(assert (= (and b!1483139 res!1008145) b!1483150))

(assert (= (and b!1483150 (not res!1008143)) b!1483147))

(assert (= (and b!1483147 res!1008141) b!1483144))

(assert (= (and b!1483154 (not res!1008152)) b!1483152))

(declare-fun m!1368717 () Bool)

(assert (=> b!1483141 m!1368717))

(declare-fun m!1368719 () Bool)

(assert (=> b!1483157 m!1368719))

(declare-fun m!1368721 () Bool)

(assert (=> b!1483142 m!1368721))

(declare-fun m!1368723 () Bool)

(assert (=> b!1483142 m!1368723))

(declare-fun m!1368725 () Bool)

(assert (=> b!1483155 m!1368725))

(assert (=> b!1483155 m!1368725))

(declare-fun m!1368727 () Bool)

(assert (=> b!1483155 m!1368727))

(assert (=> b!1483155 m!1368727))

(assert (=> b!1483155 m!1368725))

(declare-fun m!1368729 () Bool)

(assert (=> b!1483155 m!1368729))

(declare-fun m!1368731 () Bool)

(assert (=> start!126532 m!1368731))

(declare-fun m!1368733 () Bool)

(assert (=> start!126532 m!1368733))

(declare-fun m!1368735 () Bool)

(assert (=> b!1483154 m!1368735))

(declare-fun m!1368737 () Bool)

(assert (=> b!1483154 m!1368737))

(declare-fun m!1368739 () Bool)

(assert (=> b!1483154 m!1368739))

(declare-fun m!1368741 () Bool)

(assert (=> b!1483154 m!1368741))

(declare-fun m!1368743 () Bool)

(assert (=> b!1483154 m!1368743))

(assert (=> b!1483154 m!1368725))

(assert (=> b!1483146 m!1368725))

(assert (=> b!1483146 m!1368725))

(declare-fun m!1368745 () Bool)

(assert (=> b!1483146 m!1368745))

(declare-fun m!1368747 () Bool)

(assert (=> b!1483158 m!1368747))

(assert (=> b!1483158 m!1368747))

(declare-fun m!1368749 () Bool)

(assert (=> b!1483158 m!1368749))

(assert (=> b!1483144 m!1368723))

(assert (=> b!1483144 m!1368721))

(declare-fun m!1368751 () Bool)

(assert (=> b!1483145 m!1368751))

(declare-fun m!1368753 () Bool)

(assert (=> b!1483152 m!1368753))

(declare-fun m!1368755 () Bool)

(assert (=> b!1483139 m!1368755))

(assert (=> b!1483139 m!1368725))

(assert (=> b!1483150 m!1368741))

(assert (=> b!1483150 m!1368725))

(assert (=> b!1483150 m!1368737))

(assert (=> b!1483150 m!1368739))

(assert (=> b!1483159 m!1368725))

(assert (=> b!1483159 m!1368725))

(declare-fun m!1368757 () Bool)

(assert (=> b!1483159 m!1368757))

(assert (=> b!1483149 m!1368737))

(declare-fun m!1368759 () Bool)

(assert (=> b!1483149 m!1368759))

(assert (=> b!1483153 m!1368725))

(assert (=> b!1483153 m!1368725))

(declare-fun m!1368761 () Bool)

(assert (=> b!1483153 m!1368761))

(declare-fun m!1368763 () Bool)

(assert (=> b!1483156 m!1368763))

(assert (=> b!1483156 m!1368763))

(declare-fun m!1368765 () Bool)

(assert (=> b!1483156 m!1368765))

(assert (=> b!1483156 m!1368737))

(declare-fun m!1368767 () Bool)

(assert (=> b!1483156 m!1368767))

(push 1)

