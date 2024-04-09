; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59570 () Bool)

(assert start!59570)

(declare-fun b!656960 () Bool)

(declare-datatypes ((Unit!22664 0))(
  ( (Unit!22665) )
))
(declare-fun e!377393 () Unit!22664)

(declare-fun Unit!22666 () Unit!22664)

(assert (=> b!656960 (= e!377393 Unit!22666)))

(declare-fun b!656961 () Bool)

(declare-fun e!377395 () Bool)

(declare-datatypes ((SeekEntryResult!6982 0))(
  ( (MissingZero!6982 (index!30292 (_ BitVec 32))) (Found!6982 (index!30293 (_ BitVec 32))) (Intermediate!6982 (undefined!7794 Bool) (index!30294 (_ BitVec 32)) (x!59114 (_ BitVec 32))) (Undefined!6982) (MissingVacant!6982 (index!30295 (_ BitVec 32))) )
))
(declare-fun lt!306790 () SeekEntryResult!6982)

(declare-fun lt!306806 () SeekEntryResult!6982)

(assert (=> b!656961 (= e!377395 (= lt!306790 lt!306806))))

(declare-fun b!656962 () Bool)

(assert (=> b!656962 false))

(declare-fun lt!306792 () Unit!22664)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38684 0))(
  ( (array!38685 (arr!18535 (Array (_ BitVec 32) (_ BitVec 64))) (size!18899 (_ BitVec 32))) )
))
(declare-fun lt!306795 () array!38684)

(declare-fun a!2986 () array!38684)

(declare-datatypes ((List!12629 0))(
  ( (Nil!12626) (Cons!12625 (h!13670 (_ BitVec 64)) (t!18865 List!12629)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38684 (_ BitVec 64) (_ BitVec 32) List!12629) Unit!22664)

(assert (=> b!656962 (= lt!306792 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306795 (select (arr!18535 a!2986) j!136) j!136 Nil!12626))))

(declare-fun arrayNoDuplicates!0 (array!38684 (_ BitVec 32) List!12629) Bool)

(assert (=> b!656962 (arrayNoDuplicates!0 lt!306795 j!136 Nil!12626)))

(declare-fun lt!306807 () Unit!22664)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38684 (_ BitVec 32) (_ BitVec 32)) Unit!22664)

