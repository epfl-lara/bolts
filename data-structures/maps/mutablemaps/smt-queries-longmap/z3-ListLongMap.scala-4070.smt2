; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55928 () Bool)

(assert start!55928)

(declare-fun b!612097 () Bool)

(declare-datatypes ((Unit!19648 0))(
  ( (Unit!19649) )
))
(declare-fun e!350838 () Unit!19648)

(declare-fun Unit!19650 () Unit!19648)

(assert (=> b!612097 (= e!350838 Unit!19650)))

(declare-fun res!393879 () Bool)

(declare-fun e!350841 () Bool)

(assert (=> start!55928 (=> (not res!393879) (not e!350841))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55928 (= res!393879 (validMask!0 mask!3053))))

(assert (=> start!55928 e!350841))

(assert (=> start!55928 true))

(declare-datatypes ((array!37361 0))(
  ( (array!37362 (arr!17923 (Array (_ BitVec 32) (_ BitVec 64))) (size!18287 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37361)

(declare-fun array_inv!13697 (array!37361) Bool)

(assert (=> start!55928 (array_inv!13697 a!2986)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!612098 () Bool)

(declare-fun lt!280288 () array!37361)

(declare-fun e!350848 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612098 (= e!350848 (arrayContainsKey!0 lt!280288 (select (arr!17923 a!2986) j!136) index!984))))

(declare-fun b!612099 () Bool)

(declare-fun res!393866 () Bool)

(assert (=> b!612099 (=> (not res!393866) (not e!350841))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!612099 (= res!393866 (and (= (size!18287 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18287 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18287 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612100 () Bool)

(declare-fun e!350847 () Unit!19648)

(declare-fun Unit!19651 () Unit!19648)

(assert (=> b!612100 (= e!350847 Unit!19651)))

(declare-fun b!612101 () Bool)

(declare-fun res!393867 () Bool)

(assert (=> b!612101 (=> (not res!393867) (not e!350841))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!612101 (= res!393867 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!612102 () Bool)

(declare-fun e!350845 () Bool)

(declare-fun e!350835 () Bool)

(assert (=> b!612102 (= e!350845 e!350835)))

(declare-fun res!393876 () Bool)

(assert (=> b!612102 (=> (not res!393876) (not e!350835))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!612102 (= res!393876 (= (select (store (arr!17923 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!612102 (= lt!280288 (array!37362 (store (arr!17923 a!2986) i!1108 k0!1786) (size!18287 a!2986)))))

(declare-fun b!612103 () Bool)

(declare-fun res!393872 () Bool)

(assert (=> b!612103 (=> (not res!393872) (not e!350845))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!612103 (= res!393872 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17923 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612104 () Bool)

(declare-fun e!350834 () Bool)

(declare-fun e!350842 () Bool)

(assert (=> b!612104 (= e!350834 (not e!350842))))

(declare-fun res!393864 () Bool)

(assert (=> b!612104 (=> res!393864 e!350842)))

(declare-datatypes ((SeekEntryResult!6370 0))(
  ( (MissingZero!6370 (index!27763 (_ BitVec 32))) (Found!6370 (index!27764 (_ BitVec 32))) (Intermediate!6370 (undefined!7182 Bool) (index!27765 (_ BitVec 32)) (x!56603 (_ BitVec 32))) (Undefined!6370) (MissingVacant!6370 (index!27766 (_ BitVec 32))) )
))
(declare-fun lt!280283 () SeekEntryResult!6370)

(assert (=> b!612104 (= res!393864 (not (= lt!280283 (Found!6370 index!984))))))

(declare-fun lt!280287 () Unit!19648)

(assert (=> b!612104 (= lt!280287 e!350838)))

(declare-fun c!69485 () Bool)

(assert (=> b!612104 (= c!69485 (= lt!280283 Undefined!6370))))

(declare-fun lt!280284 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37361 (_ BitVec 32)) SeekEntryResult!6370)

(assert (=> b!612104 (= lt!280283 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280284 lt!280288 mask!3053))))

(declare-fun e!350846 () Bool)

(assert (=> b!612104 e!350846))

(declare-fun res!393874 () Bool)

(assert (=> b!612104 (=> (not res!393874) (not e!350846))))

(declare-fun lt!280277 () (_ BitVec 32))

(declare-fun lt!280290 () SeekEntryResult!6370)

(assert (=> b!612104 (= res!393874 (= lt!280290 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280277 vacantSpotIndex!68 lt!280284 lt!280288 mask!3053)))))

(assert (=> b!612104 (= lt!280290 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280277 vacantSpotIndex!68 (select (arr!17923 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612104 (= lt!280284 (select (store (arr!17923 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!280282 () Unit!19648)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37361 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19648)

(assert (=> b!612104 (= lt!280282 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280277 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612104 (= lt!280277 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!612105 () Bool)

(declare-fun res!393880 () Bool)

(assert (=> b!612105 (=> (not res!393880) (not e!350845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37361 (_ BitVec 32)) Bool)

(assert (=> b!612105 (= res!393880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612106 () Bool)

(declare-fun Unit!19652 () Unit!19648)

(assert (=> b!612106 (= e!350847 Unit!19652)))

(declare-fun lt!280281 () Unit!19648)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37361 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19648)

(assert (=> b!612106 (= lt!280281 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280288 (select (arr!17923 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!612106 (arrayContainsKey!0 lt!280288 (select (arr!17923 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280292 () Unit!19648)

(declare-datatypes ((List!12017 0))(
  ( (Nil!12014) (Cons!12013 (h!13058 (_ BitVec 64)) (t!18253 List!12017)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37361 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12017) Unit!19648)

(assert (=> b!612106 (= lt!280292 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12014))))

(declare-fun arrayNoDuplicates!0 (array!37361 (_ BitVec 32) List!12017) Bool)

(assert (=> b!612106 (arrayNoDuplicates!0 lt!280288 #b00000000000000000000000000000000 Nil!12014)))

(declare-fun lt!280280 () Unit!19648)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37361 (_ BitVec 32) (_ BitVec 32)) Unit!19648)

(assert (=> b!612106 (= lt!280280 (lemmaNoDuplicateFromThenFromBigger!0 lt!280288 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612106 (arrayNoDuplicates!0 lt!280288 j!136 Nil!12014)))

(declare-fun lt!280291 () Unit!19648)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37361 (_ BitVec 64) (_ BitVec 32) List!12017) Unit!19648)

(assert (=> b!612106 (= lt!280291 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280288 (select (arr!17923 a!2986) j!136) j!136 Nil!12014))))

(assert (=> b!612106 false))

(declare-fun b!612107 () Bool)

(declare-fun e!350843 () Bool)

(declare-fun e!350837 () Bool)

(assert (=> b!612107 (= e!350843 e!350837)))

(declare-fun res!393863 () Bool)

(assert (=> b!612107 (=> res!393863 e!350837)))

(assert (=> b!612107 (= res!393863 (bvsge index!984 j!136))))

(declare-fun lt!280278 () Unit!19648)

(assert (=> b!612107 (= lt!280278 e!350847)))

(declare-fun c!69484 () Bool)

(assert (=> b!612107 (= c!69484 (bvslt j!136 index!984))))

(declare-fun b!612108 () Bool)

(declare-fun Unit!19653 () Unit!19648)

(assert (=> b!612108 (= e!350838 Unit!19653)))

(assert (=> b!612108 false))

(declare-fun b!612109 () Bool)

(assert (=> b!612109 (= e!350842 e!350843)))

(declare-fun res!393869 () Bool)

(assert (=> b!612109 (=> res!393869 e!350843)))

(declare-fun lt!280285 () (_ BitVec 64))

(assert (=> b!612109 (= res!393869 (or (not (= (select (arr!17923 a!2986) j!136) lt!280284)) (not (= (select (arr!17923 a!2986) j!136) lt!280285))))))

(declare-fun e!350840 () Bool)

(assert (=> b!612109 e!350840))

(declare-fun res!393881 () Bool)

(assert (=> b!612109 (=> (not res!393881) (not e!350840))))

(assert (=> b!612109 (= res!393881 (= lt!280285 (select (arr!17923 a!2986) j!136)))))

(assert (=> b!612109 (= lt!280285 (select (store (arr!17923 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!612110 () Bool)

(declare-fun res!393878 () Bool)

(assert (=> b!612110 (=> (not res!393878) (not e!350841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612110 (= res!393878 (validKeyInArray!0 k0!1786))))

(declare-fun b!612111 () Bool)

(declare-fun e!350839 () Bool)

(assert (=> b!612111 (= e!350839 e!350848)))

(declare-fun res!393865 () Bool)

(assert (=> b!612111 (=> (not res!393865) (not e!350848))))

(assert (=> b!612111 (= res!393865 (arrayContainsKey!0 lt!280288 (select (arr!17923 a!2986) j!136) j!136))))

(declare-fun b!612112 () Bool)

(declare-fun lt!280286 () SeekEntryResult!6370)

(assert (=> b!612112 (= e!350846 (= lt!280286 lt!280290))))

(declare-fun b!612113 () Bool)

(declare-fun res!393870 () Bool)

(assert (=> b!612113 (=> (not res!393870) (not e!350845))))

(assert (=> b!612113 (= res!393870 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12014))))

(declare-fun b!612114 () Bool)

(declare-fun res!393871 () Bool)

(assert (=> b!612114 (=> (not res!393871) (not e!350841))))

(assert (=> b!612114 (= res!393871 (validKeyInArray!0 (select (arr!17923 a!2986) j!136)))))

(declare-fun b!612115 () Bool)

(assert (=> b!612115 (= e!350841 e!350845)))

(declare-fun res!393868 () Bool)

(assert (=> b!612115 (=> (not res!393868) (not e!350845))))

(declare-fun lt!280279 () SeekEntryResult!6370)

(assert (=> b!612115 (= res!393868 (or (= lt!280279 (MissingZero!6370 i!1108)) (= lt!280279 (MissingVacant!6370 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37361 (_ BitVec 32)) SeekEntryResult!6370)

(assert (=> b!612115 (= lt!280279 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!612116 () Bool)

(assert (=> b!612116 (= e!350835 e!350834)))

(declare-fun res!393877 () Bool)

(assert (=> b!612116 (=> (not res!393877) (not e!350834))))

(assert (=> b!612116 (= res!393877 (and (= lt!280286 (Found!6370 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17923 a!2986) index!984) (select (arr!17923 a!2986) j!136))) (not (= (select (arr!17923 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!612116 (= lt!280286 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17923 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!350844 () Bool)

(declare-fun b!612117 () Bool)

(assert (=> b!612117 (= e!350844 (arrayContainsKey!0 lt!280288 (select (arr!17923 a!2986) j!136) index!984))))

(declare-fun b!612118 () Bool)

(assert (=> b!612118 (= e!350840 e!350839)))

(declare-fun res!393873 () Bool)

(assert (=> b!612118 (=> res!393873 e!350839)))

(assert (=> b!612118 (= res!393873 (or (not (= (select (arr!17923 a!2986) j!136) lt!280284)) (not (= (select (arr!17923 a!2986) j!136) lt!280285)) (bvsge j!136 index!984)))))

(declare-fun b!612119 () Bool)

(assert (=> b!612119 (= e!350837 true)))

(assert (=> b!612119 (arrayNoDuplicates!0 lt!280288 #b00000000000000000000000000000000 Nil!12014)))

(declare-fun lt!280289 () Unit!19648)

(assert (=> b!612119 (= lt!280289 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12014))))

(assert (=> b!612119 (arrayContainsKey!0 lt!280288 (select (arr!17923 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280293 () Unit!19648)

(assert (=> b!612119 (= lt!280293 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280288 (select (arr!17923 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!612119 e!350844))

(declare-fun res!393875 () Bool)

(assert (=> b!612119 (=> (not res!393875) (not e!350844))))

(assert (=> b!612119 (= res!393875 (arrayContainsKey!0 lt!280288 (select (arr!17923 a!2986) j!136) j!136))))

(assert (= (and start!55928 res!393879) b!612099))

(assert (= (and b!612099 res!393866) b!612114))

(assert (= (and b!612114 res!393871) b!612110))

(assert (= (and b!612110 res!393878) b!612101))

(assert (= (and b!612101 res!393867) b!612115))

(assert (= (and b!612115 res!393868) b!612105))

(assert (= (and b!612105 res!393880) b!612113))

(assert (= (and b!612113 res!393870) b!612103))

(assert (= (and b!612103 res!393872) b!612102))

(assert (= (and b!612102 res!393876) b!612116))

(assert (= (and b!612116 res!393877) b!612104))

(assert (= (and b!612104 res!393874) b!612112))

(assert (= (and b!612104 c!69485) b!612108))

(assert (= (and b!612104 (not c!69485)) b!612097))

(assert (= (and b!612104 (not res!393864)) b!612109))

(assert (= (and b!612109 res!393881) b!612118))

(assert (= (and b!612118 (not res!393873)) b!612111))

(assert (= (and b!612111 res!393865) b!612098))

(assert (= (and b!612109 (not res!393869)) b!612107))

(assert (= (and b!612107 c!69484) b!612106))

(assert (= (and b!612107 (not c!69484)) b!612100))

(assert (= (and b!612107 (not res!393863)) b!612119))

(assert (= (and b!612119 res!393875) b!612117))

(declare-fun m!588505 () Bool)

(assert (=> b!612102 m!588505))

(declare-fun m!588507 () Bool)

(assert (=> b!612102 m!588507))

(declare-fun m!588509 () Bool)

(assert (=> b!612113 m!588509))

(declare-fun m!588511 () Bool)

(assert (=> start!55928 m!588511))

(declare-fun m!588513 () Bool)

(assert (=> start!55928 m!588513))

(declare-fun m!588515 () Bool)

(assert (=> b!612117 m!588515))

(assert (=> b!612117 m!588515))

(declare-fun m!588517 () Bool)

(assert (=> b!612117 m!588517))

(assert (=> b!612118 m!588515))

(assert (=> b!612111 m!588515))

(assert (=> b!612111 m!588515))

(declare-fun m!588519 () Bool)

(assert (=> b!612111 m!588519))

(assert (=> b!612114 m!588515))

(assert (=> b!612114 m!588515))

(declare-fun m!588521 () Bool)

(assert (=> b!612114 m!588521))

(assert (=> b!612098 m!588515))

(assert (=> b!612098 m!588515))

(assert (=> b!612098 m!588517))

(declare-fun m!588523 () Bool)

(assert (=> b!612104 m!588523))

(declare-fun m!588525 () Bool)

(assert (=> b!612104 m!588525))

(assert (=> b!612104 m!588515))

(assert (=> b!612104 m!588505))

(declare-fun m!588527 () Bool)

(assert (=> b!612104 m!588527))

(declare-fun m!588529 () Bool)

(assert (=> b!612104 m!588529))

(declare-fun m!588531 () Bool)

(assert (=> b!612104 m!588531))

(assert (=> b!612104 m!588515))

(declare-fun m!588533 () Bool)

(assert (=> b!612104 m!588533))

(declare-fun m!588535 () Bool)

(assert (=> b!612101 m!588535))

(declare-fun m!588537 () Bool)

(assert (=> b!612115 m!588537))

(assert (=> b!612109 m!588515))

(assert (=> b!612109 m!588505))

(declare-fun m!588539 () Bool)

(assert (=> b!612109 m!588539))

(declare-fun m!588541 () Bool)

(assert (=> b!612110 m!588541))

(declare-fun m!588543 () Bool)

(assert (=> b!612116 m!588543))

(assert (=> b!612116 m!588515))

(assert (=> b!612116 m!588515))

(declare-fun m!588545 () Bool)

(assert (=> b!612116 m!588545))

(declare-fun m!588547 () Bool)

(assert (=> b!612106 m!588547))

(assert (=> b!612106 m!588515))

(assert (=> b!612106 m!588515))

(declare-fun m!588549 () Bool)

(assert (=> b!612106 m!588549))

(declare-fun m!588551 () Bool)

(assert (=> b!612106 m!588551))

(assert (=> b!612106 m!588515))

(declare-fun m!588553 () Bool)

(assert (=> b!612106 m!588553))

(declare-fun m!588555 () Bool)

(assert (=> b!612106 m!588555))

(assert (=> b!612106 m!588515))

(declare-fun m!588557 () Bool)

(assert (=> b!612106 m!588557))

(declare-fun m!588559 () Bool)

(assert (=> b!612106 m!588559))

(assert (=> b!612119 m!588515))

(assert (=> b!612119 m!588515))

(assert (=> b!612119 m!588519))

(assert (=> b!612119 m!588515))

(declare-fun m!588561 () Bool)

(assert (=> b!612119 m!588561))

(assert (=> b!612119 m!588515))

(declare-fun m!588563 () Bool)

(assert (=> b!612119 m!588563))

(assert (=> b!612119 m!588559))

(assert (=> b!612119 m!588555))

(declare-fun m!588565 () Bool)

(assert (=> b!612105 m!588565))

(declare-fun m!588567 () Bool)

(assert (=> b!612103 m!588567))

(check-sat (not b!612117) (not b!612098) (not b!612114) (not b!612104) (not b!612110) (not b!612105) (not b!612101) (not b!612113) (not b!612115) (not b!612119) (not start!55928) (not b!612116) (not b!612111) (not b!612106))
(check-sat)
