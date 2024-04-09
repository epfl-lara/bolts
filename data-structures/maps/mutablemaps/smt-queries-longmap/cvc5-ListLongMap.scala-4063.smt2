; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55614 () Bool)

(assert start!55614)

(declare-fun b!609485 () Bool)

(declare-fun res!392155 () Bool)

(declare-fun e!349073 () Bool)

(assert (=> b!609485 (=> (not res!392155) (not e!349073))))

(declare-datatypes ((array!37308 0))(
  ( (array!37309 (arr!17901 (Array (_ BitVec 32) (_ BitVec 64))) (size!18265 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37308)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37308 (_ BitVec 32)) Bool)

(assert (=> b!609485 (= res!392155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609486 () Bool)

(declare-fun e!349086 () Bool)

(declare-fun e!349079 () Bool)

(assert (=> b!609486 (= e!349086 e!349079)))

(declare-fun res!392156 () Bool)

(assert (=> b!609486 (=> res!392156 e!349079)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!278715 () (_ BitVec 64))

(declare-fun lt!278716 () (_ BitVec 64))

(assert (=> b!609486 (= res!392156 (or (not (= (select (arr!17901 a!2986) j!136) lt!278715)) (not (= (select (arr!17901 a!2986) j!136) lt!278716))))))

(declare-fun e!349082 () Bool)

(assert (=> b!609486 e!349082))

(declare-fun res!392145 () Bool)

(assert (=> b!609486 (=> (not res!392145) (not e!349082))))

(assert (=> b!609486 (= res!392145 (= lt!278716 (select (arr!17901 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!609486 (= lt!278716 (select (store (arr!17901 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609487 () Bool)

(declare-fun e!349084 () Bool)

(assert (=> b!609487 (= e!349084 (not e!349086))))

(declare-fun res!392146 () Bool)

(assert (=> b!609487 (=> res!392146 e!349086)))

(declare-datatypes ((SeekEntryResult!6348 0))(
  ( (MissingZero!6348 (index!27666 (_ BitVec 32))) (Found!6348 (index!27667 (_ BitVec 32))) (Intermediate!6348 (undefined!7160 Bool) (index!27668 (_ BitVec 32)) (x!56498 (_ BitVec 32))) (Undefined!6348) (MissingVacant!6348 (index!27669 (_ BitVec 32))) )
))
(declare-fun lt!278712 () SeekEntryResult!6348)

(assert (=> b!609487 (= res!392146 (not (= lt!278712 (Found!6348 index!984))))))

(declare-datatypes ((Unit!19516 0))(
  ( (Unit!19517) )
))
(declare-fun lt!278711 () Unit!19516)

(declare-fun e!349074 () Unit!19516)

(assert (=> b!609487 (= lt!278711 e!349074)))

(declare-fun c!69038 () Bool)

(assert (=> b!609487 (= c!69038 (= lt!278712 Undefined!6348))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!278718 () array!37308)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37308 (_ BitVec 32)) SeekEntryResult!6348)

(assert (=> b!609487 (= lt!278712 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278715 lt!278718 mask!3053))))

(declare-fun e!349085 () Bool)

(assert (=> b!609487 e!349085))

(declare-fun res!392157 () Bool)

(assert (=> b!609487 (=> (not res!392157) (not e!349085))))

(declare-fun lt!278713 () (_ BitVec 32))

(declare-fun lt!278709 () SeekEntryResult!6348)

(assert (=> b!609487 (= res!392157 (= lt!278709 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278713 vacantSpotIndex!68 lt!278715 lt!278718 mask!3053)))))

(assert (=> b!609487 (= lt!278709 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278713 vacantSpotIndex!68 (select (arr!17901 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609487 (= lt!278715 (select (store (arr!17901 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278710 () Unit!19516)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37308 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19516)

(assert (=> b!609487 (= lt!278710 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278713 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609487 (= lt!278713 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609488 () Bool)

(declare-fun Unit!19518 () Unit!19516)

(assert (=> b!609488 (= e!349074 Unit!19518)))

(declare-fun b!609489 () Bool)

(declare-fun res!392160 () Bool)

(declare-fun e!349078 () Bool)

(assert (=> b!609489 (=> (not res!392160) (not e!349078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609489 (= res!392160 (validKeyInArray!0 k!1786))))

(declare-fun e!349080 () Bool)

(declare-fun b!609490 () Bool)

(declare-fun arrayContainsKey!0 (array!37308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609490 (= e!349080 (arrayContainsKey!0 lt!278718 (select (arr!17901 a!2986) j!136) index!984))))

(declare-fun b!609491 () Bool)

(declare-fun res!392150 () Bool)

(assert (=> b!609491 (=> (not res!392150) (not e!349078))))

(assert (=> b!609491 (= res!392150 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609492 () Bool)

(declare-fun e!349076 () Unit!19516)

(declare-fun Unit!19519 () Unit!19516)

(assert (=> b!609492 (= e!349076 Unit!19519)))

(declare-fun b!609493 () Bool)

(declare-fun e!349081 () Bool)

(assert (=> b!609493 (= e!349073 e!349081)))

(declare-fun res!392154 () Bool)

(assert (=> b!609493 (=> (not res!392154) (not e!349081))))

(assert (=> b!609493 (= res!392154 (= (select (store (arr!17901 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609493 (= lt!278718 (array!37309 (store (arr!17901 a!2986) i!1108 k!1786) (size!18265 a!2986)))))

(declare-fun b!609494 () Bool)

(assert (=> b!609494 (= e!349078 e!349073)))

(declare-fun res!392147 () Bool)

(assert (=> b!609494 (=> (not res!392147) (not e!349073))))

(declare-fun lt!278705 () SeekEntryResult!6348)

(assert (=> b!609494 (= res!392147 (or (= lt!278705 (MissingZero!6348 i!1108)) (= lt!278705 (MissingVacant!6348 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37308 (_ BitVec 32)) SeekEntryResult!6348)

(assert (=> b!609494 (= lt!278705 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!609484 () Bool)

(declare-fun res!392153 () Bool)

(assert (=> b!609484 (=> (not res!392153) (not e!349078))))

(assert (=> b!609484 (= res!392153 (validKeyInArray!0 (select (arr!17901 a!2986) j!136)))))

(declare-fun res!392152 () Bool)

(assert (=> start!55614 (=> (not res!392152) (not e!349078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55614 (= res!392152 (validMask!0 mask!3053))))

(assert (=> start!55614 e!349078))

(assert (=> start!55614 true))

(declare-fun array_inv!13675 (array!37308) Bool)

(assert (=> start!55614 (array_inv!13675 a!2986)))

(declare-fun b!609495 () Bool)

(assert (=> b!609495 (= e!349081 e!349084)))

(declare-fun res!392159 () Bool)

(assert (=> b!609495 (=> (not res!392159) (not e!349084))))

(declare-fun lt!278704 () SeekEntryResult!6348)

(assert (=> b!609495 (= res!392159 (and (= lt!278704 (Found!6348 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17901 a!2986) index!984) (select (arr!17901 a!2986) j!136))) (not (= (select (arr!17901 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609495 (= lt!278704 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17901 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609496 () Bool)

(declare-fun e!349077 () Bool)

(assert (=> b!609496 (= e!349077 (bvsle #b00000000000000000000000000000000 (size!18265 a!2986)))))

(declare-datatypes ((List!11995 0))(
  ( (Nil!11992) (Cons!11991 (h!13036 (_ BitVec 64)) (t!18231 List!11995)) )
))
(declare-fun arrayNoDuplicates!0 (array!37308 (_ BitVec 32) List!11995) Bool)

(assert (=> b!609496 (arrayNoDuplicates!0 lt!278718 #b00000000000000000000000000000000 Nil!11992)))

(declare-fun lt!278703 () Unit!19516)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37308 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11995) Unit!19516)

(assert (=> b!609496 (= lt!278703 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11992))))

(assert (=> b!609496 (arrayContainsKey!0 lt!278718 (select (arr!17901 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278717 () Unit!19516)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37308 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19516)

(assert (=> b!609496 (= lt!278717 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278718 (select (arr!17901 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!609496 e!349080))

(declare-fun res!392161 () Bool)

(assert (=> b!609496 (=> (not res!392161) (not e!349080))))

(assert (=> b!609496 (= res!392161 (arrayContainsKey!0 lt!278718 (select (arr!17901 a!2986) j!136) j!136))))

(declare-fun b!609497 () Bool)

(declare-fun e!349087 () Bool)

(declare-fun e!349083 () Bool)

(assert (=> b!609497 (= e!349087 e!349083)))

(declare-fun res!392144 () Bool)

(assert (=> b!609497 (=> (not res!392144) (not e!349083))))

(assert (=> b!609497 (= res!392144 (arrayContainsKey!0 lt!278718 (select (arr!17901 a!2986) j!136) j!136))))

(declare-fun b!609498 () Bool)

(declare-fun res!392149 () Bool)

(assert (=> b!609498 (=> (not res!392149) (not e!349078))))

(assert (=> b!609498 (= res!392149 (and (= (size!18265 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18265 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18265 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609499 () Bool)

(declare-fun res!392148 () Bool)

(assert (=> b!609499 (=> (not res!392148) (not e!349073))))

(assert (=> b!609499 (= res!392148 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11992))))

(declare-fun b!609500 () Bool)

(assert (=> b!609500 (= e!349082 e!349087)))

(declare-fun res!392151 () Bool)

(assert (=> b!609500 (=> res!392151 e!349087)))

(assert (=> b!609500 (= res!392151 (or (not (= (select (arr!17901 a!2986) j!136) lt!278715)) (not (= (select (arr!17901 a!2986) j!136) lt!278716)) (bvsge j!136 index!984)))))

(declare-fun b!609501 () Bool)

(declare-fun Unit!19520 () Unit!19516)

(assert (=> b!609501 (= e!349076 Unit!19520)))

(declare-fun lt!278702 () Unit!19516)

(assert (=> b!609501 (= lt!278702 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278718 (select (arr!17901 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609501 (arrayContainsKey!0 lt!278718 (select (arr!17901 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278707 () Unit!19516)

(assert (=> b!609501 (= lt!278707 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11992))))

(assert (=> b!609501 (arrayNoDuplicates!0 lt!278718 #b00000000000000000000000000000000 Nil!11992)))

(declare-fun lt!278714 () Unit!19516)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37308 (_ BitVec 32) (_ BitVec 32)) Unit!19516)

(assert (=> b!609501 (= lt!278714 (lemmaNoDuplicateFromThenFromBigger!0 lt!278718 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609501 (arrayNoDuplicates!0 lt!278718 j!136 Nil!11992)))

(declare-fun lt!278708 () Unit!19516)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37308 (_ BitVec 64) (_ BitVec 32) List!11995) Unit!19516)

(assert (=> b!609501 (= lt!278708 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278718 (select (arr!17901 a!2986) j!136) j!136 Nil!11992))))

(assert (=> b!609501 false))

(declare-fun b!609502 () Bool)

(assert (=> b!609502 (= e!349083 (arrayContainsKey!0 lt!278718 (select (arr!17901 a!2986) j!136) index!984))))

(declare-fun b!609503 () Bool)

(declare-fun res!392158 () Bool)

(assert (=> b!609503 (=> (not res!392158) (not e!349073))))

(assert (=> b!609503 (= res!392158 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17901 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609504 () Bool)

(assert (=> b!609504 (= e!349079 e!349077)))

(declare-fun res!392162 () Bool)

(assert (=> b!609504 (=> res!392162 e!349077)))

(assert (=> b!609504 (= res!392162 (bvsge index!984 j!136))))

(declare-fun lt!278706 () Unit!19516)

(assert (=> b!609504 (= lt!278706 e!349076)))

(declare-fun c!69037 () Bool)

(assert (=> b!609504 (= c!69037 (bvslt j!136 index!984))))

(declare-fun b!609505 () Bool)

(declare-fun Unit!19521 () Unit!19516)

(assert (=> b!609505 (= e!349074 Unit!19521)))

(assert (=> b!609505 false))

(declare-fun b!609506 () Bool)

(assert (=> b!609506 (= e!349085 (= lt!278704 lt!278709))))

(assert (= (and start!55614 res!392152) b!609498))

(assert (= (and b!609498 res!392149) b!609484))

(assert (= (and b!609484 res!392153) b!609489))

(assert (= (and b!609489 res!392160) b!609491))

(assert (= (and b!609491 res!392150) b!609494))

(assert (= (and b!609494 res!392147) b!609485))

(assert (= (and b!609485 res!392155) b!609499))

(assert (= (and b!609499 res!392148) b!609503))

(assert (= (and b!609503 res!392158) b!609493))

(assert (= (and b!609493 res!392154) b!609495))

(assert (= (and b!609495 res!392159) b!609487))

(assert (= (and b!609487 res!392157) b!609506))

(assert (= (and b!609487 c!69038) b!609505))

(assert (= (and b!609487 (not c!69038)) b!609488))

(assert (= (and b!609487 (not res!392146)) b!609486))

(assert (= (and b!609486 res!392145) b!609500))

(assert (= (and b!609500 (not res!392151)) b!609497))

(assert (= (and b!609497 res!392144) b!609502))

(assert (= (and b!609486 (not res!392156)) b!609504))

(assert (= (and b!609504 c!69037) b!609501))

(assert (= (and b!609504 (not c!69037)) b!609492))

(assert (= (and b!609504 (not res!392162)) b!609496))

(assert (= (and b!609496 res!392161) b!609490))

(declare-fun m!586029 () Bool)

(assert (=> b!609496 m!586029))

(declare-fun m!586031 () Bool)

(assert (=> b!609496 m!586031))

(assert (=> b!609496 m!586029))

(declare-fun m!586033 () Bool)

(assert (=> b!609496 m!586033))

(assert (=> b!609496 m!586029))

(declare-fun m!586035 () Bool)

(assert (=> b!609496 m!586035))

(assert (=> b!609496 m!586029))

(declare-fun m!586037 () Bool)

(assert (=> b!609496 m!586037))

(declare-fun m!586039 () Bool)

(assert (=> b!609496 m!586039))

(declare-fun m!586041 () Bool)

(assert (=> start!55614 m!586041))

(declare-fun m!586043 () Bool)

(assert (=> start!55614 m!586043))

(assert (=> b!609486 m!586029))

(declare-fun m!586045 () Bool)

(assert (=> b!609486 m!586045))

(declare-fun m!586047 () Bool)

(assert (=> b!609486 m!586047))

(declare-fun m!586049 () Bool)

(assert (=> b!609487 m!586049))

(declare-fun m!586051 () Bool)

(assert (=> b!609487 m!586051))

(assert (=> b!609487 m!586029))

(assert (=> b!609487 m!586045))

(declare-fun m!586053 () Bool)

(assert (=> b!609487 m!586053))

(declare-fun m!586055 () Bool)

(assert (=> b!609487 m!586055))

(assert (=> b!609487 m!586029))

(declare-fun m!586057 () Bool)

(assert (=> b!609487 m!586057))

(declare-fun m!586059 () Bool)

(assert (=> b!609487 m!586059))

(assert (=> b!609502 m!586029))

(assert (=> b!609502 m!586029))

(declare-fun m!586061 () Bool)

(assert (=> b!609502 m!586061))

(assert (=> b!609500 m!586029))

(declare-fun m!586063 () Bool)

(assert (=> b!609485 m!586063))

(declare-fun m!586065 () Bool)

(assert (=> b!609491 m!586065))

(declare-fun m!586067 () Bool)

(assert (=> b!609494 m!586067))

(assert (=> b!609497 m!586029))

(assert (=> b!609497 m!586029))

(assert (=> b!609497 m!586037))

(declare-fun m!586069 () Bool)

(assert (=> b!609499 m!586069))

(assert (=> b!609490 m!586029))

(assert (=> b!609490 m!586029))

(assert (=> b!609490 m!586061))

(assert (=> b!609493 m!586045))

(declare-fun m!586071 () Bool)

(assert (=> b!609493 m!586071))

(assert (=> b!609501 m!586029))

(assert (=> b!609501 m!586033))

(assert (=> b!609501 m!586029))

(declare-fun m!586073 () Bool)

(assert (=> b!609501 m!586073))

(assert (=> b!609501 m!586029))

(declare-fun m!586075 () Bool)

(assert (=> b!609501 m!586075))

(declare-fun m!586077 () Bool)

(assert (=> b!609501 m!586077))

(assert (=> b!609501 m!586029))

(declare-fun m!586079 () Bool)

(assert (=> b!609501 m!586079))

(declare-fun m!586081 () Bool)

(assert (=> b!609501 m!586081))

(assert (=> b!609501 m!586039))

(declare-fun m!586083 () Bool)

(assert (=> b!609503 m!586083))

(assert (=> b!609484 m!586029))

(assert (=> b!609484 m!586029))

(declare-fun m!586085 () Bool)

(assert (=> b!609484 m!586085))

(declare-fun m!586087 () Bool)

(assert (=> b!609489 m!586087))

(declare-fun m!586089 () Bool)

(assert (=> b!609495 m!586089))

(assert (=> b!609495 m!586029))

(assert (=> b!609495 m!586029))

(declare-fun m!586091 () Bool)

(assert (=> b!609495 m!586091))

(push 1)

