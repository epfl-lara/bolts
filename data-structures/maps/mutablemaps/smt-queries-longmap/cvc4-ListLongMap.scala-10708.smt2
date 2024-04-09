; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125432 () Bool)

(assert start!125432)

(declare-fun b!1466258 () Bool)

(declare-fun res!995105 () Bool)

(declare-fun e!823801 () Bool)

(assert (=> b!1466258 (=> (not res!995105) (not e!823801))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98797 0))(
  ( (array!98798 (arr!47682 (Array (_ BitVec 32) (_ BitVec 64))) (size!48233 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98797)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466258 (= res!995105 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48233 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48233 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48233 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466259 () Bool)

(declare-fun lt!641657 () array!98797)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!823802 () Bool)

(declare-datatypes ((SeekEntryResult!11957 0))(
  ( (MissingZero!11957 (index!50219 (_ BitVec 32))) (Found!11957 (index!50220 (_ BitVec 32))) (Intermediate!11957 (undefined!12769 Bool) (index!50221 (_ BitVec 32)) (x!131793 (_ BitVec 32))) (Undefined!11957) (MissingVacant!11957 (index!50222 (_ BitVec 32))) )
))
(declare-fun lt!641655 () SeekEntryResult!11957)

(declare-fun lt!641659 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98797 (_ BitVec 32)) SeekEntryResult!11957)

(assert (=> b!1466259 (= e!823802 (= lt!641655 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641659 lt!641657 mask!2687)))))

(declare-fun b!1466260 () Bool)

(declare-fun e!823805 () Bool)

(declare-fun e!823803 () Bool)

(assert (=> b!1466260 (= e!823805 e!823803)))

(declare-fun res!995093 () Bool)

(assert (=> b!1466260 (=> (not res!995093) (not e!823803))))

(declare-fun lt!641658 () SeekEntryResult!11957)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466260 (= res!995093 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47682 a!2862) j!93) mask!2687) (select (arr!47682 a!2862) j!93) a!2862 mask!2687) lt!641658))))

(assert (=> b!1466260 (= lt!641658 (Intermediate!11957 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466261 () Bool)

(declare-fun res!995104 () Bool)

(assert (=> b!1466261 (=> (not res!995104) (not e!823801))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466261 (= res!995104 (validKeyInArray!0 (select (arr!47682 a!2862) i!1006)))))

(declare-fun b!1466262 () Bool)

(declare-fun res!995102 () Bool)

(assert (=> b!1466262 (=> (not res!995102) (not e!823803))))

(assert (=> b!1466262 (= res!995102 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47682 a!2862) j!93) a!2862 mask!2687) lt!641658))))

(declare-fun e!823797 () Bool)

(declare-fun b!1466263 () Bool)

(declare-fun lt!641661 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98797 (_ BitVec 32)) SeekEntryResult!11957)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98797 (_ BitVec 32)) SeekEntryResult!11957)

(assert (=> b!1466263 (= e!823797 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641661 intermediateAfterIndex!19 lt!641659 lt!641657 mask!2687) (seekEntryOrOpen!0 lt!641659 lt!641657 mask!2687))))))

(declare-fun b!1466264 () Bool)

(assert (=> b!1466264 (= e!823797 (not (= lt!641655 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641661 lt!641659 lt!641657 mask!2687))))))

(declare-fun b!1466265 () Bool)

(declare-fun res!995098 () Bool)

(declare-fun e!823800 () Bool)

(assert (=> b!1466265 (=> res!995098 e!823800)))

