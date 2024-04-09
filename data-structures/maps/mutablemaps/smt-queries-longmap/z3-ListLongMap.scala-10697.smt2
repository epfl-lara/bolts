; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125364 () Bool)

(assert start!125364)

(declare-fun b!1464013 () Bool)

(declare-fun res!993263 () Bool)

(declare-fun e!822809 () Bool)

(assert (=> b!1464013 (=> (not res!993263) (not e!822809))))

(declare-fun e!822804 () Bool)

(assert (=> b!1464013 (= res!993263 e!822804)))

(declare-fun c!134893 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1464013 (= c!134893 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464014 () Bool)

(declare-datatypes ((array!98729 0))(
  ( (array!98730 (arr!47648 (Array (_ BitVec 32) (_ BitVec 64))) (size!48199 (_ BitVec 32))) )
))
(declare-fun lt!640919 () array!98729)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!640916 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11923 0))(
  ( (MissingZero!11923 (index!50083 (_ BitVec 32))) (Found!11923 (index!50084 (_ BitVec 32))) (Intermediate!11923 (undefined!12735 Bool) (index!50085 (_ BitVec 32)) (x!131671 (_ BitVec 32))) (Undefined!11923) (MissingVacant!11923 (index!50086 (_ BitVec 32))) )
))
(declare-fun lt!640918 () SeekEntryResult!11923)

(declare-fun lt!640921 () (_ BitVec 64))

(declare-fun e!822812 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98729 (_ BitVec 32)) SeekEntryResult!11923)

(assert (=> b!1464014 (= e!822812 (not (= lt!640918 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640916 lt!640921 lt!640919 mask!2687))))))

(declare-fun b!1464015 () Bool)

(declare-fun res!993254 () Bool)

(declare-fun e!822807 () Bool)

(assert (=> b!1464015 (=> (not res!993254) (not e!822807))))

(declare-fun a!2862 () array!98729)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98729 (_ BitVec 32)) Bool)

(assert (=> b!1464015 (= res!993254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!822806 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1464016 () Bool)

(assert (=> b!1464016 (= e!822806 (or (= (select (arr!47648 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47648 a!2862) intermediateBeforeIndex!19) (select (arr!47648 a!2862) j!93))))))

(declare-fun b!1464017 () Bool)

(declare-fun res!993261 () Bool)

(declare-fun e!822803 () Bool)

(assert (=> b!1464017 (=> (not res!993261) (not e!822803))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!640920 () SeekEntryResult!11923)

(assert (=> b!1464017 (= res!993261 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47648 a!2862) j!93) a!2862 mask!2687) lt!640920))))

(declare-fun b!1464018 () Bool)

(declare-fun res!993256 () Bool)

(assert (=> b!1464018 (=> (not res!993256) (not e!822809))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464018 (= res!993256 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464019 () Bool)

(declare-fun res!993258 () Bool)

(assert (=> b!1464019 (=> (not res!993258) (not e!822807))))

(declare-datatypes ((List!34329 0))(
  ( (Nil!34326) (Cons!34325 (h!35675 (_ BitVec 64)) (t!49030 List!34329)) )
))
(declare-fun arrayNoDuplicates!0 (array!98729 (_ BitVec 32) List!34329) Bool)

(assert (=> b!1464019 (= res!993258 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34326))))

(declare-fun b!1464020 () Bool)

(declare-fun res!993265 () Bool)

(assert (=> b!1464020 (=> (not res!993265) (not e!822807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464020 (= res!993265 (validKeyInArray!0 (select (arr!47648 a!2862) i!1006)))))

(declare-fun b!1464021 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98729 (_ BitVec 32)) SeekEntryResult!11923)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98729 (_ BitVec 32)) SeekEntryResult!11923)

(assert (=> b!1464021 (= e!822812 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640916 intermediateAfterIndex!19 lt!640921 lt!640919 mask!2687) (seekEntryOrOpen!0 lt!640921 lt!640919 mask!2687))))))

(declare-fun b!1464022 () Bool)

(declare-fun e!822805 () Bool)

(assert (=> b!1464022 (= e!822809 (not e!822805))))

(declare-fun res!993262 () Bool)

(assert (=> b!1464022 (=> res!993262 e!822805)))

