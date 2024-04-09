; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124892 () Bool)

(assert start!124892)

(declare-fun b!1449367 () Bool)

(declare-fun res!980921 () Bool)

(declare-fun e!816236 () Bool)

(assert (=> b!1449367 (=> (not res!980921) (not e!816236))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98257 0))(
  ( (array!98258 (arr!47412 (Array (_ BitVec 32) (_ BitVec 64))) (size!47963 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98257)

(assert (=> b!1449367 (= res!980921 (and (= (size!47963 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47963 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47963 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!816232 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1449368 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1449368 (= e!816232 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449370 () Bool)

(declare-fun res!980925 () Bool)

(assert (=> b!1449370 (=> (not res!980925) (not e!816236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449370 (= res!980925 (validKeyInArray!0 (select (arr!47412 a!2862) i!1006)))))

(declare-fun b!1449371 () Bool)

(declare-fun e!816235 () Bool)

(declare-fun e!816233 () Bool)

(assert (=> b!1449371 (= e!816235 e!816233)))

(declare-fun res!980930 () Bool)

(assert (=> b!1449371 (=> (not res!980930) (not e!816233))))

(declare-datatypes ((SeekEntryResult!11687 0))(
  ( (MissingZero!11687 (index!49139 (_ BitVec 32))) (Found!11687 (index!49140 (_ BitVec 32))) (Intermediate!11687 (undefined!12499 Bool) (index!49141 (_ BitVec 32)) (x!130803 (_ BitVec 32))) (Undefined!11687) (MissingVacant!11687 (index!49142 (_ BitVec 32))) )
))
(declare-fun lt!635847 () SeekEntryResult!11687)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449371 (= res!980930 (= lt!635847 (Intermediate!11687 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635844 () (_ BitVec 64))

(declare-fun lt!635843 () array!98257)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98257 (_ BitVec 32)) SeekEntryResult!11687)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449371 (= lt!635847 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635844 mask!2687) lt!635844 lt!635843 mask!2687))))

(assert (=> b!1449371 (= lt!635844 (select (store (arr!47412 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449372 () Bool)

(declare-fun res!980928 () Bool)

(assert (=> b!1449372 (=> (not res!980928) (not e!816233))))

(declare-fun e!816227 () Bool)

(assert (=> b!1449372 (= res!980928 e!816227)))

(declare-fun c!133739 () Bool)

(assert (=> b!1449372 (= c!133739 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449373 () Bool)

(declare-fun e!816234 () Bool)

(assert (=> b!1449373 (= e!816234 e!816232)))

(declare-fun res!980919 () Bool)

(assert (=> b!1449373 (=> (not res!980919) (not e!816232))))

(declare-fun lt!635842 () SeekEntryResult!11687)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98257 (_ BitVec 32)) SeekEntryResult!11687)

(assert (=> b!1449373 (= res!980919 (= lt!635842 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47412 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449374 () Bool)

(declare-fun e!816229 () Bool)

(assert (=> b!1449374 (= e!816229 e!816235)))

(declare-fun res!980918 () Bool)

(assert (=> b!1449374 (=> (not res!980918) (not e!816235))))

(declare-fun lt!635848 () SeekEntryResult!11687)

(assert (=> b!1449374 (= res!980918 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47412 a!2862) j!93) mask!2687) (select (arr!47412 a!2862) j!93) a!2862 mask!2687) lt!635848))))

(assert (=> b!1449374 (= lt!635848 (Intermediate!11687 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449375 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98257 (_ BitVec 32)) SeekEntryResult!11687)

(assert (=> b!1449375 (= e!816227 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635844 lt!635843 mask!2687) (seekEntryOrOpen!0 lt!635844 lt!635843 mask!2687)))))

(declare-fun b!1449376 () Bool)

(declare-fun res!980927 () Bool)

(assert (=> b!1449376 (=> (not res!980927) (not e!816236))))

(assert (=> b!1449376 (= res!980927 (validKeyInArray!0 (select (arr!47412 a!2862) j!93)))))

(declare-fun res!980923 () Bool)

(assert (=> start!124892 (=> (not res!980923) (not e!816236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124892 (= res!980923 (validMask!0 mask!2687))))

(assert (=> start!124892 e!816236))

(assert (=> start!124892 true))

(declare-fun array_inv!36357 (array!98257) Bool)

(assert (=> start!124892 (array_inv!36357 a!2862)))

(declare-fun b!1449369 () Bool)

(declare-fun e!816231 () Bool)

(assert (=> b!1449369 (= e!816233 (not e!816231))))

(declare-fun res!980926 () Bool)

(assert (=> b!1449369 (=> res!980926 e!816231)))

(assert (=> b!1449369 (= res!980926 (or (and (= (select (arr!47412 a!2862) index!646) (select (store (arr!47412 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47412 a!2862) index!646) (select (arr!47412 a!2862) j!93))) (not (= (select (arr!47412 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47412 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816230 () Bool)

(assert (=> b!1449369 e!816230))

(declare-fun res!980929 () Bool)

(assert (=> b!1449369 (=> (not res!980929) (not e!816230))))

(assert (=> b!1449369 (= res!980929 (and (= lt!635842 (Found!11687 j!93)) (or (= (select (arr!47412 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47412 a!2862) intermediateBeforeIndex!19) (select (arr!47412 a!2862) j!93)))))))

(assert (=> b!1449369 (= lt!635842 (seekEntryOrOpen!0 (select (arr!47412 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98257 (_ BitVec 32)) Bool)

(assert (=> b!1449369 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48818 0))(
  ( (Unit!48819) )
))
(declare-fun lt!635846 () Unit!48818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98257 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48818)

(assert (=> b!1449369 (= lt!635846 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449377 () Bool)

(assert (=> b!1449377 (= e!816227 (= lt!635847 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635844 lt!635843 mask!2687)))))

(declare-fun b!1449378 () Bool)

(assert (=> b!1449378 (= e!816230 e!816234)))

(declare-fun res!980931 () Bool)

(assert (=> b!1449378 (=> res!980931 e!816234)))

(assert (=> b!1449378 (= res!980931 (or (and (= (select (arr!47412 a!2862) index!646) (select (store (arr!47412 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47412 a!2862) index!646) (select (arr!47412 a!2862) j!93))) (not (= (select (arr!47412 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449379 () Bool)

(declare-fun res!980920 () Bool)

(assert (=> b!1449379 (=> (not res!980920) (not e!816236))))

(declare-datatypes ((List!34093 0))(
  ( (Nil!34090) (Cons!34089 (h!35439 (_ BitVec 64)) (t!48794 List!34093)) )
))
(declare-fun arrayNoDuplicates!0 (array!98257 (_ BitVec 32) List!34093) Bool)

(assert (=> b!1449379 (= res!980920 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34090))))

(declare-fun b!1449380 () Bool)

(declare-fun res!980915 () Bool)

(assert (=> b!1449380 (=> (not res!980915) (not e!816235))))

(assert (=> b!1449380 (= res!980915 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47412 a!2862) j!93) a!2862 mask!2687) lt!635848))))

(declare-fun b!1449381 () Bool)

(declare-fun res!980917 () Bool)

(assert (=> b!1449381 (=> (not res!980917) (not e!816236))))

(assert (=> b!1449381 (= res!980917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449382 () Bool)

(assert (=> b!1449382 (= e!816231 true)))

(declare-fun lt!635845 () SeekEntryResult!11687)

(assert (=> b!1449382 (= lt!635845 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47412 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449383 () Bool)

(declare-fun res!980924 () Bool)

(assert (=> b!1449383 (=> (not res!980924) (not e!816236))))

(assert (=> b!1449383 (= res!980924 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47963 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47963 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47963 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449384 () Bool)

(declare-fun res!980922 () Bool)

(assert (=> b!1449384 (=> (not res!980922) (not e!816233))))

(assert (=> b!1449384 (= res!980922 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449385 () Bool)

(assert (=> b!1449385 (= e!816236 e!816229)))

(declare-fun res!980916 () Bool)

(assert (=> b!1449385 (=> (not res!980916) (not e!816229))))

(assert (=> b!1449385 (= res!980916 (= (select (store (arr!47412 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449385 (= lt!635843 (array!98258 (store (arr!47412 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47963 a!2862)))))

(assert (= (and start!124892 res!980923) b!1449367))

(assert (= (and b!1449367 res!980921) b!1449370))

(assert (= (and b!1449370 res!980925) b!1449376))

(assert (= (and b!1449376 res!980927) b!1449381))

(assert (= (and b!1449381 res!980917) b!1449379))

(assert (= (and b!1449379 res!980920) b!1449383))

(assert (= (and b!1449383 res!980924) b!1449385))

(assert (= (and b!1449385 res!980916) b!1449374))

(assert (= (and b!1449374 res!980918) b!1449380))

(assert (= (and b!1449380 res!980915) b!1449371))

(assert (= (and b!1449371 res!980930) b!1449372))

(assert (= (and b!1449372 c!133739) b!1449377))

(assert (= (and b!1449372 (not c!133739)) b!1449375))

(assert (= (and b!1449372 res!980928) b!1449384))

(assert (= (and b!1449384 res!980922) b!1449369))

(assert (= (and b!1449369 res!980929) b!1449378))

(assert (= (and b!1449378 (not res!980931)) b!1449373))

(assert (= (and b!1449373 res!980919) b!1449368))

(assert (= (and b!1449369 (not res!980926)) b!1449382))

(declare-fun m!1338135 () Bool)

(assert (=> start!124892 m!1338135))

(declare-fun m!1338137 () Bool)

(assert (=> start!124892 m!1338137))

(declare-fun m!1338139 () Bool)

(assert (=> b!1449380 m!1338139))

(assert (=> b!1449380 m!1338139))

(declare-fun m!1338141 () Bool)

(assert (=> b!1449380 m!1338141))

(declare-fun m!1338143 () Bool)

(assert (=> b!1449375 m!1338143))

(declare-fun m!1338145 () Bool)

(assert (=> b!1449375 m!1338145))

(declare-fun m!1338147 () Bool)

(assert (=> b!1449371 m!1338147))

(assert (=> b!1449371 m!1338147))

(declare-fun m!1338149 () Bool)

(assert (=> b!1449371 m!1338149))

(declare-fun m!1338151 () Bool)

(assert (=> b!1449371 m!1338151))

(declare-fun m!1338153 () Bool)

(assert (=> b!1449371 m!1338153))

(declare-fun m!1338155 () Bool)

(assert (=> b!1449379 m!1338155))

(declare-fun m!1338157 () Bool)

(assert (=> b!1449377 m!1338157))

(assert (=> b!1449374 m!1338139))

(assert (=> b!1449374 m!1338139))

(declare-fun m!1338159 () Bool)

(assert (=> b!1449374 m!1338159))

(assert (=> b!1449374 m!1338159))

(assert (=> b!1449374 m!1338139))

(declare-fun m!1338161 () Bool)

(assert (=> b!1449374 m!1338161))

(declare-fun m!1338163 () Bool)

(assert (=> b!1449378 m!1338163))

(assert (=> b!1449378 m!1338151))

(declare-fun m!1338165 () Bool)

(assert (=> b!1449378 m!1338165))

(assert (=> b!1449378 m!1338139))

(assert (=> b!1449382 m!1338139))

(assert (=> b!1449382 m!1338139))

(declare-fun m!1338167 () Bool)

(assert (=> b!1449382 m!1338167))

(assert (=> b!1449376 m!1338139))

(assert (=> b!1449376 m!1338139))

(declare-fun m!1338169 () Bool)

(assert (=> b!1449376 m!1338169))

(assert (=> b!1449373 m!1338139))

(assert (=> b!1449373 m!1338139))

(declare-fun m!1338171 () Bool)

(assert (=> b!1449373 m!1338171))

(declare-fun m!1338173 () Bool)

(assert (=> b!1449370 m!1338173))

(assert (=> b!1449370 m!1338173))

(declare-fun m!1338175 () Bool)

(assert (=> b!1449370 m!1338175))

(declare-fun m!1338177 () Bool)

(assert (=> b!1449381 m!1338177))

(assert (=> b!1449385 m!1338151))

(declare-fun m!1338179 () Bool)

(assert (=> b!1449385 m!1338179))

(declare-fun m!1338181 () Bool)

(assert (=> b!1449369 m!1338181))

(assert (=> b!1449369 m!1338151))

(declare-fun m!1338183 () Bool)

(assert (=> b!1449369 m!1338183))

(assert (=> b!1449369 m!1338165))

(assert (=> b!1449369 m!1338163))

(assert (=> b!1449369 m!1338139))

(declare-fun m!1338185 () Bool)

(assert (=> b!1449369 m!1338185))

(declare-fun m!1338187 () Bool)

(assert (=> b!1449369 m!1338187))

(assert (=> b!1449369 m!1338139))

(push 1)

