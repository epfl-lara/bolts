; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59128 () Bool)

(assert start!59128)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!374394 () Bool)

(declare-datatypes ((array!38584 0))(
  ( (array!38585 (arr!18491 (Array (_ BitVec 32) (_ BitVec 64))) (size!18855 (_ BitVec 32))) )
))
(declare-fun lt!303611 () array!38584)

(declare-fun b!652282 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38584)

(declare-fun arrayContainsKey!0 (array!38584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652282 (= e!374394 (arrayContainsKey!0 lt!303611 (select (arr!18491 a!2986) j!136) index!984))))

(declare-fun b!652283 () Bool)

(declare-fun e!374403 () Bool)

(assert (=> b!652283 (= e!374403 (or (bvsge (size!18855 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18855 a!2986)) (bvslt index!984 (size!18855 a!2986))))))

(declare-datatypes ((List!12585 0))(
  ( (Nil!12582) (Cons!12581 (h!13626 (_ BitVec 64)) (t!18821 List!12585)) )
))
(declare-fun arrayNoDuplicates!0 (array!38584 (_ BitVec 32) List!12585) Bool)

(assert (=> b!652283 (arrayNoDuplicates!0 lt!303611 index!984 Nil!12582)))

(declare-datatypes ((Unit!22300 0))(
  ( (Unit!22301) )
))
(declare-fun lt!303601 () Unit!22300)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38584 (_ BitVec 32) (_ BitVec 32)) Unit!22300)

