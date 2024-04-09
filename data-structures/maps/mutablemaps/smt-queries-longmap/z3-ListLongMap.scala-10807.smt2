; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126534 () Bool)

(assert start!126534)

(declare-fun b!1483202 () Bool)

(declare-fun res!1008209 () Bool)

(declare-fun e!831716 () Bool)

(assert (=> b!1483202 (=> (not res!1008209) (not e!831716))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99413 0))(
  ( (array!99414 (arr!47978 (Array (_ BitVec 32) (_ BitVec 64))) (size!48529 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99413)

(assert (=> b!1483202 (= res!1008209 (and (= (size!48529 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48529 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48529 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483203 () Bool)

(declare-fun res!1008202 () Bool)

(declare-fun e!831710 () Bool)

(assert (=> b!1483203 (=> (not res!1008202) (not e!831710))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483203 (= res!1008202 (or (= (select (arr!47978 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47978 a!2862) intermediateBeforeIndex!19) (select (arr!47978 a!2862) j!93))))))

(declare-fun b!1483204 () Bool)

(declare-fun e!831714 () Bool)

(declare-fun e!831711 () Bool)

(assert (=> b!1483204 (= e!831714 e!831711)))

(declare-fun res!1008206 () Bool)

(assert (=> b!1483204 (=> (not res!1008206) (not e!831711))))

(declare-datatypes ((SeekEntryResult!12241 0))(
  ( (MissingZero!12241 (index!51355 (_ BitVec 32))) (Found!12241 (index!51356 (_ BitVec 32))) (Intermediate!12241 (undefined!13053 Bool) (index!51357 (_ BitVec 32)) (x!132944 (_ BitVec 32))) (Undefined!12241) (MissingVacant!12241 (index!51358 (_ BitVec 32))) )
))
(declare-fun lt!647319 () SeekEntryResult!12241)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99413 (_ BitVec 32)) SeekEntryResult!12241)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483204 (= res!1008206 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47978 a!2862) j!93) mask!2687) (select (arr!47978 a!2862) j!93) a!2862 mask!2687) lt!647319))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483204 (= lt!647319 (Intermediate!12241 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1483205 () Bool)

(declare-fun lt!647318 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!831719 () Bool)

(declare-fun lt!647315 () array!99413)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99413 (_ BitVec 32)) SeekEntryResult!12241)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99413 (_ BitVec 32)) SeekEntryResult!12241)

(assert (=> b!1483205 (= e!831719 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647318 lt!647315 mask!2687) (seekEntryOrOpen!0 lt!647318 lt!647315 mask!2687)))))

(declare-fun b!1483206 () Bool)

(declare-fun res!1008198 () Bool)

(declare-fun e!831717 () Bool)

(assert (=> b!1483206 (=> (not res!1008198) (not e!831717))))

(assert (=> b!1483206 (= res!1008198 e!831719)))

