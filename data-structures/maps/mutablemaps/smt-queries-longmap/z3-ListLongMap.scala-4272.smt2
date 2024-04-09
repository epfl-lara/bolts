; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59390 () Bool)

(assert start!59390)

(declare-fun b!655818 () Bool)

(declare-datatypes ((Unit!22604 0))(
  ( (Unit!22605) )
))
(declare-fun e!376638 () Unit!22604)

(declare-fun Unit!22606 () Unit!22604)

(assert (=> b!655818 (= e!376638 Unit!22606)))

(declare-fun b!655819 () Bool)

(declare-fun res!425528 () Bool)

(declare-fun e!376646 () Bool)

(assert (=> b!655819 (=> (not res!425528) (not e!376646))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38666 0))(
  ( (array!38667 (arr!18529 (Array (_ BitVec 32) (_ BitVec 64))) (size!18893 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38666)

(assert (=> b!655819 (= res!425528 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18529 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655820 () Bool)

(declare-fun e!376642 () Unit!22604)

(declare-fun Unit!22607 () Unit!22604)

(assert (=> b!655820 (= e!376642 Unit!22607)))

(assert (=> b!655820 false))

(declare-fun b!655821 () Bool)

(declare-fun res!425535 () Bool)

(declare-fun e!376643 () Bool)

(assert (=> b!655821 (=> (not res!425535) (not e!376643))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655821 (= res!425535 (validKeyInArray!0 k0!1786))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!376648 () Bool)

(declare-fun b!655822 () Bool)

(declare-fun lt!306128 () array!38666)

(declare-fun arrayContainsKey!0 (array!38666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655822 (= e!376648 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) index!984))))

(declare-fun b!655823 () Bool)

(declare-fun res!425539 () Bool)

(assert (=> b!655823 (=> (not res!425539) (not e!376646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38666 (_ BitVec 32)) Bool)

(assert (=> b!655823 (= res!425539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!425532 () Bool)

(assert (=> start!59390 (=> (not res!425532) (not e!376643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59390 (= res!425532 (validMask!0 mask!3053))))

(assert (=> start!59390 e!376643))

(assert (=> start!59390 true))

(declare-fun array_inv!14303 (array!38666) Bool)

(assert (=> start!59390 (array_inv!14303 a!2986)))

(declare-fun b!655824 () Bool)

(declare-fun Unit!22608 () Unit!22604)

(assert (=> b!655824 (= e!376638 Unit!22608)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!425541 () Bool)

(assert (=> b!655824 (= res!425541 (= (select (store (arr!18529 a!2986) i!1108 k0!1786) index!984) (select (arr!18529 a!2986) j!136)))))

(declare-fun e!376639 () Bool)

(assert (=> b!655824 (=> (not res!425541) (not e!376639))))

(assert (=> b!655824 e!376639))

(declare-fun c!75513 () Bool)

(assert (=> b!655824 (= c!75513 (bvslt j!136 index!984))))

(declare-fun lt!306134 () Unit!22604)

(declare-fun e!376651 () Unit!22604)

(assert (=> b!655824 (= lt!306134 e!376651)))

(declare-fun c!75515 () Bool)

(assert (=> b!655824 (= c!75515 (bvslt index!984 j!136))))

(declare-fun lt!306138 () Unit!22604)

(declare-fun e!376644 () Unit!22604)

(assert (=> b!655824 (= lt!306138 e!376644)))

(assert (=> b!655824 false))

(declare-fun b!655825 () Bool)

(declare-fun res!425533 () Bool)

(assert (=> b!655825 (=> (not res!425533) (not e!376646))))

(declare-datatypes ((List!12623 0))(
  ( (Nil!12620) (Cons!12619 (h!13664 (_ BitVec 64)) (t!18859 List!12623)) )
))
(declare-fun arrayNoDuplicates!0 (array!38666 (_ BitVec 32) List!12623) Bool)

(assert (=> b!655825 (= res!425533 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12620))))

(declare-fun res!425529 () Bool)

(declare-fun b!655826 () Bool)

(assert (=> b!655826 (= res!425529 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) j!136))))

(declare-fun e!376645 () Bool)

(assert (=> b!655826 (=> (not res!425529) (not e!376645))))

(declare-fun e!376647 () Bool)

(assert (=> b!655826 (= e!376647 e!376645)))

(declare-fun b!655827 () Bool)

(assert (=> b!655827 false))

(declare-fun lt!306141 () Unit!22604)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38666 (_ BitVec 64) (_ BitVec 32) List!12623) Unit!22604)

(assert (=> b!655827 (= lt!306141 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306128 (select (arr!18529 a!2986) j!136) j!136 Nil!12620))))

(assert (=> b!655827 (arrayNoDuplicates!0 lt!306128 j!136 Nil!12620)))

(declare-fun lt!306124 () Unit!22604)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38666 (_ BitVec 32) (_ BitVec 32)) Unit!22604)

(assert (=> b!655827 (= lt!306124 (lemmaNoDuplicateFromThenFromBigger!0 lt!306128 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655827 (arrayNoDuplicates!0 lt!306128 #b00000000000000000000000000000000 Nil!12620)))

(declare-fun lt!306127 () Unit!22604)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12623) Unit!22604)

(assert (=> b!655827 (= lt!306127 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12620))))

(assert (=> b!655827 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306123 () Unit!22604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22604)

(assert (=> b!655827 (= lt!306123 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306128 (select (arr!18529 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22609 () Unit!22604)

(assert (=> b!655827 (= e!376651 Unit!22609)))

(declare-fun b!655828 () Bool)

(declare-fun e!376649 () Bool)

(declare-datatypes ((SeekEntryResult!6976 0))(
  ( (MissingZero!6976 (index!30262 (_ BitVec 32))) (Found!6976 (index!30263 (_ BitVec 32))) (Intermediate!6976 (undefined!7788 Bool) (index!30264 (_ BitVec 32)) (x!59074 (_ BitVec 32))) (Undefined!6976) (MissingVacant!6976 (index!30265 (_ BitVec 32))) )
))
(declare-fun lt!306137 () SeekEntryResult!6976)

(declare-fun lt!306135 () SeekEntryResult!6976)

(assert (=> b!655828 (= e!376649 (= lt!306137 lt!306135))))

(declare-fun b!655829 () Bool)

(declare-fun res!425543 () Bool)

(assert (=> b!655829 (=> (not res!425543) (not e!376643))))

(assert (=> b!655829 (= res!425543 (and (= (size!18893 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18893 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18893 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655830 () Bool)

(declare-fun Unit!22610 () Unit!22604)

(assert (=> b!655830 (= e!376642 Unit!22610)))

(declare-fun b!655831 () Bool)

(assert (=> b!655831 (= e!376643 e!376646)))

(declare-fun res!425536 () Bool)

(assert (=> b!655831 (=> (not res!425536) (not e!376646))))

(declare-fun lt!306131 () SeekEntryResult!6976)

(assert (=> b!655831 (= res!425536 (or (= lt!306131 (MissingZero!6976 i!1108)) (= lt!306131 (MissingVacant!6976 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38666 (_ BitVec 32)) SeekEntryResult!6976)

(assert (=> b!655831 (= lt!306131 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!655832 () Bool)

(assert (=> b!655832 (= e!376645 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) index!984))))

(declare-fun e!376640 () Bool)

(declare-fun lt!306133 () SeekEntryResult!6976)

(declare-fun b!655833 () Bool)

(assert (=> b!655833 (= e!376640 (not (or (not (= lt!306133 (MissingVacant!6976 vacantSpotIndex!68))) (= (select (store (arr!18529 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!306130 () Unit!22604)

(assert (=> b!655833 (= lt!306130 e!376638)))

(declare-fun c!75512 () Bool)

(assert (=> b!655833 (= c!75512 (= lt!306133 (Found!6976 index!984)))))

(declare-fun lt!306125 () Unit!22604)

(assert (=> b!655833 (= lt!306125 e!376642)))

(declare-fun c!75514 () Bool)

(assert (=> b!655833 (= c!75514 (= lt!306133 Undefined!6976))))

(declare-fun lt!306139 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38666 (_ BitVec 32)) SeekEntryResult!6976)

(assert (=> b!655833 (= lt!306133 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306139 lt!306128 mask!3053))))

(assert (=> b!655833 e!376649))

(declare-fun res!425542 () Bool)

(assert (=> b!655833 (=> (not res!425542) (not e!376649))))

(declare-fun lt!306132 () (_ BitVec 32))

(assert (=> b!655833 (= res!425542 (= lt!306135 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 lt!306139 lt!306128 mask!3053)))))

(assert (=> b!655833 (= lt!306135 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 (select (arr!18529 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655833 (= lt!306139 (select (store (arr!18529 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!306122 () Unit!22604)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38666 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22604)

(assert (=> b!655833 (= lt!306122 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655833 (= lt!306132 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655834 () Bool)

(declare-fun e!376641 () Bool)

(assert (=> b!655834 (= e!376641 e!376640)))

(declare-fun res!425540 () Bool)

(assert (=> b!655834 (=> (not res!425540) (not e!376640))))

(assert (=> b!655834 (= res!425540 (and (= lt!306137 (Found!6976 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18529 a!2986) index!984) (select (arr!18529 a!2986) j!136))) (not (= (select (arr!18529 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655834 (= lt!306137 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18529 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655835 () Bool)

(declare-fun res!425530 () Bool)

(assert (=> b!655835 (= res!425530 (bvsge j!136 index!984))))

(assert (=> b!655835 (=> res!425530 e!376647)))

(assert (=> b!655835 (= e!376639 e!376647)))

(declare-fun b!655836 () Bool)

(declare-fun res!425531 () Bool)

(assert (=> b!655836 (=> (not res!425531) (not e!376643))))

(assert (=> b!655836 (= res!425531 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655837 () Bool)

(declare-fun Unit!22611 () Unit!22604)

(assert (=> b!655837 (= e!376651 Unit!22611)))

(declare-fun b!655838 () Bool)

(declare-fun Unit!22612 () Unit!22604)

(assert (=> b!655838 (= e!376644 Unit!22612)))

(declare-fun b!655839 () Bool)

(assert (=> b!655839 false))

(declare-fun lt!306126 () Unit!22604)

(assert (=> b!655839 (= lt!306126 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306128 (select (arr!18529 a!2986) j!136) index!984 Nil!12620))))

(assert (=> b!655839 (arrayNoDuplicates!0 lt!306128 index!984 Nil!12620)))

(declare-fun lt!306129 () Unit!22604)

(assert (=> b!655839 (= lt!306129 (lemmaNoDuplicateFromThenFromBigger!0 lt!306128 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655839 (arrayNoDuplicates!0 lt!306128 #b00000000000000000000000000000000 Nil!12620)))

(declare-fun lt!306140 () Unit!22604)

(assert (=> b!655839 (= lt!306140 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12620))))

(assert (=> b!655839 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306136 () Unit!22604)

(assert (=> b!655839 (= lt!306136 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306128 (select (arr!18529 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655839 e!376648))

(declare-fun res!425538 () Bool)

(assert (=> b!655839 (=> (not res!425538) (not e!376648))))

(assert (=> b!655839 (= res!425538 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) j!136))))

(declare-fun Unit!22613 () Unit!22604)

(assert (=> b!655839 (= e!376644 Unit!22613)))

(declare-fun b!655840 () Bool)

(declare-fun res!425537 () Bool)

(assert (=> b!655840 (=> (not res!425537) (not e!376643))))

(assert (=> b!655840 (= res!425537 (validKeyInArray!0 (select (arr!18529 a!2986) j!136)))))

(declare-fun b!655841 () Bool)

(assert (=> b!655841 (= e!376646 e!376641)))

(declare-fun res!425534 () Bool)

(assert (=> b!655841 (=> (not res!425534) (not e!376641))))

(assert (=> b!655841 (= res!425534 (= (select (store (arr!18529 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655841 (= lt!306128 (array!38667 (store (arr!18529 a!2986) i!1108 k0!1786) (size!18893 a!2986)))))

(assert (= (and start!59390 res!425532) b!655829))

(assert (= (and b!655829 res!425543) b!655840))

(assert (= (and b!655840 res!425537) b!655821))

(assert (= (and b!655821 res!425535) b!655836))

(assert (= (and b!655836 res!425531) b!655831))

(assert (= (and b!655831 res!425536) b!655823))

(assert (= (and b!655823 res!425539) b!655825))

(assert (= (and b!655825 res!425533) b!655819))

(assert (= (and b!655819 res!425528) b!655841))

(assert (= (and b!655841 res!425534) b!655834))

(assert (= (and b!655834 res!425540) b!655833))

(assert (= (and b!655833 res!425542) b!655828))

(assert (= (and b!655833 c!75514) b!655820))

(assert (= (and b!655833 (not c!75514)) b!655830))

(assert (= (and b!655833 c!75512) b!655824))

(assert (= (and b!655833 (not c!75512)) b!655818))

(assert (= (and b!655824 res!425541) b!655835))

(assert (= (and b!655835 (not res!425530)) b!655826))

(assert (= (and b!655826 res!425529) b!655832))

(assert (= (and b!655824 c!75513) b!655827))

(assert (= (and b!655824 (not c!75513)) b!655837))

(assert (= (and b!655824 c!75515) b!655839))

(assert (= (and b!655824 (not c!75515)) b!655838))

(assert (= (and b!655839 res!425538) b!655822))

(declare-fun m!628951 () Bool)

(assert (=> b!655827 m!628951))

(declare-fun m!628953 () Bool)

(assert (=> b!655827 m!628953))

(assert (=> b!655827 m!628951))

(declare-fun m!628955 () Bool)

(assert (=> b!655827 m!628955))

(assert (=> b!655827 m!628951))

(declare-fun m!628957 () Bool)

(assert (=> b!655827 m!628957))

(declare-fun m!628959 () Bool)

(assert (=> b!655827 m!628959))

(assert (=> b!655827 m!628951))

(declare-fun m!628961 () Bool)

(assert (=> b!655827 m!628961))

(declare-fun m!628963 () Bool)

(assert (=> b!655827 m!628963))

(declare-fun m!628965 () Bool)

(assert (=> b!655827 m!628965))

(declare-fun m!628967 () Bool)

(assert (=> b!655821 m!628967))

(assert (=> b!655822 m!628951))

(assert (=> b!655822 m!628951))

(declare-fun m!628969 () Bool)

(assert (=> b!655822 m!628969))

(declare-fun m!628971 () Bool)

(assert (=> start!59390 m!628971))

(declare-fun m!628973 () Bool)

(assert (=> start!59390 m!628973))

(declare-fun m!628975 () Bool)

(assert (=> b!655834 m!628975))

(assert (=> b!655834 m!628951))

(assert (=> b!655834 m!628951))

(declare-fun m!628977 () Bool)

(assert (=> b!655834 m!628977))

(declare-fun m!628979 () Bool)

(assert (=> b!655823 m!628979))

(declare-fun m!628981 () Bool)

(assert (=> b!655833 m!628981))

(declare-fun m!628983 () Bool)

(assert (=> b!655833 m!628983))

(declare-fun m!628985 () Bool)

(assert (=> b!655833 m!628985))

(declare-fun m!628987 () Bool)

(assert (=> b!655833 m!628987))

(assert (=> b!655833 m!628951))

(declare-fun m!628989 () Bool)

(assert (=> b!655833 m!628989))

(declare-fun m!628991 () Bool)

(assert (=> b!655833 m!628991))

(declare-fun m!628993 () Bool)

(assert (=> b!655833 m!628993))

(assert (=> b!655833 m!628951))

(declare-fun m!628995 () Bool)

(assert (=> b!655833 m!628995))

(declare-fun m!628997 () Bool)

(assert (=> b!655825 m!628997))

(declare-fun m!628999 () Bool)

(assert (=> b!655836 m!628999))

(assert (=> b!655824 m!628991))

(assert (=> b!655824 m!628993))

(assert (=> b!655824 m!628951))

(assert (=> b!655839 m!628951))

(declare-fun m!629001 () Bool)

(assert (=> b!655839 m!629001))

(assert (=> b!655839 m!628951))

(declare-fun m!629003 () Bool)

(assert (=> b!655839 m!629003))

(declare-fun m!629005 () Bool)

(assert (=> b!655839 m!629005))

(assert (=> b!655839 m!628951))

(declare-fun m!629007 () Bool)

(assert (=> b!655839 m!629007))

(assert (=> b!655839 m!628951))

(declare-fun m!629009 () Bool)

(assert (=> b!655839 m!629009))

(assert (=> b!655839 m!628965))

(assert (=> b!655839 m!628951))

(declare-fun m!629011 () Bool)

(assert (=> b!655839 m!629011))

(assert (=> b!655839 m!628963))

(assert (=> b!655832 m!628951))

(assert (=> b!655832 m!628951))

(assert (=> b!655832 m!628969))

(declare-fun m!629013 () Bool)

(assert (=> b!655831 m!629013))

(assert (=> b!655826 m!628951))

(assert (=> b!655826 m!628951))

(assert (=> b!655826 m!629003))

(assert (=> b!655841 m!628991))

(declare-fun m!629015 () Bool)

(assert (=> b!655841 m!629015))

(declare-fun m!629017 () Bool)

(assert (=> b!655819 m!629017))

(assert (=> b!655840 m!628951))

(assert (=> b!655840 m!628951))

(declare-fun m!629019 () Bool)

(assert (=> b!655840 m!629019))

(check-sat (not b!655827) (not b!655826) (not b!655821) (not start!59390) (not b!655836) (not b!655840) (not b!655825) (not b!655839) (not b!655823) (not b!655832) (not b!655833) (not b!655831) (not b!655834) (not b!655822))
(check-sat)
(get-model)

(declare-fun d!92469 () Bool)

(declare-fun res!425596 () Bool)

(declare-fun e!376698 () Bool)

(assert (=> d!92469 (=> res!425596 e!376698)))

(assert (=> d!92469 (= res!425596 (= (select (arr!18529 lt!306128) index!984) (select (arr!18529 a!2986) j!136)))))

(assert (=> d!92469 (= (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) index!984) e!376698)))

(declare-fun b!655918 () Bool)

(declare-fun e!376699 () Bool)

(assert (=> b!655918 (= e!376698 e!376699)))

(declare-fun res!425597 () Bool)

(assert (=> b!655918 (=> (not res!425597) (not e!376699))))

(assert (=> b!655918 (= res!425597 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18893 lt!306128)))))

(declare-fun b!655919 () Bool)

(assert (=> b!655919 (= e!376699 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92469 (not res!425596)) b!655918))

(assert (= (and b!655918 res!425597) b!655919))

(declare-fun m!629091 () Bool)

(assert (=> d!92469 m!629091))

(assert (=> b!655919 m!628951))

(declare-fun m!629093 () Bool)

(assert (=> b!655919 m!629093))

(assert (=> b!655822 d!92469))

(declare-fun d!92471 () Bool)

(declare-fun e!376702 () Bool)

(assert (=> d!92471 e!376702))

(declare-fun res!425600 () Bool)

(assert (=> d!92471 (=> (not res!425600) (not e!376702))))

(assert (=> d!92471 (= res!425600 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18893 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18893 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18893 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18893 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18893 a!2986))))))

(declare-fun lt!306204 () Unit!22604)

(declare-fun choose!9 (array!38666 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22604)

(assert (=> d!92471 (= lt!306204 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92471 (validMask!0 mask!3053)))

(assert (=> d!92471 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 mask!3053) lt!306204)))

(declare-fun b!655922 () Bool)

(assert (=> b!655922 (= e!376702 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 (select (arr!18529 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 (select (store (arr!18529 a!2986) i!1108 k0!1786) j!136) (array!38667 (store (arr!18529 a!2986) i!1108 k0!1786) (size!18893 a!2986)) mask!3053)))))

(assert (= (and d!92471 res!425600) b!655922))

(declare-fun m!629095 () Bool)

(assert (=> d!92471 m!629095))

(assert (=> d!92471 m!628971))

(assert (=> b!655922 m!628951))

(assert (=> b!655922 m!628991))

(assert (=> b!655922 m!628951))

(assert (=> b!655922 m!628995))

(assert (=> b!655922 m!628985))

(declare-fun m!629097 () Bool)

(assert (=> b!655922 m!629097))

(assert (=> b!655922 m!628985))

(assert (=> b!655833 d!92471))

(declare-fun b!655935 () Bool)

(declare-fun e!376709 () SeekEntryResult!6976)

(assert (=> b!655935 (= e!376709 Undefined!6976)))

(declare-fun b!655936 () Bool)

(declare-fun e!376711 () SeekEntryResult!6976)

(assert (=> b!655936 (= e!376711 (Found!6976 lt!306132))))

(declare-fun d!92473 () Bool)

(declare-fun lt!306209 () SeekEntryResult!6976)

(get-info :version)

(assert (=> d!92473 (and (or ((_ is Undefined!6976) lt!306209) (not ((_ is Found!6976) lt!306209)) (and (bvsge (index!30263 lt!306209) #b00000000000000000000000000000000) (bvslt (index!30263 lt!306209) (size!18893 lt!306128)))) (or ((_ is Undefined!6976) lt!306209) ((_ is Found!6976) lt!306209) (not ((_ is MissingVacant!6976) lt!306209)) (not (= (index!30265 lt!306209) vacantSpotIndex!68)) (and (bvsge (index!30265 lt!306209) #b00000000000000000000000000000000) (bvslt (index!30265 lt!306209) (size!18893 lt!306128)))) (or ((_ is Undefined!6976) lt!306209) (ite ((_ is Found!6976) lt!306209) (= (select (arr!18529 lt!306128) (index!30263 lt!306209)) lt!306139) (and ((_ is MissingVacant!6976) lt!306209) (= (index!30265 lt!306209) vacantSpotIndex!68) (= (select (arr!18529 lt!306128) (index!30265 lt!306209)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92473 (= lt!306209 e!376709)))

(declare-fun c!75534 () Bool)

(assert (=> d!92473 (= c!75534 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!306210 () (_ BitVec 64))

(assert (=> d!92473 (= lt!306210 (select (arr!18529 lt!306128) lt!306132))))

(assert (=> d!92473 (validMask!0 mask!3053)))

(assert (=> d!92473 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 lt!306139 lt!306128 mask!3053) lt!306209)))

(declare-fun b!655937 () Bool)

(assert (=> b!655937 (= e!376709 e!376711)))

(declare-fun c!75536 () Bool)

(assert (=> b!655937 (= c!75536 (= lt!306210 lt!306139))))

(declare-fun b!655938 () Bool)

(declare-fun e!376710 () SeekEntryResult!6976)

(assert (=> b!655938 (= e!376710 (MissingVacant!6976 vacantSpotIndex!68))))

(declare-fun b!655939 () Bool)

(assert (=> b!655939 (= e!376710 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!306132 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!306139 lt!306128 mask!3053))))

(declare-fun b!655940 () Bool)

(declare-fun c!75535 () Bool)

(assert (=> b!655940 (= c!75535 (= lt!306210 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655940 (= e!376711 e!376710)))

(assert (= (and d!92473 c!75534) b!655935))

(assert (= (and d!92473 (not c!75534)) b!655937))

(assert (= (and b!655937 c!75536) b!655936))

(assert (= (and b!655937 (not c!75536)) b!655940))

(assert (= (and b!655940 c!75535) b!655938))

(assert (= (and b!655940 (not c!75535)) b!655939))

(declare-fun m!629099 () Bool)

(assert (=> d!92473 m!629099))

(declare-fun m!629101 () Bool)

(assert (=> d!92473 m!629101))

(declare-fun m!629103 () Bool)

(assert (=> d!92473 m!629103))

(assert (=> d!92473 m!628971))

(declare-fun m!629105 () Bool)

(assert (=> b!655939 m!629105))

(assert (=> b!655939 m!629105))

(declare-fun m!629107 () Bool)

(assert (=> b!655939 m!629107))

(assert (=> b!655833 d!92473))

(declare-fun b!655941 () Bool)

(declare-fun e!376712 () SeekEntryResult!6976)

(assert (=> b!655941 (= e!376712 Undefined!6976)))

(declare-fun b!655942 () Bool)

(declare-fun e!376714 () SeekEntryResult!6976)

(assert (=> b!655942 (= e!376714 (Found!6976 index!984))))

(declare-fun d!92479 () Bool)

(declare-fun lt!306211 () SeekEntryResult!6976)

(assert (=> d!92479 (and (or ((_ is Undefined!6976) lt!306211) (not ((_ is Found!6976) lt!306211)) (and (bvsge (index!30263 lt!306211) #b00000000000000000000000000000000) (bvslt (index!30263 lt!306211) (size!18893 lt!306128)))) (or ((_ is Undefined!6976) lt!306211) ((_ is Found!6976) lt!306211) (not ((_ is MissingVacant!6976) lt!306211)) (not (= (index!30265 lt!306211) vacantSpotIndex!68)) (and (bvsge (index!30265 lt!306211) #b00000000000000000000000000000000) (bvslt (index!30265 lt!306211) (size!18893 lt!306128)))) (or ((_ is Undefined!6976) lt!306211) (ite ((_ is Found!6976) lt!306211) (= (select (arr!18529 lt!306128) (index!30263 lt!306211)) lt!306139) (and ((_ is MissingVacant!6976) lt!306211) (= (index!30265 lt!306211) vacantSpotIndex!68) (= (select (arr!18529 lt!306128) (index!30265 lt!306211)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92479 (= lt!306211 e!376712)))

(declare-fun c!75537 () Bool)

(assert (=> d!92479 (= c!75537 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!306212 () (_ BitVec 64))

(assert (=> d!92479 (= lt!306212 (select (arr!18529 lt!306128) index!984))))

(assert (=> d!92479 (validMask!0 mask!3053)))

(assert (=> d!92479 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306139 lt!306128 mask!3053) lt!306211)))

(declare-fun b!655943 () Bool)

(assert (=> b!655943 (= e!376712 e!376714)))

(declare-fun c!75539 () Bool)

(assert (=> b!655943 (= c!75539 (= lt!306212 lt!306139))))

(declare-fun b!655944 () Bool)

(declare-fun e!376713 () SeekEntryResult!6976)

(assert (=> b!655944 (= e!376713 (MissingVacant!6976 vacantSpotIndex!68))))

(declare-fun b!655945 () Bool)

(assert (=> b!655945 (= e!376713 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!306139 lt!306128 mask!3053))))

(declare-fun b!655946 () Bool)

(declare-fun c!75538 () Bool)

(assert (=> b!655946 (= c!75538 (= lt!306212 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655946 (= e!376714 e!376713)))

(assert (= (and d!92479 c!75537) b!655941))

(assert (= (and d!92479 (not c!75537)) b!655943))

(assert (= (and b!655943 c!75539) b!655942))

(assert (= (and b!655943 (not c!75539)) b!655946))

(assert (= (and b!655946 c!75538) b!655944))

(assert (= (and b!655946 (not c!75538)) b!655945))

(declare-fun m!629109 () Bool)

(assert (=> d!92479 m!629109))

(declare-fun m!629111 () Bool)

(assert (=> d!92479 m!629111))

(assert (=> d!92479 m!629091))

(assert (=> d!92479 m!628971))

(assert (=> b!655945 m!628983))

(assert (=> b!655945 m!628983))

(declare-fun m!629113 () Bool)

(assert (=> b!655945 m!629113))

(assert (=> b!655833 d!92479))

(declare-fun b!655947 () Bool)

(declare-fun e!376715 () SeekEntryResult!6976)

(assert (=> b!655947 (= e!376715 Undefined!6976)))

(declare-fun b!655948 () Bool)

(declare-fun e!376717 () SeekEntryResult!6976)

(assert (=> b!655948 (= e!376717 (Found!6976 lt!306132))))

(declare-fun lt!306213 () SeekEntryResult!6976)

(declare-fun d!92481 () Bool)

(assert (=> d!92481 (and (or ((_ is Undefined!6976) lt!306213) (not ((_ is Found!6976) lt!306213)) (and (bvsge (index!30263 lt!306213) #b00000000000000000000000000000000) (bvslt (index!30263 lt!306213) (size!18893 a!2986)))) (or ((_ is Undefined!6976) lt!306213) ((_ is Found!6976) lt!306213) (not ((_ is MissingVacant!6976) lt!306213)) (not (= (index!30265 lt!306213) vacantSpotIndex!68)) (and (bvsge (index!30265 lt!306213) #b00000000000000000000000000000000) (bvslt (index!30265 lt!306213) (size!18893 a!2986)))) (or ((_ is Undefined!6976) lt!306213) (ite ((_ is Found!6976) lt!306213) (= (select (arr!18529 a!2986) (index!30263 lt!306213)) (select (arr!18529 a!2986) j!136)) (and ((_ is MissingVacant!6976) lt!306213) (= (index!30265 lt!306213) vacantSpotIndex!68) (= (select (arr!18529 a!2986) (index!30265 lt!306213)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92481 (= lt!306213 e!376715)))

(declare-fun c!75540 () Bool)

(assert (=> d!92481 (= c!75540 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!306214 () (_ BitVec 64))

(assert (=> d!92481 (= lt!306214 (select (arr!18529 a!2986) lt!306132))))

(assert (=> d!92481 (validMask!0 mask!3053)))

(assert (=> d!92481 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306132 vacantSpotIndex!68 (select (arr!18529 a!2986) j!136) a!2986 mask!3053) lt!306213)))

(declare-fun b!655949 () Bool)

(assert (=> b!655949 (= e!376715 e!376717)))

(declare-fun c!75542 () Bool)

(assert (=> b!655949 (= c!75542 (= lt!306214 (select (arr!18529 a!2986) j!136)))))

(declare-fun b!655950 () Bool)

(declare-fun e!376716 () SeekEntryResult!6976)

(assert (=> b!655950 (= e!376716 (MissingVacant!6976 vacantSpotIndex!68))))

(declare-fun b!655951 () Bool)

(assert (=> b!655951 (= e!376716 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!306132 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18529 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655952 () Bool)

(declare-fun c!75541 () Bool)

(assert (=> b!655952 (= c!75541 (= lt!306214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655952 (= e!376717 e!376716)))

(assert (= (and d!92481 c!75540) b!655947))

(assert (= (and d!92481 (not c!75540)) b!655949))

(assert (= (and b!655949 c!75542) b!655948))

(assert (= (and b!655949 (not c!75542)) b!655952))

(assert (= (and b!655952 c!75541) b!655950))

(assert (= (and b!655952 (not c!75541)) b!655951))

(declare-fun m!629115 () Bool)

(assert (=> d!92481 m!629115))

(declare-fun m!629117 () Bool)

(assert (=> d!92481 m!629117))

(declare-fun m!629119 () Bool)

(assert (=> d!92481 m!629119))

(assert (=> d!92481 m!628971))

(assert (=> b!655951 m!629105))

(assert (=> b!655951 m!629105))

(assert (=> b!655951 m!628951))

(declare-fun m!629121 () Bool)

(assert (=> b!655951 m!629121))

(assert (=> b!655833 d!92481))

(declare-fun d!92483 () Bool)

(declare-fun lt!306217 () (_ BitVec 32))

(assert (=> d!92483 (and (bvsge lt!306217 #b00000000000000000000000000000000) (bvslt lt!306217 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92483 (= lt!306217 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92483 (validMask!0 mask!3053)))

(assert (=> d!92483 (= (nextIndex!0 index!984 x!910 mask!3053) lt!306217)))

(declare-fun bs!19520 () Bool)

(assert (= bs!19520 d!92483))

(declare-fun m!629123 () Bool)

(assert (=> bs!19520 m!629123))

(assert (=> bs!19520 m!628971))

(assert (=> b!655833 d!92483))

(declare-fun b!655983 () Bool)

(declare-fun e!376735 () SeekEntryResult!6976)

(declare-fun lt!306231 () SeekEntryResult!6976)

(assert (=> b!655983 (= e!376735 (Found!6976 (index!30264 lt!306231)))))

(declare-fun d!92485 () Bool)

(declare-fun lt!306230 () SeekEntryResult!6976)

(assert (=> d!92485 (and (or ((_ is Undefined!6976) lt!306230) (not ((_ is Found!6976) lt!306230)) (and (bvsge (index!30263 lt!306230) #b00000000000000000000000000000000) (bvslt (index!30263 lt!306230) (size!18893 a!2986)))) (or ((_ is Undefined!6976) lt!306230) ((_ is Found!6976) lt!306230) (not ((_ is MissingZero!6976) lt!306230)) (and (bvsge (index!30262 lt!306230) #b00000000000000000000000000000000) (bvslt (index!30262 lt!306230) (size!18893 a!2986)))) (or ((_ is Undefined!6976) lt!306230) ((_ is Found!6976) lt!306230) ((_ is MissingZero!6976) lt!306230) (not ((_ is MissingVacant!6976) lt!306230)) (and (bvsge (index!30265 lt!306230) #b00000000000000000000000000000000) (bvslt (index!30265 lt!306230) (size!18893 a!2986)))) (or ((_ is Undefined!6976) lt!306230) (ite ((_ is Found!6976) lt!306230) (= (select (arr!18529 a!2986) (index!30263 lt!306230)) k0!1786) (ite ((_ is MissingZero!6976) lt!306230) (= (select (arr!18529 a!2986) (index!30262 lt!306230)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6976) lt!306230) (= (select (arr!18529 a!2986) (index!30265 lt!306230)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!376734 () SeekEntryResult!6976)

(assert (=> d!92485 (= lt!306230 e!376734)))

(declare-fun c!75560 () Bool)

(assert (=> d!92485 (= c!75560 (and ((_ is Intermediate!6976) lt!306231) (undefined!7788 lt!306231)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38666 (_ BitVec 32)) SeekEntryResult!6976)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92485 (= lt!306231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!92485 (validMask!0 mask!3053)))

(assert (=> d!92485 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!306230)))

(declare-fun b!655984 () Bool)

(declare-fun e!376733 () SeekEntryResult!6976)

(assert (=> b!655984 (= e!376733 (MissingZero!6976 (index!30264 lt!306231)))))

(declare-fun b!655985 () Bool)

(assert (=> b!655985 (= e!376733 (seekKeyOrZeroReturnVacant!0 (x!59074 lt!306231) (index!30264 lt!306231) (index!30264 lt!306231) k0!1786 a!2986 mask!3053))))

(declare-fun b!655986 () Bool)

(assert (=> b!655986 (= e!376734 e!376735)))

(declare-fun lt!306232 () (_ BitVec 64))

(assert (=> b!655986 (= lt!306232 (select (arr!18529 a!2986) (index!30264 lt!306231)))))

(declare-fun c!75559 () Bool)

(assert (=> b!655986 (= c!75559 (= lt!306232 k0!1786))))

(declare-fun b!655987 () Bool)

(assert (=> b!655987 (= e!376734 Undefined!6976)))

(declare-fun b!655988 () Bool)

(declare-fun c!75558 () Bool)

(assert (=> b!655988 (= c!75558 (= lt!306232 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655988 (= e!376735 e!376733)))

(assert (= (and d!92485 c!75560) b!655987))

(assert (= (and d!92485 (not c!75560)) b!655986))

(assert (= (and b!655986 c!75559) b!655983))

(assert (= (and b!655986 (not c!75559)) b!655988))

(assert (= (and b!655988 c!75558) b!655984))

(assert (= (and b!655988 (not c!75558)) b!655985))

(declare-fun m!629131 () Bool)

(assert (=> d!92485 m!629131))

(declare-fun m!629133 () Bool)

(assert (=> d!92485 m!629133))

(declare-fun m!629135 () Bool)

(assert (=> d!92485 m!629135))

(declare-fun m!629137 () Bool)

(assert (=> d!92485 m!629137))

(assert (=> d!92485 m!628971))

(assert (=> d!92485 m!629133))

(declare-fun m!629139 () Bool)

(assert (=> d!92485 m!629139))

(declare-fun m!629141 () Bool)

(assert (=> b!655985 m!629141))

(declare-fun m!629143 () Bool)

(assert (=> b!655986 m!629143))

(assert (=> b!655831 d!92485))

(declare-fun d!92491 () Bool)

(assert (=> d!92491 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59390 d!92491))

(declare-fun d!92499 () Bool)

(assert (=> d!92499 (= (array_inv!14303 a!2986) (bvsge (size!18893 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59390 d!92499))

(assert (=> b!655832 d!92469))

(declare-fun d!92501 () Bool)

(assert (=> d!92501 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!655821 d!92501))

(declare-fun d!92503 () Bool)

(declare-fun res!425605 () Bool)

(declare-fun e!376751 () Bool)

(assert (=> d!92503 (=> res!425605 e!376751)))

(assert (=> d!92503 (= res!425605 (= (select (arr!18529 lt!306128) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18529 a!2986) j!136)))))

(assert (=> d!92503 (= (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!376751)))

(declare-fun b!656015 () Bool)

(declare-fun e!376752 () Bool)

(assert (=> b!656015 (= e!376751 e!376752)))

(declare-fun res!425606 () Bool)

(assert (=> b!656015 (=> (not res!425606) (not e!376752))))

(assert (=> b!656015 (= res!425606 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18893 lt!306128)))))

(declare-fun b!656016 () Bool)

(assert (=> b!656016 (= e!376752 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92503 (not res!425605)) b!656015))

(assert (= (and b!656015 res!425606) b!656016))

(declare-fun m!629163 () Bool)

(assert (=> d!92503 m!629163))

(assert (=> b!656016 m!628951))

(declare-fun m!629165 () Bool)

(assert (=> b!656016 m!629165))

(assert (=> b!655839 d!92503))

(declare-fun d!92505 () Bool)

(assert (=> d!92505 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306256 () Unit!22604)

(declare-fun choose!114 (array!38666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22604)

(assert (=> d!92505 (= lt!306256 (choose!114 lt!306128 (select (arr!18529 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92505 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92505 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306128 (select (arr!18529 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!306256)))

(declare-fun bs!19523 () Bool)

(assert (= bs!19523 d!92505))

(assert (=> bs!19523 m!628951))

(assert (=> bs!19523 m!629007))

(assert (=> bs!19523 m!628951))

(declare-fun m!629169 () Bool)

(assert (=> bs!19523 m!629169))

(assert (=> b!655839 d!92505))

(declare-fun d!92509 () Bool)

(assert (=> d!92509 (arrayNoDuplicates!0 lt!306128 index!984 Nil!12620)))

(declare-fun lt!306262 () Unit!22604)

(declare-fun choose!39 (array!38666 (_ BitVec 32) (_ BitVec 32)) Unit!22604)

(assert (=> d!92509 (= lt!306262 (choose!39 lt!306128 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92509 (bvslt (size!18893 lt!306128) #b01111111111111111111111111111111)))

(assert (=> d!92509 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!306128 #b00000000000000000000000000000000 index!984) lt!306262)))

(declare-fun bs!19524 () Bool)

(assert (= bs!19524 d!92509))

(assert (=> bs!19524 m!629005))

(declare-fun m!629183 () Bool)

(assert (=> bs!19524 m!629183))

(assert (=> b!655839 d!92509))

(declare-fun d!92513 () Bool)

(assert (=> d!92513 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (size!18893 lt!306128)) (not (= (select (arr!18529 lt!306128) index!984) (select (arr!18529 a!2986) j!136))))))

(declare-fun lt!306267 () Unit!22604)

(declare-fun choose!21 (array!38666 (_ BitVec 64) (_ BitVec 32) List!12623) Unit!22604)

(assert (=> d!92513 (= lt!306267 (choose!21 lt!306128 (select (arr!18529 a!2986) j!136) index!984 Nil!12620))))

(assert (=> d!92513 (bvslt (size!18893 lt!306128) #b01111111111111111111111111111111)))

(assert (=> d!92513 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306128 (select (arr!18529 a!2986) j!136) index!984 Nil!12620) lt!306267)))

(declare-fun bs!19525 () Bool)

(assert (= bs!19525 d!92513))

(assert (=> bs!19525 m!629091))

(assert (=> bs!19525 m!628951))

(declare-fun m!629191 () Bool)

(assert (=> bs!19525 m!629191))

(assert (=> b!655839 d!92513))

(declare-fun d!92519 () Bool)

(declare-fun e!376778 () Bool)

(assert (=> d!92519 e!376778))

(declare-fun res!425628 () Bool)

(assert (=> d!92519 (=> (not res!425628) (not e!376778))))

(assert (=> d!92519 (= res!425628 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18893 a!2986))))))

(declare-fun lt!306274 () Unit!22604)

(declare-fun choose!41 (array!38666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12623) Unit!22604)

(assert (=> d!92519 (= lt!306274 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12620))))

(assert (=> d!92519 (bvslt (size!18893 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92519 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12620) lt!306274)))

(declare-fun b!656046 () Bool)

(assert (=> b!656046 (= e!376778 (arrayNoDuplicates!0 (array!38667 (store (arr!18529 a!2986) i!1108 k0!1786) (size!18893 a!2986)) #b00000000000000000000000000000000 Nil!12620))))

(assert (= (and d!92519 res!425628) b!656046))

(declare-fun m!629205 () Bool)

(assert (=> d!92519 m!629205))

(assert (=> b!656046 m!628991))

(declare-fun m!629207 () Bool)

(assert (=> b!656046 m!629207))

(assert (=> b!655839 d!92519))

(declare-fun bm!33839 () Bool)

(declare-fun call!33842 () Bool)

(declare-fun c!75581 () Bool)

(assert (=> bm!33839 (= call!33842 (arrayNoDuplicates!0 lt!306128 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75581 (Cons!12619 (select (arr!18529 lt!306128) #b00000000000000000000000000000000) Nil!12620) Nil!12620)))))

(declare-fun b!656075 () Bool)

(declare-fun e!376803 () Bool)

(declare-fun contains!3192 (List!12623 (_ BitVec 64)) Bool)

(assert (=> b!656075 (= e!376803 (contains!3192 Nil!12620 (select (arr!18529 lt!306128) #b00000000000000000000000000000000)))))

(declare-fun d!92527 () Bool)

(declare-fun res!425648 () Bool)

(declare-fun e!376804 () Bool)

(assert (=> d!92527 (=> res!425648 e!376804)))

(assert (=> d!92527 (= res!425648 (bvsge #b00000000000000000000000000000000 (size!18893 lt!306128)))))

(assert (=> d!92527 (= (arrayNoDuplicates!0 lt!306128 #b00000000000000000000000000000000 Nil!12620) e!376804)))

(declare-fun b!656076 () Bool)

(declare-fun e!376805 () Bool)

(assert (=> b!656076 (= e!376804 e!376805)))

(declare-fun res!425647 () Bool)

(assert (=> b!656076 (=> (not res!425647) (not e!376805))))

(assert (=> b!656076 (= res!425647 (not e!376803))))

(declare-fun res!425649 () Bool)

(assert (=> b!656076 (=> (not res!425649) (not e!376803))))

(assert (=> b!656076 (= res!425649 (validKeyInArray!0 (select (arr!18529 lt!306128) #b00000000000000000000000000000000)))))

(declare-fun b!656077 () Bool)

(declare-fun e!376802 () Bool)

(assert (=> b!656077 (= e!376802 call!33842)))

(declare-fun b!656078 () Bool)

(assert (=> b!656078 (= e!376805 e!376802)))

(assert (=> b!656078 (= c!75581 (validKeyInArray!0 (select (arr!18529 lt!306128) #b00000000000000000000000000000000)))))

(declare-fun b!656079 () Bool)

(assert (=> b!656079 (= e!376802 call!33842)))

(assert (= (and d!92527 (not res!425648)) b!656076))

(assert (= (and b!656076 res!425649) b!656075))

(assert (= (and b!656076 res!425647) b!656078))

(assert (= (and b!656078 c!75581) b!656079))

(assert (= (and b!656078 (not c!75581)) b!656077))

(assert (= (or b!656079 b!656077) bm!33839))

(declare-fun m!629221 () Bool)

(assert (=> bm!33839 m!629221))

(declare-fun m!629223 () Bool)

(assert (=> bm!33839 m!629223))

(assert (=> b!656075 m!629221))

(assert (=> b!656075 m!629221))

(declare-fun m!629225 () Bool)

(assert (=> b!656075 m!629225))

(assert (=> b!656076 m!629221))

(assert (=> b!656076 m!629221))

(declare-fun m!629227 () Bool)

(assert (=> b!656076 m!629227))

(assert (=> b!656078 m!629221))

(assert (=> b!656078 m!629221))

(assert (=> b!656078 m!629227))

(assert (=> b!655839 d!92527))

(declare-fun bm!33840 () Bool)

(declare-fun call!33843 () Bool)

(declare-fun c!75582 () Bool)

(assert (=> bm!33840 (= call!33843 (arrayNoDuplicates!0 lt!306128 (bvadd index!984 #b00000000000000000000000000000001) (ite c!75582 (Cons!12619 (select (arr!18529 lt!306128) index!984) Nil!12620) Nil!12620)))))

(declare-fun b!656084 () Bool)

(declare-fun e!376811 () Bool)

(assert (=> b!656084 (= e!376811 (contains!3192 Nil!12620 (select (arr!18529 lt!306128) index!984)))))

(declare-fun d!92535 () Bool)

(declare-fun res!425655 () Bool)

(declare-fun e!376812 () Bool)

(assert (=> d!92535 (=> res!425655 e!376812)))

(assert (=> d!92535 (= res!425655 (bvsge index!984 (size!18893 lt!306128)))))

(assert (=> d!92535 (= (arrayNoDuplicates!0 lt!306128 index!984 Nil!12620) e!376812)))

(declare-fun b!656085 () Bool)

(declare-fun e!376813 () Bool)

(assert (=> b!656085 (= e!376812 e!376813)))

(declare-fun res!425654 () Bool)

(assert (=> b!656085 (=> (not res!425654) (not e!376813))))

(assert (=> b!656085 (= res!425654 (not e!376811))))

(declare-fun res!425656 () Bool)

(assert (=> b!656085 (=> (not res!425656) (not e!376811))))

(assert (=> b!656085 (= res!425656 (validKeyInArray!0 (select (arr!18529 lt!306128) index!984)))))

(declare-fun b!656086 () Bool)

(declare-fun e!376810 () Bool)

(assert (=> b!656086 (= e!376810 call!33843)))

(declare-fun b!656087 () Bool)

(assert (=> b!656087 (= e!376813 e!376810)))

(assert (=> b!656087 (= c!75582 (validKeyInArray!0 (select (arr!18529 lt!306128) index!984)))))

(declare-fun b!656088 () Bool)

(assert (=> b!656088 (= e!376810 call!33843)))

(assert (= (and d!92535 (not res!425655)) b!656085))

(assert (= (and b!656085 res!425656) b!656084))

(assert (= (and b!656085 res!425654) b!656087))

(assert (= (and b!656087 c!75582) b!656088))

(assert (= (and b!656087 (not c!75582)) b!656086))

(assert (= (or b!656088 b!656086) bm!33840))

(assert (=> bm!33840 m!629091))

(declare-fun m!629229 () Bool)

(assert (=> bm!33840 m!629229))

(assert (=> b!656084 m!629091))

(assert (=> b!656084 m!629091))

(declare-fun m!629233 () Bool)

(assert (=> b!656084 m!629233))

(assert (=> b!656085 m!629091))

(assert (=> b!656085 m!629091))

(declare-fun m!629235 () Bool)

(assert (=> b!656085 m!629235))

(assert (=> b!656087 m!629091))

(assert (=> b!656087 m!629091))

(assert (=> b!656087 m!629235))

(assert (=> b!655839 d!92535))

(declare-fun d!92539 () Bool)

(declare-fun res!425659 () Bool)

(declare-fun e!376816 () Bool)

(assert (=> d!92539 (=> res!425659 e!376816)))

(assert (=> d!92539 (= res!425659 (= (select (arr!18529 lt!306128) j!136) (select (arr!18529 a!2986) j!136)))))

(assert (=> d!92539 (= (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) j!136) e!376816)))

(declare-fun b!656091 () Bool)

(declare-fun e!376817 () Bool)

(assert (=> b!656091 (= e!376816 e!376817)))

(declare-fun res!425660 () Bool)

(assert (=> b!656091 (=> (not res!425660) (not e!376817))))

(assert (=> b!656091 (= res!425660 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18893 lt!306128)))))

(declare-fun b!656092 () Bool)

(assert (=> b!656092 (= e!376817 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92539 (not res!425659)) b!656091))

(assert (= (and b!656091 res!425660) b!656092))

(declare-fun m!629239 () Bool)

(assert (=> d!92539 m!629239))

(assert (=> b!656092 m!628951))

(declare-fun m!629243 () Bool)

(assert (=> b!656092 m!629243))

(assert (=> b!655839 d!92539))

(declare-fun d!92543 () Bool)

(assert (=> d!92543 (= (validKeyInArray!0 (select (arr!18529 a!2986) j!136)) (and (not (= (select (arr!18529 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18529 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!655840 d!92543))

(declare-fun d!92545 () Bool)

(assert (=> d!92545 (arrayNoDuplicates!0 lt!306128 j!136 Nil!12620)))

(declare-fun lt!306284 () Unit!22604)

(assert (=> d!92545 (= lt!306284 (choose!39 lt!306128 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92545 (bvslt (size!18893 lt!306128) #b01111111111111111111111111111111)))

(assert (=> d!92545 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!306128 #b00000000000000000000000000000000 j!136) lt!306284)))

(declare-fun bs!19530 () Bool)

(assert (= bs!19530 d!92545))

(assert (=> bs!19530 m!628959))

(declare-fun m!629245 () Bool)

(assert (=> bs!19530 m!629245))

(assert (=> b!655827 d!92545))

(declare-fun d!92547 () Bool)

(declare-fun res!425664 () Bool)

(declare-fun e!376822 () Bool)

(assert (=> d!92547 (=> res!425664 e!376822)))

(assert (=> d!92547 (= res!425664 (= (select (arr!18529 lt!306128) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18529 a!2986) j!136)))))

(assert (=> d!92547 (= (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!376822)))

(declare-fun b!656098 () Bool)

(declare-fun e!376823 () Bool)

(assert (=> b!656098 (= e!376822 e!376823)))

(declare-fun res!425665 () Bool)

(assert (=> b!656098 (=> (not res!425665) (not e!376823))))

(assert (=> b!656098 (= res!425665 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18893 lt!306128)))))

(declare-fun b!656099 () Bool)

(assert (=> b!656099 (= e!376823 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92547 (not res!425664)) b!656098))

(assert (= (and b!656098 res!425665) b!656099))

(declare-fun m!629251 () Bool)

(assert (=> d!92547 m!629251))

(assert (=> b!656099 m!628951))

(declare-fun m!629253 () Bool)

(assert (=> b!656099 m!629253))

(assert (=> b!655827 d!92547))

(declare-fun d!92549 () Bool)

(assert (=> d!92549 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18893 lt!306128)) (not (= (select (arr!18529 lt!306128) j!136) (select (arr!18529 a!2986) j!136))))))

(declare-fun lt!306285 () Unit!22604)

(assert (=> d!92549 (= lt!306285 (choose!21 lt!306128 (select (arr!18529 a!2986) j!136) j!136 Nil!12620))))

(assert (=> d!92549 (bvslt (size!18893 lt!306128) #b01111111111111111111111111111111)))

(assert (=> d!92549 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306128 (select (arr!18529 a!2986) j!136) j!136 Nil!12620) lt!306285)))

(declare-fun bs!19531 () Bool)

(assert (= bs!19531 d!92549))

(assert (=> bs!19531 m!629239))

(assert (=> bs!19531 m!628951))

(declare-fun m!629259 () Bool)

(assert (=> bs!19531 m!629259))

(assert (=> b!655827 d!92549))

(declare-fun bm!33842 () Bool)

(declare-fun call!33845 () Bool)

(declare-fun c!75584 () Bool)

(assert (=> bm!33842 (= call!33845 (arrayNoDuplicates!0 lt!306128 (bvadd j!136 #b00000000000000000000000000000001) (ite c!75584 (Cons!12619 (select (arr!18529 lt!306128) j!136) Nil!12620) Nil!12620)))))

(declare-fun b!656102 () Bool)

(declare-fun e!376827 () Bool)

(assert (=> b!656102 (= e!376827 (contains!3192 Nil!12620 (select (arr!18529 lt!306128) j!136)))))

(declare-fun d!92553 () Bool)

(declare-fun res!425669 () Bool)

(declare-fun e!376828 () Bool)

(assert (=> d!92553 (=> res!425669 e!376828)))

(assert (=> d!92553 (= res!425669 (bvsge j!136 (size!18893 lt!306128)))))

(assert (=> d!92553 (= (arrayNoDuplicates!0 lt!306128 j!136 Nil!12620) e!376828)))

(declare-fun b!656103 () Bool)

(declare-fun e!376829 () Bool)

(assert (=> b!656103 (= e!376828 e!376829)))

(declare-fun res!425668 () Bool)

(assert (=> b!656103 (=> (not res!425668) (not e!376829))))

(assert (=> b!656103 (= res!425668 (not e!376827))))

(declare-fun res!425670 () Bool)

(assert (=> b!656103 (=> (not res!425670) (not e!376827))))

(assert (=> b!656103 (= res!425670 (validKeyInArray!0 (select (arr!18529 lt!306128) j!136)))))

(declare-fun b!656104 () Bool)

(declare-fun e!376826 () Bool)

(assert (=> b!656104 (= e!376826 call!33845)))

(declare-fun b!656105 () Bool)

(assert (=> b!656105 (= e!376829 e!376826)))

(assert (=> b!656105 (= c!75584 (validKeyInArray!0 (select (arr!18529 lt!306128) j!136)))))

(declare-fun b!656106 () Bool)

(assert (=> b!656106 (= e!376826 call!33845)))

(assert (= (and d!92553 (not res!425669)) b!656103))

(assert (= (and b!656103 res!425670) b!656102))

(assert (= (and b!656103 res!425668) b!656105))

(assert (= (and b!656105 c!75584) b!656106))

(assert (= (and b!656105 (not c!75584)) b!656104))

(assert (= (or b!656106 b!656104) bm!33842))

(assert (=> bm!33842 m!629239))

(declare-fun m!629265 () Bool)

(assert (=> bm!33842 m!629265))

(assert (=> b!656102 m!629239))

(assert (=> b!656102 m!629239))

(declare-fun m!629267 () Bool)

(assert (=> b!656102 m!629267))

(assert (=> b!656103 m!629239))

(assert (=> b!656103 m!629239))

(declare-fun m!629269 () Bool)

(assert (=> b!656103 m!629269))

(assert (=> b!656105 m!629239))

(assert (=> b!656105 m!629239))

(assert (=> b!656105 m!629269))

(assert (=> b!655827 d!92553))

(assert (=> b!655827 d!92519))

(assert (=> b!655827 d!92527))

(declare-fun d!92557 () Bool)

(assert (=> d!92557 (arrayContainsKey!0 lt!306128 (select (arr!18529 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306286 () Unit!22604)

(assert (=> d!92557 (= lt!306286 (choose!114 lt!306128 (select (arr!18529 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!92557 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!92557 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306128 (select (arr!18529 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!306286)))

(declare-fun bs!19532 () Bool)

(assert (= bs!19532 d!92557))

(assert (=> bs!19532 m!628951))

(assert (=> bs!19532 m!628957))

(assert (=> bs!19532 m!628951))

(declare-fun m!629271 () Bool)

(assert (=> bs!19532 m!629271))

(assert (=> b!655827 d!92557))

(assert (=> b!655826 d!92539))

(declare-fun d!92559 () Bool)

(declare-fun res!425673 () Bool)

(declare-fun e!376832 () Bool)

(assert (=> d!92559 (=> res!425673 e!376832)))

(assert (=> d!92559 (= res!425673 (= (select (arr!18529 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!92559 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!376832)))

(declare-fun b!656109 () Bool)

(declare-fun e!376833 () Bool)

(assert (=> b!656109 (= e!376832 e!376833)))

(declare-fun res!425674 () Bool)

(assert (=> b!656109 (=> (not res!425674) (not e!376833))))

(assert (=> b!656109 (= res!425674 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18893 a!2986)))))

(declare-fun b!656110 () Bool)

(assert (=> b!656110 (= e!376833 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92559 (not res!425673)) b!656109))

(assert (= (and b!656109 res!425674) b!656110))

(declare-fun m!629273 () Bool)

(assert (=> d!92559 m!629273))

(declare-fun m!629275 () Bool)

(assert (=> b!656110 m!629275))

(assert (=> b!655836 d!92559))

(declare-fun bm!33843 () Bool)

(declare-fun call!33846 () Bool)

(declare-fun c!75585 () Bool)

(assert (=> bm!33843 (= call!33846 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75585 (Cons!12619 (select (arr!18529 a!2986) #b00000000000000000000000000000000) Nil!12620) Nil!12620)))))

(declare-fun b!656111 () Bool)

(declare-fun e!376835 () Bool)

(assert (=> b!656111 (= e!376835 (contains!3192 Nil!12620 (select (arr!18529 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!92561 () Bool)

(declare-fun res!425676 () Bool)

(declare-fun e!376836 () Bool)

(assert (=> d!92561 (=> res!425676 e!376836)))

(assert (=> d!92561 (= res!425676 (bvsge #b00000000000000000000000000000000 (size!18893 a!2986)))))

(assert (=> d!92561 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12620) e!376836)))

(declare-fun b!656112 () Bool)

(declare-fun e!376837 () Bool)

(assert (=> b!656112 (= e!376836 e!376837)))

(declare-fun res!425675 () Bool)

(assert (=> b!656112 (=> (not res!425675) (not e!376837))))

(assert (=> b!656112 (= res!425675 (not e!376835))))

(declare-fun res!425677 () Bool)

(assert (=> b!656112 (=> (not res!425677) (not e!376835))))

(assert (=> b!656112 (= res!425677 (validKeyInArray!0 (select (arr!18529 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656113 () Bool)

(declare-fun e!376834 () Bool)

(assert (=> b!656113 (= e!376834 call!33846)))

(declare-fun b!656114 () Bool)

(assert (=> b!656114 (= e!376837 e!376834)))

(assert (=> b!656114 (= c!75585 (validKeyInArray!0 (select (arr!18529 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656115 () Bool)

(assert (=> b!656115 (= e!376834 call!33846)))

(assert (= (and d!92561 (not res!425676)) b!656112))

(assert (= (and b!656112 res!425677) b!656111))

(assert (= (and b!656112 res!425675) b!656114))

(assert (= (and b!656114 c!75585) b!656115))

(assert (= (and b!656114 (not c!75585)) b!656113))

(assert (= (or b!656115 b!656113) bm!33843))

(assert (=> bm!33843 m!629273))

(declare-fun m!629277 () Bool)

(assert (=> bm!33843 m!629277))

(assert (=> b!656111 m!629273))

(assert (=> b!656111 m!629273))

(declare-fun m!629279 () Bool)

(assert (=> b!656111 m!629279))

(assert (=> b!656112 m!629273))

(assert (=> b!656112 m!629273))

(declare-fun m!629281 () Bool)

(assert (=> b!656112 m!629281))

(assert (=> b!656114 m!629273))

(assert (=> b!656114 m!629273))

(assert (=> b!656114 m!629281))

(assert (=> b!655825 d!92561))

(declare-fun b!656117 () Bool)

(declare-fun e!376839 () SeekEntryResult!6976)

(assert (=> b!656117 (= e!376839 Undefined!6976)))

(declare-fun b!656118 () Bool)

(declare-fun e!376841 () SeekEntryResult!6976)

(assert (=> b!656118 (= e!376841 (Found!6976 index!984))))

(declare-fun lt!306290 () SeekEntryResult!6976)

(declare-fun d!92563 () Bool)

(assert (=> d!92563 (and (or ((_ is Undefined!6976) lt!306290) (not ((_ is Found!6976) lt!306290)) (and (bvsge (index!30263 lt!306290) #b00000000000000000000000000000000) (bvslt (index!30263 lt!306290) (size!18893 a!2986)))) (or ((_ is Undefined!6976) lt!306290) ((_ is Found!6976) lt!306290) (not ((_ is MissingVacant!6976) lt!306290)) (not (= (index!30265 lt!306290) vacantSpotIndex!68)) (and (bvsge (index!30265 lt!306290) #b00000000000000000000000000000000) (bvslt (index!30265 lt!306290) (size!18893 a!2986)))) (or ((_ is Undefined!6976) lt!306290) (ite ((_ is Found!6976) lt!306290) (= (select (arr!18529 a!2986) (index!30263 lt!306290)) (select (arr!18529 a!2986) j!136)) (and ((_ is MissingVacant!6976) lt!306290) (= (index!30265 lt!306290) vacantSpotIndex!68) (= (select (arr!18529 a!2986) (index!30265 lt!306290)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92563 (= lt!306290 e!376839)))

(declare-fun c!75586 () Bool)

(assert (=> d!92563 (= c!75586 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!306291 () (_ BitVec 64))

(assert (=> d!92563 (= lt!306291 (select (arr!18529 a!2986) index!984))))

(assert (=> d!92563 (validMask!0 mask!3053)))

(assert (=> d!92563 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18529 a!2986) j!136) a!2986 mask!3053) lt!306290)))

(declare-fun b!656119 () Bool)

(assert (=> b!656119 (= e!376839 e!376841)))

(declare-fun c!75588 () Bool)

(assert (=> b!656119 (= c!75588 (= lt!306291 (select (arr!18529 a!2986) j!136)))))

(declare-fun b!656120 () Bool)

(declare-fun e!376840 () SeekEntryResult!6976)

(assert (=> b!656120 (= e!376840 (MissingVacant!6976 vacantSpotIndex!68))))

(declare-fun b!656121 () Bool)

(assert (=> b!656121 (= e!376840 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18529 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656122 () Bool)

(declare-fun c!75587 () Bool)

(assert (=> b!656122 (= c!75587 (= lt!306291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656122 (= e!376841 e!376840)))

(assert (= (and d!92563 c!75586) b!656117))

(assert (= (and d!92563 (not c!75586)) b!656119))

(assert (= (and b!656119 c!75588) b!656118))

(assert (= (and b!656119 (not c!75588)) b!656122))

(assert (= (and b!656122 c!75587) b!656120))

(assert (= (and b!656122 (not c!75587)) b!656121))

(declare-fun m!629291 () Bool)

(assert (=> d!92563 m!629291))

(declare-fun m!629293 () Bool)

(assert (=> d!92563 m!629293))

(assert (=> d!92563 m!628975))

(assert (=> d!92563 m!628971))

(assert (=> b!656121 m!628983))

(assert (=> b!656121 m!628983))

(assert (=> b!656121 m!628951))

(declare-fun m!629295 () Bool)

(assert (=> b!656121 m!629295))

(assert (=> b!655834 d!92563))

(declare-fun b!656157 () Bool)

(declare-fun e!376870 () Bool)

(declare-fun e!376869 () Bool)

(assert (=> b!656157 (= e!376870 e!376869)))

(declare-fun lt!306311 () (_ BitVec 64))

(assert (=> b!656157 (= lt!306311 (select (arr!18529 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!306312 () Unit!22604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38666 (_ BitVec 64) (_ BitVec 32)) Unit!22604)

(assert (=> b!656157 (= lt!306312 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!306311 #b00000000000000000000000000000000))))

(assert (=> b!656157 (arrayContainsKey!0 a!2986 lt!306311 #b00000000000000000000000000000000)))

(declare-fun lt!306310 () Unit!22604)

(assert (=> b!656157 (= lt!306310 lt!306312)))

(declare-fun res!425699 () Bool)

(assert (=> b!656157 (= res!425699 (= (seekEntryOrOpen!0 (select (arr!18529 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6976 #b00000000000000000000000000000000)))))

(assert (=> b!656157 (=> (not res!425699) (not e!376869))))

(declare-fun b!656158 () Bool)

(declare-fun call!33854 () Bool)

(assert (=> b!656158 (= e!376870 call!33854)))

(declare-fun b!656159 () Bool)

(assert (=> b!656159 (= e!376869 call!33854)))

(declare-fun bm!33851 () Bool)

(assert (=> bm!33851 (= call!33854 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!656160 () Bool)

(declare-fun e!376871 () Bool)

(assert (=> b!656160 (= e!376871 e!376870)))

(declare-fun c!75596 () Bool)

(assert (=> b!656160 (= c!75596 (validKeyInArray!0 (select (arr!18529 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!92569 () Bool)

(declare-fun res!425700 () Bool)

(assert (=> d!92569 (=> res!425700 e!376871)))

(assert (=> d!92569 (= res!425700 (bvsge #b00000000000000000000000000000000 (size!18893 a!2986)))))

(assert (=> d!92569 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!376871)))

(assert (= (and d!92569 (not res!425700)) b!656160))

(assert (= (and b!656160 c!75596) b!656157))

(assert (= (and b!656160 (not c!75596)) b!656158))

(assert (= (and b!656157 res!425699) b!656159))

(assert (= (or b!656159 b!656158) bm!33851))

(assert (=> b!656157 m!629273))

(declare-fun m!629333 () Bool)

(assert (=> b!656157 m!629333))

(declare-fun m!629337 () Bool)

(assert (=> b!656157 m!629337))

(assert (=> b!656157 m!629273))

(declare-fun m!629339 () Bool)

(assert (=> b!656157 m!629339))

(declare-fun m!629341 () Bool)

(assert (=> bm!33851 m!629341))

(assert (=> b!656160 m!629273))

(assert (=> b!656160 m!629273))

(assert (=> b!656160 m!629281))

(assert (=> b!655823 d!92569))

(check-sat (not d!92519) (not b!656084) (not d!92509) (not b!656085) (not b!656103) (not b!655939) (not d!92505) (not b!656075) (not d!92483) (not d!92513) (not b!656016) (not b!656046) (not b!656112) (not b!656102) (not b!656110) (not bm!33839) (not b!656105) (not d!92563) (not d!92471) (not d!92485) (not d!92549) (not b!656157) (not b!656160) (not b!656121) (not b!655922) (not bm!33843) (not b!656114) (not b!656092) (not b!656099) (not bm!33851) (not b!655985) (not bm!33840) (not b!656076) (not d!92479) (not b!655951) (not b!655919) (not bm!33842) (not d!92545) (not d!92557) (not b!655945) (not d!92481) (not b!656111) (not b!656087) (not d!92473) (not b!656078))
(check-sat)
