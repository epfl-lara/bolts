; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56128 () Bool)

(assert start!56128)

(declare-fun b!619589 () Bool)

(declare-datatypes ((Unit!20520 0))(
  ( (Unit!20521) )
))
(declare-fun e!355363 () Unit!20520)

(declare-fun Unit!20522 () Unit!20520)

(assert (=> b!619589 (= e!355363 Unit!20522)))

(declare-fun b!619590 () Bool)

(declare-fun e!355366 () Bool)

(declare-datatypes ((SeekEntryResult!6470 0))(
  ( (MissingZero!6470 (index!28163 (_ BitVec 32))) (Found!6470 (index!28164 (_ BitVec 32))) (Intermediate!6470 (undefined!7282 Bool) (index!28165 (_ BitVec 32)) (x!56967 (_ BitVec 32))) (Undefined!6470) (MissingVacant!6470 (index!28166 (_ BitVec 32))) )
))
(declare-fun lt!286166 () SeekEntryResult!6470)

(declare-fun lt!286169 () SeekEntryResult!6470)

(assert (=> b!619590 (= e!355366 (= lt!286166 lt!286169))))

(declare-fun b!619591 () Bool)

(assert (=> b!619591 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37561 0))(
  ( (array!37562 (arr!18023 (Array (_ BitVec 32) (_ BitVec 64))) (size!18387 (_ BitVec 32))) )
))
(declare-fun lt!286170 () array!37561)

(declare-fun a!2986 () array!37561)

(declare-fun lt!286171 () Unit!20520)

(declare-datatypes ((List!12117 0))(
  ( (Nil!12114) (Cons!12113 (h!13158 (_ BitVec 64)) (t!18353 List!12117)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37561 (_ BitVec 64) (_ BitVec 32) List!12117) Unit!20520)

(assert (=> b!619591 (= lt!286171 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286170 (select (arr!18023 a!2986) j!136) j!136 Nil!12114))))

(declare-fun arrayNoDuplicates!0 (array!37561 (_ BitVec 32) List!12117) Bool)

(assert (=> b!619591 (arrayNoDuplicates!0 lt!286170 j!136 Nil!12114)))

(declare-fun lt!286175 () Unit!20520)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37561 (_ BitVec 32) (_ BitVec 32)) Unit!20520)

