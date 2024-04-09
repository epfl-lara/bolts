; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56080 () Bool)

(assert start!56080)

(declare-fun b!617789 () Bool)

(declare-datatypes ((Unit!20280 0))(
  ( (Unit!20281) )
))
(declare-fun e!354275 () Unit!20280)

(declare-fun Unit!20282 () Unit!20280)

(assert (=> b!617789 (= e!354275 Unit!20282)))

(declare-fun res!398123 () Bool)

(declare-fun e!354279 () Bool)

(assert (=> start!56080 (=> (not res!398123) (not e!354279))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56080 (= res!398123 (validMask!0 mask!3053))))

(assert (=> start!56080 e!354279))

(assert (=> start!56080 true))

(declare-datatypes ((array!37513 0))(
  ( (array!37514 (arr!17999 (Array (_ BitVec 32) (_ BitVec 64))) (size!18363 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37513)

(declare-fun array_inv!13773 (array!37513) Bool)

(assert (=> start!56080 (array_inv!13773 a!2986)))

(declare-fun b!617790 () Bool)

(declare-fun res!398111 () Bool)

(declare-fun e!354286 () Bool)

(assert (=> b!617790 (=> (not res!398111) (not e!354286))))

(declare-datatypes ((List!12093 0))(
  ( (Nil!12090) (Cons!12089 (h!13134 (_ BitVec 64)) (t!18329 List!12093)) )
))
(declare-fun arrayNoDuplicates!0 (array!37513 (_ BitVec 32) List!12093) Bool)

(assert (=> b!617790 (= res!398111 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12090))))

(declare-fun b!617791 () Bool)

(declare-fun Unit!20283 () Unit!20280)

(assert (=> b!617791 (= e!354275 Unit!20283)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!398120 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!617791 (= res!398120 (= (select (store (arr!17999 a!2986) i!1108 k!1786) index!984) (select (arr!17999 a!2986) j!136)))))

(declare-fun e!354278 () Bool)

(assert (=> b!617791 (=> (not res!398120) (not e!354278))))

(assert (=> b!617791 e!354278))

(declare-fun c!70211 () Bool)

(assert (=> b!617791 (= c!70211 (bvslt j!136 index!984))))

(declare-fun lt!284721 () Unit!20280)

(declare-fun e!354284 () Unit!20280)

(assert (=> b!617791 (= lt!284721 e!354284)))

(declare-fun c!70209 () Bool)

(assert (=> b!617791 (= c!70209 (bvslt index!984 j!136))))

(declare-fun lt!284724 () Unit!20280)

(declare-fun e!354285 () Unit!20280)

(assert (=> b!617791 (= lt!284724 e!354285)))

(assert (=> b!617791 false))

(declare-fun b!617792 () Bool)

(declare-fun e!354274 () Bool)

(declare-fun e!354276 () Bool)

(assert (=> b!617792 (= e!354274 e!354276)))

(declare-fun res!398117 () Bool)

(assert (=> b!617792 (=> (not res!398117) (not e!354276))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6446 0))(
  ( (MissingZero!6446 (index!28067 (_ BitVec 32))) (Found!6446 (index!28068 (_ BitVec 32))) (Intermediate!6446 (undefined!7258 Bool) (index!28069 (_ BitVec 32)) (x!56879 (_ BitVec 32))) (Undefined!6446) (MissingVacant!6446 (index!28070 (_ BitVec 32))) )
))
(declare-fun lt!284720 () SeekEntryResult!6446)

(assert (=> b!617792 (= res!398117 (and (= lt!284720 (Found!6446 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17999 a!2986) index!984) (select (arr!17999 a!2986) j!136))) (not (= (select (arr!17999 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37513 (_ BitVec 32)) SeekEntryResult!6446)

(assert (=> b!617792 (= lt!284720 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17999 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617793 () Bool)

(assert (=> b!617793 false))

(declare-fun lt!284723 () array!37513)

(declare-fun lt!284726 () Unit!20280)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37513 (_ BitVec 64) (_ BitVec 32) List!12093) Unit!20280)

(assert (=> b!617793 (= lt!284726 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284723 (select (arr!17999 a!2986) j!136) j!136 Nil!12090))))

(assert (=> b!617793 (arrayNoDuplicates!0 lt!284723 j!136 Nil!12090)))

(declare-fun lt!284730 () Unit!20280)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37513 (_ BitVec 32) (_ BitVec 32)) Unit!20280)

(assert (=> b!617793 (= lt!284730 (lemmaNoDuplicateFromThenFromBigger!0 lt!284723 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617793 (arrayNoDuplicates!0 lt!284723 #b00000000000000000000000000000000 Nil!12090)))

(declare-fun lt!284728 () Unit!20280)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37513 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12093) Unit!20280)

(assert (=> b!617793 (= lt!284728 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12090))))

(declare-fun arrayContainsKey!0 (array!37513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617793 (arrayContainsKey!0 lt!284723 (select (arr!17999 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284722 () Unit!20280)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37513 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20280)

(assert (=> b!617793 (= lt!284722 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284723 (select (arr!17999 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20284 () Unit!20280)

(assert (=> b!617793 (= e!354284 Unit!20284)))

(declare-fun b!617794 () Bool)

(declare-fun e!354282 () Bool)

(assert (=> b!617794 (= e!354282 true)))

(assert (=> b!617794 (= (select (store (arr!17999 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617795 () Bool)

(declare-fun e!354281 () Unit!20280)

(declare-fun Unit!20285 () Unit!20280)

(assert (=> b!617795 (= e!354281 Unit!20285)))

(assert (=> b!617795 false))

(declare-fun res!398122 () Bool)

(declare-fun b!617796 () Bool)

(assert (=> b!617796 (= res!398122 (arrayContainsKey!0 lt!284723 (select (arr!17999 a!2986) j!136) j!136))))

(declare-fun e!354273 () Bool)

(assert (=> b!617796 (=> (not res!398122) (not e!354273))))

(declare-fun e!354283 () Bool)

(assert (=> b!617796 (= e!354283 e!354273)))

(declare-fun b!617797 () Bool)

(declare-fun res!398110 () Bool)

(assert (=> b!617797 (=> (not res!398110) (not e!354279))))

(assert (=> b!617797 (= res!398110 (and (= (size!18363 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18363 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18363 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617798 () Bool)

(declare-fun res!398112 () Bool)

(assert (=> b!617798 (=> (not res!398112) (not e!354279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617798 (= res!398112 (validKeyInArray!0 (select (arr!17999 a!2986) j!136)))))

(declare-fun b!617799 () Bool)

(declare-fun res!398107 () Bool)

(assert (=> b!617799 (=> (not res!398107) (not e!354286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37513 (_ BitVec 32)) Bool)

(assert (=> b!617799 (= res!398107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617800 () Bool)

(assert (=> b!617800 (= e!354276 (not e!354282))))

(declare-fun res!398113 () Bool)

(assert (=> b!617800 (=> res!398113 e!354282)))

(declare-fun lt!284735 () SeekEntryResult!6446)

(assert (=> b!617800 (= res!398113 (not (= lt!284735 (MissingVacant!6446 vacantSpotIndex!68))))))

(declare-fun lt!284733 () Unit!20280)

(assert (=> b!617800 (= lt!284733 e!354275)))

(declare-fun c!70210 () Bool)

(assert (=> b!617800 (= c!70210 (= lt!284735 (Found!6446 index!984)))))

(declare-fun lt!284717 () Unit!20280)

(assert (=> b!617800 (= lt!284717 e!354281)))

(declare-fun c!70208 () Bool)

(assert (=> b!617800 (= c!70208 (= lt!284735 Undefined!6446))))

(declare-fun lt!284729 () (_ BitVec 64))

(assert (=> b!617800 (= lt!284735 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284729 lt!284723 mask!3053))))

(declare-fun e!354272 () Bool)

(assert (=> b!617800 e!354272))

(declare-fun res!398114 () Bool)

(assert (=> b!617800 (=> (not res!398114) (not e!354272))))

(declare-fun lt!284734 () (_ BitVec 32))

(declare-fun lt!284725 () SeekEntryResult!6446)

(assert (=> b!617800 (= res!398114 (= lt!284725 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284734 vacantSpotIndex!68 lt!284729 lt!284723 mask!3053)))))

(assert (=> b!617800 (= lt!284725 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284734 vacantSpotIndex!68 (select (arr!17999 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617800 (= lt!284729 (select (store (arr!17999 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284732 () Unit!20280)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37513 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20280)

(assert (=> b!617800 (= lt!284732 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284734 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617800 (= lt!284734 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617801 () Bool)

(declare-fun res!398116 () Bool)

(assert (=> b!617801 (=> (not res!398116) (not e!354286))))

(assert (=> b!617801 (= res!398116 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17999 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617802 () Bool)

(assert (=> b!617802 (= e!354273 (arrayContainsKey!0 lt!284723 (select (arr!17999 a!2986) j!136) index!984))))

(declare-fun b!617803 () Bool)

(assert (=> b!617803 (= e!354272 (= lt!284720 lt!284725))))

(declare-fun e!354277 () Bool)

(declare-fun b!617804 () Bool)

(assert (=> b!617804 (= e!354277 (arrayContainsKey!0 lt!284723 (select (arr!17999 a!2986) j!136) index!984))))

(declare-fun b!617805 () Bool)

(declare-fun Unit!20286 () Unit!20280)

(assert (=> b!617805 (= e!354284 Unit!20286)))

(declare-fun b!617806 () Bool)

(assert (=> b!617806 false))

(declare-fun lt!284719 () Unit!20280)

(assert (=> b!617806 (= lt!284719 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284723 (select (arr!17999 a!2986) j!136) index!984 Nil!12090))))

(assert (=> b!617806 (arrayNoDuplicates!0 lt!284723 index!984 Nil!12090)))

(declare-fun lt!284731 () Unit!20280)

(assert (=> b!617806 (= lt!284731 (lemmaNoDuplicateFromThenFromBigger!0 lt!284723 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617806 (arrayNoDuplicates!0 lt!284723 #b00000000000000000000000000000000 Nil!12090)))

(declare-fun lt!284718 () Unit!20280)

(assert (=> b!617806 (= lt!284718 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12090))))

(assert (=> b!617806 (arrayContainsKey!0 lt!284723 (select (arr!17999 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284736 () Unit!20280)

(assert (=> b!617806 (= lt!284736 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284723 (select (arr!17999 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!617806 e!354277))

(declare-fun res!398109 () Bool)

(assert (=> b!617806 (=> (not res!398109) (not e!354277))))

(assert (=> b!617806 (= res!398109 (arrayContainsKey!0 lt!284723 (select (arr!17999 a!2986) j!136) j!136))))

(declare-fun Unit!20287 () Unit!20280)

(assert (=> b!617806 (= e!354285 Unit!20287)))

(declare-fun b!617807 () Bool)

(assert (=> b!617807 (= e!354286 e!354274)))

(declare-fun res!398108 () Bool)

(assert (=> b!617807 (=> (not res!398108) (not e!354274))))

(assert (=> b!617807 (= res!398108 (= (select (store (arr!17999 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617807 (= lt!284723 (array!37514 (store (arr!17999 a!2986) i!1108 k!1786) (size!18363 a!2986)))))

(declare-fun b!617808 () Bool)

(declare-fun res!398118 () Bool)

(assert (=> b!617808 (= res!398118 (bvsge j!136 index!984))))

(assert (=> b!617808 (=> res!398118 e!354283)))

(assert (=> b!617808 (= e!354278 e!354283)))

(declare-fun b!617809 () Bool)

(declare-fun Unit!20288 () Unit!20280)

(assert (=> b!617809 (= e!354285 Unit!20288)))

(declare-fun b!617810 () Bool)

(declare-fun Unit!20289 () Unit!20280)

(assert (=> b!617810 (= e!354281 Unit!20289)))

(declare-fun b!617811 () Bool)

(declare-fun res!398115 () Bool)

(assert (=> b!617811 (=> (not res!398115) (not e!354279))))

(assert (=> b!617811 (= res!398115 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617812 () Bool)

(assert (=> b!617812 (= e!354279 e!354286)))

(declare-fun res!398119 () Bool)

(assert (=> b!617812 (=> (not res!398119) (not e!354286))))

(declare-fun lt!284727 () SeekEntryResult!6446)

(assert (=> b!617812 (= res!398119 (or (= lt!284727 (MissingZero!6446 i!1108)) (= lt!284727 (MissingVacant!6446 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37513 (_ BitVec 32)) SeekEntryResult!6446)

(assert (=> b!617812 (= lt!284727 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617813 () Bool)

(declare-fun res!398121 () Bool)

(assert (=> b!617813 (=> (not res!398121) (not e!354279))))

(assert (=> b!617813 (= res!398121 (validKeyInArray!0 k!1786))))

(assert (= (and start!56080 res!398123) b!617797))

(assert (= (and b!617797 res!398110) b!617798))

(assert (= (and b!617798 res!398112) b!617813))

(assert (= (and b!617813 res!398121) b!617811))

(assert (= (and b!617811 res!398115) b!617812))

(assert (= (and b!617812 res!398119) b!617799))

(assert (= (and b!617799 res!398107) b!617790))

(assert (= (and b!617790 res!398111) b!617801))

(assert (= (and b!617801 res!398116) b!617807))

(assert (= (and b!617807 res!398108) b!617792))

(assert (= (and b!617792 res!398117) b!617800))

(assert (= (and b!617800 res!398114) b!617803))

(assert (= (and b!617800 c!70208) b!617795))

(assert (= (and b!617800 (not c!70208)) b!617810))

(assert (= (and b!617800 c!70210) b!617791))

(assert (= (and b!617800 (not c!70210)) b!617789))

(assert (= (and b!617791 res!398120) b!617808))

(assert (= (and b!617808 (not res!398118)) b!617796))

(assert (= (and b!617796 res!398122) b!617802))

(assert (= (and b!617791 c!70211) b!617793))

(assert (= (and b!617791 (not c!70211)) b!617805))

(assert (= (and b!617791 c!70209) b!617806))

(assert (= (and b!617791 (not c!70209)) b!617809))

(assert (= (and b!617806 res!398109) b!617804))

(assert (= (and b!617800 (not res!398113)) b!617794))

(declare-fun m!593909 () Bool)

(assert (=> b!617800 m!593909))

(declare-fun m!593911 () Bool)

(assert (=> b!617800 m!593911))

(declare-fun m!593913 () Bool)

(assert (=> b!617800 m!593913))

(declare-fun m!593915 () Bool)

(assert (=> b!617800 m!593915))

(declare-fun m!593917 () Bool)

(assert (=> b!617800 m!593917))

(declare-fun m!593919 () Bool)

(assert (=> b!617800 m!593919))

(declare-fun m!593921 () Bool)

(assert (=> b!617800 m!593921))

(assert (=> b!617800 m!593913))

(declare-fun m!593923 () Bool)

(assert (=> b!617800 m!593923))

(declare-fun m!593925 () Bool)

(assert (=> b!617793 m!593925))

(assert (=> b!617793 m!593913))

(declare-fun m!593927 () Bool)

(assert (=> b!617793 m!593927))

(assert (=> b!617793 m!593913))

(declare-fun m!593929 () Bool)

(assert (=> b!617793 m!593929))

(declare-fun m!593931 () Bool)

(assert (=> b!617793 m!593931))

(declare-fun m!593933 () Bool)

(assert (=> b!617793 m!593933))

(assert (=> b!617793 m!593913))

(declare-fun m!593935 () Bool)

(assert (=> b!617793 m!593935))

(assert (=> b!617793 m!593913))

(declare-fun m!593937 () Bool)

(assert (=> b!617793 m!593937))

(declare-fun m!593939 () Bool)

(assert (=> b!617813 m!593939))

(assert (=> b!617798 m!593913))

(assert (=> b!617798 m!593913))

(declare-fun m!593941 () Bool)

(assert (=> b!617798 m!593941))

(assert (=> b!617807 m!593915))

(declare-fun m!593943 () Bool)

(assert (=> b!617807 m!593943))

(declare-fun m!593945 () Bool)

(assert (=> b!617790 m!593945))

(assert (=> b!617804 m!593913))

(assert (=> b!617804 m!593913))

(declare-fun m!593947 () Bool)

(assert (=> b!617804 m!593947))

(declare-fun m!593949 () Bool)

(assert (=> b!617799 m!593949))

(assert (=> b!617791 m!593915))

(declare-fun m!593951 () Bool)

(assert (=> b!617791 m!593951))

(assert (=> b!617791 m!593913))

(declare-fun m!593953 () Bool)

(assert (=> b!617801 m!593953))

(declare-fun m!593955 () Bool)

(assert (=> b!617792 m!593955))

(assert (=> b!617792 m!593913))

(assert (=> b!617792 m!593913))

(declare-fun m!593957 () Bool)

(assert (=> b!617792 m!593957))

(declare-fun m!593959 () Bool)

(assert (=> b!617811 m!593959))

(declare-fun m!593961 () Bool)

(assert (=> start!56080 m!593961))

(declare-fun m!593963 () Bool)

(assert (=> start!56080 m!593963))

(assert (=> b!617802 m!593913))

(assert (=> b!617802 m!593913))

(assert (=> b!617802 m!593947))

(assert (=> b!617794 m!593915))

(assert (=> b!617794 m!593951))

(assert (=> b!617796 m!593913))

(assert (=> b!617796 m!593913))

(declare-fun m!593965 () Bool)

(assert (=> b!617796 m!593965))

(assert (=> b!617806 m!593925))

(assert (=> b!617806 m!593913))

(assert (=> b!617806 m!593965))

(assert (=> b!617806 m!593913))

(declare-fun m!593967 () Bool)

(assert (=> b!617806 m!593967))

(declare-fun m!593969 () Bool)

(assert (=> b!617806 m!593969))

(assert (=> b!617806 m!593913))

(declare-fun m!593971 () Bool)

(assert (=> b!617806 m!593971))

(declare-fun m!593973 () Bool)

(assert (=> b!617806 m!593973))

(assert (=> b!617806 m!593931))

(assert (=> b!617806 m!593913))

(declare-fun m!593975 () Bool)

(assert (=> b!617806 m!593975))

(assert (=> b!617806 m!593913))

(declare-fun m!593977 () Bool)

(assert (=> b!617812 m!593977))

(push 1)

