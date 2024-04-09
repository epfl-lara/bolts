; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124888 () Bool)

(assert start!124888)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1449253 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!816167 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1449253 (= e!816167 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449254 () Bool)

(declare-fun e!816168 () Bool)

(declare-fun e!816171 () Bool)

(assert (=> b!1449254 (= e!816168 e!816171)))

(declare-fun res!980828 () Bool)

(assert (=> b!1449254 (=> (not res!980828) (not e!816171))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98253 0))(
  ( (array!98254 (arr!47410 (Array (_ BitVec 32) (_ BitVec 64))) (size!47961 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98253)

(assert (=> b!1449254 (= res!980828 (= (select (store (arr!47410 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635802 () array!98253)

(assert (=> b!1449254 (= lt!635802 (array!98254 (store (arr!47410 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47961 a!2862)))))

(declare-fun b!1449255 () Bool)

(declare-fun e!816175 () Bool)

(assert (=> b!1449255 (= e!816175 true)))

(declare-datatypes ((SeekEntryResult!11685 0))(
  ( (MissingZero!11685 (index!49131 (_ BitVec 32))) (Found!11685 (index!49132 (_ BitVec 32))) (Intermediate!11685 (undefined!12497 Bool) (index!49133 (_ BitVec 32)) (x!130801 (_ BitVec 32))) (Undefined!11685) (MissingVacant!11685 (index!49134 (_ BitVec 32))) )
))
(declare-fun lt!635805 () SeekEntryResult!11685)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98253 (_ BitVec 32)) SeekEntryResult!11685)

(assert (=> b!1449255 (= lt!635805 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47410 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!980825 () Bool)

(assert (=> start!124888 (=> (not res!980825) (not e!816168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124888 (= res!980825 (validMask!0 mask!2687))))

(assert (=> start!124888 e!816168))

(assert (=> start!124888 true))

(declare-fun array_inv!36355 (array!98253) Bool)

(assert (=> start!124888 (array_inv!36355 a!2862)))

(declare-fun b!1449256 () Bool)

(declare-fun res!980816 () Bool)

(declare-fun e!816169 () Bool)

(assert (=> b!1449256 (=> (not res!980816) (not e!816169))))

(declare-fun lt!635803 () SeekEntryResult!11685)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98253 (_ BitVec 32)) SeekEntryResult!11685)

(assert (=> b!1449256 (= res!980816 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47410 a!2862) j!93) a!2862 mask!2687) lt!635803))))

(declare-fun b!1449257 () Bool)

(declare-fun lt!635801 () SeekEntryResult!11685)

(declare-fun e!816174 () Bool)

(declare-fun lt!635800 () (_ BitVec 64))

(assert (=> b!1449257 (= e!816174 (= lt!635801 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635800 lt!635802 mask!2687)))))

(declare-fun b!1449258 () Bool)

(declare-fun res!980827 () Bool)

(assert (=> b!1449258 (=> (not res!980827) (not e!816168))))

(assert (=> b!1449258 (= res!980827 (and (= (size!47961 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47961 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47961 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449259 () Bool)

(declare-fun res!980823 () Bool)

(assert (=> b!1449259 (=> (not res!980823) (not e!816168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449259 (= res!980823 (validKeyInArray!0 (select (arr!47410 a!2862) i!1006)))))

(declare-fun b!1449260 () Bool)

(declare-fun e!816172 () Bool)

(assert (=> b!1449260 (= e!816172 e!816167)))

(declare-fun res!980829 () Bool)

(assert (=> b!1449260 (=> (not res!980829) (not e!816167))))

(declare-fun lt!635804 () SeekEntryResult!11685)

(assert (=> b!1449260 (= res!980829 (= lt!635804 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47410 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449261 () Bool)

(declare-fun res!980821 () Bool)

(assert (=> b!1449261 (=> (not res!980821) (not e!816168))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1449261 (= res!980821 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47961 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47961 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47961 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449262 () Bool)

(declare-fun res!980822 () Bool)

(declare-fun e!816170 () Bool)

(assert (=> b!1449262 (=> (not res!980822) (not e!816170))))

(assert (=> b!1449262 (= res!980822 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449263 () Bool)

(assert (=> b!1449263 (= e!816170 (not e!816175))))

(declare-fun res!980819 () Bool)

(assert (=> b!1449263 (=> res!980819 e!816175)))

(assert (=> b!1449263 (= res!980819 (or (and (= (select (arr!47410 a!2862) index!646) (select (store (arr!47410 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47410 a!2862) index!646) (select (arr!47410 a!2862) j!93))) (not (= (select (arr!47410 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47410 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816173 () Bool)

(assert (=> b!1449263 e!816173))

(declare-fun res!980813 () Bool)

(assert (=> b!1449263 (=> (not res!980813) (not e!816173))))

(assert (=> b!1449263 (= res!980813 (and (= lt!635804 (Found!11685 j!93)) (or (= (select (arr!47410 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47410 a!2862) intermediateBeforeIndex!19) (select (arr!47410 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98253 (_ BitVec 32)) SeekEntryResult!11685)

(assert (=> b!1449263 (= lt!635804 (seekEntryOrOpen!0 (select (arr!47410 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98253 (_ BitVec 32)) Bool)

(assert (=> b!1449263 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48814 0))(
  ( (Unit!48815) )
))
(declare-fun lt!635806 () Unit!48814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98253 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48814)

(assert (=> b!1449263 (= lt!635806 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449264 () Bool)

(assert (=> b!1449264 (= e!816171 e!816169)))

(declare-fun res!980824 () Bool)

(assert (=> b!1449264 (=> (not res!980824) (not e!816169))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449264 (= res!980824 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47410 a!2862) j!93) mask!2687) (select (arr!47410 a!2862) j!93) a!2862 mask!2687) lt!635803))))

(assert (=> b!1449264 (= lt!635803 (Intermediate!11685 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449265 () Bool)

(assert (=> b!1449265 (= e!816173 e!816172)))

(declare-fun res!980814 () Bool)

(assert (=> b!1449265 (=> res!980814 e!816172)))

(assert (=> b!1449265 (= res!980814 (or (and (= (select (arr!47410 a!2862) index!646) (select (store (arr!47410 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47410 a!2862) index!646) (select (arr!47410 a!2862) j!93))) (not (= (select (arr!47410 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449266 () Bool)

(assert (=> b!1449266 (= e!816169 e!816170)))

(declare-fun res!980826 () Bool)

(assert (=> b!1449266 (=> (not res!980826) (not e!816170))))

(assert (=> b!1449266 (= res!980826 (= lt!635801 (Intermediate!11685 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1449266 (= lt!635801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635800 mask!2687) lt!635800 lt!635802 mask!2687))))

(assert (=> b!1449266 (= lt!635800 (select (store (arr!47410 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449267 () Bool)

(declare-fun res!980820 () Bool)

(assert (=> b!1449267 (=> (not res!980820) (not e!816168))))

(assert (=> b!1449267 (= res!980820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449268 () Bool)

(assert (=> b!1449268 (= e!816174 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635800 lt!635802 mask!2687) (seekEntryOrOpen!0 lt!635800 lt!635802 mask!2687)))))

(declare-fun b!1449269 () Bool)

(declare-fun res!980815 () Bool)

(assert (=> b!1449269 (=> (not res!980815) (not e!816168))))

(assert (=> b!1449269 (= res!980815 (validKeyInArray!0 (select (arr!47410 a!2862) j!93)))))

(declare-fun b!1449270 () Bool)

(declare-fun res!980817 () Bool)

(assert (=> b!1449270 (=> (not res!980817) (not e!816170))))

(assert (=> b!1449270 (= res!980817 e!816174)))

(declare-fun c!133733 () Bool)

(assert (=> b!1449270 (= c!133733 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449271 () Bool)

(declare-fun res!980818 () Bool)

(assert (=> b!1449271 (=> (not res!980818) (not e!816168))))

(declare-datatypes ((List!34091 0))(
  ( (Nil!34088) (Cons!34087 (h!35437 (_ BitVec 64)) (t!48792 List!34091)) )
))
(declare-fun arrayNoDuplicates!0 (array!98253 (_ BitVec 32) List!34091) Bool)

(assert (=> b!1449271 (= res!980818 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34088))))

(assert (= (and start!124888 res!980825) b!1449258))

(assert (= (and b!1449258 res!980827) b!1449259))

(assert (= (and b!1449259 res!980823) b!1449269))

(assert (= (and b!1449269 res!980815) b!1449267))

(assert (= (and b!1449267 res!980820) b!1449271))

(assert (= (and b!1449271 res!980818) b!1449261))

(assert (= (and b!1449261 res!980821) b!1449254))

(assert (= (and b!1449254 res!980828) b!1449264))

(assert (= (and b!1449264 res!980824) b!1449256))

(assert (= (and b!1449256 res!980816) b!1449266))

(assert (= (and b!1449266 res!980826) b!1449270))

(assert (= (and b!1449270 c!133733) b!1449257))

(assert (= (and b!1449270 (not c!133733)) b!1449268))

(assert (= (and b!1449270 res!980817) b!1449262))

(assert (= (and b!1449262 res!980822) b!1449263))

(assert (= (and b!1449263 res!980813) b!1449265))

(assert (= (and b!1449265 (not res!980814)) b!1449260))

(assert (= (and b!1449260 res!980829) b!1449253))

(assert (= (and b!1449263 (not res!980819)) b!1449255))

(declare-fun m!1338027 () Bool)

(assert (=> start!124888 m!1338027))

(declare-fun m!1338029 () Bool)

(assert (=> start!124888 m!1338029))

(declare-fun m!1338031 () Bool)

(assert (=> b!1449267 m!1338031))

(declare-fun m!1338033 () Bool)

(assert (=> b!1449255 m!1338033))

(assert (=> b!1449255 m!1338033))

(declare-fun m!1338035 () Bool)

(assert (=> b!1449255 m!1338035))

(assert (=> b!1449256 m!1338033))

(assert (=> b!1449256 m!1338033))

(declare-fun m!1338037 () Bool)

(assert (=> b!1449256 m!1338037))

(declare-fun m!1338039 () Bool)

(assert (=> b!1449265 m!1338039))

(declare-fun m!1338041 () Bool)

(assert (=> b!1449265 m!1338041))

(declare-fun m!1338043 () Bool)

(assert (=> b!1449265 m!1338043))

(assert (=> b!1449265 m!1338033))

(declare-fun m!1338045 () Bool)

(assert (=> b!1449268 m!1338045))

(declare-fun m!1338047 () Bool)

(assert (=> b!1449268 m!1338047))

(declare-fun m!1338049 () Bool)

(assert (=> b!1449257 m!1338049))

(assert (=> b!1449254 m!1338041))

(declare-fun m!1338051 () Bool)

(assert (=> b!1449254 m!1338051))

(declare-fun m!1338053 () Bool)

(assert (=> b!1449271 m!1338053))

(declare-fun m!1338055 () Bool)

(assert (=> b!1449266 m!1338055))

(assert (=> b!1449266 m!1338055))

(declare-fun m!1338057 () Bool)

(assert (=> b!1449266 m!1338057))

(assert (=> b!1449266 m!1338041))

(declare-fun m!1338059 () Bool)

(assert (=> b!1449266 m!1338059))

(declare-fun m!1338061 () Bool)

(assert (=> b!1449259 m!1338061))

(assert (=> b!1449259 m!1338061))

(declare-fun m!1338063 () Bool)

(assert (=> b!1449259 m!1338063))

(declare-fun m!1338065 () Bool)

(assert (=> b!1449263 m!1338065))

(assert (=> b!1449263 m!1338041))

(declare-fun m!1338067 () Bool)

(assert (=> b!1449263 m!1338067))

(assert (=> b!1449263 m!1338043))

(assert (=> b!1449263 m!1338039))

(assert (=> b!1449263 m!1338033))

(declare-fun m!1338069 () Bool)

(assert (=> b!1449263 m!1338069))

(declare-fun m!1338071 () Bool)

(assert (=> b!1449263 m!1338071))

(assert (=> b!1449263 m!1338033))

(assert (=> b!1449269 m!1338033))

(assert (=> b!1449269 m!1338033))

(declare-fun m!1338073 () Bool)

(assert (=> b!1449269 m!1338073))

(assert (=> b!1449260 m!1338033))

(assert (=> b!1449260 m!1338033))

(declare-fun m!1338075 () Bool)

(assert (=> b!1449260 m!1338075))

(assert (=> b!1449264 m!1338033))

(assert (=> b!1449264 m!1338033))

(declare-fun m!1338077 () Bool)

(assert (=> b!1449264 m!1338077))

(assert (=> b!1449264 m!1338077))

(assert (=> b!1449264 m!1338033))

(declare-fun m!1338079 () Bool)

(assert (=> b!1449264 m!1338079))

(push 1)

