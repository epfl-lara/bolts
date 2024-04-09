; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55998 () Bool)

(assert start!55998)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37431 0))(
  ( (array!37432 (arr!17958 (Array (_ BitVec 32) (_ BitVec 64))) (size!18322 (_ BitVec 32))) )
))
(declare-fun lt!282259 () array!37431)

(declare-fun b!614766 () Bool)

(declare-fun e!352491 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37431)

(declare-fun arrayContainsKey!0 (array!37431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614766 (= e!352491 (arrayContainsKey!0 lt!282259 (select (arr!17958 a!2986) j!136) index!984))))

(declare-fun b!614767 () Bool)

(declare-fun e!352486 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!614767 (= e!352486 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!19870 0))(
  ( (Unit!19871) )
))
(declare-fun lt!282269 () Unit!19870)

(declare-fun e!352482 () Unit!19870)

(assert (=> b!614767 (= lt!282269 e!352482)))

(declare-fun c!69716 () Bool)

(declare-datatypes ((SeekEntryResult!6405 0))(
  ( (MissingZero!6405 (index!27903 (_ BitVec 32))) (Found!6405 (index!27904 (_ BitVec 32))) (Intermediate!6405 (undefined!7217 Bool) (index!27905 (_ BitVec 32)) (x!56734 (_ BitVec 32))) (Undefined!6405) (MissingVacant!6405 (index!27906 (_ BitVec 32))) )
))
(declare-fun lt!282268 () SeekEntryResult!6405)

(assert (=> b!614767 (= c!69716 (= lt!282268 (Found!6405 index!984)))))

(declare-fun lt!282262 () Unit!19870)

(declare-fun e!352492 () Unit!19870)

(assert (=> b!614767 (= lt!282262 e!352492)))

(declare-fun c!69719 () Bool)

(assert (=> b!614767 (= c!69719 (= lt!282268 Undefined!6405))))

(declare-fun lt!282275 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37431 (_ BitVec 32)) SeekEntryResult!6405)

(assert (=> b!614767 (= lt!282268 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282275 lt!282259 mask!3053))))

(declare-fun e!352484 () Bool)

(assert (=> b!614767 e!352484))

(declare-fun res!396071 () Bool)

(assert (=> b!614767 (=> (not res!396071) (not e!352484))))

(declare-fun lt!282260 () SeekEntryResult!6405)

(declare-fun lt!282271 () (_ BitVec 32))

(assert (=> b!614767 (= res!396071 (= lt!282260 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282271 vacantSpotIndex!68 lt!282275 lt!282259 mask!3053)))))

