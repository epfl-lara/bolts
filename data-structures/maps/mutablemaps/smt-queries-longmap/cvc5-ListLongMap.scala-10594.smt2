; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124744 () Bool)

(assert start!124744)

(declare-fun b!1445271 () Bool)

(declare-fun e!814195 () Bool)

(declare-fun e!814194 () Bool)

(assert (=> b!1445271 (= e!814195 e!814194)))

(declare-fun res!977275 () Bool)

(assert (=> b!1445271 (=> (not res!977275) (not e!814194))))

(declare-datatypes ((SeekEntryResult!11613 0))(
  ( (MissingZero!11613 (index!48843 (_ BitVec 32))) (Found!11613 (index!48844 (_ BitVec 32))) (Intermediate!11613 (undefined!12425 Bool) (index!48845 (_ BitVec 32)) (x!130537 (_ BitVec 32))) (Undefined!11613) (MissingVacant!11613 (index!48846 (_ BitVec 32))) )
))
(declare-fun lt!634414 () SeekEntryResult!11613)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445271 (= res!977275 (= lt!634414 (Intermediate!11613 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98109 0))(
  ( (array!98110 (arr!47338 (Array (_ BitVec 32) (_ BitVec 64))) (size!47889 (_ BitVec 32))) )
))
(declare-fun lt!634412 () array!98109)

(declare-fun lt!634413 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98109 (_ BitVec 32)) SeekEntryResult!11613)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445271 (= lt!634414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634413 mask!2687) lt!634413 lt!634412 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98109)

