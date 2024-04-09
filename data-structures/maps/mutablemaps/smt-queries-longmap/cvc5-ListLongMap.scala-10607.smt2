; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124822 () Bool)

(assert start!124822)

(declare-fun b!1447372 () Bool)

(declare-fun res!979143 () Bool)

(declare-fun e!815185 () Bool)

(assert (=> b!1447372 (=> (not res!979143) (not e!815185))))

(declare-datatypes ((array!98187 0))(
  ( (array!98188 (arr!47377 (Array (_ BitVec 32) (_ BitVec 64))) (size!47928 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98187)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447372 (= res!979143 (validKeyInArray!0 (select (arr!47377 a!2862) i!1006)))))

(declare-fun b!1447373 () Bool)

(declare-fun e!815183 () Bool)

(declare-fun e!815184 () Bool)

(assert (=> b!1447373 (= e!815183 e!815184)))

(declare-fun res!979132 () Bool)

(assert (=> b!1447373 (=> res!979132 e!815184)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1447373 (= res!979132 (or (and (= (select (arr!47377 a!2862) index!646) (select (store (arr!47377 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47377 a!2862) index!646) (select (arr!47377 a!2862) j!93))) (not (= (select (arr!47377 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447374 () Bool)

(declare-fun res!979131 () Bool)

(assert (=> b!1447374 (=> (not res!979131) (not e!815185))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447374 (= res!979131 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47928 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47928 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47928 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447375 () Bool)

(declare-fun res!979140 () Bool)

(assert (=> b!1447375 (=> (not res!979140) (not e!815185))))

(assert (=> b!1447375 (= res!979140 (validKeyInArray!0 (select (arr!47377 a!2862) j!93)))))

(declare-fun b!1447376 () Bool)

(declare-fun res!979144 () Bool)

(declare-fun e!815181 () Bool)

(assert (=> b!1447376 (=> (not res!979144) (not e!815181))))

(declare-fun e!815186 () Bool)

(assert (=> b!1447376 (= res!979144 e!815186)))

(declare-fun c!133634 () Bool)

(assert (=> b!1447376 (= c!133634 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447377 () Bool)

(declare-fun e!815177 () Bool)

(assert (=> b!1447377 (= e!815177 e!815181)))

(declare-fun res!979136 () Bool)

(assert (=> b!1447377 (=> (not res!979136) (not e!815181))))

(declare-datatypes ((SeekEntryResult!11652 0))(
  ( (MissingZero!11652 (index!48999 (_ BitVec 32))) (Found!11652 (index!49000 (_ BitVec 32))) (Intermediate!11652 (undefined!12464 Bool) (index!49001 (_ BitVec 32)) (x!130680 (_ BitVec 32))) (Undefined!11652) (MissingVacant!11652 (index!49002 (_ BitVec 32))) )
))
(declare-fun lt!635113 () SeekEntryResult!11652)

(assert (=> b!1447377 (= res!979136 (= lt!635113 (Intermediate!11652 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635108 () (_ BitVec 64))

(declare-fun lt!635111 () array!98187)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98187 (_ BitVec 32)) SeekEntryResult!11652)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447377 (= lt!635113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635108 mask!2687) lt!635108 lt!635111 mask!2687))))

(assert (=> b!1447377 (= lt!635108 (select (store (arr!47377 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!979133 () Bool)

(assert (=> start!124822 (=> (not res!979133) (not e!815185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124822 (= res!979133 (validMask!0 mask!2687))))

(assert (=> start!124822 e!815185))

(assert (=> start!124822 true))

(declare-fun array_inv!36322 (array!98187) Bool)

(assert (=> start!124822 (array_inv!36322 a!2862)))

(declare-fun b!1447378 () Bool)

(declare-fun e!815180 () Bool)

(assert (=> b!1447378 (= e!815181 (not e!815180))))

(declare-fun res!979141 () Bool)

(assert (=> b!1447378 (=> res!979141 e!815180)))

(assert (=> b!1447378 (= res!979141 (or (and (= (select (arr!47377 a!2862) index!646) (select (store (arr!47377 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47377 a!2862) index!646) (select (arr!47377 a!2862) j!93))) (not (= (select (arr!47377 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47377 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447378 e!815183))

(declare-fun res!979138 () Bool)

(assert (=> b!1447378 (=> (not res!979138) (not e!815183))))

(declare-fun lt!635109 () SeekEntryResult!11652)

(assert (=> b!1447378 (= res!979138 (and (= lt!635109 (Found!11652 j!93)) (or (= (select (arr!47377 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47377 a!2862) intermediateBeforeIndex!19) (select (arr!47377 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98187 (_ BitVec 32)) SeekEntryResult!11652)

(assert (=> b!1447378 (= lt!635109 (seekEntryOrOpen!0 (select (arr!47377 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98187 (_ BitVec 32)) Bool)

(assert (=> b!1447378 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48748 0))(
  ( (Unit!48749) )
))
(declare-fun lt!635107 () Unit!48748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48748)

(assert (=> b!1447378 (= lt!635107 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447379 () Bool)

(declare-fun e!815178 () Bool)

(assert (=> b!1447379 (= e!815184 e!815178)))

(declare-fun res!979145 () Bool)

(assert (=> b!1447379 (=> (not res!979145) (not e!815178))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98187 (_ BitVec 32)) SeekEntryResult!11652)

(assert (=> b!1447379 (= res!979145 (= lt!635109 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47377 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447380 () Bool)

(declare-fun res!979142 () Bool)

(assert (=> b!1447380 (=> (not res!979142) (not e!815181))))

(assert (=> b!1447380 (= res!979142 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447381 () Bool)

(declare-fun res!979135 () Bool)

(assert (=> b!1447381 (=> (not res!979135) (not e!815185))))

(declare-datatypes ((List!34058 0))(
  ( (Nil!34055) (Cons!34054 (h!35404 (_ BitVec 64)) (t!48759 List!34058)) )
))
(declare-fun arrayNoDuplicates!0 (array!98187 (_ BitVec 32) List!34058) Bool)

(assert (=> b!1447381 (= res!979135 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34055))))

(declare-fun b!1447382 () Bool)

(assert (=> b!1447382 (= e!815186 (= lt!635113 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635108 lt!635111 mask!2687)))))

(declare-fun b!1447383 () Bool)

(assert (=> b!1447383 (= e!815180 true)))

(declare-fun lt!635110 () SeekEntryResult!11652)

(assert (=> b!1447383 (= lt!635110 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47377 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447384 () Bool)

(assert (=> b!1447384 (= e!815186 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635108 lt!635111 mask!2687) (seekEntryOrOpen!0 lt!635108 lt!635111 mask!2687)))))

(declare-fun b!1447385 () Bool)

(declare-fun e!815182 () Bool)

(assert (=> b!1447385 (= e!815182 e!815177)))

(declare-fun res!979146 () Bool)

(assert (=> b!1447385 (=> (not res!979146) (not e!815177))))

(declare-fun lt!635112 () SeekEntryResult!11652)

(assert (=> b!1447385 (= res!979146 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47377 a!2862) j!93) mask!2687) (select (arr!47377 a!2862) j!93) a!2862 mask!2687) lt!635112))))

(assert (=> b!1447385 (= lt!635112 (Intermediate!11652 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447386 () Bool)

(assert (=> b!1447386 (= e!815185 e!815182)))

(declare-fun res!979130 () Bool)

(assert (=> b!1447386 (=> (not res!979130) (not e!815182))))

(assert (=> b!1447386 (= res!979130 (= (select (store (arr!47377 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447386 (= lt!635111 (array!98188 (store (arr!47377 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47928 a!2862)))))

(declare-fun b!1447387 () Bool)

(declare-fun res!979137 () Bool)

(assert (=> b!1447387 (=> (not res!979137) (not e!815185))))

(assert (=> b!1447387 (= res!979137 (and (= (size!47928 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47928 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47928 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447388 () Bool)

(declare-fun res!979139 () Bool)

(assert (=> b!1447388 (=> (not res!979139) (not e!815177))))

(assert (=> b!1447388 (= res!979139 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47377 a!2862) j!93) a!2862 mask!2687) lt!635112))))

(declare-fun b!1447389 () Bool)

(assert (=> b!1447389 (= e!815178 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447390 () Bool)

(declare-fun res!979134 () Bool)

(assert (=> b!1447390 (=> (not res!979134) (not e!815185))))

(assert (=> b!1447390 (= res!979134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124822 res!979133) b!1447387))

(assert (= (and b!1447387 res!979137) b!1447372))

(assert (= (and b!1447372 res!979143) b!1447375))

(assert (= (and b!1447375 res!979140) b!1447390))

(assert (= (and b!1447390 res!979134) b!1447381))

(assert (= (and b!1447381 res!979135) b!1447374))

(assert (= (and b!1447374 res!979131) b!1447386))

(assert (= (and b!1447386 res!979130) b!1447385))

(assert (= (and b!1447385 res!979146) b!1447388))

(assert (= (and b!1447388 res!979139) b!1447377))

(assert (= (and b!1447377 res!979136) b!1447376))

(assert (= (and b!1447376 c!133634) b!1447382))

(assert (= (and b!1447376 (not c!133634)) b!1447384))

(assert (= (and b!1447376 res!979144) b!1447380))

(assert (= (and b!1447380 res!979142) b!1447378))

(assert (= (and b!1447378 res!979138) b!1447373))

(assert (= (and b!1447373 (not res!979132)) b!1447379))

(assert (= (and b!1447379 res!979145) b!1447389))

(assert (= (and b!1447378 (not res!979141)) b!1447383))

(declare-fun m!1336245 () Bool)

(assert (=> b!1447372 m!1336245))

(assert (=> b!1447372 m!1336245))

(declare-fun m!1336247 () Bool)

(assert (=> b!1447372 m!1336247))

(declare-fun m!1336249 () Bool)

(assert (=> b!1447377 m!1336249))

(assert (=> b!1447377 m!1336249))

(declare-fun m!1336251 () Bool)

(assert (=> b!1447377 m!1336251))

(declare-fun m!1336253 () Bool)

(assert (=> b!1447377 m!1336253))

(declare-fun m!1336255 () Bool)

(assert (=> b!1447377 m!1336255))

(assert (=> b!1447386 m!1336253))

(declare-fun m!1336257 () Bool)

(assert (=> b!1447386 m!1336257))

(declare-fun m!1336259 () Bool)

(assert (=> b!1447388 m!1336259))

(assert (=> b!1447388 m!1336259))

(declare-fun m!1336261 () Bool)

(assert (=> b!1447388 m!1336261))

(assert (=> b!1447379 m!1336259))

(assert (=> b!1447379 m!1336259))

(declare-fun m!1336263 () Bool)

(assert (=> b!1447379 m!1336263))

(declare-fun m!1336265 () Bool)

(assert (=> b!1447381 m!1336265))

(declare-fun m!1336267 () Bool)

(assert (=> start!124822 m!1336267))

(declare-fun m!1336269 () Bool)

(assert (=> start!124822 m!1336269))

(declare-fun m!1336271 () Bool)

(assert (=> b!1447378 m!1336271))

(assert (=> b!1447378 m!1336253))

(declare-fun m!1336273 () Bool)

(assert (=> b!1447378 m!1336273))

(declare-fun m!1336275 () Bool)

(assert (=> b!1447378 m!1336275))

(declare-fun m!1336277 () Bool)

(assert (=> b!1447378 m!1336277))

(assert (=> b!1447378 m!1336259))

(declare-fun m!1336279 () Bool)

(assert (=> b!1447378 m!1336279))

(declare-fun m!1336281 () Bool)

(assert (=> b!1447378 m!1336281))

(assert (=> b!1447378 m!1336259))

(declare-fun m!1336283 () Bool)

(assert (=> b!1447390 m!1336283))

(assert (=> b!1447373 m!1336277))

(assert (=> b!1447373 m!1336253))

(assert (=> b!1447373 m!1336275))

(assert (=> b!1447373 m!1336259))

(assert (=> b!1447383 m!1336259))

(assert (=> b!1447383 m!1336259))

(declare-fun m!1336285 () Bool)

(assert (=> b!1447383 m!1336285))

(assert (=> b!1447375 m!1336259))

(assert (=> b!1447375 m!1336259))

(declare-fun m!1336287 () Bool)

(assert (=> b!1447375 m!1336287))

(assert (=> b!1447385 m!1336259))

(assert (=> b!1447385 m!1336259))

(declare-fun m!1336289 () Bool)

(assert (=> b!1447385 m!1336289))

(assert (=> b!1447385 m!1336289))

(assert (=> b!1447385 m!1336259))

(declare-fun m!1336291 () Bool)

(assert (=> b!1447385 m!1336291))

(declare-fun m!1336293 () Bool)

(assert (=> b!1447384 m!1336293))

(declare-fun m!1336295 () Bool)

(assert (=> b!1447384 m!1336295))

(declare-fun m!1336297 () Bool)

(assert (=> b!1447382 m!1336297))

(push 1)

