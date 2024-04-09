; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125398 () Bool)

(assert start!125398)

(declare-fun b!1465136 () Bool)

(declare-fun res!994179 () Bool)

(declare-fun e!823321 () Bool)

(assert (=> b!1465136 (=> (not res!994179) (not e!823321))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11940 0))(
  ( (MissingZero!11940 (index!50151 (_ BitVec 32))) (Found!11940 (index!50152 (_ BitVec 32))) (Intermediate!11940 (undefined!12752 Bool) (index!50153 (_ BitVec 32)) (x!131736 (_ BitVec 32))) (Undefined!11940) (MissingVacant!11940 (index!50154 (_ BitVec 32))) )
))
(declare-fun lt!641272 () SeekEntryResult!11940)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98763 0))(
  ( (array!98764 (arr!47665 (Array (_ BitVec 32) (_ BitVec 64))) (size!48216 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98763)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98763 (_ BitVec 32)) SeekEntryResult!11940)

(assert (=> b!1465136 (= res!994179 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47665 a!2862) j!93) a!2862 mask!2687) lt!641272))))

(declare-fun b!1465137 () Bool)

(declare-fun res!994183 () Bool)

(declare-fun e!823319 () Bool)

(assert (=> b!1465137 (=> (not res!994183) (not e!823319))))

(declare-fun e!823315 () Bool)

(assert (=> b!1465137 (= res!994183 e!823315)))