(assert (=> b!1464022 (= res!993262 (or (and (= (select (arr!47648 a!2862) index!646) (select (store (arr!47648 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47648 a!2862) index!646) (select (arr!47648 a!2862) j!93))) (= (select (arr!47648 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464022 e!822806))

(declare-fun res!993266 () Bool)

(assert (=> b!1464022 (=> (not res!993266) (not e!822806))))

(assert (=> b!1464022 (= res!993266 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49290 0))(
  ( (Unit!49291) )
))
(declare-fun lt!640917 () Unit!49290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49290)

(assert (=> b!1464022 (= lt!640917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464023 () Bool)

(declare-fun res!993257 () Bool)

(assert (=> b!1464023 (=> (not res!993257) (not e!822806))))

(assert (=> b!1464023 (= res!993257 (= (seekEntryOrOpen!0 (select (arr!47648 a!2862) j!93) a!2862 mask!2687) (Found!11923 j!93)))))

(declare-fun b!1464024 () Bool)

(declare-fun res!993267 () Bool)

(assert (=> b!1464024 (=> (not res!993267) (not e!822807))))

(assert (=> b!1464024 (= res!993267 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48199 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48199 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48199 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464025 () Bool)

(assert (=> b!1464025 (= e!822803 e!822809)))

(declare-fun res!993253 () Bool)

(assert (=> b!1464025 (=> (not res!993253) (not e!822809))))

(assert (=> b!1464025 (= res!993253 (= lt!640918 (Intermediate!11923 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464025 (= lt!640918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640921 mask!2687) lt!640921 lt!640919 mask!2687))))

(assert (=> b!1464025 (= lt!640921 (select (store (arr!47648 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464026 () Bool)

(declare-fun e!822811 () Bool)

(assert (=> b!1464026 (= e!822805 e!822811)))

(declare-fun res!993260 () Bool)

(assert (=> b!1464026 (=> res!993260 e!822811)))

(assert (=> b!1464026 (= res!993260 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640916 #b00000000000000000000000000000000) (bvsge lt!640916 (size!48199 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464026 (= lt!640916 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464027 () Bool)

(assert (=> b!1464027 (= e!822804 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640921 lt!640919 mask!2687) (seekEntryOrOpen!0 lt!640921 lt!640919 mask!2687)))))

(declare-fun b!1464028 () Bool)

(declare-fun res!993268 () Bool)

(assert (=> b!1464028 (=> (not res!993268) (not e!822807))))

(assert (=> b!1464028 (= res!993268 (validKeyInArray!0 (select (arr!47648 a!2862) j!93)))))

(declare-fun b!1464029 () Bool)

(assert (=> b!1464029 (= e!822811 true)))

(declare-fun lt!640915 () Bool)

(assert (=> b!1464029 (= lt!640915 e!822812)))

(declare-fun c!134894 () Bool)

(assert (=> b!1464029 (= c!134894 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464030 () Bool)

(declare-fun res!993269 () Bool)

(assert (=> b!1464030 (=> res!993269 e!822811)))

(assert (=> b!1464030 (= res!993269 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640916 (select (arr!47648 a!2862) j!93) a!2862 mask!2687) lt!640920)))))

(declare-fun b!1464031 () Bool)

(declare-fun e!822810 () Bool)

(assert (=> b!1464031 (= e!822810 e!822803)))

(declare-fun res!993259 () Bool)

(assert (=> b!1464031 (=> (not res!993259) (not e!822803))))

(assert (=> b!1464031 (= res!993259 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47648 a!2862) j!93) mask!2687) (select (arr!47648 a!2862) j!93) a!2862 mask!2687) lt!640920))))

(assert (=> b!1464031 (= lt!640920 (Intermediate!11923 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464032 () Bool)

(assert (=> b!1464032 (= e!822804 (= lt!640918 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640921 lt!640919 mask!2687)))))

(declare-fun b!1464033 () Bool)

(declare-fun res!993255 () Bool)

(assert (=> b!1464033 (=> (not res!993255) (not e!822807))))

(assert (=> b!1464033 (= res!993255 (and (= (size!48199 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48199 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48199 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!993270 () Bool)

(assert (=> start!125364 (=> (not res!993270) (not e!822807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125364 (= res!993270 (validMask!0 mask!2687))))

(assert (=> start!125364 e!822807))

(assert (=> start!125364 true))

(declare-fun array_inv!36593 (array!98729) Bool)

(assert (=> start!125364 (array_inv!36593 a!2862)))

(declare-fun b!1464034 () Bool)

(assert (=> b!1464034 (= e!822807 e!822810)))

(declare-fun res!993264 () Bool)

(assert (=> b!1464034 (=> (not res!993264) (not e!822810))))

(assert (=> b!1464034 (= res!993264 (= (select (store (arr!47648 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464034 (= lt!640919 (array!98730 (store (arr!47648 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48199 a!2862)))))

(assert (= (and start!125364 res!993270) b!1464033))

(assert (= (and b!1464033 res!993255) b!1464020))

(assert (= (and b!1464020 res!993265) b!1464028))

(assert (= (and b!1464028 res!993268) b!1464015))

(assert (= (and b!1464015 res!993254) b!1464019))

(assert (= (and b!1464019 res!993258) b!1464024))

(assert (= (and b!1464024 res!993267) b!1464034))

(assert (= (and b!1464034 res!993264) b!1464031))

(assert (= (and b!1464031 res!993259) b!1464017))

(assert (= (and b!1464017 res!993261) b!1464025))

(assert (= (and b!1464025 res!993253) b!1464013))

(assert (= (and b!1464013 c!134893) b!1464032))

(assert (= (and b!1464013 (not c!134893)) b!1464027))

(assert (= (and b!1464013 res!993263) b!1464018))

(assert (= (and b!1464018 res!993256) b!1464022))

(assert (= (and b!1464022 res!993266) b!1464023))

(assert (= (and b!1464023 res!993257) b!1464016))

(assert (= (and b!1464022 (not res!993262)) b!1464026))

(assert (= (and b!1464026 (not res!993260)) b!1464030))

(assert (= (and b!1464030 (not res!993269)) b!1464029))

(assert (= (and b!1464029 c!134894) b!1464014))

(assert (= (and b!1464029 (not c!134894)) b!1464021))

(declare-fun m!1351327 () Bool)

(assert (=> b!1464023 m!1351327))

(assert (=> b!1464023 m!1351327))

(declare-fun m!1351329 () Bool)

(assert (=> b!1464023 m!1351329))

(assert (=> b!1464028 m!1351327))

(assert (=> b!1464028 m!1351327))

(declare-fun m!1351331 () Bool)

(assert (=> b!1464028 m!1351331))

(declare-fun m!1351333 () Bool)

(assert (=> b!1464026 m!1351333))

(assert (=> b!1464017 m!1351327))

(assert (=> b!1464017 m!1351327))

(declare-fun m!1351335 () Bool)

(assert (=> b!1464017 m!1351335))

(declare-fun m!1351337 () Bool)

(assert (=> b!1464022 m!1351337))

(declare-fun m!1351339 () Bool)

(assert (=> b!1464022 m!1351339))

(declare-fun m!1351341 () Bool)

(assert (=> b!1464022 m!1351341))

(declare-fun m!1351343 () Bool)

(assert (=> b!1464022 m!1351343))

(declare-fun m!1351345 () Bool)

(assert (=> b!1464022 m!1351345))

(assert (=> b!1464022 m!1351327))

(declare-fun m!1351347 () Bool)

(assert (=> start!125364 m!1351347))

(declare-fun m!1351349 () Bool)

(assert (=> start!125364 m!1351349))

(declare-fun m!1351351 () Bool)

(assert (=> b!1464021 m!1351351))

(declare-fun m!1351353 () Bool)

(assert (=> b!1464021 m!1351353))

(declare-fun m!1351355 () Bool)

(assert (=> b!1464025 m!1351355))

(assert (=> b!1464025 m!1351355))

(declare-fun m!1351357 () Bool)

(assert (=> b!1464025 m!1351357))

(assert (=> b!1464025 m!1351339))

(declare-fun m!1351359 () Bool)

(assert (=> b!1464025 m!1351359))

(declare-fun m!1351361 () Bool)

(assert (=> b!1464014 m!1351361))

(declare-fun m!1351363 () Bool)

(assert (=> b!1464027 m!1351363))

(assert (=> b!1464027 m!1351353))

(declare-fun m!1351365 () Bool)

(assert (=> b!1464032 m!1351365))

(assert (=> b!1464030 m!1351327))

(assert (=> b!1464030 m!1351327))

(declare-fun m!1351367 () Bool)

(assert (=> b!1464030 m!1351367))

(declare-fun m!1351369 () Bool)

(assert (=> b!1464015 m!1351369))

(declare-fun m!1351371 () Bool)

(assert (=> b!1464020 m!1351371))

(assert (=> b!1464020 m!1351371))

(declare-fun m!1351373 () Bool)

(assert (=> b!1464020 m!1351373))

(declare-fun m!1351375 () Bool)

(assert (=> b!1464019 m!1351375))

(assert (=> b!1464034 m!1351339))

(declare-fun m!1351377 () Bool)

(assert (=> b!1464034 m!1351377))

(declare-fun m!1351379 () Bool)

(assert (=> b!1464016 m!1351379))

(assert (=> b!1464016 m!1351327))

(assert (=> b!1464031 m!1351327))

(assert (=> b!1464031 m!1351327))

(declare-fun m!1351381 () Bool)

(assert (=> b!1464031 m!1351381))

(assert (=> b!1464031 m!1351381))

(assert (=> b!1464031 m!1351327))

(declare-fun m!1351383 () Bool)

(assert (=> b!1464031 m!1351383))

(check-sat (not b!1464025) (not b!1464017) (not b!1464027) (not b!1464022) (not b!1464028) (not b!1464020) (not b!1464021) (not b!1464026) (not b!1464030) (not b!1464031) (not b!1464023) (not b!1464032) (not b!1464014) (not start!125364) (not b!1464015) (not b!1464019))
(check-sat)