(assert (=> b!1466265 (= res!995098 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466266 () Bool)

(assert (=> b!1466266 (= e!823800 true)))

(declare-fun lt!641660 () SeekEntryResult!11957)

(assert (=> b!1466266 (= lt!641660 (seekEntryOrOpen!0 lt!641659 lt!641657 mask!2687))))

(declare-datatypes ((Unit!49358 0))(
  ( (Unit!49359) )
))
(declare-fun lt!641656 () Unit!49358)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49358)

(assert (=> b!1466266 (= lt!641656 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641661 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466267 () Bool)

(declare-fun res!995091 () Bool)

(assert (=> b!1466267 (=> (not res!995091) (not e!823801))))

(assert (=> b!1466267 (= res!995091 (and (= (size!48233 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48233 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48233 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466268 () Bool)

(declare-fun e!823804 () Bool)

(declare-fun e!823799 () Bool)

(assert (=> b!1466268 (= e!823804 (not e!823799))))

(declare-fun res!995095 () Bool)

(assert (=> b!1466268 (=> res!995095 e!823799)))

(assert (=> b!1466268 (= res!995095 (or (and (= (select (arr!47682 a!2862) index!646) (select (store (arr!47682 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47682 a!2862) index!646) (select (arr!47682 a!2862) j!93))) (= (select (arr!47682 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466268 (and (= lt!641660 (Found!11957 j!93)) (or (= (select (arr!47682 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47682 a!2862) intermediateBeforeIndex!19) (select (arr!47682 a!2862) j!93))))))

(assert (=> b!1466268 (= lt!641660 (seekEntryOrOpen!0 (select (arr!47682 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98797 (_ BitVec 32)) Bool)

(assert (=> b!1466268 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641662 () Unit!49358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49358)

(assert (=> b!1466268 (= lt!641662 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466269 () Bool)

(declare-fun res!995106 () Bool)

(assert (=> b!1466269 (=> (not res!995106) (not e!823804))))

(assert (=> b!1466269 (= res!995106 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466270 () Bool)

(declare-fun res!995094 () Bool)

(assert (=> b!1466270 (=> (not res!995094) (not e!823801))))

(declare-datatypes ((List!34363 0))(
  ( (Nil!34360) (Cons!34359 (h!35709 (_ BitVec 64)) (t!49064 List!34363)) )
))
(declare-fun arrayNoDuplicates!0 (array!98797 (_ BitVec 32) List!34363) Bool)

(assert (=> b!1466270 (= res!995094 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34360))))

(declare-fun b!1466271 () Bool)

(declare-fun res!995097 () Bool)

(assert (=> b!1466271 (=> (not res!995097) (not e!823804))))

(assert (=> b!1466271 (= res!995097 e!823802)))

(declare-fun c!135097 () Bool)

(assert (=> b!1466271 (= c!135097 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466272 () Bool)

(declare-fun res!995099 () Bool)

(assert (=> b!1466272 (=> (not res!995099) (not e!823801))))

(assert (=> b!1466272 (= res!995099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466257 () Bool)

(declare-fun res!995090 () Bool)

(assert (=> b!1466257 (=> res!995090 e!823800)))

(assert (=> b!1466257 (= res!995090 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641661 (select (arr!47682 a!2862) j!93) a!2862 mask!2687) lt!641658)))))

(declare-fun res!995092 () Bool)

(assert (=> start!125432 (=> (not res!995092) (not e!823801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125432 (= res!995092 (validMask!0 mask!2687))))

(assert (=> start!125432 e!823801))

(assert (=> start!125432 true))

(declare-fun array_inv!36627 (array!98797) Bool)

(assert (=> start!125432 (array_inv!36627 a!2862)))

(declare-fun b!1466273 () Bool)

(assert (=> b!1466273 (= e!823801 e!823805)))

(declare-fun res!995103 () Bool)

(assert (=> b!1466273 (=> (not res!995103) (not e!823805))))

(assert (=> b!1466273 (= res!995103 (= (select (store (arr!47682 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466273 (= lt!641657 (array!98798 (store (arr!47682 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48233 a!2862)))))

(declare-fun b!1466274 () Bool)

(declare-fun res!995100 () Bool)

(assert (=> b!1466274 (=> res!995100 e!823800)))

(assert (=> b!1466274 (= res!995100 e!823797)))

(declare-fun c!135098 () Bool)

(assert (=> b!1466274 (= c!135098 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466275 () Bool)

(assert (=> b!1466275 (= e!823802 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641659 lt!641657 mask!2687) (seekEntryOrOpen!0 lt!641659 lt!641657 mask!2687)))))

(declare-fun b!1466276 () Bool)

(declare-fun res!995089 () Bool)

(assert (=> b!1466276 (=> (not res!995089) (not e!823801))))

(assert (=> b!1466276 (= res!995089 (validKeyInArray!0 (select (arr!47682 a!2862) j!93)))))

(declare-fun b!1466277 () Bool)

(assert (=> b!1466277 (= e!823799 e!823800)))

(declare-fun res!995101 () Bool)

(assert (=> b!1466277 (=> res!995101 e!823800)))

(assert (=> b!1466277 (= res!995101 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641661 #b00000000000000000000000000000000) (bvsge lt!641661 (size!48233 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466277 (= lt!641661 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466278 () Bool)

(assert (=> b!1466278 (= e!823803 e!823804)))

(declare-fun res!995096 () Bool)

(assert (=> b!1466278 (=> (not res!995096) (not e!823804))))

(assert (=> b!1466278 (= res!995096 (= lt!641655 (Intermediate!11957 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466278 (= lt!641655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641659 mask!2687) lt!641659 lt!641657 mask!2687))))

(assert (=> b!1466278 (= lt!641659 (select (store (arr!47682 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125432 res!995092) b!1466267))

(assert (= (and b!1466267 res!995091) b!1466261))

(assert (= (and b!1466261 res!995104) b!1466276))

(assert (= (and b!1466276 res!995089) b!1466272))

(assert (= (and b!1466272 res!995099) b!1466270))

(assert (= (and b!1466270 res!995094) b!1466258))

(assert (= (and b!1466258 res!995105) b!1466273))

(assert (= (and b!1466273 res!995103) b!1466260))

(assert (= (and b!1466260 res!995093) b!1466262))

(assert (= (and b!1466262 res!995102) b!1466278))

(assert (= (and b!1466278 res!995096) b!1466271))

(assert (= (and b!1466271 c!135097) b!1466259))

(assert (= (and b!1466271 (not c!135097)) b!1466275))

(assert (= (and b!1466271 res!995097) b!1466269))

(assert (= (and b!1466269 res!995106) b!1466268))

(assert (= (and b!1466268 (not res!995095)) b!1466277))

(assert (= (and b!1466277 (not res!995101)) b!1466257))

(assert (= (and b!1466257 (not res!995090)) b!1466274))

(assert (= (and b!1466274 c!135098) b!1466264))

(assert (= (and b!1466274 (not c!135098)) b!1466263))

(assert (= (and b!1466274 (not res!995100)) b!1466265))

(assert (= (and b!1466265 (not res!995098)) b!1466266))

(declare-fun m!1353315 () Bool)

(assert (=> b!1466266 m!1353315))

(declare-fun m!1353317 () Bool)

(assert (=> b!1466266 m!1353317))

(declare-fun m!1353319 () Bool)

(assert (=> b!1466262 m!1353319))

(assert (=> b!1466262 m!1353319))

(declare-fun m!1353321 () Bool)

(assert (=> b!1466262 m!1353321))

(declare-fun m!1353323 () Bool)

(assert (=> b!1466263 m!1353323))

(assert (=> b!1466263 m!1353315))

(declare-fun m!1353325 () Bool)

(assert (=> b!1466278 m!1353325))

(assert (=> b!1466278 m!1353325))

(declare-fun m!1353327 () Bool)

(assert (=> b!1466278 m!1353327))

(declare-fun m!1353329 () Bool)

(assert (=> b!1466278 m!1353329))

(declare-fun m!1353331 () Bool)

(assert (=> b!1466278 m!1353331))

(declare-fun m!1353333 () Bool)

(assert (=> b!1466261 m!1353333))

(assert (=> b!1466261 m!1353333))

(declare-fun m!1353335 () Bool)

(assert (=> b!1466261 m!1353335))

(declare-fun m!1353337 () Bool)

(assert (=> b!1466275 m!1353337))

(assert (=> b!1466275 m!1353315))

(declare-fun m!1353339 () Bool)

(assert (=> b!1466272 m!1353339))

(assert (=> b!1466257 m!1353319))

(assert (=> b!1466257 m!1353319))

(declare-fun m!1353341 () Bool)

(assert (=> b!1466257 m!1353341))

(declare-fun m!1353343 () Bool)

(assert (=> b!1466264 m!1353343))

(declare-fun m!1353345 () Bool)

(assert (=> b!1466270 m!1353345))

(assert (=> b!1466276 m!1353319))

(assert (=> b!1466276 m!1353319))

(declare-fun m!1353347 () Bool)

(assert (=> b!1466276 m!1353347))

(assert (=> b!1466260 m!1353319))

(assert (=> b!1466260 m!1353319))

(declare-fun m!1353349 () Bool)

(assert (=> b!1466260 m!1353349))

(assert (=> b!1466260 m!1353349))

(assert (=> b!1466260 m!1353319))

(declare-fun m!1353351 () Bool)

(assert (=> b!1466260 m!1353351))

(declare-fun m!1353353 () Bool)

(assert (=> b!1466277 m!1353353))

(assert (=> b!1466273 m!1353329))

(declare-fun m!1353355 () Bool)

(assert (=> b!1466273 m!1353355))

(declare-fun m!1353357 () Bool)

(assert (=> b!1466259 m!1353357))

(declare-fun m!1353359 () Bool)

(assert (=> b!1466268 m!1353359))

(assert (=> b!1466268 m!1353329))

(declare-fun m!1353361 () Bool)

(assert (=> b!1466268 m!1353361))

(declare-fun m!1353363 () Bool)

(assert (=> b!1466268 m!1353363))

(declare-fun m!1353365 () Bool)

(assert (=> b!1466268 m!1353365))

(assert (=> b!1466268 m!1353319))

(declare-fun m!1353367 () Bool)

(assert (=> b!1466268 m!1353367))

(declare-fun m!1353369 () Bool)

(assert (=> b!1466268 m!1353369))

(assert (=> b!1466268 m!1353319))

(declare-fun m!1353371 () Bool)

(assert (=> start!125432 m!1353371))

(declare-fun m!1353373 () Bool)

(assert (=> start!125432 m!1353373))

(push 1)

(assert (not start!125432))

(assert (not b!1466276))

(assert (not b!1466261))

(assert (not b!1466266))

(assert (not b!1466257))

(assert (not b!1466263))

(assert (not b!1466275))

(assert (not b!1466272))

(assert (not b!1466268))

(assert (not b!1466260))

(assert (not b!1466270))

(assert (not b!1466264))

(assert (not b!1466259))

(assert (not b!1466278))

(assert (not b!1466277))

(assert (not b!1466262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

