; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58996 () Bool)

(assert start!58996)

(declare-fun b!650278 () Bool)

(declare-fun res!421620 () Bool)

(declare-fun e!373073 () Bool)

(assert (=> b!650278 (=> (not res!421620) (not e!373073))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38533 0))(
  ( (array!38534 (arr!18467 (Array (_ BitVec 32) (_ BitVec 64))) (size!18831 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38533)

(assert (=> b!650278 (= res!421620 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18467 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650279 () Bool)

(declare-datatypes ((Unit!22156 0))(
  ( (Unit!22157) )
))
(declare-fun e!373081 () Unit!22156)

(declare-fun Unit!22158 () Unit!22156)

(assert (=> b!650279 (= e!373081 Unit!22158)))

(declare-fun b!650280 () Bool)

(declare-fun e!373074 () Bool)

(assert (=> b!650280 (= e!373073 e!373074)))

(declare-fun res!421631 () Bool)

(assert (=> b!650280 (=> (not res!421631) (not e!373074))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!650280 (= res!421631 (= (select (store (arr!18467 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!302187 () array!38533)

(assert (=> b!650280 (= lt!302187 (array!38534 (store (arr!18467 a!2986) i!1108 k!1786) (size!18831 a!2986)))))

(declare-fun b!650281 () Bool)

(declare-fun e!373075 () Unit!22156)

(declare-fun Unit!22159 () Unit!22156)

(assert (=> b!650281 (= e!373075 Unit!22159)))

(declare-fun b!650282 () Bool)

(declare-fun Unit!22160 () Unit!22156)

(assert (=> b!650282 (= e!373075 Unit!22160)))

(assert (=> b!650282 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!650283 () Bool)

(declare-fun e!373078 () Bool)

(declare-fun arrayContainsKey!0 (array!38533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650283 (= e!373078 (arrayContainsKey!0 lt!302187 (select (arr!18467 a!2986) j!136) index!984))))

(declare-fun b!650284 () Bool)

(declare-fun e!373083 () Bool)

(declare-fun e!373087 () Bool)

(assert (=> b!650284 (= e!373083 e!373087)))

(declare-fun res!421619 () Bool)

(assert (=> b!650284 (=> res!421619 e!373087)))

(declare-fun lt!302190 () (_ BitVec 64))

(declare-fun lt!302179 () (_ BitVec 64))

(assert (=> b!650284 (= res!421619 (or (not (= (select (arr!18467 a!2986) j!136) lt!302190)) (not (= (select (arr!18467 a!2986) j!136) lt!302179))))))

(declare-fun e!373077 () Bool)

(assert (=> b!650284 e!373077))

(declare-fun res!421624 () Bool)

(assert (=> b!650284 (=> (not res!421624) (not e!373077))))

(assert (=> b!650284 (= res!421624 (= lt!302179 (select (arr!18467 a!2986) j!136)))))

(assert (=> b!650284 (= lt!302179 (select (store (arr!18467 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650285 () Bool)

(declare-fun e!373076 () Bool)

(assert (=> b!650285 (= e!373087 e!373076)))

(declare-fun res!421633 () Bool)

(assert (=> b!650285 (=> res!421633 e!373076)))

(assert (=> b!650285 (= res!421633 (bvsge index!984 j!136))))

(declare-fun lt!302178 () Unit!22156)

(assert (=> b!650285 (= lt!302178 e!373081)))

(declare-fun c!74699 () Bool)

(assert (=> b!650285 (= c!74699 (bvslt j!136 index!984))))

(declare-fun b!650286 () Bool)

(assert (=> b!650286 (= e!373076 true)))

(declare-datatypes ((List!12561 0))(
  ( (Nil!12558) (Cons!12557 (h!13602 (_ BitVec 64)) (t!18797 List!12561)) )
))
(declare-fun arrayNoDuplicates!0 (array!38533 (_ BitVec 32) List!12561) Bool)

(assert (=> b!650286 (arrayNoDuplicates!0 lt!302187 #b00000000000000000000000000000000 Nil!12558)))

(declare-fun lt!302177 () Unit!22156)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38533 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12561) Unit!22156)

(assert (=> b!650286 (= lt!302177 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12558))))

(assert (=> b!650286 (arrayContainsKey!0 lt!302187 (select (arr!18467 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302189 () Unit!22156)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38533 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22156)

(assert (=> b!650286 (= lt!302189 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302187 (select (arr!18467 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!373079 () Bool)

(assert (=> b!650286 e!373079))

(declare-fun res!421626 () Bool)

(assert (=> b!650286 (=> (not res!421626) (not e!373079))))

(assert (=> b!650286 (= res!421626 (arrayContainsKey!0 lt!302187 (select (arr!18467 a!2986) j!136) j!136))))

(declare-fun b!650287 () Bool)

(declare-fun res!421627 () Bool)

(declare-fun e!373085 () Bool)

(assert (=> b!650287 (=> (not res!421627) (not e!373085))))

(assert (=> b!650287 (= res!421627 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650288 () Bool)

(declare-fun e!373084 () Bool)

(assert (=> b!650288 (= e!373077 e!373084)))

(declare-fun res!421623 () Bool)

(assert (=> b!650288 (=> res!421623 e!373084)))

(assert (=> b!650288 (= res!421623 (or (not (= (select (arr!18467 a!2986) j!136) lt!302190)) (not (= (select (arr!18467 a!2986) j!136) lt!302179)) (bvsge j!136 index!984)))))

(declare-fun res!421634 () Bool)

(assert (=> start!58996 (=> (not res!421634) (not e!373085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58996 (= res!421634 (validMask!0 mask!3053))))

(assert (=> start!58996 e!373085))

(assert (=> start!58996 true))

(declare-fun array_inv!14241 (array!38533) Bool)

(assert (=> start!58996 (array_inv!14241 a!2986)))

(declare-fun b!650289 () Bool)

(declare-fun e!373082 () Bool)

(assert (=> b!650289 (= e!373082 (not e!373083))))

(declare-fun res!421629 () Bool)

(assert (=> b!650289 (=> res!421629 e!373083)))

(declare-datatypes ((SeekEntryResult!6914 0))(
  ( (MissingZero!6914 (index!30005 (_ BitVec 32))) (Found!6914 (index!30006 (_ BitVec 32))) (Intermediate!6914 (undefined!7726 Bool) (index!30007 (_ BitVec 32)) (x!58817 (_ BitVec 32))) (Undefined!6914) (MissingVacant!6914 (index!30008 (_ BitVec 32))) )
))
(declare-fun lt!302188 () SeekEntryResult!6914)

(assert (=> b!650289 (= res!421629 (not (= lt!302188 (Found!6914 index!984))))))

(declare-fun lt!302181 () Unit!22156)

(assert (=> b!650289 (= lt!302181 e!373075)))

(declare-fun c!74698 () Bool)

(assert (=> b!650289 (= c!74698 (= lt!302188 Undefined!6914))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38533 (_ BitVec 32)) SeekEntryResult!6914)

(assert (=> b!650289 (= lt!302188 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302190 lt!302187 mask!3053))))

(declare-fun e!373086 () Bool)

(assert (=> b!650289 e!373086))

(declare-fun res!421616 () Bool)

(assert (=> b!650289 (=> (not res!421616) (not e!373086))))

(declare-fun lt!302191 () SeekEntryResult!6914)

(declare-fun lt!302180 () (_ BitVec 32))

(assert (=> b!650289 (= res!421616 (= lt!302191 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302180 vacantSpotIndex!68 lt!302190 lt!302187 mask!3053)))))

(assert (=> b!650289 (= lt!302191 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302180 vacantSpotIndex!68 (select (arr!18467 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650289 (= lt!302190 (select (store (arr!18467 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302193 () Unit!22156)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38533 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22156)

(assert (=> b!650289 (= lt!302193 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302180 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650289 (= lt!302180 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650290 () Bool)

(declare-fun res!421632 () Bool)

(assert (=> b!650290 (=> (not res!421632) (not e!373085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650290 (= res!421632 (validKeyInArray!0 (select (arr!18467 a!2986) j!136)))))

(declare-fun b!650291 () Bool)

(declare-fun lt!302182 () SeekEntryResult!6914)

(assert (=> b!650291 (= e!373086 (= lt!302182 lt!302191))))

(declare-fun b!650292 () Bool)

(declare-fun res!421630 () Bool)

(assert (=> b!650292 (=> (not res!421630) (not e!373073))))

(assert (=> b!650292 (= res!421630 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12558))))

(declare-fun b!650293 () Bool)

(declare-fun res!421617 () Bool)

(assert (=> b!650293 (=> (not res!421617) (not e!373073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38533 (_ BitVec 32)) Bool)

(assert (=> b!650293 (= res!421617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650294 () Bool)

(assert (=> b!650294 (= e!373084 e!373078)))

(declare-fun res!421628 () Bool)

(assert (=> b!650294 (=> (not res!421628) (not e!373078))))

(assert (=> b!650294 (= res!421628 (arrayContainsKey!0 lt!302187 (select (arr!18467 a!2986) j!136) j!136))))

(declare-fun b!650295 () Bool)

(declare-fun res!421621 () Bool)

(assert (=> b!650295 (=> (not res!421621) (not e!373085))))

(assert (=> b!650295 (= res!421621 (validKeyInArray!0 k!1786))))

(declare-fun b!650296 () Bool)

(declare-fun Unit!22161 () Unit!22156)

(assert (=> b!650296 (= e!373081 Unit!22161)))

(declare-fun lt!302186 () Unit!22156)

(assert (=> b!650296 (= lt!302186 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302187 (select (arr!18467 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650296 (arrayContainsKey!0 lt!302187 (select (arr!18467 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302192 () Unit!22156)

(assert (=> b!650296 (= lt!302192 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12558))))

(assert (=> b!650296 (arrayNoDuplicates!0 lt!302187 #b00000000000000000000000000000000 Nil!12558)))

(declare-fun lt!302184 () Unit!22156)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38533 (_ BitVec 32) (_ BitVec 32)) Unit!22156)

(assert (=> b!650296 (= lt!302184 (lemmaNoDuplicateFromThenFromBigger!0 lt!302187 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650296 (arrayNoDuplicates!0 lt!302187 j!136 Nil!12558)))

(declare-fun lt!302185 () Unit!22156)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38533 (_ BitVec 64) (_ BitVec 32) List!12561) Unit!22156)

(assert (=> b!650296 (= lt!302185 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302187 (select (arr!18467 a!2986) j!136) j!136 Nil!12558))))

(assert (=> b!650296 false))

(declare-fun b!650297 () Bool)

(declare-fun res!421622 () Bool)

(assert (=> b!650297 (=> (not res!421622) (not e!373085))))

(assert (=> b!650297 (= res!421622 (and (= (size!18831 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18831 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18831 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650298 () Bool)

(assert (=> b!650298 (= e!373085 e!373073)))

(declare-fun res!421618 () Bool)

(assert (=> b!650298 (=> (not res!421618) (not e!373073))))

(declare-fun lt!302183 () SeekEntryResult!6914)

(assert (=> b!650298 (= res!421618 (or (= lt!302183 (MissingZero!6914 i!1108)) (= lt!302183 (MissingVacant!6914 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38533 (_ BitVec 32)) SeekEntryResult!6914)

(assert (=> b!650298 (= lt!302183 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650299 () Bool)

(assert (=> b!650299 (= e!373074 e!373082)))

(declare-fun res!421625 () Bool)

(assert (=> b!650299 (=> (not res!421625) (not e!373082))))

(assert (=> b!650299 (= res!421625 (and (= lt!302182 (Found!6914 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18467 a!2986) index!984) (select (arr!18467 a!2986) j!136))) (not (= (select (arr!18467 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650299 (= lt!302182 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18467 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650300 () Bool)

(assert (=> b!650300 (= e!373079 (arrayContainsKey!0 lt!302187 (select (arr!18467 a!2986) j!136) index!984))))

(assert (= (and start!58996 res!421634) b!650297))

(assert (= (and b!650297 res!421622) b!650290))

(assert (= (and b!650290 res!421632) b!650295))

(assert (= (and b!650295 res!421621) b!650287))

(assert (= (and b!650287 res!421627) b!650298))

(assert (= (and b!650298 res!421618) b!650293))

(assert (= (and b!650293 res!421617) b!650292))

(assert (= (and b!650292 res!421630) b!650278))

(assert (= (and b!650278 res!421620) b!650280))

(assert (= (and b!650280 res!421631) b!650299))

(assert (= (and b!650299 res!421625) b!650289))

(assert (= (and b!650289 res!421616) b!650291))

(assert (= (and b!650289 c!74698) b!650282))

(assert (= (and b!650289 (not c!74698)) b!650281))

(assert (= (and b!650289 (not res!421629)) b!650284))

(assert (= (and b!650284 res!421624) b!650288))

(assert (= (and b!650288 (not res!421623)) b!650294))

(assert (= (and b!650294 res!421628) b!650283))

(assert (= (and b!650284 (not res!421619)) b!650285))

(assert (= (and b!650285 c!74699) b!650296))

(assert (= (and b!650285 (not c!74699)) b!650279))

(assert (= (and b!650285 (not res!421633)) b!650286))

(assert (= (and b!650286 res!421626) b!650300))

(declare-fun m!623549 () Bool)

(assert (=> b!650283 m!623549))

(assert (=> b!650283 m!623549))

(declare-fun m!623551 () Bool)

(assert (=> b!650283 m!623551))

(assert (=> b!650290 m!623549))

(assert (=> b!650290 m!623549))

(declare-fun m!623553 () Bool)

(assert (=> b!650290 m!623553))

(declare-fun m!623555 () Bool)

(assert (=> b!650280 m!623555))

(declare-fun m!623557 () Bool)

(assert (=> b!650280 m!623557))

(declare-fun m!623559 () Bool)

(assert (=> b!650295 m!623559))

(declare-fun m!623561 () Bool)

(assert (=> b!650299 m!623561))

(assert (=> b!650299 m!623549))

(assert (=> b!650299 m!623549))

(declare-fun m!623563 () Bool)

(assert (=> b!650299 m!623563))

(declare-fun m!623565 () Bool)

(assert (=> b!650298 m!623565))

(declare-fun m!623567 () Bool)

(assert (=> start!58996 m!623567))

(declare-fun m!623569 () Bool)

(assert (=> start!58996 m!623569))

(assert (=> b!650294 m!623549))

(assert (=> b!650294 m!623549))

(declare-fun m!623571 () Bool)

(assert (=> b!650294 m!623571))

(declare-fun m!623573 () Bool)

(assert (=> b!650292 m!623573))

(assert (=> b!650286 m!623549))

(declare-fun m!623575 () Bool)

(assert (=> b!650286 m!623575))

(assert (=> b!650286 m!623549))

(assert (=> b!650286 m!623571))

(assert (=> b!650286 m!623549))

(declare-fun m!623577 () Bool)

(assert (=> b!650286 m!623577))

(declare-fun m!623579 () Bool)

(assert (=> b!650286 m!623579))

(declare-fun m!623581 () Bool)

(assert (=> b!650286 m!623581))

(assert (=> b!650286 m!623549))

(declare-fun m!623583 () Bool)

(assert (=> b!650278 m!623583))

(assert (=> b!650296 m!623549))

(declare-fun m!623585 () Bool)

(assert (=> b!650296 m!623585))

(assert (=> b!650296 m!623549))

(declare-fun m!623587 () Bool)

(assert (=> b!650296 m!623587))

(declare-fun m!623589 () Bool)

(assert (=> b!650296 m!623589))

(assert (=> b!650296 m!623549))

(declare-fun m!623591 () Bool)

(assert (=> b!650296 m!623591))

(declare-fun m!623593 () Bool)

(assert (=> b!650296 m!623593))

(assert (=> b!650296 m!623579))

(assert (=> b!650296 m!623581))

(assert (=> b!650296 m!623549))

(declare-fun m!623595 () Bool)

(assert (=> b!650293 m!623595))

(declare-fun m!623597 () Bool)

(assert (=> b!650289 m!623597))

(declare-fun m!623599 () Bool)

(assert (=> b!650289 m!623599))

(declare-fun m!623601 () Bool)

(assert (=> b!650289 m!623601))

(assert (=> b!650289 m!623549))

(assert (=> b!650289 m!623555))

(assert (=> b!650289 m!623549))

(declare-fun m!623603 () Bool)

(assert (=> b!650289 m!623603))

(declare-fun m!623605 () Bool)

(assert (=> b!650289 m!623605))

(declare-fun m!623607 () Bool)

(assert (=> b!650289 m!623607))

(assert (=> b!650284 m!623549))

(assert (=> b!650284 m!623555))

(declare-fun m!623609 () Bool)

(assert (=> b!650284 m!623609))

(assert (=> b!650300 m!623549))

(assert (=> b!650300 m!623549))

(assert (=> b!650300 m!623551))

(declare-fun m!623611 () Bool)

(assert (=> b!650287 m!623611))

(assert (=> b!650288 m!623549))

(push 1)

