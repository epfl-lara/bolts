; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125654 () Bool)

(assert start!125654)

(declare-fun b!1470026 () Bool)

(declare-fun res!998542 () Bool)

(declare-fun e!825227 () Bool)

(assert (=> b!1470026 (=> (not res!998542) (not e!825227))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1470026 (= res!998542 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-datatypes ((SeekEntryResult!12056 0))(
  ( (MissingZero!12056 (index!50615 (_ BitVec 32))) (Found!12056 (index!50616 (_ BitVec 32))) (Intermediate!12056 (undefined!12868 Bool) (index!50617 (_ BitVec 32)) (x!132188 (_ BitVec 32))) (Undefined!12056) (MissingVacant!12056 (index!50618 (_ BitVec 32))) )
))
(declare-fun lt!642723 () SeekEntryResult!12056)

(declare-fun b!1470027 () Bool)

(declare-datatypes ((array!99019 0))(
  ( (array!99020 (arr!47793 (Array (_ BitVec 32) (_ BitVec 64))) (size!48344 (_ BitVec 32))) )
))
(declare-fun lt!642724 () array!99019)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!825226 () Bool)

(declare-fun lt!642721 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99019 (_ BitVec 32)) SeekEntryResult!12056)

(assert (=> b!1470027 (= e!825226 (= lt!642723 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642721 lt!642724 mask!2687)))))

(declare-fun b!1470028 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun a!2862 () array!99019)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99019 (_ BitVec 32)) SeekEntryResult!12056)

(assert (=> b!1470028 (= e!825227 (not (= (seekEntryOrOpen!0 (select (arr!47793 a!2862) j!93) a!2862 mask!2687) (Found!12056 j!93))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99019 (_ BitVec 32)) Bool)

(assert (=> b!1470028 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49400 0))(
  ( (Unit!49401) )
))
(declare-fun lt!642722 () Unit!49400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49400)

(assert (=> b!1470028 (= lt!642722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470029 () Bool)

(declare-fun res!998534 () Bool)

(declare-fun e!825223 () Bool)

(assert (=> b!1470029 (=> (not res!998534) (not e!825223))))

(declare-fun lt!642720 () SeekEntryResult!12056)

(assert (=> b!1470029 (= res!998534 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47793 a!2862) j!93) a!2862 mask!2687) lt!642720))))

(declare-fun b!1470030 () Bool)

(declare-fun res!998536 () Bool)

(declare-fun e!825222 () Bool)

(assert (=> b!1470030 (=> (not res!998536) (not e!825222))))

