; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127410 () Bool)

(assert start!127410)

(declare-fun b!1497100 () Bool)

(declare-fun res!1018401 () Bool)

(declare-fun e!838453 () Bool)

(assert (=> b!1497100 (=> (not res!1018401) (not e!838453))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12415 0))(
  ( (MissingZero!12415 (index!52051 (_ BitVec 32))) (Found!12415 (index!52052 (_ BitVec 32))) (Intermediate!12415 (undefined!13227 Bool) (index!52053 (_ BitVec 32)) (x!133678 (_ BitVec 32))) (Undefined!12415) (MissingVacant!12415 (index!52054 (_ BitVec 32))) )
))
(declare-fun lt!652300 () SeekEntryResult!12415)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99785 0))(
  ( (array!99786 (arr!48152 (Array (_ BitVec 32) (_ BitVec 64))) (size!48703 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99785)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99785 (_ BitVec 32)) SeekEntryResult!12415)

(assert (=> b!1497100 (= res!1018401 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48152 a!2862) j!93) a!2862 mask!2687) lt!652300))))

(declare-fun b!1497101 () Bool)

(declare-fun e!838456 () Bool)

(declare-fun e!838454 () Bool)

(assert (=> b!1497101 (= e!838456 e!838454)))

(declare-fun res!1018399 () Bool)

(assert (=> b!1497101 (=> res!1018399 e!838454)))

(declare-fun lt!652295 () (_ BitVec 32))

(assert (=> b!1497101 (= res!1018399 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652295 #b00000000000000000000000000000000) (bvsge lt!652295 (size!48703 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497101 (= lt!652295 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497102 () Bool)

(declare-fun res!1018391 () Bool)

(declare-fun e!838455 () Bool)

(assert (=> b!1497102 (=> (not res!1018391) (not e!838455))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497102 (= res!1018391 (validKeyInArray!0 (select (arr!48152 a!2862) i!1006)))))

(declare-fun b!1497103 () Bool)

(declare-fun res!1018394 () Bool)

(assert (=> b!1497103 (=> res!1018394 e!838454)))

(assert (=> b!1497103 (= res!1018394 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652295 (select (arr!48152 a!2862) j!93) a!2862 mask!2687) lt!652300)))))

(declare-fun b!1497104 () Bool)

(declare-fun res!1018393 () Bool)

(assert (=> b!1497104 (=> (not res!1018393) (not e!838455))))

(assert (=> b!1497104 (= res!1018393 (validKeyInArray!0 (select (arr!48152 a!2862) j!93)))))

(declare-fun b!1497106 () Bool)

(declare-fun e!838452 () Bool)

(assert (=> b!1497106 (= e!838452 (not e!838456))))

(declare-fun res!1018396 () Bool)