(assert (=> b!656962 (= lt!306807 (lemmaNoDuplicateFromThenFromBigger!0 lt!306795 #b00000000000000000000000000000000 j!136))))

(assert (=> b!656962 (arrayNoDuplicates!0 lt!306795 #b00000000000000000000000000000000 Nil!12626)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!306796 () Unit!22664)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38684 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12629) Unit!22664)

(assert (=> b!656962 (= lt!306796 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12626))))

(declare-fun arrayContainsKey!0 (array!38684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!656962 (arrayContainsKey!0 lt!306795 (select (arr!18535 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306800 () Unit!22664)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38684 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22664)

(assert (=> b!656962 (= lt!306800 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306795 (select (arr!18535 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377394 () Unit!22664)

(declare-fun Unit!22667 () Unit!22664)

(assert (=> b!656962 (= e!377394 Unit!22667)))

(declare-fun e!377386 () Bool)

(declare-fun b!656963 () Bool)

(assert (=> b!656963 (= e!377386 (arrayContainsKey!0 lt!306795 (select (arr!18535 a!2986) j!136) index!984))))

(declare-fun b!656964 () Bool)

(declare-fun Unit!22668 () Unit!22664)

(assert (=> b!656964 (= e!377394 Unit!22668)))

(declare-fun b!656965 () Bool)

(declare-fun e!377385 () Unit!22664)

(declare-fun Unit!22669 () Unit!22664)

(assert (=> b!656965 (= e!377385 Unit!22669)))

(declare-fun b!656966 () Bool)

(declare-fun res!426095 () Bool)

(declare-fun e!377396 () Bool)

(assert (=> b!656966 (=> (not res!426095) (not e!377396))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38684 (_ BitVec 32)) Bool)

(assert (=> b!656966 (= res!426095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!656967 () Bool)

(declare-fun res!426097 () Bool)

(assert (=> b!656967 (=> (not res!426097) (not e!377396))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!656967 (= res!426097 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18535 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!656968 () Bool)

(assert (=> b!656968 false))

(declare-fun lt!306797 () Unit!22664)

(assert (=> b!656968 (= lt!306797 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306795 (select (arr!18535 a!2986) j!136) index!984 Nil!12626))))

(assert (=> b!656968 (arrayNoDuplicates!0 lt!306795 index!984 Nil!12626)))

(declare-fun lt!306804 () Unit!22664)

(assert (=> b!656968 (= lt!306804 (lemmaNoDuplicateFromThenFromBigger!0 lt!306795 #b00000000000000000000000000000000 index!984))))

(assert (=> b!656968 (arrayNoDuplicates!0 lt!306795 #b00000000000000000000000000000000 Nil!12626)))

(declare-fun lt!306799 () Unit!22664)

(assert (=> b!656968 (= lt!306799 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12626))))

(assert (=> b!656968 (arrayContainsKey!0 lt!306795 (select (arr!18535 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306801 () Unit!22664)

(assert (=> b!656968 (= lt!306801 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306795 (select (arr!18535 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!656968 e!377386))

(declare-fun res!426110 () Bool)

(assert (=> b!656968 (=> (not res!426110) (not e!377386))))

(assert (=> b!656968 (= res!426110 (arrayContainsKey!0 lt!306795 (select (arr!18535 a!2986) j!136) j!136))))

(declare-fun e!377389 () Unit!22664)

(declare-fun Unit!22670 () Unit!22664)

(assert (=> b!656968 (= e!377389 Unit!22670)))

(declare-fun e!377397 () Bool)

(declare-fun b!656969 () Bool)

(assert (=> b!656969 (= e!377397 (arrayContainsKey!0 lt!306795 (select (arr!18535 a!2986) j!136) index!984))))

(declare-fun b!656970 () Bool)

(declare-fun res!426100 () Bool)

(declare-fun e!377388 () Bool)

(assert (=> b!656970 (=> (not res!426100) (not e!377388))))

(assert (=> b!656970 (= res!426100 (and (= (size!18899 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18899 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18899 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!426103 () Bool)

(declare-fun b!656971 () Bool)

(assert (=> b!656971 (= res!426103 (arrayContainsKey!0 lt!306795 (select (arr!18535 a!2986) j!136) j!136))))

(assert (=> b!656971 (=> (not res!426103) (not e!377397))))

(declare-fun e!377391 () Bool)

(assert (=> b!656971 (= e!377391 e!377397)))

(declare-fun b!656972 () Bool)

(declare-fun Unit!22671 () Unit!22664)

(assert (=> b!656972 (= e!377389 Unit!22671)))

(declare-fun res!426106 () Bool)

(assert (=> start!59570 (=> (not res!426106) (not e!377388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59570 (= res!426106 (validMask!0 mask!3053))))

(assert (=> start!59570 e!377388))

(assert (=> start!59570 true))

(declare-fun array_inv!14309 (array!38684) Bool)

(assert (=> start!59570 (array_inv!14309 a!2986)))

(declare-fun b!656973 () Bool)

(declare-fun res!426096 () Bool)

(assert (=> b!656973 (=> (not res!426096) (not e!377388))))

(assert (=> b!656973 (= res!426096 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!656974 () Bool)

(declare-fun Unit!22672 () Unit!22664)

(assert (=> b!656974 (= e!377385 Unit!22672)))

(declare-fun res!426099 () Bool)

(assert (=> b!656974 (= res!426099 (= (select (store (arr!18535 a!2986) i!1108 k0!1786) index!984) (select (arr!18535 a!2986) j!136)))))

(declare-fun e!377398 () Bool)

(assert (=> b!656974 (=> (not res!426099) (not e!377398))))

(assert (=> b!656974 e!377398))

(declare-fun c!75800 () Bool)

(assert (=> b!656974 (= c!75800 (bvslt j!136 index!984))))

(declare-fun lt!306788 () Unit!22664)

(assert (=> b!656974 (= lt!306788 e!377394)))

(declare-fun c!75802 () Bool)

(assert (=> b!656974 (= c!75802 (bvslt index!984 j!136))))

(declare-fun lt!306803 () Unit!22664)

(assert (=> b!656974 (= lt!306803 e!377389)))

(assert (=> b!656974 false))

(declare-fun b!656975 () Bool)

(declare-fun res!426104 () Bool)

(assert (=> b!656975 (=> (not res!426104) (not e!377388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!656975 (= res!426104 (validKeyInArray!0 k0!1786))))

(declare-fun b!656976 () Bool)

(declare-fun e!377384 () Bool)

(declare-fun e!377392 () Bool)

(assert (=> b!656976 (= e!377384 (not e!377392))))

(declare-fun res!426101 () Bool)

(assert (=> b!656976 (=> res!426101 e!377392)))

(declare-fun lt!306798 () SeekEntryResult!6982)

(assert (=> b!656976 (= res!426101 (not (= lt!306798 (MissingVacant!6982 vacantSpotIndex!68))))))

(declare-fun lt!306805 () Unit!22664)

(assert (=> b!656976 (= lt!306805 e!377385)))

(declare-fun c!75803 () Bool)

(assert (=> b!656976 (= c!75803 (= lt!306798 (Found!6982 index!984)))))

(declare-fun lt!306791 () Unit!22664)

(assert (=> b!656976 (= lt!306791 e!377393)))

(declare-fun c!75801 () Bool)

(assert (=> b!656976 (= c!75801 (= lt!306798 Undefined!6982))))

(declare-fun lt!306793 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38684 (_ BitVec 32)) SeekEntryResult!6982)

(assert (=> b!656976 (= lt!306798 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306793 lt!306795 mask!3053))))

(assert (=> b!656976 e!377395))

(declare-fun res!426094 () Bool)

(assert (=> b!656976 (=> (not res!426094) (not e!377395))))

(declare-fun lt!306789 () (_ BitVec 32))

(assert (=> b!656976 (= res!426094 (= lt!306806 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306789 vacantSpotIndex!68 lt!306793 lt!306795 mask!3053)))))

(assert (=> b!656976 (= lt!306806 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306789 vacantSpotIndex!68 (select (arr!18535 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!656976 (= lt!306793 (select (store (arr!18535 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!306802 () Unit!22664)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38684 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22664)

(assert (=> b!656976 (= lt!306802 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306789 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!656976 (= lt!306789 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!656977 () Bool)

(assert (=> b!656977 (= e!377392 true)))

(assert (=> b!656977 (= (select (store (arr!18535 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!656978 () Bool)

(declare-fun res!426098 () Bool)

(assert (=> b!656978 (= res!426098 (bvsge j!136 index!984))))

(assert (=> b!656978 (=> res!426098 e!377391)))

(assert (=> b!656978 (= e!377398 e!377391)))

(declare-fun b!656979 () Bool)

(declare-fun res!426105 () Bool)

(assert (=> b!656979 (=> (not res!426105) (not e!377396))))

(assert (=> b!656979 (= res!426105 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12626))))

(declare-fun b!656980 () Bool)

(assert (=> b!656980 (= e!377388 e!377396)))

(declare-fun res!426107 () Bool)

(assert (=> b!656980 (=> (not res!426107) (not e!377396))))

(declare-fun lt!306794 () SeekEntryResult!6982)

(assert (=> b!656980 (= res!426107 (or (= lt!306794 (MissingZero!6982 i!1108)) (= lt!306794 (MissingVacant!6982 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38684 (_ BitVec 32)) SeekEntryResult!6982)

(assert (=> b!656980 (= lt!306794 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!656981 () Bool)

(declare-fun res!426102 () Bool)

(assert (=> b!656981 (=> (not res!426102) (not e!377388))))

(assert (=> b!656981 (= res!426102 (validKeyInArray!0 (select (arr!18535 a!2986) j!136)))))

(declare-fun b!656982 () Bool)

(declare-fun e!377387 () Bool)

(assert (=> b!656982 (= e!377396 e!377387)))

(declare-fun res!426109 () Bool)

(assert (=> b!656982 (=> (not res!426109) (not e!377387))))

(assert (=> b!656982 (= res!426109 (= (select (store (arr!18535 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656982 (= lt!306795 (array!38685 (store (arr!18535 a!2986) i!1108 k0!1786) (size!18899 a!2986)))))

(declare-fun b!656983 () Bool)

(declare-fun Unit!22673 () Unit!22664)

(assert (=> b!656983 (= e!377393 Unit!22673)))

(assert (=> b!656983 false))

(declare-fun b!656984 () Bool)

(assert (=> b!656984 (= e!377387 e!377384)))

(declare-fun res!426108 () Bool)

(assert (=> b!656984 (=> (not res!426108) (not e!377384))))

(assert (=> b!656984 (= res!426108 (and (= lt!306790 (Found!6982 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18535 a!2986) index!984) (select (arr!18535 a!2986) j!136))) (not (= (select (arr!18535 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!656984 (= lt!306790 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18535 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!59570 res!426106) b!656970))

(assert (= (and b!656970 res!426100) b!656981))

(assert (= (and b!656981 res!426102) b!656975))

(assert (= (and b!656975 res!426104) b!656973))

(assert (= (and b!656973 res!426096) b!656980))

(assert (= (and b!656980 res!426107) b!656966))

(assert (= (and b!656966 res!426095) b!656979))

(assert (= (and b!656979 res!426105) b!656967))

(assert (= (and b!656967 res!426097) b!656982))

(assert (= (and b!656982 res!426109) b!656984))

(assert (= (and b!656984 res!426108) b!656976))

(assert (= (and b!656976 res!426094) b!656961))

(assert (= (and b!656976 c!75801) b!656983))

(assert (= (and b!656976 (not c!75801)) b!656960))

(assert (= (and b!656976 c!75803) b!656974))

(assert (= (and b!656976 (not c!75803)) b!656965))

(assert (= (and b!656974 res!426099) b!656978))

(assert (= (and b!656978 (not res!426098)) b!656971))

(assert (= (and b!656971 res!426103) b!656969))

(assert (= (and b!656974 c!75800) b!656962))

(assert (= (and b!656974 (not c!75800)) b!656964))

(assert (= (and b!656974 c!75802) b!656968))

(assert (= (and b!656974 (not c!75802)) b!656972))

(assert (= (and b!656968 res!426110) b!656963))

(assert (= (and b!656976 (not res!426101)) b!656977))

(declare-fun m!630091 () Bool)

(assert (=> b!656977 m!630091))

(declare-fun m!630093 () Bool)

(assert (=> b!656977 m!630093))

(declare-fun m!630095 () Bool)

(assert (=> b!656980 m!630095))

(assert (=> b!656974 m!630091))

(assert (=> b!656974 m!630093))

(declare-fun m!630097 () Bool)

(assert (=> b!656974 m!630097))

(declare-fun m!630099 () Bool)

(assert (=> b!656979 m!630099))

(assert (=> b!656969 m!630097))

(assert (=> b!656969 m!630097))

(declare-fun m!630101 () Bool)

(assert (=> b!656969 m!630101))

(declare-fun m!630103 () Bool)

(assert (=> b!656976 m!630103))

(declare-fun m!630105 () Bool)

(assert (=> b!656976 m!630105))

(assert (=> b!656976 m!630097))

(assert (=> b!656976 m!630091))

(declare-fun m!630107 () Bool)

(assert (=> b!656976 m!630107))

(assert (=> b!656976 m!630097))

(declare-fun m!630109 () Bool)

(assert (=> b!656976 m!630109))

(declare-fun m!630111 () Bool)

(assert (=> b!656976 m!630111))

(declare-fun m!630113 () Bool)

(assert (=> b!656976 m!630113))

(assert (=> b!656963 m!630097))

(assert (=> b!656963 m!630097))

(assert (=> b!656963 m!630101))

(assert (=> b!656962 m!630097))

(declare-fun m!630115 () Bool)

(assert (=> b!656962 m!630115))

(assert (=> b!656962 m!630097))

(declare-fun m!630117 () Bool)

(assert (=> b!656962 m!630117))

(declare-fun m!630119 () Bool)

(assert (=> b!656962 m!630119))

(declare-fun m!630121 () Bool)

(assert (=> b!656962 m!630121))

(declare-fun m!630123 () Bool)

(assert (=> b!656962 m!630123))

(assert (=> b!656962 m!630097))

(assert (=> b!656962 m!630097))

(declare-fun m!630125 () Bool)

(assert (=> b!656962 m!630125))

(declare-fun m!630127 () Bool)

(assert (=> b!656962 m!630127))

(assert (=> b!656982 m!630091))

(declare-fun m!630129 () Bool)

(assert (=> b!656982 m!630129))

(declare-fun m!630131 () Bool)

(assert (=> b!656984 m!630131))

(assert (=> b!656984 m!630097))

(assert (=> b!656984 m!630097))

(declare-fun m!630133 () Bool)

(assert (=> b!656984 m!630133))

(assert (=> b!656968 m!630097))

(declare-fun m!630135 () Bool)

(assert (=> b!656968 m!630135))

(declare-fun m!630137 () Bool)

(assert (=> b!656968 m!630137))

(assert (=> b!656968 m!630097))

(declare-fun m!630139 () Bool)

(assert (=> b!656968 m!630139))

(assert (=> b!656968 m!630121))

(assert (=> b!656968 m!630097))

(assert (=> b!656968 m!630097))

(declare-fun m!630141 () Bool)

(assert (=> b!656968 m!630141))

(assert (=> b!656968 m!630097))

(declare-fun m!630143 () Bool)

(assert (=> b!656968 m!630143))

(declare-fun m!630145 () Bool)

(assert (=> b!656968 m!630145))

(assert (=> b!656968 m!630119))

(declare-fun m!630147 () Bool)

(assert (=> start!59570 m!630147))

(declare-fun m!630149 () Bool)

(assert (=> start!59570 m!630149))

(declare-fun m!630151 () Bool)

(assert (=> b!656967 m!630151))

(declare-fun m!630153 () Bool)

(assert (=> b!656966 m!630153))

(declare-fun m!630155 () Bool)

(assert (=> b!656975 m!630155))

(assert (=> b!656971 m!630097))

(assert (=> b!656971 m!630097))

(assert (=> b!656971 m!630143))

(declare-fun m!630157 () Bool)

(assert (=> b!656973 m!630157))

(assert (=> b!656981 m!630097))

(assert (=> b!656981 m!630097))

(declare-fun m!630159 () Bool)

(assert (=> b!656981 m!630159))

(check-sat (not b!656966) (not b!656980) (not b!656968) (not b!656963) (not b!656981) (not b!656971) (not b!656973) (not start!59570) (not b!656984) (not b!656962) (not b!656969) (not b!656976) (not b!656975) (not b!656979))
(check-sat)
