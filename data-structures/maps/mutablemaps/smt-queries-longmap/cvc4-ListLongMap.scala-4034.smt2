; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54922 () Bool)

(assert start!54922)

(declare-fun b!601188 () Bool)

(declare-fun e!343765 () Bool)

(declare-fun e!343756 () Bool)

(assert (=> b!601188 (= e!343765 e!343756)))

(declare-fun res!386129 () Bool)

(assert (=> b!601188 (=> (not res!386129) (not e!343756))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37120 0))(
  ( (array!37121 (arr!17816 (Array (_ BitVec 32) (_ BitVec 64))) (size!18180 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37120)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!601188 (= res!386129 (= (select (store (arr!17816 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!273728 () array!37120)

(assert (=> b!601188 (= lt!273728 (array!37121 (store (arr!17816 a!2986) i!1108 k!1786) (size!18180 a!2986)))))

(declare-fun b!601189 () Bool)

(declare-fun e!343759 () Bool)

(declare-fun e!343760 () Bool)

(assert (=> b!601189 (= e!343759 e!343760)))

(declare-fun res!386136 () Bool)

(assert (=> b!601189 (=> (not res!386136) (not e!343760))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601189 (= res!386136 (arrayContainsKey!0 lt!273728 (select (arr!17816 a!2986) j!136) j!136))))

(declare-fun b!601190 () Bool)

(declare-fun res!386138 () Bool)

(declare-fun e!343764 () Bool)

(assert (=> b!601190 (=> (not res!386138) (not e!343764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601190 (= res!386138 (validKeyInArray!0 (select (arr!17816 a!2986) j!136)))))

(declare-fun b!601191 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!601191 (= e!343760 (arrayContainsKey!0 lt!273728 (select (arr!17816 a!2986) j!136) index!984))))

(declare-fun b!601193 () Bool)

(declare-datatypes ((Unit!19006 0))(
  ( (Unit!19007) )
))
(declare-fun e!343755 () Unit!19006)

(declare-fun Unit!19008 () Unit!19006)

(assert (=> b!601193 (= e!343755 Unit!19008)))

(assert (=> b!601193 false))

(declare-fun b!601194 () Bool)

(declare-fun e!343753 () Unit!19006)

(declare-fun Unit!19009 () Unit!19006)

(assert (=> b!601194 (= e!343753 Unit!19009)))

(declare-fun lt!273735 () Unit!19006)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37120 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19006)

(assert (=> b!601194 (= lt!273735 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273728 (select (arr!17816 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601194 (arrayContainsKey!0 lt!273728 (select (arr!17816 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273733 () Unit!19006)

(declare-datatypes ((List!11910 0))(
  ( (Nil!11907) (Cons!11906 (h!12951 (_ BitVec 64)) (t!18146 List!11910)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37120 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11910) Unit!19006)

(assert (=> b!601194 (= lt!273733 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11907))))

(declare-fun arrayNoDuplicates!0 (array!37120 (_ BitVec 32) List!11910) Bool)

(assert (=> b!601194 (arrayNoDuplicates!0 lt!273728 #b00000000000000000000000000000000 Nil!11907)))

(declare-fun lt!273737 () Unit!19006)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37120 (_ BitVec 32) (_ BitVec 32)) Unit!19006)

(assert (=> b!601194 (= lt!273737 (lemmaNoDuplicateFromThenFromBigger!0 lt!273728 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601194 (arrayNoDuplicates!0 lt!273728 j!136 Nil!11907)))

(declare-fun lt!273726 () Unit!19006)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37120 (_ BitVec 64) (_ BitVec 32) List!11910) Unit!19006)

(assert (=> b!601194 (= lt!273726 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273728 (select (arr!17816 a!2986) j!136) j!136 Nil!11907))))

(assert (=> b!601194 false))

(declare-fun b!601195 () Bool)

(declare-fun e!343762 () Bool)

(declare-datatypes ((SeekEntryResult!6263 0))(
  ( (MissingZero!6263 (index!27308 (_ BitVec 32))) (Found!6263 (index!27309 (_ BitVec 32))) (Intermediate!6263 (undefined!7075 Bool) (index!27310 (_ BitVec 32)) (x!56127 (_ BitVec 32))) (Undefined!6263) (MissingVacant!6263 (index!27311 (_ BitVec 32))) )
))
(declare-fun lt!273725 () SeekEntryResult!6263)

(declare-fun lt!273734 () SeekEntryResult!6263)

(assert (=> b!601195 (= e!343762 (= lt!273725 lt!273734))))

(declare-fun b!601196 () Bool)

(declare-fun res!386133 () Bool)

(assert (=> b!601196 (=> (not res!386133) (not e!343764))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!601196 (= res!386133 (and (= (size!18180 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18180 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18180 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601197 () Bool)

(declare-fun e!343754 () Bool)

(declare-fun e!343758 () Bool)

(assert (=> b!601197 (= e!343754 (not e!343758))))

(declare-fun res!386139 () Bool)

(assert (=> b!601197 (=> res!386139 e!343758)))

(declare-fun lt!273731 () SeekEntryResult!6263)

(assert (=> b!601197 (= res!386139 (not (= lt!273731 (Found!6263 index!984))))))

(declare-fun lt!273729 () Unit!19006)

(assert (=> b!601197 (= lt!273729 e!343755)))

(declare-fun c!67898 () Bool)

(assert (=> b!601197 (= c!67898 (= lt!273731 Undefined!6263))))

(declare-fun lt!273738 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37120 (_ BitVec 32)) SeekEntryResult!6263)

(assert (=> b!601197 (= lt!273731 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273738 lt!273728 mask!3053))))

(assert (=> b!601197 e!343762))

(declare-fun res!386132 () Bool)

(assert (=> b!601197 (=> (not res!386132) (not e!343762))))

(declare-fun lt!273736 () (_ BitVec 32))

(assert (=> b!601197 (= res!386132 (= lt!273734 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273736 vacantSpotIndex!68 lt!273738 lt!273728 mask!3053)))))

(assert (=> b!601197 (= lt!273734 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273736 vacantSpotIndex!68 (select (arr!17816 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601197 (= lt!273738 (select (store (arr!17816 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273727 () Unit!19006)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37120 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19006)

(assert (=> b!601197 (= lt!273727 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273736 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601197 (= lt!273736 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601198 () Bool)

(declare-fun e!343757 () Bool)

(assert (=> b!601198 (= e!343758 e!343757)))

(declare-fun res!386130 () Bool)

(assert (=> b!601198 (=> res!386130 e!343757)))

(declare-fun lt!273730 () (_ BitVec 64))

(assert (=> b!601198 (= res!386130 (or (not (= (select (arr!17816 a!2986) j!136) lt!273738)) (not (= (select (arr!17816 a!2986) j!136) lt!273730))))))

(declare-fun e!343761 () Bool)

(assert (=> b!601198 e!343761))

(declare-fun res!386140 () Bool)

(assert (=> b!601198 (=> (not res!386140) (not e!343761))))

(assert (=> b!601198 (= res!386140 (= lt!273730 (select (arr!17816 a!2986) j!136)))))

(assert (=> b!601198 (= lt!273730 (select (store (arr!17816 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!601199 () Bool)

(declare-fun res!386142 () Bool)

(assert (=> b!601199 (=> (not res!386142) (not e!343765))))

(assert (=> b!601199 (= res!386142 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11907))))

(declare-fun b!601200 () Bool)

(declare-fun Unit!19010 () Unit!19006)

(assert (=> b!601200 (= e!343753 Unit!19010)))

(declare-fun b!601201 () Bool)

(declare-fun Unit!19011 () Unit!19006)

(assert (=> b!601201 (= e!343755 Unit!19011)))

(declare-fun b!601202 () Bool)

(assert (=> b!601202 (= e!343756 e!343754)))

(declare-fun res!386137 () Bool)

(assert (=> b!601202 (=> (not res!386137) (not e!343754))))

(assert (=> b!601202 (= res!386137 (and (= lt!273725 (Found!6263 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17816 a!2986) index!984) (select (arr!17816 a!2986) j!136))) (not (= (select (arr!17816 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!601202 (= lt!273725 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17816 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601203 () Bool)

(assert (=> b!601203 (= e!343764 e!343765)))

(declare-fun res!386128 () Bool)

(assert (=> b!601203 (=> (not res!386128) (not e!343765))))

(declare-fun lt!273724 () SeekEntryResult!6263)

(assert (=> b!601203 (= res!386128 (or (= lt!273724 (MissingZero!6263 i!1108)) (= lt!273724 (MissingVacant!6263 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37120 (_ BitVec 32)) SeekEntryResult!6263)

(assert (=> b!601203 (= lt!273724 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!601204 () Bool)

(assert (=> b!601204 (= e!343761 e!343759)))

(declare-fun res!386134 () Bool)

(assert (=> b!601204 (=> res!386134 e!343759)))

(assert (=> b!601204 (= res!386134 (or (not (= (select (arr!17816 a!2986) j!136) lt!273738)) (not (= (select (arr!17816 a!2986) j!136) lt!273730)) (bvsge j!136 index!984)))))

(declare-fun b!601205 () Bool)

(declare-fun res!386135 () Bool)

(assert (=> b!601205 (=> (not res!386135) (not e!343765))))

(assert (=> b!601205 (= res!386135 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17816 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601206 () Bool)

(assert (=> b!601206 (= e!343757 true)))

(declare-fun lt!273732 () Unit!19006)

(assert (=> b!601206 (= lt!273732 e!343753)))

(declare-fun c!67897 () Bool)

(assert (=> b!601206 (= c!67897 (bvslt j!136 index!984))))

(declare-fun b!601207 () Bool)

(declare-fun res!386141 () Bool)

(assert (=> b!601207 (=> (not res!386141) (not e!343764))))

(assert (=> b!601207 (= res!386141 (validKeyInArray!0 k!1786))))

(declare-fun b!601208 () Bool)

(declare-fun res!386143 () Bool)

(assert (=> b!601208 (=> (not res!386143) (not e!343765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37120 (_ BitVec 32)) Bool)

(assert (=> b!601208 (= res!386143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!386131 () Bool)

(assert (=> start!54922 (=> (not res!386131) (not e!343764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54922 (= res!386131 (validMask!0 mask!3053))))

(assert (=> start!54922 e!343764))

(assert (=> start!54922 true))

(declare-fun array_inv!13590 (array!37120) Bool)

(assert (=> start!54922 (array_inv!13590 a!2986)))

(declare-fun b!601192 () Bool)

(declare-fun res!386144 () Bool)

(assert (=> b!601192 (=> (not res!386144) (not e!343764))))

(assert (=> b!601192 (= res!386144 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!54922 res!386131) b!601196))

(assert (= (and b!601196 res!386133) b!601190))

(assert (= (and b!601190 res!386138) b!601207))

(assert (= (and b!601207 res!386141) b!601192))

(assert (= (and b!601192 res!386144) b!601203))

(assert (= (and b!601203 res!386128) b!601208))

(assert (= (and b!601208 res!386143) b!601199))

(assert (= (and b!601199 res!386142) b!601205))

(assert (= (and b!601205 res!386135) b!601188))

(assert (= (and b!601188 res!386129) b!601202))

(assert (= (and b!601202 res!386137) b!601197))

(assert (= (and b!601197 res!386132) b!601195))

(assert (= (and b!601197 c!67898) b!601193))

(assert (= (and b!601197 (not c!67898)) b!601201))

(assert (= (and b!601197 (not res!386139)) b!601198))

(assert (= (and b!601198 res!386140) b!601204))

(assert (= (and b!601204 (not res!386134)) b!601189))

(assert (= (and b!601189 res!386136) b!601191))

(assert (= (and b!601198 (not res!386130)) b!601206))

(assert (= (and b!601206 c!67897) b!601194))

(assert (= (and b!601206 (not c!67897)) b!601200))

(declare-fun m!578427 () Bool)

(assert (=> b!601194 m!578427))

(declare-fun m!578429 () Bool)

(assert (=> b!601194 m!578429))

(assert (=> b!601194 m!578427))

(declare-fun m!578431 () Bool)

(assert (=> b!601194 m!578431))

(declare-fun m!578433 () Bool)

(assert (=> b!601194 m!578433))

(declare-fun m!578435 () Bool)

(assert (=> b!601194 m!578435))

(declare-fun m!578437 () Bool)

(assert (=> b!601194 m!578437))

(assert (=> b!601194 m!578427))

(declare-fun m!578439 () Bool)

(assert (=> b!601194 m!578439))

(assert (=> b!601194 m!578427))

(declare-fun m!578441 () Bool)

(assert (=> b!601194 m!578441))

(declare-fun m!578443 () Bool)

(assert (=> b!601202 m!578443))

(assert (=> b!601202 m!578427))

(assert (=> b!601202 m!578427))

(declare-fun m!578445 () Bool)

(assert (=> b!601202 m!578445))

(declare-fun m!578447 () Bool)

(assert (=> b!601199 m!578447))

(declare-fun m!578449 () Bool)

(assert (=> b!601197 m!578449))

(declare-fun m!578451 () Bool)

(assert (=> b!601197 m!578451))

(declare-fun m!578453 () Bool)

(assert (=> b!601197 m!578453))

(assert (=> b!601197 m!578427))

(assert (=> b!601197 m!578427))

(declare-fun m!578455 () Bool)

(assert (=> b!601197 m!578455))

(declare-fun m!578457 () Bool)

(assert (=> b!601197 m!578457))

(declare-fun m!578459 () Bool)

(assert (=> b!601197 m!578459))

(declare-fun m!578461 () Bool)

(assert (=> b!601197 m!578461))

(assert (=> b!601204 m!578427))

(declare-fun m!578463 () Bool)

(assert (=> start!54922 m!578463))

(declare-fun m!578465 () Bool)

(assert (=> start!54922 m!578465))

(assert (=> b!601198 m!578427))

(assert (=> b!601198 m!578461))

(declare-fun m!578467 () Bool)

(assert (=> b!601198 m!578467))

(assert (=> b!601191 m!578427))

(assert (=> b!601191 m!578427))

(declare-fun m!578469 () Bool)

(assert (=> b!601191 m!578469))

(declare-fun m!578471 () Bool)

(assert (=> b!601207 m!578471))

(declare-fun m!578473 () Bool)

(assert (=> b!601205 m!578473))

(assert (=> b!601188 m!578461))

(declare-fun m!578475 () Bool)

(assert (=> b!601188 m!578475))

(declare-fun m!578477 () Bool)

(assert (=> b!601203 m!578477))

(assert (=> b!601190 m!578427))

(assert (=> b!601190 m!578427))

(declare-fun m!578479 () Bool)

(assert (=> b!601190 m!578479))

(assert (=> b!601189 m!578427))

(assert (=> b!601189 m!578427))

(declare-fun m!578481 () Bool)

(assert (=> b!601189 m!578481))

(declare-fun m!578483 () Bool)

(assert (=> b!601192 m!578483))

(declare-fun m!578485 () Bool)

(assert (=> b!601208 m!578485))

(push 1)

