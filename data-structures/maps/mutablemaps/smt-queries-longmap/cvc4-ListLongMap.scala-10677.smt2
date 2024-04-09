; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125246 () Bool)

(assert start!125246)

(declare-fun e!821117 () Bool)

(declare-fun b!1460259 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11864 0))(
  ( (MissingZero!11864 (index!49847 (_ BitVec 32))) (Found!11864 (index!49848 (_ BitVec 32))) (Intermediate!11864 (undefined!12676 Bool) (index!49849 (_ BitVec 32)) (x!131452 (_ BitVec 32))) (Undefined!11864) (MissingVacant!11864 (index!49850 (_ BitVec 32))) )
))
(declare-fun lt!639735 () SeekEntryResult!11864)

(declare-datatypes ((array!98611 0))(
  ( (array!98612 (arr!47589 (Array (_ BitVec 32) (_ BitVec 64))) (size!48140 (_ BitVec 32))) )
))
(declare-fun lt!639736 () array!98611)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639732 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98611 (_ BitVec 32)) SeekEntryResult!11864)

(assert (=> b!1460259 (= e!821117 (= lt!639735 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639732 lt!639736 mask!2687)))))

(declare-fun b!1460260 () Bool)

(declare-fun e!821122 () Bool)

(declare-fun e!821123 () Bool)

(assert (=> b!1460260 (= e!821122 e!821123)))

(declare-fun res!990159 () Bool)