(assert (=> b!1445271 (= lt!634413 (select (store (arr!47338 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445273 () Bool)

(declare-fun res!977263 () Bool)

(declare-fun e!814196 () Bool)

(assert (=> b!1445273 (=> (not res!977263) (not e!814196))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1445273 (= res!977263 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47889 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47889 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47889 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445274 () Bool)

(declare-fun res!977268 () Bool)

(assert (=> b!1445274 (=> (not res!977268) (not e!814196))))

(declare-datatypes ((List!34019 0))(
  ( (Nil!34016) (Cons!34015 (h!35365 (_ BitVec 64)) (t!48720 List!34019)) )
))
(declare-fun arrayNoDuplicates!0 (array!98109 (_ BitVec 32) List!34019) Bool)

(assert (=> b!1445274 (= res!977268 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34016))))

(declare-fun e!814190 () Bool)

(declare-fun b!1445275 () Bool)

(assert (=> b!1445275 (= e!814190 (= lt!634414 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634413 lt!634412 mask!2687)))))

(declare-fun b!1445276 () Bool)

(assert (=> b!1445276 (= e!814194 (not (or (and (= (select (arr!47338 a!2862) index!646) (select (store (arr!47338 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47338 a!2862) index!646) (select (arr!47338 a!2862) j!93))) (not (= (select (arr!47338 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(declare-fun e!814191 () Bool)

(assert (=> b!1445276 e!814191))

(declare-fun res!977266 () Bool)

(assert (=> b!1445276 (=> (not res!977266) (not e!814191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98109 (_ BitVec 32)) Bool)

(assert (=> b!1445276 (= res!977266 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48670 0))(
  ( (Unit!48671) )
))
(declare-fun lt!634411 () Unit!48670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48670)

(assert (=> b!1445276 (= lt!634411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445277 () Bool)

(declare-fun res!977272 () Bool)

(assert (=> b!1445277 (=> (not res!977272) (not e!814196))))

(assert (=> b!1445277 (= res!977272 (and (= (size!47889 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47889 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47889 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445278 () Bool)

(declare-fun res!977265 () Bool)

(assert (=> b!1445278 (=> (not res!977265) (not e!814196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445278 (= res!977265 (validKeyInArray!0 (select (arr!47338 a!2862) i!1006)))))

(declare-fun b!1445279 () Bool)

(declare-fun e!814192 () Bool)

(assert (=> b!1445279 (= e!814196 e!814192)))

(declare-fun res!977267 () Bool)

(assert (=> b!1445279 (=> (not res!977267) (not e!814192))))

(assert (=> b!1445279 (= res!977267 (= (select (store (arr!47338 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445279 (= lt!634412 (array!98110 (store (arr!47338 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47889 a!2862)))))

(declare-fun b!1445280 () Bool)

(declare-fun res!977273 () Bool)

(assert (=> b!1445280 (=> (not res!977273) (not e!814194))))

(assert (=> b!1445280 (= res!977273 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445281 () Bool)

(declare-fun res!977277 () Bool)

(assert (=> b!1445281 (=> (not res!977277) (not e!814196))))

(assert (=> b!1445281 (= res!977277 (validKeyInArray!0 (select (arr!47338 a!2862) j!93)))))

(declare-fun b!1445282 () Bool)

(declare-fun res!977270 () Bool)

(assert (=> b!1445282 (=> (not res!977270) (not e!814196))))

(assert (=> b!1445282 (= res!977270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445283 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98109 (_ BitVec 32)) SeekEntryResult!11613)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98109 (_ BitVec 32)) SeekEntryResult!11613)

(assert (=> b!1445283 (= e!814190 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634413 lt!634412 mask!2687) (seekEntryOrOpen!0 lt!634413 lt!634412 mask!2687)))))

(declare-fun res!977274 () Bool)

(assert (=> start!124744 (=> (not res!977274) (not e!814196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124744 (= res!977274 (validMask!0 mask!2687))))

(assert (=> start!124744 e!814196))

(assert (=> start!124744 true))

(declare-fun array_inv!36283 (array!98109) Bool)

(assert (=> start!124744 (array_inv!36283 a!2862)))

(declare-fun b!1445272 () Bool)

(assert (=> b!1445272 (= e!814191 (or (= (select (arr!47338 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47338 a!2862) intermediateBeforeIndex!19) (select (arr!47338 a!2862) j!93))))))

(declare-fun b!1445284 () Bool)

(assert (=> b!1445284 (= e!814192 e!814195)))

(declare-fun res!977271 () Bool)

(assert (=> b!1445284 (=> (not res!977271) (not e!814195))))

(declare-fun lt!634410 () SeekEntryResult!11613)

(assert (=> b!1445284 (= res!977271 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47338 a!2862) j!93) mask!2687) (select (arr!47338 a!2862) j!93) a!2862 mask!2687) lt!634410))))

(assert (=> b!1445284 (= lt!634410 (Intermediate!11613 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445285 () Bool)

(declare-fun res!977264 () Bool)

(assert (=> b!1445285 (=> (not res!977264) (not e!814194))))

(assert (=> b!1445285 (= res!977264 e!814190)))

(declare-fun c!133517 () Bool)

(assert (=> b!1445285 (= c!133517 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445286 () Bool)

(declare-fun res!977269 () Bool)

(assert (=> b!1445286 (=> (not res!977269) (not e!814191))))

(assert (=> b!1445286 (= res!977269 (= (seekEntryOrOpen!0 (select (arr!47338 a!2862) j!93) a!2862 mask!2687) (Found!11613 j!93)))))

(declare-fun b!1445287 () Bool)

(declare-fun res!977276 () Bool)

(assert (=> b!1445287 (=> (not res!977276) (not e!814195))))

(assert (=> b!1445287 (= res!977276 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47338 a!2862) j!93) a!2862 mask!2687) lt!634410))))

(assert (= (and start!124744 res!977274) b!1445277))

(assert (= (and b!1445277 res!977272) b!1445278))

(assert (= (and b!1445278 res!977265) b!1445281))

(assert (= (and b!1445281 res!977277) b!1445282))

(assert (= (and b!1445282 res!977270) b!1445274))

(assert (= (and b!1445274 res!977268) b!1445273))

(assert (= (and b!1445273 res!977263) b!1445279))

(assert (= (and b!1445279 res!977267) b!1445284))

(assert (= (and b!1445284 res!977271) b!1445287))

(assert (= (and b!1445287 res!977276) b!1445271))

(assert (= (and b!1445271 res!977275) b!1445285))

(assert (= (and b!1445285 c!133517) b!1445275))

(assert (= (and b!1445285 (not c!133517)) b!1445283))

(assert (= (and b!1445285 res!977264) b!1445280))

(assert (= (and b!1445280 res!977273) b!1445276))

(assert (= (and b!1445276 res!977266) b!1445286))

(assert (= (and b!1445286 res!977269) b!1445272))

(declare-fun m!1334283 () Bool)

(assert (=> b!1445276 m!1334283))

(declare-fun m!1334285 () Bool)

(assert (=> b!1445276 m!1334285))

(declare-fun m!1334287 () Bool)

(assert (=> b!1445276 m!1334287))

(declare-fun m!1334289 () Bool)

(assert (=> b!1445276 m!1334289))

(declare-fun m!1334291 () Bool)

(assert (=> b!1445276 m!1334291))

(declare-fun m!1334293 () Bool)

(assert (=> b!1445276 m!1334293))

(assert (=> b!1445287 m!1334293))

(assert (=> b!1445287 m!1334293))

(declare-fun m!1334295 () Bool)

(assert (=> b!1445287 m!1334295))

(declare-fun m!1334297 () Bool)

(assert (=> b!1445282 m!1334297))

(assert (=> b!1445279 m!1334285))

(declare-fun m!1334299 () Bool)

(assert (=> b!1445279 m!1334299))

(declare-fun m!1334301 () Bool)

(assert (=> b!1445274 m!1334301))

(declare-fun m!1334303 () Bool)

(assert (=> b!1445283 m!1334303))

(declare-fun m!1334305 () Bool)

(assert (=> b!1445283 m!1334305))

(declare-fun m!1334307 () Bool)

(assert (=> start!124744 m!1334307))

(declare-fun m!1334309 () Bool)

(assert (=> start!124744 m!1334309))

(declare-fun m!1334311 () Bool)

(assert (=> b!1445272 m!1334311))

(assert (=> b!1445272 m!1334293))

(declare-fun m!1334313 () Bool)

(assert (=> b!1445275 m!1334313))

(declare-fun m!1334315 () Bool)

(assert (=> b!1445271 m!1334315))

(assert (=> b!1445271 m!1334315))

(declare-fun m!1334317 () Bool)

(assert (=> b!1445271 m!1334317))

(assert (=> b!1445271 m!1334285))

(declare-fun m!1334319 () Bool)

(assert (=> b!1445271 m!1334319))

(declare-fun m!1334321 () Bool)

(assert (=> b!1445278 m!1334321))

(assert (=> b!1445278 m!1334321))

(declare-fun m!1334323 () Bool)

(assert (=> b!1445278 m!1334323))

(assert (=> b!1445284 m!1334293))

(assert (=> b!1445284 m!1334293))

(declare-fun m!1334325 () Bool)

(assert (=> b!1445284 m!1334325))

(assert (=> b!1445284 m!1334325))

(assert (=> b!1445284 m!1334293))

(declare-fun m!1334327 () Bool)

(assert (=> b!1445284 m!1334327))

(assert (=> b!1445286 m!1334293))

(assert (=> b!1445286 m!1334293))

(declare-fun m!1334329 () Bool)

(assert (=> b!1445286 m!1334329))

(assert (=> b!1445281 m!1334293))

(assert (=> b!1445281 m!1334293))

(declare-fun m!1334331 () Bool)

(assert (=> b!1445281 m!1334331))

(push 1)