(assert (=> b!614767 (= lt!282260 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282271 vacantSpotIndex!68 (select (arr!17958 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!614767 (= lt!282275 (select (store (arr!17958 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282274 () Unit!19870)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37431 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19870)

(assert (=> b!614767 (= lt!282274 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282271 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!614767 (= lt!282271 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!614768 () Bool)

(declare-fun Unit!19872 () Unit!19870)

(assert (=> b!614768 (= e!352492 Unit!19872)))

(assert (=> b!614768 false))

(declare-fun b!614769 () Bool)

(declare-fun res!396068 () Bool)

(declare-fun e!352485 () Bool)

(assert (=> b!614769 (=> (not res!396068) (not e!352485))))

(assert (=> b!614769 (= res!396068 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!614770 () Bool)

(declare-fun e!352479 () Unit!19870)

(declare-fun Unit!19873 () Unit!19870)

(assert (=> b!614770 (= e!352479 Unit!19873)))

(declare-fun b!614771 () Bool)

(declare-fun Unit!19874 () Unit!19870)

(assert (=> b!614771 (= e!352492 Unit!19874)))

(declare-fun b!614772 () Bool)

(declare-fun res!396077 () Bool)

(declare-fun e!352489 () Bool)

(assert (=> b!614772 (=> (not res!396077) (not e!352489))))

(assert (=> b!614772 (= res!396077 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17958 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614773 () Bool)

(declare-fun res!396074 () Bool)

(assert (=> b!614773 (= res!396074 (arrayContainsKey!0 lt!282259 (select (arr!17958 a!2986) j!136) j!136))))

(declare-fun e!352480 () Bool)

(assert (=> b!614773 (=> (not res!396074) (not e!352480))))

(declare-fun e!352483 () Bool)

(assert (=> b!614773 (= e!352483 e!352480)))

(declare-fun b!614774 () Bool)

(assert (=> b!614774 false))

(declare-fun lt!282257 () Unit!19870)

(declare-datatypes ((List!12052 0))(
  ( (Nil!12049) (Cons!12048 (h!13093 (_ BitVec 64)) (t!18288 List!12052)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37431 (_ BitVec 64) (_ BitVec 32) List!12052) Unit!19870)

(assert (=> b!614774 (= lt!282257 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282259 (select (arr!17958 a!2986) j!136) j!136 Nil!12049))))

(declare-fun arrayNoDuplicates!0 (array!37431 (_ BitVec 32) List!12052) Bool)

(assert (=> b!614774 (arrayNoDuplicates!0 lt!282259 j!136 Nil!12049)))

(declare-fun lt!282267 () Unit!19870)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37431 (_ BitVec 32) (_ BitVec 32)) Unit!19870)

(assert (=> b!614774 (= lt!282267 (lemmaNoDuplicateFromThenFromBigger!0 lt!282259 #b00000000000000000000000000000000 j!136))))

(assert (=> b!614774 (arrayNoDuplicates!0 lt!282259 #b00000000000000000000000000000000 Nil!12049)))

(declare-fun lt!282270 () Unit!19870)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37431 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12052) Unit!19870)

(assert (=> b!614774 (= lt!282270 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12049))))

(assert (=> b!614774 (arrayContainsKey!0 lt!282259 (select (arr!17958 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282261 () Unit!19870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37431 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19870)

(assert (=> b!614774 (= lt!282261 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282259 (select (arr!17958 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!352481 () Unit!19870)

(declare-fun Unit!19875 () Unit!19870)

(assert (=> b!614774 (= e!352481 Unit!19875)))

(declare-fun b!614775 () Bool)

(assert (=> b!614775 false))

(declare-fun lt!282272 () Unit!19870)

(assert (=> b!614775 (= lt!282272 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282259 (select (arr!17958 a!2986) j!136) index!984 Nil!12049))))

(assert (=> b!614775 (arrayNoDuplicates!0 lt!282259 index!984 Nil!12049)))

(declare-fun lt!282265 () Unit!19870)

(assert (=> b!614775 (= lt!282265 (lemmaNoDuplicateFromThenFromBigger!0 lt!282259 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614775 (arrayNoDuplicates!0 lt!282259 #b00000000000000000000000000000000 Nil!12049)))

(declare-fun lt!282273 () Unit!19870)

(assert (=> b!614775 (= lt!282273 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12049))))

(assert (=> b!614775 (arrayContainsKey!0 lt!282259 (select (arr!17958 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282276 () Unit!19870)

(assert (=> b!614775 (= lt!282276 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282259 (select (arr!17958 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!614775 e!352491))

(declare-fun res!396072 () Bool)

(assert (=> b!614775 (=> (not res!396072) (not e!352491))))

(assert (=> b!614775 (= res!396072 (arrayContainsKey!0 lt!282259 (select (arr!17958 a!2986) j!136) j!136))))

(declare-fun Unit!19876 () Unit!19870)

(assert (=> b!614775 (= e!352479 Unit!19876)))

(declare-fun b!614776 () Bool)

(declare-fun res!396070 () Bool)

(assert (=> b!614776 (=> (not res!396070) (not e!352485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614776 (= res!396070 (validKeyInArray!0 k!1786))))

(declare-fun b!614777 () Bool)

(declare-fun res!396073 () Bool)

(assert (=> b!614777 (= res!396073 (bvsge j!136 index!984))))

(assert (=> b!614777 (=> res!396073 e!352483)))

(declare-fun e!352488 () Bool)

(assert (=> b!614777 (= e!352488 e!352483)))

(declare-fun b!614778 () Bool)

(declare-fun res!396076 () Bool)

(assert (=> b!614778 (=> (not res!396076) (not e!352489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37431 (_ BitVec 32)) Bool)

(assert (=> b!614778 (= res!396076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!614779 () Bool)

(declare-fun Unit!19877 () Unit!19870)

(assert (=> b!614779 (= e!352481 Unit!19877)))

(declare-fun res!396069 () Bool)

(assert (=> start!55998 (=> (not res!396069) (not e!352485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55998 (= res!396069 (validMask!0 mask!3053))))

(assert (=> start!55998 e!352485))

(assert (=> start!55998 true))

(declare-fun array_inv!13732 (array!37431) Bool)

(assert (=> start!55998 (array_inv!13732 a!2986)))

(declare-fun b!614780 () Bool)

(declare-fun res!396083 () Bool)

(assert (=> b!614780 (=> (not res!396083) (not e!352489))))

(assert (=> b!614780 (= res!396083 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12049))))

(declare-fun b!614781 () Bool)

(declare-fun e!352490 () Bool)

(assert (=> b!614781 (= e!352490 e!352486)))

(declare-fun res!396075 () Bool)

(assert (=> b!614781 (=> (not res!396075) (not e!352486))))

(declare-fun lt!282258 () SeekEntryResult!6405)

(assert (=> b!614781 (= res!396075 (and (= lt!282258 (Found!6405 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17958 a!2986) index!984) (select (arr!17958 a!2986) j!136))) (not (= (select (arr!17958 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!614781 (= lt!282258 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17958 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!614782 () Bool)

(declare-fun Unit!19878 () Unit!19870)

(assert (=> b!614782 (= e!352482 Unit!19878)))

(declare-fun res!396082 () Bool)

(assert (=> b!614782 (= res!396082 (= (select (store (arr!17958 a!2986) i!1108 k!1786) index!984) (select (arr!17958 a!2986) j!136)))))

(assert (=> b!614782 (=> (not res!396082) (not e!352488))))

(assert (=> b!614782 e!352488))

(declare-fun c!69717 () Bool)

(assert (=> b!614782 (= c!69717 (bvslt j!136 index!984))))

(declare-fun lt!282263 () Unit!19870)

(assert (=> b!614782 (= lt!282263 e!352481)))

(declare-fun c!69718 () Bool)

(assert (=> b!614782 (= c!69718 (bvslt index!984 j!136))))

(declare-fun lt!282266 () Unit!19870)

(assert (=> b!614782 (= lt!282266 e!352479)))

(assert (=> b!614782 false))

(declare-fun b!614783 () Bool)

(declare-fun res!396081 () Bool)

(assert (=> b!614783 (=> (not res!396081) (not e!352485))))

(assert (=> b!614783 (= res!396081 (validKeyInArray!0 (select (arr!17958 a!2986) j!136)))))

(declare-fun b!614784 () Bool)

(assert (=> b!614784 (= e!352489 e!352490)))

(declare-fun res!396079 () Bool)

(assert (=> b!614784 (=> (not res!396079) (not e!352490))))

(assert (=> b!614784 (= res!396079 (= (select (store (arr!17958 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!614784 (= lt!282259 (array!37432 (store (arr!17958 a!2986) i!1108 k!1786) (size!18322 a!2986)))))

(declare-fun b!614785 () Bool)

(assert (=> b!614785 (= e!352480 (arrayContainsKey!0 lt!282259 (select (arr!17958 a!2986) j!136) index!984))))

(declare-fun b!614786 () Bool)

(declare-fun res!396078 () Bool)

(assert (=> b!614786 (=> (not res!396078) (not e!352485))))

(assert (=> b!614786 (= res!396078 (and (= (size!18322 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18322 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18322 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!614787 () Bool)

(declare-fun Unit!19879 () Unit!19870)

(assert (=> b!614787 (= e!352482 Unit!19879)))

(declare-fun b!614788 () Bool)

(assert (=> b!614788 (= e!352484 (= lt!282258 lt!282260))))

(declare-fun b!614789 () Bool)

(assert (=> b!614789 (= e!352485 e!352489)))

(declare-fun res!396080 () Bool)

(assert (=> b!614789 (=> (not res!396080) (not e!352489))))

(declare-fun lt!282264 () SeekEntryResult!6405)

(assert (=> b!614789 (= res!396080 (or (= lt!282264 (MissingZero!6405 i!1108)) (= lt!282264 (MissingVacant!6405 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37431 (_ BitVec 32)) SeekEntryResult!6405)

(assert (=> b!614789 (= lt!282264 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!55998 res!396069) b!614786))

(assert (= (and b!614786 res!396078) b!614783))

(assert (= (and b!614783 res!396081) b!614776))

(assert (= (and b!614776 res!396070) b!614769))

(assert (= (and b!614769 res!396068) b!614789))

(assert (= (and b!614789 res!396080) b!614778))

(assert (= (and b!614778 res!396076) b!614780))

(assert (= (and b!614780 res!396083) b!614772))

(assert (= (and b!614772 res!396077) b!614784))

(assert (= (and b!614784 res!396079) b!614781))

(assert (= (and b!614781 res!396075) b!614767))

(assert (= (and b!614767 res!396071) b!614788))

(assert (= (and b!614767 c!69719) b!614768))

(assert (= (and b!614767 (not c!69719)) b!614771))

(assert (= (and b!614767 c!69716) b!614782))

(assert (= (and b!614767 (not c!69716)) b!614787))

(assert (= (and b!614782 res!396082) b!614777))

(assert (= (and b!614777 (not res!396073)) b!614773))

(assert (= (and b!614773 res!396074) b!614785))

(assert (= (and b!614782 c!69717) b!614774))

(assert (= (and b!614782 (not c!69717)) b!614779))

(assert (= (and b!614782 c!69718) b!614775))

(assert (= (and b!614782 (not c!69718)) b!614770))

(assert (= (and b!614775 res!396072) b!614766))

(declare-fun m!591033 () Bool)

(assert (=> start!55998 m!591033))

(declare-fun m!591035 () Bool)

(assert (=> start!55998 m!591035))

(declare-fun m!591037 () Bool)

(assert (=> b!614772 m!591037))

(declare-fun m!591039 () Bool)

(assert (=> b!614785 m!591039))

(assert (=> b!614785 m!591039))

(declare-fun m!591041 () Bool)

(assert (=> b!614785 m!591041))

(declare-fun m!591043 () Bool)

(assert (=> b!614778 m!591043))

(declare-fun m!591045 () Bool)

(assert (=> b!614782 m!591045))

(declare-fun m!591047 () Bool)

(assert (=> b!614782 m!591047))

(assert (=> b!614782 m!591039))

(declare-fun m!591049 () Bool)

(assert (=> b!614776 m!591049))

(declare-fun m!591051 () Bool)

(assert (=> b!614780 m!591051))

(declare-fun m!591053 () Bool)

(assert (=> b!614767 m!591053))

(assert (=> b!614767 m!591039))

(assert (=> b!614767 m!591045))

(declare-fun m!591055 () Bool)

(assert (=> b!614767 m!591055))

(declare-fun m!591057 () Bool)

(assert (=> b!614767 m!591057))

(declare-fun m!591059 () Bool)

(assert (=> b!614767 m!591059))

(assert (=> b!614767 m!591039))

(declare-fun m!591061 () Bool)

(assert (=> b!614767 m!591061))

(declare-fun m!591063 () Bool)

(assert (=> b!614767 m!591063))

(assert (=> b!614774 m!591039))

(declare-fun m!591065 () Bool)

(assert (=> b!614774 m!591065))

(assert (=> b!614774 m!591039))

(declare-fun m!591067 () Bool)

(assert (=> b!614774 m!591067))

(assert (=> b!614774 m!591039))

(declare-fun m!591069 () Bool)

(assert (=> b!614774 m!591069))

(declare-fun m!591071 () Bool)

(assert (=> b!614774 m!591071))

(declare-fun m!591073 () Bool)

(assert (=> b!614774 m!591073))

(assert (=> b!614774 m!591039))

(declare-fun m!591075 () Bool)

(assert (=> b!614774 m!591075))

(declare-fun m!591077 () Bool)

(assert (=> b!614774 m!591077))

(assert (=> b!614783 m!591039))

(assert (=> b!614783 m!591039))

(declare-fun m!591079 () Bool)

(assert (=> b!614783 m!591079))

(assert (=> b!614784 m!591045))

(declare-fun m!591081 () Bool)

(assert (=> b!614784 m!591081))

(assert (=> b!614775 m!591039))

(declare-fun m!591083 () Bool)

(assert (=> b!614775 m!591083))

(assert (=> b!614775 m!591039))

(assert (=> b!614775 m!591039))

(declare-fun m!591085 () Bool)

(assert (=> b!614775 m!591085))

(assert (=> b!614775 m!591039))

(declare-fun m!591087 () Bool)

(assert (=> b!614775 m!591087))

(assert (=> b!614775 m!591039))

(declare-fun m!591089 () Bool)

(assert (=> b!614775 m!591089))

(declare-fun m!591091 () Bool)

(assert (=> b!614775 m!591091))

(declare-fun m!591093 () Bool)

(assert (=> b!614775 m!591093))

(assert (=> b!614775 m!591073))

(assert (=> b!614775 m!591077))

(assert (=> b!614766 m!591039))

(assert (=> b!614766 m!591039))

(assert (=> b!614766 m!591041))

(assert (=> b!614773 m!591039))

(assert (=> b!614773 m!591039))

(assert (=> b!614773 m!591089))

(declare-fun m!591095 () Bool)

(assert (=> b!614769 m!591095))

(declare-fun m!591097 () Bool)

(assert (=> b!614781 m!591097))

(assert (=> b!614781 m!591039))

(assert (=> b!614781 m!591039))

(declare-fun m!591099 () Bool)

(assert (=> b!614781 m!591099))

(declare-fun m!591101 () Bool)

(assert (=> b!614789 m!591101))

(push 1)