(declare-fun c!134996 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465137 (= c!134996 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465138 () Bool)

(declare-fun e!823318 () Bool)

(declare-fun e!823313 () Bool)

(assert (=> b!1465138 (= e!823318 e!823313)))

(declare-fun res!994184 () Bool)

(assert (=> b!1465138 (=> (not res!994184) (not e!823313))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465138 (= res!994184 (= (select (store (arr!47665 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!641274 () array!98763)

(assert (=> b!1465138 (= lt!641274 (array!98764 (store (arr!47665 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48216 a!2862)))))

(declare-fun b!1465139 () Bool)

(declare-fun res!994188 () Bool)

(assert (=> b!1465139 (=> (not res!994188) (not e!823318))))

(declare-datatypes ((List!34346 0))(
  ( (Nil!34343) (Cons!34342 (h!35692 (_ BitVec 64)) (t!49047 List!34346)) )
))
(declare-fun arrayNoDuplicates!0 (array!98763 (_ BitVec 32) List!34346) Bool)

(assert (=> b!1465139 (= res!994188 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34343))))

(declare-fun b!1465140 () Bool)

(declare-fun res!994182 () Bool)

(assert (=> b!1465140 (=> (not res!994182) (not e!823318))))

(assert (=> b!1465140 (= res!994182 (and (= (size!48216 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48216 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48216 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465141 () Bool)

(declare-fun res!994173 () Bool)

(assert (=> b!1465141 (=> (not res!994173) (not e!823318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465141 (= res!994173 (validKeyInArray!0 (select (arr!47665 a!2862) i!1006)))))

(declare-fun b!1465142 () Bool)

(assert (=> b!1465142 (= e!823313 e!823321)))

(declare-fun res!994176 () Bool)

(assert (=> b!1465142 (=> (not res!994176) (not e!823321))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465142 (= res!994176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47665 a!2862) j!93) mask!2687) (select (arr!47665 a!2862) j!93) a!2862 mask!2687) lt!641272))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465142 (= lt!641272 (Intermediate!11940 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465143 () Bool)

(declare-fun res!994187 () Bool)

(assert (=> b!1465143 (=> (not res!994187) (not e!823319))))

(assert (=> b!1465143 (= res!994187 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465144 () Bool)

(declare-fun e!823320 () Bool)

(assert (=> b!1465144 (= e!823320 true)))

(declare-fun lt!641276 () Bool)

(declare-fun e!823322 () Bool)

(assert (=> b!1465144 (= lt!641276 e!823322)))

(declare-fun c!134995 () Bool)

(assert (=> b!1465144 (= c!134995 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun e!823316 () Bool)

(declare-fun b!1465145 () Bool)

(assert (=> b!1465145 (= e!823316 (or (= (select (arr!47665 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47665 a!2862) intermediateBeforeIndex!19) (select (arr!47665 a!2862) j!93))))))

(declare-fun lt!641273 () SeekEntryResult!11940)

(declare-fun b!1465146 () Bool)

(declare-fun lt!641277 () (_ BitVec 64))

(assert (=> b!1465146 (= e!823315 (= lt!641273 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641277 lt!641274 mask!2687)))))

(declare-fun res!994181 () Bool)

(assert (=> start!125398 (=> (not res!994181) (not e!823318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125398 (= res!994181 (validMask!0 mask!2687))))

(assert (=> start!125398 e!823318))

(assert (=> start!125398 true))

(declare-fun array_inv!36610 (array!98763) Bool)

(assert (=> start!125398 (array_inv!36610 a!2862)))

(declare-fun b!1465135 () Bool)

(declare-fun res!994174 () Bool)

(assert (=> b!1465135 (=> (not res!994174) (not e!823318))))

(assert (=> b!1465135 (= res!994174 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48216 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48216 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48216 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465147 () Bool)

(declare-fun res!994177 () Bool)

(assert (=> b!1465147 (=> (not res!994177) (not e!823318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98763 (_ BitVec 32)) Bool)

(assert (=> b!1465147 (= res!994177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465148 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98763 (_ BitVec 32)) SeekEntryResult!11940)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98763 (_ BitVec 32)) SeekEntryResult!11940)

(assert (=> b!1465148 (= e!823315 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641277 lt!641274 mask!2687) (seekEntryOrOpen!0 lt!641277 lt!641274 mask!2687)))))

(declare-fun b!1465149 () Bool)

(declare-fun e!823314 () Bool)

(assert (=> b!1465149 (= e!823319 (not e!823314))))

(declare-fun res!994171 () Bool)

(assert (=> b!1465149 (=> res!994171 e!823314)))

(assert (=> b!1465149 (= res!994171 (or (and (= (select (arr!47665 a!2862) index!646) (select (store (arr!47665 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47665 a!2862) index!646) (select (arr!47665 a!2862) j!93))) (= (select (arr!47665 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465149 e!823316))

(declare-fun res!994185 () Bool)

(assert (=> b!1465149 (=> (not res!994185) (not e!823316))))

(assert (=> b!1465149 (= res!994185 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49324 0))(
  ( (Unit!49325) )
))
(declare-fun lt!641278 () Unit!49324)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49324)

(assert (=> b!1465149 (= lt!641278 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465150 () Bool)

(declare-fun res!994178 () Bool)

(assert (=> b!1465150 (=> (not res!994178) (not e!823318))))

(assert (=> b!1465150 (= res!994178 (validKeyInArray!0 (select (arr!47665 a!2862) j!93)))))

(declare-fun b!1465151 () Bool)

(assert (=> b!1465151 (= e!823314 e!823320)))

(declare-fun res!994172 () Bool)

(assert (=> b!1465151 (=> res!994172 e!823320)))

(declare-fun lt!641275 () (_ BitVec 32))

(assert (=> b!1465151 (= res!994172 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641275 #b00000000000000000000000000000000) (bvsge lt!641275 (size!48216 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465151 (= lt!641275 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465152 () Bool)

(assert (=> b!1465152 (= e!823322 (not (= lt!641273 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641275 lt!641277 lt!641274 mask!2687))))))

(declare-fun b!1465153 () Bool)

(assert (=> b!1465153 (= e!823321 e!823319)))

(declare-fun res!994175 () Bool)

(assert (=> b!1465153 (=> (not res!994175) (not e!823319))))

(assert (=> b!1465153 (= res!994175 (= lt!641273 (Intermediate!11940 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1465153 (= lt!641273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641277 mask!2687) lt!641277 lt!641274 mask!2687))))

(assert (=> b!1465153 (= lt!641277 (select (store (arr!47665 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465154 () Bool)

(declare-fun res!994186 () Bool)

(assert (=> b!1465154 (=> (not res!994186) (not e!823316))))

(assert (=> b!1465154 (= res!994186 (= (seekEntryOrOpen!0 (select (arr!47665 a!2862) j!93) a!2862 mask!2687) (Found!11940 j!93)))))

(declare-fun b!1465155 () Bool)

(declare-fun res!994180 () Bool)

(assert (=> b!1465155 (=> res!994180 e!823320)))

(assert (=> b!1465155 (= res!994180 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641275 (select (arr!47665 a!2862) j!93) a!2862 mask!2687) lt!641272)))))

(declare-fun b!1465156 () Bool)

(assert (=> b!1465156 (= e!823322 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641275 intermediateAfterIndex!19 lt!641277 lt!641274 mask!2687) (seekEntryOrOpen!0 lt!641277 lt!641274 mask!2687))))))

(assert (= (and start!125398 res!994181) b!1465140))

(assert (= (and b!1465140 res!994182) b!1465141))

(assert (= (and b!1465141 res!994173) b!1465150))

(assert (= (and b!1465150 res!994178) b!1465147))

(assert (= (and b!1465147 res!994177) b!1465139))

(assert (= (and b!1465139 res!994188) b!1465135))

(assert (= (and b!1465135 res!994174) b!1465138))

(assert (= (and b!1465138 res!994184) b!1465142))

(assert (= (and b!1465142 res!994176) b!1465136))

(assert (= (and b!1465136 res!994179) b!1465153))

(assert (= (and b!1465153 res!994175) b!1465137))

(assert (= (and b!1465137 c!134996) b!1465146))

(assert (= (and b!1465137 (not c!134996)) b!1465148))

(assert (= (and b!1465137 res!994183) b!1465143))

(assert (= (and b!1465143 res!994187) b!1465149))

(assert (= (and b!1465149 res!994185) b!1465154))

(assert (= (and b!1465154 res!994186) b!1465145))

(assert (= (and b!1465149 (not res!994171)) b!1465151))

(assert (= (and b!1465151 (not res!994172)) b!1465155))

(assert (= (and b!1465155 (not res!994180)) b!1465144))

(assert (= (and b!1465144 c!134995) b!1465152))

(assert (= (and b!1465144 (not c!134995)) b!1465156))

(declare-fun m!1352313 () Bool)

(assert (=> b!1465148 m!1352313))

(declare-fun m!1352315 () Bool)

(assert (=> b!1465148 m!1352315))

(declare-fun m!1352317 () Bool)

(assert (=> b!1465139 m!1352317))

(declare-fun m!1352319 () Bool)

(assert (=> b!1465142 m!1352319))

(assert (=> b!1465142 m!1352319))

(declare-fun m!1352321 () Bool)

(assert (=> b!1465142 m!1352321))

(assert (=> b!1465142 m!1352321))

(assert (=> b!1465142 m!1352319))

(declare-fun m!1352323 () Bool)

(assert (=> b!1465142 m!1352323))

(declare-fun m!1352325 () Bool)

(assert (=> b!1465138 m!1352325))

(declare-fun m!1352327 () Bool)

(assert (=> b!1465138 m!1352327))

(declare-fun m!1352329 () Bool)

(assert (=> b!1465151 m!1352329))

(declare-fun m!1352331 () Bool)

(assert (=> b!1465147 m!1352331))

(assert (=> b!1465155 m!1352319))

(assert (=> b!1465155 m!1352319))

(declare-fun m!1352333 () Bool)

(assert (=> b!1465155 m!1352333))

(declare-fun m!1352335 () Bool)

(assert (=> b!1465153 m!1352335))

(assert (=> b!1465153 m!1352335))

(declare-fun m!1352337 () Bool)

(assert (=> b!1465153 m!1352337))

(assert (=> b!1465153 m!1352325))

(declare-fun m!1352339 () Bool)

(assert (=> b!1465153 m!1352339))

(declare-fun m!1352341 () Bool)

(assert (=> start!125398 m!1352341))

(declare-fun m!1352343 () Bool)

(assert (=> start!125398 m!1352343))

(assert (=> b!1465136 m!1352319))

(assert (=> b!1465136 m!1352319))

(declare-fun m!1352345 () Bool)

(assert (=> b!1465136 m!1352345))

(declare-fun m!1352347 () Bool)

(assert (=> b!1465145 m!1352347))

(assert (=> b!1465145 m!1352319))

(assert (=> b!1465150 m!1352319))

(assert (=> b!1465150 m!1352319))

(declare-fun m!1352349 () Bool)

(assert (=> b!1465150 m!1352349))

(declare-fun m!1352351 () Bool)

(assert (=> b!1465156 m!1352351))

(assert (=> b!1465156 m!1352315))

(declare-fun m!1352353 () Bool)

(assert (=> b!1465141 m!1352353))

(assert (=> b!1465141 m!1352353))

(declare-fun m!1352355 () Bool)

(assert (=> b!1465141 m!1352355))

(declare-fun m!1352357 () Bool)

(assert (=> b!1465146 m!1352357))

(assert (=> b!1465154 m!1352319))

(assert (=> b!1465154 m!1352319))

(declare-fun m!1352359 () Bool)

(assert (=> b!1465154 m!1352359))

(declare-fun m!1352361 () Bool)

(assert (=> b!1465149 m!1352361))

(assert (=> b!1465149 m!1352325))

(declare-fun m!1352363 () Bool)

(assert (=> b!1465149 m!1352363))

(declare-fun m!1352365 () Bool)

(assert (=> b!1465149 m!1352365))

(declare-fun m!1352367 () Bool)

(assert (=> b!1465149 m!1352367))

(assert (=> b!1465149 m!1352319))

(declare-fun m!1352369 () Bool)

(assert (=> b!1465152 m!1352369))

(push 1)