(assert (=> b!1460260 (=> (not res!990159) (not e!821123))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460260 (= res!990159 (= lt!639735 (Intermediate!11864 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460260 (= lt!639735 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639732 mask!2687) lt!639732 lt!639736 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98611)

(assert (=> b!1460260 (= lt!639732 (select (store (arr!47589 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460261 () Bool)

(declare-fun res!990151 () Bool)

(declare-fun e!821119 () Bool)

(assert (=> b!1460261 (=> (not res!990151) (not e!821119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98611 (_ BitVec 32)) Bool)

(assert (=> b!1460261 (= res!990151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460262 () Bool)

(declare-fun res!990155 () Bool)

(assert (=> b!1460262 (=> (not res!990155) (not e!821122))))

(declare-fun lt!639733 () SeekEntryResult!11864)

(assert (=> b!1460262 (= res!990155 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47589 a!2862) j!93) a!2862 mask!2687) lt!639733))))

(declare-fun e!821118 () Bool)

(declare-fun b!1460263 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1460263 (= e!821118 (or (= (select (arr!47589 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47589 a!2862) intermediateBeforeIndex!19) (select (arr!47589 a!2862) j!93))))))

(declare-fun b!1460264 () Bool)

(declare-fun res!990160 () Bool)

(assert (=> b!1460264 (=> (not res!990160) (not e!821119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460264 (= res!990160 (validKeyInArray!0 (select (arr!47589 a!2862) i!1006)))))

(declare-fun b!1460265 () Bool)

(declare-fun e!821120 () Bool)

(assert (=> b!1460265 (= e!821120 e!821122)))

(declare-fun res!990156 () Bool)

(assert (=> b!1460265 (=> (not res!990156) (not e!821122))))

(assert (=> b!1460265 (= res!990156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47589 a!2862) j!93) mask!2687) (select (arr!47589 a!2862) j!93) a!2862 mask!2687) lt!639733))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460265 (= lt!639733 (Intermediate!11864 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460266 () Bool)

(assert (=> b!1460266 (= e!821119 e!821120)))

(declare-fun res!990165 () Bool)

(assert (=> b!1460266 (=> (not res!990165) (not e!821120))))

(assert (=> b!1460266 (= res!990165 (= (select (store (arr!47589 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460266 (= lt!639736 (array!98612 (store (arr!47589 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48140 a!2862)))))

(declare-fun b!1460267 () Bool)

(declare-fun res!990152 () Bool)

(assert (=> b!1460267 (=> (not res!990152) (not e!821119))))

(declare-datatypes ((List!34270 0))(
  ( (Nil!34267) (Cons!34266 (h!35616 (_ BitVec 64)) (t!48971 List!34270)) )
))
(declare-fun arrayNoDuplicates!0 (array!98611 (_ BitVec 32) List!34270) Bool)

(assert (=> b!1460267 (= res!990152 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34267))))

(declare-fun b!1460268 () Bool)

(declare-fun res!990163 () Bool)

(assert (=> b!1460268 (=> (not res!990163) (not e!821119))))

(assert (=> b!1460268 (= res!990163 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48140 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48140 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48140 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460269 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98611 (_ BitVec 32)) SeekEntryResult!11864)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98611 (_ BitVec 32)) SeekEntryResult!11864)

(assert (=> b!1460269 (= e!821117 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639732 lt!639736 mask!2687) (seekEntryOrOpen!0 lt!639732 lt!639736 mask!2687)))))

(declare-fun b!1460270 () Bool)

(declare-fun res!990158 () Bool)

(assert (=> b!1460270 (=> (not res!990158) (not e!821123))))

(assert (=> b!1460270 (= res!990158 e!821117)))

(declare-fun c!134567 () Bool)

(assert (=> b!1460270 (= c!134567 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460271 () Bool)

(declare-fun res!990153 () Bool)

(assert (=> b!1460271 (=> (not res!990153) (not e!821123))))

(assert (=> b!1460271 (= res!990153 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460272 () Bool)

(declare-fun res!990162 () Bool)

(assert (=> b!1460272 (=> (not res!990162) (not e!821119))))

(assert (=> b!1460272 (= res!990162 (and (= (size!48140 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48140 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48140 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!990157 () Bool)

(assert (=> start!125246 (=> (not res!990157) (not e!821119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125246 (= res!990157 (validMask!0 mask!2687))))

(assert (=> start!125246 e!821119))

(assert (=> start!125246 true))

(declare-fun array_inv!36534 (array!98611) Bool)

(assert (=> start!125246 (array_inv!36534 a!2862)))

(declare-fun b!1460273 () Bool)

(declare-fun res!990164 () Bool)

(assert (=> b!1460273 (=> (not res!990164) (not e!821119))))

(assert (=> b!1460273 (= res!990164 (validKeyInArray!0 (select (arr!47589 a!2862) j!93)))))

(declare-fun b!1460274 () Bool)

(assert (=> b!1460274 (= e!821123 (not true))))

(assert (=> b!1460274 e!821118))

(declare-fun res!990154 () Bool)

(assert (=> b!1460274 (=> (not res!990154) (not e!821118))))

(assert (=> b!1460274 (= res!990154 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49172 0))(
  ( (Unit!49173) )
))
(declare-fun lt!639734 () Unit!49172)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49172)

(assert (=> b!1460274 (= lt!639734 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460275 () Bool)

(declare-fun res!990161 () Bool)

(assert (=> b!1460275 (=> (not res!990161) (not e!821118))))

(assert (=> b!1460275 (= res!990161 (= (seekEntryOrOpen!0 (select (arr!47589 a!2862) j!93) a!2862 mask!2687) (Found!11864 j!93)))))

(assert (= (and start!125246 res!990157) b!1460272))

(assert (= (and b!1460272 res!990162) b!1460264))

(assert (= (and b!1460264 res!990160) b!1460273))

(assert (= (and b!1460273 res!990164) b!1460261))

(assert (= (and b!1460261 res!990151) b!1460267))

(assert (= (and b!1460267 res!990152) b!1460268))

(assert (= (and b!1460268 res!990163) b!1460266))

(assert (= (and b!1460266 res!990165) b!1460265))

(assert (= (and b!1460265 res!990156) b!1460262))

(assert (= (and b!1460262 res!990155) b!1460260))

(assert (= (and b!1460260 res!990159) b!1460270))

(assert (= (and b!1460270 c!134567) b!1460259))

(assert (= (and b!1460270 (not c!134567)) b!1460269))

(assert (= (and b!1460270 res!990158) b!1460271))

(assert (= (and b!1460271 res!990153) b!1460274))

(assert (= (and b!1460274 res!990154) b!1460275))

(assert (= (and b!1460275 res!990161) b!1460263))

(declare-fun m!1348001 () Bool)

(assert (=> b!1460274 m!1348001))

(declare-fun m!1348003 () Bool)

(assert (=> b!1460274 m!1348003))

(declare-fun m!1348005 () Bool)

(assert (=> b!1460265 m!1348005))

(assert (=> b!1460265 m!1348005))

(declare-fun m!1348007 () Bool)

(assert (=> b!1460265 m!1348007))

(assert (=> b!1460265 m!1348007))

(assert (=> b!1460265 m!1348005))

(declare-fun m!1348009 () Bool)

(assert (=> b!1460265 m!1348009))

(declare-fun m!1348011 () Bool)

(assert (=> start!125246 m!1348011))

(declare-fun m!1348013 () Bool)

(assert (=> start!125246 m!1348013))

(declare-fun m!1348015 () Bool)

(assert (=> b!1460260 m!1348015))

(assert (=> b!1460260 m!1348015))

(declare-fun m!1348017 () Bool)

(assert (=> b!1460260 m!1348017))

(declare-fun m!1348019 () Bool)

(assert (=> b!1460260 m!1348019))

(declare-fun m!1348021 () Bool)

(assert (=> b!1460260 m!1348021))

(assert (=> b!1460273 m!1348005))

(assert (=> b!1460273 m!1348005))

(declare-fun m!1348023 () Bool)

(assert (=> b!1460273 m!1348023))

(declare-fun m!1348025 () Bool)

(assert (=> b!1460264 m!1348025))

(assert (=> b!1460264 m!1348025))

(declare-fun m!1348027 () Bool)

(assert (=> b!1460264 m!1348027))

(declare-fun m!1348029 () Bool)

(assert (=> b!1460263 m!1348029))

(assert (=> b!1460263 m!1348005))

(declare-fun m!1348031 () Bool)

(assert (=> b!1460267 m!1348031))

(declare-fun m!1348033 () Bool)

(assert (=> b!1460259 m!1348033))

(declare-fun m!1348035 () Bool)

(assert (=> b!1460261 m!1348035))

(declare-fun m!1348037 () Bool)

(assert (=> b!1460269 m!1348037))

(declare-fun m!1348039 () Bool)

(assert (=> b!1460269 m!1348039))

(assert (=> b!1460275 m!1348005))

(assert (=> b!1460275 m!1348005))

(declare-fun m!1348041 () Bool)

(assert (=> b!1460275 m!1348041))

(assert (=> b!1460266 m!1348019))

(declare-fun m!1348043 () Bool)

(assert (=> b!1460266 m!1348043))

(assert (=> b!1460262 m!1348005))

(assert (=> b!1460262 m!1348005))

(declare-fun m!1348045 () Bool)

(assert (=> b!1460262 m!1348045))

(push 1)

