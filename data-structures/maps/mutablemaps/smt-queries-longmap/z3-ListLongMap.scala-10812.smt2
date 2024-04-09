; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126564 () Bool)

(assert start!126564)

(declare-fun b!1484147 () Bool)

(declare-fun res!1009059 () Bool)

(declare-fun e!832164 () Bool)

(assert (=> b!1484147 (=> (not res!1009059) (not e!832164))))

(declare-datatypes ((array!99443 0))(
  ( (array!99444 (arr!47993 (Array (_ BitVec 32) (_ BitVec 64))) (size!48544 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99443)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99443 (_ BitVec 32)) Bool)

(assert (=> b!1484147 (= res!1009059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484148 () Bool)

(declare-fun e!832162 () Bool)

(declare-fun e!832167 () Bool)

(assert (=> b!1484148 (= e!832162 e!832167)))

(declare-fun res!1009071 () Bool)

(assert (=> b!1484148 (=> (not res!1009071) (not e!832167))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12256 0))(
  ( (MissingZero!12256 (index!51415 (_ BitVec 32))) (Found!12256 (index!51416 (_ BitVec 32))) (Intermediate!12256 (undefined!13068 Bool) (index!51417 (_ BitVec 32)) (x!132999 (_ BitVec 32))) (Undefined!12256) (MissingVacant!12256 (index!51418 (_ BitVec 32))) )
))
(declare-fun lt!647630 () SeekEntryResult!12256)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484148 (= res!1009071 (= lt!647630 (Intermediate!12256 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647629 () (_ BitVec 64))

(declare-fun lt!647631 () array!99443)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99443 (_ BitVec 32)) SeekEntryResult!12256)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484148 (= lt!647630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647629 mask!2687) lt!647629 lt!647631 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484148 (= lt!647629 (select (store (arr!47993 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!832160 () Bool)

(declare-fun b!1484149 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99443 (_ BitVec 32)) SeekEntryResult!12256)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99443 (_ BitVec 32)) SeekEntryResult!12256)

(assert (=> b!1484149 (= e!832160 (= (seekEntryOrOpen!0 lt!647629 lt!647631 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647629 lt!647631 mask!2687)))))

(declare-fun b!1484150 () Bool)

(declare-fun res!1009053 () Bool)

(declare-fun e!832165 () Bool)

(assert (=> b!1484150 (=> (not res!1009053) (not e!832165))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1484150 (= res!1009053 (or (= (select (arr!47993 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47993 a!2862) intermediateBeforeIndex!19) (select (arr!47993 a!2862) j!93))))))

(declare-fun b!1484151 () Bool)

(declare-fun res!1009058 () Bool)

(assert (=> b!1484151 (=> (not res!1009058) (not e!832167))))

(declare-fun e!832169 () Bool)

(assert (=> b!1484151 (= res!1009058 e!832169)))

(declare-fun c!137072 () Bool)

(assert (=> b!1484151 (= c!137072 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484152 () Bool)

(declare-fun res!1009069 () Bool)

(assert (=> b!1484152 (=> (not res!1009069) (not e!832167))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484152 (= res!1009069 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484153 () Bool)

(declare-fun e!832168 () Bool)

(assert (=> b!1484153 (= e!832164 e!832168)))

(declare-fun res!1009067 () Bool)

(assert (=> b!1484153 (=> (not res!1009067) (not e!832168))))

(assert (=> b!1484153 (= res!1009067 (= (select (store (arr!47993 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484153 (= lt!647631 (array!99444 (store (arr!47993 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48544 a!2862)))))

(declare-fun b!1484154 () Bool)

(declare-fun e!832161 () Bool)

(assert (=> b!1484154 (= e!832167 (not e!832161))))

(declare-fun res!1009057 () Bool)

(assert (=> b!1484154 (=> res!1009057 e!832161)))

(assert (=> b!1484154 (= res!1009057 (or (and (= (select (arr!47993 a!2862) index!646) (select (store (arr!47993 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47993 a!2862) index!646) (select (arr!47993 a!2862) j!93))) (= (select (arr!47993 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484154 e!832165))

(declare-fun res!1009062 () Bool)

(assert (=> b!1484154 (=> (not res!1009062) (not e!832165))))

(assert (=> b!1484154 (= res!1009062 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49800 0))(
  ( (Unit!49801) )
))
(declare-fun lt!647633 () Unit!49800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99443 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49800)

(assert (=> b!1484154 (= lt!647633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484155 () Bool)

(declare-fun res!1009063 () Bool)

(assert (=> b!1484155 (=> (not res!1009063) (not e!832164))))

(assert (=> b!1484155 (= res!1009063 (and (= (size!48544 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48544 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48544 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484156 () Bool)

(assert (=> b!1484156 (= e!832169 (= lt!647630 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647629 lt!647631 mask!2687)))))

(declare-fun b!1484157 () Bool)

(assert (=> b!1484157 (= e!832168 e!832162)))

(declare-fun res!1009064 () Bool)

(assert (=> b!1484157 (=> (not res!1009064) (not e!832162))))

(declare-fun lt!647635 () SeekEntryResult!12256)

(assert (=> b!1484157 (= res!1009064 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47993 a!2862) j!93) mask!2687) (select (arr!47993 a!2862) j!93) a!2862 mask!2687) lt!647635))))

(assert (=> b!1484157 (= lt!647635 (Intermediate!12256 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484158 () Bool)

(declare-fun res!1009054 () Bool)

(assert (=> b!1484158 (=> (not res!1009054) (not e!832164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484158 (= res!1009054 (validKeyInArray!0 (select (arr!47993 a!2862) j!93)))))

(declare-fun b!1484159 () Bool)

(assert (=> b!1484159 (= e!832169 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647629 lt!647631 mask!2687) (seekEntryOrOpen!0 lt!647629 lt!647631 mask!2687)))))

(declare-fun b!1484160 () Bool)

(declare-fun res!1009056 () Bool)

(assert (=> b!1484160 (=> (not res!1009056) (not e!832164))))

(declare-datatypes ((List!34674 0))(
  ( (Nil!34671) (Cons!34670 (h!36044 (_ BitVec 64)) (t!49375 List!34674)) )
))
(declare-fun arrayNoDuplicates!0 (array!99443 (_ BitVec 32) List!34674) Bool)

(assert (=> b!1484160 (= res!1009056 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34671))))

(declare-fun b!1484161 () Bool)

(declare-fun e!832166 () Bool)

(assert (=> b!1484161 (= e!832165 e!832166)))

(declare-fun res!1009060 () Bool)

(assert (=> b!1484161 (=> res!1009060 e!832166)))

(declare-fun lt!647634 () (_ BitVec 64))

(assert (=> b!1484161 (= res!1009060 (or (and (= (select (arr!47993 a!2862) index!646) lt!647634) (= (select (arr!47993 a!2862) index!646) (select (arr!47993 a!2862) j!93))) (= (select (arr!47993 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484161 (= lt!647634 (select (store (arr!47993 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484162 () Bool)

(declare-fun res!1009061 () Bool)

(assert (=> b!1484162 (=> (not res!1009061) (not e!832165))))

(assert (=> b!1484162 (= res!1009061 (= (seekEntryOrOpen!0 (select (arr!47993 a!2862) j!93) a!2862 mask!2687) (Found!12256 j!93)))))

(declare-fun b!1484163 () Bool)

(declare-fun res!1009055 () Bool)

(assert (=> b!1484163 (=> (not res!1009055) (not e!832162))))

(assert (=> b!1484163 (= res!1009055 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47993 a!2862) j!93) a!2862 mask!2687) lt!647635))))

(declare-fun res!1009066 () Bool)

(assert (=> start!126564 (=> (not res!1009066) (not e!832164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126564 (= res!1009066 (validMask!0 mask!2687))))

(assert (=> start!126564 e!832164))

(assert (=> start!126564 true))

(declare-fun array_inv!36938 (array!99443) Bool)

(assert (=> start!126564 (array_inv!36938 a!2862)))

(declare-fun b!1484164 () Bool)

(assert (=> b!1484164 (= e!832161 true)))

(declare-fun lt!647632 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484164 (= lt!647632 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484165 () Bool)

(assert (=> b!1484165 (= e!832166 e!832160)))

(declare-fun res!1009070 () Bool)

(assert (=> b!1484165 (=> (not res!1009070) (not e!832160))))

(assert (=> b!1484165 (= res!1009070 (and (= index!646 intermediateAfterIndex!19) (= lt!647634 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484166 () Bool)

(declare-fun res!1009068 () Bool)

(assert (=> b!1484166 (=> (not res!1009068) (not e!832164))))

(assert (=> b!1484166 (= res!1009068 (validKeyInArray!0 (select (arr!47993 a!2862) i!1006)))))

(declare-fun b!1484167 () Bool)

(declare-fun res!1009065 () Bool)

(assert (=> b!1484167 (=> (not res!1009065) (not e!832164))))

(assert (=> b!1484167 (= res!1009065 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48544 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48544 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48544 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126564 res!1009066) b!1484155))

(assert (= (and b!1484155 res!1009063) b!1484166))

(assert (= (and b!1484166 res!1009068) b!1484158))

(assert (= (and b!1484158 res!1009054) b!1484147))

(assert (= (and b!1484147 res!1009059) b!1484160))

(assert (= (and b!1484160 res!1009056) b!1484167))

(assert (= (and b!1484167 res!1009065) b!1484153))

(assert (= (and b!1484153 res!1009067) b!1484157))

(assert (= (and b!1484157 res!1009064) b!1484163))

(assert (= (and b!1484163 res!1009055) b!1484148))

(assert (= (and b!1484148 res!1009071) b!1484151))

(assert (= (and b!1484151 c!137072) b!1484156))

(assert (= (and b!1484151 (not c!137072)) b!1484159))

(assert (= (and b!1484151 res!1009058) b!1484152))

(assert (= (and b!1484152 res!1009069) b!1484154))

(assert (= (and b!1484154 res!1009062) b!1484162))

(assert (= (and b!1484162 res!1009061) b!1484150))

(assert (= (and b!1484150 res!1009053) b!1484161))

(assert (= (and b!1484161 (not res!1009060)) b!1484165))

(assert (= (and b!1484165 res!1009070) b!1484149))

(assert (= (and b!1484154 (not res!1009057)) b!1484164))

(declare-fun m!1369549 () Bool)

(assert (=> b!1484149 m!1369549))

(declare-fun m!1369551 () Bool)

(assert (=> b!1484149 m!1369551))

(declare-fun m!1369553 () Bool)

(assert (=> b!1484164 m!1369553))

(declare-fun m!1369555 () Bool)

(assert (=> b!1484160 m!1369555))

(declare-fun m!1369557 () Bool)

(assert (=> b!1484157 m!1369557))

(assert (=> b!1484157 m!1369557))

(declare-fun m!1369559 () Bool)

(assert (=> b!1484157 m!1369559))

(assert (=> b!1484157 m!1369559))

(assert (=> b!1484157 m!1369557))

(declare-fun m!1369561 () Bool)

(assert (=> b!1484157 m!1369561))

(declare-fun m!1369563 () Bool)

(assert (=> b!1484161 m!1369563))

(assert (=> b!1484161 m!1369557))

(declare-fun m!1369565 () Bool)

(assert (=> b!1484161 m!1369565))

(declare-fun m!1369567 () Bool)

(assert (=> b!1484161 m!1369567))

(declare-fun m!1369569 () Bool)

(assert (=> b!1484150 m!1369569))

(assert (=> b!1484150 m!1369557))

(declare-fun m!1369571 () Bool)

(assert (=> b!1484166 m!1369571))

(assert (=> b!1484166 m!1369571))

(declare-fun m!1369573 () Bool)

(assert (=> b!1484166 m!1369573))

(declare-fun m!1369575 () Bool)

(assert (=> b!1484148 m!1369575))

(assert (=> b!1484148 m!1369575))

(declare-fun m!1369577 () Bool)

(assert (=> b!1484148 m!1369577))

(assert (=> b!1484148 m!1369565))

(declare-fun m!1369579 () Bool)

(assert (=> b!1484148 m!1369579))

(declare-fun m!1369581 () Bool)

(assert (=> b!1484147 m!1369581))

(assert (=> b!1484163 m!1369557))

(assert (=> b!1484163 m!1369557))

(declare-fun m!1369583 () Bool)

(assert (=> b!1484163 m!1369583))

(assert (=> b!1484158 m!1369557))

(assert (=> b!1484158 m!1369557))

(declare-fun m!1369585 () Bool)

(assert (=> b!1484158 m!1369585))

(declare-fun m!1369587 () Bool)

(assert (=> b!1484156 m!1369587))

(declare-fun m!1369589 () Bool)

(assert (=> b!1484154 m!1369589))

(assert (=> b!1484154 m!1369565))

(assert (=> b!1484154 m!1369567))

(assert (=> b!1484154 m!1369563))

(declare-fun m!1369591 () Bool)

(assert (=> b!1484154 m!1369591))

(assert (=> b!1484154 m!1369557))

(assert (=> b!1484159 m!1369551))

(assert (=> b!1484159 m!1369549))

(declare-fun m!1369593 () Bool)

(assert (=> start!126564 m!1369593))

(declare-fun m!1369595 () Bool)

(assert (=> start!126564 m!1369595))

(assert (=> b!1484162 m!1369557))

(assert (=> b!1484162 m!1369557))

(declare-fun m!1369597 () Bool)

(assert (=> b!1484162 m!1369597))

(assert (=> b!1484153 m!1369565))

(declare-fun m!1369599 () Bool)

(assert (=> b!1484153 m!1369599))

(check-sat (not b!1484157) (not b!1484159) (not b!1484164) (not b!1484148) (not b!1484166) (not b!1484156) (not b!1484158) (not b!1484162) (not b!1484147) (not b!1484160) (not b!1484154) (not b!1484149) (not b!1484163) (not start!126564))
(check-sat)
