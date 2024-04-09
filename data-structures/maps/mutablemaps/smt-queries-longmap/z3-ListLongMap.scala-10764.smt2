; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125946 () Bool)

(assert start!125946)

(declare-fun b!1474019 () Bool)

(declare-fun e!827116 () Bool)

(declare-fun e!827120 () Bool)

(assert (=> b!1474019 (= e!827116 e!827120)))

(declare-fun res!1001384 () Bool)

(assert (=> b!1474019 (=> (not res!1001384) (not e!827120))))

(declare-datatypes ((array!99140 0))(
  ( (array!99141 (arr!47849 (Array (_ BitVec 32) (_ BitVec 64))) (size!48400 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99140)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12112 0))(
  ( (MissingZero!12112 (index!50839 (_ BitVec 32))) (Found!12112 (index!50840 (_ BitVec 32))) (Intermediate!12112 (undefined!12924 Bool) (index!50841 (_ BitVec 32)) (x!132423 (_ BitVec 32))) (Undefined!12112) (MissingVacant!12112 (index!50842 (_ BitVec 32))) )
))
(declare-fun lt!644091 () SeekEntryResult!12112)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99140 (_ BitVec 32)) SeekEntryResult!12112)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474019 (= res!1001384 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47849 a!2862) j!93) mask!2687) (select (arr!47849 a!2862) j!93) a!2862 mask!2687) lt!644091))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474019 (= lt!644091 (Intermediate!12112 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474020 () Bool)

(declare-fun res!1001377 () Bool)

(declare-fun e!827113 () Bool)

(assert (=> b!1474020 (=> (not res!1001377) (not e!827113))))

(declare-fun e!827115 () Bool)

(assert (=> b!1474020 (= res!1001377 e!827115)))

(declare-fun c!135842 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1474020 (= c!135842 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474021 () Bool)

(declare-fun res!1001376 () Bool)

(declare-fun e!827118 () Bool)

(assert (=> b!1474021 (=> (not res!1001376) (not e!827118))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99140 (_ BitVec 32)) SeekEntryResult!12112)

(assert (=> b!1474021 (= res!1001376 (= (seekEntryOrOpen!0 (select (arr!47849 a!2862) j!93) a!2862 mask!2687) (Found!12112 j!93)))))

(declare-fun b!1474022 () Bool)

(declare-fun res!1001371 () Bool)

(declare-fun e!827117 () Bool)

(assert (=> b!1474022 (=> (not res!1001371) (not e!827117))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474022 (= res!1001371 (validKeyInArray!0 (select (arr!47849 a!2862) i!1006)))))

(declare-fun b!1474023 () Bool)

(declare-fun res!1001380 () Bool)

(assert (=> b!1474023 (=> (not res!1001380) (not e!827117))))

(assert (=> b!1474023 (= res!1001380 (validKeyInArray!0 (select (arr!47849 a!2862) j!93)))))

(declare-fun b!1474024 () Bool)

(declare-fun res!1001373 () Bool)

(assert (=> b!1474024 (=> (not res!1001373) (not e!827117))))

(assert (=> b!1474024 (= res!1001373 (and (= (size!48400 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48400 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48400 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474025 () Bool)

(assert (=> b!1474025 (= e!827120 e!827113)))

(declare-fun res!1001370 () Bool)

(assert (=> b!1474025 (=> (not res!1001370) (not e!827113))))

(declare-fun lt!644088 () SeekEntryResult!12112)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1474025 (= res!1001370 (= lt!644088 (Intermediate!12112 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644090 () (_ BitVec 64))

(declare-fun lt!644087 () array!99140)

(assert (=> b!1474025 (= lt!644088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644090 mask!2687) lt!644090 lt!644087 mask!2687))))

(assert (=> b!1474025 (= lt!644090 (select (store (arr!47849 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474026 () Bool)

(declare-fun res!1001385 () Bool)

(assert (=> b!1474026 (=> (not res!1001385) (not e!827117))))

(declare-datatypes ((List!34530 0))(
  ( (Nil!34527) (Cons!34526 (h!35885 (_ BitVec 64)) (t!49231 List!34530)) )
))
(declare-fun arrayNoDuplicates!0 (array!99140 (_ BitVec 32) List!34530) Bool)

(assert (=> b!1474026 (= res!1001385 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34527))))

(declare-fun b!1474027 () Bool)

(declare-fun res!1001375 () Bool)

(assert (=> b!1474027 (=> (not res!1001375) (not e!827120))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1474027 (= res!1001375 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47849 a!2862) j!93) a!2862 mask!2687) lt!644091))))

(declare-fun b!1474028 () Bool)

(declare-fun res!1001383 () Bool)

(assert (=> b!1474028 (=> (not res!1001383) (not e!827117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99140 (_ BitVec 32)) Bool)

(assert (=> b!1474028 (= res!1001383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474029 () Bool)

(declare-fun e!827119 () Bool)

(assert (=> b!1474029 (= e!827113 (not e!827119))))

(declare-fun res!1001378 () Bool)

(assert (=> b!1474029 (=> res!1001378 e!827119)))

(assert (=> b!1474029 (= res!1001378 (or (not (= (select (arr!47849 a!2862) index!646) (select (store (arr!47849 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47849 a!2862) index!646) (select (arr!47849 a!2862) j!93)))))))

(assert (=> b!1474029 e!827118))

(declare-fun res!1001372 () Bool)

(assert (=> b!1474029 (=> (not res!1001372) (not e!827118))))

(assert (=> b!1474029 (= res!1001372 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49512 0))(
  ( (Unit!49513) )
))
(declare-fun lt!644092 () Unit!49512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99140 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49512)

(assert (=> b!1474029 (= lt!644092 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474030 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99140 (_ BitVec 32)) SeekEntryResult!12112)

(assert (=> b!1474030 (= e!827115 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644090 lt!644087 mask!2687) (seekEntryOrOpen!0 lt!644090 lt!644087 mask!2687)))))

(declare-fun b!1474031 () Bool)

(assert (=> b!1474031 (= e!827115 (= lt!644088 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644090 lt!644087 mask!2687)))))

(declare-fun b!1474032 () Bool)

(assert (=> b!1474032 (= e!827118 (or (= (select (arr!47849 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47849 a!2862) intermediateBeforeIndex!19) (select (arr!47849 a!2862) j!93))))))

(declare-fun b!1474033 () Bool)

(declare-fun res!1001374 () Bool)

(assert (=> b!1474033 (=> (not res!1001374) (not e!827117))))

(assert (=> b!1474033 (= res!1001374 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48400 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48400 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48400 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474034 () Bool)

(declare-fun res!1001379 () Bool)

(assert (=> b!1474034 (=> (not res!1001379) (not e!827113))))

(assert (=> b!1474034 (= res!1001379 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1001381 () Bool)

(assert (=> start!125946 (=> (not res!1001381) (not e!827117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125946 (= res!1001381 (validMask!0 mask!2687))))

(assert (=> start!125946 e!827117))

(assert (=> start!125946 true))

(declare-fun array_inv!36794 (array!99140) Bool)

(assert (=> start!125946 (array_inv!36794 a!2862)))

(declare-fun b!1474035 () Bool)

(assert (=> b!1474035 (= e!827119 true)))

(declare-fun lt!644089 () SeekEntryResult!12112)

(assert (=> b!1474035 (= lt!644089 (seekEntryOrOpen!0 lt!644090 lt!644087 mask!2687))))

(declare-fun b!1474036 () Bool)

(assert (=> b!1474036 (= e!827117 e!827116)))

(declare-fun res!1001382 () Bool)

(assert (=> b!1474036 (=> (not res!1001382) (not e!827116))))

(assert (=> b!1474036 (= res!1001382 (= (select (store (arr!47849 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474036 (= lt!644087 (array!99141 (store (arr!47849 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48400 a!2862)))))

(assert (= (and start!125946 res!1001381) b!1474024))

(assert (= (and b!1474024 res!1001373) b!1474022))

(assert (= (and b!1474022 res!1001371) b!1474023))

(assert (= (and b!1474023 res!1001380) b!1474028))

(assert (= (and b!1474028 res!1001383) b!1474026))

(assert (= (and b!1474026 res!1001385) b!1474033))

(assert (= (and b!1474033 res!1001374) b!1474036))

(assert (= (and b!1474036 res!1001382) b!1474019))

(assert (= (and b!1474019 res!1001384) b!1474027))

(assert (= (and b!1474027 res!1001375) b!1474025))

(assert (= (and b!1474025 res!1001370) b!1474020))

(assert (= (and b!1474020 c!135842) b!1474031))

(assert (= (and b!1474020 (not c!135842)) b!1474030))

(assert (= (and b!1474020 res!1001377) b!1474034))

(assert (= (and b!1474034 res!1001379) b!1474029))

(assert (= (and b!1474029 res!1001372) b!1474021))

(assert (= (and b!1474021 res!1001376) b!1474032))

(assert (= (and b!1474029 (not res!1001378)) b!1474035))

(declare-fun m!1360553 () Bool)

(assert (=> b!1474030 m!1360553))

(declare-fun m!1360555 () Bool)

(assert (=> b!1474030 m!1360555))

(declare-fun m!1360557 () Bool)

(assert (=> b!1474029 m!1360557))

(declare-fun m!1360559 () Bool)

(assert (=> b!1474029 m!1360559))

(declare-fun m!1360561 () Bool)

(assert (=> b!1474029 m!1360561))

(declare-fun m!1360563 () Bool)

(assert (=> b!1474029 m!1360563))

(declare-fun m!1360565 () Bool)

(assert (=> b!1474029 m!1360565))

(declare-fun m!1360567 () Bool)

(assert (=> b!1474029 m!1360567))

(assert (=> b!1474027 m!1360567))

(assert (=> b!1474027 m!1360567))

(declare-fun m!1360569 () Bool)

(assert (=> b!1474027 m!1360569))

(declare-fun m!1360571 () Bool)

(assert (=> b!1474026 m!1360571))

(assert (=> b!1474021 m!1360567))

(assert (=> b!1474021 m!1360567))

(declare-fun m!1360573 () Bool)

(assert (=> b!1474021 m!1360573))

(assert (=> b!1474035 m!1360555))

(declare-fun m!1360575 () Bool)

(assert (=> b!1474022 m!1360575))

(assert (=> b!1474022 m!1360575))

(declare-fun m!1360577 () Bool)

(assert (=> b!1474022 m!1360577))

(assert (=> b!1474019 m!1360567))

(assert (=> b!1474019 m!1360567))

(declare-fun m!1360579 () Bool)

(assert (=> b!1474019 m!1360579))

(assert (=> b!1474019 m!1360579))

(assert (=> b!1474019 m!1360567))

(declare-fun m!1360581 () Bool)

(assert (=> b!1474019 m!1360581))

(declare-fun m!1360583 () Bool)

(assert (=> start!125946 m!1360583))

(declare-fun m!1360585 () Bool)

(assert (=> start!125946 m!1360585))

(assert (=> b!1474036 m!1360559))

(declare-fun m!1360587 () Bool)

(assert (=> b!1474036 m!1360587))

(declare-fun m!1360589 () Bool)

(assert (=> b!1474028 m!1360589))

(declare-fun m!1360591 () Bool)

(assert (=> b!1474032 m!1360591))

(assert (=> b!1474032 m!1360567))

(declare-fun m!1360593 () Bool)

(assert (=> b!1474025 m!1360593))

(assert (=> b!1474025 m!1360593))

(declare-fun m!1360595 () Bool)

(assert (=> b!1474025 m!1360595))

(assert (=> b!1474025 m!1360559))

(declare-fun m!1360597 () Bool)

(assert (=> b!1474025 m!1360597))

(declare-fun m!1360599 () Bool)

(assert (=> b!1474031 m!1360599))

(assert (=> b!1474023 m!1360567))

(assert (=> b!1474023 m!1360567))

(declare-fun m!1360601 () Bool)

(assert (=> b!1474023 m!1360601))

(check-sat (not b!1474026) (not b!1474019) (not b!1474035) (not b!1474031) (not b!1474025) (not b!1474028) (not start!125946) (not b!1474027) (not b!1474022) (not b!1474029) (not b!1474023) (not b!1474021) (not b!1474030))
(check-sat)
