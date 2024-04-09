; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126308 () Bool)

(assert start!126308)

(declare-fun b!1480173 () Bool)

(declare-fun e!830247 () Bool)

(declare-fun e!830249 () Bool)

(assert (=> b!1480173 (= e!830247 e!830249)))

(declare-fun res!1006105 () Bool)

(assert (=> b!1480173 (=> (not res!1006105) (not e!830249))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12203 0))(
  ( (MissingZero!12203 (index!51203 (_ BitVec 32))) (Found!12203 (index!51204 (_ BitVec 32))) (Intermediate!12203 (undefined!13015 Bool) (index!51205 (_ BitVec 32)) (x!132781 (_ BitVec 32))) (Undefined!12203) (MissingVacant!12203 (index!51206 (_ BitVec 32))) )
))
(declare-fun lt!646297 () SeekEntryResult!12203)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99331 0))(
  ( (array!99332 (arr!47940 (Array (_ BitVec 32) (_ BitVec 64))) (size!48491 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99331)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99331 (_ BitVec 32)) SeekEntryResult!12203)

(assert (=> b!1480173 (= res!1006105 (= lt!646297 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47940 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1480174 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1480174 (= e!830249 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1480175 () Bool)

(declare-fun e!830242 () Bool)

(declare-fun e!830243 () Bool)

(assert (=> b!1480175 (= e!830242 e!830243)))

(declare-fun res!1006117 () Bool)

(assert (=> b!1480175 (=> (not res!1006117) (not e!830243))))

(declare-fun lt!646293 () SeekEntryResult!12203)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99331 (_ BitVec 32)) SeekEntryResult!12203)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480175 (= res!1006117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47940 a!2862) j!93) mask!2687) (select (arr!47940 a!2862) j!93) a!2862 mask!2687) lt!646293))))