(assert (=> b!1497106 (=> res!1018396 e!838456)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1497106 (= res!1018396 (or (and (= (select (arr!48152 a!2862) index!646) (select (store (arr!48152 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48152 a!2862) index!646) (select (arr!48152 a!2862) j!93))) (= (select (arr!48152 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!652296 () SeekEntryResult!12415)

(assert (=> b!1497106 (and (= lt!652296 (Found!12415 j!93)) (or (= (select (arr!48152 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48152 a!2862) intermediateBeforeIndex!19) (select (arr!48152 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99785 (_ BitVec 32)) SeekEntryResult!12415)

(assert (=> b!1497106 (= lt!652296 (seekEntryOrOpen!0 (select (arr!48152 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99785 (_ BitVec 32)) Bool)

(assert (=> b!1497106 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50118 0))(
  ( (Unit!50119) )
))
(declare-fun lt!652298 () Unit!50118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50118)

(assert (=> b!1497106 (= lt!652298 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497107 () Bool)

(declare-fun res!1018406 () Bool)

(assert (=> b!1497107 (=> (not res!1018406) (not e!838452))))

(declare-fun e!838457 () Bool)

(assert (=> b!1497107 (= res!1018406 e!838457)))

(declare-fun c!138893 () Bool)

(assert (=> b!1497107 (= c!138893 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497108 () Bool)

(declare-fun e!838451 () Bool)

(assert (=> b!1497108 (= e!838455 e!838451)))

(declare-fun res!1018403 () Bool)

(assert (=> b!1497108 (=> (not res!1018403) (not e!838451))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1497108 (= res!1018403 (= (select (store (arr!48152 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652294 () array!99785)

(assert (=> b!1497108 (= lt!652294 (array!99786 (store (arr!48152 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48703 a!2862)))))

(declare-fun b!1497109 () Bool)

(declare-fun res!1018404 () Bool)

(assert (=> b!1497109 (=> (not res!1018404) (not e!838455))))

(assert (=> b!1497109 (= res!1018404 (and (= (size!48703 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48703 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48703 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497110 () Bool)

(assert (=> b!1497110 (= e!838451 e!838453)))

(declare-fun res!1018395 () Bool)

(assert (=> b!1497110 (=> (not res!1018395) (not e!838453))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497110 (= res!1018395 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48152 a!2862) j!93) mask!2687) (select (arr!48152 a!2862) j!93) a!2862 mask!2687) lt!652300))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1497110 (= lt!652300 (Intermediate!12415 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!838450 () Bool)

(declare-fun lt!652299 () (_ BitVec 64))

(declare-fun b!1497111 () Bool)

(declare-fun lt!652293 () SeekEntryResult!12415)

(assert (=> b!1497111 (= e!838450 (not (= lt!652293 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652295 lt!652299 lt!652294 mask!2687))))))

(declare-fun b!1497112 () Bool)

(declare-fun res!1018405 () Bool)

(assert (=> b!1497112 (=> (not res!1018405) (not e!838455))))

(assert (=> b!1497112 (= res!1018405 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48703 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48703 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48703 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1497113 () Bool)

(assert (=> b!1497113 (= e!838454 true)))

(assert (=> b!1497113 (= lt!652296 (seekEntryOrOpen!0 lt!652299 lt!652294 mask!2687))))

(declare-fun lt!652297 () Unit!50118)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50118)

(assert (=> b!1497113 (= lt!652297 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652295 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!1018392 () Bool)

(assert (=> start!127410 (=> (not res!1018392) (not e!838455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127410 (= res!1018392 (validMask!0 mask!2687))))

(assert (=> start!127410 e!838455))

(assert (=> start!127410 true))

(declare-fun array_inv!37097 (array!99785) Bool)

(assert (=> start!127410 (array_inv!37097 a!2862)))

(declare-fun b!1497105 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99785 (_ BitVec 32)) SeekEntryResult!12415)

(assert (=> b!1497105 (= e!838457 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652299 lt!652294 mask!2687) (seekEntryOrOpen!0 lt!652299 lt!652294 mask!2687)))))

(declare-fun b!1497114 () Bool)

(assert (=> b!1497114 (= e!838457 (= lt!652293 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652299 lt!652294 mask!2687)))))

(declare-fun b!1497115 () Bool)

(declare-fun res!1018390 () Bool)

(assert (=> b!1497115 (=> (not res!1018390) (not e!838452))))

(assert (=> b!1497115 (= res!1018390 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497116 () Bool)

(declare-fun res!1018407 () Bool)

(assert (=> b!1497116 (=> res!1018407 e!838454)))

(assert (=> b!1497116 (= res!1018407 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497117 () Bool)

(declare-fun res!1018402 () Bool)

(assert (=> b!1497117 (=> res!1018402 e!838454)))

(assert (=> b!1497117 (= res!1018402 e!838450)))

(declare-fun c!138892 () Bool)

(assert (=> b!1497117 (= c!138892 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497118 () Bool)

(assert (=> b!1497118 (= e!838450 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652295 intermediateAfterIndex!19 lt!652299 lt!652294 mask!2687) (seekEntryOrOpen!0 lt!652299 lt!652294 mask!2687))))))

(declare-fun b!1497119 () Bool)

(assert (=> b!1497119 (= e!838453 e!838452)))

(declare-fun res!1018398 () Bool)

(assert (=> b!1497119 (=> (not res!1018398) (not e!838452))))

(assert (=> b!1497119 (= res!1018398 (= lt!652293 (Intermediate!12415 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1497119 (= lt!652293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652299 mask!2687) lt!652299 lt!652294 mask!2687))))

(assert (=> b!1497119 (= lt!652299 (select (store (arr!48152 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497120 () Bool)

(declare-fun res!1018400 () Bool)

(assert (=> b!1497120 (=> (not res!1018400) (not e!838455))))

(declare-datatypes ((List!34833 0))(
  ( (Nil!34830) (Cons!34829 (h!36227 (_ BitVec 64)) (t!49534 List!34833)) )
))
(declare-fun arrayNoDuplicates!0 (array!99785 (_ BitVec 32) List!34833) Bool)

(assert (=> b!1497120 (= res!1018400 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34830))))

(declare-fun b!1497121 () Bool)

(declare-fun res!1018397 () Bool)

(assert (=> b!1497121 (=> (not res!1018397) (not e!838455))))

(assert (=> b!1497121 (= res!1018397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!127410 res!1018392) b!1497109))

(assert (= (and b!1497109 res!1018404) b!1497102))

(assert (= (and b!1497102 res!1018391) b!1497104))

(assert (= (and b!1497104 res!1018393) b!1497121))

(assert (= (and b!1497121 res!1018397) b!1497120))

(assert (= (and b!1497120 res!1018400) b!1497112))

(assert (= (and b!1497112 res!1018405) b!1497108))

(assert (= (and b!1497108 res!1018403) b!1497110))

(assert (= (and b!1497110 res!1018395) b!1497100))

(assert (= (and b!1497100 res!1018401) b!1497119))

(assert (= (and b!1497119 res!1018398) b!1497107))

(assert (= (and b!1497107 c!138893) b!1497114))

(assert (= (and b!1497107 (not c!138893)) b!1497105))

(assert (= (and b!1497107 res!1018406) b!1497115))

(assert (= (and b!1497115 res!1018390) b!1497106))

(assert (= (and b!1497106 (not res!1018396)) b!1497101))

(assert (= (and b!1497101 (not res!1018399)) b!1497103))

(assert (= (and b!1497103 (not res!1018394)) b!1497117))

(assert (= (and b!1497117 c!138892) b!1497111))

(assert (= (and b!1497117 (not c!138892)) b!1497118))

(assert (= (and b!1497117 (not res!1018402)) b!1497116))

(assert (= (and b!1497116 (not res!1018407)) b!1497113))

(declare-fun m!1380261 () Bool)

(assert (=> b!1497111 m!1380261))

(declare-fun m!1380263 () Bool)

(assert (=> b!1497110 m!1380263))

(assert (=> b!1497110 m!1380263))

(declare-fun m!1380265 () Bool)

(assert (=> b!1497110 m!1380265))

(assert (=> b!1497110 m!1380265))

(assert (=> b!1497110 m!1380263))

(declare-fun m!1380267 () Bool)

(assert (=> b!1497110 m!1380267))

(declare-fun m!1380269 () Bool)

(assert (=> b!1497101 m!1380269))

(declare-fun m!1380271 () Bool)

(assert (=> b!1497118 m!1380271))

(declare-fun m!1380273 () Bool)

(assert (=> b!1497118 m!1380273))

(declare-fun m!1380275 () Bool)

(assert (=> b!1497102 m!1380275))

(assert (=> b!1497102 m!1380275))

(declare-fun m!1380277 () Bool)

(assert (=> b!1497102 m!1380277))

(declare-fun m!1380279 () Bool)

(assert (=> b!1497121 m!1380279))

(assert (=> b!1497113 m!1380273))

(declare-fun m!1380281 () Bool)

(assert (=> b!1497113 m!1380281))

(declare-fun m!1380283 () Bool)

(assert (=> b!1497119 m!1380283))

(assert (=> b!1497119 m!1380283))

(declare-fun m!1380285 () Bool)

(assert (=> b!1497119 m!1380285))

(declare-fun m!1380287 () Bool)

(assert (=> b!1497119 m!1380287))

(declare-fun m!1380289 () Bool)

(assert (=> b!1497119 m!1380289))

(declare-fun m!1380291 () Bool)

(assert (=> b!1497120 m!1380291))

(declare-fun m!1380293 () Bool)

(assert (=> start!127410 m!1380293))

(declare-fun m!1380295 () Bool)

(assert (=> start!127410 m!1380295))

(assert (=> b!1497104 m!1380263))

(assert (=> b!1497104 m!1380263))

(declare-fun m!1380297 () Bool)

(assert (=> b!1497104 m!1380297))

(assert (=> b!1497103 m!1380263))

(assert (=> b!1497103 m!1380263))

(declare-fun m!1380299 () Bool)

(assert (=> b!1497103 m!1380299))

(declare-fun m!1380301 () Bool)

(assert (=> b!1497106 m!1380301))

(assert (=> b!1497106 m!1380287))

(declare-fun m!1380303 () Bool)

(assert (=> b!1497106 m!1380303))

(declare-fun m!1380305 () Bool)

(assert (=> b!1497106 m!1380305))

(declare-fun m!1380307 () Bool)

(assert (=> b!1497106 m!1380307))

(assert (=> b!1497106 m!1380263))

(declare-fun m!1380309 () Bool)

(assert (=> b!1497106 m!1380309))

(declare-fun m!1380311 () Bool)

(assert (=> b!1497106 m!1380311))

(assert (=> b!1497106 m!1380263))

(declare-fun m!1380313 () Bool)

(assert (=> b!1497114 m!1380313))

(assert (=> b!1497108 m!1380287))

(declare-fun m!1380315 () Bool)

(assert (=> b!1497108 m!1380315))

(declare-fun m!1380317 () Bool)

(assert (=> b!1497105 m!1380317))

(assert (=> b!1497105 m!1380273))

(assert (=> b!1497100 m!1380263))

(assert (=> b!1497100 m!1380263))

(declare-fun m!1380319 () Bool)

(assert (=> b!1497100 m!1380319))

(check-sat (not b!1497121) (not b!1497113) (not b!1497114) (not b!1497118) (not b!1497102) (not b!1497105) (not b!1497110) (not b!1497104) (not b!1497106) (not b!1497111) (not b!1497100) (not b!1497101) (not b!1497119) (not b!1497120) (not b!1497103) (not start!127410))
(check-sat)
