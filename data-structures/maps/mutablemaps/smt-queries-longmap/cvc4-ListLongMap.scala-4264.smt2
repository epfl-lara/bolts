; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59344 () Bool)

(assert start!59344)

(declare-fun b!654163 () Bool)

(declare-fun res!424399 () Bool)

(declare-fun e!375666 () Bool)

(assert (=> b!654163 (=> (not res!424399) (not e!375666))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38620 0))(
  ( (array!38621 (arr!18506 (Array (_ BitVec 32) (_ BitVec 64))) (size!18870 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38620)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!654163 (= res!424399 (and (= (size!18870 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18870 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18870 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654164 () Bool)

(declare-fun e!375663 () Bool)

(declare-fun e!375660 () Bool)

(assert (=> b!654164 (= e!375663 e!375660)))

(declare-fun res!424400 () Bool)

(assert (=> b!654164 (=> res!424400 e!375660)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!654164 (= res!424400 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22390 0))(
  ( (Unit!22391) )
))
(declare-fun lt!304754 () Unit!22390)

(declare-fun e!375653 () Unit!22390)

(assert (=> b!654164 (= lt!304754 e!375653)))

(declare-fun c!75256 () Bool)

(assert (=> b!654164 (= c!75256 (bvslt j!136 index!984))))

(declare-fun b!654165 () Bool)

(declare-fun e!375657 () Bool)

(declare-fun e!375664 () Bool)

(assert (=> b!654165 (= e!375657 e!375664)))

(declare-fun res!424388 () Bool)

(assert (=> b!654165 (=> (not res!424388) (not e!375664))))

(declare-fun lt!304750 () array!38620)

(declare-fun arrayContainsKey!0 (array!38620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654165 (= res!424388 (arrayContainsKey!0 lt!304750 (select (arr!18506 a!2986) j!136) j!136))))

(declare-fun b!654166 () Bool)

(declare-fun e!375655 () Bool)

(assert (=> b!654166 (= e!375655 e!375663)))

(declare-fun res!424392 () Bool)

(assert (=> b!654166 (=> res!424392 e!375663)))

(declare-fun lt!304748 () (_ BitVec 64))

(declare-fun lt!304744 () (_ BitVec 64))

(assert (=> b!654166 (= res!424392 (or (not (= (select (arr!18506 a!2986) j!136) lt!304748)) (not (= (select (arr!18506 a!2986) j!136) lt!304744))))))

(declare-fun e!375656 () Bool)

(assert (=> b!654166 e!375656))

(declare-fun res!424402 () Bool)

(assert (=> b!654166 (=> (not res!424402) (not e!375656))))

(assert (=> b!654166 (= res!424402 (= lt!304744 (select (arr!18506 a!2986) j!136)))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!654166 (= lt!304744 (select (store (arr!18506 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!654167 () Bool)

(declare-fun res!424390 () Bool)

(assert (=> b!654167 (=> (not res!424390) (not e!375666))))

(assert (=> b!654167 (= res!424390 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654168 () Bool)

(declare-fun res!424397 () Bool)

(assert (=> b!654168 (=> (not res!424397) (not e!375666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654168 (= res!424397 (validKeyInArray!0 (select (arr!18506 a!2986) j!136)))))

(declare-fun b!654170 () Bool)

(declare-fun res!424389 () Bool)

(declare-fun e!375667 () Bool)

(assert (=> b!654170 (=> (not res!424389) (not e!375667))))

(declare-datatypes ((List!12600 0))(
  ( (Nil!12597) (Cons!12596 (h!13641 (_ BitVec 64)) (t!18836 List!12600)) )
))
(declare-fun arrayNoDuplicates!0 (array!38620 (_ BitVec 32) List!12600) Bool)

(assert (=> b!654170 (= res!424389 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12597))))

(declare-fun b!654171 () Bool)

(assert (=> b!654171 (= e!375660 true)))

(assert (=> b!654171 false))

(declare-fun lt!304743 () Unit!22390)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38620 (_ BitVec 64) (_ BitVec 32) List!12600) Unit!22390)

(assert (=> b!654171 (= lt!304743 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304750 (select (arr!18506 a!2986) j!136) index!984 Nil!12597))))

(assert (=> b!654171 (arrayNoDuplicates!0 lt!304750 index!984 Nil!12597)))

(declare-fun lt!304756 () Unit!22390)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38620 (_ BitVec 32) (_ BitVec 32)) Unit!22390)

(assert (=> b!654171 (= lt!304756 (lemmaNoDuplicateFromThenFromBigger!0 lt!304750 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654171 (arrayNoDuplicates!0 lt!304750 #b00000000000000000000000000000000 Nil!12597)))

(declare-fun lt!304751 () Unit!22390)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38620 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12600) Unit!22390)

(assert (=> b!654171 (= lt!304751 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12597))))

(assert (=> b!654171 (arrayContainsKey!0 lt!304750 (select (arr!18506 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304747 () Unit!22390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38620 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22390)

(assert (=> b!654171 (= lt!304747 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304750 (select (arr!18506 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!375654 () Bool)

(assert (=> b!654171 e!375654))

(declare-fun res!424396 () Bool)

(assert (=> b!654171 (=> (not res!424396) (not e!375654))))

(assert (=> b!654171 (= res!424396 (arrayContainsKey!0 lt!304750 (select (arr!18506 a!2986) j!136) j!136))))

(declare-fun b!654172 () Bool)

(declare-fun e!375661 () Bool)

(assert (=> b!654172 (= e!375667 e!375661)))

(declare-fun res!424393 () Bool)

(assert (=> b!654172 (=> (not res!424393) (not e!375661))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!654172 (= res!424393 (= (select (store (arr!18506 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654172 (= lt!304750 (array!38621 (store (arr!18506 a!2986) i!1108 k!1786) (size!18870 a!2986)))))

(declare-fun b!654173 () Bool)

(declare-fun e!375665 () Unit!22390)

(declare-fun Unit!22392 () Unit!22390)

(assert (=> b!654173 (= e!375665 Unit!22392)))

(declare-fun b!654174 () Bool)

(declare-fun e!375658 () Bool)

(assert (=> b!654174 (= e!375658 (not e!375655))))

(declare-fun res!424387 () Bool)

(assert (=> b!654174 (=> res!424387 e!375655)))

(declare-datatypes ((SeekEntryResult!6953 0))(
  ( (MissingZero!6953 (index!30170 (_ BitVec 32))) (Found!6953 (index!30171 (_ BitVec 32))) (Intermediate!6953 (undefined!7765 Bool) (index!30172 (_ BitVec 32)) (x!58987 (_ BitVec 32))) (Undefined!6953) (MissingVacant!6953 (index!30173 (_ BitVec 32))) )
))
(declare-fun lt!304761 () SeekEntryResult!6953)

(assert (=> b!654174 (= res!424387 (not (= lt!304761 (Found!6953 index!984))))))

(declare-fun lt!304758 () Unit!22390)

(assert (=> b!654174 (= lt!304758 e!375665)))

(declare-fun c!75257 () Bool)

(assert (=> b!654174 (= c!75257 (= lt!304761 Undefined!6953))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38620 (_ BitVec 32)) SeekEntryResult!6953)

(assert (=> b!654174 (= lt!304761 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304748 lt!304750 mask!3053))))

(declare-fun e!375659 () Bool)

(assert (=> b!654174 e!375659))

(declare-fun res!424401 () Bool)

(assert (=> b!654174 (=> (not res!424401) (not e!375659))))

(declare-fun lt!304757 () (_ BitVec 32))

(declare-fun lt!304753 () SeekEntryResult!6953)

(assert (=> b!654174 (= res!424401 (= lt!304753 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304757 vacantSpotIndex!68 lt!304748 lt!304750 mask!3053)))))

(assert (=> b!654174 (= lt!304753 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304757 vacantSpotIndex!68 (select (arr!18506 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654174 (= lt!304748 (select (store (arr!18506 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!304749 () Unit!22390)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38620 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22390)

(assert (=> b!654174 (= lt!304749 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304757 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654174 (= lt!304757 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654175 () Bool)

(declare-fun Unit!22393 () Unit!22390)

(assert (=> b!654175 (= e!375653 Unit!22393)))

(declare-fun lt!304755 () Unit!22390)

(assert (=> b!654175 (= lt!304755 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304750 (select (arr!18506 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!654175 (arrayContainsKey!0 lt!304750 (select (arr!18506 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304759 () Unit!22390)

(assert (=> b!654175 (= lt!304759 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12597))))

(assert (=> b!654175 (arrayNoDuplicates!0 lt!304750 #b00000000000000000000000000000000 Nil!12597)))

(declare-fun lt!304746 () Unit!22390)

(assert (=> b!654175 (= lt!304746 (lemmaNoDuplicateFromThenFromBigger!0 lt!304750 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654175 (arrayNoDuplicates!0 lt!304750 j!136 Nil!12597)))

(declare-fun lt!304752 () Unit!22390)

(assert (=> b!654175 (= lt!304752 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304750 (select (arr!18506 a!2986) j!136) j!136 Nil!12597))))

(assert (=> b!654175 false))

(declare-fun b!654176 () Bool)

(assert (=> b!654176 (= e!375654 (arrayContainsKey!0 lt!304750 (select (arr!18506 a!2986) j!136) index!984))))

(declare-fun b!654177 () Bool)

(assert (=> b!654177 (= e!375656 e!375657)))

(declare-fun res!424395 () Bool)

(assert (=> b!654177 (=> res!424395 e!375657)))

(assert (=> b!654177 (= res!424395 (or (not (= (select (arr!18506 a!2986) j!136) lt!304748)) (not (= (select (arr!18506 a!2986) j!136) lt!304744)) (bvsge j!136 index!984)))))

(declare-fun b!654178 () Bool)

(declare-fun Unit!22394 () Unit!22390)

(assert (=> b!654178 (= e!375665 Unit!22394)))

(assert (=> b!654178 false))

(declare-fun b!654179 () Bool)

(assert (=> b!654179 (= e!375664 (arrayContainsKey!0 lt!304750 (select (arr!18506 a!2986) j!136) index!984))))

(declare-fun res!424403 () Bool)

(assert (=> start!59344 (=> (not res!424403) (not e!375666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59344 (= res!424403 (validMask!0 mask!3053))))

(assert (=> start!59344 e!375666))

(assert (=> start!59344 true))

(declare-fun array_inv!14280 (array!38620) Bool)

(assert (=> start!59344 (array_inv!14280 a!2986)))

(declare-fun b!654169 () Bool)

(declare-fun lt!304760 () SeekEntryResult!6953)

(assert (=> b!654169 (= e!375659 (= lt!304760 lt!304753))))

(declare-fun b!654180 () Bool)

(declare-fun res!424391 () Bool)

(assert (=> b!654180 (=> (not res!424391) (not e!375666))))

(assert (=> b!654180 (= res!424391 (validKeyInArray!0 k!1786))))

(declare-fun b!654181 () Bool)

(assert (=> b!654181 (= e!375666 e!375667)))

(declare-fun res!424394 () Bool)

(assert (=> b!654181 (=> (not res!424394) (not e!375667))))

(declare-fun lt!304745 () SeekEntryResult!6953)

(assert (=> b!654181 (= res!424394 (or (= lt!304745 (MissingZero!6953 i!1108)) (= lt!304745 (MissingVacant!6953 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38620 (_ BitVec 32)) SeekEntryResult!6953)

(assert (=> b!654181 (= lt!304745 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!654182 () Bool)

(declare-fun res!424398 () Bool)

(assert (=> b!654182 (=> (not res!424398) (not e!375667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38620 (_ BitVec 32)) Bool)

(assert (=> b!654182 (= res!424398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654183 () Bool)

(declare-fun Unit!22395 () Unit!22390)

(assert (=> b!654183 (= e!375653 Unit!22395)))

(declare-fun b!654184 () Bool)

(assert (=> b!654184 (= e!375661 e!375658)))

(declare-fun res!424386 () Bool)

(assert (=> b!654184 (=> (not res!424386) (not e!375658))))

(assert (=> b!654184 (= res!424386 (and (= lt!304760 (Found!6953 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18506 a!2986) index!984) (select (arr!18506 a!2986) j!136))) (not (= (select (arr!18506 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!654184 (= lt!304760 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18506 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654185 () Bool)

(declare-fun res!424385 () Bool)

(assert (=> b!654185 (=> (not res!424385) (not e!375667))))

(assert (=> b!654185 (= res!424385 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18506 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59344 res!424403) b!654163))

(assert (= (and b!654163 res!424399) b!654168))

(assert (= (and b!654168 res!424397) b!654180))

(assert (= (and b!654180 res!424391) b!654167))

(assert (= (and b!654167 res!424390) b!654181))

(assert (= (and b!654181 res!424394) b!654182))

(assert (= (and b!654182 res!424398) b!654170))

(assert (= (and b!654170 res!424389) b!654185))

(assert (= (and b!654185 res!424385) b!654172))

(assert (= (and b!654172 res!424393) b!654184))

(assert (= (and b!654184 res!424386) b!654174))

(assert (= (and b!654174 res!424401) b!654169))

(assert (= (and b!654174 c!75257) b!654178))

(assert (= (and b!654174 (not c!75257)) b!654173))

(assert (= (and b!654174 (not res!424387)) b!654166))

(assert (= (and b!654166 res!424402) b!654177))

(assert (= (and b!654177 (not res!424395)) b!654165))

(assert (= (and b!654165 res!424388) b!654179))

(assert (= (and b!654166 (not res!424392)) b!654164))

(assert (= (and b!654164 c!75256) b!654175))

(assert (= (and b!654164 (not c!75256)) b!654183))

(assert (= (and b!654164 (not res!424400)) b!654171))

(assert (= (and b!654171 res!424396) b!654176))

(declare-fun m!627341 () Bool)

(assert (=> b!654168 m!627341))

(assert (=> b!654168 m!627341))

(declare-fun m!627343 () Bool)

(assert (=> b!654168 m!627343))

(declare-fun m!627345 () Bool)

(assert (=> b!654174 m!627345))

(declare-fun m!627347 () Bool)

(assert (=> b!654174 m!627347))

(declare-fun m!627349 () Bool)

(assert (=> b!654174 m!627349))

(assert (=> b!654174 m!627341))

(declare-fun m!627351 () Bool)

(assert (=> b!654174 m!627351))

(declare-fun m!627353 () Bool)

(assert (=> b!654174 m!627353))

(assert (=> b!654174 m!627341))

(declare-fun m!627355 () Bool)

(assert (=> b!654174 m!627355))

(declare-fun m!627357 () Bool)

(assert (=> b!654174 m!627357))

(declare-fun m!627359 () Bool)

(assert (=> b!654185 m!627359))

(assert (=> b!654171 m!627341))

(declare-fun m!627361 () Bool)

(assert (=> b!654171 m!627361))

(assert (=> b!654171 m!627341))

(declare-fun m!627363 () Bool)

(assert (=> b!654171 m!627363))

(assert (=> b!654171 m!627341))

(declare-fun m!627365 () Bool)

(assert (=> b!654171 m!627365))

(declare-fun m!627367 () Bool)

(assert (=> b!654171 m!627367))

(assert (=> b!654171 m!627341))

(declare-fun m!627369 () Bool)

(assert (=> b!654171 m!627369))

(declare-fun m!627371 () Bool)

(assert (=> b!654171 m!627371))

(assert (=> b!654171 m!627341))

(declare-fun m!627373 () Bool)

(assert (=> b!654171 m!627373))

(declare-fun m!627375 () Bool)

(assert (=> b!654171 m!627375))

(assert (=> b!654166 m!627341))

(assert (=> b!654166 m!627351))

(declare-fun m!627377 () Bool)

(assert (=> b!654166 m!627377))

(declare-fun m!627379 () Bool)

(assert (=> b!654184 m!627379))

(assert (=> b!654184 m!627341))

(assert (=> b!654184 m!627341))

(declare-fun m!627381 () Bool)

(assert (=> b!654184 m!627381))

(assert (=> b!654175 m!627341))

(assert (=> b!654175 m!627341))

(declare-fun m!627383 () Bool)

(assert (=> b!654175 m!627383))

(declare-fun m!627385 () Bool)

(assert (=> b!654175 m!627385))

(assert (=> b!654175 m!627341))

(declare-fun m!627387 () Bool)

(assert (=> b!654175 m!627387))

(declare-fun m!627389 () Bool)

(assert (=> b!654175 m!627389))

(assert (=> b!654175 m!627367))

(assert (=> b!654175 m!627341))

(declare-fun m!627391 () Bool)

(assert (=> b!654175 m!627391))

(assert (=> b!654175 m!627375))

(declare-fun m!627393 () Bool)

(assert (=> b!654181 m!627393))

(declare-fun m!627395 () Bool)

(assert (=> b!654182 m!627395))

(assert (=> b!654179 m!627341))

(assert (=> b!654179 m!627341))

(declare-fun m!627397 () Bool)

(assert (=> b!654179 m!627397))

(declare-fun m!627399 () Bool)

(assert (=> b!654180 m!627399))

(declare-fun m!627401 () Bool)

(assert (=> start!59344 m!627401))

(declare-fun m!627403 () Bool)

(assert (=> start!59344 m!627403))

(assert (=> b!654172 m!627351))

(declare-fun m!627405 () Bool)

(assert (=> b!654172 m!627405))

(declare-fun m!627407 () Bool)

(assert (=> b!654167 m!627407))

(assert (=> b!654177 m!627341))

(assert (=> b!654176 m!627341))

(assert (=> b!654176 m!627341))

(assert (=> b!654176 m!627397))

(declare-fun m!627409 () Bool)

(assert (=> b!654170 m!627409))

(assert (=> b!654165 m!627341))

(assert (=> b!654165 m!627341))

(assert (=> b!654165 m!627365))

(push 1)

