; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56072 () Bool)

(assert start!56072)

(declare-fun b!617489 () Bool)

(assert (=> b!617489 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((Unit!20240 0))(
  ( (Unit!20241) )
))
(declare-fun lt!284493 () Unit!20240)

(declare-datatypes ((array!37505 0))(
  ( (array!37506 (arr!17995 (Array (_ BitVec 32) (_ BitVec 64))) (size!18359 (_ BitVec 32))) )
))
(declare-fun lt!284480 () array!37505)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37505)

(declare-datatypes ((List!12089 0))(
  ( (Nil!12086) (Cons!12085 (h!13130 (_ BitVec 64)) (t!18325 List!12089)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37505 (_ BitVec 64) (_ BitVec 32) List!12089) Unit!20240)

(assert (=> b!617489 (= lt!284493 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284480 (select (arr!17995 a!2986) j!136) index!984 Nil!12086))))

(declare-fun arrayNoDuplicates!0 (array!37505 (_ BitVec 32) List!12089) Bool)

(assert (=> b!617489 (arrayNoDuplicates!0 lt!284480 index!984 Nil!12086)))

(declare-fun lt!284483 () Unit!20240)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37505 (_ BitVec 32) (_ BitVec 32)) Unit!20240)

(assert (=> b!617489 (= lt!284483 (lemmaNoDuplicateFromThenFromBigger!0 lt!284480 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617489 (arrayNoDuplicates!0 lt!284480 #b00000000000000000000000000000000 Nil!12086)))

(declare-fun lt!284488 () Unit!20240)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37505 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12089) Unit!20240)

(assert (=> b!617489 (= lt!284488 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12086))))

(declare-fun arrayContainsKey!0 (array!37505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617489 (arrayContainsKey!0 lt!284480 (select (arr!17995 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284479 () Unit!20240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37505 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20240)

(assert (=> b!617489 (= lt!284479 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284480 (select (arr!17995 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354100 () Bool)

(assert (=> b!617489 e!354100))

(declare-fun res!397906 () Bool)

(assert (=> b!617489 (=> (not res!397906) (not e!354100))))

(assert (=> b!617489 (= res!397906 (arrayContainsKey!0 lt!284480 (select (arr!17995 a!2986) j!136) j!136))))

(declare-fun e!354097 () Unit!20240)

(declare-fun Unit!20242 () Unit!20240)

(assert (=> b!617489 (= e!354097 Unit!20242)))

(declare-fun b!617490 () Bool)

(declare-fun e!354098 () Unit!20240)

(declare-fun Unit!20243 () Unit!20240)

(assert (=> b!617490 (= e!354098 Unit!20243)))

(assert (=> b!617490 false))

(declare-fun b!617491 () Bool)

(declare-fun e!354099 () Unit!20240)

(declare-fun Unit!20244 () Unit!20240)

(assert (=> b!617491 (= e!354099 Unit!20244)))

(declare-fun res!397915 () Bool)

(assert (=> b!617491 (= res!397915 (= (select (store (arr!17995 a!2986) i!1108 k0!1786) index!984) (select (arr!17995 a!2986) j!136)))))

(declare-fun e!354106 () Bool)

(assert (=> b!617491 (=> (not res!397915) (not e!354106))))

(assert (=> b!617491 e!354106))

(declare-fun c!70160 () Bool)

(assert (=> b!617491 (= c!70160 (bvslt j!136 index!984))))

(declare-fun lt!284491 () Unit!20240)

(declare-fun e!354102 () Unit!20240)

(assert (=> b!617491 (= lt!284491 e!354102)))

(declare-fun c!70161 () Bool)

(assert (=> b!617491 (= c!70161 (bvslt index!984 j!136))))

(declare-fun lt!284477 () Unit!20240)

(assert (=> b!617491 (= lt!284477 e!354097)))

(assert (=> b!617491 false))

(declare-fun b!617492 () Bool)

(declare-fun res!397917 () Bool)

(declare-fun e!354095 () Bool)

(assert (=> b!617492 (=> (not res!397917) (not e!354095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617492 (= res!397917 (validKeyInArray!0 k0!1786))))

(declare-fun b!617493 () Bool)

(assert (=> b!617493 false))

(declare-fun lt!284496 () Unit!20240)

(assert (=> b!617493 (= lt!284496 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284480 (select (arr!17995 a!2986) j!136) j!136 Nil!12086))))

(assert (=> b!617493 (arrayNoDuplicates!0 lt!284480 j!136 Nil!12086)))

(declare-fun lt!284485 () Unit!20240)

(assert (=> b!617493 (= lt!284485 (lemmaNoDuplicateFromThenFromBigger!0 lt!284480 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617493 (arrayNoDuplicates!0 lt!284480 #b00000000000000000000000000000000 Nil!12086)))

(declare-fun lt!284492 () Unit!20240)

(assert (=> b!617493 (= lt!284492 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12086))))

(assert (=> b!617493 (arrayContainsKey!0 lt!284480 (select (arr!17995 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284495 () Unit!20240)

(assert (=> b!617493 (= lt!284495 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284480 (select (arr!17995 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20245 () Unit!20240)

(assert (=> b!617493 (= e!354102 Unit!20245)))

(declare-fun b!617494 () Bool)

(assert (=> b!617494 (= e!354100 (arrayContainsKey!0 lt!284480 (select (arr!17995 a!2986) j!136) index!984))))

(declare-fun b!617495 () Bool)

(declare-fun e!354104 () Bool)

(assert (=> b!617495 (= e!354104 true)))

(assert (=> b!617495 (= (select (store (arr!17995 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617496 () Bool)

(declare-fun e!354094 () Bool)

(assert (=> b!617496 (= e!354094 (not e!354104))))

(declare-fun res!397909 () Bool)

(assert (=> b!617496 (=> res!397909 e!354104)))

(declare-datatypes ((SeekEntryResult!6442 0))(
  ( (MissingZero!6442 (index!28051 (_ BitVec 32))) (Found!6442 (index!28052 (_ BitVec 32))) (Intermediate!6442 (undefined!7254 Bool) (index!28053 (_ BitVec 32)) (x!56867 (_ BitVec 32))) (Undefined!6442) (MissingVacant!6442 (index!28054 (_ BitVec 32))) )
))
(declare-fun lt!284494 () SeekEntryResult!6442)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!617496 (= res!397909 (not (= lt!284494 (MissingVacant!6442 vacantSpotIndex!68))))))

(declare-fun lt!284486 () Unit!20240)

(assert (=> b!617496 (= lt!284486 e!354099)))

(declare-fun c!70162 () Bool)

(assert (=> b!617496 (= c!70162 (= lt!284494 (Found!6442 index!984)))))

(declare-fun lt!284487 () Unit!20240)

(assert (=> b!617496 (= lt!284487 e!354098)))

(declare-fun c!70163 () Bool)

(assert (=> b!617496 (= c!70163 (= lt!284494 Undefined!6442))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!284490 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37505 (_ BitVec 32)) SeekEntryResult!6442)

(assert (=> b!617496 (= lt!284494 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284490 lt!284480 mask!3053))))

(declare-fun e!354103 () Bool)

(assert (=> b!617496 e!354103))

(declare-fun res!397918 () Bool)

(assert (=> b!617496 (=> (not res!397918) (not e!354103))))

(declare-fun lt!284478 () (_ BitVec 32))

(declare-fun lt!284481 () SeekEntryResult!6442)

(assert (=> b!617496 (= res!397918 (= lt!284481 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284478 vacantSpotIndex!68 lt!284490 lt!284480 mask!3053)))))

(assert (=> b!617496 (= lt!284481 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284478 vacantSpotIndex!68 (select (arr!17995 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617496 (= lt!284490 (select (store (arr!17995 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!284489 () Unit!20240)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37505 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20240)

(assert (=> b!617496 (= lt!284489 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284478 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617496 (= lt!284478 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617497 () Bool)

(declare-fun e!354093 () Bool)

(assert (=> b!617497 (= e!354095 e!354093)))

(declare-fun res!397905 () Bool)

(assert (=> b!617497 (=> (not res!397905) (not e!354093))))

(declare-fun lt!284484 () SeekEntryResult!6442)

(assert (=> b!617497 (= res!397905 (or (= lt!284484 (MissingZero!6442 i!1108)) (= lt!284484 (MissingVacant!6442 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37505 (_ BitVec 32)) SeekEntryResult!6442)

(assert (=> b!617497 (= lt!284484 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!617499 () Bool)

(declare-fun res!397916 () Bool)

(assert (=> b!617499 (=> (not res!397916) (not e!354095))))

(assert (=> b!617499 (= res!397916 (validKeyInArray!0 (select (arr!17995 a!2986) j!136)))))

(declare-fun b!617500 () Bool)

(declare-fun Unit!20246 () Unit!20240)

(assert (=> b!617500 (= e!354102 Unit!20246)))

(declare-fun b!617501 () Bool)

(declare-fun Unit!20247 () Unit!20240)

(assert (=> b!617501 (= e!354097 Unit!20247)))

(declare-fun b!617502 () Bool)

(declare-fun res!397911 () Bool)

(assert (=> b!617502 (=> (not res!397911) (not e!354095))))

(assert (=> b!617502 (= res!397911 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617503 () Bool)

(declare-fun res!397919 () Bool)

(assert (=> b!617503 (=> (not res!397919) (not e!354093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37505 (_ BitVec 32)) Bool)

(assert (=> b!617503 (= res!397919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617504 () Bool)

(declare-fun Unit!20248 () Unit!20240)

(assert (=> b!617504 (= e!354098 Unit!20248)))

(declare-fun b!617505 () Bool)

(declare-fun e!354105 () Bool)

(assert (=> b!617505 (= e!354105 (arrayContainsKey!0 lt!284480 (select (arr!17995 a!2986) j!136) index!984))))

(declare-fun b!617506 () Bool)

(declare-fun res!397903 () Bool)

(assert (=> b!617506 (=> (not res!397903) (not e!354095))))

(assert (=> b!617506 (= res!397903 (and (= (size!18359 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18359 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18359 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617507 () Bool)

(declare-fun lt!284482 () SeekEntryResult!6442)

(assert (=> b!617507 (= e!354103 (= lt!284482 lt!284481))))

(declare-fun b!617508 () Bool)

(declare-fun res!397913 () Bool)

(assert (=> b!617508 (=> (not res!397913) (not e!354093))))

(assert (=> b!617508 (= res!397913 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17995 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617509 () Bool)

(declare-fun e!354096 () Bool)

(assert (=> b!617509 (= e!354096 e!354094)))

(declare-fun res!397912 () Bool)

(assert (=> b!617509 (=> (not res!397912) (not e!354094))))

(assert (=> b!617509 (= res!397912 (and (= lt!284482 (Found!6442 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17995 a!2986) index!984) (select (arr!17995 a!2986) j!136))) (not (= (select (arr!17995 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!617509 (= lt!284482 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17995 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!397907 () Bool)

(declare-fun b!617510 () Bool)

(assert (=> b!617510 (= res!397907 (arrayContainsKey!0 lt!284480 (select (arr!17995 a!2986) j!136) j!136))))

(assert (=> b!617510 (=> (not res!397907) (not e!354105))))

(declare-fun e!354092 () Bool)

(assert (=> b!617510 (= e!354092 e!354105)))

(declare-fun b!617498 () Bool)

(declare-fun res!397910 () Bool)

(assert (=> b!617498 (=> (not res!397910) (not e!354093))))

(assert (=> b!617498 (= res!397910 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12086))))

(declare-fun res!397914 () Bool)

(assert (=> start!56072 (=> (not res!397914) (not e!354095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56072 (= res!397914 (validMask!0 mask!3053))))

(assert (=> start!56072 e!354095))

(assert (=> start!56072 true))

(declare-fun array_inv!13769 (array!37505) Bool)

(assert (=> start!56072 (array_inv!13769 a!2986)))

(declare-fun b!617511 () Bool)

(declare-fun Unit!20249 () Unit!20240)

(assert (=> b!617511 (= e!354099 Unit!20249)))

(declare-fun b!617512 () Bool)

(declare-fun res!397904 () Bool)

(assert (=> b!617512 (= res!397904 (bvsge j!136 index!984))))

(assert (=> b!617512 (=> res!397904 e!354092)))

(assert (=> b!617512 (= e!354106 e!354092)))

(declare-fun b!617513 () Bool)

(assert (=> b!617513 (= e!354093 e!354096)))

(declare-fun res!397908 () Bool)

(assert (=> b!617513 (=> (not res!397908) (not e!354096))))

(assert (=> b!617513 (= res!397908 (= (select (store (arr!17995 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617513 (= lt!284480 (array!37506 (store (arr!17995 a!2986) i!1108 k0!1786) (size!18359 a!2986)))))

(assert (= (and start!56072 res!397914) b!617506))

(assert (= (and b!617506 res!397903) b!617499))

(assert (= (and b!617499 res!397916) b!617492))

(assert (= (and b!617492 res!397917) b!617502))

(assert (= (and b!617502 res!397911) b!617497))

(assert (= (and b!617497 res!397905) b!617503))

(assert (= (and b!617503 res!397919) b!617498))

(assert (= (and b!617498 res!397910) b!617508))

(assert (= (and b!617508 res!397913) b!617513))

(assert (= (and b!617513 res!397908) b!617509))

(assert (= (and b!617509 res!397912) b!617496))

(assert (= (and b!617496 res!397918) b!617507))

(assert (= (and b!617496 c!70163) b!617490))

(assert (= (and b!617496 (not c!70163)) b!617504))

(assert (= (and b!617496 c!70162) b!617491))

(assert (= (and b!617496 (not c!70162)) b!617511))

(assert (= (and b!617491 res!397915) b!617512))

(assert (= (and b!617512 (not res!397904)) b!617510))

(assert (= (and b!617510 res!397907) b!617505))

(assert (= (and b!617491 c!70160) b!617493))

(assert (= (and b!617491 (not c!70160)) b!617500))

(assert (= (and b!617491 c!70161) b!617489))

(assert (= (and b!617491 (not c!70161)) b!617501))

(assert (= (and b!617489 res!397906) b!617494))

(assert (= (and b!617496 (not res!397909)) b!617495))

(declare-fun m!593629 () Bool)

(assert (=> b!617489 m!593629))

(declare-fun m!593631 () Bool)

(assert (=> b!617489 m!593631))

(assert (=> b!617489 m!593629))

(assert (=> b!617489 m!593629))

(declare-fun m!593633 () Bool)

(assert (=> b!617489 m!593633))

(declare-fun m!593635 () Bool)

(assert (=> b!617489 m!593635))

(declare-fun m!593637 () Bool)

(assert (=> b!617489 m!593637))

(assert (=> b!617489 m!593629))

(declare-fun m!593639 () Bool)

(assert (=> b!617489 m!593639))

(assert (=> b!617489 m!593629))

(declare-fun m!593641 () Bool)

(assert (=> b!617489 m!593641))

(declare-fun m!593643 () Bool)

(assert (=> b!617489 m!593643))

(declare-fun m!593645 () Bool)

(assert (=> b!617489 m!593645))

(assert (=> b!617499 m!593629))

(assert (=> b!617499 m!593629))

(declare-fun m!593647 () Bool)

(assert (=> b!617499 m!593647))

(declare-fun m!593649 () Bool)

(assert (=> b!617509 m!593649))

(assert (=> b!617509 m!593629))

(assert (=> b!617509 m!593629))

(declare-fun m!593651 () Bool)

(assert (=> b!617509 m!593651))

(declare-fun m!593653 () Bool)

(assert (=> start!56072 m!593653))

(declare-fun m!593655 () Bool)

(assert (=> start!56072 m!593655))

(declare-fun m!593657 () Bool)

(assert (=> b!617492 m!593657))

(declare-fun m!593659 () Bool)

(assert (=> b!617491 m!593659))

(declare-fun m!593661 () Bool)

(assert (=> b!617491 m!593661))

(assert (=> b!617491 m!593629))

(assert (=> b!617494 m!593629))

(assert (=> b!617494 m!593629))

(declare-fun m!593663 () Bool)

(assert (=> b!617494 m!593663))

(assert (=> b!617510 m!593629))

(assert (=> b!617510 m!593629))

(assert (=> b!617510 m!593639))

(declare-fun m!593665 () Bool)

(assert (=> b!617503 m!593665))

(declare-fun m!593667 () Bool)

(assert (=> b!617496 m!593667))

(declare-fun m!593669 () Bool)

(assert (=> b!617496 m!593669))

(assert (=> b!617496 m!593659))

(declare-fun m!593671 () Bool)

(assert (=> b!617496 m!593671))

(declare-fun m!593673 () Bool)

(assert (=> b!617496 m!593673))

(assert (=> b!617496 m!593629))

(declare-fun m!593675 () Bool)

(assert (=> b!617496 m!593675))

(assert (=> b!617496 m!593629))

(declare-fun m!593677 () Bool)

(assert (=> b!617496 m!593677))

(assert (=> b!617493 m!593629))

(declare-fun m!593679 () Bool)

(assert (=> b!617493 m!593679))

(assert (=> b!617493 m!593629))

(declare-fun m!593681 () Bool)

(assert (=> b!617493 m!593681))

(assert (=> b!617493 m!593635))

(declare-fun m!593683 () Bool)

(assert (=> b!617493 m!593683))

(assert (=> b!617493 m!593629))

(declare-fun m!593685 () Bool)

(assert (=> b!617493 m!593685))

(assert (=> b!617493 m!593629))

(declare-fun m!593687 () Bool)

(assert (=> b!617493 m!593687))

(assert (=> b!617493 m!593645))

(declare-fun m!593689 () Bool)

(assert (=> b!617502 m!593689))

(assert (=> b!617495 m!593659))

(assert (=> b!617495 m!593661))

(declare-fun m!593691 () Bool)

(assert (=> b!617497 m!593691))

(assert (=> b!617513 m!593659))

(declare-fun m!593693 () Bool)

(assert (=> b!617513 m!593693))

(declare-fun m!593695 () Bool)

(assert (=> b!617508 m!593695))

(declare-fun m!593697 () Bool)

(assert (=> b!617498 m!593697))

(assert (=> b!617505 m!593629))

(assert (=> b!617505 m!593629))

(assert (=> b!617505 m!593663))

(check-sat (not b!617503) (not b!617493) (not b!617502) (not b!617498) (not b!617510) (not b!617509) (not b!617496) (not b!617499) (not b!617497) (not b!617505) (not b!617489) (not b!617492) (not start!56072) (not b!617494))
(check-sat)
