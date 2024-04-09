; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126682 () Bool)

(assert start!126682)

(declare-fun b!1486166 () Bool)

(declare-fun res!1010660 () Bool)

(declare-fun e!833174 () Bool)

(assert (=> b!1486166 (=> (not res!1010660) (not e!833174))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99498 0))(
  ( (array!99499 (arr!48019 (Array (_ BitVec 32) (_ BitVec 64))) (size!48570 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99498)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1486166 (= res!1010660 (or (= (select (arr!48019 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48019 a!2862) intermediateBeforeIndex!19) (select (arr!48019 a!2862) j!93))))))

(declare-fun b!1486167 () Bool)

(declare-fun res!1010646 () Bool)

(declare-fun e!833166 () Bool)

(assert (=> b!1486167 (=> (not res!1010646) (not e!833166))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486167 (= res!1010646 (validKeyInArray!0 (select (arr!48019 a!2862) i!1006)))))

(declare-fun b!1486168 () Bool)

(declare-fun res!1010651 () Bool)

(assert (=> b!1486168 (=> (not res!1010651) (not e!833166))))

(declare-datatypes ((List!34700 0))(
  ( (Nil!34697) (Cons!34696 (h!36073 (_ BitVec 64)) (t!49401 List!34700)) )
))
(declare-fun arrayNoDuplicates!0 (array!99498 (_ BitVec 32) List!34700) Bool)

(assert (=> b!1486168 (= res!1010651 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34697))))

(declare-fun b!1486169 () Bool)

(declare-fun res!1010643 () Bool)

(assert (=> b!1486169 (=> (not res!1010643) (not e!833166))))

(assert (=> b!1486169 (= res!1010643 (validKeyInArray!0 (select (arr!48019 a!2862) j!93)))))

(declare-fun b!1486170 () Bool)

(declare-fun res!1010647 () Bool)

