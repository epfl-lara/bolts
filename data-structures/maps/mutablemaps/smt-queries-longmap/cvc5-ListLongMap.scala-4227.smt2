; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58146 () Bool)

(assert start!58146)

(declare-fun b!642212 () Bool)

(declare-fun res!416114 () Bool)

(declare-fun e!367790 () Bool)

(assert (=> b!642212 (=> (not res!416114) (not e!367790))))

(declare-datatypes ((array!38361 0))(
  ( (array!38362 (arr!18393 (Array (_ BitVec 32) (_ BitVec 64))) (size!18757 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38361)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38361 (_ BitVec 32)) Bool)

(assert (=> b!642212 (= res!416114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!416116 () Bool)

(declare-fun e!367788 () Bool)

(assert (=> start!58146 (=> (not res!416116) (not e!367788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58146 (= res!416116 (validMask!0 mask!3053))))

(assert (=> start!58146 e!367788))

(assert (=> start!58146 true))

(declare-fun array_inv!14167 (array!38361) Bool)

(assert (=> start!58146 (array_inv!14167 a!2986)))

(declare-fun b!642213 () Bool)

(declare-fun e!367787 () Bool)

(declare-fun e!367795 () Bool)

(assert (=> b!642213 (= e!367787 (not e!367795))))

(declare-fun res!416117 () Bool)

(assert (=> b!642213 (=> res!416117 e!367795)))

(declare-datatypes ((SeekEntryResult!6840 0))(
  ( (MissingZero!6840 (index!29685 (_ BitVec 32))) (Found!6840 (index!29686 (_ BitVec 32))) (Intermediate!6840 (undefined!7652 Bool) (index!29687 (_ BitVec 32)) (x!58479 (_ BitVec 32))) (Undefined!6840) (MissingVacant!6840 (index!29688 (_ BitVec 32))) )
))
(declare-fun lt!297448 () SeekEntryResult!6840)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!642213 (= res!416117 (not (= lt!297448 (Found!6840 index!984))))))

(declare-datatypes ((Unit!21718 0))(
  ( (Unit!21719) )
))
(declare-fun lt!297455 () Unit!21718)

(declare-fun e!367796 () Unit!21718)

(assert (=> b!642213 (= lt!297455 e!367796)))

(declare-fun c!73421 () Bool)

(assert (=> b!642213 (= c!73421 (= lt!297448 Undefined!6840))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!297450 () array!38361)

(declare-fun lt!297452 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38361 (_ BitVec 32)) SeekEntryResult!6840)

(assert (=> b!642213 (= lt!297448 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297452 lt!297450 mask!3053))))

(declare-fun e!367789 () Bool)

(assert (=> b!642213 e!367789))

(declare-fun res!416111 () Bool)

(assert (=> b!642213 (=> (not res!416111) (not e!367789))))

(declare-fun lt!297456 () SeekEntryResult!6840)

(declare-fun lt!297446 () (_ BitVec 32))

(assert (=> b!642213 (= res!416111 (= lt!297456 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297446 vacantSpotIndex!68 lt!297452 lt!297450 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!642213 (= lt!297456 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297446 vacantSpotIndex!68 (select (arr!18393 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!642213 (= lt!297452 (select (store (arr!18393 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297447 () Unit!21718)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38361 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21718)

(assert (=> b!642213 (= lt!297447 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297446 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642213 (= lt!297446 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642214 () Bool)

(declare-fun e!367798 () Bool)

(declare-fun arrayContainsKey!0 (array!38361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642214 (= e!367798 (arrayContainsKey!0 lt!297450 (select (arr!18393 a!2986) j!136) index!984))))

(declare-fun b!642215 () Bool)

(declare-fun Unit!21720 () Unit!21718)

(assert (=> b!642215 (= e!367796 Unit!21720)))

(assert (=> b!642215 false))

(declare-fun b!642216 () Bool)

(declare-fun e!367792 () Bool)

(assert (=> b!642216 (= e!367790 e!367792)))

(declare-fun res!416105 () Bool)

(assert (=> b!642216 (=> (not res!416105) (not e!367792))))

(assert (=> b!642216 (= res!416105 (= (select (store (arr!18393 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642216 (= lt!297450 (array!38362 (store (arr!18393 a!2986) i!1108 k!1786) (size!18757 a!2986)))))

(declare-fun b!642217 () Bool)

(declare-fun res!416113 () Bool)

(assert (=> b!642217 (=> (not res!416113) (not e!367788))))

(assert (=> b!642217 (= res!416113 (and (= (size!18757 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18757 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18757 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642218 () Bool)

(declare-fun res!416119 () Bool)

(assert (=> b!642218 (=> (not res!416119) (not e!367788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642218 (= res!416119 (validKeyInArray!0 (select (arr!18393 a!2986) j!136)))))

(declare-fun b!642219 () Bool)

(assert (=> b!642219 (= e!367792 e!367787)))

(declare-fun res!416107 () Bool)

(assert (=> b!642219 (=> (not res!416107) (not e!367787))))

(declare-fun lt!297458 () SeekEntryResult!6840)

(assert (=> b!642219 (= res!416107 (and (= lt!297458 (Found!6840 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18393 a!2986) index!984) (select (arr!18393 a!2986) j!136))) (not (= (select (arr!18393 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!642219 (= lt!297458 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18393 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642220 () Bool)

(declare-fun res!416108 () Bool)

(assert (=> b!642220 (=> (not res!416108) (not e!367788))))

(assert (=> b!642220 (= res!416108 (validKeyInArray!0 k!1786))))

(declare-fun b!642221 () Bool)

(assert (=> b!642221 (= e!367788 e!367790)))

(declare-fun res!416118 () Bool)

(assert (=> b!642221 (=> (not res!416118) (not e!367790))))

(declare-fun lt!297457 () SeekEntryResult!6840)

(assert (=> b!642221 (= res!416118 (or (= lt!297457 (MissingZero!6840 i!1108)) (= lt!297457 (MissingVacant!6840 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38361 (_ BitVec 32)) SeekEntryResult!6840)

(assert (=> b!642221 (= lt!297457 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!642222 () Bool)

(declare-fun e!367791 () Bool)

(assert (=> b!642222 (= e!367791 false)))

(assert (=> b!642222 (not (= lt!297452 (select (arr!18393 a!2986) j!136)))))

(declare-fun lt!297449 () Unit!21718)

(declare-datatypes ((List!12487 0))(
  ( (Nil!12484) (Cons!12483 (h!13528 (_ BitVec 64)) (t!18723 List!12487)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38361 (_ BitVec 64) (_ BitVec 32) List!12487) Unit!21718)

(assert (=> b!642222 (= lt!297449 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297450 (select (arr!18393 a!2986) j!136) j!136 Nil!12484))))

(declare-fun arrayNoDuplicates!0 (array!38361 (_ BitVec 32) List!12487) Bool)

(assert (=> b!642222 (arrayNoDuplicates!0 lt!297450 j!136 Nil!12484)))

(declare-fun lt!297459 () Unit!21718)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38361 (_ BitVec 32) (_ BitVec 32)) Unit!21718)

(assert (=> b!642222 (= lt!297459 (lemmaNoDuplicateFromThenFromBigger!0 lt!297450 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642222 (arrayNoDuplicates!0 lt!297450 #b00000000000000000000000000000000 Nil!12484)))

(declare-fun lt!297453 () Unit!21718)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38361 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12487) Unit!21718)

(assert (=> b!642222 (= lt!297453 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12484))))

(assert (=> b!642222 (arrayContainsKey!0 lt!297450 (select (arr!18393 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297454 () Unit!21718)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38361 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21718)

(assert (=> b!642222 (= lt!297454 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297450 (select (arr!18393 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!642223 () Bool)

(declare-fun res!416110 () Bool)

(assert (=> b!642223 (=> (not res!416110) (not e!367790))))

(assert (=> b!642223 (= res!416110 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12484))))

(declare-fun b!642224 () Bool)

(assert (=> b!642224 (= e!367795 e!367791)))

(declare-fun res!416109 () Bool)

(assert (=> b!642224 (=> res!416109 e!367791)))

(declare-fun lt!297451 () (_ BitVec 64))

(assert (=> b!642224 (= res!416109 (or (not (= (select (arr!18393 a!2986) j!136) lt!297452)) (not (= (select (arr!18393 a!2986) j!136) lt!297451)) (bvsge j!136 index!984)))))

(declare-fun e!367794 () Bool)

(assert (=> b!642224 e!367794))

(declare-fun res!416120 () Bool)

(assert (=> b!642224 (=> (not res!416120) (not e!367794))))

(assert (=> b!642224 (= res!416120 (= lt!297451 (select (arr!18393 a!2986) j!136)))))

(assert (=> b!642224 (= lt!297451 (select (store (arr!18393 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!642225 () Bool)

(declare-fun res!416112 () Bool)

(assert (=> b!642225 (=> (not res!416112) (not e!367790))))

(assert (=> b!642225 (= res!416112 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18393 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!642226 () Bool)

(assert (=> b!642226 (= e!367789 (= lt!297458 lt!297456))))

(declare-fun b!642227 () Bool)

(declare-fun e!367793 () Bool)

(assert (=> b!642227 (= e!367793 e!367798)))

(declare-fun res!416115 () Bool)

(assert (=> b!642227 (=> (not res!416115) (not e!367798))))

(assert (=> b!642227 (= res!416115 (arrayContainsKey!0 lt!297450 (select (arr!18393 a!2986) j!136) j!136))))

(declare-fun b!642228 () Bool)

(declare-fun res!416106 () Bool)

(assert (=> b!642228 (=> (not res!416106) (not e!367788))))

(assert (=> b!642228 (= res!416106 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642229 () Bool)

(declare-fun Unit!21721 () Unit!21718)

(assert (=> b!642229 (= e!367796 Unit!21721)))

(declare-fun b!642230 () Bool)

(assert (=> b!642230 (= e!367794 e!367793)))

(declare-fun res!416104 () Bool)

(assert (=> b!642230 (=> res!416104 e!367793)))

(assert (=> b!642230 (= res!416104 (or (not (= (select (arr!18393 a!2986) j!136) lt!297452)) (not (= (select (arr!18393 a!2986) j!136) lt!297451)) (bvsge j!136 index!984)))))

(assert (= (and start!58146 res!416116) b!642217))

(assert (= (and b!642217 res!416113) b!642218))

(assert (= (and b!642218 res!416119) b!642220))

(assert (= (and b!642220 res!416108) b!642228))

(assert (= (and b!642228 res!416106) b!642221))

(assert (= (and b!642221 res!416118) b!642212))

(assert (= (and b!642212 res!416114) b!642223))

(assert (= (and b!642223 res!416110) b!642225))

(assert (= (and b!642225 res!416112) b!642216))

(assert (= (and b!642216 res!416105) b!642219))

(assert (= (and b!642219 res!416107) b!642213))

(assert (= (and b!642213 res!416111) b!642226))

(assert (= (and b!642213 c!73421) b!642215))

(assert (= (and b!642213 (not c!73421)) b!642229))

(assert (= (and b!642213 (not res!416117)) b!642224))

(assert (= (and b!642224 res!416120) b!642230))

(assert (= (and b!642230 (not res!416104)) b!642227))

(assert (= (and b!642227 res!416115) b!642214))

(assert (= (and b!642224 (not res!416109)) b!642222))

(declare-fun m!616059 () Bool)

(assert (=> b!642225 m!616059))

(declare-fun m!616061 () Bool)

(assert (=> b!642223 m!616061))

(declare-fun m!616063 () Bool)

(assert (=> b!642218 m!616063))

(assert (=> b!642218 m!616063))

(declare-fun m!616065 () Bool)

(assert (=> b!642218 m!616065))

(declare-fun m!616067 () Bool)

(assert (=> b!642216 m!616067))

(declare-fun m!616069 () Bool)

(assert (=> b!642216 m!616069))

(declare-fun m!616071 () Bool)

(assert (=> b!642221 m!616071))

(assert (=> b!642227 m!616063))

(assert (=> b!642227 m!616063))

(declare-fun m!616073 () Bool)

(assert (=> b!642227 m!616073))

(assert (=> b!642230 m!616063))

(declare-fun m!616075 () Bool)

(assert (=> b!642212 m!616075))

(assert (=> b!642214 m!616063))

(assert (=> b!642214 m!616063))

(declare-fun m!616077 () Bool)

(assert (=> b!642214 m!616077))

(declare-fun m!616079 () Bool)

(assert (=> b!642219 m!616079))

(assert (=> b!642219 m!616063))

(assert (=> b!642219 m!616063))

(declare-fun m!616081 () Bool)

(assert (=> b!642219 m!616081))

(declare-fun m!616083 () Bool)

(assert (=> b!642228 m!616083))

(assert (=> b!642222 m!616063))

(declare-fun m!616085 () Bool)

(assert (=> b!642222 m!616085))

(assert (=> b!642222 m!616063))

(declare-fun m!616087 () Bool)

(assert (=> b!642222 m!616087))

(declare-fun m!616089 () Bool)

(assert (=> b!642222 m!616089))

(assert (=> b!642222 m!616063))

(declare-fun m!616091 () Bool)

(assert (=> b!642222 m!616091))

(assert (=> b!642222 m!616063))

(declare-fun m!616093 () Bool)

(assert (=> b!642222 m!616093))

(declare-fun m!616095 () Bool)

(assert (=> b!642222 m!616095))

(declare-fun m!616097 () Bool)

(assert (=> b!642222 m!616097))

(declare-fun m!616099 () Bool)

(assert (=> start!58146 m!616099))

(declare-fun m!616101 () Bool)

(assert (=> start!58146 m!616101))

(declare-fun m!616103 () Bool)

(assert (=> b!642220 m!616103))

(assert (=> b!642224 m!616063))

(assert (=> b!642224 m!616067))

(declare-fun m!616105 () Bool)

(assert (=> b!642224 m!616105))

(declare-fun m!616107 () Bool)

(assert (=> b!642213 m!616107))

(declare-fun m!616109 () Bool)

(assert (=> b!642213 m!616109))

(assert (=> b!642213 m!616063))

(assert (=> b!642213 m!616067))

(declare-fun m!616111 () Bool)

(assert (=> b!642213 m!616111))

(declare-fun m!616113 () Bool)

(assert (=> b!642213 m!616113))

(assert (=> b!642213 m!616063))

(declare-fun m!616115 () Bool)

(assert (=> b!642213 m!616115))

(declare-fun m!616117 () Bool)

(assert (=> b!642213 m!616117))

(push 1)