(declare-fun c!137027 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483206 (= c!137027 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483207 () Bool)

(assert (=> b!1483207 (= e!831716 e!831714)))

(declare-fun res!1008205 () Bool)

(assert (=> b!1483207 (=> (not res!1008205) (not e!831714))))

(assert (=> b!1483207 (= res!1008205 (= (select (store (arr!47978 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483207 (= lt!647315 (array!99414 (store (arr!47978 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48529 a!2862)))))

(declare-fun b!1483208 () Bool)

(declare-fun e!831715 () Bool)

(declare-fun e!831712 () Bool)

(assert (=> b!1483208 (= e!831715 e!831712)))

(declare-fun res!1008208 () Bool)

(assert (=> b!1483208 (=> (not res!1008208) (not e!831712))))

(declare-fun lt!647314 () (_ BitVec 64))

(assert (=> b!1483208 (= res!1008208 (and (= index!646 intermediateAfterIndex!19) (= lt!647314 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483209 () Bool)

(assert (=> b!1483209 (= e!831710 e!831715)))

(declare-fun res!1008204 () Bool)

(assert (=> b!1483209 (=> res!1008204 e!831715)))

(assert (=> b!1483209 (= res!1008204 (or (and (= (select (arr!47978 a!2862) index!646) lt!647314) (= (select (arr!47978 a!2862) index!646) (select (arr!47978 a!2862) j!93))) (= (select (arr!47978 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483209 (= lt!647314 (select (store (arr!47978 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483210 () Bool)

(declare-fun res!1008207 () Bool)

(assert (=> b!1483210 (=> (not res!1008207) (not e!831710))))

(assert (=> b!1483210 (= res!1008207 (= (seekEntryOrOpen!0 (select (arr!47978 a!2862) j!93) a!2862 mask!2687) (Found!12241 j!93)))))

(declare-fun b!1483211 () Bool)

(declare-fun res!1008201 () Bool)

(assert (=> b!1483211 (=> (not res!1008201) (not e!831711))))

(assert (=> b!1483211 (= res!1008201 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47978 a!2862) j!93) a!2862 mask!2687) lt!647319))))

(declare-fun b!1483212 () Bool)

(declare-fun res!1008210 () Bool)

(assert (=> b!1483212 (=> (not res!1008210) (not e!831716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99413 (_ BitVec 32)) Bool)

(assert (=> b!1483212 (= res!1008210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!647316 () SeekEntryResult!12241)

(declare-fun b!1483213 () Bool)

(assert (=> b!1483213 (= e!831719 (= lt!647316 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647318 lt!647315 mask!2687)))))

(declare-fun b!1483214 () Bool)

(declare-fun res!1008215 () Bool)

(assert (=> b!1483214 (=> (not res!1008215) (not e!831716))))

(assert (=> b!1483214 (= res!1008215 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48529 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48529 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48529 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1008199 () Bool)

(assert (=> start!126534 (=> (not res!1008199) (not e!831716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126534 (= res!1008199 (validMask!0 mask!2687))))

(assert (=> start!126534 e!831716))

(assert (=> start!126534 true))

(declare-fun array_inv!36923 (array!99413) Bool)

(assert (=> start!126534 (array_inv!36923 a!2862)))

(declare-fun b!1483215 () Bool)

(assert (=> b!1483215 (= e!831711 e!831717)))

(declare-fun res!1008211 () Bool)

(assert (=> b!1483215 (=> (not res!1008211) (not e!831717))))

(assert (=> b!1483215 (= res!1008211 (= lt!647316 (Intermediate!12241 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483215 (= lt!647316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647318 mask!2687) lt!647318 lt!647315 mask!2687))))

(assert (=> b!1483215 (= lt!647318 (select (store (arr!47978 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483216 () Bool)

(assert (=> b!1483216 (= e!831712 (= (seekEntryOrOpen!0 lt!647318 lt!647315 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647318 lt!647315 mask!2687)))))

(declare-fun b!1483217 () Bool)

(declare-fun res!1008216 () Bool)

(assert (=> b!1483217 (=> (not res!1008216) (not e!831716))))

(declare-datatypes ((List!34659 0))(
  ( (Nil!34656) (Cons!34655 (h!36029 (_ BitVec 64)) (t!49360 List!34659)) )
))
(declare-fun arrayNoDuplicates!0 (array!99413 (_ BitVec 32) List!34659) Bool)

(assert (=> b!1483217 (= res!1008216 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34656))))

(declare-fun b!1483218 () Bool)

(declare-fun e!831718 () Bool)

(assert (=> b!1483218 (= e!831717 (not e!831718))))

(declare-fun res!1008213 () Bool)

(assert (=> b!1483218 (=> res!1008213 e!831718)))

(assert (=> b!1483218 (= res!1008213 (or (and (= (select (arr!47978 a!2862) index!646) (select (store (arr!47978 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47978 a!2862) index!646) (select (arr!47978 a!2862) j!93))) (= (select (arr!47978 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483218 e!831710))

(declare-fun res!1008203 () Bool)

(assert (=> b!1483218 (=> (not res!1008203) (not e!831710))))

(assert (=> b!1483218 (= res!1008203 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49770 0))(
  ( (Unit!49771) )
))
(declare-fun lt!647320 () Unit!49770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49770)

(assert (=> b!1483218 (= lt!647320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483219 () Bool)

(declare-fun res!1008214 () Bool)

(assert (=> b!1483219 (=> (not res!1008214) (not e!831716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483219 (= res!1008214 (validKeyInArray!0 (select (arr!47978 a!2862) i!1006)))))

(declare-fun b!1483220 () Bool)

(assert (=> b!1483220 (= e!831718 true)))

(declare-fun lt!647317 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483220 (= lt!647317 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483221 () Bool)

(declare-fun res!1008212 () Bool)

(assert (=> b!1483221 (=> (not res!1008212) (not e!831717))))

(assert (=> b!1483221 (= res!1008212 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483222 () Bool)

(declare-fun res!1008200 () Bool)

(assert (=> b!1483222 (=> (not res!1008200) (not e!831716))))

(assert (=> b!1483222 (= res!1008200 (validKeyInArray!0 (select (arr!47978 a!2862) j!93)))))

(assert (= (and start!126534 res!1008199) b!1483202))

(assert (= (and b!1483202 res!1008209) b!1483219))

(assert (= (and b!1483219 res!1008214) b!1483222))

(assert (= (and b!1483222 res!1008200) b!1483212))

(assert (= (and b!1483212 res!1008210) b!1483217))

(assert (= (and b!1483217 res!1008216) b!1483214))

(assert (= (and b!1483214 res!1008215) b!1483207))

(assert (= (and b!1483207 res!1008205) b!1483204))

(assert (= (and b!1483204 res!1008206) b!1483211))

(assert (= (and b!1483211 res!1008201) b!1483215))

(assert (= (and b!1483215 res!1008211) b!1483206))

(assert (= (and b!1483206 c!137027) b!1483213))

(assert (= (and b!1483206 (not c!137027)) b!1483205))

(assert (= (and b!1483206 res!1008198) b!1483221))

(assert (= (and b!1483221 res!1008212) b!1483218))

(assert (= (and b!1483218 res!1008203) b!1483210))

(assert (= (and b!1483210 res!1008207) b!1483203))

(assert (= (and b!1483203 res!1008202) b!1483209))

(assert (= (and b!1483209 (not res!1008204)) b!1483208))

(assert (= (and b!1483208 res!1008208) b!1483216))

(assert (= (and b!1483218 (not res!1008213)) b!1483220))

(declare-fun m!1368769 () Bool)

(assert (=> b!1483219 m!1368769))

(assert (=> b!1483219 m!1368769))

(declare-fun m!1368771 () Bool)

(assert (=> b!1483219 m!1368771))

(declare-fun m!1368773 () Bool)

(assert (=> b!1483204 m!1368773))

(assert (=> b!1483204 m!1368773))

(declare-fun m!1368775 () Bool)

(assert (=> b!1483204 m!1368775))

(assert (=> b!1483204 m!1368775))

(assert (=> b!1483204 m!1368773))

(declare-fun m!1368777 () Bool)

(assert (=> b!1483204 m!1368777))

(declare-fun m!1368779 () Bool)

(assert (=> b!1483207 m!1368779))

(declare-fun m!1368781 () Bool)

(assert (=> b!1483207 m!1368781))

(declare-fun m!1368783 () Bool)

(assert (=> b!1483205 m!1368783))

(declare-fun m!1368785 () Bool)

(assert (=> b!1483205 m!1368785))

(declare-fun m!1368787 () Bool)

(assert (=> b!1483209 m!1368787))

(assert (=> b!1483209 m!1368773))

(assert (=> b!1483209 m!1368779))

(declare-fun m!1368789 () Bool)

(assert (=> b!1483209 m!1368789))

(declare-fun m!1368791 () Bool)

(assert (=> start!126534 m!1368791))

(declare-fun m!1368793 () Bool)

(assert (=> start!126534 m!1368793))

(declare-fun m!1368795 () Bool)

(assert (=> b!1483203 m!1368795))

(assert (=> b!1483203 m!1368773))

(declare-fun m!1368797 () Bool)

(assert (=> b!1483218 m!1368797))

(assert (=> b!1483218 m!1368779))

(assert (=> b!1483218 m!1368789))

(assert (=> b!1483218 m!1368787))

(declare-fun m!1368799 () Bool)

(assert (=> b!1483218 m!1368799))

(assert (=> b!1483218 m!1368773))

(assert (=> b!1483216 m!1368785))

(assert (=> b!1483216 m!1368783))

(declare-fun m!1368801 () Bool)

(assert (=> b!1483213 m!1368801))

(assert (=> b!1483210 m!1368773))

(assert (=> b!1483210 m!1368773))

(declare-fun m!1368803 () Bool)

(assert (=> b!1483210 m!1368803))

(declare-fun m!1368805 () Bool)

(assert (=> b!1483217 m!1368805))

(declare-fun m!1368807 () Bool)

(assert (=> b!1483212 m!1368807))

(assert (=> b!1483222 m!1368773))

(assert (=> b!1483222 m!1368773))

(declare-fun m!1368809 () Bool)

(assert (=> b!1483222 m!1368809))

(declare-fun m!1368811 () Bool)

(assert (=> b!1483215 m!1368811))

(assert (=> b!1483215 m!1368811))

(declare-fun m!1368813 () Bool)

(assert (=> b!1483215 m!1368813))

(assert (=> b!1483215 m!1368779))

(declare-fun m!1368815 () Bool)

(assert (=> b!1483215 m!1368815))

(assert (=> b!1483211 m!1368773))

(assert (=> b!1483211 m!1368773))

(declare-fun m!1368817 () Bool)

(assert (=> b!1483211 m!1368817))

(declare-fun m!1368819 () Bool)

(assert (=> b!1483220 m!1368819))

(check-sat (not b!1483213) (not b!1483217) (not b!1483222) (not b!1483216) (not b!1483204) (not b!1483210) (not b!1483211) (not b!1483205) (not b!1483220) (not b!1483219) (not b!1483212) (not b!1483215) (not b!1483218) (not start!126534))
(check-sat)
