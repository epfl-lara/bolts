; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55578 () Bool)

(assert start!55578)

(declare-fun b!608034 () Bool)

(declare-fun e!348217 () Bool)

(declare-fun e!348216 () Bool)

(assert (=> b!608034 (= e!348217 (not e!348216))))

(declare-fun res!390912 () Bool)

(assert (=> b!608034 (=> res!390912 e!348216)))

(declare-datatypes ((SeekEntryResult!6330 0))(
  ( (MissingZero!6330 (index!27594 (_ BitVec 32))) (Found!6330 (index!27595 (_ BitVec 32))) (Intermediate!6330 (undefined!7142 Bool) (index!27596 (_ BitVec 32)) (x!56432 (_ BitVec 32))) (Undefined!6330) (MissingVacant!6330 (index!27597 (_ BitVec 32))) )
))
(declare-fun lt!277798 () SeekEntryResult!6330)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!608034 (= res!390912 (not (= lt!277798 (Found!6330 index!984))))))

(declare-datatypes ((Unit!19408 0))(
  ( (Unit!19409) )
))
(declare-fun lt!277786 () Unit!19408)

(declare-fun e!348224 () Unit!19408)

(assert (=> b!608034 (= lt!277786 e!348224)))

(declare-fun c!68930 () Bool)

(assert (=> b!608034 (= c!68930 (= lt!277798 Undefined!6330))))

(declare-fun lt!277794 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37272 0))(
  ( (array!37273 (arr!17883 (Array (_ BitVec 32) (_ BitVec 64))) (size!18247 (_ BitVec 32))) )
))
(declare-fun lt!277789 () array!37272)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37272 (_ BitVec 32)) SeekEntryResult!6330)

(assert (=> b!608034 (= lt!277798 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277794 lt!277789 mask!3053))))

(declare-fun e!348219 () Bool)

(assert (=> b!608034 e!348219))

(declare-fun res!390924 () Bool)

(assert (=> b!608034 (=> (not res!390924) (not e!348219))))

(declare-fun lt!277790 () SeekEntryResult!6330)

(declare-fun lt!277792 () (_ BitVec 32))

