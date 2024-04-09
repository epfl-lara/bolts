; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126274 () Bool)

(assert start!126274)

(declare-fun b!1479160 () Bool)

(declare-fun res!1005203 () Bool)

(declare-fun e!829739 () Bool)

(assert (=> b!1479160 (=> (not res!1005203) (not e!829739))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99297 0))(
  ( (array!99298 (arr!47923 (Array (_ BitVec 32) (_ BitVec 64))) (size!48474 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99297)

(assert (=> b!1479160 (= res!1005203 (and (= (size!48474 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48474 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48474 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479161 () Bool)

(declare-fun res!1005209 () Bool)

(assert (=> b!1479161 (=> (not res!1005209) (not e!829739))))

(declare-datatypes ((List!34604 0))(
  ( (Nil!34601) (Cons!34600 (h!35968 (_ BitVec 64)) (t!49305 List!34604)) )
))
(declare-fun arrayNoDuplicates!0 (array!99297 (_ BitVec 32) List!34604) Bool)

(assert (=> b!1479161 (= res!1005209 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34601))))

(declare-fun b!1479162 () Bool)

(declare-fun res!1005210 () Bool)

(assert (=> b!1479162 (=> (not res!1005210) (not e!829739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479162 (= res!1005210 (validKeyInArray!0 (select (arr!47923 a!2862) i!1006)))))

(declare-fun b!1479163 () Bool)

(declare-fun res!1005200 () Bool)

(assert (=> b!1479163 (=> (not res!1005200) (not e!829739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99297 (_ BitVec 32)) Bool)

(assert (=> b!1479163 (= res!1005200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-datatypes ((SeekEntryResult!12186 0))(
  ( (MissingZero!12186 (index!51135 (_ BitVec 32))) (Found!12186 (index!51136 (_ BitVec 32))) (Intermediate!12186 (undefined!12998 Bool) (index!51137 (_ BitVec 32)) (x!132724 (_ BitVec 32))) (Undefined!12186) (MissingVacant!12186 (index!51138 (_ BitVec 32))) )
))
(declare-fun lt!645889 () SeekEntryResult!12186)

(declare-fun b!1479164 () Bool)

(declare-fun lt!645891 () array!99297)

(declare-fun e!829733 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!645892 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99297 (_ BitVec 32)) SeekEntryResult!12186)

(assert (=> b!1479164 (= e!829733 (= lt!645889 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645892 lt!645891 mask!2687)))))

(declare-fun b!1479165 () Bool)

(declare-fun e!829730 () Bool)

(declare-fun e!829735 () Bool)

(assert (=> b!1479165 (= e!829730 e!829735)))

(declare-fun res!1005202 () Bool)

(assert (=> b!1479165 (=> (not res!1005202) (not e!829735))))

(declare-fun lt!645895 () SeekEntryResult!12186)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479165 (= res!1005202 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47923 a!2862) j!93) mask!2687) (select (arr!47923 a!2862) j!93) a!2862 mask!2687) lt!645895))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479165 (= lt!645895 (Intermediate!12186 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479166 () Bool)

(declare-fun res!1005196 () Bool)

(declare-fun e!829736 () Bool)

(assert (=> b!1479166 (=> (not res!1005196) (not e!829736))))

(assert (=> b!1479166 (= res!1005196 e!829733)))

(declare-fun c!136505 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479166 (= c!136505 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479167 () Bool)

(declare-fun e!829737 () Bool)

(declare-fun lt!645894 () SeekEntryResult!12186)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99297 (_ BitVec 32)) SeekEntryResult!12186)

(assert (=> b!1479167 (= e!829737 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47923 a!2862) j!93) a!2862 mask!2687) lt!645894))))

(declare-fun b!1479168 () Bool)

(declare-fun res!1005199 () Bool)

(assert (=> b!1479168 (=> (not res!1005199) (not e!829739))))

(assert (=> b!1479168 (= res!1005199 (validKeyInArray!0 (select (arr!47923 a!2862) j!93)))))

(declare-fun b!1479170 () Bool)

(declare-fun e!829738 () Bool)

(declare-fun e!829732 () Bool)

(assert (=> b!1479170 (= e!829738 e!829732)))

(declare-fun res!1005208 () Bool)

(assert (=> b!1479170 (=> res!1005208 e!829732)))

(assert (=> b!1479170 (= res!1005208 (or (and (= (select (arr!47923 a!2862) index!646) (select (store (arr!47923 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47923 a!2862) index!646) (select (arr!47923 a!2862) j!93))) (not (= (select (arr!47923 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479171 () Bool)

(assert (=> b!1479171 (= e!829739 e!829730)))

(declare-fun res!1005201 () Bool)

(assert (=> b!1479171 (=> (not res!1005201) (not e!829730))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479171 (= res!1005201 (= (select (store (arr!47923 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479171 (= lt!645891 (array!99298 (store (arr!47923 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48474 a!2862)))))

(declare-fun b!1479172 () Bool)

(declare-fun e!829734 () Bool)

(assert (=> b!1479172 (= e!829734 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479173 () Bool)

(declare-fun res!1005206 () Bool)

(assert (=> b!1479173 (=> (not res!1005206) (not e!829739))))

(assert (=> b!1479173 (= res!1005206 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48474 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48474 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48474 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479174 () Bool)

(assert (=> b!1479174 (= e!829732 e!829734)))

(declare-fun res!1005204 () Bool)

(assert (=> b!1479174 (=> (not res!1005204) (not e!829734))))

(declare-fun lt!645893 () SeekEntryResult!12186)

(assert (=> b!1479174 (= res!1005204 (= lt!645893 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47923 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479175 () Bool)

(declare-fun res!1005198 () Bool)

(assert (=> b!1479175 (=> (not res!1005198) (not e!829735))))

(assert (=> b!1479175 (= res!1005198 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47923 a!2862) j!93) a!2862 mask!2687) lt!645895))))

(declare-fun b!1479176 () Bool)

(assert (=> b!1479176 (= e!829735 e!829736)))

(declare-fun res!1005205 () Bool)

(assert (=> b!1479176 (=> (not res!1005205) (not e!829736))))

(assert (=> b!1479176 (= res!1005205 (= lt!645889 (Intermediate!12186 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1479176 (= lt!645889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645892 mask!2687) lt!645892 lt!645891 mask!2687))))

(assert (=> b!1479176 (= lt!645892 (select (store (arr!47923 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479169 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99297 (_ BitVec 32)) SeekEntryResult!12186)

(assert (=> b!1479169 (= e!829733 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645892 lt!645891 mask!2687) (seekEntryOrOpen!0 lt!645892 lt!645891 mask!2687)))))

(declare-fun res!1005195 () Bool)

(assert (=> start!126274 (=> (not res!1005195) (not e!829739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126274 (= res!1005195 (validMask!0 mask!2687))))

(assert (=> start!126274 e!829739))

(assert (=> start!126274 true))

(declare-fun array_inv!36868 (array!99297) Bool)

(assert (=> start!126274 (array_inv!36868 a!2862)))

(declare-fun b!1479177 () Bool)

(declare-fun res!1005194 () Bool)

(assert (=> b!1479177 (=> (not res!1005194) (not e!829736))))

(assert (=> b!1479177 (= res!1005194 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479178 () Bool)

(assert (=> b!1479178 (= e!829736 (not e!829737))))

(declare-fun res!1005207 () Bool)

(assert (=> b!1479178 (=> res!1005207 e!829737)))

(assert (=> b!1479178 (= res!1005207 (or (and (= (select (arr!47923 a!2862) index!646) (select (store (arr!47923 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47923 a!2862) index!646) (select (arr!47923 a!2862) j!93))) (not (= (select (arr!47923 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47923 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1479178 e!829738))

(declare-fun res!1005197 () Bool)

(assert (=> b!1479178 (=> (not res!1005197) (not e!829738))))

(assert (=> b!1479178 (= res!1005197 (and (= lt!645893 lt!645894) (or (= (select (arr!47923 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47923 a!2862) intermediateBeforeIndex!19) (select (arr!47923 a!2862) j!93)))))))

(assert (=> b!1479178 (= lt!645894 (Found!12186 j!93))))

(assert (=> b!1479178 (= lt!645893 (seekEntryOrOpen!0 (select (arr!47923 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1479178 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49660 0))(
  ( (Unit!49661) )
))
(declare-fun lt!645890 () Unit!49660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49660)

(assert (=> b!1479178 (= lt!645890 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126274 res!1005195) b!1479160))

(assert (= (and b!1479160 res!1005203) b!1479162))

(assert (= (and b!1479162 res!1005210) b!1479168))

(assert (= (and b!1479168 res!1005199) b!1479163))

(assert (= (and b!1479163 res!1005200) b!1479161))

(assert (= (and b!1479161 res!1005209) b!1479173))

(assert (= (and b!1479173 res!1005206) b!1479171))

(assert (= (and b!1479171 res!1005201) b!1479165))

(assert (= (and b!1479165 res!1005202) b!1479175))

(assert (= (and b!1479175 res!1005198) b!1479176))

(assert (= (and b!1479176 res!1005205) b!1479166))

(assert (= (and b!1479166 c!136505) b!1479164))

(assert (= (and b!1479166 (not c!136505)) b!1479169))

(assert (= (and b!1479166 res!1005196) b!1479177))

(assert (= (and b!1479177 res!1005194) b!1479178))

(assert (= (and b!1479178 res!1005197) b!1479170))

(assert (= (and b!1479170 (not res!1005208)) b!1479174))

(assert (= (and b!1479174 res!1005204) b!1479172))

(assert (= (and b!1479178 (not res!1005207)) b!1479167))

(declare-fun m!1365099 () Bool)

(assert (=> b!1479164 m!1365099))

(declare-fun m!1365101 () Bool)

(assert (=> b!1479176 m!1365101))

(assert (=> b!1479176 m!1365101))

(declare-fun m!1365103 () Bool)

(assert (=> b!1479176 m!1365103))

(declare-fun m!1365105 () Bool)

(assert (=> b!1479176 m!1365105))

(declare-fun m!1365107 () Bool)

(assert (=> b!1479176 m!1365107))

(declare-fun m!1365109 () Bool)

(assert (=> b!1479162 m!1365109))

(assert (=> b!1479162 m!1365109))

(declare-fun m!1365111 () Bool)

(assert (=> b!1479162 m!1365111))

(declare-fun m!1365113 () Bool)

(assert (=> b!1479178 m!1365113))

(assert (=> b!1479178 m!1365105))

(declare-fun m!1365115 () Bool)

(assert (=> b!1479178 m!1365115))

(declare-fun m!1365117 () Bool)

(assert (=> b!1479178 m!1365117))

(declare-fun m!1365119 () Bool)

(assert (=> b!1479178 m!1365119))

(declare-fun m!1365121 () Bool)

(assert (=> b!1479178 m!1365121))

(declare-fun m!1365123 () Bool)

(assert (=> b!1479178 m!1365123))

(declare-fun m!1365125 () Bool)

(assert (=> b!1479178 m!1365125))

(assert (=> b!1479178 m!1365121))

(declare-fun m!1365127 () Bool)

(assert (=> b!1479161 m!1365127))

(assert (=> b!1479170 m!1365119))

(assert (=> b!1479170 m!1365105))

(assert (=> b!1479170 m!1365117))

(assert (=> b!1479170 m!1365121))

(assert (=> b!1479165 m!1365121))

(assert (=> b!1479165 m!1365121))

(declare-fun m!1365129 () Bool)

(assert (=> b!1479165 m!1365129))

(assert (=> b!1479165 m!1365129))

(assert (=> b!1479165 m!1365121))

(declare-fun m!1365131 () Bool)

(assert (=> b!1479165 m!1365131))

(assert (=> b!1479167 m!1365121))

(assert (=> b!1479167 m!1365121))

(declare-fun m!1365133 () Bool)

(assert (=> b!1479167 m!1365133))

(assert (=> b!1479175 m!1365121))

(assert (=> b!1479175 m!1365121))

(declare-fun m!1365135 () Bool)

(assert (=> b!1479175 m!1365135))

(assert (=> b!1479171 m!1365105))

(declare-fun m!1365137 () Bool)

(assert (=> b!1479171 m!1365137))

(declare-fun m!1365139 () Bool)

(assert (=> b!1479163 m!1365139))

(declare-fun m!1365141 () Bool)

(assert (=> b!1479169 m!1365141))

(declare-fun m!1365143 () Bool)

(assert (=> b!1479169 m!1365143))

(assert (=> b!1479174 m!1365121))

(assert (=> b!1479174 m!1365121))

(declare-fun m!1365145 () Bool)

(assert (=> b!1479174 m!1365145))

(assert (=> b!1479168 m!1365121))

(assert (=> b!1479168 m!1365121))

(declare-fun m!1365147 () Bool)

(assert (=> b!1479168 m!1365147))

(declare-fun m!1365149 () Bool)

(assert (=> start!126274 m!1365149))

(declare-fun m!1365151 () Bool)

(assert (=> start!126274 m!1365151))

(push 1)

