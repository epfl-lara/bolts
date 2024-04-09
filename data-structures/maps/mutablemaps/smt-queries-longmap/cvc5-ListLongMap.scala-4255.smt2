; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59016 () Bool)

(assert start!59016)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38553 0))(
  ( (array!38554 (arr!18477 (Array (_ BitVec 32) (_ BitVec 64))) (size!18841 (_ BitVec 32))) )
))
(declare-fun lt!302703 () array!38553)

(declare-fun b!650968 () Bool)

(declare-fun e!373530 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38553)

(declare-fun arrayContainsKey!0 (array!38553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650968 (= e!373530 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) index!984))))

(declare-fun b!650969 () Bool)

(declare-fun res!422198 () Bool)

(declare-fun e!373531 () Bool)

(assert (=> b!650969 (=> (not res!422198) (not e!373531))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650969 (= res!422198 (validKeyInArray!0 (select (arr!18477 a!2986) j!136)))))

(declare-fun b!650970 () Bool)

(declare-fun e!373524 () Bool)

(declare-fun e!373535 () Bool)

(assert (=> b!650970 (= e!373524 (not e!373535))))

(declare-fun res!422186 () Bool)

(assert (=> b!650970 (=> res!422186 e!373535)))

(declare-datatypes ((SeekEntryResult!6924 0))(
  ( (MissingZero!6924 (index!30045 (_ BitVec 32))) (Found!6924 (index!30046 (_ BitVec 32))) (Intermediate!6924 (undefined!7736 Bool) (index!30047 (_ BitVec 32)) (x!58859 (_ BitVec 32))) (Undefined!6924) (MissingVacant!6924 (index!30048 (_ BitVec 32))) )
))
(declare-fun lt!302701 () SeekEntryResult!6924)

(assert (=> b!650970 (= res!422186 (not (= lt!302701 (Found!6924 index!984))))))

(declare-datatypes ((Unit!22216 0))(
  ( (Unit!22217) )
))
(declare-fun lt!302702 () Unit!22216)

(declare-fun e!373533 () Unit!22216)

(assert (=> b!650970 (= lt!302702 e!373533)))

(declare-fun c!74759 () Bool)

(assert (=> b!650970 (= c!74759 (= lt!302701 Undefined!6924))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!302693 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38553 (_ BitVec 32)) SeekEntryResult!6924)

(assert (=> b!650970 (= lt!302701 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302693 lt!302703 mask!3053))))

(declare-fun e!373523 () Bool)

(assert (=> b!650970 e!373523))

(declare-fun res!422204 () Bool)

(assert (=> b!650970 (=> (not res!422204) (not e!373523))))

(declare-fun lt!302706 () (_ BitVec 32))

(declare-fun lt!302694 () SeekEntryResult!6924)

(assert (=> b!650970 (= res!422204 (= lt!302694 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 lt!302693 lt!302703 mask!3053)))))