(assert (=> b!1470030 (= res!998536 (and (= (size!48344 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48344 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48344 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470031 () Bool)

(declare-fun res!998537 () Bool)

(assert (=> b!1470031 (=> (not res!998537) (not e!825222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470031 (= res!998537 (validKeyInArray!0 (select (arr!47793 a!2862) j!93)))))

(declare-fun b!1470032 () Bool)

(assert (=> b!1470032 (= e!825223 e!825227)))

(declare-fun res!998541 () Bool)

(assert (=> b!1470032 (=> (not res!998541) (not e!825227))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470032 (= res!998541 (= lt!642723 (Intermediate!12056 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470032 (= lt!642723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642721 mask!2687) lt!642721 lt!642724 mask!2687))))

(assert (=> b!1470032 (= lt!642721 (select (store (arr!47793 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470034 () Bool)

(declare-fun res!998543 () Bool)

(assert (=> b!1470034 (=> (not res!998543) (not e!825222))))

(assert (=> b!1470034 (= res!998543 (validKeyInArray!0 (select (arr!47793 a!2862) i!1006)))))

(declare-fun b!1470035 () Bool)

(declare-fun res!998535 () Bool)

(assert (=> b!1470035 (=> (not res!998535) (not e!825222))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1470035 (= res!998535 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48344 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48344 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48344 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470036 () Bool)

(declare-fun e!825224 () Bool)

(assert (=> b!1470036 (= e!825224 e!825223)))

(declare-fun res!998540 () Bool)

(assert (=> b!1470036 (=> (not res!998540) (not e!825223))))

(assert (=> b!1470036 (= res!998540 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47793 a!2862) j!93) mask!2687) (select (arr!47793 a!2862) j!93) a!2862 mask!2687) lt!642720))))

(assert (=> b!1470036 (= lt!642720 (Intermediate!12056 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470037 () Bool)

(declare-fun res!998544 () Bool)

(assert (=> b!1470037 (=> (not res!998544) (not e!825222))))

(declare-datatypes ((List!34474 0))(
  ( (Nil!34471) (Cons!34470 (h!35820 (_ BitVec 64)) (t!49175 List!34474)) )
))
(declare-fun arrayNoDuplicates!0 (array!99019 (_ BitVec 32) List!34474) Bool)

(assert (=> b!1470037 (= res!998544 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34471))))

(declare-fun b!1470038 () Bool)

(assert (=> b!1470038 (= e!825222 e!825224)))

(declare-fun res!998533 () Bool)

(assert (=> b!1470038 (=> (not res!998533) (not e!825224))))

(assert (=> b!1470038 (= res!998533 (= (select (store (arr!47793 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470038 (= lt!642724 (array!99020 (store (arr!47793 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48344 a!2862)))))

(declare-fun b!1470033 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99019 (_ BitVec 32)) SeekEntryResult!12056)

(assert (=> b!1470033 (= e!825226 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642721 lt!642724 mask!2687) (seekEntryOrOpen!0 lt!642721 lt!642724 mask!2687)))))

(declare-fun res!998532 () Bool)

(assert (=> start!125654 (=> (not res!998532) (not e!825222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125654 (= res!998532 (validMask!0 mask!2687))))

(assert (=> start!125654 e!825222))

(assert (=> start!125654 true))

(declare-fun array_inv!36738 (array!99019) Bool)

(assert (=> start!125654 (array_inv!36738 a!2862)))

(declare-fun b!1470039 () Bool)

(declare-fun res!998538 () Bool)

(assert (=> b!1470039 (=> (not res!998538) (not e!825227))))

(assert (=> b!1470039 (= res!998538 e!825226)))

(declare-fun c!135260 () Bool)

(assert (=> b!1470039 (= c!135260 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470040 () Bool)

(declare-fun res!998539 () Bool)

(assert (=> b!1470040 (=> (not res!998539) (not e!825222))))

(assert (=> b!1470040 (= res!998539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125654 res!998532) b!1470030))

(assert (= (and b!1470030 res!998536) b!1470034))

(assert (= (and b!1470034 res!998543) b!1470031))

(assert (= (and b!1470031 res!998537) b!1470040))

(assert (= (and b!1470040 res!998539) b!1470037))

(assert (= (and b!1470037 res!998544) b!1470035))

(assert (= (and b!1470035 res!998535) b!1470038))

(assert (= (and b!1470038 res!998533) b!1470036))

(assert (= (and b!1470036 res!998540) b!1470029))

(assert (= (and b!1470029 res!998534) b!1470032))

(assert (= (and b!1470032 res!998541) b!1470039))

(assert (= (and b!1470039 c!135260) b!1470027))

(assert (= (and b!1470039 (not c!135260)) b!1470033))

(assert (= (and b!1470039 res!998538) b!1470026))

(assert (= (and b!1470026 res!998542) b!1470028))

(declare-fun m!1357219 () Bool)

(assert (=> b!1470027 m!1357219))

(declare-fun m!1357221 () Bool)

(assert (=> b!1470037 m!1357221))

(declare-fun m!1357223 () Bool)

(assert (=> b!1470029 m!1357223))

(assert (=> b!1470029 m!1357223))

(declare-fun m!1357225 () Bool)

(assert (=> b!1470029 m!1357225))

(declare-fun m!1357227 () Bool)

(assert (=> b!1470040 m!1357227))

(declare-fun m!1357229 () Bool)

(assert (=> start!125654 m!1357229))

(declare-fun m!1357231 () Bool)

(assert (=> start!125654 m!1357231))

(declare-fun m!1357233 () Bool)

(assert (=> b!1470034 m!1357233))

(assert (=> b!1470034 m!1357233))

(declare-fun m!1357235 () Bool)

(assert (=> b!1470034 m!1357235))

(declare-fun m!1357237 () Bool)

(assert (=> b!1470038 m!1357237))

(declare-fun m!1357239 () Bool)

(assert (=> b!1470038 m!1357239))

(assert (=> b!1470028 m!1357223))

(assert (=> b!1470028 m!1357223))

(declare-fun m!1357241 () Bool)

(assert (=> b!1470028 m!1357241))

(declare-fun m!1357243 () Bool)

(assert (=> b!1470028 m!1357243))

(declare-fun m!1357245 () Bool)

(assert (=> b!1470028 m!1357245))

(declare-fun m!1357247 () Bool)

(assert (=> b!1470032 m!1357247))

(assert (=> b!1470032 m!1357247))

(declare-fun m!1357249 () Bool)

(assert (=> b!1470032 m!1357249))

(assert (=> b!1470032 m!1357237))

(declare-fun m!1357251 () Bool)

(assert (=> b!1470032 m!1357251))

(assert (=> b!1470036 m!1357223))

(assert (=> b!1470036 m!1357223))

(declare-fun m!1357253 () Bool)

(assert (=> b!1470036 m!1357253))

(assert (=> b!1470036 m!1357253))

(assert (=> b!1470036 m!1357223))

(declare-fun m!1357255 () Bool)

(assert (=> b!1470036 m!1357255))

(assert (=> b!1470031 m!1357223))

(assert (=> b!1470031 m!1357223))

(declare-fun m!1357257 () Bool)

(assert (=> b!1470031 m!1357257))

(declare-fun m!1357259 () Bool)

(assert (=> b!1470033 m!1357259))

(declare-fun m!1357261 () Bool)

(assert (=> b!1470033 m!1357261))

(push 1)

(assert (not b!1470036))

(assert (not b!1470031))

(assert (not b!1470028))

(assert (not start!125654))

(assert (not b!1470029))

(assert (not b!1470027))

(assert (not b!1470033))

(assert (not b!1470037))

(assert (not b!1470040))

(assert (not b!1470032))

(assert (not b!1470034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1470138 () Bool)

(declare-fun e!825280 () SeekEntryResult!12056)

(declare-fun e!825279 () SeekEntryResult!12056)

(assert (=> b!1470138 (= e!825280 e!825279)))

(declare-fun c!135302 () Bool)

(declare-fun lt!642761 () (_ BitVec 64))

(assert (=> b!1470138 (= c!135302 (= lt!642761 lt!642721))))

(declare-fun b!1470139 () Bool)

(declare-fun e!825281 () SeekEntryResult!12056)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470139 (= e!825281 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!642721 lt!642724 mask!2687))))

(declare-fun b!1470140 () Bool)

(assert (=> b!1470140 (= e!825281 (MissingVacant!12056 intermediateAfterIndex!19))))

(declare-fun b!1470141 () Bool)

(declare-fun c!135301 () Bool)

(assert (=> b!1470141 (= c!135301 (= lt!642761 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470141 (= e!825279 e!825281)))

(declare-fun b!1470142 () Bool)

(assert (=> b!1470142 (= e!825279 (Found!12056 index!646))))

(declare-fun lt!642762 () SeekEntryResult!12056)

(declare-fun d!155261 () Bool)

(assert (=> d!155261 (and (or (is-Undefined!12056 lt!642762) (not (is-Found!12056 lt!642762)) (and (bvsge (index!50616 lt!642762) #b00000000000000000000000000000000) (bvslt (index!50616 lt!642762) (size!48344 lt!642724)))) (or (is-Undefined!12056 lt!642762) (is-Found!12056 lt!642762) (not (is-MissingVacant!12056 lt!642762)) (not (= (index!50618 lt!642762) intermediateAfterIndex!19)) (and (bvsge (index!50618 lt!642762) #b00000000000000000000000000000000) (bvslt (index!50618 lt!642762) (size!48344 lt!642724)))) (or (is-Undefined!12056 lt!642762) (ite (is-Found!12056 lt!642762) (= (select (arr!47793 lt!642724) (index!50616 lt!642762)) lt!642721) (and (is-MissingVacant!12056 lt!642762) (= (index!50618 lt!642762) intermediateAfterIndex!19) (= (select (arr!47793 lt!642724) (index!50618 lt!642762)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155261 (= lt!642762 e!825280)))

(declare-fun c!135300 () Bool)

(assert (=> d!155261 (= c!135300 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155261 (= lt!642761 (select (arr!47793 lt!642724) index!646))))

(assert (=> d!155261 (validMask!0 mask!2687)))

(assert (=> d!155261 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642721 lt!642724 mask!2687) lt!642762)))

(declare-fun b!1470137 () Bool)

(assert (=> b!1470137 (= e!825280 Undefined!12056)))

(assert (= (and d!155261 c!135300) b!1470137))

(assert (= (and d!155261 (not c!135300)) b!1470138))

(assert (= (and b!1470138 c!135302) b!1470142))

(assert (= (and b!1470138 (not c!135302)) b!1470141))

(assert (= (and b!1470141 c!135301) b!1470140))

(assert (= (and b!1470141 (not c!135301)) b!1470139))

(declare-fun m!1357299 () Bool)

(assert (=> b!1470139 m!1357299))

(assert (=> b!1470139 m!1357299))

(declare-fun m!1357301 () Bool)

(assert (=> b!1470139 m!1357301))

(declare-fun m!1357303 () Bool)

(assert (=> d!155261 m!1357303))

(declare-fun m!1357305 () Bool)

(assert (=> d!155261 m!1357305))

(declare-fun m!1357307 () Bool)

(assert (=> d!155261 m!1357307))

(assert (=> d!155261 m!1357229))

(assert (=> b!1470033 d!155261))

(declare-fun b!1470219 () Bool)

(declare-fun e!825331 () SeekEntryResult!12056)

(declare-fun lt!642806 () SeekEntryResult!12056)

(assert (=> b!1470219 (= e!825331 (MissingZero!12056 (index!50617 lt!642806)))))

(declare-fun b!1470220 () Bool)

(assert (=> b!1470220 (= e!825331 (seekKeyOrZeroReturnVacant!0 (x!132188 lt!642806) (index!50617 lt!642806) (index!50617 lt!642806) lt!642721 lt!642724 mask!2687))))

(declare-fun d!155267 () Bool)

(declare-fun lt!642807 () SeekEntryResult!12056)

(assert (=> d!155267 (and (or (is-Undefined!12056 lt!642807) (not (is-Found!12056 lt!642807)) (and (bvsge (index!50616 lt!642807) #b00000000000000000000000000000000) (bvslt (index!50616 lt!642807) (size!48344 lt!642724)))) (or (is-Undefined!12056 lt!642807) (is-Found!12056 lt!642807) (not (is-MissingZero!12056 lt!642807)) (and (bvsge (index!50615 lt!642807) #b00000000000000000000000000000000) (bvslt (index!50615 lt!642807) (size!48344 lt!642724)))) (or (is-Undefined!12056 lt!642807) (is-Found!12056 lt!642807) (is-MissingZero!12056 lt!642807) (not (is-MissingVacant!12056 lt!642807)) (and (bvsge (index!50618 lt!642807) #b00000000000000000000000000000000) (bvslt (index!50618 lt!642807) (size!48344 lt!642724)))) (or (is-Undefined!12056 lt!642807) (ite (is-Found!12056 lt!642807) (= (select (arr!47793 lt!642724) (index!50616 lt!642807)) lt!642721) (ite (is-MissingZero!12056 lt!642807) (= (select (arr!47793 lt!642724) (index!50615 lt!642807)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12056 lt!642807) (= (select (arr!47793 lt!642724) (index!50618 lt!642807)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!825329 () SeekEntryResult!12056)

(assert (=> d!155267 (= lt!642807 e!825329)))

(declare-fun c!135332 () Bool)

(assert (=> d!155267 (= c!135332 (and (is-Intermediate!12056 lt!642806) (undefined!12868 lt!642806)))))

(assert (=> d!155267 (= lt!642806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642721 mask!2687) lt!642721 lt!642724 mask!2687))))

(assert (=> d!155267 (validMask!0 mask!2687)))

(assert (=> d!155267 (= (seekEntryOrOpen!0 lt!642721 lt!642724 mask!2687) lt!642807)))

(declare-fun b!1470221 () Bool)

(declare-fun e!825330 () SeekEntryResult!12056)

(assert (=> b!1470221 (= e!825330 (Found!12056 (index!50617 lt!642806)))))

(declare-fun b!1470222 () Bool)

(declare-fun c!135333 () Bool)

(declare-fun lt!642805 () (_ BitVec 64))

(assert (=> b!1470222 (= c!135333 (= lt!642805 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470222 (= e!825330 e!825331)))

(declare-fun b!1470223 () Bool)

(assert (=> b!1470223 (= e!825329 Undefined!12056)))

(declare-fun b!1470224 () Bool)

(assert (=> b!1470224 (= e!825329 e!825330)))

(assert (=> b!1470224 (= lt!642805 (select (arr!47793 lt!642724) (index!50617 lt!642806)))))

(declare-fun c!135334 () Bool)

(assert (=> b!1470224 (= c!135334 (= lt!642805 lt!642721))))

(assert (= (and d!155267 c!135332) b!1470223))

(assert (= (and d!155267 (not c!135332)) b!1470224))

(assert (= (and b!1470224 c!135334) b!1470221))

(assert (= (and b!1470224 (not c!135334)) b!1470222))

(assert (= (and b!1470222 c!135333) b!1470219))

(assert (= (and b!1470222 (not c!135333)) b!1470220))

(declare-fun m!1357353 () Bool)

(assert (=> b!1470220 m!1357353))

(assert (=> d!155267 m!1357247))

(assert (=> d!155267 m!1357247))

(assert (=> d!155267 m!1357249))

(declare-fun m!1357355 () Bool)

(assert (=> d!155267 m!1357355))

(declare-fun m!1357357 () Bool)

(assert (=> d!155267 m!1357357))

(declare-fun m!1357359 () Bool)

(assert (=> d!155267 m!1357359))

(assert (=> d!155267 m!1357229))

(declare-fun m!1357361 () Bool)

(assert (=> b!1470224 m!1357361))

(assert (=> b!1470033 d!155267))

(declare-fun d!155285 () Bool)

(assert (=> d!155285 (= (validKeyInArray!0 (select (arr!47793 a!2862) i!1006)) (and (not (= (select (arr!47793 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47793 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1470034 d!155285))

(declare-fun b!1470248 () Bool)

(declare-fun e!825352 () Bool)

(declare-fun contains!9909 (List!34474 (_ BitVec 64)) Bool)

(assert (=> b!1470248 (= e!825352 (contains!9909 Nil!34471 (select (arr!47793 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1470249 () Bool)

(declare-fun e!825351 () Bool)

(declare-fun e!825350 () Bool)

(assert (=> b!1470249 (= e!825351 e!825350)))

(declare-fun c!135340 () Bool)

(assert (=> b!1470249 (= c!135340 (validKeyInArray!0 (select (arr!47793 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67706 () Bool)

(declare-fun call!67709 () Bool)

(assert (=> bm!67706 (= call!67709 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135340 (Cons!34470 (select (arr!47793 a!2862) #b00000000000000000000000000000000) Nil!34471) Nil!34471)))))

(declare-fun d!155287 () Bool)

(declare-fun res!998595 () Bool)

(declare-fun e!825353 () Bool)

(assert (=> d!155287 (=> res!998595 e!825353)))

(assert (=> d!155287 (= res!998595 (bvsge #b00000000000000000000000000000000 (size!48344 a!2862)))))

(assert (=> d!155287 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34471) e!825353)))

(declare-fun b!1470250 () Bool)

(assert (=> b!1470250 (= e!825353 e!825351)))

(declare-fun res!998597 () Bool)

(assert (=> b!1470250 (=> (not res!998597) (not e!825351))))

(assert (=> b!1470250 (= res!998597 (not e!825352))))

(declare-fun res!998596 () Bool)

(assert (=> b!1470250 (=> (not res!998596) (not e!825352))))

(assert (=> b!1470250 (= res!998596 (validKeyInArray!0 (select (arr!47793 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1470251 () Bool)

(assert (=> b!1470251 (= e!825350 call!67709)))

(declare-fun b!1470252 () Bool)

(assert (=> b!1470252 (= e!825350 call!67709)))

(assert (= (and d!155287 (not res!998595)) b!1470250))

(assert (= (and b!1470250 res!998596) b!1470248))

(assert (= (and b!1470250 res!998597) b!1470249))

(assert (= (and b!1470249 c!135340) b!1470251))

(assert (= (and b!1470249 (not c!135340)) b!1470252))

(assert (= (or b!1470251 b!1470252) bm!67706))

(declare-fun m!1357393 () Bool)

(assert (=> b!1470248 m!1357393))

(assert (=> b!1470248 m!1357393))

(declare-fun m!1357395 () Bool)

(assert (=> b!1470248 m!1357395))

(assert (=> b!1470249 m!1357393))

(assert (=> b!1470249 m!1357393))

(declare-fun m!1357397 () Bool)

(assert (=> b!1470249 m!1357397))

(assert (=> bm!67706 m!1357393))

(declare-fun m!1357399 () Bool)

(assert (=> bm!67706 m!1357399))

(assert (=> b!1470250 m!1357393))

(assert (=> b!1470250 m!1357393))

(assert (=> b!1470250 m!1357397))

(assert (=> b!1470037 d!155287))

(declare-fun d!155301 () Bool)

(assert (=> d!155301 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125654 d!155301))

(declare-fun d!155303 () Bool)

(assert (=> d!155303 (= (array_inv!36738 a!2862) (bvsge (size!48344 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125654 d!155303))