(assert (=> b!652283 (= lt!303601 (lemmaNoDuplicateFromThenFromBigger!0 lt!303611 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652283 (arrayNoDuplicates!0 lt!303611 #b00000000000000000000000000000000 Nil!12582)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!303612 () Unit!22300)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38584 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12585) Unit!22300)

(assert (=> b!652283 (= lt!303612 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12582))))

(assert (=> b!652283 (arrayContainsKey!0 lt!303611 (select (arr!18491 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303608 () Unit!22300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38584 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22300)

(assert (=> b!652283 (= lt!303608 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303611 (select (arr!18491 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!652283 e!374394))

(declare-fun res!423118 () Bool)

(assert (=> b!652283 (=> (not res!423118) (not e!374394))))

(assert (=> b!652283 (= res!423118 (arrayContainsKey!0 lt!303611 (select (arr!18491 a!2986) j!136) j!136))))

(declare-fun b!652284 () Bool)

(declare-fun res!423128 () Bool)

(declare-fun e!374400 () Bool)

(assert (=> b!652284 (=> (not res!423128) (not e!374400))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!652284 (= res!423128 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18491 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652285 () Bool)

(declare-fun res!423122 () Bool)

(declare-fun e!374407 () Bool)

(assert (=> b!652285 (=> (not res!423122) (not e!374407))))

(assert (=> b!652285 (= res!423122 (and (= (size!18855 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18855 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18855 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652286 () Bool)

(declare-fun e!374406 () Bool)

(declare-fun e!374396 () Bool)

(assert (=> b!652286 (= e!374406 e!374396)))

(declare-fun res!423119 () Bool)

(assert (=> b!652286 (=> (not res!423119) (not e!374396))))

(declare-datatypes ((SeekEntryResult!6938 0))(
  ( (MissingZero!6938 (index!30104 (_ BitVec 32))) (Found!6938 (index!30105 (_ BitVec 32))) (Intermediate!6938 (undefined!7750 Bool) (index!30106 (_ BitVec 32)) (x!58914 (_ BitVec 32))) (Undefined!6938) (MissingVacant!6938 (index!30107 (_ BitVec 32))) )
))
(declare-fun lt!303599 () SeekEntryResult!6938)

(assert (=> b!652286 (= res!423119 (and (= lt!303599 (Found!6938 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18491 a!2986) index!984) (select (arr!18491 a!2986) j!136))) (not (= (select (arr!18491 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38584 (_ BitVec 32)) SeekEntryResult!6938)

(assert (=> b!652286 (= lt!303599 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18491 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652287 () Bool)

(assert (=> b!652287 (= e!374407 e!374400)))

(declare-fun res!423117 () Bool)

(assert (=> b!652287 (=> (not res!423117) (not e!374400))))

(declare-fun lt!303600 () SeekEntryResult!6938)

(assert (=> b!652287 (= res!423117 (or (= lt!303600 (MissingZero!6938 i!1108)) (= lt!303600 (MissingVacant!6938 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38584 (_ BitVec 32)) SeekEntryResult!6938)

(assert (=> b!652287 (= lt!303600 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!423130 () Bool)

(assert (=> start!59128 (=> (not res!423130) (not e!374407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59128 (= res!423130 (validMask!0 mask!3053))))

(assert (=> start!59128 e!374407))

(assert (=> start!59128 true))

(declare-fun array_inv!14265 (array!38584) Bool)

(assert (=> start!59128 (array_inv!14265 a!2986)))

(declare-fun b!652288 () Bool)

(declare-fun res!423134 () Bool)

(assert (=> b!652288 (=> (not res!423134) (not e!374400))))

(assert (=> b!652288 (= res!423134 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12582))))

(declare-fun b!652289 () Bool)

(declare-fun res!423127 () Bool)

(assert (=> b!652289 (=> (not res!423127) (not e!374407))))

(assert (=> b!652289 (= res!423127 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!652290 () Bool)

(declare-fun res!423131 () Bool)

(assert (=> b!652290 (=> (not res!423131) (not e!374400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38584 (_ BitVec 32)) Bool)

(assert (=> b!652290 (= res!423131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652291 () Bool)

(declare-fun e!374401 () Bool)

(assert (=> b!652291 (= e!374401 e!374403)))

(declare-fun res!423124 () Bool)

(assert (=> b!652291 (=> res!423124 e!374403)))

(assert (=> b!652291 (= res!423124 (bvsge index!984 j!136))))

(declare-fun lt!303602 () Unit!22300)

(declare-fun e!374398 () Unit!22300)

(assert (=> b!652291 (= lt!303602 e!374398)))

(declare-fun c!74951 () Bool)

(assert (=> b!652291 (= c!74951 (bvslt j!136 index!984))))

(declare-fun b!652292 () Bool)

(declare-fun e!374404 () Bool)

(declare-fun e!374395 () Bool)

(assert (=> b!652292 (= e!374404 e!374395)))

(declare-fun res!423125 () Bool)

(assert (=> b!652292 (=> (not res!423125) (not e!374395))))

(assert (=> b!652292 (= res!423125 (arrayContainsKey!0 lt!303611 (select (arr!18491 a!2986) j!136) j!136))))

(declare-fun b!652293 () Bool)

(declare-fun e!374399 () Bool)

(assert (=> b!652293 (= e!374399 e!374404)))

(declare-fun res!423132 () Bool)

(assert (=> b!652293 (=> res!423132 e!374404)))

(declare-fun lt!303596 () (_ BitVec 64))

(declare-fun lt!303606 () (_ BitVec 64))

(assert (=> b!652293 (= res!423132 (or (not (= (select (arr!18491 a!2986) j!136) lt!303596)) (not (= (select (arr!18491 a!2986) j!136) lt!303606)) (bvsge j!136 index!984)))))

(declare-fun b!652294 () Bool)

(declare-fun res!423133 () Bool)

(assert (=> b!652294 (=> (not res!423133) (not e!374407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652294 (= res!423133 (validKeyInArray!0 (select (arr!18491 a!2986) j!136)))))

(declare-fun b!652295 () Bool)

(assert (=> b!652295 (= e!374400 e!374406)))

(declare-fun res!423116 () Bool)

(assert (=> b!652295 (=> (not res!423116) (not e!374406))))

(assert (=> b!652295 (= res!423116 (= (select (store (arr!18491 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652295 (= lt!303611 (array!38585 (store (arr!18491 a!2986) i!1108 k!1786) (size!18855 a!2986)))))

(declare-fun b!652296 () Bool)

(declare-fun e!374402 () Unit!22300)

(declare-fun Unit!22302 () Unit!22300)

(assert (=> b!652296 (= e!374402 Unit!22302)))

(assert (=> b!652296 false))

(declare-fun b!652297 () Bool)

(assert (=> b!652297 (= e!374395 (arrayContainsKey!0 lt!303611 (select (arr!18491 a!2986) j!136) index!984))))

(declare-fun b!652298 () Bool)

(declare-fun e!374405 () Bool)

(declare-fun lt!303610 () SeekEntryResult!6938)

(assert (=> b!652298 (= e!374405 (= lt!303599 lt!303610))))

(declare-fun b!652299 () Bool)

(declare-fun Unit!22303 () Unit!22300)

(assert (=> b!652299 (= e!374398 Unit!22303)))

(declare-fun lt!303595 () Unit!22300)

(assert (=> b!652299 (= lt!303595 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303611 (select (arr!18491 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652299 (arrayContainsKey!0 lt!303611 (select (arr!18491 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303597 () Unit!22300)

(assert (=> b!652299 (= lt!303597 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12582))))

(assert (=> b!652299 (arrayNoDuplicates!0 lt!303611 #b00000000000000000000000000000000 Nil!12582)))

(declare-fun lt!303604 () Unit!22300)

(assert (=> b!652299 (= lt!303604 (lemmaNoDuplicateFromThenFromBigger!0 lt!303611 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652299 (arrayNoDuplicates!0 lt!303611 j!136 Nil!12582)))

(declare-fun lt!303607 () Unit!22300)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38584 (_ BitVec 64) (_ BitVec 32) List!12585) Unit!22300)

(assert (=> b!652299 (= lt!303607 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303611 (select (arr!18491 a!2986) j!136) j!136 Nil!12582))))

(assert (=> b!652299 false))

(declare-fun b!652300 () Bool)

(declare-fun e!374397 () Bool)

(assert (=> b!652300 (= e!374396 (not e!374397))))

(declare-fun res!423129 () Bool)

(assert (=> b!652300 (=> res!423129 e!374397)))

(declare-fun lt!303603 () SeekEntryResult!6938)

(assert (=> b!652300 (= res!423129 (not (= lt!303603 (Found!6938 index!984))))))

(declare-fun lt!303598 () Unit!22300)

(assert (=> b!652300 (= lt!303598 e!374402)))

(declare-fun c!74950 () Bool)

(assert (=> b!652300 (= c!74950 (= lt!303603 Undefined!6938))))

(assert (=> b!652300 (= lt!303603 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303596 lt!303611 mask!3053))))

(assert (=> b!652300 e!374405))

(declare-fun res!423120 () Bool)

(assert (=> b!652300 (=> (not res!423120) (not e!374405))))

(declare-fun lt!303609 () (_ BitVec 32))

(assert (=> b!652300 (= res!423120 (= lt!303610 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303609 vacantSpotIndex!68 lt!303596 lt!303611 mask!3053)))))

(assert (=> b!652300 (= lt!303610 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303609 vacantSpotIndex!68 (select (arr!18491 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652300 (= lt!303596 (select (store (arr!18491 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303605 () Unit!22300)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38584 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22300)

(assert (=> b!652300 (= lt!303605 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303609 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652300 (= lt!303609 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652301 () Bool)

(declare-fun Unit!22304 () Unit!22300)

(assert (=> b!652301 (= e!374402 Unit!22304)))

(declare-fun b!652302 () Bool)

(declare-fun Unit!22305 () Unit!22300)

(assert (=> b!652302 (= e!374398 Unit!22305)))

(declare-fun b!652303 () Bool)

(assert (=> b!652303 (= e!374397 e!374401)))

(declare-fun res!423121 () Bool)

(assert (=> b!652303 (=> res!423121 e!374401)))

(assert (=> b!652303 (= res!423121 (or (not (= (select (arr!18491 a!2986) j!136) lt!303596)) (not (= (select (arr!18491 a!2986) j!136) lt!303606))))))

(assert (=> b!652303 e!374399))

(declare-fun res!423126 () Bool)

(assert (=> b!652303 (=> (not res!423126) (not e!374399))))

(assert (=> b!652303 (= res!423126 (= lt!303606 (select (arr!18491 a!2986) j!136)))))

(assert (=> b!652303 (= lt!303606 (select (store (arr!18491 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!652304 () Bool)

(declare-fun res!423123 () Bool)

(assert (=> b!652304 (=> (not res!423123) (not e!374407))))

(assert (=> b!652304 (= res!423123 (validKeyInArray!0 k!1786))))

(assert (= (and start!59128 res!423130) b!652285))

(assert (= (and b!652285 res!423122) b!652294))

(assert (= (and b!652294 res!423133) b!652304))

(assert (= (and b!652304 res!423123) b!652289))

(assert (= (and b!652289 res!423127) b!652287))

(assert (= (and b!652287 res!423117) b!652290))

(assert (= (and b!652290 res!423131) b!652288))

(assert (= (and b!652288 res!423134) b!652284))

(assert (= (and b!652284 res!423128) b!652295))

(assert (= (and b!652295 res!423116) b!652286))

(assert (= (and b!652286 res!423119) b!652300))

(assert (= (and b!652300 res!423120) b!652298))

(assert (= (and b!652300 c!74950) b!652296))

(assert (= (and b!652300 (not c!74950)) b!652301))

(assert (= (and b!652300 (not res!423129)) b!652303))

(assert (= (and b!652303 res!423126) b!652293))

(assert (= (and b!652293 (not res!423132)) b!652292))

(assert (= (and b!652292 res!423125) b!652297))

(assert (= (and b!652303 (not res!423121)) b!652291))

(assert (= (and b!652291 c!74951) b!652299))

(assert (= (and b!652291 (not c!74951)) b!652302))

(assert (= (and b!652291 (not res!423124)) b!652283))

(assert (= (and b!652283 res!423118) b!652282))

(declare-fun m!625495 () Bool)

(assert (=> b!652295 m!625495))

(declare-fun m!625497 () Bool)

(assert (=> b!652295 m!625497))

(declare-fun m!625499 () Bool)

(assert (=> b!652294 m!625499))

(assert (=> b!652294 m!625499))

(declare-fun m!625501 () Bool)

(assert (=> b!652294 m!625501))

(declare-fun m!625503 () Bool)

(assert (=> b!652300 m!625503))

(assert (=> b!652300 m!625499))

(assert (=> b!652300 m!625495))

(declare-fun m!625505 () Bool)

(assert (=> b!652300 m!625505))

(assert (=> b!652300 m!625499))

(declare-fun m!625507 () Bool)

(assert (=> b!652300 m!625507))

(declare-fun m!625509 () Bool)

(assert (=> b!652300 m!625509))

(declare-fun m!625511 () Bool)

(assert (=> b!652300 m!625511))

(declare-fun m!625513 () Bool)

(assert (=> b!652300 m!625513))

(assert (=> b!652293 m!625499))

(declare-fun m!625515 () Bool)

(assert (=> b!652286 m!625515))

(assert (=> b!652286 m!625499))

(assert (=> b!652286 m!625499))

(declare-fun m!625517 () Bool)

(assert (=> b!652286 m!625517))

(declare-fun m!625519 () Bool)

(assert (=> start!59128 m!625519))

(declare-fun m!625521 () Bool)

(assert (=> start!59128 m!625521))

(assert (=> b!652292 m!625499))

(assert (=> b!652292 m!625499))

(declare-fun m!625523 () Bool)

(assert (=> b!652292 m!625523))

(assert (=> b!652303 m!625499))

(assert (=> b!652303 m!625495))

(declare-fun m!625525 () Bool)

(assert (=> b!652303 m!625525))

(declare-fun m!625527 () Bool)

(assert (=> b!652284 m!625527))

(declare-fun m!625529 () Bool)

(assert (=> b!652289 m!625529))

(assert (=> b!652282 m!625499))

(assert (=> b!652282 m!625499))

(declare-fun m!625531 () Bool)

(assert (=> b!652282 m!625531))

(assert (=> b!652299 m!625499))

(declare-fun m!625533 () Bool)

(assert (=> b!652299 m!625533))

(assert (=> b!652299 m!625499))

(declare-fun m!625535 () Bool)

(assert (=> b!652299 m!625535))

(assert (=> b!652299 m!625499))

(declare-fun m!625537 () Bool)

(assert (=> b!652299 m!625537))

(declare-fun m!625539 () Bool)

(assert (=> b!652299 m!625539))

(assert (=> b!652299 m!625499))

(declare-fun m!625541 () Bool)

(assert (=> b!652299 m!625541))

(declare-fun m!625543 () Bool)

(assert (=> b!652299 m!625543))

(declare-fun m!625545 () Bool)

(assert (=> b!652299 m!625545))

(declare-fun m!625547 () Bool)

(assert (=> b!652283 m!625547))

(assert (=> b!652283 m!625499))

(assert (=> b!652283 m!625499))

(declare-fun m!625549 () Bool)

(assert (=> b!652283 m!625549))

(assert (=> b!652283 m!625499))

(assert (=> b!652283 m!625523))

(assert (=> b!652283 m!625499))

(declare-fun m!625551 () Bool)

(assert (=> b!652283 m!625551))

(declare-fun m!625553 () Bool)

(assert (=> b!652283 m!625553))

(assert (=> b!652283 m!625543))

(assert (=> b!652283 m!625545))

(declare-fun m!625555 () Bool)

(assert (=> b!652290 m!625555))

(assert (=> b!652297 m!625499))

(assert (=> b!652297 m!625499))

(assert (=> b!652297 m!625531))

(declare-fun m!625557 () Bool)

(assert (=> b!652288 m!625557))

(declare-fun m!625559 () Bool)

(assert (=> b!652287 m!625559))

(declare-fun m!625561 () Bool)

(assert (=> b!652304 m!625561))

(push 1)

(assert (not b!652287))

(assert (not b!652299))

(assert (not b!652290))

(assert (not b!652297))

(assert (not b!652283))

(assert (not b!652304))

(assert (not b!652292))

(assert (not b!652282))

(assert (not b!652286))

(assert (not b!652300))

(assert (not start!59128))

(assert (not b!652294))

(assert (not b!652288))

(assert (not b!652289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

