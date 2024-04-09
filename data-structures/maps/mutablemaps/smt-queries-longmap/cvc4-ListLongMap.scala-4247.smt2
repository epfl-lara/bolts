; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58888 () Bool)

(assert start!58888)

(declare-fun b!649077 () Bool)

(declare-fun res!420769 () Bool)

(declare-fun e!372309 () Bool)

(assert (=> b!649077 (=> (not res!420769) (not e!372309))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649077 (= res!420769 (validKeyInArray!0 k!1786))))

(declare-fun b!649078 () Bool)

(declare-fun e!372296 () Bool)

(declare-fun e!372300 () Bool)

(assert (=> b!649078 (= e!372296 e!372300)))

(declare-fun res!420780 () Bool)

(assert (=> b!649078 (=> (not res!420780) (not e!372300))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38506 0))(
  ( (array!38507 (arr!18455 (Array (_ BitVec 32) (_ BitVec 64))) (size!18819 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38506)

(declare-fun lt!301429 () array!38506)

(declare-fun arrayContainsKey!0 (array!38506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649078 (= res!420780 (arrayContainsKey!0 lt!301429 (select (arr!18455 a!2986) j!136) j!136))))

(declare-fun b!649079 () Bool)

(declare-fun e!372299 () Bool)

(declare-fun e!372305 () Bool)

(assert (=> b!649079 (= e!372299 e!372305)))

(declare-fun res!420784 () Bool)

(assert (=> b!649079 (=> res!420784 e!372305)))

(declare-fun lt!301420 () (_ BitVec 64))

(declare-fun lt!301419 () (_ BitVec 64))

(assert (=> b!649079 (= res!420784 (or (not (= (select (arr!18455 a!2986) j!136) lt!301419)) (not (= (select (arr!18455 a!2986) j!136) lt!301420))))))

(declare-fun e!372308 () Bool)

(assert (=> b!649079 e!372308))

(declare-fun res!420772 () Bool)

(assert (=> b!649079 (=> (not res!420772) (not e!372308))))

(assert (=> b!649079 (= res!420772 (= lt!301420 (select (arr!18455 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!649079 (= lt!301420 (select (store (arr!18455 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!649080 () Bool)

(declare-fun e!372295 () Bool)

(declare-fun e!372310 () Bool)

(assert (=> b!649080 (= e!372295 e!372310)))

(declare-fun res!420790 () Bool)

(assert (=> b!649080 (=> res!420790 e!372310)))

(assert (=> b!649080 (= res!420790 (or (bvsge (size!18819 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18819 a!2986))))))

(assert (=> b!649080 (arrayContainsKey!0 lt!301429 (select (arr!18455 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-datatypes ((Unit!22084 0))(
  ( (Unit!22085) )
))
(declare-fun lt!301421 () Unit!22084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38506 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22084)

(assert (=> b!649080 (= lt!301421 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301429 (select (arr!18455 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372301 () Bool)

(assert (=> b!649080 e!372301))

(declare-fun res!420770 () Bool)

(assert (=> b!649080 (=> (not res!420770) (not e!372301))))

(assert (=> b!649080 (= res!420770 (arrayContainsKey!0 lt!301429 (select (arr!18455 a!2986) j!136) j!136))))

(declare-fun b!649081 () Bool)

(declare-fun res!420782 () Bool)

(declare-fun e!372303 () Bool)

(assert (=> b!649081 (=> (not res!420782) (not e!372303))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38506 (_ BitVec 32)) Bool)

(assert (=> b!649081 (= res!420782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649082 () Bool)

(assert (=> b!649082 (= e!372301 (arrayContainsKey!0 lt!301429 (select (arr!18455 a!2986) j!136) index!984))))

(declare-fun b!649084 () Bool)

(declare-fun res!420787 () Bool)

(assert (=> b!649084 (=> (not res!420787) (not e!372309))))

(assert (=> b!649084 (= res!420787 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649085 () Bool)

(declare-fun e!372298 () Unit!22084)

(declare-fun Unit!22086 () Unit!22084)

(assert (=> b!649085 (= e!372298 Unit!22086)))

(assert (=> b!649085 false))

(declare-fun b!649086 () Bool)

(declare-fun res!420779 () Bool)

(assert (=> b!649086 (=> (not res!420779) (not e!372309))))

(assert (=> b!649086 (= res!420779 (and (= (size!18819 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18819 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18819 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649087 () Bool)

(declare-fun res!420788 () Bool)

(assert (=> b!649087 (=> res!420788 e!372310)))

(declare-datatypes ((List!12549 0))(
  ( (Nil!12546) (Cons!12545 (h!13590 (_ BitVec 64)) (t!18785 List!12549)) )
))
(declare-fun contains!3172 (List!12549 (_ BitVec 64)) Bool)

(assert (=> b!649087 (= res!420788 (contains!3172 Nil!12546 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649088 () Bool)

(declare-fun res!420783 () Bool)

(assert (=> b!649088 (=> (not res!420783) (not e!372309))))

(assert (=> b!649088 (= res!420783 (validKeyInArray!0 (select (arr!18455 a!2986) j!136)))))

(declare-fun b!649089 () Bool)

(declare-fun e!372307 () Unit!22084)

(declare-fun Unit!22087 () Unit!22084)

(assert (=> b!649089 (= e!372307 Unit!22087)))

(declare-fun b!649090 () Bool)

(declare-fun e!372306 () Bool)

(assert (=> b!649090 (= e!372303 e!372306)))

(declare-fun res!420781 () Bool)

(assert (=> b!649090 (=> (not res!420781) (not e!372306))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!649090 (= res!420781 (= (select (store (arr!18455 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649090 (= lt!301429 (array!38507 (store (arr!18455 a!2986) i!1108 k!1786) (size!18819 a!2986)))))

(declare-fun b!649091 () Bool)

(declare-fun e!372302 () Bool)

(assert (=> b!649091 (= e!372306 e!372302)))

(declare-fun res!420785 () Bool)

(assert (=> b!649091 (=> (not res!420785) (not e!372302))))

(declare-datatypes ((SeekEntryResult!6902 0))(
  ( (MissingZero!6902 (index!29954 (_ BitVec 32))) (Found!6902 (index!29955 (_ BitVec 32))) (Intermediate!6902 (undefined!7714 Bool) (index!29956 (_ BitVec 32)) (x!58764 (_ BitVec 32))) (Undefined!6902) (MissingVacant!6902 (index!29957 (_ BitVec 32))) )
))
(declare-fun lt!301428 () SeekEntryResult!6902)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!649091 (= res!420785 (and (= lt!301428 (Found!6902 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18455 a!2986) index!984) (select (arr!18455 a!2986) j!136))) (not (= (select (arr!18455 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38506 (_ BitVec 32)) SeekEntryResult!6902)

(assert (=> b!649091 (= lt!301428 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18455 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649092 () Bool)

(assert (=> b!649092 (= e!372300 (arrayContainsKey!0 lt!301429 (select (arr!18455 a!2986) j!136) index!984))))

(declare-fun b!649093 () Bool)

(declare-fun res!420773 () Bool)

(assert (=> b!649093 (=> res!420773 e!372310)))

(assert (=> b!649093 (= res!420773 (contains!3172 Nil!12546 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649083 () Bool)

(declare-fun res!420776 () Bool)

(assert (=> b!649083 (=> (not res!420776) (not e!372303))))

(assert (=> b!649083 (= res!420776 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18455 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!420771 () Bool)

(assert (=> start!58888 (=> (not res!420771) (not e!372309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58888 (= res!420771 (validMask!0 mask!3053))))

(assert (=> start!58888 e!372309))

(assert (=> start!58888 true))

(declare-fun array_inv!14229 (array!38506) Bool)

(assert (=> start!58888 (array_inv!14229 a!2986)))

(declare-fun b!649094 () Bool)

(assert (=> b!649094 (= e!372305 e!372295)))

(declare-fun res!420775 () Bool)

(assert (=> b!649094 (=> res!420775 e!372295)))

(assert (=> b!649094 (= res!420775 (bvsge index!984 j!136))))

(declare-fun lt!301418 () Unit!22084)

(assert (=> b!649094 (= lt!301418 e!372307)))

(declare-fun c!74521 () Bool)

(assert (=> b!649094 (= c!74521 (bvslt j!136 index!984))))

(declare-fun b!649095 () Bool)

(assert (=> b!649095 (= e!372308 e!372296)))

(declare-fun res!420777 () Bool)

(assert (=> b!649095 (=> res!420777 e!372296)))

(assert (=> b!649095 (= res!420777 (or (not (= (select (arr!18455 a!2986) j!136) lt!301419)) (not (= (select (arr!18455 a!2986) j!136) lt!301420)) (bvsge j!136 index!984)))))

(declare-fun b!649096 () Bool)

(declare-fun e!372297 () Bool)

(declare-fun lt!301422 () SeekEntryResult!6902)

(assert (=> b!649096 (= e!372297 (= lt!301428 lt!301422))))

(declare-fun b!649097 () Bool)

(declare-fun Unit!22088 () Unit!22084)

(assert (=> b!649097 (= e!372307 Unit!22088)))

(declare-fun lt!301424 () Unit!22084)

(assert (=> b!649097 (= lt!301424 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301429 (select (arr!18455 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!649097 (arrayContainsKey!0 lt!301429 (select (arr!18455 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301431 () Unit!22084)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38506 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12549) Unit!22084)

(assert (=> b!649097 (= lt!301431 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12546))))

(declare-fun arrayNoDuplicates!0 (array!38506 (_ BitVec 32) List!12549) Bool)

(assert (=> b!649097 (arrayNoDuplicates!0 lt!301429 #b00000000000000000000000000000000 Nil!12546)))

(declare-fun lt!301433 () Unit!22084)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38506 (_ BitVec 32) (_ BitVec 32)) Unit!22084)

(assert (=> b!649097 (= lt!301433 (lemmaNoDuplicateFromThenFromBigger!0 lt!301429 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649097 (arrayNoDuplicates!0 lt!301429 j!136 Nil!12546)))

(declare-fun lt!301426 () Unit!22084)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38506 (_ BitVec 64) (_ BitVec 32) List!12549) Unit!22084)

(assert (=> b!649097 (= lt!301426 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301429 (select (arr!18455 a!2986) j!136) j!136 Nil!12546))))

(assert (=> b!649097 false))

(declare-fun b!649098 () Bool)

(declare-fun Unit!22089 () Unit!22084)

(assert (=> b!649098 (= e!372298 Unit!22089)))

(declare-fun b!649099 () Bool)

(declare-fun res!420778 () Bool)

(assert (=> b!649099 (=> res!420778 e!372310)))

(declare-fun noDuplicate!432 (List!12549) Bool)

(assert (=> b!649099 (= res!420778 (not (noDuplicate!432 Nil!12546)))))

(declare-fun b!649100 () Bool)

(declare-fun res!420791 () Bool)

(assert (=> b!649100 (=> (not res!420791) (not e!372303))))

(assert (=> b!649100 (= res!420791 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12546))))

(declare-fun b!649101 () Bool)

(assert (=> b!649101 (= e!372302 (not e!372299))))

(declare-fun res!420786 () Bool)

(assert (=> b!649101 (=> res!420786 e!372299)))

(declare-fun lt!301434 () SeekEntryResult!6902)

(assert (=> b!649101 (= res!420786 (not (= lt!301434 (Found!6902 index!984))))))

(declare-fun lt!301427 () Unit!22084)

(assert (=> b!649101 (= lt!301427 e!372298)))

(declare-fun c!74522 () Bool)

(assert (=> b!649101 (= c!74522 (= lt!301434 Undefined!6902))))

(assert (=> b!649101 (= lt!301434 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301419 lt!301429 mask!3053))))

(assert (=> b!649101 e!372297))

(declare-fun res!420774 () Bool)

(assert (=> b!649101 (=> (not res!420774) (not e!372297))))

(declare-fun lt!301430 () (_ BitVec 32))

(assert (=> b!649101 (= res!420774 (= lt!301422 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301430 vacantSpotIndex!68 lt!301419 lt!301429 mask!3053)))))

(assert (=> b!649101 (= lt!301422 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301430 vacantSpotIndex!68 (select (arr!18455 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649101 (= lt!301419 (select (store (arr!18455 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301425 () Unit!22084)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38506 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22084)

(assert (=> b!649101 (= lt!301425 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301430 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649101 (= lt!301430 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649102 () Bool)

(assert (=> b!649102 (= e!372309 e!372303)))

(declare-fun res!420789 () Bool)

(assert (=> b!649102 (=> (not res!420789) (not e!372303))))

(declare-fun lt!301432 () SeekEntryResult!6902)

(assert (=> b!649102 (= res!420789 (or (= lt!301432 (MissingZero!6902 i!1108)) (= lt!301432 (MissingVacant!6902 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38506 (_ BitVec 32)) SeekEntryResult!6902)

(assert (=> b!649102 (= lt!301432 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!649103 () Bool)

(assert (=> b!649103 (= e!372310 true)))

(declare-fun lt!301423 () Bool)

(assert (=> b!649103 (= lt!301423 (contains!3172 Nil!12546 k!1786))))

(assert (= (and start!58888 res!420771) b!649086))

(assert (= (and b!649086 res!420779) b!649088))

(assert (= (and b!649088 res!420783) b!649077))

(assert (= (and b!649077 res!420769) b!649084))

(assert (= (and b!649084 res!420787) b!649102))

(assert (= (and b!649102 res!420789) b!649081))

(assert (= (and b!649081 res!420782) b!649100))

(assert (= (and b!649100 res!420791) b!649083))

(assert (= (and b!649083 res!420776) b!649090))

(assert (= (and b!649090 res!420781) b!649091))

(assert (= (and b!649091 res!420785) b!649101))

(assert (= (and b!649101 res!420774) b!649096))

(assert (= (and b!649101 c!74522) b!649085))

(assert (= (and b!649101 (not c!74522)) b!649098))

(assert (= (and b!649101 (not res!420786)) b!649079))

(assert (= (and b!649079 res!420772) b!649095))

(assert (= (and b!649095 (not res!420777)) b!649078))

(assert (= (and b!649078 res!420780) b!649092))

(assert (= (and b!649079 (not res!420784)) b!649094))

(assert (= (and b!649094 c!74521) b!649097))

(assert (= (and b!649094 (not c!74521)) b!649089))

(assert (= (and b!649094 (not res!420775)) b!649080))

(assert (= (and b!649080 res!420770) b!649082))

(assert (= (and b!649080 (not res!420790)) b!649099))

(assert (= (and b!649099 (not res!420778)) b!649093))

(assert (= (and b!649093 (not res!420773)) b!649087))

(assert (= (and b!649087 (not res!420788)) b!649103))

(declare-fun m!622419 () Bool)

(assert (=> b!649088 m!622419))

(assert (=> b!649088 m!622419))

(declare-fun m!622421 () Bool)

(assert (=> b!649088 m!622421))

(declare-fun m!622423 () Bool)

(assert (=> b!649090 m!622423))

(declare-fun m!622425 () Bool)

(assert (=> b!649090 m!622425))

(assert (=> b!649092 m!622419))

(assert (=> b!649092 m!622419))

(declare-fun m!622427 () Bool)

(assert (=> b!649092 m!622427))

(declare-fun m!622429 () Bool)

(assert (=> b!649084 m!622429))

(declare-fun m!622431 () Bool)

(assert (=> b!649087 m!622431))

(assert (=> b!649095 m!622419))

(declare-fun m!622433 () Bool)

(assert (=> b!649101 m!622433))

(declare-fun m!622435 () Bool)

(assert (=> b!649101 m!622435))

(declare-fun m!622437 () Bool)

(assert (=> b!649101 m!622437))

(assert (=> b!649101 m!622419))

(assert (=> b!649101 m!622423))

(declare-fun m!622439 () Bool)

(assert (=> b!649101 m!622439))

(declare-fun m!622441 () Bool)

(assert (=> b!649101 m!622441))

(assert (=> b!649101 m!622419))

(declare-fun m!622443 () Bool)

(assert (=> b!649101 m!622443))

(assert (=> b!649079 m!622419))

(assert (=> b!649079 m!622423))

(declare-fun m!622445 () Bool)

(assert (=> b!649079 m!622445))

(declare-fun m!622447 () Bool)

(assert (=> b!649102 m!622447))

(assert (=> b!649078 m!622419))

(assert (=> b!649078 m!622419))

(declare-fun m!622449 () Bool)

(assert (=> b!649078 m!622449))

(declare-fun m!622451 () Bool)

(assert (=> b!649083 m!622451))

(declare-fun m!622453 () Bool)

(assert (=> b!649091 m!622453))

(assert (=> b!649091 m!622419))

(assert (=> b!649091 m!622419))

(declare-fun m!622455 () Bool)

(assert (=> b!649091 m!622455))

(assert (=> b!649080 m!622419))

(assert (=> b!649080 m!622419))

(declare-fun m!622457 () Bool)

(assert (=> b!649080 m!622457))

(assert (=> b!649080 m!622419))

(declare-fun m!622459 () Bool)

(assert (=> b!649080 m!622459))

(assert (=> b!649080 m!622419))

(assert (=> b!649080 m!622449))

(declare-fun m!622461 () Bool)

(assert (=> start!58888 m!622461))

(declare-fun m!622463 () Bool)

(assert (=> start!58888 m!622463))

(declare-fun m!622465 () Bool)

(assert (=> b!649099 m!622465))

(declare-fun m!622467 () Bool)

(assert (=> b!649103 m!622467))

(declare-fun m!622469 () Bool)

(assert (=> b!649097 m!622469))

(assert (=> b!649097 m!622419))

(declare-fun m!622471 () Bool)

(assert (=> b!649097 m!622471))

(declare-fun m!622473 () Bool)

(assert (=> b!649097 m!622473))

(assert (=> b!649097 m!622419))

(declare-fun m!622475 () Bool)

(assert (=> b!649097 m!622475))

(assert (=> b!649097 m!622419))

(declare-fun m!622477 () Bool)

(assert (=> b!649097 m!622477))

(assert (=> b!649097 m!622419))

(declare-fun m!622479 () Bool)

(assert (=> b!649097 m!622479))

(declare-fun m!622481 () Bool)

(assert (=> b!649097 m!622481))

(declare-fun m!622483 () Bool)

(assert (=> b!649093 m!622483))

(declare-fun m!622485 () Bool)

(assert (=> b!649081 m!622485))

(declare-fun m!622487 () Bool)

(assert (=> b!649077 m!622487))

(assert (=> b!649082 m!622419))

(assert (=> b!649082 m!622419))

(assert (=> b!649082 m!622427))

(declare-fun m!622489 () Bool)

(assert (=> b!649100 m!622489))

(push 1)