(assert (=> b!608034 (= res!390924 (= lt!277790 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277792 vacantSpotIndex!68 lt!277794 lt!277789 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37272)

(assert (=> b!608034 (= lt!277790 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277792 vacantSpotIndex!68 (select (arr!17883 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!608034 (= lt!277794 (select (store (arr!17883 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277797 () Unit!19408)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37272 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19408)

(assert (=> b!608034 (= lt!277797 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277792 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608034 (= lt!277792 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608035 () Bool)

(declare-fun e!348218 () Bool)

(declare-fun e!348226 () Bool)

(assert (=> b!608035 (= e!348218 e!348226)))

(declare-fun res!390923 () Bool)

(assert (=> b!608035 (=> (not res!390923) (not e!348226))))

(declare-fun arrayContainsKey!0 (array!37272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608035 (= res!390923 (arrayContainsKey!0 lt!277789 (select (arr!17883 a!2986) j!136) j!136))))

(declare-fun b!608036 () Bool)

(declare-fun e!348211 () Bool)

(declare-fun e!348215 () Bool)

(assert (=> b!608036 (= e!348211 e!348215)))

(declare-fun res!390927 () Bool)

(assert (=> b!608036 (=> res!390927 e!348215)))

(assert (=> b!608036 (= res!390927 (bvsge index!984 j!136))))

(declare-fun lt!277799 () Unit!19408)

(declare-fun e!348220 () Unit!19408)

(assert (=> b!608036 (= lt!277799 e!348220)))

(declare-fun c!68929 () Bool)

(assert (=> b!608036 (= c!68929 (bvslt j!136 index!984))))

(declare-fun b!608037 () Bool)

(declare-fun Unit!19410 () Unit!19408)

(assert (=> b!608037 (= e!348220 Unit!19410)))

(declare-fun lt!277796 () Unit!19408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37272 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19408)

(assert (=> b!608037 (= lt!277796 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277789 (select (arr!17883 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608037 (arrayContainsKey!0 lt!277789 (select (arr!17883 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277785 () Unit!19408)

(declare-datatypes ((List!11977 0))(
  ( (Nil!11974) (Cons!11973 (h!13018 (_ BitVec 64)) (t!18213 List!11977)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37272 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11977) Unit!19408)

(assert (=> b!608037 (= lt!277785 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11974))))

(declare-fun arrayNoDuplicates!0 (array!37272 (_ BitVec 32) List!11977) Bool)

(assert (=> b!608037 (arrayNoDuplicates!0 lt!277789 #b00000000000000000000000000000000 Nil!11974)))

(declare-fun lt!277784 () Unit!19408)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37272 (_ BitVec 32) (_ BitVec 32)) Unit!19408)

(assert (=> b!608037 (= lt!277784 (lemmaNoDuplicateFromThenFromBigger!0 lt!277789 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608037 (arrayNoDuplicates!0 lt!277789 j!136 Nil!11974)))

(declare-fun lt!277788 () Unit!19408)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37272 (_ BitVec 64) (_ BitVec 32) List!11977) Unit!19408)

(assert (=> b!608037 (= lt!277788 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277789 (select (arr!17883 a!2986) j!136) j!136 Nil!11974))))

(assert (=> b!608037 false))

(declare-fun b!608038 () Bool)

(declare-fun res!390920 () Bool)

(declare-fun e!348223 () Bool)

(assert (=> b!608038 (=> (not res!390920) (not e!348223))))

(assert (=> b!608038 (= res!390920 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17883 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608039 () Bool)

(declare-fun e!348213 () Bool)

(assert (=> b!608039 (= e!348213 e!348223)))

(declare-fun res!390931 () Bool)

(assert (=> b!608039 (=> (not res!390931) (not e!348223))))

(declare-fun lt!277793 () SeekEntryResult!6330)

(assert (=> b!608039 (= res!390931 (or (= lt!277793 (MissingZero!6330 i!1108)) (= lt!277793 (MissingVacant!6330 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37272 (_ BitVec 32)) SeekEntryResult!6330)

(assert (=> b!608039 (= lt!277793 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!390922 () Bool)

(assert (=> start!55578 (=> (not res!390922) (not e!348213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55578 (= res!390922 (validMask!0 mask!3053))))

(assert (=> start!55578 e!348213))

(assert (=> start!55578 true))

(declare-fun array_inv!13657 (array!37272) Bool)

(assert (=> start!55578 (array_inv!13657 a!2986)))

(declare-fun b!608040 () Bool)

(declare-fun res!390921 () Bool)

(assert (=> b!608040 (=> (not res!390921) (not e!348223))))

(assert (=> b!608040 (= res!390921 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11974))))

(declare-fun b!608041 () Bool)

(declare-fun e!348212 () Bool)

(assert (=> b!608041 (= e!348223 e!348212)))

(declare-fun res!390928 () Bool)

(assert (=> b!608041 (=> (not res!390928) (not e!348212))))

(assert (=> b!608041 (= res!390928 (= (select (store (arr!17883 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608041 (= lt!277789 (array!37273 (store (arr!17883 a!2986) i!1108 k!1786) (size!18247 a!2986)))))

(declare-fun b!608042 () Bool)

(declare-fun res!390925 () Bool)

(assert (=> b!608042 (=> (not res!390925) (not e!348223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37272 (_ BitVec 32)) Bool)

(assert (=> b!608042 (= res!390925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608043 () Bool)

(declare-fun res!390929 () Bool)

(assert (=> b!608043 (=> (not res!390929) (not e!348213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608043 (= res!390929 (validKeyInArray!0 (select (arr!17883 a!2986) j!136)))))

(declare-fun b!608044 () Bool)

(declare-fun res!390913 () Bool)

(declare-fun e!348221 () Bool)

(assert (=> b!608044 (=> res!390913 e!348221)))

(declare-fun contains!3023 (List!11977 (_ BitVec 64)) Bool)

(assert (=> b!608044 (= res!390913 (contains!3023 Nil!11974 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608045 () Bool)

(declare-fun Unit!19411 () Unit!19408)

(assert (=> b!608045 (= e!348224 Unit!19411)))

(declare-fun b!608046 () Bool)

(declare-fun res!390930 () Bool)

(assert (=> b!608046 (=> res!390930 e!348221)))

(assert (=> b!608046 (= res!390930 (contains!3023 Nil!11974 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608047 () Bool)

(declare-fun lt!277787 () SeekEntryResult!6330)

(assert (=> b!608047 (= e!348219 (= lt!277787 lt!277790))))

(declare-fun b!608048 () Bool)

(assert (=> b!608048 (= e!348215 e!348221)))

(declare-fun res!390911 () Bool)

(assert (=> b!608048 (=> res!390911 e!348221)))

(assert (=> b!608048 (= res!390911 (or (bvsge (size!18247 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18247 a!2986))))))

(assert (=> b!608048 (arrayContainsKey!0 lt!277789 (select (arr!17883 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277791 () Unit!19408)

(assert (=> b!608048 (= lt!277791 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277789 (select (arr!17883 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348214 () Bool)

(assert (=> b!608048 e!348214))

(declare-fun res!390915 () Bool)

(assert (=> b!608048 (=> (not res!390915) (not e!348214))))

(assert (=> b!608048 (= res!390915 (arrayContainsKey!0 lt!277789 (select (arr!17883 a!2986) j!136) j!136))))

(declare-fun b!608049 () Bool)

(declare-fun res!390926 () Bool)

(assert (=> b!608049 (=> (not res!390926) (not e!348213))))

(assert (=> b!608049 (= res!390926 (validKeyInArray!0 k!1786))))

(declare-fun b!608050 () Bool)

(assert (=> b!608050 (= e!348221 true)))

(declare-fun lt!277800 () Bool)

(assert (=> b!608050 (= lt!277800 (contains!3023 Nil!11974 k!1786))))

(declare-fun b!608051 () Bool)

(declare-fun Unit!19412 () Unit!19408)

(assert (=> b!608051 (= e!348220 Unit!19412)))

(declare-fun b!608052 () Bool)

(assert (=> b!608052 (= e!348214 (arrayContainsKey!0 lt!277789 (select (arr!17883 a!2986) j!136) index!984))))

(declare-fun b!608053 () Bool)

(declare-fun e!348225 () Bool)

(assert (=> b!608053 (= e!348225 e!348218)))

(declare-fun res!390919 () Bool)

(assert (=> b!608053 (=> res!390919 e!348218)))

(declare-fun lt!277795 () (_ BitVec 64))

(assert (=> b!608053 (= res!390919 (or (not (= (select (arr!17883 a!2986) j!136) lt!277794)) (not (= (select (arr!17883 a!2986) j!136) lt!277795)) (bvsge j!136 index!984)))))

(declare-fun b!608054 () Bool)

(declare-fun res!390917 () Bool)

(assert (=> b!608054 (=> (not res!390917) (not e!348213))))

(assert (=> b!608054 (= res!390917 (and (= (size!18247 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18247 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18247 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608055 () Bool)

(assert (=> b!608055 (= e!348216 e!348211)))

(declare-fun res!390910 () Bool)

(assert (=> b!608055 (=> res!390910 e!348211)))

(assert (=> b!608055 (= res!390910 (or (not (= (select (arr!17883 a!2986) j!136) lt!277794)) (not (= (select (arr!17883 a!2986) j!136) lt!277795))))))

(assert (=> b!608055 e!348225))

(declare-fun res!390914 () Bool)

(assert (=> b!608055 (=> (not res!390914) (not e!348225))))

(assert (=> b!608055 (= res!390914 (= lt!277795 (select (arr!17883 a!2986) j!136)))))

(assert (=> b!608055 (= lt!277795 (select (store (arr!17883 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!608056 () Bool)

(declare-fun Unit!19413 () Unit!19408)

(assert (=> b!608056 (= e!348224 Unit!19413)))

(assert (=> b!608056 false))

(declare-fun b!608057 () Bool)

(assert (=> b!608057 (= e!348226 (arrayContainsKey!0 lt!277789 (select (arr!17883 a!2986) j!136) index!984))))

(declare-fun b!608058 () Bool)

(declare-fun res!390918 () Bool)

(assert (=> b!608058 (=> (not res!390918) (not e!348213))))

(assert (=> b!608058 (= res!390918 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608059 () Bool)

(assert (=> b!608059 (= e!348212 e!348217)))

(declare-fun res!390932 () Bool)

(assert (=> b!608059 (=> (not res!390932) (not e!348217))))

(assert (=> b!608059 (= res!390932 (and (= lt!277787 (Found!6330 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17883 a!2986) index!984) (select (arr!17883 a!2986) j!136))) (not (= (select (arr!17883 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!608059 (= lt!277787 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17883 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608060 () Bool)

(declare-fun res!390916 () Bool)

(assert (=> b!608060 (=> res!390916 e!348221)))

(declare-fun noDuplicate!325 (List!11977) Bool)

(assert (=> b!608060 (= res!390916 (not (noDuplicate!325 Nil!11974)))))

(assert (= (and start!55578 res!390922) b!608054))

(assert (= (and b!608054 res!390917) b!608043))

(assert (= (and b!608043 res!390929) b!608049))

(assert (= (and b!608049 res!390926) b!608058))

(assert (= (and b!608058 res!390918) b!608039))

(assert (= (and b!608039 res!390931) b!608042))

(assert (= (and b!608042 res!390925) b!608040))

(assert (= (and b!608040 res!390921) b!608038))

(assert (= (and b!608038 res!390920) b!608041))

(assert (= (and b!608041 res!390928) b!608059))

(assert (= (and b!608059 res!390932) b!608034))

(assert (= (and b!608034 res!390924) b!608047))

(assert (= (and b!608034 c!68930) b!608056))

(assert (= (and b!608034 (not c!68930)) b!608045))

(assert (= (and b!608034 (not res!390912)) b!608055))

(assert (= (and b!608055 res!390914) b!608053))

(assert (= (and b!608053 (not res!390919)) b!608035))

(assert (= (and b!608035 res!390923) b!608057))

(assert (= (and b!608055 (not res!390910)) b!608036))

(assert (= (and b!608036 c!68929) b!608037))

(assert (= (and b!608036 (not c!68929)) b!608051))

(assert (= (and b!608036 (not res!390927)) b!608048))

(assert (= (and b!608048 res!390915) b!608052))

(assert (= (and b!608048 (not res!390911)) b!608060))

(assert (= (and b!608060 (not res!390916)) b!608044))

(assert (= (and b!608044 (not res!390913)) b!608046))

(assert (= (and b!608046 (not res!390930)) b!608050))

(declare-fun m!584733 () Bool)

(assert (=> b!608052 m!584733))

(assert (=> b!608052 m!584733))

(declare-fun m!584735 () Bool)

(assert (=> b!608052 m!584735))

(declare-fun m!584737 () Bool)

(assert (=> b!608040 m!584737))

(declare-fun m!584739 () Bool)

(assert (=> b!608041 m!584739))

(declare-fun m!584741 () Bool)

(assert (=> b!608041 m!584741))

(assert (=> b!608055 m!584733))

(assert (=> b!608055 m!584739))

(declare-fun m!584743 () Bool)

(assert (=> b!608055 m!584743))

(declare-fun m!584745 () Bool)

(assert (=> b!608034 m!584745))

(declare-fun m!584747 () Bool)

(assert (=> b!608034 m!584747))

(declare-fun m!584749 () Bool)

(assert (=> b!608034 m!584749))

(assert (=> b!608034 m!584739))

(declare-fun m!584751 () Bool)

(assert (=> b!608034 m!584751))

(assert (=> b!608034 m!584733))

(declare-fun m!584753 () Bool)

(assert (=> b!608034 m!584753))

(declare-fun m!584755 () Bool)

(assert (=> b!608034 m!584755))

(assert (=> b!608034 m!584733))

(declare-fun m!584757 () Bool)

(assert (=> b!608059 m!584757))

(assert (=> b!608059 m!584733))

(assert (=> b!608059 m!584733))

(declare-fun m!584759 () Bool)

(assert (=> b!608059 m!584759))

(declare-fun m!584761 () Bool)

(assert (=> b!608044 m!584761))

(assert (=> b!608043 m!584733))

(assert (=> b!608043 m!584733))

(declare-fun m!584763 () Bool)

(assert (=> b!608043 m!584763))

(declare-fun m!584765 () Bool)

(assert (=> b!608050 m!584765))

(declare-fun m!584767 () Bool)

(assert (=> b!608049 m!584767))

(assert (=> b!608057 m!584733))

(assert (=> b!608057 m!584733))

(assert (=> b!608057 m!584735))

(assert (=> b!608035 m!584733))

(assert (=> b!608035 m!584733))

(declare-fun m!584769 () Bool)

(assert (=> b!608035 m!584769))

(declare-fun m!584771 () Bool)

(assert (=> start!55578 m!584771))

(declare-fun m!584773 () Bool)

(assert (=> start!55578 m!584773))

(declare-fun m!584775 () Bool)

(assert (=> b!608060 m!584775))

(declare-fun m!584777 () Bool)

(assert (=> b!608046 m!584777))

(assert (=> b!608053 m!584733))

(declare-fun m!584779 () Bool)

(assert (=> b!608039 m!584779))

(declare-fun m!584781 () Bool)

(assert (=> b!608058 m!584781))

(assert (=> b!608037 m!584733))

(declare-fun m!584783 () Bool)

(assert (=> b!608037 m!584783))

(assert (=> b!608037 m!584733))

(declare-fun m!584785 () Bool)

(assert (=> b!608037 m!584785))

(assert (=> b!608037 m!584733))

(declare-fun m!584787 () Bool)

(assert (=> b!608037 m!584787))

(declare-fun m!584789 () Bool)

(assert (=> b!608037 m!584789))

(assert (=> b!608037 m!584733))

(declare-fun m!584791 () Bool)

(assert (=> b!608037 m!584791))

(declare-fun m!584793 () Bool)

(assert (=> b!608037 m!584793))

(declare-fun m!584795 () Bool)

(assert (=> b!608037 m!584795))

(declare-fun m!584797 () Bool)

(assert (=> b!608042 m!584797))

(declare-fun m!584799 () Bool)

(assert (=> b!608038 m!584799))

(assert (=> b!608048 m!584733))

(assert (=> b!608048 m!584733))

(declare-fun m!584801 () Bool)

(assert (=> b!608048 m!584801))

(assert (=> b!608048 m!584733))

(declare-fun m!584803 () Bool)

(assert (=> b!608048 m!584803))

(assert (=> b!608048 m!584733))

(assert (=> b!608048 m!584769))

(push 1)