(assert (=> b!619591 (= lt!286175 (lemmaNoDuplicateFromThenFromBigger!0 lt!286170 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619591 (arrayNoDuplicates!0 lt!286170 #b00000000000000000000000000000000 Nil!12114)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!286159 () Unit!20520)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37561 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12117) Unit!20520)

(assert (=> b!619591 (= lt!286159 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12114))))

(declare-fun arrayContainsKey!0 (array!37561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619591 (arrayContainsKey!0 lt!286170 (select (arr!18023 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286167 () Unit!20520)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37561 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20520)

(assert (=> b!619591 (= lt!286167 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286170 (select (arr!18023 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355360 () Unit!20520)

(declare-fun Unit!20523 () Unit!20520)

(assert (=> b!619591 (= e!355360 Unit!20523)))

(declare-fun b!619592 () Bool)

(declare-fun res!399337 () Bool)

(assert (=> b!619592 (= res!399337 (arrayContainsKey!0 lt!286170 (select (arr!18023 a!2986) j!136) j!136))))

(declare-fun e!355358 () Bool)

(assert (=> b!619592 (=> (not res!399337) (not e!355358))))

(declare-fun e!355357 () Bool)

(assert (=> b!619592 (= e!355357 e!355358)))

(declare-fun b!619593 () Bool)

(declare-fun res!399331 () Bool)

(declare-fun e!355353 () Bool)

(assert (=> b!619593 (=> (not res!399331) (not e!355353))))

(assert (=> b!619593 (= res!399331 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619594 () Bool)

(declare-fun res!399346 () Bool)

(declare-fun e!355354 () Bool)

(assert (=> b!619594 (=> (not res!399346) (not e!355354))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37561 (_ BitVec 32)) Bool)

(assert (=> b!619594 (= res!399346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!355359 () Bool)

(declare-fun b!619595 () Bool)

(assert (=> b!619595 (= e!355359 (arrayContainsKey!0 lt!286170 (select (arr!18023 a!2986) j!136) index!984))))

(declare-fun b!619596 () Bool)

(declare-fun res!399344 () Bool)

(assert (=> b!619596 (=> (not res!399344) (not e!355354))))

(assert (=> b!619596 (= res!399344 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12114))))

(declare-fun b!619597 () Bool)

(declare-fun Unit!20524 () Unit!20520)

(assert (=> b!619597 (= e!355360 Unit!20524)))

(declare-fun b!619598 () Bool)

(declare-fun Unit!20525 () Unit!20520)

(assert (=> b!619598 (= e!355363 Unit!20525)))

(declare-fun res!399340 () Bool)

(assert (=> b!619598 (= res!399340 (= (select (store (arr!18023 a!2986) i!1108 k!1786) index!984) (select (arr!18023 a!2986) j!136)))))

(declare-fun e!355361 () Bool)

(assert (=> b!619598 (=> (not res!399340) (not e!355361))))

(assert (=> b!619598 e!355361))

(declare-fun c!70498 () Bool)

(assert (=> b!619598 (= c!70498 (bvslt j!136 index!984))))

(declare-fun lt!286161 () Unit!20520)

(assert (=> b!619598 (= lt!286161 e!355360)))

(declare-fun c!70499 () Bool)

(assert (=> b!619598 (= c!70499 (bvslt index!984 j!136))))

(declare-fun lt!286157 () Unit!20520)

(declare-fun e!355364 () Unit!20520)

(assert (=> b!619598 (= lt!286157 e!355364)))

(assert (=> b!619598 false))

(declare-fun b!619599 () Bool)

(declare-fun e!355362 () Bool)

(declare-fun e!355365 () Bool)

(assert (=> b!619599 (= e!355362 e!355365)))

(declare-fun res!399332 () Bool)

(assert (=> b!619599 (=> (not res!399332) (not e!355365))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!619599 (= res!399332 (and (= lt!286166 (Found!6470 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18023 a!2986) index!984) (select (arr!18023 a!2986) j!136))) (not (= (select (arr!18023 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37561 (_ BitVec 32)) SeekEntryResult!6470)

(assert (=> b!619599 (= lt!286166 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18023 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619600 () Bool)

(assert (=> b!619600 (= e!355354 e!355362)))

(declare-fun res!399339 () Bool)

(assert (=> b!619600 (=> (not res!399339) (not e!355362))))

(assert (=> b!619600 (= res!399339 (= (select (store (arr!18023 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619600 (= lt!286170 (array!37562 (store (arr!18023 a!2986) i!1108 k!1786) (size!18387 a!2986)))))

(declare-fun b!619601 () Bool)

(declare-fun e!355356 () Bool)

(assert (=> b!619601 (= e!355356 true)))

(assert (=> b!619601 (= (select (store (arr!18023 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619602 () Bool)

(assert (=> b!619602 false))

(declare-fun lt!286172 () Unit!20520)

(assert (=> b!619602 (= lt!286172 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286170 (select (arr!18023 a!2986) j!136) index!984 Nil!12114))))

(assert (=> b!619602 (arrayNoDuplicates!0 lt!286170 index!984 Nil!12114)))

(declare-fun lt!286173 () Unit!20520)

(assert (=> b!619602 (= lt!286173 (lemmaNoDuplicateFromThenFromBigger!0 lt!286170 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619602 (arrayNoDuplicates!0 lt!286170 #b00000000000000000000000000000000 Nil!12114)))

(declare-fun lt!286162 () Unit!20520)

(assert (=> b!619602 (= lt!286162 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12114))))

(assert (=> b!619602 (arrayContainsKey!0 lt!286170 (select (arr!18023 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286158 () Unit!20520)

(assert (=> b!619602 (= lt!286158 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286170 (select (arr!18023 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619602 e!355359))

(declare-fun res!399336 () Bool)

(assert (=> b!619602 (=> (not res!399336) (not e!355359))))

(assert (=> b!619602 (= res!399336 (arrayContainsKey!0 lt!286170 (select (arr!18023 a!2986) j!136) j!136))))

(declare-fun Unit!20526 () Unit!20520)

(assert (=> b!619602 (= e!355364 Unit!20526)))

(declare-fun b!619603 () Bool)

(declare-fun res!399347 () Bool)

(assert (=> b!619603 (=> (not res!399347) (not e!355353))))

(assert (=> b!619603 (= res!399347 (and (= (size!18387 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18387 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18387 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619604 () Bool)

(assert (=> b!619604 (= e!355358 (arrayContainsKey!0 lt!286170 (select (arr!18023 a!2986) j!136) index!984))))

(declare-fun b!619605 () Bool)

(declare-fun res!399333 () Bool)

(assert (=> b!619605 (= res!399333 (bvsge j!136 index!984))))

(assert (=> b!619605 (=> res!399333 e!355357)))

(assert (=> b!619605 (= e!355361 e!355357)))

(declare-fun b!619606 () Bool)

(declare-fun res!399341 () Bool)

(assert (=> b!619606 (=> (not res!399341) (not e!355353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619606 (= res!399341 (validKeyInArray!0 (select (arr!18023 a!2986) j!136)))))

(declare-fun b!619607 () Bool)

(declare-fun e!355355 () Unit!20520)

(declare-fun Unit!20527 () Unit!20520)

(assert (=> b!619607 (= e!355355 Unit!20527)))

(assert (=> b!619607 false))

(declare-fun b!619608 () Bool)

(declare-fun Unit!20528 () Unit!20520)

(assert (=> b!619608 (= e!355364 Unit!20528)))

(declare-fun b!619609 () Bool)

(declare-fun Unit!20529 () Unit!20520)

(assert (=> b!619609 (= e!355355 Unit!20529)))

(declare-fun res!399335 () Bool)

(assert (=> start!56128 (=> (not res!399335) (not e!355353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56128 (= res!399335 (validMask!0 mask!3053))))

(assert (=> start!56128 e!355353))

(assert (=> start!56128 true))

(declare-fun array_inv!13797 (array!37561) Bool)

(assert (=> start!56128 (array_inv!13797 a!2986)))

(declare-fun b!619610 () Bool)

(assert (=> b!619610 (= e!355353 e!355354)))

(declare-fun res!399334 () Bool)

(assert (=> b!619610 (=> (not res!399334) (not e!355354))))

(declare-fun lt!286174 () SeekEntryResult!6470)

(assert (=> b!619610 (= res!399334 (or (= lt!286174 (MissingZero!6470 i!1108)) (= lt!286174 (MissingVacant!6470 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37561 (_ BitVec 32)) SeekEntryResult!6470)

(assert (=> b!619610 (= lt!286174 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619611 () Bool)

(assert (=> b!619611 (= e!355365 (not e!355356))))

(declare-fun res!399343 () Bool)

(assert (=> b!619611 (=> res!399343 e!355356)))

(declare-fun lt!286163 () SeekEntryResult!6470)

(assert (=> b!619611 (= res!399343 (not (= lt!286163 (MissingVacant!6470 vacantSpotIndex!68))))))

(declare-fun lt!286160 () Unit!20520)

(assert (=> b!619611 (= lt!286160 e!355363)))

(declare-fun c!70497 () Bool)

(assert (=> b!619611 (= c!70497 (= lt!286163 (Found!6470 index!984)))))

(declare-fun lt!286164 () Unit!20520)

(assert (=> b!619611 (= lt!286164 e!355355)))

(declare-fun c!70496 () Bool)

(assert (=> b!619611 (= c!70496 (= lt!286163 Undefined!6470))))

(declare-fun lt!286168 () (_ BitVec 64))

(assert (=> b!619611 (= lt!286163 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286168 lt!286170 mask!3053))))

(assert (=> b!619611 e!355366))

(declare-fun res!399345 () Bool)

(assert (=> b!619611 (=> (not res!399345) (not e!355366))))

(declare-fun lt!286165 () (_ BitVec 32))

(assert (=> b!619611 (= res!399345 (= lt!286169 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286165 vacantSpotIndex!68 lt!286168 lt!286170 mask!3053)))))

(assert (=> b!619611 (= lt!286169 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286165 vacantSpotIndex!68 (select (arr!18023 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619611 (= lt!286168 (select (store (arr!18023 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286176 () Unit!20520)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37561 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20520)

(assert (=> b!619611 (= lt!286176 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286165 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619611 (= lt!286165 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619612 () Bool)

(declare-fun res!399338 () Bool)

(assert (=> b!619612 (=> (not res!399338) (not e!355353))))

(assert (=> b!619612 (= res!399338 (validKeyInArray!0 k!1786))))

(declare-fun b!619613 () Bool)

(declare-fun res!399342 () Bool)

(assert (=> b!619613 (=> (not res!399342) (not e!355354))))

(assert (=> b!619613 (= res!399342 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18023 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56128 res!399335) b!619603))

(assert (= (and b!619603 res!399347) b!619606))

(assert (= (and b!619606 res!399341) b!619612))

(assert (= (and b!619612 res!399338) b!619593))

(assert (= (and b!619593 res!399331) b!619610))

(assert (= (and b!619610 res!399334) b!619594))

(assert (= (and b!619594 res!399346) b!619596))

(assert (= (and b!619596 res!399344) b!619613))

(assert (= (and b!619613 res!399342) b!619600))

(assert (= (and b!619600 res!399339) b!619599))

(assert (= (and b!619599 res!399332) b!619611))

(assert (= (and b!619611 res!399345) b!619590))

(assert (= (and b!619611 c!70496) b!619607))

(assert (= (and b!619611 (not c!70496)) b!619609))

(assert (= (and b!619611 c!70497) b!619598))

(assert (= (and b!619611 (not c!70497)) b!619589))

(assert (= (and b!619598 res!399340) b!619605))

(assert (= (and b!619605 (not res!399333)) b!619592))

(assert (= (and b!619592 res!399337) b!619604))

(assert (= (and b!619598 c!70498) b!619591))

(assert (= (and b!619598 (not c!70498)) b!619597))

(assert (= (and b!619598 c!70499) b!619602))

(assert (= (and b!619598 (not c!70499)) b!619608))

(assert (= (and b!619602 res!399336) b!619595))

(assert (= (and b!619611 (not res!399343)) b!619601))

(declare-fun m!595589 () Bool)

(assert (=> b!619594 m!595589))

(declare-fun m!595591 () Bool)

(assert (=> start!56128 m!595591))

(declare-fun m!595593 () Bool)

(assert (=> start!56128 m!595593))

(declare-fun m!595595 () Bool)

(assert (=> b!619596 m!595595))

(declare-fun m!595597 () Bool)

(assert (=> b!619606 m!595597))

(assert (=> b!619606 m!595597))

(declare-fun m!595599 () Bool)

(assert (=> b!619606 m!595599))

(assert (=> b!619591 m!595597))

(assert (=> b!619591 m!595597))

(declare-fun m!595601 () Bool)

(assert (=> b!619591 m!595601))

(declare-fun m!595603 () Bool)

(assert (=> b!619591 m!595603))

(assert (=> b!619591 m!595597))

(declare-fun m!595605 () Bool)

(assert (=> b!619591 m!595605))

(declare-fun m!595607 () Bool)

(assert (=> b!619591 m!595607))

(assert (=> b!619591 m!595597))

(declare-fun m!595609 () Bool)

(assert (=> b!619591 m!595609))

(declare-fun m!595611 () Bool)

(assert (=> b!619591 m!595611))

(declare-fun m!595613 () Bool)

(assert (=> b!619591 m!595613))

(declare-fun m!595615 () Bool)

(assert (=> b!619610 m!595615))

(assert (=> b!619595 m!595597))

(assert (=> b!619595 m!595597))

(declare-fun m!595617 () Bool)

(assert (=> b!619595 m!595617))

(assert (=> b!619602 m!595597))

(declare-fun m!595619 () Bool)

(assert (=> b!619602 m!595619))

(assert (=> b!619602 m!595597))

(declare-fun m!595621 () Bool)

(assert (=> b!619602 m!595621))

(assert (=> b!619602 m!595597))

(declare-fun m!595623 () Bool)

(assert (=> b!619602 m!595623))

(assert (=> b!619602 m!595597))

(declare-fun m!595625 () Bool)

(assert (=> b!619602 m!595625))

(assert (=> b!619602 m!595597))

(declare-fun m!595627 () Bool)

(assert (=> b!619602 m!595627))

(declare-fun m!595629 () Bool)

(assert (=> b!619602 m!595629))

(assert (=> b!619602 m!595611))

(assert (=> b!619602 m!595613))

(assert (=> b!619592 m!595597))

(assert (=> b!619592 m!595597))

(assert (=> b!619592 m!595623))

(declare-fun m!595631 () Bool)

(assert (=> b!619601 m!595631))

(declare-fun m!595633 () Bool)

(assert (=> b!619601 m!595633))

(assert (=> b!619598 m!595631))

(assert (=> b!619598 m!595633))

(assert (=> b!619598 m!595597))

(declare-fun m!595635 () Bool)

(assert (=> b!619611 m!595635))

(declare-fun m!595637 () Bool)

(assert (=> b!619611 m!595637))

(assert (=> b!619611 m!595597))

(assert (=> b!619611 m!595631))

(assert (=> b!619611 m!595597))

(declare-fun m!595639 () Bool)

(assert (=> b!619611 m!595639))

(declare-fun m!595641 () Bool)

(assert (=> b!619611 m!595641))

(declare-fun m!595643 () Bool)

(assert (=> b!619611 m!595643))

(declare-fun m!595645 () Bool)

(assert (=> b!619611 m!595645))

(declare-fun m!595647 () Bool)

(assert (=> b!619593 m!595647))

(assert (=> b!619600 m!595631))

(declare-fun m!595649 () Bool)

(assert (=> b!619600 m!595649))

(assert (=> b!619604 m!595597))

(assert (=> b!619604 m!595597))

(assert (=> b!619604 m!595617))

(declare-fun m!595651 () Bool)

(assert (=> b!619612 m!595651))

(declare-fun m!595653 () Bool)

(assert (=> b!619613 m!595653))

(declare-fun m!595655 () Bool)

(assert (=> b!619599 m!595655))

(assert (=> b!619599 m!595597))

(assert (=> b!619599 m!595597))

(declare-fun m!595657 () Bool)

(assert (=> b!619599 m!595657))

(push 1)

