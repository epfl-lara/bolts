; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126310 () Bool)

(assert start!126310)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1480227 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!830270 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99333 0))(
  ( (array!99334 (arr!47941 (Array (_ BitVec 32) (_ BitVec 64))) (size!48492 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99333)

(assert (=> b!1480227 (= e!830270 (not (or (and (= (select (arr!47941 a!2862) index!646) (select (store (arr!47941 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47941 a!2862) index!646) (select (arr!47941 a!2862) j!93))) (= (select (arr!47941 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun e!830267 () Bool)

(assert (=> b!1480227 e!830267))

(declare-fun res!1006157 () Bool)

(assert (=> b!1480227 (=> (not res!1006157) (not e!830267))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99333 (_ BitVec 32)) Bool)

(assert (=> b!1480227 (= res!1006157 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49696 0))(
  ( (Unit!49697) )
))
(declare-fun lt!646308 () Unit!49696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49696)

(assert (=> b!1480227 (= lt!646308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1480228 () Bool)

(declare-fun res!1006159 () Bool)

(declare-fun e!830269 () Bool)

(assert (=> b!1480228 (=> (not res!1006159) (not e!830269))))

(assert (=> b!1480228 (= res!1006159 (and (= (size!48492 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48492 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48492 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!646312 () array!99333)

(declare-fun lt!646309 () (_ BitVec 64))

(declare-fun e!830268 () Bool)

(declare-fun b!1480229 () Bool)

(declare-datatypes ((SeekEntryResult!12204 0))(
  ( (MissingZero!12204 (index!51207 (_ BitVec 32))) (Found!12204 (index!51208 (_ BitVec 32))) (Intermediate!12204 (undefined!13016 Bool) (index!51209 (_ BitVec 32)) (x!132790 (_ BitVec 32))) (Undefined!12204) (MissingVacant!12204 (index!51210 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99333 (_ BitVec 32)) SeekEntryResult!12204)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99333 (_ BitVec 32)) SeekEntryResult!12204)

(assert (=> b!1480229 (= e!830268 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646309 lt!646312 mask!2687) (seekEntryOrOpen!0 lt!646309 lt!646312 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1480230 () Bool)

(assert (=> b!1480230 (= e!830267 (or (= (select (arr!47941 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47941 a!2862) intermediateBeforeIndex!19) (select (arr!47941 a!2862) j!93))))))

(declare-fun b!1480231 () Bool)

(declare-fun res!1006162 () Bool)

(assert (=> b!1480231 (=> (not res!1006162) (not e!830270))))

(assert (=> b!1480231 (= res!1006162 e!830268)))

(declare-fun c!136559 () Bool)

(assert (=> b!1480231 (= c!136559 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1480232 () Bool)

(declare-fun res!1006155 () Bool)

(assert (=> b!1480232 (=> (not res!1006155) (not e!830269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1480232 (= res!1006155 (validKeyInArray!0 (select (arr!47941 a!2862) j!93)))))

(declare-fun b!1480233 () Bool)

(declare-fun res!1006161 () Bool)

(assert (=> b!1480233 (=> (not res!1006161) (not e!830270))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1480233 (= res!1006161 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1480234 () Bool)

(declare-fun res!1006160 () Bool)

(assert (=> b!1480234 (=> (not res!1006160) (not e!830269))))

(assert (=> b!1480234 (= res!1006160 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48492 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48492 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48492 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1480235 () Bool)

(declare-fun res!1006158 () Bool)

(declare-fun e!830264 () Bool)

(assert (=> b!1480235 (=> (not res!1006158) (not e!830264))))

(declare-fun lt!646311 () SeekEntryResult!12204)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99333 (_ BitVec 32)) SeekEntryResult!12204)

(assert (=> b!1480235 (= res!1006158 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646311))))

(declare-fun res!1006156 () Bool)

(assert (=> start!126310 (=> (not res!1006156) (not e!830269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126310 (= res!1006156 (validMask!0 mask!2687))))

(assert (=> start!126310 e!830269))

(assert (=> start!126310 true))

(declare-fun array_inv!36886 (array!99333) Bool)

(assert (=> start!126310 (array_inv!36886 a!2862)))

(declare-fun b!1480236 () Bool)

(assert (=> b!1480236 (= e!830264 e!830270)))

(declare-fun res!1006166 () Bool)

(assert (=> b!1480236 (=> (not res!1006166) (not e!830270))))

(declare-fun lt!646310 () SeekEntryResult!12204)

(assert (=> b!1480236 (= res!1006166 (= lt!646310 (Intermediate!12204 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480236 (= lt!646310 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646309 mask!2687) lt!646309 lt!646312 mask!2687))))

(assert (=> b!1480236 (= lt!646309 (select (store (arr!47941 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1480237 () Bool)

(declare-fun res!1006163 () Bool)

(assert (=> b!1480237 (=> (not res!1006163) (not e!830269))))

(declare-datatypes ((List!34622 0))(
  ( (Nil!34619) (Cons!34618 (h!35986 (_ BitVec 64)) (t!49323 List!34622)) )
))
(declare-fun arrayNoDuplicates!0 (array!99333 (_ BitVec 32) List!34622) Bool)

(assert (=> b!1480237 (= res!1006163 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34619))))

(declare-fun b!1480238 () Bool)

(assert (=> b!1480238 (= e!830268 (= lt!646310 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646309 lt!646312 mask!2687)))))

(declare-fun b!1480239 () Bool)

(declare-fun e!830265 () Bool)

(assert (=> b!1480239 (= e!830265 e!830264)))

(declare-fun res!1006167 () Bool)

(assert (=> b!1480239 (=> (not res!1006167) (not e!830264))))

(assert (=> b!1480239 (= res!1006167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646311))))

(assert (=> b!1480239 (= lt!646311 (Intermediate!12204 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1480240 () Bool)

(declare-fun res!1006153 () Bool)

(assert (=> b!1480240 (=> (not res!1006153) (not e!830269))))

(assert (=> b!1480240 (= res!1006153 (validKeyInArray!0 (select (arr!47941 a!2862) i!1006)))))

(declare-fun b!1480241 () Bool)

(declare-fun res!1006164 () Bool)

(assert (=> b!1480241 (=> (not res!1006164) (not e!830269))))

(assert (=> b!1480241 (= res!1006164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1480242 () Bool)

(declare-fun res!1006165 () Bool)

(assert (=> b!1480242 (=> (not res!1006165) (not e!830267))))

(assert (=> b!1480242 (= res!1006165 (= (seekEntryOrOpen!0 (select (arr!47941 a!2862) j!93) a!2862 mask!2687) (Found!12204 j!93)))))

(declare-fun b!1480243 () Bool)

(assert (=> b!1480243 (= e!830269 e!830265)))

(declare-fun res!1006154 () Bool)

(assert (=> b!1480243 (=> (not res!1006154) (not e!830265))))

(assert (=> b!1480243 (= res!1006154 (= (select (store (arr!47941 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480243 (= lt!646312 (array!99334 (store (arr!47941 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48492 a!2862)))))

(assert (= (and start!126310 res!1006156) b!1480228))

(assert (= (and b!1480228 res!1006159) b!1480240))

(assert (= (and b!1480240 res!1006153) b!1480232))

(assert (= (and b!1480232 res!1006155) b!1480241))

(assert (= (and b!1480241 res!1006164) b!1480237))

(assert (= (and b!1480237 res!1006163) b!1480234))

(assert (= (and b!1480234 res!1006160) b!1480243))

(assert (= (and b!1480243 res!1006154) b!1480239))

(assert (= (and b!1480239 res!1006167) b!1480235))

(assert (= (and b!1480235 res!1006158) b!1480236))

(assert (= (and b!1480236 res!1006166) b!1480231))

(assert (= (and b!1480231 c!136559) b!1480238))

(assert (= (and b!1480231 (not c!136559)) b!1480229))

(assert (= (and b!1480231 res!1006162) b!1480233))

(assert (= (and b!1480233 res!1006161) b!1480227))

(assert (= (and b!1480227 res!1006157) b!1480242))

(assert (= (and b!1480242 res!1006165) b!1480230))

(declare-fun m!1366101 () Bool)

(assert (=> b!1480240 m!1366101))

(assert (=> b!1480240 m!1366101))

(declare-fun m!1366103 () Bool)

(assert (=> b!1480240 m!1366103))

(declare-fun m!1366105 () Bool)

(assert (=> b!1480242 m!1366105))

(assert (=> b!1480242 m!1366105))

(declare-fun m!1366107 () Bool)

(assert (=> b!1480242 m!1366107))

(declare-fun m!1366109 () Bool)

(assert (=> b!1480230 m!1366109))

(assert (=> b!1480230 m!1366105))

(declare-fun m!1366111 () Bool)

(assert (=> b!1480243 m!1366111))

(declare-fun m!1366113 () Bool)

(assert (=> b!1480243 m!1366113))

(declare-fun m!1366115 () Bool)

(assert (=> b!1480227 m!1366115))

(assert (=> b!1480227 m!1366111))

(declare-fun m!1366117 () Bool)

(assert (=> b!1480227 m!1366117))

(declare-fun m!1366119 () Bool)

(assert (=> b!1480227 m!1366119))

(declare-fun m!1366121 () Bool)

(assert (=> b!1480227 m!1366121))

(assert (=> b!1480227 m!1366105))

(declare-fun m!1366123 () Bool)

(assert (=> b!1480238 m!1366123))

(assert (=> b!1480239 m!1366105))

(assert (=> b!1480239 m!1366105))

(declare-fun m!1366125 () Bool)

(assert (=> b!1480239 m!1366125))

(assert (=> b!1480239 m!1366125))

(assert (=> b!1480239 m!1366105))

(declare-fun m!1366127 () Bool)

(assert (=> b!1480239 m!1366127))

(declare-fun m!1366129 () Bool)

(assert (=> b!1480237 m!1366129))

(assert (=> b!1480232 m!1366105))

(assert (=> b!1480232 m!1366105))

(declare-fun m!1366131 () Bool)

(assert (=> b!1480232 m!1366131))

(declare-fun m!1366133 () Bool)

(assert (=> b!1480241 m!1366133))

(declare-fun m!1366135 () Bool)

(assert (=> start!126310 m!1366135))

(declare-fun m!1366137 () Bool)

(assert (=> start!126310 m!1366137))

(declare-fun m!1366139 () Bool)

(assert (=> b!1480236 m!1366139))

(assert (=> b!1480236 m!1366139))

(declare-fun m!1366141 () Bool)

(assert (=> b!1480236 m!1366141))

(assert (=> b!1480236 m!1366111))

(declare-fun m!1366143 () Bool)

(assert (=> b!1480236 m!1366143))

(assert (=> b!1480235 m!1366105))

(assert (=> b!1480235 m!1366105))

(declare-fun m!1366145 () Bool)

(assert (=> b!1480235 m!1366145))

(declare-fun m!1366147 () Bool)

(assert (=> b!1480229 m!1366147))

(declare-fun m!1366149 () Bool)

(assert (=> b!1480229 m!1366149))

(push 1)

(assert (not b!1480232))

(assert (not start!126310))

(assert (not b!1480237))

(assert (not b!1480229))

(assert (not b!1480240))

(assert (not b!1480241))

(assert (not b!1480238))

(assert (not b!1480242))

(assert (not b!1480239))

(assert (not b!1480235))

(assert (not b!1480236))

(assert (not b!1480227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1480442 () Bool)

(declare-fun c!136604 () Bool)

(declare-fun lt!646386 () (_ BitVec 64))

(assert (=> b!1480442 (= c!136604 (= lt!646386 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!830369 () SeekEntryResult!12204)

(declare-fun e!830367 () SeekEntryResult!12204)

(assert (=> b!1480442 (= e!830369 e!830367)))

(declare-fun b!1480443 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480443 (= e!830367 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!646309 lt!646312 mask!2687))))

(declare-fun d!155981 () Bool)

(declare-fun lt!646385 () SeekEntryResult!12204)

(assert (=> d!155981 (and (or (is-Undefined!12204 lt!646385) (not (is-Found!12204 lt!646385)) (and (bvsge (index!51208 lt!646385) #b00000000000000000000000000000000) (bvslt (index!51208 lt!646385) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646385) (is-Found!12204 lt!646385) (not (is-MissingVacant!12204 lt!646385)) (not (= (index!51210 lt!646385) intermediateAfterIndex!19)) (and (bvsge (index!51210 lt!646385) #b00000000000000000000000000000000) (bvslt (index!51210 lt!646385) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646385) (ite (is-Found!12204 lt!646385) (= (select (arr!47941 lt!646312) (index!51208 lt!646385)) lt!646309) (and (is-MissingVacant!12204 lt!646385) (= (index!51210 lt!646385) intermediateAfterIndex!19) (= (select (arr!47941 lt!646312) (index!51210 lt!646385)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!830368 () SeekEntryResult!12204)

(assert (=> d!155981 (= lt!646385 e!830368)))

(declare-fun c!136603 () Bool)

(assert (=> d!155981 (= c!136603 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155981 (= lt!646386 (select (arr!47941 lt!646312) index!646))))

(assert (=> d!155981 (validMask!0 mask!2687)))

(assert (=> d!155981 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646309 lt!646312 mask!2687) lt!646385)))

(declare-fun b!1480444 () Bool)

(assert (=> b!1480444 (= e!830368 e!830369)))

(declare-fun c!136602 () Bool)

(assert (=> b!1480444 (= c!136602 (= lt!646386 lt!646309))))

(declare-fun b!1480445 () Bool)

(assert (=> b!1480445 (= e!830369 (Found!12204 index!646))))

(declare-fun b!1480446 () Bool)

(assert (=> b!1480446 (= e!830368 Undefined!12204)))

(declare-fun b!1480447 () Bool)

(assert (=> b!1480447 (= e!830367 (MissingVacant!12204 intermediateAfterIndex!19))))

(assert (= (and d!155981 c!136603) b!1480446))

(assert (= (and d!155981 (not c!136603)) b!1480444))

(assert (= (and b!1480444 c!136602) b!1480445))

(assert (= (and b!1480444 (not c!136602)) b!1480442))

(assert (= (and b!1480442 c!136604) b!1480447))

(assert (= (and b!1480442 (not c!136604)) b!1480443))

(declare-fun m!1366301 () Bool)

(assert (=> b!1480443 m!1366301))

(assert (=> b!1480443 m!1366301))

(declare-fun m!1366303 () Bool)

(assert (=> b!1480443 m!1366303))

(declare-fun m!1366305 () Bool)

(assert (=> d!155981 m!1366305))

(declare-fun m!1366307 () Bool)

(assert (=> d!155981 m!1366307))

(declare-fun m!1366309 () Bool)

(assert (=> d!155981 m!1366309))

(assert (=> d!155981 m!1366135))

(assert (=> b!1480229 d!155981))

(declare-fun b!1480526 () Bool)

(declare-fun e!830418 () SeekEntryResult!12204)

(assert (=> b!1480526 (= e!830418 Undefined!12204)))

(declare-fun lt!646414 () SeekEntryResult!12204)

(declare-fun e!830419 () SeekEntryResult!12204)

(declare-fun b!1480527 () Bool)

(assert (=> b!1480527 (= e!830419 (seekKeyOrZeroReturnVacant!0 (x!132790 lt!646414) (index!51209 lt!646414) (index!51209 lt!646414) lt!646309 lt!646312 mask!2687))))

(declare-fun d!155999 () Bool)

(declare-fun lt!646416 () SeekEntryResult!12204)

(assert (=> d!155999 (and (or (is-Undefined!12204 lt!646416) (not (is-Found!12204 lt!646416)) (and (bvsge (index!51208 lt!646416) #b00000000000000000000000000000000) (bvslt (index!51208 lt!646416) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646416) (is-Found!12204 lt!646416) (not (is-MissingZero!12204 lt!646416)) (and (bvsge (index!51207 lt!646416) #b00000000000000000000000000000000) (bvslt (index!51207 lt!646416) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646416) (is-Found!12204 lt!646416) (is-MissingZero!12204 lt!646416) (not (is-MissingVacant!12204 lt!646416)) (and (bvsge (index!51210 lt!646416) #b00000000000000000000000000000000) (bvslt (index!51210 lt!646416) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646416) (ite (is-Found!12204 lt!646416) (= (select (arr!47941 lt!646312) (index!51208 lt!646416)) lt!646309) (ite (is-MissingZero!12204 lt!646416) (= (select (arr!47941 lt!646312) (index!51207 lt!646416)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12204 lt!646416) (= (select (arr!47941 lt!646312) (index!51210 lt!646416)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155999 (= lt!646416 e!830418)))

(declare-fun c!136634 () Bool)

(assert (=> d!155999 (= c!136634 (and (is-Intermediate!12204 lt!646414) (undefined!13016 lt!646414)))))

(assert (=> d!155999 (= lt!646414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646309 mask!2687) lt!646309 lt!646312 mask!2687))))

(assert (=> d!155999 (validMask!0 mask!2687)))

(assert (=> d!155999 (= (seekEntryOrOpen!0 lt!646309 lt!646312 mask!2687) lt!646416)))

(declare-fun b!1480528 () Bool)

(declare-fun e!830420 () SeekEntryResult!12204)

(assert (=> b!1480528 (= e!830418 e!830420)))

(declare-fun lt!646415 () (_ BitVec 64))

(assert (=> b!1480528 (= lt!646415 (select (arr!47941 lt!646312) (index!51209 lt!646414)))))

(declare-fun c!136632 () Bool)

(assert (=> b!1480528 (= c!136632 (= lt!646415 lt!646309))))

(declare-fun b!1480529 () Bool)

(assert (=> b!1480529 (= e!830419 (MissingZero!12204 (index!51209 lt!646414)))))

(declare-fun b!1480530 () Bool)

(assert (=> b!1480530 (= e!830420 (Found!12204 (index!51209 lt!646414)))))

(declare-fun b!1480531 () Bool)

(declare-fun c!136633 () Bool)

(assert (=> b!1480531 (= c!136633 (= lt!646415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480531 (= e!830420 e!830419)))

(assert (= (and d!155999 c!136634) b!1480526))

(assert (= (and d!155999 (not c!136634)) b!1480528))

(assert (= (and b!1480528 c!136632) b!1480530))

(assert (= (and b!1480528 (not c!136632)) b!1480531))

(assert (= (and b!1480531 c!136633) b!1480529))

(assert (= (and b!1480531 (not c!136633)) b!1480527))

(declare-fun m!1366333 () Bool)

(assert (=> b!1480527 m!1366333))

(declare-fun m!1366335 () Bool)

(assert (=> d!155999 m!1366335))

(assert (=> d!155999 m!1366135))

(declare-fun m!1366337 () Bool)

(assert (=> d!155999 m!1366337))

(assert (=> d!155999 m!1366139))

(assert (=> d!155999 m!1366139))

(assert (=> d!155999 m!1366141))

(declare-fun m!1366343 () Bool)

(assert (=> d!155999 m!1366343))

(declare-fun m!1366347 () Bool)

(assert (=> b!1480528 m!1366347))

(assert (=> b!1480229 d!155999))

(declare-fun d!156009 () Bool)

(assert (=> d!156009 (= (validKeyInArray!0 (select (arr!47941 a!2862) i!1006)) (and (not (= (select (arr!47941 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47941 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480240 d!156009))

(declare-fun b!1480600 () Bool)

(declare-fun lt!646449 () SeekEntryResult!12204)

(assert (=> b!1480600 (and (bvsge (index!51209 lt!646449) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646449) (size!48492 a!2862)))))

(declare-fun e!830466 () Bool)

(assert (=> b!1480600 (= e!830466 (= (select (arr!47941 a!2862) (index!51209 lt!646449)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480601 () Bool)

(declare-fun e!830461 () Bool)

(assert (=> b!1480601 (= e!830461 (bvsge (x!132790 lt!646449) #b01111111111111111111111111111110))))

(declare-fun d!156013 () Bool)

(assert (=> d!156013 e!830461))

(declare-fun c!136656 () Bool)

(assert (=> d!156013 (= c!136656 (and (is-Intermediate!12204 lt!646449) (undefined!13016 lt!646449)))))

(declare-fun e!830465 () SeekEntryResult!12204)

(assert (=> d!156013 (= lt!646449 e!830465)))

(declare-fun c!136657 () Bool)

(assert (=> d!156013 (= c!136657 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!646448 () (_ BitVec 64))

(assert (=> d!156013 (= lt!646448 (select (arr!47941 a!2862) (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687)))))

(assert (=> d!156013 (validMask!0 mask!2687)))

(assert (=> d!156013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646449)))

(declare-fun b!1480602 () Bool)

(assert (=> b!1480602 (and (bvsge (index!51209 lt!646449) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646449) (size!48492 a!2862)))))

(declare-fun res!1006330 () Bool)

(assert (=> b!1480602 (= res!1006330 (= (select (arr!47941 a!2862) (index!51209 lt!646449)) (select (arr!47941 a!2862) j!93)))))

(assert (=> b!1480602 (=> res!1006330 e!830466)))

(declare-fun e!830462 () Bool)

(assert (=> b!1480602 (= e!830462 e!830466)))

(declare-fun b!1480603 () Bool)

(assert (=> b!1480603 (= e!830465 (Intermediate!12204 true (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1480604 () Bool)

(declare-fun e!830463 () SeekEntryResult!12204)

(assert (=> b!1480604 (= e!830463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480605 () Bool)

(assert (=> b!1480605 (= e!830465 e!830463)))

(declare-fun c!136658 () Bool)

(assert (=> b!1480605 (= c!136658 (or (= lt!646448 (select (arr!47941 a!2862) j!93)) (= (bvadd lt!646448 lt!646448) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480606 () Bool)

(assert (=> b!1480606 (= e!830461 e!830462)))

(declare-fun res!1006332 () Bool)

(assert (=> b!1480606 (= res!1006332 (and (is-Intermediate!12204 lt!646449) (not (undefined!13016 lt!646449)) (bvslt (x!132790 lt!646449) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646449) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646449) #b00000000000000000000000000000000)))))

(assert (=> b!1480606 (=> (not res!1006332) (not e!830462))))

(declare-fun b!1480607 () Bool)

(assert (=> b!1480607 (and (bvsge (index!51209 lt!646449) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646449) (size!48492 a!2862)))))

(declare-fun res!1006331 () Bool)

(assert (=> b!1480607 (= res!1006331 (= (select (arr!47941 a!2862) (index!51209 lt!646449)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480607 (=> res!1006331 e!830466)))

(declare-fun b!1480608 () Bool)

(assert (=> b!1480608 (= e!830463 (Intermediate!12204 false (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156013 c!136657) b!1480603))

(assert (= (and d!156013 (not c!136657)) b!1480605))

(assert (= (and b!1480605 c!136658) b!1480608))

(assert (= (and b!1480605 (not c!136658)) b!1480604))

(assert (= (and d!156013 c!136656) b!1480601))

(assert (= (and d!156013 (not c!136656)) b!1480606))

(assert (= (and b!1480606 res!1006332) b!1480602))

(assert (= (and b!1480602 (not res!1006330)) b!1480607))

(assert (= (and b!1480607 (not res!1006331)) b!1480600))

(declare-fun m!1366381 () Bool)

(assert (=> b!1480602 m!1366381))

(assert (=> b!1480600 m!1366381))

(assert (=> d!156013 m!1366125))

(declare-fun m!1366383 () Bool)

(assert (=> d!156013 m!1366383))

(assert (=> d!156013 m!1366135))

(assert (=> b!1480607 m!1366381))

(assert (=> b!1480604 m!1366125))

(declare-fun m!1366385 () Bool)

(assert (=> b!1480604 m!1366385))

(assert (=> b!1480604 m!1366385))

(assert (=> b!1480604 m!1366105))

(declare-fun m!1366387 () Bool)

(assert (=> b!1480604 m!1366387))

(assert (=> b!1480239 d!156013))

(declare-fun d!156039 () Bool)

(declare-fun lt!646464 () (_ BitVec 32))

(declare-fun lt!646463 () (_ BitVec 32))

(assert (=> d!156039 (= lt!646464 (bvmul (bvxor lt!646463 (bvlshr lt!646463 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156039 (= lt!646463 ((_ extract 31 0) (bvand (bvxor (select (arr!47941 a!2862) j!93) (bvlshr (select (arr!47941 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156039 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1006333 (let ((h!35991 ((_ extract 31 0) (bvand (bvxor (select (arr!47941 a!2862) j!93) (bvlshr (select (arr!47941 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132800 (bvmul (bvxor h!35991 (bvlshr h!35991 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132800 (bvlshr x!132800 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1006333 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1006333 #b00000000000000000000000000000000))))))

(assert (=> d!156039 (= (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) (bvand (bvxor lt!646464 (bvlshr lt!646464 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1480239 d!156039))

(declare-fun d!156043 () Bool)

(assert (=> d!156043 (= (validKeyInArray!0 (select (arr!47941 a!2862) j!93)) (and (not (= (select (arr!47941 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47941 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480232 d!156043))

(declare-fun b!1480633 () Bool)

(declare-fun e!830480 () SeekEntryResult!12204)

(assert (=> b!1480633 (= e!830480 Undefined!12204)))

(declare-fun b!1480634 () Bool)

(declare-fun lt!646465 () SeekEntryResult!12204)

(declare-fun e!830481 () SeekEntryResult!12204)

(assert (=> b!1480634 (= e!830481 (seekKeyOrZeroReturnVacant!0 (x!132790 lt!646465) (index!51209 lt!646465) (index!51209 lt!646465) (select (arr!47941 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!156045 () Bool)

(declare-fun lt!646467 () SeekEntryResult!12204)

(assert (=> d!156045 (and (or (is-Undefined!12204 lt!646467) (not (is-Found!12204 lt!646467)) (and (bvsge (index!51208 lt!646467) #b00000000000000000000000000000000) (bvslt (index!51208 lt!646467) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646467) (is-Found!12204 lt!646467) (not (is-MissingZero!12204 lt!646467)) (and (bvsge (index!51207 lt!646467) #b00000000000000000000000000000000) (bvslt (index!51207 lt!646467) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646467) (is-Found!12204 lt!646467) (is-MissingZero!12204 lt!646467) (not (is-MissingVacant!12204 lt!646467)) (and (bvsge (index!51210 lt!646467) #b00000000000000000000000000000000) (bvslt (index!51210 lt!646467) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646467) (ite (is-Found!12204 lt!646467) (= (select (arr!47941 a!2862) (index!51208 lt!646467)) (select (arr!47941 a!2862) j!93)) (ite (is-MissingZero!12204 lt!646467) (= (select (arr!47941 a!2862) (index!51207 lt!646467)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12204 lt!646467) (= (select (arr!47941 a!2862) (index!51210 lt!646467)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156045 (= lt!646467 e!830480)))

(declare-fun c!136675 () Bool)

(assert (=> d!156045 (= c!136675 (and (is-Intermediate!12204 lt!646465) (undefined!13016 lt!646465)))))

(assert (=> d!156045 (= lt!646465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156045 (validMask!0 mask!2687)))

(assert (=> d!156045 (= (seekEntryOrOpen!0 (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646467)))

(declare-fun b!1480635 () Bool)

(declare-fun e!830482 () SeekEntryResult!12204)

(assert (=> b!1480635 (= e!830480 e!830482)))

(declare-fun lt!646466 () (_ BitVec 64))

(assert (=> b!1480635 (= lt!646466 (select (arr!47941 a!2862) (index!51209 lt!646465)))))

(declare-fun c!136673 () Bool)

(assert (=> b!1480635 (= c!136673 (= lt!646466 (select (arr!47941 a!2862) j!93)))))

(declare-fun b!1480636 () Bool)

(assert (=> b!1480636 (= e!830481 (MissingZero!12204 (index!51209 lt!646465)))))

(declare-fun b!1480637 () Bool)

(assert (=> b!1480637 (= e!830482 (Found!12204 (index!51209 lt!646465)))))

(declare-fun b!1480638 () Bool)

(declare-fun c!136674 () Bool)

(assert (=> b!1480638 (= c!136674 (= lt!646466 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480638 (= e!830482 e!830481)))

(assert (= (and d!156045 c!136675) b!1480633))

(assert (= (and d!156045 (not c!136675)) b!1480635))

(assert (= (and b!1480635 c!136673) b!1480637))

(assert (= (and b!1480635 (not c!136673)) b!1480638))

(assert (= (and b!1480638 c!136674) b!1480636))

(assert (= (and b!1480638 (not c!136674)) b!1480634))

(assert (=> b!1480634 m!1366105))

(declare-fun m!1366405 () Bool)

(assert (=> b!1480634 m!1366405))

(declare-fun m!1366407 () Bool)

(assert (=> d!156045 m!1366407))

(assert (=> d!156045 m!1366135))

(declare-fun m!1366409 () Bool)

(assert (=> d!156045 m!1366409))

(assert (=> d!156045 m!1366105))

(assert (=> d!156045 m!1366125))

(assert (=> d!156045 m!1366125))

(assert (=> d!156045 m!1366105))

(assert (=> d!156045 m!1366127))

(declare-fun m!1366411 () Bool)

(assert (=> d!156045 m!1366411))

(declare-fun m!1366413 () Bool)

(assert (=> b!1480635 m!1366413))

(assert (=> b!1480242 d!156045))

(declare-fun d!156047 () Bool)

(declare-fun res!1006345 () Bool)

(declare-fun e!830505 () Bool)

(assert (=> d!156047 (=> res!1006345 e!830505)))

(assert (=> d!156047 (= res!1006345 (bvsge #b00000000000000000000000000000000 (size!48492 a!2862)))))

(assert (=> d!156047 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!830505)))

(declare-fun b!1480677 () Bool)

(declare-fun e!830507 () Bool)

(declare-fun call!67838 () Bool)

(assert (=> b!1480677 (= e!830507 call!67838)))

(declare-fun b!1480678 () Bool)

(declare-fun e!830506 () Bool)

(assert (=> b!1480678 (= e!830506 call!67838)))

(declare-fun bm!67835 () Bool)

(assert (=> bm!67835 (= call!67838 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480679 () Bool)

(assert (=> b!1480679 (= e!830505 e!830507)))

(declare-fun c!136690 () Bool)

(assert (=> b!1480679 (= c!136690 (validKeyInArray!0 (select (arr!47941 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480680 () Bool)

(assert (=> b!1480680 (= e!830507 e!830506)))

(declare-fun lt!646486 () (_ BitVec 64))

(assert (=> b!1480680 (= lt!646486 (select (arr!47941 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!646485 () Unit!49696)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99333 (_ BitVec 64) (_ BitVec 32)) Unit!49696)

(assert (=> b!1480680 (= lt!646485 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646486 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1480680 (arrayContainsKey!0 a!2862 lt!646486 #b00000000000000000000000000000000)))

(declare-fun lt!646487 () Unit!49696)

(assert (=> b!1480680 (= lt!646487 lt!646485)))

(declare-fun res!1006344 () Bool)

(assert (=> b!1480680 (= res!1006344 (= (seekEntryOrOpen!0 (select (arr!47941 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12204 #b00000000000000000000000000000000)))))

(assert (=> b!1480680 (=> (not res!1006344) (not e!830506))))

(assert (= (and d!156047 (not res!1006345)) b!1480679))

(assert (= (and b!1480679 c!136690) b!1480680))

(assert (= (and b!1480679 (not c!136690)) b!1480677))

(assert (= (and b!1480680 res!1006344) b!1480678))

(assert (= (or b!1480678 b!1480677) bm!67835))

(declare-fun m!1366445 () Bool)

(assert (=> bm!67835 m!1366445))

(declare-fun m!1366447 () Bool)

(assert (=> b!1480679 m!1366447))

(assert (=> b!1480679 m!1366447))

(declare-fun m!1366449 () Bool)

(assert (=> b!1480679 m!1366449))

(assert (=> b!1480680 m!1366447))

(declare-fun m!1366451 () Bool)

(assert (=> b!1480680 m!1366451))

(declare-fun m!1366453 () Bool)

(assert (=> b!1480680 m!1366453))

(assert (=> b!1480680 m!1366447))

(declare-fun m!1366455 () Bool)

(assert (=> b!1480680 m!1366455))

(assert (=> b!1480241 d!156047))

(declare-fun b!1480681 () Bool)

(declare-fun lt!646489 () SeekEntryResult!12204)

(assert (=> b!1480681 (and (bvsge (index!51209 lt!646489) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646489) (size!48492 a!2862)))))

(declare-fun e!830512 () Bool)

(assert (=> b!1480681 (= e!830512 (= (select (arr!47941 a!2862) (index!51209 lt!646489)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480682 () Bool)

(declare-fun e!830508 () Bool)

(assert (=> b!1480682 (= e!830508 (bvsge (x!132790 lt!646489) #b01111111111111111111111111111110))))

(declare-fun d!156059 () Bool)

(assert (=> d!156059 e!830508))

(declare-fun c!136691 () Bool)

(assert (=> d!156059 (= c!136691 (and (is-Intermediate!12204 lt!646489) (undefined!13016 lt!646489)))))

(declare-fun e!830511 () SeekEntryResult!12204)

(assert (=> d!156059 (= lt!646489 e!830511)))

(declare-fun c!136692 () Bool)

(assert (=> d!156059 (= c!136692 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!646488 () (_ BitVec 64))

(assert (=> d!156059 (= lt!646488 (select (arr!47941 a!2862) index!646))))

(assert (=> d!156059 (validMask!0 mask!2687)))

(assert (=> d!156059 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646489)))

(declare-fun b!1480683 () Bool)

(assert (=> b!1480683 (and (bvsge (index!51209 lt!646489) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646489) (size!48492 a!2862)))))

(declare-fun res!1006346 () Bool)

(assert (=> b!1480683 (= res!1006346 (= (select (arr!47941 a!2862) (index!51209 lt!646489)) (select (arr!47941 a!2862) j!93)))))

(assert (=> b!1480683 (=> res!1006346 e!830512)))

(declare-fun e!830509 () Bool)

(assert (=> b!1480683 (= e!830509 e!830512)))

(declare-fun b!1480684 () Bool)

(assert (=> b!1480684 (= e!830511 (Intermediate!12204 true index!646 x!665))))

(declare-fun e!830510 () SeekEntryResult!12204)

(declare-fun b!1480685 () Bool)

(assert (=> b!1480685 (= e!830510 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480686 () Bool)

(assert (=> b!1480686 (= e!830511 e!830510)))

(declare-fun c!136693 () Bool)

(assert (=> b!1480686 (= c!136693 (or (= lt!646488 (select (arr!47941 a!2862) j!93)) (= (bvadd lt!646488 lt!646488) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480687 () Bool)

(assert (=> b!1480687 (= e!830508 e!830509)))

(declare-fun res!1006348 () Bool)

(assert (=> b!1480687 (= res!1006348 (and (is-Intermediate!12204 lt!646489) (not (undefined!13016 lt!646489)) (bvslt (x!132790 lt!646489) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646489) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646489) x!665)))))

(assert (=> b!1480687 (=> (not res!1006348) (not e!830509))))

(declare-fun b!1480688 () Bool)

(assert (=> b!1480688 (and (bvsge (index!51209 lt!646489) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646489) (size!48492 a!2862)))))

(declare-fun res!1006347 () Bool)

(assert (=> b!1480688 (= res!1006347 (= (select (arr!47941 a!2862) (index!51209 lt!646489)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480688 (=> res!1006347 e!830512)))

(declare-fun b!1480689 () Bool)

(assert (=> b!1480689 (= e!830510 (Intermediate!12204 false index!646 x!665))))

(assert (= (and d!156059 c!136692) b!1480684))

(assert (= (and d!156059 (not c!136692)) b!1480686))

(assert (= (and b!1480686 c!136693) b!1480689))

(assert (= (and b!1480686 (not c!136693)) b!1480685))

(assert (= (and d!156059 c!136691) b!1480682))

(assert (= (and d!156059 (not c!136691)) b!1480687))

(assert (= (and b!1480687 res!1006348) b!1480683))

(assert (= (and b!1480683 (not res!1006346)) b!1480688))

(assert (= (and b!1480688 (not res!1006347)) b!1480681))

(declare-fun m!1366457 () Bool)

(assert (=> b!1480683 m!1366457))

(assert (=> b!1480681 m!1366457))

(assert (=> d!156059 m!1366119))

(assert (=> d!156059 m!1366135))

(assert (=> b!1480688 m!1366457))

(assert (=> b!1480685 m!1366301))

(assert (=> b!1480685 m!1366301))

(assert (=> b!1480685 m!1366105))

(declare-fun m!1366459 () Bool)

(assert (=> b!1480685 m!1366459))

(assert (=> b!1480235 d!156059))

(declare-fun d!156061 () Bool)

(declare-fun res!1006350 () Bool)

(declare-fun e!830513 () Bool)

(assert (=> d!156061 (=> res!1006350 e!830513)))

(assert (=> d!156061 (= res!1006350 (bvsge j!93 (size!48492 a!2862)))))

(assert (=> d!156061 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!830513)))

(declare-fun b!1480690 () Bool)

(declare-fun e!830515 () Bool)

(declare-fun call!67839 () Bool)

(assert (=> b!1480690 (= e!830515 call!67839)))

(declare-fun b!1480691 () Bool)

(declare-fun e!830514 () Bool)

(assert (=> b!1480691 (= e!830514 call!67839)))

(declare-fun bm!67836 () Bool)

(assert (=> bm!67836 (= call!67839 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480692 () Bool)

(assert (=> b!1480692 (= e!830513 e!830515)))

(declare-fun c!136694 () Bool)

(assert (=> b!1480692 (= c!136694 (validKeyInArray!0 (select (arr!47941 a!2862) j!93)))))

(declare-fun b!1480693 () Bool)

(assert (=> b!1480693 (= e!830515 e!830514)))

(declare-fun lt!646491 () (_ BitVec 64))

(assert (=> b!1480693 (= lt!646491 (select (arr!47941 a!2862) j!93))))

(declare-fun lt!646490 () Unit!49696)

(assert (=> b!1480693 (= lt!646490 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646491 j!93))))

(assert (=> b!1480693 (arrayContainsKey!0 a!2862 lt!646491 #b00000000000000000000000000000000)))

(declare-fun lt!646492 () Unit!49696)

(assert (=> b!1480693 (= lt!646492 lt!646490)))

(declare-fun res!1006349 () Bool)

(assert (=> b!1480693 (= res!1006349 (= (seekEntryOrOpen!0 (select (arr!47941 a!2862) j!93) a!2862 mask!2687) (Found!12204 j!93)))))

(assert (=> b!1480693 (=> (not res!1006349) (not e!830514))))

(assert (= (and d!156061 (not res!1006350)) b!1480692))

(assert (= (and b!1480692 c!136694) b!1480693))

(assert (= (and b!1480692 (not c!136694)) b!1480690))

(assert (= (and b!1480693 res!1006349) b!1480691))

(assert (= (or b!1480691 b!1480690) bm!67836))

(declare-fun m!1366461 () Bool)

(assert (=> bm!67836 m!1366461))

(assert (=> b!1480692 m!1366105))

(assert (=> b!1480692 m!1366105))

(assert (=> b!1480692 m!1366131))

(assert (=> b!1480693 m!1366105))

(declare-fun m!1366463 () Bool)

(assert (=> b!1480693 m!1366463))

(declare-fun m!1366465 () Bool)

(assert (=> b!1480693 m!1366465))

(assert (=> b!1480693 m!1366105))

(assert (=> b!1480693 m!1366107))

(assert (=> b!1480227 d!156061))

(declare-fun d!156063 () Bool)

(assert (=> d!156063 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646495 () Unit!49696)

(declare-fun choose!38 (array!99333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49696)

(assert (=> d!156063 (= lt!646495 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156063 (validMask!0 mask!2687)))

(assert (=> d!156063 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!646495)))

(declare-fun bs!42655 () Bool)

(assert (= bs!42655 d!156063))

(assert (=> bs!42655 m!1366121))

(declare-fun m!1366467 () Bool)

(assert (=> bs!42655 m!1366467))

(assert (=> bs!42655 m!1366135))

(assert (=> b!1480227 d!156063))

(declare-fun b!1480694 () Bool)

(declare-fun lt!646497 () SeekEntryResult!12204)

(assert (=> b!1480694 (and (bvsge (index!51209 lt!646497) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646497) (size!48492 lt!646312)))))

(declare-fun e!830520 () Bool)

(assert (=> b!1480694 (= e!830520 (= (select (arr!47941 lt!646312) (index!51209 lt!646497)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480695 () Bool)

(declare-fun e!830516 () Bool)

(assert (=> b!1480695 (= e!830516 (bvsge (x!132790 lt!646497) #b01111111111111111111111111111110))))

(declare-fun d!156065 () Bool)

(assert (=> d!156065 e!830516))

(declare-fun c!136695 () Bool)

(assert (=> d!156065 (= c!136695 (and (is-Intermediate!12204 lt!646497) (undefined!13016 lt!646497)))))

(declare-fun e!830519 () SeekEntryResult!12204)

(assert (=> d!156065 (= lt!646497 e!830519)))

(declare-fun c!136696 () Bool)

(assert (=> d!156065 (= c!136696 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!646496 () (_ BitVec 64))

(assert (=> d!156065 (= lt!646496 (select (arr!47941 lt!646312) index!646))))

(assert (=> d!156065 (validMask!0 mask!2687)))

(assert (=> d!156065 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646309 lt!646312 mask!2687) lt!646497)))

(declare-fun b!1480696 () Bool)

(assert (=> b!1480696 (and (bvsge (index!51209 lt!646497) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646497) (size!48492 lt!646312)))))

(declare-fun res!1006351 () Bool)

(assert (=> b!1480696 (= res!1006351 (= (select (arr!47941 lt!646312) (index!51209 lt!646497)) lt!646309))))

(assert (=> b!1480696 (=> res!1006351 e!830520)))

(declare-fun e!830517 () Bool)

(assert (=> b!1480696 (= e!830517 e!830520)))

(declare-fun b!1480697 () Bool)

(assert (=> b!1480697 (= e!830519 (Intermediate!12204 true index!646 x!665))))

(declare-fun b!1480698 () Bool)

(declare-fun e!830518 () SeekEntryResult!12204)

(assert (=> b!1480698 (= e!830518 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!646309 lt!646312 mask!2687))))

(declare-fun b!1480699 () Bool)

(assert (=> b!1480699 (= e!830519 e!830518)))

(declare-fun c!136697 () Bool)

(assert (=> b!1480699 (= c!136697 (or (= lt!646496 lt!646309) (= (bvadd lt!646496 lt!646496) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480700 () Bool)

(assert (=> b!1480700 (= e!830516 e!830517)))

(declare-fun res!1006353 () Bool)

(assert (=> b!1480700 (= res!1006353 (and (is-Intermediate!12204 lt!646497) (not (undefined!13016 lt!646497)) (bvslt (x!132790 lt!646497) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646497) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646497) x!665)))))

(assert (=> b!1480700 (=> (not res!1006353) (not e!830517))))

(declare-fun b!1480701 () Bool)

(assert (=> b!1480701 (and (bvsge (index!51209 lt!646497) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646497) (size!48492 lt!646312)))))

(declare-fun res!1006352 () Bool)

(assert (=> b!1480701 (= res!1006352 (= (select (arr!47941 lt!646312) (index!51209 lt!646497)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480701 (=> res!1006352 e!830520)))

(declare-fun b!1480702 () Bool)

(assert (=> b!1480702 (= e!830518 (Intermediate!12204 false index!646 x!665))))

(assert (= (and d!156065 c!136696) b!1480697))

(assert (= (and d!156065 (not c!136696)) b!1480699))

(assert (= (and b!1480699 c!136697) b!1480702))

(assert (= (and b!1480699 (not c!136697)) b!1480698))

(assert (= (and d!156065 c!136695) b!1480695))

(assert (= (and d!156065 (not c!136695)) b!1480700))

(assert (= (and b!1480700 res!1006353) b!1480696))

(assert (= (and b!1480696 (not res!1006351)) b!1480701))

(assert (= (and b!1480701 (not res!1006352)) b!1480694))

(declare-fun m!1366469 () Bool)

(assert (=> b!1480696 m!1366469))

(assert (=> b!1480694 m!1366469))

(assert (=> d!156065 m!1366309))

(assert (=> d!156065 m!1366135))

(assert (=> b!1480701 m!1366469))

(assert (=> b!1480698 m!1366301))

(assert (=> b!1480698 m!1366301))

(declare-fun m!1366471 () Bool)

(assert (=> b!1480698 m!1366471))

(assert (=> b!1480238 d!156065))

(declare-fun b!1480713 () Bool)

(declare-fun e!830531 () Bool)

(declare-fun e!830530 () Bool)

(assert (=> b!1480713 (= e!830531 e!830530)))

(declare-fun c!136700 () Bool)

(assert (=> b!1480713 (= c!136700 (validKeyInArray!0 (select (arr!47941 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480714 () Bool)

(declare-fun call!67842 () Bool)

(assert (=> b!1480714 (= e!830530 call!67842)))

(declare-fun bm!67839 () Bool)

(assert (=> bm!67839 (= call!67842 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136700 (Cons!34618 (select (arr!47941 a!2862) #b00000000000000000000000000000000) Nil!34619) Nil!34619)))))

(declare-fun d!156067 () Bool)

(declare-fun res!1006362 () Bool)

(declare-fun e!830532 () Bool)

(assert (=> d!156067 (=> res!1006362 e!830532)))

(assert (=> d!156067 (= res!1006362 (bvsge #b00000000000000000000000000000000 (size!48492 a!2862)))))

(assert (=> d!156067 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34619) e!830532)))

(declare-fun b!1480715 () Bool)

(declare-fun e!830529 () Bool)

(declare-fun contains!9925 (List!34622 (_ BitVec 64)) Bool)

(assert (=> b!1480715 (= e!830529 (contains!9925 Nil!34619 (select (arr!47941 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480716 () Bool)

(assert (=> b!1480716 (= e!830530 call!67842)))

(declare-fun b!1480717 () Bool)

(assert (=> b!1480717 (= e!830532 e!830531)))

(declare-fun res!1006361 () Bool)

(assert (=> b!1480717 (=> (not res!1006361) (not e!830531))))

(assert (=> b!1480717 (= res!1006361 (not e!830529))))

(declare-fun res!1006360 () Bool)

(assert (=> b!1480717 (=> (not res!1006360) (not e!830529))))

(assert (=> b!1480717 (= res!1006360 (validKeyInArray!0 (select (arr!47941 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156067 (not res!1006362)) b!1480717))

(assert (= (and b!1480717 res!1006360) b!1480715))

(assert (= (and b!1480717 res!1006361) b!1480713))

(assert (= (and b!1480713 c!136700) b!1480714))

(assert (= (and b!1480713 (not c!136700)) b!1480716))

(assert (= (or b!1480714 b!1480716) bm!67839))

(assert (=> b!1480713 m!1366447))

(assert (=> b!1480713 m!1366447))

(assert (=> b!1480713 m!1366449))

(assert (=> bm!67839 m!1366447))

(declare-fun m!1366473 () Bool)

(assert (=> bm!67839 m!1366473))

(assert (=> b!1480715 m!1366447))

(assert (=> b!1480715 m!1366447))

(declare-fun m!1366475 () Bool)

(assert (=> b!1480715 m!1366475))

(assert (=> b!1480717 m!1366447))

(assert (=> b!1480717 m!1366447))

(assert (=> b!1480717 m!1366449))

(assert (=> b!1480237 d!156067))

(declare-fun d!156069 () Bool)

(assert (=> d!156069 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126310 d!156069))

(declare-fun d!156071 () Bool)

(assert (=> d!156071 (= (array_inv!36886 a!2862) (bvsge (size!48492 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126310 d!156071))

(declare-fun b!1480718 () Bool)

(declare-fun lt!646499 () SeekEntryResult!12204)

(assert (=> b!1480718 (and (bvsge (index!51209 lt!646499) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646499) (size!48492 lt!646312)))))

(declare-fun e!830537 () Bool)

(assert (=> b!1480718 (= e!830537 (= (select (arr!47941 lt!646312) (index!51209 lt!646499)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480719 () Bool)

(declare-fun e!830533 () Bool)

(assert (=> b!1480719 (= e!830533 (bvsge (x!132790 lt!646499) #b01111111111111111111111111111110))))

(declare-fun d!156073 () Bool)

(assert (=> d!156073 e!830533))

(declare-fun c!136701 () Bool)

(assert (=> d!156073 (= c!136701 (and (is-Intermediate!12204 lt!646499) (undefined!13016 lt!646499)))))

(declare-fun e!830536 () SeekEntryResult!12204)

(assert (=> d!156073 (= lt!646499 e!830536)))

(declare-fun c!136702 () Bool)

(assert (=> d!156073 (= c!136702 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!646498 () (_ BitVec 64))

(assert (=> d!156073 (= lt!646498 (select (arr!47941 lt!646312) (toIndex!0 lt!646309 mask!2687)))))

(assert (=> d!156073 (validMask!0 mask!2687)))

(assert (=> d!156073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646309 mask!2687) lt!646309 lt!646312 mask!2687) lt!646499)))

(declare-fun b!1480720 () Bool)

(assert (=> b!1480720 (and (bvsge (index!51209 lt!646499) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646499) (size!48492 lt!646312)))))

(declare-fun res!1006363 () Bool)

(assert (=> b!1480720 (= res!1006363 (= (select (arr!47941 lt!646312) (index!51209 lt!646499)) lt!646309))))

(assert (=> b!1480720 (=> res!1006363 e!830537)))

(declare-fun e!830534 () Bool)

(assert (=> b!1480720 (= e!830534 e!830537)))

(declare-fun b!1480721 () Bool)

(assert (=> b!1480721 (= e!830536 (Intermediate!12204 true (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000))))

(declare-fun e!830535 () SeekEntryResult!12204)

(declare-fun b!1480722 () Bool)

(assert (=> b!1480722 (= e!830535 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646309 lt!646312 mask!2687))))

(declare-fun b!1480723 () Bool)

(assert (=> b!1480723 (= e!830536 e!830535)))

(declare-fun c!136703 () Bool)

(assert (=> b!1480723 (= c!136703 (or (= lt!646498 lt!646309) (= (bvadd lt!646498 lt!646498) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480724 () Bool)

(assert (=> b!1480724 (= e!830533 e!830534)))

(declare-fun res!1006365 () Bool)

(assert (=> b!1480724 (= res!1006365 (and (is-Intermediate!12204 lt!646499) (not (undefined!13016 lt!646499)) (bvslt (x!132790 lt!646499) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646499) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646499) #b00000000000000000000000000000000)))))

(assert (=> b!1480724 (=> (not res!1006365) (not e!830534))))

(declare-fun b!1480725 () Bool)

(assert (=> b!1480725 (and (bvsge (index!51209 lt!646499) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646499) (size!48492 lt!646312)))))

(declare-fun res!1006364 () Bool)

(assert (=> b!1480725 (= res!1006364 (= (select (arr!47941 lt!646312) (index!51209 lt!646499)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480725 (=> res!1006364 e!830537)))

(declare-fun b!1480726 () Bool)

(assert (=> b!1480726 (= e!830535 (Intermediate!12204 false (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156073 c!136702) b!1480721))

(assert (= (and d!156073 (not c!136702)) b!1480723))

(assert (= (and b!1480723 c!136703) b!1480726))

(assert (= (and b!1480723 (not c!136703)) b!1480722))

(assert (= (and d!156073 c!136701) b!1480719))

(assert (= (and d!156073 (not c!136701)) b!1480724))

(assert (= (and b!1480724 res!1006365) b!1480720))

(assert (= (and b!1480720 (not res!1006363)) b!1480725))

(assert (= (and b!1480725 (not res!1006364)) b!1480718))

(declare-fun m!1366477 () Bool)

(assert (=> b!1480720 m!1366477))

(assert (=> b!1480718 m!1366477))

(assert (=> d!156073 m!1366139))

(declare-fun m!1366479 () Bool)

(assert (=> d!156073 m!1366479))

(assert (=> d!156073 m!1366135))

(assert (=> b!1480725 m!1366477))

(assert (=> b!1480722 m!1366139))

(declare-fun m!1366481 () Bool)

(assert (=> b!1480722 m!1366481))

(assert (=> b!1480722 m!1366481))

(declare-fun m!1366483 () Bool)

(assert (=> b!1480722 m!1366483))

(assert (=> b!1480236 d!156073))

(declare-fun d!156075 () Bool)

(declare-fun lt!646501 () (_ BitVec 32))

(declare-fun lt!646500 () (_ BitVec 32))

(assert (=> d!156075 (= lt!646501 (bvmul (bvxor lt!646500 (bvlshr lt!646500 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156075 (= lt!646500 ((_ extract 31 0) (bvand (bvxor lt!646309 (bvlshr lt!646309 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156075 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1006333 (let ((h!35991 ((_ extract 31 0) (bvand (bvxor lt!646309 (bvlshr lt!646309 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132800 (bvmul (bvxor h!35991 (bvlshr h!35991 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132800 (bvlshr x!132800 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1006333 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1006333 #b00000000000000000000000000000000))))))

(assert (=> d!156075 (= (toIndex!0 lt!646309 mask!2687) (bvand (bvxor lt!646501 (bvlshr lt!646501 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1480236 d!156075))

(push 1)

(assert (not d!156065))

(assert (not b!1480443))

(assert (not b!1480715))

(assert (not d!156073))

(assert (not b!1480692))

(assert (not d!156063))

(assert (not bm!67835))

(assert (not bm!67839))

(assert (not b!1480713))

(assert (not b!1480693))

(assert (not bm!67836))

(assert (not b!1480634))

(assert (not b!1480604))

(assert (not b!1480698))

(assert (not b!1480722))

(assert (not d!155999))

(assert (not b!1480685))

(assert (not d!156059))

(assert (not b!1480679))

(assert (not b!1480680))

(assert (not b!1480717))

(assert (not d!156045))

(assert (not d!156013))

(assert (not d!155981))

(assert (not b!1480527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!156119 () Bool)

(assert (=> d!156119 (arrayContainsKey!0 a!2862 lt!646491 #b00000000000000000000000000000000)))

(declare-fun lt!646539 () Unit!49696)

(declare-fun choose!13 (array!99333 (_ BitVec 64) (_ BitVec 32)) Unit!49696)

(assert (=> d!156119 (= lt!646539 (choose!13 a!2862 lt!646491 j!93))))

(assert (=> d!156119 (bvsge j!93 #b00000000000000000000000000000000)))

(assert (=> d!156119 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646491 j!93) lt!646539)))

(declare-fun bs!42662 () Bool)

(assert (= bs!42662 d!156119))

(assert (=> bs!42662 m!1366465))

(declare-fun m!1366599 () Bool)

(assert (=> bs!42662 m!1366599))

(assert (=> b!1480693 d!156119))

(declare-fun d!156121 () Bool)

(declare-fun res!1006403 () Bool)

(declare-fun e!830598 () Bool)

(assert (=> d!156121 (=> res!1006403 e!830598)))

(assert (=> d!156121 (= res!1006403 (= (select (arr!47941 a!2862) #b00000000000000000000000000000000) lt!646491))))

(assert (=> d!156121 (= (arrayContainsKey!0 a!2862 lt!646491 #b00000000000000000000000000000000) e!830598)))

(declare-fun b!1480818 () Bool)

(declare-fun e!830599 () Bool)

(assert (=> b!1480818 (= e!830598 e!830599)))

(declare-fun res!1006404 () Bool)

(assert (=> b!1480818 (=> (not res!1006404) (not e!830599))))

(assert (=> b!1480818 (= res!1006404 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48492 a!2862)))))

(declare-fun b!1480819 () Bool)

(assert (=> b!1480819 (= e!830599 (arrayContainsKey!0 a!2862 lt!646491 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156121 (not res!1006403)) b!1480818))

(assert (= (and b!1480818 res!1006404) b!1480819))

(assert (=> d!156121 m!1366447))

(declare-fun m!1366601 () Bool)

(assert (=> b!1480819 m!1366601))

(assert (=> b!1480693 d!156121))

(assert (=> b!1480693 d!156045))

(assert (=> d!156065 d!156069))

(assert (=> b!1480692 d!156043))

(declare-fun b!1480820 () Bool)

(declare-fun lt!646541 () SeekEntryResult!12204)

(assert (=> b!1480820 (and (bvsge (index!51209 lt!646541) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646541) (size!48492 a!2862)))))

(declare-fun e!830604 () Bool)

(assert (=> b!1480820 (= e!830604 (= (select (arr!47941 a!2862) (index!51209 lt!646541)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480821 () Bool)

(declare-fun e!830600 () Bool)

(assert (=> b!1480821 (= e!830600 (bvsge (x!132790 lt!646541) #b01111111111111111111111111111110))))

(declare-fun d!156123 () Bool)

(assert (=> d!156123 e!830600))

(declare-fun c!136731 () Bool)

(assert (=> d!156123 (= c!136731 (and (is-Intermediate!12204 lt!646541) (undefined!13016 lt!646541)))))

(declare-fun e!830603 () SeekEntryResult!12204)

(assert (=> d!156123 (= lt!646541 e!830603)))

(declare-fun c!136732 () Bool)

(assert (=> d!156123 (= c!136732 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646540 () (_ BitVec 64))

(assert (=> d!156123 (= lt!646540 (select (arr!47941 a!2862) (nextIndex!0 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687)))))

(assert (=> d!156123 (validMask!0 mask!2687)))

(assert (=> d!156123 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646541)))

(declare-fun b!1480822 () Bool)

(assert (=> b!1480822 (and (bvsge (index!51209 lt!646541) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646541) (size!48492 a!2862)))))

(declare-fun res!1006405 () Bool)

(assert (=> b!1480822 (= res!1006405 (= (select (arr!47941 a!2862) (index!51209 lt!646541)) (select (arr!47941 a!2862) j!93)))))

(assert (=> b!1480822 (=> res!1006405 e!830604)))

(declare-fun e!830601 () Bool)

(assert (=> b!1480822 (= e!830601 e!830604)))

(declare-fun b!1480823 () Bool)

(assert (=> b!1480823 (= e!830603 (Intermediate!12204 true (nextIndex!0 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1480824 () Bool)

(declare-fun e!830602 () SeekEntryResult!12204)

(assert (=> b!1480824 (= e!830602 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480825 () Bool)

(assert (=> b!1480825 (= e!830603 e!830602)))

(declare-fun c!136733 () Bool)

(assert (=> b!1480825 (= c!136733 (or (= lt!646540 (select (arr!47941 a!2862) j!93)) (= (bvadd lt!646540 lt!646540) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480826 () Bool)

(assert (=> b!1480826 (= e!830600 e!830601)))

(declare-fun res!1006407 () Bool)

(assert (=> b!1480826 (= res!1006407 (and (is-Intermediate!12204 lt!646541) (not (undefined!13016 lt!646541)) (bvslt (x!132790 lt!646541) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646541) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646541) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480826 (=> (not res!1006407) (not e!830601))))

(declare-fun b!1480827 () Bool)

(assert (=> b!1480827 (and (bvsge (index!51209 lt!646541) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646541) (size!48492 a!2862)))))

(declare-fun res!1006406 () Bool)

(assert (=> b!1480827 (= res!1006406 (= (select (arr!47941 a!2862) (index!51209 lt!646541)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480827 (=> res!1006406 e!830604)))

(declare-fun b!1480828 () Bool)

(assert (=> b!1480828 (= e!830602 (Intermediate!12204 false (nextIndex!0 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156123 c!136732) b!1480823))

(assert (= (and d!156123 (not c!136732)) b!1480825))

(assert (= (and b!1480825 c!136733) b!1480828))

(assert (= (and b!1480825 (not c!136733)) b!1480824))

(assert (= (and d!156123 c!136731) b!1480821))

(assert (= (and d!156123 (not c!136731)) b!1480826))

(assert (= (and b!1480826 res!1006407) b!1480822))

(assert (= (and b!1480822 (not res!1006405)) b!1480827))

(assert (= (and b!1480827 (not res!1006406)) b!1480820))

(declare-fun m!1366603 () Bool)

(assert (=> b!1480822 m!1366603))

(assert (=> b!1480820 m!1366603))

(assert (=> d!156123 m!1366385))

(declare-fun m!1366605 () Bool)

(assert (=> d!156123 m!1366605))

(assert (=> d!156123 m!1366135))

(assert (=> b!1480827 m!1366603))

(assert (=> b!1480824 m!1366385))

(declare-fun m!1366607 () Bool)

(assert (=> b!1480824 m!1366607))

(assert (=> b!1480824 m!1366607))

(assert (=> b!1480824 m!1366105))

(declare-fun m!1366609 () Bool)

(assert (=> b!1480824 m!1366609))

(assert (=> b!1480604 d!156123))

(declare-fun d!156125 () Bool)

(declare-fun lt!646544 () (_ BitVec 32))

(assert (=> d!156125 (and (bvsge lt!646544 #b00000000000000000000000000000000) (bvslt lt!646544 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156125 (= lt!646544 (choose!52 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687))))

(assert (=> d!156125 (validMask!0 mask!2687)))

(assert (=> d!156125 (= (nextIndex!0 (toIndex!0 (select (arr!47941 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646544)))

(declare-fun bs!42663 () Bool)

(assert (= bs!42663 d!156125))

(assert (=> bs!42663 m!1366125))

(declare-fun m!1366611 () Bool)

(assert (=> bs!42663 m!1366611))

(assert (=> bs!42663 m!1366135))

(assert (=> b!1480604 d!156125))

(assert (=> d!156059 d!156069))

(declare-fun b!1480829 () Bool)

(declare-fun c!136736 () Bool)

(declare-fun lt!646546 () (_ BitVec 64))

(assert (=> b!1480829 (= c!136736 (= lt!646546 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!830607 () SeekEntryResult!12204)

(declare-fun e!830605 () SeekEntryResult!12204)

(assert (=> b!1480829 (= e!830607 e!830605)))

(declare-fun b!1480830 () Bool)

(assert (=> b!1480830 (= e!830605 (seekKeyOrZeroReturnVacant!0 (bvadd (x!132790 lt!646414) #b00000000000000000000000000000001) (nextIndex!0 (index!51209 lt!646414) (x!132790 lt!646414) mask!2687) (index!51209 lt!646414) lt!646309 lt!646312 mask!2687))))

(declare-fun lt!646545 () SeekEntryResult!12204)

(declare-fun d!156127 () Bool)

(assert (=> d!156127 (and (or (is-Undefined!12204 lt!646545) (not (is-Found!12204 lt!646545)) (and (bvsge (index!51208 lt!646545) #b00000000000000000000000000000000) (bvslt (index!51208 lt!646545) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646545) (is-Found!12204 lt!646545) (not (is-MissingVacant!12204 lt!646545)) (not (= (index!51210 lt!646545) (index!51209 lt!646414))) (and (bvsge (index!51210 lt!646545) #b00000000000000000000000000000000) (bvslt (index!51210 lt!646545) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646545) (ite (is-Found!12204 lt!646545) (= (select (arr!47941 lt!646312) (index!51208 lt!646545)) lt!646309) (and (is-MissingVacant!12204 lt!646545) (= (index!51210 lt!646545) (index!51209 lt!646414)) (= (select (arr!47941 lt!646312) (index!51210 lt!646545)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!830606 () SeekEntryResult!12204)

(assert (=> d!156127 (= lt!646545 e!830606)))

(declare-fun c!136735 () Bool)

(assert (=> d!156127 (= c!136735 (bvsge (x!132790 lt!646414) #b01111111111111111111111111111110))))

(assert (=> d!156127 (= lt!646546 (select (arr!47941 lt!646312) (index!51209 lt!646414)))))

(assert (=> d!156127 (validMask!0 mask!2687)))

(assert (=> d!156127 (= (seekKeyOrZeroReturnVacant!0 (x!132790 lt!646414) (index!51209 lt!646414) (index!51209 lt!646414) lt!646309 lt!646312 mask!2687) lt!646545)))

(declare-fun b!1480831 () Bool)

(assert (=> b!1480831 (= e!830606 e!830607)))

(declare-fun c!136734 () Bool)

(assert (=> b!1480831 (= c!136734 (= lt!646546 lt!646309))))

(declare-fun b!1480832 () Bool)

(assert (=> b!1480832 (= e!830607 (Found!12204 (index!51209 lt!646414)))))

(declare-fun b!1480833 () Bool)

(assert (=> b!1480833 (= e!830606 Undefined!12204)))

(declare-fun b!1480834 () Bool)

(assert (=> b!1480834 (= e!830605 (MissingVacant!12204 (index!51209 lt!646414)))))

(assert (= (and d!156127 c!136735) b!1480833))

(assert (= (and d!156127 (not c!136735)) b!1480831))

(assert (= (and b!1480831 c!136734) b!1480832))

(assert (= (and b!1480831 (not c!136734)) b!1480829))

(assert (= (and b!1480829 c!136736) b!1480834))

(assert (= (and b!1480829 (not c!136736)) b!1480830))

(declare-fun m!1366613 () Bool)

(assert (=> b!1480830 m!1366613))

(assert (=> b!1480830 m!1366613))

(declare-fun m!1366615 () Bool)

(assert (=> b!1480830 m!1366615))

(declare-fun m!1366617 () Bool)

(assert (=> d!156127 m!1366617))

(declare-fun m!1366619 () Bool)

(assert (=> d!156127 m!1366619))

(assert (=> d!156127 m!1366347))

(assert (=> d!156127 m!1366135))

(assert (=> b!1480527 d!156127))

(declare-fun d!156129 () Bool)

(assert (=> d!156129 (= (validKeyInArray!0 (select (arr!47941 a!2862) #b00000000000000000000000000000000)) (and (not (= (select (arr!47941 a!2862) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47941 a!2862) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480679 d!156129))

(declare-fun b!1480835 () Bool)

(declare-fun lt!646548 () SeekEntryResult!12204)

(assert (=> b!1480835 (and (bvsge (index!51209 lt!646548) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646548) (size!48492 lt!646312)))))

(declare-fun e!830612 () Bool)

(assert (=> b!1480835 (= e!830612 (= (select (arr!47941 lt!646312) (index!51209 lt!646548)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480836 () Bool)

(declare-fun e!830608 () Bool)

(assert (=> b!1480836 (= e!830608 (bvsge (x!132790 lt!646548) #b01111111111111111111111111111110))))

(declare-fun d!156131 () Bool)

(assert (=> d!156131 e!830608))

(declare-fun c!136737 () Bool)

(assert (=> d!156131 (= c!136737 (and (is-Intermediate!12204 lt!646548) (undefined!13016 lt!646548)))))

(declare-fun e!830611 () SeekEntryResult!12204)

(assert (=> d!156131 (= lt!646548 e!830611)))

(declare-fun c!136738 () Bool)

(assert (=> d!156131 (= c!136738 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646547 () (_ BitVec 64))

(assert (=> d!156131 (= lt!646547 (select (arr!47941 lt!646312) (nextIndex!0 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687)))))

(assert (=> d!156131 (validMask!0 mask!2687)))

(assert (=> d!156131 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646309 lt!646312 mask!2687) lt!646548)))

(declare-fun b!1480837 () Bool)

(assert (=> b!1480837 (and (bvsge (index!51209 lt!646548) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646548) (size!48492 lt!646312)))))

(declare-fun res!1006408 () Bool)

(assert (=> b!1480837 (= res!1006408 (= (select (arr!47941 lt!646312) (index!51209 lt!646548)) lt!646309))))

(assert (=> b!1480837 (=> res!1006408 e!830612)))

(declare-fun e!830609 () Bool)

(assert (=> b!1480837 (= e!830609 e!830612)))

(declare-fun b!1480838 () Bool)

(assert (=> b!1480838 (= e!830611 (Intermediate!12204 true (nextIndex!0 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun e!830610 () SeekEntryResult!12204)

(declare-fun b!1480839 () Bool)

(assert (=> b!1480839 (= e!830610 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2687) lt!646309 lt!646312 mask!2687))))

(declare-fun b!1480840 () Bool)

(assert (=> b!1480840 (= e!830611 e!830610)))

(declare-fun c!136739 () Bool)

(assert (=> b!1480840 (= c!136739 (or (= lt!646547 lt!646309) (= (bvadd lt!646547 lt!646547) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480841 () Bool)

(assert (=> b!1480841 (= e!830608 e!830609)))

(declare-fun res!1006410 () Bool)

(assert (=> b!1480841 (= res!1006410 (and (is-Intermediate!12204 lt!646548) (not (undefined!13016 lt!646548)) (bvslt (x!132790 lt!646548) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646548) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646548) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480841 (=> (not res!1006410) (not e!830609))))

(declare-fun b!1480842 () Bool)

(assert (=> b!1480842 (and (bvsge (index!51209 lt!646548) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646548) (size!48492 lt!646312)))))

(declare-fun res!1006409 () Bool)

(assert (=> b!1480842 (= res!1006409 (= (select (arr!47941 lt!646312) (index!51209 lt!646548)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480842 (=> res!1006409 e!830612)))

(declare-fun b!1480843 () Bool)

(assert (=> b!1480843 (= e!830610 (Intermediate!12204 false (nextIndex!0 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156131 c!136738) b!1480838))

(assert (= (and d!156131 (not c!136738)) b!1480840))

(assert (= (and b!1480840 c!136739) b!1480843))

(assert (= (and b!1480840 (not c!136739)) b!1480839))

(assert (= (and d!156131 c!136737) b!1480836))

(assert (= (and d!156131 (not c!136737)) b!1480841))

(assert (= (and b!1480841 res!1006410) b!1480837))

(assert (= (and b!1480837 (not res!1006408)) b!1480842))

(assert (= (and b!1480842 (not res!1006409)) b!1480835))

(declare-fun m!1366621 () Bool)

(assert (=> b!1480837 m!1366621))

(assert (=> b!1480835 m!1366621))

(assert (=> d!156131 m!1366481))

(declare-fun m!1366623 () Bool)

(assert (=> d!156131 m!1366623))

(assert (=> d!156131 m!1366135))

(assert (=> b!1480842 m!1366621))

(assert (=> b!1480839 m!1366481))

(declare-fun m!1366625 () Bool)

(assert (=> b!1480839 m!1366625))

(assert (=> b!1480839 m!1366625))

(declare-fun m!1366627 () Bool)

(assert (=> b!1480839 m!1366627))

(assert (=> b!1480722 d!156131))

(declare-fun d!156133 () Bool)

(declare-fun lt!646549 () (_ BitVec 32))

(assert (=> d!156133 (and (bvsge lt!646549 #b00000000000000000000000000000000) (bvslt lt!646549 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(assert (=> d!156133 (= lt!646549 (choose!52 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687))))

(assert (=> d!156133 (validMask!0 mask!2687)))

(assert (=> d!156133 (= (nextIndex!0 (toIndex!0 lt!646309 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!646549)))

(declare-fun bs!42664 () Bool)

(assert (= bs!42664 d!156133))

(assert (=> bs!42664 m!1366139))

(declare-fun m!1366629 () Bool)

(assert (=> bs!42664 m!1366629))

(assert (=> bs!42664 m!1366135))

(assert (=> b!1480722 d!156133))

(declare-fun d!156135 () Bool)

(declare-fun res!1006412 () Bool)

(declare-fun e!830613 () Bool)

(assert (=> d!156135 (=> res!1006412 e!830613)))

(assert (=> d!156135 (= res!1006412 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48492 a!2862)))))

(assert (=> d!156135 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687) e!830613)))

(declare-fun b!1480844 () Bool)

(declare-fun e!830615 () Bool)

(declare-fun call!67846 () Bool)

(assert (=> b!1480844 (= e!830615 call!67846)))

(declare-fun b!1480845 () Bool)

(declare-fun e!830614 () Bool)

(assert (=> b!1480845 (= e!830614 call!67846)))

(declare-fun bm!67843 () Bool)

(assert (=> bm!67843 (= call!67846 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480846 () Bool)

(assert (=> b!1480846 (= e!830613 e!830615)))

(declare-fun c!136740 () Bool)

(assert (=> b!1480846 (= c!136740 (validKeyInArray!0 (select (arr!47941 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1480847 () Bool)

(assert (=> b!1480847 (= e!830615 e!830614)))

(declare-fun lt!646551 () (_ BitVec 64))

(assert (=> b!1480847 (= lt!646551 (select (arr!47941 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!646550 () Unit!49696)

(assert (=> b!1480847 (= lt!646550 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646551 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1480847 (arrayContainsKey!0 a!2862 lt!646551 #b00000000000000000000000000000000)))

(declare-fun lt!646552 () Unit!49696)

(assert (=> b!1480847 (= lt!646552 lt!646550)))

(declare-fun res!1006411 () Bool)

(assert (=> b!1480847 (= res!1006411 (= (seekEntryOrOpen!0 (select (arr!47941 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2862 mask!2687) (Found!12204 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1480847 (=> (not res!1006411) (not e!830614))))

(assert (= (and d!156135 (not res!1006412)) b!1480846))

(assert (= (and b!1480846 c!136740) b!1480847))

(assert (= (and b!1480846 (not c!136740)) b!1480844))

(assert (= (and b!1480847 res!1006411) b!1480845))

(assert (= (or b!1480845 b!1480844) bm!67843))

(declare-fun m!1366631 () Bool)

(assert (=> bm!67843 m!1366631))

(declare-fun m!1366633 () Bool)

(assert (=> b!1480846 m!1366633))

(assert (=> b!1480846 m!1366633))

(declare-fun m!1366635 () Bool)

(assert (=> b!1480846 m!1366635))

(assert (=> b!1480847 m!1366633))

(declare-fun m!1366637 () Bool)

(assert (=> b!1480847 m!1366637))

(declare-fun m!1366639 () Bool)

(assert (=> b!1480847 m!1366639))

(assert (=> b!1480847 m!1366633))

(declare-fun m!1366641 () Bool)

(assert (=> b!1480847 m!1366641))

(assert (=> bm!67835 d!156135))

(assert (=> d!156063 d!156061))

(declare-fun d!156137 () Bool)

(assert (=> d!156137 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(assert (=> d!156137 true))

(declare-fun _$72!155 () Unit!49696)

(assert (=> d!156137 (= (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) _$72!155)))

(declare-fun bs!42665 () Bool)

(assert (= bs!42665 d!156137))

(assert (=> bs!42665 m!1366121))

(assert (=> d!156063 d!156137))

(assert (=> d!156063 d!156069))

(assert (=> d!156045 d!156013))

(assert (=> d!156045 d!156039))

(assert (=> d!156045 d!156069))

(declare-fun d!156139 () Bool)

(assert (=> d!156139 (arrayContainsKey!0 a!2862 lt!646486 #b00000000000000000000000000000000)))

(declare-fun lt!646553 () Unit!49696)

(assert (=> d!156139 (= lt!646553 (choose!13 a!2862 lt!646486 #b00000000000000000000000000000000))))

(assert (=> d!156139 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!156139 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646486 #b00000000000000000000000000000000) lt!646553)))

(declare-fun bs!42666 () Bool)

(assert (= bs!42666 d!156139))

(assert (=> bs!42666 m!1366453))

(declare-fun m!1366643 () Bool)

(assert (=> bs!42666 m!1366643))

(assert (=> b!1480680 d!156139))

(declare-fun d!156141 () Bool)

(declare-fun res!1006413 () Bool)

(declare-fun e!830616 () Bool)

(assert (=> d!156141 (=> res!1006413 e!830616)))

(assert (=> d!156141 (= res!1006413 (= (select (arr!47941 a!2862) #b00000000000000000000000000000000) lt!646486))))

(assert (=> d!156141 (= (arrayContainsKey!0 a!2862 lt!646486 #b00000000000000000000000000000000) e!830616)))

(declare-fun b!1480848 () Bool)

(declare-fun e!830617 () Bool)

(assert (=> b!1480848 (= e!830616 e!830617)))

(declare-fun res!1006414 () Bool)

(assert (=> b!1480848 (=> (not res!1006414) (not e!830617))))

(assert (=> b!1480848 (= res!1006414 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48492 a!2862)))))

(declare-fun b!1480849 () Bool)

(assert (=> b!1480849 (= e!830617 (arrayContainsKey!0 a!2862 lt!646486 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!156141 (not res!1006413)) b!1480848))

(assert (= (and b!1480848 res!1006414) b!1480849))

(assert (=> d!156141 m!1366447))

(declare-fun m!1366645 () Bool)

(assert (=> b!1480849 m!1366645))

(assert (=> b!1480680 d!156141))

(declare-fun b!1480850 () Bool)

(declare-fun e!830618 () SeekEntryResult!12204)

(assert (=> b!1480850 (= e!830618 Undefined!12204)))

(declare-fun b!1480851 () Bool)

(declare-fun e!830619 () SeekEntryResult!12204)

(declare-fun lt!646554 () SeekEntryResult!12204)

(assert (=> b!1480851 (= e!830619 (seekKeyOrZeroReturnVacant!0 (x!132790 lt!646554) (index!51209 lt!646554) (index!51209 lt!646554) (select (arr!47941 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687))))

(declare-fun d!156143 () Bool)

(declare-fun lt!646556 () SeekEntryResult!12204)

(assert (=> d!156143 (and (or (is-Undefined!12204 lt!646556) (not (is-Found!12204 lt!646556)) (and (bvsge (index!51208 lt!646556) #b00000000000000000000000000000000) (bvslt (index!51208 lt!646556) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646556) (is-Found!12204 lt!646556) (not (is-MissingZero!12204 lt!646556)) (and (bvsge (index!51207 lt!646556) #b00000000000000000000000000000000) (bvslt (index!51207 lt!646556) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646556) (is-Found!12204 lt!646556) (is-MissingZero!12204 lt!646556) (not (is-MissingVacant!12204 lt!646556)) (and (bvsge (index!51210 lt!646556) #b00000000000000000000000000000000) (bvslt (index!51210 lt!646556) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646556) (ite (is-Found!12204 lt!646556) (= (select (arr!47941 a!2862) (index!51208 lt!646556)) (select (arr!47941 a!2862) #b00000000000000000000000000000000)) (ite (is-MissingZero!12204 lt!646556) (= (select (arr!47941 a!2862) (index!51207 lt!646556)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12204 lt!646556) (= (select (arr!47941 a!2862) (index!51210 lt!646556)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156143 (= lt!646556 e!830618)))

(declare-fun c!136743 () Bool)

(assert (=> d!156143 (= c!136743 (and (is-Intermediate!12204 lt!646554) (undefined!13016 lt!646554)))))

(assert (=> d!156143 (= lt!646554 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47941 a!2862) #b00000000000000000000000000000000) mask!2687) (select (arr!47941 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687))))

(assert (=> d!156143 (validMask!0 mask!2687)))

(assert (=> d!156143 (= (seekEntryOrOpen!0 (select (arr!47941 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) lt!646556)))

(declare-fun b!1480852 () Bool)

(declare-fun e!830620 () SeekEntryResult!12204)

(assert (=> b!1480852 (= e!830618 e!830620)))

(declare-fun lt!646555 () (_ BitVec 64))

(assert (=> b!1480852 (= lt!646555 (select (arr!47941 a!2862) (index!51209 lt!646554)))))

(declare-fun c!136741 () Bool)

(assert (=> b!1480852 (= c!136741 (= lt!646555 (select (arr!47941 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480853 () Bool)

(assert (=> b!1480853 (= e!830619 (MissingZero!12204 (index!51209 lt!646554)))))

(declare-fun b!1480854 () Bool)

(assert (=> b!1480854 (= e!830620 (Found!12204 (index!51209 lt!646554)))))

(declare-fun b!1480855 () Bool)

(declare-fun c!136742 () Bool)

(assert (=> b!1480855 (= c!136742 (= lt!646555 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480855 (= e!830620 e!830619)))

(assert (= (and d!156143 c!136743) b!1480850))

(assert (= (and d!156143 (not c!136743)) b!1480852))

(assert (= (and b!1480852 c!136741) b!1480854))

(assert (= (and b!1480852 (not c!136741)) b!1480855))

(assert (= (and b!1480855 c!136742) b!1480853))

(assert (= (and b!1480855 (not c!136742)) b!1480851))

(assert (=> b!1480851 m!1366447))

(declare-fun m!1366647 () Bool)

(assert (=> b!1480851 m!1366647))

(declare-fun m!1366649 () Bool)

(assert (=> d!156143 m!1366649))

(assert (=> d!156143 m!1366135))

(declare-fun m!1366651 () Bool)

(assert (=> d!156143 m!1366651))

(assert (=> d!156143 m!1366447))

(declare-fun m!1366653 () Bool)

(assert (=> d!156143 m!1366653))

(assert (=> d!156143 m!1366653))

(assert (=> d!156143 m!1366447))

(declare-fun m!1366655 () Bool)

(assert (=> d!156143 m!1366655))

(declare-fun m!1366657 () Bool)

(assert (=> d!156143 m!1366657))

(declare-fun m!1366659 () Bool)

(assert (=> b!1480852 m!1366659))

(assert (=> b!1480680 d!156143))

(assert (=> d!156013 d!156069))

(declare-fun d!156145 () Bool)

(declare-fun lt!646559 () Bool)

(declare-fun content!782 (List!34622) (Set (_ BitVec 64)))

(assert (=> d!156145 (= lt!646559 (set.member (select (arr!47941 a!2862) #b00000000000000000000000000000000) (content!782 Nil!34619)))))

(declare-fun e!830625 () Bool)

(assert (=> d!156145 (= lt!646559 e!830625)))

(declare-fun res!1006420 () Bool)

(assert (=> d!156145 (=> (not res!1006420) (not e!830625))))

(assert (=> d!156145 (= res!1006420 (is-Cons!34618 Nil!34619))))

(assert (=> d!156145 (= (contains!9925 Nil!34619 (select (arr!47941 a!2862) #b00000000000000000000000000000000)) lt!646559)))

(declare-fun b!1480860 () Bool)

(declare-fun e!830626 () Bool)

(assert (=> b!1480860 (= e!830625 e!830626)))

(declare-fun res!1006419 () Bool)

(assert (=> b!1480860 (=> res!1006419 e!830626)))

(assert (=> b!1480860 (= res!1006419 (= (h!35986 Nil!34619) (select (arr!47941 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1480861 () Bool)

(assert (=> b!1480861 (= e!830626 (contains!9925 (t!49323 Nil!34619) (select (arr!47941 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156145 res!1006420) b!1480860))

(assert (= (and b!1480860 (not res!1006419)) b!1480861))

(declare-fun m!1366661 () Bool)

(assert (=> d!156145 m!1366661))

(assert (=> d!156145 m!1366447))

(declare-fun m!1366663 () Bool)

(assert (=> d!156145 m!1366663))

(assert (=> b!1480861 m!1366447))

(declare-fun m!1366665 () Bool)

(assert (=> b!1480861 m!1366665))

(assert (=> b!1480715 d!156145))

(assert (=> d!156073 d!156069))

(assert (=> b!1480713 d!156129))

(assert (=> d!155999 d!156073))

(assert (=> d!155999 d!156075))

(assert (=> d!155999 d!156069))

(declare-fun b!1480862 () Bool)

(declare-fun e!830629 () Bool)

(declare-fun e!830628 () Bool)

(assert (=> b!1480862 (= e!830629 e!830628)))

(declare-fun c!136744 () Bool)

(assert (=> b!1480862 (= c!136744 (validKeyInArray!0 (select (arr!47941 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1480863 () Bool)

(declare-fun call!67847 () Bool)

(assert (=> b!1480863 (= e!830628 call!67847)))

(declare-fun bm!67844 () Bool)

(assert (=> bm!67844 (= call!67847 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!136744 (Cons!34618 (select (arr!47941 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!136700 (Cons!34618 (select (arr!47941 a!2862) #b00000000000000000000000000000000) Nil!34619) Nil!34619)) (ite c!136700 (Cons!34618 (select (arr!47941 a!2862) #b00000000000000000000000000000000) Nil!34619) Nil!34619))))))

(declare-fun d!156147 () Bool)

(declare-fun res!1006423 () Bool)

(declare-fun e!830630 () Bool)

(assert (=> d!156147 (=> res!1006423 e!830630)))

(assert (=> d!156147 (= res!1006423 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!48492 a!2862)))))

(assert (=> d!156147 (= (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136700 (Cons!34618 (select (arr!47941 a!2862) #b00000000000000000000000000000000) Nil!34619) Nil!34619)) e!830630)))

(declare-fun b!1480864 () Bool)

(declare-fun e!830627 () Bool)

(assert (=> b!1480864 (= e!830627 (contains!9925 (ite c!136700 (Cons!34618 (select (arr!47941 a!2862) #b00000000000000000000000000000000) Nil!34619) Nil!34619) (select (arr!47941 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1480865 () Bool)

(assert (=> b!1480865 (= e!830628 call!67847)))

(declare-fun b!1480866 () Bool)

(assert (=> b!1480866 (= e!830630 e!830629)))

(declare-fun res!1006422 () Bool)

(assert (=> b!1480866 (=> (not res!1006422) (not e!830629))))

(assert (=> b!1480866 (= res!1006422 (not e!830627))))

(declare-fun res!1006421 () Bool)

(assert (=> b!1480866 (=> (not res!1006421) (not e!830627))))

(assert (=> b!1480866 (= res!1006421 (validKeyInArray!0 (select (arr!47941 a!2862) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!156147 (not res!1006423)) b!1480866))

(assert (= (and b!1480866 res!1006421) b!1480864))

(assert (= (and b!1480866 res!1006422) b!1480862))

(assert (= (and b!1480862 c!136744) b!1480863))

(assert (= (and b!1480862 (not c!136744)) b!1480865))

(assert (= (or b!1480863 b!1480865) bm!67844))

(assert (=> b!1480862 m!1366633))

(assert (=> b!1480862 m!1366633))

(assert (=> b!1480862 m!1366635))

(assert (=> bm!67844 m!1366633))

(declare-fun m!1366667 () Bool)

(assert (=> bm!67844 m!1366667))

(assert (=> b!1480864 m!1366633))

(assert (=> b!1480864 m!1366633))

(declare-fun m!1366669 () Bool)

(assert (=> b!1480864 m!1366669))

(assert (=> b!1480866 m!1366633))

(assert (=> b!1480866 m!1366633))

(assert (=> b!1480866 m!1366635))

(assert (=> bm!67839 d!156147))

(assert (=> b!1480717 d!156129))

(declare-fun b!1480867 () Bool)

(declare-fun lt!646561 () SeekEntryResult!12204)

(assert (=> b!1480867 (and (bvsge (index!51209 lt!646561) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646561) (size!48492 lt!646312)))))

(declare-fun e!830635 () Bool)

(assert (=> b!1480867 (= e!830635 (= (select (arr!47941 lt!646312) (index!51209 lt!646561)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480868 () Bool)

(declare-fun e!830631 () Bool)

(assert (=> b!1480868 (= e!830631 (bvsge (x!132790 lt!646561) #b01111111111111111111111111111110))))

(declare-fun d!156149 () Bool)

(assert (=> d!156149 e!830631))

(declare-fun c!136745 () Bool)

(assert (=> d!156149 (= c!136745 (and (is-Intermediate!12204 lt!646561) (undefined!13016 lt!646561)))))

(declare-fun e!830634 () SeekEntryResult!12204)

(assert (=> d!156149 (= lt!646561 e!830634)))

(declare-fun c!136746 () Bool)

(assert (=> d!156149 (= c!136746 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646560 () (_ BitVec 64))

(assert (=> d!156149 (= lt!646560 (select (arr!47941 lt!646312) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156149 (validMask!0 mask!2687)))

(assert (=> d!156149 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!646309 lt!646312 mask!2687) lt!646561)))

(declare-fun b!1480869 () Bool)

(assert (=> b!1480869 (and (bvsge (index!51209 lt!646561) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646561) (size!48492 lt!646312)))))

(declare-fun res!1006424 () Bool)

(assert (=> b!1480869 (= res!1006424 (= (select (arr!47941 lt!646312) (index!51209 lt!646561)) lt!646309))))

(assert (=> b!1480869 (=> res!1006424 e!830635)))

(declare-fun e!830632 () Bool)

(assert (=> b!1480869 (= e!830632 e!830635)))

(declare-fun b!1480870 () Bool)

(assert (=> b!1480870 (= e!830634 (Intermediate!12204 true (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480871 () Bool)

(declare-fun e!830633 () SeekEntryResult!12204)

(assert (=> b!1480871 (= e!830633 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) lt!646309 lt!646312 mask!2687))))

(declare-fun b!1480872 () Bool)

(assert (=> b!1480872 (= e!830634 e!830633)))

(declare-fun c!136747 () Bool)

(assert (=> b!1480872 (= c!136747 (or (= lt!646560 lt!646309) (= (bvadd lt!646560 lt!646560) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480873 () Bool)

(assert (=> b!1480873 (= e!830631 e!830632)))

(declare-fun res!1006426 () Bool)

(assert (=> b!1480873 (= res!1006426 (and (is-Intermediate!12204 lt!646561) (not (undefined!13016 lt!646561)) (bvslt (x!132790 lt!646561) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646561) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646561) (bvadd x!665 #b00000000000000000000000000000001))))))

(assert (=> b!1480873 (=> (not res!1006426) (not e!830632))))

(declare-fun b!1480874 () Bool)

(assert (=> b!1480874 (and (bvsge (index!51209 lt!646561) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646561) (size!48492 lt!646312)))))

(declare-fun res!1006425 () Bool)

(assert (=> b!1480874 (= res!1006425 (= (select (arr!47941 lt!646312) (index!51209 lt!646561)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480874 (=> res!1006425 e!830635)))

(declare-fun b!1480875 () Bool)

(assert (=> b!1480875 (= e!830633 (Intermediate!12204 false (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(assert (= (and d!156149 c!136746) b!1480870))

(assert (= (and d!156149 (not c!136746)) b!1480872))

(assert (= (and b!1480872 c!136747) b!1480875))

(assert (= (and b!1480872 (not c!136747)) b!1480871))

(assert (= (and d!156149 c!136745) b!1480868))

(assert (= (and d!156149 (not c!136745)) b!1480873))

(assert (= (and b!1480873 res!1006426) b!1480869))

(assert (= (and b!1480869 (not res!1006424)) b!1480874))

(assert (= (and b!1480874 (not res!1006425)) b!1480867))

(declare-fun m!1366671 () Bool)

(assert (=> b!1480869 m!1366671))

(assert (=> b!1480867 m!1366671))

(assert (=> d!156149 m!1366301))

(declare-fun m!1366673 () Bool)

(assert (=> d!156149 m!1366673))

(assert (=> d!156149 m!1366135))

(assert (=> b!1480874 m!1366671))

(assert (=> b!1480871 m!1366301))

(declare-fun m!1366675 () Bool)

(assert (=> b!1480871 m!1366675))

(assert (=> b!1480871 m!1366675))

(declare-fun m!1366677 () Bool)

(assert (=> b!1480871 m!1366677))

(assert (=> b!1480698 d!156149))

(declare-fun d!156151 () Bool)

(declare-fun lt!646562 () (_ BitVec 32))

(assert (=> d!156151 (and (bvsge lt!646562 #b00000000000000000000000000000000) (bvslt lt!646562 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(assert (=> d!156151 (= lt!646562 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156151 (validMask!0 mask!2687)))

(assert (=> d!156151 (= (nextIndex!0 index!646 x!665 mask!2687) lt!646562)))

(declare-fun bs!42667 () Bool)

(assert (= bs!42667 d!156151))

(declare-fun m!1366679 () Bool)

(assert (=> bs!42667 m!1366679))

(assert (=> bs!42667 m!1366135))

(assert (=> b!1480698 d!156151))

(declare-fun d!156153 () Bool)

(declare-fun res!1006428 () Bool)

(declare-fun e!830636 () Bool)

(assert (=> d!156153 (=> res!1006428 e!830636)))

(assert (=> d!156153 (= res!1006428 (bvsge (bvadd j!93 #b00000000000000000000000000000001) (size!48492 a!2862)))))

(assert (=> d!156153 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687) e!830636)))

(declare-fun b!1480876 () Bool)

(declare-fun e!830638 () Bool)

(declare-fun call!67848 () Bool)

(assert (=> b!1480876 (= e!830638 call!67848)))

(declare-fun b!1480877 () Bool)

(declare-fun e!830637 () Bool)

(assert (=> b!1480877 (= e!830637 call!67848)))

(declare-fun bm!67845 () Bool)

(assert (=> bm!67845 (= call!67848 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1480878 () Bool)

(assert (=> b!1480878 (= e!830636 e!830638)))

(declare-fun c!136748 () Bool)

(assert (=> b!1480878 (= c!136748 (validKeyInArray!0 (select (arr!47941 a!2862) (bvadd j!93 #b00000000000000000000000000000001))))))

(declare-fun b!1480879 () Bool)

(assert (=> b!1480879 (= e!830638 e!830637)))

(declare-fun lt!646564 () (_ BitVec 64))

(assert (=> b!1480879 (= lt!646564 (select (arr!47941 a!2862) (bvadd j!93 #b00000000000000000000000000000001)))))

(declare-fun lt!646563 () Unit!49696)

(assert (=> b!1480879 (= lt!646563 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!646564 (bvadd j!93 #b00000000000000000000000000000001)))))

(assert (=> b!1480879 (arrayContainsKey!0 a!2862 lt!646564 #b00000000000000000000000000000000)))

(declare-fun lt!646565 () Unit!49696)

(assert (=> b!1480879 (= lt!646565 lt!646563)))

(declare-fun res!1006427 () Bool)

(assert (=> b!1480879 (= res!1006427 (= (seekEntryOrOpen!0 (select (arr!47941 a!2862) (bvadd j!93 #b00000000000000000000000000000001)) a!2862 mask!2687) (Found!12204 (bvadd j!93 #b00000000000000000000000000000001))))))

(assert (=> b!1480879 (=> (not res!1006427) (not e!830637))))

(assert (= (and d!156153 (not res!1006428)) b!1480878))

(assert (= (and b!1480878 c!136748) b!1480879))

(assert (= (and b!1480878 (not c!136748)) b!1480876))

(assert (= (and b!1480879 res!1006427) b!1480877))

(assert (= (or b!1480877 b!1480876) bm!67845))

(declare-fun m!1366681 () Bool)

(assert (=> bm!67845 m!1366681))

(declare-fun m!1366683 () Bool)

(assert (=> b!1480878 m!1366683))

(assert (=> b!1480878 m!1366683))

(declare-fun m!1366685 () Bool)

(assert (=> b!1480878 m!1366685))

(assert (=> b!1480879 m!1366683))

(declare-fun m!1366687 () Bool)

(assert (=> b!1480879 m!1366687))

(declare-fun m!1366689 () Bool)

(assert (=> b!1480879 m!1366689))

(assert (=> b!1480879 m!1366683))

(declare-fun m!1366691 () Bool)

(assert (=> b!1480879 m!1366691))

(assert (=> bm!67836 d!156153))

(assert (=> d!155981 d!156069))

(declare-fun b!1480880 () Bool)

(declare-fun c!136751 () Bool)

(declare-fun lt!646567 () (_ BitVec 64))

(assert (=> b!1480880 (= c!136751 (= lt!646567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!830641 () SeekEntryResult!12204)

(declare-fun e!830639 () SeekEntryResult!12204)

(assert (=> b!1480880 (= e!830641 e!830639)))

(declare-fun b!1480881 () Bool)

(assert (=> b!1480881 (= e!830639 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) intermediateAfterIndex!19 lt!646309 lt!646312 mask!2687))))

(declare-fun d!156155 () Bool)

(declare-fun lt!646566 () SeekEntryResult!12204)

(assert (=> d!156155 (and (or (is-Undefined!12204 lt!646566) (not (is-Found!12204 lt!646566)) (and (bvsge (index!51208 lt!646566) #b00000000000000000000000000000000) (bvslt (index!51208 lt!646566) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646566) (is-Found!12204 lt!646566) (not (is-MissingVacant!12204 lt!646566)) (not (= (index!51210 lt!646566) intermediateAfterIndex!19)) (and (bvsge (index!51210 lt!646566) #b00000000000000000000000000000000) (bvslt (index!51210 lt!646566) (size!48492 lt!646312)))) (or (is-Undefined!12204 lt!646566) (ite (is-Found!12204 lt!646566) (= (select (arr!47941 lt!646312) (index!51208 lt!646566)) lt!646309) (and (is-MissingVacant!12204 lt!646566) (= (index!51210 lt!646566) intermediateAfterIndex!19) (= (select (arr!47941 lt!646312) (index!51210 lt!646566)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!830640 () SeekEntryResult!12204)

(assert (=> d!156155 (= lt!646566 e!830640)))

(declare-fun c!136750 () Bool)

(assert (=> d!156155 (= c!136750 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!156155 (= lt!646567 (select (arr!47941 lt!646312) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156155 (validMask!0 mask!2687)))

(assert (=> d!156155 (= (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!646309 lt!646312 mask!2687) lt!646566)))

(declare-fun b!1480882 () Bool)

(assert (=> b!1480882 (= e!830640 e!830641)))

(declare-fun c!136749 () Bool)

(assert (=> b!1480882 (= c!136749 (= lt!646567 lt!646309))))

(declare-fun b!1480883 () Bool)

(assert (=> b!1480883 (= e!830641 (Found!12204 (nextIndex!0 index!646 x!665 mask!2687)))))

(declare-fun b!1480884 () Bool)

(assert (=> b!1480884 (= e!830640 Undefined!12204)))

(declare-fun b!1480885 () Bool)

(assert (=> b!1480885 (= e!830639 (MissingVacant!12204 intermediateAfterIndex!19))))

(assert (= (and d!156155 c!136750) b!1480884))

(assert (= (and d!156155 (not c!136750)) b!1480882))

(assert (= (and b!1480882 c!136749) b!1480883))

(assert (= (and b!1480882 (not c!136749)) b!1480880))

(assert (= (and b!1480880 c!136751) b!1480885))

(assert (= (and b!1480880 (not c!136751)) b!1480881))

(assert (=> b!1480881 m!1366301))

(assert (=> b!1480881 m!1366675))

(assert (=> b!1480881 m!1366675))

(declare-fun m!1366693 () Bool)

(assert (=> b!1480881 m!1366693))

(declare-fun m!1366695 () Bool)

(assert (=> d!156155 m!1366695))

(declare-fun m!1366697 () Bool)

(assert (=> d!156155 m!1366697))

(assert (=> d!156155 m!1366301))

(assert (=> d!156155 m!1366673))

(assert (=> d!156155 m!1366135))

(assert (=> b!1480443 d!156155))

(assert (=> b!1480443 d!156151))

(declare-fun b!1480886 () Bool)

(declare-fun lt!646569 () SeekEntryResult!12204)

(assert (=> b!1480886 (and (bvsge (index!51209 lt!646569) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646569) (size!48492 a!2862)))))

(declare-fun e!830646 () Bool)

(assert (=> b!1480886 (= e!830646 (= (select (arr!47941 a!2862) (index!51209 lt!646569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1480887 () Bool)

(declare-fun e!830642 () Bool)

(assert (=> b!1480887 (= e!830642 (bvsge (x!132790 lt!646569) #b01111111111111111111111111111110))))

(declare-fun d!156157 () Bool)

(assert (=> d!156157 e!830642))

(declare-fun c!136752 () Bool)

(assert (=> d!156157 (= c!136752 (and (is-Intermediate!12204 lt!646569) (undefined!13016 lt!646569)))))

(declare-fun e!830645 () SeekEntryResult!12204)

(assert (=> d!156157 (= lt!646569 e!830645)))

(declare-fun c!136753 () Bool)

(assert (=> d!156157 (= c!136753 (bvsge (bvadd x!665 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!646568 () (_ BitVec 64))

(assert (=> d!156157 (= lt!646568 (select (arr!47941 a!2862) (nextIndex!0 index!646 x!665 mask!2687)))))

(assert (=> d!156157 (validMask!0 mask!2687)))

(assert (=> d!156157 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646569)))

(declare-fun b!1480888 () Bool)

(assert (=> b!1480888 (and (bvsge (index!51209 lt!646569) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646569) (size!48492 a!2862)))))

(declare-fun res!1006429 () Bool)

(assert (=> b!1480888 (= res!1006429 (= (select (arr!47941 a!2862) (index!51209 lt!646569)) (select (arr!47941 a!2862) j!93)))))

(assert (=> b!1480888 (=> res!1006429 e!830646)))

(declare-fun e!830643 () Bool)

(assert (=> b!1480888 (= e!830643 e!830646)))

(declare-fun b!1480889 () Bool)

(assert (=> b!1480889 (= e!830645 (Intermediate!12204 true (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(declare-fun b!1480890 () Bool)

(declare-fun e!830644 () SeekEntryResult!12204)

(assert (=> b!1480890 (= e!830644 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001) mask!2687) (select (arr!47941 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1480891 () Bool)

(assert (=> b!1480891 (= e!830645 e!830644)))

(declare-fun c!136754 () Bool)

(assert (=> b!1480891 (= c!136754 (or (= lt!646568 (select (arr!47941 a!2862) j!93)) (= (bvadd lt!646568 lt!646568) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1480892 () Bool)

(assert (=> b!1480892 (= e!830642 e!830643)))

(declare-fun res!1006431 () Bool)

(assert (=> b!1480892 (= res!1006431 (and (is-Intermediate!12204 lt!646569) (not (undefined!13016 lt!646569)) (bvslt (x!132790 lt!646569) #b01111111111111111111111111111110) (bvsge (x!132790 lt!646569) #b00000000000000000000000000000000) (bvsge (x!132790 lt!646569) (bvadd x!665 #b00000000000000000000000000000001))))))

(assert (=> b!1480892 (=> (not res!1006431) (not e!830643))))

(declare-fun b!1480893 () Bool)

(assert (=> b!1480893 (and (bvsge (index!51209 lt!646569) #b00000000000000000000000000000000) (bvslt (index!51209 lt!646569) (size!48492 a!2862)))))

(declare-fun res!1006430 () Bool)

(assert (=> b!1480893 (= res!1006430 (= (select (arr!47941 a!2862) (index!51209 lt!646569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480893 (=> res!1006430 e!830646)))

(declare-fun b!1480894 () Bool)

(assert (=> b!1480894 (= e!830644 (Intermediate!12204 false (nextIndex!0 index!646 x!665 mask!2687) (bvadd x!665 #b00000000000000000000000000000001)))))

(assert (= (and d!156157 c!136753) b!1480889))

(assert (= (and d!156157 (not c!136753)) b!1480891))

(assert (= (and b!1480891 c!136754) b!1480894))

(assert (= (and b!1480891 (not c!136754)) b!1480890))

(assert (= (and d!156157 c!136752) b!1480887))

(assert (= (and d!156157 (not c!136752)) b!1480892))

(assert (= (and b!1480892 res!1006431) b!1480888))

(assert (= (and b!1480888 (not res!1006429)) b!1480893))

(assert (= (and b!1480893 (not res!1006430)) b!1480886))

(declare-fun m!1366699 () Bool)

(assert (=> b!1480888 m!1366699))

(assert (=> b!1480886 m!1366699))

(assert (=> d!156157 m!1366301))

(declare-fun m!1366701 () Bool)

(assert (=> d!156157 m!1366701))

(assert (=> d!156157 m!1366135))

(assert (=> b!1480893 m!1366699))

(assert (=> b!1480890 m!1366301))

(assert (=> b!1480890 m!1366675))

(assert (=> b!1480890 m!1366675))

(assert (=> b!1480890 m!1366105))

(declare-fun m!1366703 () Bool)

(assert (=> b!1480890 m!1366703))

(assert (=> b!1480685 d!156157))

(assert (=> b!1480685 d!156151))

(declare-fun b!1480895 () Bool)

(declare-fun c!136757 () Bool)

(declare-fun lt!646571 () (_ BitVec 64))

(assert (=> b!1480895 (= c!136757 (= lt!646571 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!830649 () SeekEntryResult!12204)

(declare-fun e!830647 () SeekEntryResult!12204)

(assert (=> b!1480895 (= e!830649 e!830647)))

(declare-fun b!1480896 () Bool)

(assert (=> b!1480896 (= e!830647 (seekKeyOrZeroReturnVacant!0 (bvadd (x!132790 lt!646465) #b00000000000000000000000000000001) (nextIndex!0 (index!51209 lt!646465) (x!132790 lt!646465) mask!2687) (index!51209 lt!646465) (select (arr!47941 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!156159 () Bool)

(declare-fun lt!646570 () SeekEntryResult!12204)

(assert (=> d!156159 (and (or (is-Undefined!12204 lt!646570) (not (is-Found!12204 lt!646570)) (and (bvsge (index!51208 lt!646570) #b00000000000000000000000000000000) (bvslt (index!51208 lt!646570) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646570) (is-Found!12204 lt!646570) (not (is-MissingVacant!12204 lt!646570)) (not (= (index!51210 lt!646570) (index!51209 lt!646465))) (and (bvsge (index!51210 lt!646570) #b00000000000000000000000000000000) (bvslt (index!51210 lt!646570) (size!48492 a!2862)))) (or (is-Undefined!12204 lt!646570) (ite (is-Found!12204 lt!646570) (= (select (arr!47941 a!2862) (index!51208 lt!646570)) (select (arr!47941 a!2862) j!93)) (and (is-MissingVacant!12204 lt!646570) (= (index!51210 lt!646570) (index!51209 lt!646465)) (= (select (arr!47941 a!2862) (index!51210 lt!646570)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!830648 () SeekEntryResult!12204)

(assert (=> d!156159 (= lt!646570 e!830648)))

(declare-fun c!136756 () Bool)

(assert (=> d!156159 (= c!136756 (bvsge (x!132790 lt!646465) #b01111111111111111111111111111110))))

(assert (=> d!156159 (= lt!646571 (select (arr!47941 a!2862) (index!51209 lt!646465)))))

(assert (=> d!156159 (validMask!0 mask!2687)))

(assert (=> d!156159 (= (seekKeyOrZeroReturnVacant!0 (x!132790 lt!646465) (index!51209 lt!646465) (index!51209 lt!646465) (select (arr!47941 a!2862) j!93) a!2862 mask!2687) lt!646570)))

(declare-fun b!1480897 () Bool)

(assert (=> b!1480897 (= e!830648 e!830649)))

(declare-fun c!136755 () Bool)

(assert (=> b!1480897 (= c!136755 (= lt!646571 (select (arr!47941 a!2862) j!93)))))

(declare-fun b!1480898 () Bool)

(assert (=> b!1480898 (= e!830649 (Found!12204 (index!51209 lt!646465)))))

(declare-fun b!1480899 () Bool)

(assert (=> b!1480899 (= e!830648 Undefined!12204)))

(declare-fun b!1480900 () Bool)

(assert (=> b!1480900 (= e!830647 (MissingVacant!12204 (index!51209 lt!646465)))))

(assert (= (and d!156159 c!136756) b!1480899))

(assert (= (and d!156159 (not c!136756)) b!1480897))

(assert (= (and b!1480897 c!136755) b!1480898))

(assert (= (and b!1480897 (not c!136755)) b!1480895))

(assert (= (and b!1480895 c!136757) b!1480900))

(assert (= (and b!1480895 (not c!136757)) b!1480896))

(declare-fun m!1366705 () Bool)

(assert (=> b!1480896 m!1366705))

(assert (=> b!1480896 m!1366705))

(assert (=> b!1480896 m!1366105))

(declare-fun m!1366707 () Bool)

(assert (=> b!1480896 m!1366707))

(declare-fun m!1366709 () Bool)

(assert (=> d!156159 m!1366709))

(declare-fun m!1366711 () Bool)

(assert (=> d!156159 m!1366711))

(assert (=> d!156159 m!1366413))

(assert (=> d!156159 m!1366135))

(assert (=> b!1480634 d!156159))

(push 1)

(assert (not b!1480819))

(assert (not d!156145))

(assert (not d!156157))

(assert (not d!156119))

(assert (not b!1480824))

(assert (not d!156127))

(assert (not d!156159))

(assert (not b!1480846))

(assert (not b!1480896))

(assert (not d!156155))

(assert (not b!1480879))

(assert (not b!1480830))

(assert (not b!1480878))

(assert (not bm!67844))

(assert (not bm!67843))

(assert (not b!1480851))

(assert (not b!1480864))

(assert (not d!156139))

(assert (not b!1480871))

(assert (not b!1480849))

(assert (not d!156133))

(assert (not d!156125))

(assert (not d!156131))

(assert (not bm!67845))

(assert (not d!156143))

(assert (not b!1480866))

(assert (not b!1480862))

(assert (not b!1480881))

(assert (not b!1480861))

(assert (not d!156137))

(assert (not b!1480847))

(assert (not d!156151))

(assert (not d!156123))

(assert (not d!156149))

(assert (not b!1480839))

(assert (not b!1480890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