(assert (=> b!1480175 (= lt!646293 (Intermediate!12203 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1480177 () Bool)

(declare-fun res!1006110 () Bool)

(declare-fun e!830241 () Bool)

(assert (=> b!1480177 (=> (not res!1006110) (not e!830241))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1480177 (= res!1006110 (validKeyInArray!0 (select (arr!47940 a!2862) i!1006)))))

(declare-fun b!1480178 () Bool)

(declare-fun res!1006118 () Bool)

(assert (=> b!1480178 (=> (not res!1006118) (not e!830241))))

(declare-datatypes ((List!34621 0))(
  ( (Nil!34618) (Cons!34617 (h!35985 (_ BitVec 64)) (t!49322 List!34621)) )
))
(declare-fun arrayNoDuplicates!0 (array!99331 (_ BitVec 32) List!34621) Bool)

(assert (=> b!1480178 (= res!1006118 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34618))))

(declare-fun b!1480179 () Bool)

(declare-fun res!1006120 () Bool)

(declare-fun e!830248 () Bool)

(assert (=> b!1480179 (=> (not res!1006120) (not e!830248))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1480179 (= res!1006120 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1480180 () Bool)

(declare-fun res!1006112 () Bool)

(assert (=> b!1480180 (=> (not res!1006112) (not e!830241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99331 (_ BitVec 32)) Bool)

(assert (=> b!1480180 (= res!1006112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1480181 () Bool)

(declare-fun res!1006114 () Bool)

(assert (=> b!1480181 (=> (not res!1006114) (not e!830241))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1480181 (= res!1006114 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48491 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48491 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48491 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1480182 () Bool)

(assert (=> b!1480182 (= e!830241 e!830242)))

(declare-fun res!1006106 () Bool)

(assert (=> b!1480182 (=> (not res!1006106) (not e!830242))))

(assert (=> b!1480182 (= res!1006106 (= (select (store (arr!47940 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646291 () array!99331)

(assert (=> b!1480182 (= lt!646291 (array!99332 (store (arr!47940 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48491 a!2862)))))

(declare-fun b!1480183 () Bool)

(declare-fun res!1006113 () Bool)

(assert (=> b!1480183 (=> (not res!1006113) (not e!830248))))

(declare-fun e!830245 () Bool)

(assert (=> b!1480183 (= res!1006113 e!830245)))

(declare-fun c!136556 () Bool)

(assert (=> b!1480183 (= c!136556 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1480176 () Bool)

(declare-fun res!1006111 () Bool)

(assert (=> b!1480176 (=> (not res!1006111) (not e!830241))))

(assert (=> b!1480176 (= res!1006111 (and (= (size!48491 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48491 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48491 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1006116 () Bool)

(assert (=> start!126308 (=> (not res!1006116) (not e!830241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126308 (= res!1006116 (validMask!0 mask!2687))))

(assert (=> start!126308 e!830241))

(assert (=> start!126308 true))

(declare-fun array_inv!36885 (array!99331) Bool)

(assert (=> start!126308 (array_inv!36885 a!2862)))

(declare-fun lt!646295 () (_ BitVec 64))

(declare-fun lt!646296 () SeekEntryResult!12203)

(declare-fun b!1480184 () Bool)

(assert (=> b!1480184 (= e!830245 (= lt!646296 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646295 lt!646291 mask!2687)))))

(declare-fun b!1480185 () Bool)

(declare-fun e!830240 () Bool)

(assert (=> b!1480185 (= e!830248 (not e!830240))))

(declare-fun res!1006115 () Bool)

(assert (=> b!1480185 (=> res!1006115 e!830240)))

(assert (=> b!1480185 (= res!1006115 (or (and (= (select (arr!47940 a!2862) index!646) (select (store (arr!47940 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47940 a!2862) index!646) (select (arr!47940 a!2862) j!93))) (not (= (select (arr!47940 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47940 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!830246 () Bool)

(assert (=> b!1480185 e!830246))

(declare-fun res!1006109 () Bool)

(assert (=> b!1480185 (=> (not res!1006109) (not e!830246))))

(declare-fun lt!646294 () SeekEntryResult!12203)

(assert (=> b!1480185 (= res!1006109 (and (= lt!646297 lt!646294) (or (= (select (arr!47940 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47940 a!2862) intermediateBeforeIndex!19) (select (arr!47940 a!2862) j!93)))))))

(assert (=> b!1480185 (= lt!646294 (Found!12203 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99331 (_ BitVec 32)) SeekEntryResult!12203)

(assert (=> b!1480185 (= lt!646297 (seekEntryOrOpen!0 (select (arr!47940 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1480185 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49694 0))(
  ( (Unit!49695) )
))
(declare-fun lt!646292 () Unit!49694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49694)

(assert (=> b!1480185 (= lt!646292 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1480186 () Bool)

(assert (=> b!1480186 (= e!830240 (= lt!646297 (seekEntryOrOpen!0 lt!646295 lt!646291 mask!2687)))))

(assert (=> b!1480186 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646295 lt!646291 mask!2687) lt!646294)))

(declare-fun lt!646290 () Unit!49694)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49694)

(assert (=> b!1480186 (= lt!646290 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1480187 () Bool)

(assert (=> b!1480187 (= e!830245 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646295 lt!646291 mask!2687) (seekEntryOrOpen!0 lt!646295 lt!646291 mask!2687)))))

(declare-fun b!1480188 () Bool)

(declare-fun res!1006119 () Bool)

(assert (=> b!1480188 (=> res!1006119 e!830240)))

(assert (=> b!1480188 (= res!1006119 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47940 a!2862) j!93) a!2862 mask!2687) lt!646294)))))

(declare-fun b!1480189 () Bool)

(declare-fun res!1006122 () Bool)

(assert (=> b!1480189 (=> (not res!1006122) (not e!830243))))

(assert (=> b!1480189 (= res!1006122 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47940 a!2862) j!93) a!2862 mask!2687) lt!646293))))

(declare-fun b!1480190 () Bool)

(assert (=> b!1480190 (= e!830243 e!830248)))

(declare-fun res!1006108 () Bool)

(assert (=> b!1480190 (=> (not res!1006108) (not e!830248))))

(assert (=> b!1480190 (= res!1006108 (= lt!646296 (Intermediate!12203 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1480190 (= lt!646296 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646295 mask!2687) lt!646295 lt!646291 mask!2687))))

(assert (=> b!1480190 (= lt!646295 (select (store (arr!47940 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1480191 () Bool)

(assert (=> b!1480191 (= e!830246 e!830247)))

(declare-fun res!1006121 () Bool)

(assert (=> b!1480191 (=> res!1006121 e!830247)))

(assert (=> b!1480191 (= res!1006121 (or (and (= (select (arr!47940 a!2862) index!646) (select (store (arr!47940 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47940 a!2862) index!646) (select (arr!47940 a!2862) j!93))) (not (= (select (arr!47940 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1480192 () Bool)

(declare-fun res!1006107 () Bool)

(assert (=> b!1480192 (=> (not res!1006107) (not e!830241))))

(assert (=> b!1480192 (= res!1006107 (validKeyInArray!0 (select (arr!47940 a!2862) j!93)))))

(assert (= (and start!126308 res!1006116) b!1480176))

(assert (= (and b!1480176 res!1006111) b!1480177))

(assert (= (and b!1480177 res!1006110) b!1480192))

(assert (= (and b!1480192 res!1006107) b!1480180))

(assert (= (and b!1480180 res!1006112) b!1480178))

(assert (= (and b!1480178 res!1006118) b!1480181))

(assert (= (and b!1480181 res!1006114) b!1480182))

(assert (= (and b!1480182 res!1006106) b!1480175))

(assert (= (and b!1480175 res!1006117) b!1480189))

(assert (= (and b!1480189 res!1006122) b!1480190))

(assert (= (and b!1480190 res!1006108) b!1480183))

(assert (= (and b!1480183 c!136556) b!1480184))

(assert (= (and b!1480183 (not c!136556)) b!1480187))

(assert (= (and b!1480183 res!1006113) b!1480179))

(assert (= (and b!1480179 res!1006120) b!1480185))

(assert (= (and b!1480185 res!1006109) b!1480191))

(assert (= (and b!1480191 (not res!1006121)) b!1480173))

(assert (= (and b!1480173 res!1006105) b!1480174))

(assert (= (and b!1480185 (not res!1006115)) b!1480188))

(assert (= (and b!1480188 (not res!1006119)) b!1480186))

(declare-fun m!1366045 () Bool)

(assert (=> b!1480186 m!1366045))

(declare-fun m!1366047 () Bool)

(assert (=> b!1480186 m!1366047))

(declare-fun m!1366049 () Bool)

(assert (=> b!1480186 m!1366049))

(declare-fun m!1366051 () Bool)

(assert (=> b!1480188 m!1366051))

(assert (=> b!1480188 m!1366051))

(declare-fun m!1366053 () Bool)

(assert (=> b!1480188 m!1366053))

(declare-fun m!1366055 () Bool)

(assert (=> start!126308 m!1366055))

(declare-fun m!1366057 () Bool)

(assert (=> start!126308 m!1366057))

(declare-fun m!1366059 () Bool)

(assert (=> b!1480182 m!1366059))

(declare-fun m!1366061 () Bool)

(assert (=> b!1480182 m!1366061))

(declare-fun m!1366063 () Bool)

(assert (=> b!1480177 m!1366063))

(assert (=> b!1480177 m!1366063))

(declare-fun m!1366065 () Bool)

(assert (=> b!1480177 m!1366065))

(assert (=> b!1480192 m!1366051))

(assert (=> b!1480192 m!1366051))

(declare-fun m!1366067 () Bool)

(assert (=> b!1480192 m!1366067))

(assert (=> b!1480173 m!1366051))

(assert (=> b!1480173 m!1366051))

(declare-fun m!1366069 () Bool)

(assert (=> b!1480173 m!1366069))

(assert (=> b!1480187 m!1366047))

(assert (=> b!1480187 m!1366045))

(declare-fun m!1366071 () Bool)

(assert (=> b!1480180 m!1366071))

(declare-fun m!1366073 () Bool)

(assert (=> b!1480184 m!1366073))

(declare-fun m!1366075 () Bool)

(assert (=> b!1480178 m!1366075))

(declare-fun m!1366077 () Bool)

(assert (=> b!1480191 m!1366077))

(assert (=> b!1480191 m!1366059))

(declare-fun m!1366079 () Bool)

(assert (=> b!1480191 m!1366079))

(assert (=> b!1480191 m!1366051))

(declare-fun m!1366081 () Bool)

(assert (=> b!1480190 m!1366081))

(assert (=> b!1480190 m!1366081))

(declare-fun m!1366083 () Bool)

(assert (=> b!1480190 m!1366083))

(assert (=> b!1480190 m!1366059))

(declare-fun m!1366085 () Bool)

(assert (=> b!1480190 m!1366085))

(declare-fun m!1366087 () Bool)

(assert (=> b!1480185 m!1366087))

(assert (=> b!1480185 m!1366059))

(declare-fun m!1366089 () Bool)

(assert (=> b!1480185 m!1366089))

(assert (=> b!1480185 m!1366079))

(assert (=> b!1480185 m!1366077))

(assert (=> b!1480185 m!1366051))

(declare-fun m!1366091 () Bool)

(assert (=> b!1480185 m!1366091))

(declare-fun m!1366093 () Bool)

(assert (=> b!1480185 m!1366093))

(assert (=> b!1480185 m!1366051))

(assert (=> b!1480175 m!1366051))

(assert (=> b!1480175 m!1366051))

(declare-fun m!1366095 () Bool)

(assert (=> b!1480175 m!1366095))

(assert (=> b!1480175 m!1366095))

(assert (=> b!1480175 m!1366051))

(declare-fun m!1366097 () Bool)

(assert (=> b!1480175 m!1366097))

(assert (=> b!1480189 m!1366051))

(assert (=> b!1480189 m!1366051))

(declare-fun m!1366099 () Bool)

(assert (=> b!1480189 m!1366099))

(push 1)

(assert (not b!1480180))

(assert (not b!1480187))

(assert (not b!1480190))

(assert (not b!1480177))

(assert (not b!1480189))

(assert (not b!1480173))

(assert (not b!1480188))

(assert (not b!1480175))

(assert (not start!126308))

(assert (not b!1480185))

(assert (not b!1480178))

(assert (not b!1480186))

(assert (not b!1480192))

(assert (not b!1480184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