(assert (=> b!1486170 (=> (not res!1010647) (not e!833166))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1486170 (= res!1010647 (and (= (size!48570 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48570 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48570 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486171 () Bool)

(declare-fun res!1010648 () Bool)

(assert (=> b!1486171 (=> (not res!1010648) (not e!833166))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486171 (= res!1010648 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48570 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48570 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48570 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486172 () Bool)

(declare-fun e!833167 () Bool)

(declare-fun e!833168 () Bool)

(assert (=> b!1486172 (= e!833167 e!833168)))

(declare-fun res!1010650 () Bool)

(assert (=> b!1486172 (=> (not res!1010650) (not e!833168))))

(declare-fun lt!648347 () (_ BitVec 64))

(assert (=> b!1486172 (= res!1010650 (and (= index!646 intermediateAfterIndex!19) (= lt!648347 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486173 () Bool)

(declare-fun e!833172 () Bool)

(assert (=> b!1486173 (= e!833172 true)))

(declare-fun lt!648348 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486173 (= lt!648348 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486174 () Bool)

(declare-fun res!1010649 () Bool)

(assert (=> b!1486174 (=> (not res!1010649) (not e!833166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99498 (_ BitVec 32)) Bool)

(assert (=> b!1486174 (= res!1010649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!648349 () array!99498)

(declare-fun lt!648346 () (_ BitVec 64))

(declare-fun b!1486175 () Bool)

(declare-datatypes ((SeekEntryResult!12282 0))(
  ( (MissingZero!12282 (index!51519 (_ BitVec 32))) (Found!12282 (index!51520 (_ BitVec 32))) (Intermediate!12282 (undefined!13094 Bool) (index!51521 (_ BitVec 32)) (x!133109 (_ BitVec 32))) (Undefined!12282) (MissingVacant!12282 (index!51522 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99498 (_ BitVec 32)) SeekEntryResult!12282)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99498 (_ BitVec 32)) SeekEntryResult!12282)

(assert (=> b!1486175 (= e!833168 (= (seekEntryOrOpen!0 lt!648346 lt!648349 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648346 lt!648349 mask!2687)))))

(declare-fun e!833170 () Bool)

(declare-fun b!1486177 () Bool)

(declare-fun lt!648343 () SeekEntryResult!12282)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99498 (_ BitVec 32)) SeekEntryResult!12282)

(assert (=> b!1486177 (= e!833170 (= lt!648343 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648346 lt!648349 mask!2687)))))

(declare-fun b!1486178 () Bool)

(declare-fun e!833173 () Bool)

(declare-fun e!833169 () Bool)

(assert (=> b!1486178 (= e!833173 e!833169)))

(declare-fun res!1010656 () Bool)

(assert (=> b!1486178 (=> (not res!1010656) (not e!833169))))

(assert (=> b!1486178 (= res!1010656 (= lt!648343 (Intermediate!12282 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486178 (= lt!648343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648346 mask!2687) lt!648346 lt!648349 mask!2687))))

(assert (=> b!1486178 (= lt!648346 (select (store (arr!48019 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486179 () Bool)

(assert (=> b!1486179 (= e!833170 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648346 lt!648349 mask!2687) (seekEntryOrOpen!0 lt!648346 lt!648349 mask!2687)))))

(declare-fun b!1486180 () Bool)

(declare-fun res!1010655 () Bool)

(assert (=> b!1486180 (=> (not res!1010655) (not e!833169))))

(assert (=> b!1486180 (= res!1010655 e!833170)))

(declare-fun c!137288 () Bool)

(assert (=> b!1486180 (= c!137288 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486181 () Bool)

(assert (=> b!1486181 (= e!833174 e!833167)))

(declare-fun res!1010653 () Bool)

(assert (=> b!1486181 (=> res!1010653 e!833167)))

(assert (=> b!1486181 (= res!1010653 (or (and (= (select (arr!48019 a!2862) index!646) lt!648347) (= (select (arr!48019 a!2862) index!646) (select (arr!48019 a!2862) j!93))) (= (select (arr!48019 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486181 (= lt!648347 (select (store (arr!48019 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486182 () Bool)

(declare-fun e!833171 () Bool)

(assert (=> b!1486182 (= e!833166 e!833171)))

(declare-fun res!1010654 () Bool)

(assert (=> b!1486182 (=> (not res!1010654) (not e!833171))))

(assert (=> b!1486182 (= res!1010654 (= (select (store (arr!48019 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486182 (= lt!648349 (array!99499 (store (arr!48019 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48570 a!2862)))))

(declare-fun res!1010661 () Bool)

(assert (=> start!126682 (=> (not res!1010661) (not e!833166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126682 (= res!1010661 (validMask!0 mask!2687))))

(assert (=> start!126682 e!833166))

(assert (=> start!126682 true))

(declare-fun array_inv!36964 (array!99498) Bool)

(assert (=> start!126682 (array_inv!36964 a!2862)))

(declare-fun b!1486176 () Bool)

(declare-fun res!1010659 () Bool)

(assert (=> b!1486176 (=> (not res!1010659) (not e!833174))))

(assert (=> b!1486176 (= res!1010659 (= (seekEntryOrOpen!0 (select (arr!48019 a!2862) j!93) a!2862 mask!2687) (Found!12282 j!93)))))

(declare-fun b!1486183 () Bool)

(declare-fun res!1010652 () Bool)

(assert (=> b!1486183 (=> (not res!1010652) (not e!833173))))

(declare-fun lt!648344 () SeekEntryResult!12282)

(assert (=> b!1486183 (= res!1010652 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48019 a!2862) j!93) a!2862 mask!2687) lt!648344))))

(declare-fun b!1486184 () Bool)

(declare-fun res!1010658 () Bool)

(assert (=> b!1486184 (=> (not res!1010658) (not e!833169))))

(assert (=> b!1486184 (= res!1010658 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486185 () Bool)

(assert (=> b!1486185 (= e!833171 e!833173)))

(declare-fun res!1010657 () Bool)

(assert (=> b!1486185 (=> (not res!1010657) (not e!833173))))

(assert (=> b!1486185 (= res!1010657 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48019 a!2862) j!93) mask!2687) (select (arr!48019 a!2862) j!93) a!2862 mask!2687) lt!648344))))

(assert (=> b!1486185 (= lt!648344 (Intermediate!12282 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486186 () Bool)

(assert (=> b!1486186 (= e!833169 (not e!833172))))

(declare-fun res!1010644 () Bool)

(assert (=> b!1486186 (=> res!1010644 e!833172)))

(assert (=> b!1486186 (= res!1010644 (or (and (= (select (arr!48019 a!2862) index!646) (select (store (arr!48019 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48019 a!2862) index!646) (select (arr!48019 a!2862) j!93))) (= (select (arr!48019 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486186 e!833174))

(declare-fun res!1010645 () Bool)

(assert (=> b!1486186 (=> (not res!1010645) (not e!833174))))

(assert (=> b!1486186 (= res!1010645 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49852 0))(
  ( (Unit!49853) )
))
(declare-fun lt!648345 () Unit!49852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49852)

(assert (=> b!1486186 (= lt!648345 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126682 res!1010661) b!1486170))

(assert (= (and b!1486170 res!1010647) b!1486167))

(assert (= (and b!1486167 res!1010646) b!1486169))

(assert (= (and b!1486169 res!1010643) b!1486174))

(assert (= (and b!1486174 res!1010649) b!1486168))

(assert (= (and b!1486168 res!1010651) b!1486171))

(assert (= (and b!1486171 res!1010648) b!1486182))

(assert (= (and b!1486182 res!1010654) b!1486185))

(assert (= (and b!1486185 res!1010657) b!1486183))

(assert (= (and b!1486183 res!1010652) b!1486178))

(assert (= (and b!1486178 res!1010656) b!1486180))

(assert (= (and b!1486180 c!137288) b!1486177))

(assert (= (and b!1486180 (not c!137288)) b!1486179))

(assert (= (and b!1486180 res!1010655) b!1486184))

(assert (= (and b!1486184 res!1010658) b!1486186))

(assert (= (and b!1486186 res!1010645) b!1486176))

(assert (= (and b!1486176 res!1010659) b!1486166))

(assert (= (and b!1486166 res!1010660) b!1486181))

(assert (= (and b!1486181 (not res!1010653)) b!1486172))

(assert (= (and b!1486172 res!1010650) b!1486175))

(assert (= (and b!1486186 (not res!1010644)) b!1486173))

(declare-fun m!1371135 () Bool)

(assert (=> b!1486176 m!1371135))

(assert (=> b!1486176 m!1371135))

(declare-fun m!1371137 () Bool)

(assert (=> b!1486176 m!1371137))

(assert (=> b!1486183 m!1371135))

(assert (=> b!1486183 m!1371135))

(declare-fun m!1371139 () Bool)

(assert (=> b!1486183 m!1371139))

(declare-fun m!1371141 () Bool)

(assert (=> start!126682 m!1371141))

(declare-fun m!1371143 () Bool)

(assert (=> start!126682 m!1371143))

(declare-fun m!1371145 () Bool)

(assert (=> b!1486166 m!1371145))

(assert (=> b!1486166 m!1371135))

(declare-fun m!1371147 () Bool)

(assert (=> b!1486174 m!1371147))

(declare-fun m!1371149 () Bool)

(assert (=> b!1486178 m!1371149))

(assert (=> b!1486178 m!1371149))

(declare-fun m!1371151 () Bool)

(assert (=> b!1486178 m!1371151))

(declare-fun m!1371153 () Bool)

(assert (=> b!1486178 m!1371153))

(declare-fun m!1371155 () Bool)

(assert (=> b!1486178 m!1371155))

(declare-fun m!1371157 () Bool)

(assert (=> b!1486181 m!1371157))

(assert (=> b!1486181 m!1371135))

(assert (=> b!1486181 m!1371153))

(declare-fun m!1371159 () Bool)

(assert (=> b!1486181 m!1371159))

(declare-fun m!1371161 () Bool)

(assert (=> b!1486175 m!1371161))

(declare-fun m!1371163 () Bool)

(assert (=> b!1486175 m!1371163))

(declare-fun m!1371165 () Bool)

(assert (=> b!1486167 m!1371165))

(assert (=> b!1486167 m!1371165))

(declare-fun m!1371167 () Bool)

(assert (=> b!1486167 m!1371167))

(declare-fun m!1371169 () Bool)

(assert (=> b!1486186 m!1371169))

(assert (=> b!1486186 m!1371153))

(assert (=> b!1486186 m!1371159))

(assert (=> b!1486186 m!1371157))

(declare-fun m!1371171 () Bool)

(assert (=> b!1486186 m!1371171))

(assert (=> b!1486186 m!1371135))

(assert (=> b!1486169 m!1371135))

(assert (=> b!1486169 m!1371135))

(declare-fun m!1371173 () Bool)

(assert (=> b!1486169 m!1371173))

(declare-fun m!1371175 () Bool)

(assert (=> b!1486168 m!1371175))

(assert (=> b!1486185 m!1371135))

(assert (=> b!1486185 m!1371135))

(declare-fun m!1371177 () Bool)

(assert (=> b!1486185 m!1371177))

(assert (=> b!1486185 m!1371177))

(assert (=> b!1486185 m!1371135))

(declare-fun m!1371179 () Bool)

(assert (=> b!1486185 m!1371179))

(declare-fun m!1371181 () Bool)

(assert (=> b!1486173 m!1371181))

(declare-fun m!1371183 () Bool)

(assert (=> b!1486177 m!1371183))

(assert (=> b!1486182 m!1371153))

(declare-fun m!1371185 () Bool)

(assert (=> b!1486182 m!1371185))

(assert (=> b!1486179 m!1371163))

(assert (=> b!1486179 m!1371161))

(push 1)