(assert (=> b!650970 (= lt!302694 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 (select (arr!18477 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!650970 (= lt!302693 (select (store (arr!18477 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302698 () Unit!22216)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38553 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22216)

(assert (=> b!650970 (= lt!302698 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650970 (= lt!302706 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650971 () Bool)

(declare-fun Unit!22218 () Unit!22216)

(assert (=> b!650971 (= e!373533 Unit!22218)))

(assert (=> b!650971 false))

(declare-fun b!650972 () Bool)

(declare-fun lt!302689 () SeekEntryResult!6924)

(assert (=> b!650972 (= e!373523 (= lt!302689 lt!302694))))

(declare-fun b!650973 () Bool)

(declare-fun e!373536 () Bool)

(assert (=> b!650973 (= e!373535 e!373536)))

(declare-fun res!422187 () Bool)

(assert (=> b!650973 (=> res!422187 e!373536)))

(declare-fun lt!302700 () (_ BitVec 64))

(assert (=> b!650973 (= res!422187 (or (not (= (select (arr!18477 a!2986) j!136) lt!302693)) (not (= (select (arr!18477 a!2986) j!136) lt!302700))))))

(declare-fun e!373537 () Bool)

(assert (=> b!650973 e!373537))

(declare-fun res!422193 () Bool)

(assert (=> b!650973 (=> (not res!422193) (not e!373537))))

(assert (=> b!650973 (= res!422193 (= lt!302700 (select (arr!18477 a!2986) j!136)))))

(assert (=> b!650973 (= lt!302700 (select (store (arr!18477 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650974 () Bool)

(declare-fun res!422191 () Bool)

(declare-fun e!373534 () Bool)

(assert (=> b!650974 (=> (not res!422191) (not e!373534))))

(declare-datatypes ((List!12571 0))(
  ( (Nil!12568) (Cons!12567 (h!13612 (_ BitVec 64)) (t!18807 List!12571)) )
))
(declare-fun arrayNoDuplicates!0 (array!38553 (_ BitVec 32) List!12571) Bool)

(assert (=> b!650974 (= res!422191 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12568))))

(declare-fun b!650975 () Bool)

(declare-fun res!422195 () Bool)

(assert (=> b!650975 (=> (not res!422195) (not e!373531))))

(assert (=> b!650975 (= res!422195 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650976 () Bool)

(declare-fun e!373526 () Bool)

(assert (=> b!650976 (= e!373526 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) index!984))))

(declare-fun b!650977 () Bool)

(declare-fun res!422196 () Bool)

(assert (=> b!650977 (=> (not res!422196) (not e!373534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38553 (_ BitVec 32)) Bool)

(assert (=> b!650977 (= res!422196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650978 () Bool)

(declare-fun Unit!22219 () Unit!22216)

(assert (=> b!650978 (= e!373533 Unit!22219)))

(declare-fun b!650979 () Bool)

(declare-fun e!373527 () Unit!22216)

(declare-fun Unit!22220 () Unit!22216)

(assert (=> b!650979 (= e!373527 Unit!22220)))

(declare-fun b!650980 () Bool)

(declare-fun e!373532 () Bool)

(assert (=> b!650980 (= e!373537 e!373532)))

(declare-fun res!422188 () Bool)

(assert (=> b!650980 (=> res!422188 e!373532)))

(assert (=> b!650980 (= res!422188 (or (not (= (select (arr!18477 a!2986) j!136) lt!302693)) (not (= (select (arr!18477 a!2986) j!136) lt!302700)) (bvsge j!136 index!984)))))

(declare-fun b!650981 () Bool)

(declare-fun res!422189 () Bool)

(assert (=> b!650981 (=> (not res!422189) (not e!373531))))

(assert (=> b!650981 (= res!422189 (validKeyInArray!0 k!1786))))

(declare-fun b!650982 () Bool)

(declare-fun e!373525 () Bool)

(assert (=> b!650982 (= e!373534 e!373525)))

(declare-fun res!422190 () Bool)

(assert (=> b!650982 (=> (not res!422190) (not e!373525))))

(assert (=> b!650982 (= res!422190 (= (select (store (arr!18477 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650982 (= lt!302703 (array!38554 (store (arr!18477 a!2986) i!1108 k!1786) (size!18841 a!2986)))))

(declare-fun b!650983 () Bool)

(declare-fun Unit!22221 () Unit!22216)

(assert (=> b!650983 (= e!373527 Unit!22221)))

(declare-fun lt!302691 () Unit!22216)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22216)

(assert (=> b!650983 (= lt!302691 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302703 (select (arr!18477 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650983 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302690 () Unit!22216)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12571) Unit!22216)

(assert (=> b!650983 (= lt!302690 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12568))))

(assert (=> b!650983 (arrayNoDuplicates!0 lt!302703 #b00000000000000000000000000000000 Nil!12568)))

(declare-fun lt!302695 () Unit!22216)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38553 (_ BitVec 32) (_ BitVec 32)) Unit!22216)

(assert (=> b!650983 (= lt!302695 (lemmaNoDuplicateFromThenFromBigger!0 lt!302703 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650983 (arrayNoDuplicates!0 lt!302703 j!136 Nil!12568)))

(declare-fun lt!302697 () Unit!22216)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38553 (_ BitVec 64) (_ BitVec 32) List!12571) Unit!22216)

(assert (=> b!650983 (= lt!302697 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302703 (select (arr!18477 a!2986) j!136) j!136 Nil!12568))))

(assert (=> b!650983 false))

(declare-fun b!650984 () Bool)

(assert (=> b!650984 (= e!373525 e!373524)))

(declare-fun res!422194 () Bool)

(assert (=> b!650984 (=> (not res!422194) (not e!373524))))

(assert (=> b!650984 (= res!422194 (and (= lt!302689 (Found!6924 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18477 a!2986) index!984) (select (arr!18477 a!2986) j!136))) (not (= (select (arr!18477 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650984 (= lt!302689 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18477 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650985 () Bool)

(declare-fun res!422199 () Bool)

(assert (=> b!650985 (=> (not res!422199) (not e!373531))))

(assert (=> b!650985 (= res!422199 (and (= (size!18841 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18841 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18841 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650986 () Bool)

(assert (=> b!650986 (= e!373532 e!373530)))

(declare-fun res!422197 () Bool)

(assert (=> b!650986 (=> (not res!422197) (not e!373530))))

(assert (=> b!650986 (= res!422197 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) j!136))))

(declare-fun b!650987 () Bool)

(assert (=> b!650987 (= e!373531 e!373534)))

(declare-fun res!422202 () Bool)

(assert (=> b!650987 (=> (not res!422202) (not e!373534))))

(declare-fun lt!302699 () SeekEntryResult!6924)

(assert (=> b!650987 (= res!422202 (or (= lt!302699 (MissingZero!6924 i!1108)) (= lt!302699 (MissingVacant!6924 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38553 (_ BitVec 32)) SeekEntryResult!6924)

(assert (=> b!650987 (= lt!302699 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650988 () Bool)

(declare-fun e!373529 () Bool)

(assert (=> b!650988 (= e!373529 (bvslt (size!18841 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!650988 (arrayNoDuplicates!0 lt!302703 index!984 Nil!12568)))

(declare-fun lt!302704 () Unit!22216)

(assert (=> b!650988 (= lt!302704 (lemmaNoDuplicateFromThenFromBigger!0 lt!302703 #b00000000000000000000000000000000 index!984))))

(assert (=> b!650988 (arrayNoDuplicates!0 lt!302703 #b00000000000000000000000000000000 Nil!12568)))

(declare-fun lt!302696 () Unit!22216)

(assert (=> b!650988 (= lt!302696 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12568))))

(assert (=> b!650988 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302705 () Unit!22216)

(assert (=> b!650988 (= lt!302705 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302703 (select (arr!18477 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650988 e!373526))

(declare-fun res!422203 () Bool)

(assert (=> b!650988 (=> (not res!422203) (not e!373526))))

(assert (=> b!650988 (= res!422203 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) j!136))))

(declare-fun b!650989 () Bool)

(assert (=> b!650989 (= e!373536 e!373529)))

(declare-fun res!422200 () Bool)

(assert (=> b!650989 (=> res!422200 e!373529)))

(assert (=> b!650989 (= res!422200 (bvsge index!984 j!136))))

(declare-fun lt!302692 () Unit!22216)

(assert (=> b!650989 (= lt!302692 e!373527)))

(declare-fun c!74758 () Bool)

(assert (=> b!650989 (= c!74758 (bvslt j!136 index!984))))

(declare-fun b!650990 () Bool)

(declare-fun res!422201 () Bool)

(assert (=> b!650990 (=> (not res!422201) (not e!373534))))

(assert (=> b!650990 (= res!422201 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18477 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!422192 () Bool)

(assert (=> start!59016 (=> (not res!422192) (not e!373531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59016 (= res!422192 (validMask!0 mask!3053))))

(assert (=> start!59016 e!373531))

(assert (=> start!59016 true))

(declare-fun array_inv!14251 (array!38553) Bool)

(assert (=> start!59016 (array_inv!14251 a!2986)))

(assert (= (and start!59016 res!422192) b!650985))

(assert (= (and b!650985 res!422199) b!650969))

(assert (= (and b!650969 res!422198) b!650981))

(assert (= (and b!650981 res!422189) b!650975))

(assert (= (and b!650975 res!422195) b!650987))

(assert (= (and b!650987 res!422202) b!650977))

(assert (= (and b!650977 res!422196) b!650974))

(assert (= (and b!650974 res!422191) b!650990))

(assert (= (and b!650990 res!422201) b!650982))

(assert (= (and b!650982 res!422190) b!650984))

(assert (= (and b!650984 res!422194) b!650970))

(assert (= (and b!650970 res!422204) b!650972))

(assert (= (and b!650970 c!74759) b!650971))

(assert (= (and b!650970 (not c!74759)) b!650978))

(assert (= (and b!650970 (not res!422186)) b!650973))

(assert (= (and b!650973 res!422193) b!650980))

(assert (= (and b!650980 (not res!422188)) b!650986))

(assert (= (and b!650986 res!422197) b!650968))

(assert (= (and b!650973 (not res!422187)) b!650989))

(assert (= (and b!650989 c!74758) b!650983))

(assert (= (and b!650989 (not c!74758)) b!650979))

(assert (= (and b!650989 (not res!422200)) b!650988))

(assert (= (and b!650988 res!422203) b!650976))

(declare-fun m!624189 () Bool)

(assert (=> b!650974 m!624189))

(declare-fun m!624191 () Bool)

(assert (=> b!650970 m!624191))

(declare-fun m!624193 () Bool)

(assert (=> b!650970 m!624193))

(declare-fun m!624195 () Bool)

(assert (=> b!650970 m!624195))

(declare-fun m!624197 () Bool)

(assert (=> b!650970 m!624197))

(declare-fun m!624199 () Bool)

(assert (=> b!650970 m!624199))

(declare-fun m!624201 () Bool)

(assert (=> b!650970 m!624201))

(declare-fun m!624203 () Bool)

(assert (=> b!650970 m!624203))

(assert (=> b!650970 m!624193))

(declare-fun m!624205 () Bool)

(assert (=> b!650970 m!624205))

(declare-fun m!624207 () Bool)

(assert (=> b!650977 m!624207))

(declare-fun m!624209 () Bool)

(assert (=> b!650987 m!624209))

(assert (=> b!650982 m!624197))

(declare-fun m!624211 () Bool)

(assert (=> b!650982 m!624211))

(assert (=> b!650969 m!624193))

(assert (=> b!650969 m!624193))

(declare-fun m!624213 () Bool)

(assert (=> b!650969 m!624213))

(declare-fun m!624215 () Bool)

(assert (=> b!650990 m!624215))

(assert (=> b!650973 m!624193))

(assert (=> b!650973 m!624197))

(declare-fun m!624217 () Bool)

(assert (=> b!650973 m!624217))

(declare-fun m!624219 () Bool)

(assert (=> b!650983 m!624219))

(assert (=> b!650983 m!624193))

(declare-fun m!624221 () Bool)

(assert (=> b!650983 m!624221))

(assert (=> b!650983 m!624193))

(declare-fun m!624223 () Bool)

(assert (=> b!650983 m!624223))

(assert (=> b!650983 m!624193))

(declare-fun m!624225 () Bool)

(assert (=> b!650983 m!624225))

(declare-fun m!624227 () Bool)

(assert (=> b!650983 m!624227))

(assert (=> b!650983 m!624193))

(declare-fun m!624229 () Bool)

(assert (=> b!650983 m!624229))

(declare-fun m!624231 () Bool)

(assert (=> b!650983 m!624231))

(assert (=> b!650986 m!624193))

(assert (=> b!650986 m!624193))

(declare-fun m!624233 () Bool)

(assert (=> b!650986 m!624233))

(declare-fun m!624235 () Bool)

(assert (=> b!650984 m!624235))

(assert (=> b!650984 m!624193))

(assert (=> b!650984 m!624193))

(declare-fun m!624237 () Bool)

(assert (=> b!650984 m!624237))

(assert (=> b!650968 m!624193))

(assert (=> b!650968 m!624193))

(declare-fun m!624239 () Bool)

(assert (=> b!650968 m!624239))

(declare-fun m!624241 () Bool)

(assert (=> start!59016 m!624241))

(declare-fun m!624243 () Bool)

(assert (=> start!59016 m!624243))

(declare-fun m!624245 () Bool)

(assert (=> b!650975 m!624245))

(assert (=> b!650976 m!624193))

(assert (=> b!650976 m!624193))

(assert (=> b!650976 m!624239))

(assert (=> b!650988 m!624219))

(assert (=> b!650988 m!624193))

(assert (=> b!650988 m!624233))

(assert (=> b!650988 m!624193))

(assert (=> b!650988 m!624193))

(declare-fun m!624247 () Bool)

(assert (=> b!650988 m!624247))

(declare-fun m!624249 () Bool)

(assert (=> b!650988 m!624249))

(assert (=> b!650988 m!624193))

(declare-fun m!624251 () Bool)

(assert (=> b!650988 m!624251))

(declare-fun m!624253 () Bool)

(assert (=> b!650988 m!624253))

(assert (=> b!650988 m!624231))

(declare-fun m!624255 () Bool)

(assert (=> b!650981 m!624255))

(assert (=> b!650980 m!624193))

(push 1)

(assert (not b!650969))

(assert (not b!650986))

(assert (not b!650987))

(assert (not b!650976))

(assert (not start!59016))

(assert (not b!650970))

(assert (not b!650988))

(assert (not b!650983))

(assert (not b!650977))

(assert (not b!650984))

(assert (not b!650981))

(assert (not b!650975))

(assert (not b!650968))

(assert (not b!650974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91941 () Bool)

(assert (=> d!91941 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!650981 d!91941))

(declare-fun b!651235 () Bool)

(declare-fun e!373700 () SeekEntryResult!6924)

(declare-fun e!373701 () SeekEntryResult!6924)

(assert (=> b!651235 (= e!373700 e!373701)))

(declare-fun c!74805 () Bool)

(declare-fun lt!302853 () (_ BitVec 64))

(assert (=> b!651235 (= c!74805 (= lt!302853 lt!302693))))

(declare-fun b!651236 () Bool)

(declare-fun e!373702 () SeekEntryResult!6924)

(assert (=> b!651236 (= e!373702 (MissingVacant!6924 vacantSpotIndex!68))))

(declare-fun b!651237 () Bool)

(assert (=> b!651237 (= e!373702 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!302693 lt!302703 mask!3053))))

(declare-fun d!91945 () Bool)

(declare-fun lt!302854 () SeekEntryResult!6924)

(assert (=> d!91945 (and (or (is-Undefined!6924 lt!302854) (not (is-Found!6924 lt!302854)) (and (bvsge (index!30046 lt!302854) #b00000000000000000000000000000000) (bvslt (index!30046 lt!302854) (size!18841 lt!302703)))) (or (is-Undefined!6924 lt!302854) (is-Found!6924 lt!302854) (not (is-MissingVacant!6924 lt!302854)) (not (= (index!30048 lt!302854) vacantSpotIndex!68)) (and (bvsge (index!30048 lt!302854) #b00000000000000000000000000000000) (bvslt (index!30048 lt!302854) (size!18841 lt!302703)))) (or (is-Undefined!6924 lt!302854) (ite (is-Found!6924 lt!302854) (= (select (arr!18477 lt!302703) (index!30046 lt!302854)) lt!302693) (and (is-MissingVacant!6924 lt!302854) (= (index!30048 lt!302854) vacantSpotIndex!68) (= (select (arr!18477 lt!302703) (index!30048 lt!302854)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91945 (= lt!302854 e!373700)))

(declare-fun c!74807 () Bool)

(assert (=> d!91945 (= c!74807 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91945 (= lt!302853 (select (arr!18477 lt!302703) index!984))))

(assert (=> d!91945 (validMask!0 mask!3053)))

(assert (=> d!91945 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302693 lt!302703 mask!3053) lt!302854)))

(declare-fun b!651234 () Bool)

(declare-fun c!74806 () Bool)

(assert (=> b!651234 (= c!74806 (= lt!302853 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651234 (= e!373701 e!373702)))

(declare-fun b!651238 () Bool)

(assert (=> b!651238 (= e!373701 (Found!6924 index!984))))

(declare-fun b!651239 () Bool)

(assert (=> b!651239 (= e!373700 Undefined!6924)))

(assert (= (and d!91945 c!74807) b!651239))

(assert (= (and d!91945 (not c!74807)) b!651235))

(assert (= (and b!651235 c!74805) b!651238))

(assert (= (and b!651235 (not c!74805)) b!651234))

(assert (= (and b!651234 c!74806) b!651236))

(assert (= (and b!651234 (not c!74806)) b!651237))

(assert (=> b!651237 m!624191))

(assert (=> b!651237 m!624191))

(declare-fun m!624483 () Bool)

(assert (=> b!651237 m!624483))

(declare-fun m!624485 () Bool)

(assert (=> d!91945 m!624485))

(declare-fun m!624487 () Bool)

(assert (=> d!91945 m!624487))

(declare-fun m!624489 () Bool)

(assert (=> d!91945 m!624489))

(assert (=> d!91945 m!624241))

(assert (=> b!650970 d!91945))

(declare-fun b!651247 () Bool)

(declare-fun e!373706 () SeekEntryResult!6924)

(declare-fun e!373707 () SeekEntryResult!6924)

(assert (=> b!651247 (= e!373706 e!373707)))

(declare-fun c!74811 () Bool)

(declare-fun lt!302857 () (_ BitVec 64))

(assert (=> b!651247 (= c!74811 (= lt!302857 lt!302693))))

(declare-fun b!651248 () Bool)

(declare-fun e!373708 () SeekEntryResult!6924)

(assert (=> b!651248 (= e!373708 (MissingVacant!6924 vacantSpotIndex!68))))

(declare-fun b!651249 () Bool)

(assert (=> b!651249 (= e!373708 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!302706 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!302693 lt!302703 mask!3053))))

(declare-fun d!91977 () Bool)

(declare-fun lt!302858 () SeekEntryResult!6924)

(assert (=> d!91977 (and (or (is-Undefined!6924 lt!302858) (not (is-Found!6924 lt!302858)) (and (bvsge (index!30046 lt!302858) #b00000000000000000000000000000000) (bvslt (index!30046 lt!302858) (size!18841 lt!302703)))) (or (is-Undefined!6924 lt!302858) (is-Found!6924 lt!302858) (not (is-MissingVacant!6924 lt!302858)) (not (= (index!30048 lt!302858) vacantSpotIndex!68)) (and (bvsge (index!30048 lt!302858) #b00000000000000000000000000000000) (bvslt (index!30048 lt!302858) (size!18841 lt!302703)))) (or (is-Undefined!6924 lt!302858) (ite (is-Found!6924 lt!302858) (= (select (arr!18477 lt!302703) (index!30046 lt!302858)) lt!302693) (and (is-MissingVacant!6924 lt!302858) (= (index!30048 lt!302858) vacantSpotIndex!68) (= (select (arr!18477 lt!302703) (index!30048 lt!302858)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91977 (= lt!302858 e!373706)))

(declare-fun c!74813 () Bool)

(assert (=> d!91977 (= c!74813 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91977 (= lt!302857 (select (arr!18477 lt!302703) lt!302706))))

(assert (=> d!91977 (validMask!0 mask!3053)))

(assert (=> d!91977 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 lt!302693 lt!302703 mask!3053) lt!302858)))

(declare-fun b!651246 () Bool)

(declare-fun c!74812 () Bool)

(assert (=> b!651246 (= c!74812 (= lt!302857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651246 (= e!373707 e!373708)))

(declare-fun b!651250 () Bool)

(assert (=> b!651250 (= e!373707 (Found!6924 lt!302706))))

(declare-fun b!651251 () Bool)

(assert (=> b!651251 (= e!373706 Undefined!6924)))

(assert (= (and d!91977 c!74813) b!651251))

(assert (= (and d!91977 (not c!74813)) b!651247))

(assert (= (and b!651247 c!74811) b!651250))

(assert (= (and b!651247 (not c!74811)) b!651246))

(assert (= (and b!651246 c!74812) b!651248))

(assert (= (and b!651246 (not c!74812)) b!651249))

(declare-fun m!624501 () Bool)

(assert (=> b!651249 m!624501))

(assert (=> b!651249 m!624501))

(declare-fun m!624503 () Bool)

(assert (=> b!651249 m!624503))

(declare-fun m!624505 () Bool)

(assert (=> d!91977 m!624505))

(declare-fun m!624507 () Bool)

(assert (=> d!91977 m!624507))

(declare-fun m!624509 () Bool)

(assert (=> d!91977 m!624509))

(assert (=> d!91977 m!624241))

(assert (=> b!650970 d!91977))

(declare-fun d!91981 () Bool)

(declare-fun lt!302863 () (_ BitVec 32))

(assert (=> d!91981 (and (bvsge lt!302863 #b00000000000000000000000000000000) (bvslt lt!302863 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91981 (= lt!302863 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91981 (validMask!0 mask!3053)))

(assert (=> d!91981 (= (nextIndex!0 index!984 x!910 mask!3053) lt!302863)))

(declare-fun bs!19421 () Bool)

(assert (= bs!19421 d!91981))

(declare-fun m!624519 () Bool)

(assert (=> bs!19421 m!624519))

(assert (=> bs!19421 m!624241))

(assert (=> b!650970 d!91981))

(declare-fun d!91985 () Bool)

(declare-fun e!373733 () Bool)

(assert (=> d!91985 e!373733))

(declare-fun res!422374 () Bool)

(assert (=> d!91985 (=> (not res!422374) (not e!373733))))

(assert (=> d!91985 (= res!422374 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18841 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18841 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18841 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18841 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18841 a!2986))))))

(declare-fun lt!302877 () Unit!22216)

(declare-fun choose!9 (array!38553 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22216)

(assert (=> d!91985 (= lt!302877 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91985 (validMask!0 mask!3053)))

(assert (=> d!91985 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 mask!3053) lt!302877)))

(declare-fun b!651284 () Bool)

(assert (=> b!651284 (= e!373733 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 (select (arr!18477 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 (select (store (arr!18477 a!2986) i!1108 k!1786) j!136) (array!38554 (store (arr!18477 a!2986) i!1108 k!1786) (size!18841 a!2986)) mask!3053)))))

(assert (= (and d!91985 res!422374) b!651284))

(declare-fun m!624531 () Bool)

(assert (=> d!91985 m!624531))

(assert (=> d!91985 m!624241))

(assert (=> b!651284 m!624197))

(assert (=> b!651284 m!624203))

(declare-fun m!624533 () Bool)

(assert (=> b!651284 m!624533))

(assert (=> b!651284 m!624193))

(assert (=> b!651284 m!624205))

(assert (=> b!651284 m!624193))

(assert (=> b!651284 m!624203))

(assert (=> b!650970 d!91985))

(declare-fun b!651286 () Bool)

(declare-fun e!373734 () SeekEntryResult!6924)

(declare-fun e!373735 () SeekEntryResult!6924)

(assert (=> b!651286 (= e!373734 e!373735)))

(declare-fun lt!302878 () (_ BitVec 64))

(declare-fun c!74822 () Bool)

(assert (=> b!651286 (= c!74822 (= lt!302878 (select (arr!18477 a!2986) j!136)))))

(declare-fun b!651287 () Bool)

(declare-fun e!373736 () SeekEntryResult!6924)

(assert (=> b!651287 (= e!373736 (MissingVacant!6924 vacantSpotIndex!68))))

(declare-fun b!651288 () Bool)

(assert (=> b!651288 (= e!373736 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!302706 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18477 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!302879 () SeekEntryResult!6924)

(declare-fun d!91989 () Bool)

(assert (=> d!91989 (and (or (is-Undefined!6924 lt!302879) (not (is-Found!6924 lt!302879)) (and (bvsge (index!30046 lt!302879) #b00000000000000000000000000000000) (bvslt (index!30046 lt!302879) (size!18841 a!2986)))) (or (is-Undefined!6924 lt!302879) (is-Found!6924 lt!302879) (not (is-MissingVacant!6924 lt!302879)) (not (= (index!30048 lt!302879) vacantSpotIndex!68)) (and (bvsge (index!30048 lt!302879) #b00000000000000000000000000000000) (bvslt (index!30048 lt!302879) (size!18841 a!2986)))) (or (is-Undefined!6924 lt!302879) (ite (is-Found!6924 lt!302879) (= (select (arr!18477 a!2986) (index!30046 lt!302879)) (select (arr!18477 a!2986) j!136)) (and (is-MissingVacant!6924 lt!302879) (= (index!30048 lt!302879) vacantSpotIndex!68) (= (select (arr!18477 a!2986) (index!30048 lt!302879)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91989 (= lt!302879 e!373734)))

(declare-fun c!74824 () Bool)

(assert (=> d!91989 (= c!74824 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91989 (= lt!302878 (select (arr!18477 a!2986) lt!302706))))

(assert (=> d!91989 (validMask!0 mask!3053)))

(assert (=> d!91989 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302706 vacantSpotIndex!68 (select (arr!18477 a!2986) j!136) a!2986 mask!3053) lt!302879)))

(declare-fun b!651285 () Bool)

(declare-fun c!74823 () Bool)

(assert (=> b!651285 (= c!74823 (= lt!302878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651285 (= e!373735 e!373736)))

(declare-fun b!651289 () Bool)

(assert (=> b!651289 (= e!373735 (Found!6924 lt!302706))))

(declare-fun b!651290 () Bool)

(assert (=> b!651290 (= e!373734 Undefined!6924)))

(assert (= (and d!91989 c!74824) b!651290))

(assert (= (and d!91989 (not c!74824)) b!651286))

(assert (= (and b!651286 c!74822) b!651289))

(assert (= (and b!651286 (not c!74822)) b!651285))

(assert (= (and b!651285 c!74823) b!651287))

(assert (= (and b!651285 (not c!74823)) b!651288))

(assert (=> b!651288 m!624501))

(assert (=> b!651288 m!624501))

(assert (=> b!651288 m!624193))

(declare-fun m!624535 () Bool)

(assert (=> b!651288 m!624535))

(declare-fun m!624537 () Bool)

(assert (=> d!91989 m!624537))

(declare-fun m!624539 () Bool)

(assert (=> d!91989 m!624539))

(declare-fun m!624541 () Bool)

(assert (=> d!91989 m!624541))

(assert (=> d!91989 m!624241))

(assert (=> b!650970 d!91989))

(declare-fun b!651298 () Bool)

(declare-fun e!373742 () SeekEntryResult!6924)

(declare-fun e!373743 () SeekEntryResult!6924)

(assert (=> b!651298 (= e!373742 e!373743)))

(declare-fun c!74826 () Bool)

(declare-fun lt!302881 () (_ BitVec 64))

(assert (=> b!651298 (= c!74826 (= lt!302881 (select (arr!18477 a!2986) j!136)))))

(declare-fun b!651299 () Bool)

(declare-fun e!373744 () SeekEntryResult!6924)

(assert (=> b!651299 (= e!373744 (MissingVacant!6924 vacantSpotIndex!68))))

(declare-fun b!651300 () Bool)

(assert (=> b!651300 (= e!373744 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18477 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!91991 () Bool)

(declare-fun lt!302882 () SeekEntryResult!6924)

(assert (=> d!91991 (and (or (is-Undefined!6924 lt!302882) (not (is-Found!6924 lt!302882)) (and (bvsge (index!30046 lt!302882) #b00000000000000000000000000000000) (bvslt (index!30046 lt!302882) (size!18841 a!2986)))) (or (is-Undefined!6924 lt!302882) (is-Found!6924 lt!302882) (not (is-MissingVacant!6924 lt!302882)) (not (= (index!30048 lt!302882) vacantSpotIndex!68)) (and (bvsge (index!30048 lt!302882) #b00000000000000000000000000000000) (bvslt (index!30048 lt!302882) (size!18841 a!2986)))) (or (is-Undefined!6924 lt!302882) (ite (is-Found!6924 lt!302882) (= (select (arr!18477 a!2986) (index!30046 lt!302882)) (select (arr!18477 a!2986) j!136)) (and (is-MissingVacant!6924 lt!302882) (= (index!30048 lt!302882) vacantSpotIndex!68) (= (select (arr!18477 a!2986) (index!30048 lt!302882)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91991 (= lt!302882 e!373742)))

(declare-fun c!74828 () Bool)

(assert (=> d!91991 (= c!74828 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91991 (= lt!302881 (select (arr!18477 a!2986) index!984))))

(assert (=> d!91991 (validMask!0 mask!3053)))

(assert (=> d!91991 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18477 a!2986) j!136) a!2986 mask!3053) lt!302882)))

(declare-fun b!651297 () Bool)

(declare-fun c!74827 () Bool)

(assert (=> b!651297 (= c!74827 (= lt!302881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651297 (= e!373743 e!373744)))

(declare-fun b!651301 () Bool)

(assert (=> b!651301 (= e!373743 (Found!6924 index!984))))

(declare-fun b!651302 () Bool)

(assert (=> b!651302 (= e!373742 Undefined!6924)))

(assert (= (and d!91991 c!74828) b!651302))

(assert (= (and d!91991 (not c!74828)) b!651298))

(assert (= (and b!651298 c!74826) b!651301))

(assert (= (and b!651298 (not c!74826)) b!651297))

(assert (= (and b!651297 c!74827) b!651299))

(assert (= (and b!651297 (not c!74827)) b!651300))

(assert (=> b!651300 m!624191))

(assert (=> b!651300 m!624191))

(assert (=> b!651300 m!624193))

(declare-fun m!624548 () Bool)

(assert (=> b!651300 m!624548))

(declare-fun m!624551 () Bool)

(assert (=> d!91991 m!624551))

(declare-fun m!624553 () Bool)

(assert (=> d!91991 m!624553))

(assert (=> d!91991 m!624235))

(assert (=> d!91991 m!624241))

(assert (=> b!650984 d!91991))

(declare-fun b!651313 () Bool)

(declare-fun e!373753 () Bool)

(declare-fun e!373754 () Bool)

(assert (=> b!651313 (= e!373753 e!373754)))

(declare-fun c!74831 () Bool)

(assert (=> b!651313 (= c!74831 (validKeyInArray!0 (select (arr!18477 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!651314 () Bool)

(declare-fun e!373756 () Bool)

(assert (=> b!651314 (= e!373756 e!373753)))

(declare-fun res!422385 () Bool)

(assert (=> b!651314 (=> (not res!422385) (not e!373753))))

(declare-fun e!373755 () Bool)

(assert (=> b!651314 (= res!422385 (not e!373755))))

(declare-fun res!422386 () Bool)

(assert (=> b!651314 (=> (not res!422386) (not e!373755))))

(assert (=> b!651314 (= res!422386 (validKeyInArray!0 (select (arr!18477 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33761 () Bool)

(declare-fun call!33764 () Bool)

(assert (=> bm!33761 (= call!33764 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74831 (Cons!12567 (select (arr!18477 a!2986) #b00000000000000000000000000000000) Nil!12568) Nil!12568)))))

(declare-fun b!651315 () Bool)

(declare-fun contains!3181 (List!12571 (_ BitVec 64)) Bool)

(assert (=> b!651315 (= e!373755 (contains!3181 Nil!12568 (select (arr!18477 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!651316 () Bool)

(assert (=> b!651316 (= e!373754 call!33764)))

(declare-fun b!651317 () Bool)

(assert (=> b!651317 (= e!373754 call!33764)))

(declare-fun d!91995 () Bool)

(declare-fun res!422387 () Bool)

(assert (=> d!91995 (=> res!422387 e!373756)))

(assert (=> d!91995 (= res!422387 (bvsge #b00000000000000000000000000000000 (size!18841 a!2986)))))

(assert (=> d!91995 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12568) e!373756)))

(assert (= (and d!91995 (not res!422387)) b!651314))

(assert (= (and b!651314 res!422386) b!651315))

(assert (= (and b!651314 res!422385) b!651313))

(assert (= (and b!651313 c!74831) b!651317))

(assert (= (and b!651313 (not c!74831)) b!651316))

(assert (= (or b!651317 b!651316) bm!33761))

(declare-fun m!624557 () Bool)

(assert (=> b!651313 m!624557))

(assert (=> b!651313 m!624557))

(declare-fun m!624559 () Bool)

(assert (=> b!651313 m!624559))

(assert (=> b!651314 m!624557))

(assert (=> b!651314 m!624557))

(assert (=> b!651314 m!624559))

(assert (=> bm!33761 m!624557))

(declare-fun m!624561 () Bool)

(assert (=> bm!33761 m!624561))

(assert (=> b!651315 m!624557))

(assert (=> b!651315 m!624557))

(declare-fun m!624563 () Bool)

(assert (=> b!651315 m!624563))

(assert (=> b!650974 d!91995))

(declare-fun d!91999 () Bool)

(assert (=> d!91999 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302885 () Unit!22216)

(declare-fun choose!114 (array!38553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22216)

(assert (=> d!91999 (= lt!302885 (choose!114 lt!302703 (select (arr!18477 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91999 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91999 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302703 (select (arr!18477 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!302885)))

(declare-fun bs!19422 () Bool)

(assert (= bs!19422 d!91999))

(assert (=> bs!19422 m!624193))

(assert (=> bs!19422 m!624229))

(assert (=> bs!19422 m!624193))

(declare-fun m!624565 () Bool)

(assert (=> bs!19422 m!624565))

(assert (=> b!650983 d!91999))

(declare-fun b!651318 () Bool)

(declare-fun e!373757 () Bool)

(declare-fun e!373758 () Bool)

(assert (=> b!651318 (= e!373757 e!373758)))

(declare-fun c!74832 () Bool)

(assert (=> b!651318 (= c!74832 (validKeyInArray!0 (select (arr!18477 lt!302703) j!136)))))

(declare-fun b!651319 () Bool)

(declare-fun e!373760 () Bool)

(assert (=> b!651319 (= e!373760 e!373757)))

(declare-fun res!422388 () Bool)

(assert (=> b!651319 (=> (not res!422388) (not e!373757))))

(declare-fun e!373759 () Bool)

(assert (=> b!651319 (= res!422388 (not e!373759))))

(declare-fun res!422389 () Bool)

(assert (=> b!651319 (=> (not res!422389) (not e!373759))))

(assert (=> b!651319 (= res!422389 (validKeyInArray!0 (select (arr!18477 lt!302703) j!136)))))

(declare-fun bm!33762 () Bool)

(declare-fun call!33765 () Bool)

(assert (=> bm!33762 (= call!33765 (arrayNoDuplicates!0 lt!302703 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74832 (Cons!12567 (select (arr!18477 lt!302703) j!136) Nil!12568) Nil!12568)))))

(declare-fun b!651320 () Bool)

(assert (=> b!651320 (= e!373759 (contains!3181 Nil!12568 (select (arr!18477 lt!302703) j!136)))))

(declare-fun b!651321 () Bool)

(assert (=> b!651321 (= e!373758 call!33765)))

(declare-fun b!651322 () Bool)

(assert (=> b!651322 (= e!373758 call!33765)))

(declare-fun d!92001 () Bool)

(declare-fun res!422390 () Bool)

(assert (=> d!92001 (=> res!422390 e!373760)))

(assert (=> d!92001 (= res!422390 (bvsge j!136 (size!18841 lt!302703)))))

(assert (=> d!92001 (= (arrayNoDuplicates!0 lt!302703 j!136 Nil!12568) e!373760)))

(assert (= (and d!92001 (not res!422390)) b!651319))

(assert (= (and b!651319 res!422389) b!651320))

(assert (= (and b!651319 res!422388) b!651318))

(assert (= (and b!651318 c!74832) b!651322))

(assert (= (and b!651318 (not c!74832)) b!651321))

(assert (= (or b!651322 b!651321) bm!33762))

(declare-fun m!624567 () Bool)

(assert (=> b!651318 m!624567))

(assert (=> b!651318 m!624567))

(declare-fun m!624569 () Bool)

(assert (=> b!651318 m!624569))

(assert (=> b!651319 m!624567))

(assert (=> b!651319 m!624567))

(assert (=> b!651319 m!624569))

(assert (=> bm!33762 m!624567))

(declare-fun m!624571 () Bool)

(assert (=> bm!33762 m!624571))

(assert (=> b!651320 m!624567))

(assert (=> b!651320 m!624567))

(declare-fun m!624573 () Bool)

(assert (=> b!651320 m!624573))

(assert (=> b!650983 d!92001))

(declare-fun d!92003 () Bool)

(assert (=> d!92003 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18841 lt!302703)) (not (= (select (arr!18477 lt!302703) j!136) (select (arr!18477 a!2986) j!136))))))

(declare-fun lt!302888 () Unit!22216)

(declare-fun choose!21 (array!38553 (_ BitVec 64) (_ BitVec 32) List!12571) Unit!22216)

(assert (=> d!92003 (= lt!302888 (choose!21 lt!302703 (select (arr!18477 a!2986) j!136) j!136 Nil!12568))))

(assert (=> d!92003 (bvslt (size!18841 lt!302703) #b01111111111111111111111111111111)))

(assert (=> d!92003 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302703 (select (arr!18477 a!2986) j!136) j!136 Nil!12568) lt!302888)))

(declare-fun bs!19423 () Bool)

(assert (= bs!19423 d!92003))

(assert (=> bs!19423 m!624567))

(assert (=> bs!19423 m!624193))

(declare-fun m!624575 () Bool)

(assert (=> bs!19423 m!624575))

(assert (=> b!650983 d!92003))

(declare-fun d!92005 () Bool)

(declare-fun res!422395 () Bool)

(declare-fun e!373771 () Bool)

(assert (=> d!92005 (=> res!422395 e!373771)))

(assert (=> d!92005 (= res!422395 (= (select (arr!18477 lt!302703) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18477 a!2986) j!136)))))

(assert (=> d!92005 (= (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!373771)))

(declare-fun b!651339 () Bool)

(declare-fun e!373772 () Bool)

(assert (=> b!651339 (= e!373771 e!373772)))

(declare-fun res!422396 () Bool)

(assert (=> b!651339 (=> (not res!422396) (not e!373772))))

(assert (=> b!651339 (= res!422396 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18841 lt!302703)))))

(declare-fun b!651340 () Bool)

(assert (=> b!651340 (= e!373772 (arrayContainsKey!0 lt!302703 (select (arr!18477 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92005 (not res!422395)) b!651339))

(assert (= (and b!651339 res!422396) b!651340))

(declare-fun m!624577 () Bool)

(assert (=> d!92005 m!624577))

(assert (=> b!651340 m!624193))

(declare-fun m!624579 () Bool)

(assert (=> b!651340 m!624579))

(assert (=> b!650983 d!92005))

(declare-fun d!92007 () Bool)

(declare-fun e!373788 () Bool)

(assert (=> d!92007 e!373788))

(declare-fun res!422403 () Bool)

(assert (=> d!92007 (=> (not res!422403) (not e!373788))))

(assert (=> d!92007 (= res!422403 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18841 a!2986))))))

(declare-fun lt!302903 () Unit!22216)

(declare-fun choose!41 (array!38553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12571) Unit!22216)

(assert (=> d!92007 (= lt!302903 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12568))))

(assert (=> d!92007 (bvslt (size!18841 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92007 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12568) lt!302903)))

(declare-fun b!651365 () Bool)

(assert (=> b!651365 (= e!373788 (arrayNoDuplicates!0 (array!38554 (store (arr!18477 a!2986) i!1108 k!1786) (size!18841 a!2986)) #b00000000000000000000000000000000 Nil!12568))))

(assert (= (and d!92007 res!422403) b!651365))

(declare-fun m!624595 () Bool)

(assert (=> d!92007 m!624595))

(assert (=> b!651365 m!624197))

(declare-fun m!624597 () Bool)

(assert (=> b!651365 m!624597))

(assert (=> b!650983 d!92007))

(declare-fun d!92015 () Bool)

(assert (=> d!92015 (arrayNoDuplicates!0 lt!302703 j!136 Nil!12568)))

(declare-fun lt!302909 () Unit!22216)

(declare-fun choose!39 (array!38553 (_ BitVec 32) (_ BitVec 32)) Unit!22216)

(assert (=> d!92015 (= lt!302909 (choose!39 lt!302703 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92015 (bvslt (size!18841 lt!302703) #b01111111111111111111111111111111)))

(assert (=> d!92015 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!302703 #b00000000000000000000000000000000 j!136) lt!302909)))

(declare-fun bs!19425 () Bool)

(assert (= bs!19425 d!92015))

(assert (=> bs!19425 m!624223))

(declare-fun m!624601 () Bool)

(assert (=> bs!19425 m!624601))

(assert (=> b!650983 d!92015))

(declare-fun b!651371 () Bool)

(declare-fun e!373793 () Bool)

(declare-fun e!373794 () Bool)

(assert (=> b!651371 (= e!373793 e!373794)))

(declare-fun c!74849 () Bool)

(assert (=> b!651371 (= c!74849 (validKeyInArray!0 (select (arr!18477 lt!302703) #b00000000000000000000000000000000)))))

(declare-fun b!651372 () Bool)

(declare-fun e!373796 () Bool)

(assert (=> b!651372 (= e!373796 e!373793)))

(declare-fun res!422407 () Bool)

(assert (=> b!651372 (=> (not res!422407) (not e!373793))))

(declare-fun e!373795 () Bool)

(assert (=> b!651372 (= res!422407 (not e!373795))))

(declare-fun res!422408 () Bool)

(assert (=> b!651372 (=> (not res!422408) (not e!373795))))

(assert (=> b!651372 (= res!422408 (validKeyInArray!0 (select (arr!18477 lt!302703) #b00000000000000000000000000000000)))))

(declare-fun bm!33764 () Bool)

(declare-fun call!33767 () Bool)

(assert (=> bm!33764 (= call!33767 (arrayNoDuplicates!0 lt!302703 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74849 (Cons!12567 (select (arr!18477 lt!302703) #b00000000000000000000000000000000) Nil!12568) Nil!12568)))))

(declare-fun b!651373 () Bool)

(assert (=> b!651373 (= e!373795 (contains!3181 Nil!12568 (select (arr!18477 lt!302703) #b00000000000000000000000000000000)))))

(declare-fun b!651374 () Bool)

(assert (=> b!651374 (= e!373794 call!33767)))

(declare-fun b!651375 () Bool)

(assert (=> b!651375 (= e!373794 call!33767)))

(declare-fun d!92019 () Bool)

(declare-fun res!422409 () Bool)

(assert (=> d!92019 (=> res!422409 e!373796)))

(assert (=> d!92019 (= res!422409 (bvsge #b00000000000000000000000000000000 (size!18841 lt!302703)))))

(assert (=> d!92019 (= (arrayNoDuplicates!0 lt!302703 #b00000000000000000000000000000000 Nil!12568) e!373796)))

(assert (= (and d!92019 (not res!422409)) b!651372))

(assert (= (and b!651372 res!422408) b!651373))

(assert (= (and b!651372 res!422407) b!651371))

(assert (= (and b!651371 c!74849) b!651375))

(assert (= (and b!651371 (not c!74849)) b!651374))

(assert (= (or b!651375 b!651374) bm!33764))

(declare-fun m!624609 () Bool)

(assert (=> b!651371 m!624609))

(assert (=> b!651371 m!624609))

(declare-fun m!624611 () Bool)

(assert (=> b!651371 m!624611))

(assert (=> b!651372 m!624609))

(assert (=> b!651372 m!624609))

(assert (=> b!651372 m!624611))

(assert (=> bm!33764 m!624609))

(declare-fun m!624613 () Bool)

(assert (=> bm!33764 m!624613))

(assert (=> b!651373 m!624609))

(assert (=> b!651373 m!624609))

(declare-fun m!624615 () Bool)

(assert (=> b!651373 m!624615))

(assert (=> b!650983 d!92019))

(declare-fun d!92023 () Bool)

(assert (=> d!92023 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59016 d!92023))

(declare-fun d!92039 () Bool)

(assert (=> d!92039 (= (array_inv!14251 a!2986) (bvsge (size!18841 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59016 d!92039))

(declare-fun b!651441 () Bool)

(declare-fun e!373841 () SeekEntryResult!6924)

(declare-fun e!373842 () SeekEntryResult!6924)

(assert (=> b!651441 (= e!373841 e!373842)))

(declare-fun lt!302948 () (_ BitVec 64))

(declare-fun lt!302947 () SeekEntryResult!6924)

(assert (=> b!651441 (= lt!302948 (select (arr!18477 a!2986) (index!30047 lt!302947)))))

(declare-fun c!74874 () Bool)

(assert (=> b!651441 (= c!74874 (= lt!302948 k!1786))))

(declare-fun d!92043 () Bool)

(declare-fun lt!302946 () SeekEntryResult!6924)

(assert (=> d!92043 (and (or (is-Undefined!6924 lt!302946) (not (is-Found!6924 lt!302946)) (and (bvsge (index!30046 lt!302946) #b00000000000000000000000000000000) (bvslt (index!30046 lt!302946) (size!18841 a!2986)))) (or (is-Undefined!6924 lt!302946) (is-Found!6924 lt!302946) (not (is-MissingZero!6924 lt!302946)) (and (bvsge (index!30045 lt!302946) #b00000000000000000000000000000000) (bvslt (index!30045 lt!302946) (size!18841 a!2986)))) (or (is-Undefined!6924 lt!302946) (is-Found!6924 lt!302946) (is-MissingZero!6924 lt!302946) (not (is-MissingVacant!6924 lt!302946)) (and (bvsge (index!30048 lt!302946) #b00000000000000000000000000000000) (bvslt (index!30048 lt!302946) (size!18841 a!2986)))) (or (is-Undefined!6924 lt!302946) (ite (is-Found!6924 lt!302946) (= (select (arr!18477 a!2986) (index!30046 lt!302946)) k!1786) (ite (is-MissingZero!6924 lt!302946) (= (select (arr!18477 a!2986) (index!30045 lt!302946)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6924 lt!302946) (= (select (arr!18477 a!2986) (index!30048 lt!302946)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92043 (= lt!302946 e!373841)))

(declare-fun c!74873 () Bool)

(assert (=> d!92043 (= c!74873 (and (is-Intermediate!6924 lt!302947) (undefined!7736 lt!302947)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38553 (_ BitVec 32)) SeekEntryResult!6924)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92043 (= lt!302947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92043 (validMask!0 mask!3053)))

(assert (=> d!92043 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!302946)))

(declare-fun b!651442 () Bool)

(declare-fun c!74872 () Bool)

(assert (=> b!651442 (= c!74872 (= lt!302948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373840 () SeekEntryResult!6924)

(assert (=> b!651442 (= e!373842 e!373840)))

(declare-fun b!651443 () Bool)

(assert (=> b!651443 (= e!373841 Undefined!6924)))

(declare-fun b!651444 () Bool)

(assert (=> b!651444 (= e!373840 (seekKeyOrZeroReturnVacant!0 (x!58859 lt!302947) (index!30047 lt!302947) (index!30047 lt!302947) k!1786 a!2986 mask!3053))))

(declare-fun b!651445 () Bool)

(assert (=> b!651445 (= e!373840 (MissingZero!6924 (index!30047 lt!302947)))))

(declare-fun b!651446 () Bool)

(assert (=> b!651446 (= e!373842 (Found!6924 (index!30047 lt!302947)))))

(assert (= (and d!92043 c!74873) b!651443))

(assert (= (and d!92043 (not c!74873)) b!651441))

(assert (= (and b!651441 c!74874) b!651446))

(assert (= (and b!651441 (not c!74874)) b!651442))

(assert (= (and b!651442 c!74872) b!651445))

(assert (= (and b!651442 (not c!74872)) b!651444))

(declare-fun m!624693 () Bool)

(assert (=> b!651441 m!624693))

(declare-fun m!624695 () Bool)

(assert (=> d!92043 m!624695))

(assert (=> d!92043 m!624241))

