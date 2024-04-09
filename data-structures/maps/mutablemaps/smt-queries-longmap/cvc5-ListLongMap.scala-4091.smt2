; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56052 () Bool)

(assert start!56052)

(declare-fun b!616739 () Bool)

(declare-datatypes ((Unit!20140 0))(
  ( (Unit!20141) )
))
(declare-fun e!353649 () Unit!20140)

(declare-fun Unit!20142 () Unit!20140)

(assert (=> b!616739 (= e!353649 Unit!20142)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!397400 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37485 0))(
  ( (array!37486 (arr!17985 (Array (_ BitVec 32) (_ BitVec 64))) (size!18349 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37485)

(assert (=> b!616739 (= res!397400 (= (select (store (arr!17985 a!2986) i!1108 k!1786) index!984) (select (arr!17985 a!2986) j!136)))))

(declare-fun e!353655 () Bool)

(assert (=> b!616739 (=> (not res!397400) (not e!353655))))

(assert (=> b!616739 e!353655))

(declare-fun c!70040 () Bool)

(assert (=> b!616739 (= c!70040 (bvslt j!136 index!984))))

(declare-fun lt!283879 () Unit!20140)

(declare-fun e!353644 () Unit!20140)

(assert (=> b!616739 (= lt!283879 e!353644)))

(declare-fun c!70041 () Bool)

(assert (=> b!616739 (= c!70041 (bvslt index!984 j!136))))

(declare-fun lt!283888 () Unit!20140)

(declare-fun e!353652 () Unit!20140)

(assert (=> b!616739 (= lt!283888 e!353652)))

(assert (=> b!616739 false))

(declare-fun b!616740 () Bool)

(declare-fun res!397409 () Bool)

(declare-fun e!353651 () Bool)

(assert (=> b!616740 (=> (not res!397409) (not e!353651))))

(declare-fun arrayContainsKey!0 (array!37485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616740 (= res!397409 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616741 () Bool)

(declare-fun Unit!20143 () Unit!20140)

(assert (=> b!616741 (= e!353644 Unit!20143)))

(declare-fun b!616742 () Bool)

(declare-fun res!397401 () Bool)

(declare-fun e!353648 () Bool)

(assert (=> b!616742 (=> (not res!397401) (not e!353648))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37485 (_ BitVec 32)) Bool)

(assert (=> b!616742 (= res!397401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616743 () Bool)

(assert (=> b!616743 false))

(declare-fun lt!283881 () array!37485)

(declare-fun lt!283886 () Unit!20140)

(declare-datatypes ((List!12079 0))(
  ( (Nil!12076) (Cons!12075 (h!13120 (_ BitVec 64)) (t!18315 List!12079)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37485 (_ BitVec 64) (_ BitVec 32) List!12079) Unit!20140)

(assert (=> b!616743 (= lt!283886 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283881 (select (arr!17985 a!2986) j!136) j!136 Nil!12076))))

(declare-fun arrayNoDuplicates!0 (array!37485 (_ BitVec 32) List!12079) Bool)

(assert (=> b!616743 (arrayNoDuplicates!0 lt!283881 j!136 Nil!12076)))

(declare-fun lt!283887 () Unit!20140)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37485 (_ BitVec 32) (_ BitVec 32)) Unit!20140)

(assert (=> b!616743 (= lt!283887 (lemmaNoDuplicateFromThenFromBigger!0 lt!283881 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616743 (arrayNoDuplicates!0 lt!283881 #b00000000000000000000000000000000 Nil!12076)))

(declare-fun lt!283878 () Unit!20140)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37485 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12079) Unit!20140)

(assert (=> b!616743 (= lt!283878 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12076))))

(assert (=> b!616743 (arrayContainsKey!0 lt!283881 (select (arr!17985 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283896 () Unit!20140)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37485 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20140)

(assert (=> b!616743 (= lt!283896 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283881 (select (arr!17985 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20144 () Unit!20140)

(assert (=> b!616743 (= e!353644 Unit!20144)))

(declare-fun res!397402 () Bool)

(assert (=> start!56052 (=> (not res!397402) (not e!353651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56052 (= res!397402 (validMask!0 mask!3053))))

(assert (=> start!56052 e!353651))

(assert (=> start!56052 true))

(declare-fun array_inv!13759 (array!37485) Bool)

(assert (=> start!56052 (array_inv!13759 a!2986)))

(declare-fun res!397395 () Bool)

(declare-fun b!616744 () Bool)

(assert (=> b!616744 (= res!397395 (arrayContainsKey!0 lt!283881 (select (arr!17985 a!2986) j!136) j!136))))

(declare-fun e!353646 () Bool)

(assert (=> b!616744 (=> (not res!397395) (not e!353646))))

(declare-fun e!353654 () Bool)

(assert (=> b!616744 (= e!353654 e!353646)))

(declare-fun b!616745 () Bool)

(declare-fun res!397403 () Bool)

(assert (=> b!616745 (=> (not res!397403) (not e!353648))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616745 (= res!397403 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17985 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616746 () Bool)

(declare-fun e!353645 () Unit!20140)

(declare-fun Unit!20145 () Unit!20140)

(assert (=> b!616746 (= e!353645 Unit!20145)))

(assert (=> b!616746 false))

(declare-fun b!616747 () Bool)

(declare-fun e!353653 () Bool)

(declare-fun e!353642 () Bool)

(assert (=> b!616747 (= e!353653 (not e!353642))))

(declare-fun res!397399 () Bool)

(assert (=> b!616747 (=> res!397399 e!353642)))

(declare-datatypes ((SeekEntryResult!6432 0))(
  ( (MissingZero!6432 (index!28011 (_ BitVec 32))) (Found!6432 (index!28012 (_ BitVec 32))) (Intermediate!6432 (undefined!7244 Bool) (index!28013 (_ BitVec 32)) (x!56833 (_ BitVec 32))) (Undefined!6432) (MissingVacant!6432 (index!28014 (_ BitVec 32))) )
))
(declare-fun lt!283877 () SeekEntryResult!6432)

(assert (=> b!616747 (= res!397399 (not (= lt!283877 (MissingVacant!6432 vacantSpotIndex!68))))))

(declare-fun lt!283893 () Unit!20140)

(assert (=> b!616747 (= lt!283893 e!353649)))

(declare-fun c!70043 () Bool)

(assert (=> b!616747 (= c!70043 (= lt!283877 (Found!6432 index!984)))))

(declare-fun lt!283882 () Unit!20140)

(assert (=> b!616747 (= lt!283882 e!353645)))

(declare-fun c!70042 () Bool)

(assert (=> b!616747 (= c!70042 (= lt!283877 Undefined!6432))))

(declare-fun lt!283890 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37485 (_ BitVec 32)) SeekEntryResult!6432)

(assert (=> b!616747 (= lt!283877 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283890 lt!283881 mask!3053))))

(declare-fun e!353643 () Bool)

(assert (=> b!616747 e!353643))

(declare-fun res!397393 () Bool)

(assert (=> b!616747 (=> (not res!397393) (not e!353643))))

(declare-fun lt!283884 () SeekEntryResult!6432)

(declare-fun lt!283883 () (_ BitVec 32))

(assert (=> b!616747 (= res!397393 (= lt!283884 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283883 vacantSpotIndex!68 lt!283890 lt!283881 mask!3053)))))

(assert (=> b!616747 (= lt!283884 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283883 vacantSpotIndex!68 (select (arr!17985 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616747 (= lt!283890 (select (store (arr!17985 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283895 () Unit!20140)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37485 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20140)

(assert (=> b!616747 (= lt!283895 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283883 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616747 (= lt!283883 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616748 () Bool)

(declare-fun Unit!20146 () Unit!20140)

(assert (=> b!616748 (= e!353645 Unit!20146)))

(declare-fun e!353647 () Bool)

(declare-fun b!616749 () Bool)

(assert (=> b!616749 (= e!353647 (arrayContainsKey!0 lt!283881 (select (arr!17985 a!2986) j!136) index!984))))

(declare-fun b!616750 () Bool)

(declare-fun res!397407 () Bool)

(assert (=> b!616750 (=> (not res!397407) (not e!353651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616750 (= res!397407 (validKeyInArray!0 k!1786))))

(declare-fun b!616751 () Bool)

(declare-fun res!397404 () Bool)

(assert (=> b!616751 (= res!397404 (bvsge j!136 index!984))))

(assert (=> b!616751 (=> res!397404 e!353654)))

(assert (=> b!616751 (= e!353655 e!353654)))

(declare-fun b!616752 () Bool)

(declare-fun res!397397 () Bool)

(assert (=> b!616752 (=> (not res!397397) (not e!353648))))

(assert (=> b!616752 (= res!397397 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12076))))

(declare-fun b!616753 () Bool)

(assert (=> b!616753 (= e!353651 e!353648)))

(declare-fun res!397394 () Bool)

(assert (=> b!616753 (=> (not res!397394) (not e!353648))))

(declare-fun lt!283880 () SeekEntryResult!6432)

(assert (=> b!616753 (= res!397394 (or (= lt!283880 (MissingZero!6432 i!1108)) (= lt!283880 (MissingVacant!6432 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37485 (_ BitVec 32)) SeekEntryResult!6432)

(assert (=> b!616753 (= lt!283880 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!616754 () Bool)

(declare-fun Unit!20147 () Unit!20140)

(assert (=> b!616754 (= e!353649 Unit!20147)))

(declare-fun b!616755 () Bool)

(declare-fun e!353650 () Bool)

(assert (=> b!616755 (= e!353650 e!353653)))

(declare-fun res!397408 () Bool)

(assert (=> b!616755 (=> (not res!397408) (not e!353653))))

(declare-fun lt!283885 () SeekEntryResult!6432)

(assert (=> b!616755 (= res!397408 (and (= lt!283885 (Found!6432 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17985 a!2986) index!984) (select (arr!17985 a!2986) j!136))) (not (= (select (arr!17985 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!616755 (= lt!283885 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17985 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616756 () Bool)

(declare-fun res!397396 () Bool)

(assert (=> b!616756 (=> (not res!397396) (not e!353651))))

(assert (=> b!616756 (= res!397396 (and (= (size!18349 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18349 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18349 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616757 () Bool)

(assert (=> b!616757 (= e!353648 e!353650)))

(declare-fun res!397405 () Bool)

(assert (=> b!616757 (=> (not res!397405) (not e!353650))))

(assert (=> b!616757 (= res!397405 (= (select (store (arr!17985 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616757 (= lt!283881 (array!37486 (store (arr!17985 a!2986) i!1108 k!1786) (size!18349 a!2986)))))

(declare-fun b!616758 () Bool)

(declare-fun res!397406 () Bool)

(assert (=> b!616758 (=> (not res!397406) (not e!353651))))

(assert (=> b!616758 (= res!397406 (validKeyInArray!0 (select (arr!17985 a!2986) j!136)))))

(declare-fun b!616759 () Bool)

(assert (=> b!616759 (= e!353643 (= lt!283885 lt!283884))))

(declare-fun b!616760 () Bool)

(declare-fun Unit!20148 () Unit!20140)

(assert (=> b!616760 (= e!353652 Unit!20148)))

(declare-fun b!616761 () Bool)

(assert (=> b!616761 (= e!353646 (arrayContainsKey!0 lt!283881 (select (arr!17985 a!2986) j!136) index!984))))

(declare-fun b!616762 () Bool)

(assert (=> b!616762 false))

(declare-fun lt!283889 () Unit!20140)

(assert (=> b!616762 (= lt!283889 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283881 (select (arr!17985 a!2986) j!136) index!984 Nil!12076))))

(assert (=> b!616762 (arrayNoDuplicates!0 lt!283881 index!984 Nil!12076)))

(declare-fun lt!283894 () Unit!20140)

(assert (=> b!616762 (= lt!283894 (lemmaNoDuplicateFromThenFromBigger!0 lt!283881 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616762 (arrayNoDuplicates!0 lt!283881 #b00000000000000000000000000000000 Nil!12076)))

(declare-fun lt!283892 () Unit!20140)

(assert (=> b!616762 (= lt!283892 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12076))))

(assert (=> b!616762 (arrayContainsKey!0 lt!283881 (select (arr!17985 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283891 () Unit!20140)

(assert (=> b!616762 (= lt!283891 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283881 (select (arr!17985 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616762 e!353647))

(declare-fun res!397398 () Bool)

(assert (=> b!616762 (=> (not res!397398) (not e!353647))))

(assert (=> b!616762 (= res!397398 (arrayContainsKey!0 lt!283881 (select (arr!17985 a!2986) j!136) j!136))))

(declare-fun Unit!20149 () Unit!20140)

(assert (=> b!616762 (= e!353652 Unit!20149)))

(declare-fun b!616763 () Bool)

(assert (=> b!616763 (= e!353642 true)))

(assert (=> b!616763 (= (select (store (arr!17985 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (= (and start!56052 res!397402) b!616756))

(assert (= (and b!616756 res!397396) b!616758))

(assert (= (and b!616758 res!397406) b!616750))

(assert (= (and b!616750 res!397407) b!616740))

(assert (= (and b!616740 res!397409) b!616753))

(assert (= (and b!616753 res!397394) b!616742))

(assert (= (and b!616742 res!397401) b!616752))

(assert (= (and b!616752 res!397397) b!616745))

(assert (= (and b!616745 res!397403) b!616757))

(assert (= (and b!616757 res!397405) b!616755))

(assert (= (and b!616755 res!397408) b!616747))

(assert (= (and b!616747 res!397393) b!616759))

(assert (= (and b!616747 c!70042) b!616746))

(assert (= (and b!616747 (not c!70042)) b!616748))

(assert (= (and b!616747 c!70043) b!616739))

(assert (= (and b!616747 (not c!70043)) b!616754))

(assert (= (and b!616739 res!397400) b!616751))

(assert (= (and b!616751 (not res!397404)) b!616744))

(assert (= (and b!616744 res!397395) b!616761))

(assert (= (and b!616739 c!70040) b!616743))

(assert (= (and b!616739 (not c!70040)) b!616741))

(assert (= (and b!616739 c!70041) b!616762))

(assert (= (and b!616739 (not c!70041)) b!616760))

(assert (= (and b!616762 res!397398) b!616749))

(assert (= (and b!616747 (not res!397399)) b!616763))

(declare-fun m!592929 () Bool)

(assert (=> b!616755 m!592929))

(declare-fun m!592931 () Bool)

(assert (=> b!616755 m!592931))

(assert (=> b!616755 m!592931))

(declare-fun m!592933 () Bool)

(assert (=> b!616755 m!592933))

(declare-fun m!592935 () Bool)

(assert (=> b!616762 m!592935))

(assert (=> b!616762 m!592931))

(assert (=> b!616762 m!592931))

(declare-fun m!592937 () Bool)

(assert (=> b!616762 m!592937))

(assert (=> b!616762 m!592931))

(declare-fun m!592939 () Bool)

(assert (=> b!616762 m!592939))

(assert (=> b!616762 m!592931))

(declare-fun m!592941 () Bool)

(assert (=> b!616762 m!592941))

(assert (=> b!616762 m!592931))

(declare-fun m!592943 () Bool)

(assert (=> b!616762 m!592943))

(declare-fun m!592945 () Bool)

(assert (=> b!616762 m!592945))

(declare-fun m!592947 () Bool)

(assert (=> b!616762 m!592947))

(declare-fun m!592949 () Bool)

(assert (=> b!616762 m!592949))

(declare-fun m!592951 () Bool)

(assert (=> b!616742 m!592951))

(declare-fun m!592953 () Bool)

(assert (=> start!56052 m!592953))

(declare-fun m!592955 () Bool)

(assert (=> start!56052 m!592955))

(assert (=> b!616749 m!592931))

(assert (=> b!616749 m!592931))

(declare-fun m!592957 () Bool)

(assert (=> b!616749 m!592957))

(declare-fun m!592959 () Bool)

(assert (=> b!616740 m!592959))

(declare-fun m!592961 () Bool)

(assert (=> b!616747 m!592961))

(assert (=> b!616747 m!592931))

(assert (=> b!616747 m!592931))

(declare-fun m!592963 () Bool)

(assert (=> b!616747 m!592963))

(declare-fun m!592965 () Bool)

(assert (=> b!616747 m!592965))

(declare-fun m!592967 () Bool)

(assert (=> b!616747 m!592967))

(declare-fun m!592969 () Bool)

(assert (=> b!616747 m!592969))

(declare-fun m!592971 () Bool)

(assert (=> b!616747 m!592971))

(declare-fun m!592973 () Bool)

(assert (=> b!616747 m!592973))

(declare-fun m!592975 () Bool)

(assert (=> b!616753 m!592975))

(declare-fun m!592977 () Bool)

(assert (=> b!616745 m!592977))

(assert (=> b!616761 m!592931))

(assert (=> b!616761 m!592931))

(assert (=> b!616761 m!592957))

(assert (=> b!616744 m!592931))

(assert (=> b!616744 m!592931))

(assert (=> b!616744 m!592939))

(assert (=> b!616743 m!592935))

(assert (=> b!616743 m!592931))

(assert (=> b!616743 m!592931))

(declare-fun m!592979 () Bool)

(assert (=> b!616743 m!592979))

(declare-fun m!592981 () Bool)

(assert (=> b!616743 m!592981))

(declare-fun m!592983 () Bool)

(assert (=> b!616743 m!592983))

(assert (=> b!616743 m!592931))

(declare-fun m!592985 () Bool)

(assert (=> b!616743 m!592985))

(assert (=> b!616743 m!592931))

(declare-fun m!592987 () Bool)

(assert (=> b!616743 m!592987))

(assert (=> b!616743 m!592949))

(assert (=> b!616758 m!592931))

(assert (=> b!616758 m!592931))

(declare-fun m!592989 () Bool)

(assert (=> b!616758 m!592989))

(assert (=> b!616763 m!592973))

(declare-fun m!592991 () Bool)

(assert (=> b!616763 m!592991))

(assert (=> b!616739 m!592973))

(assert (=> b!616739 m!592991))

(assert (=> b!616739 m!592931))

(assert (=> b!616757 m!592973))

(declare-fun m!592993 () Bool)

(assert (=> b!616757 m!592993))

(declare-fun m!592995 () Bool)

(assert (=> b!616752 m!592995))

(declare-fun m!592997 () Bool)

(assert (=> b!616750 m!592997))

(push 1)

