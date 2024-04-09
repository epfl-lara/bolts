; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59594 () Bool)

(assert start!59594)

(declare-fun b!657860 () Bool)

(declare-fun e!377936 () Bool)

(declare-fun e!377935 () Bool)

(assert (=> b!657860 (= e!377936 e!377935)))

(declare-fun res!426721 () Bool)

(assert (=> b!657860 (=> (not res!426721) (not e!377935))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38708 0))(
  ( (array!38709 (arr!18547 (Array (_ BitVec 32) (_ BitVec 64))) (size!18911 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38708)

(assert (=> b!657860 (= res!426721 (= (select (store (arr!18547 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!307513 () array!38708)

(assert (=> b!657860 (= lt!307513 (array!38709 (store (arr!18547 a!2986) i!1108 k0!1786) (size!18911 a!2986)))))

(declare-fun b!657861 () Bool)

(declare-fun res!426711 () Bool)

(declare-fun e!377930 () Bool)

(assert (=> b!657861 (=> (not res!426711) (not e!377930))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!657861 (= res!426711 (and (= (size!18911 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18911 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18911 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657862 () Bool)

(declare-fun res!426709 () Bool)

(assert (=> b!657862 (=> (not res!426709) (not e!377930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657862 (= res!426709 (validKeyInArray!0 k0!1786))))

(declare-fun b!657863 () Bool)

(declare-fun res!426717 () Bool)

(assert (=> b!657863 (=> (not res!426717) (not e!377936))))

(declare-datatypes ((List!12641 0))(
  ( (Nil!12638) (Cons!12637 (h!13682 (_ BitVec 64)) (t!18877 List!12641)) )
))
(declare-fun arrayNoDuplicates!0 (array!38708 (_ BitVec 32) List!12641) Bool)

(assert (=> b!657863 (= res!426717 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12638))))

(declare-fun b!657864 () Bool)

(declare-fun e!377933 () Bool)

(declare-datatypes ((SeekEntryResult!6994 0))(
  ( (MissingZero!6994 (index!30340 (_ BitVec 32))) (Found!6994 (index!30341 (_ BitVec 32))) (Intermediate!6994 (undefined!7806 Bool) (index!30342 (_ BitVec 32)) (x!59158 (_ BitVec 32))) (Undefined!6994) (MissingVacant!6994 (index!30343 (_ BitVec 32))) )
))
(declare-fun lt!307527 () SeekEntryResult!6994)

(declare-fun lt!307518 () SeekEntryResult!6994)

(assert (=> b!657864 (= e!377933 (= lt!307527 lt!307518))))

(declare-fun b!657865 () Bool)

(declare-datatypes ((Unit!22784 0))(
  ( (Unit!22785) )
))
(declare-fun e!377925 () Unit!22784)

(declare-fun Unit!22786 () Unit!22784)

(assert (=> b!657865 (= e!377925 Unit!22786)))

(declare-fun e!377932 () Bool)

(declare-fun b!657866 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657866 (= e!377932 (arrayContainsKey!0 lt!307513 (select (arr!18547 a!2986) j!136) index!984))))

(declare-fun b!657867 () Bool)

(declare-fun e!377937 () Unit!22784)

(declare-fun Unit!22787 () Unit!22784)

(assert (=> b!657867 (= e!377937 Unit!22787)))

(declare-fun res!426713 () Bool)

(assert (=> b!657867 (= res!426713 (= (select (store (arr!18547 a!2986) i!1108 k0!1786) index!984) (select (arr!18547 a!2986) j!136)))))

(declare-fun e!377929 () Bool)

(assert (=> b!657867 (=> (not res!426713) (not e!377929))))

(assert (=> b!657867 e!377929))

(declare-fun c!75947 () Bool)

(assert (=> b!657867 (= c!75947 (bvslt j!136 index!984))))

(declare-fun lt!307523 () Unit!22784)

(declare-fun e!377931 () Unit!22784)

(assert (=> b!657867 (= lt!307523 e!377931)))

(declare-fun c!75945 () Bool)

(assert (=> b!657867 (= c!75945 (bvslt index!984 j!136))))

(declare-fun lt!307519 () Unit!22784)

(assert (=> b!657867 (= lt!307519 e!377925)))

(assert (=> b!657867 false))

(declare-fun b!657869 () Bool)

(declare-fun Unit!22788 () Unit!22784)

(assert (=> b!657869 (= e!377937 Unit!22788)))

(declare-fun b!657870 () Bool)

(declare-fun e!377928 () Unit!22784)

(declare-fun Unit!22789 () Unit!22784)

(assert (=> b!657870 (= e!377928 Unit!22789)))

(declare-fun b!657871 () Bool)

(declare-fun Unit!22790 () Unit!22784)

(assert (=> b!657871 (= e!377928 Unit!22790)))

(assert (=> b!657871 false))

(declare-fun b!657872 () Bool)

(declare-fun res!426718 () Bool)

(assert (=> b!657872 (=> (not res!426718) (not e!377936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38708 (_ BitVec 32)) Bool)

(assert (=> b!657872 (= res!426718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657873 () Bool)

(assert (=> b!657873 false))

(declare-fun lt!307525 () Unit!22784)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38708 (_ BitVec 64) (_ BitVec 32) List!12641) Unit!22784)

(assert (=> b!657873 (= lt!307525 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307513 (select (arr!18547 a!2986) j!136) j!136 Nil!12638))))

(assert (=> b!657873 (arrayNoDuplicates!0 lt!307513 j!136 Nil!12638)))

(declare-fun lt!307516 () Unit!22784)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38708 (_ BitVec 32) (_ BitVec 32)) Unit!22784)

(assert (=> b!657873 (= lt!307516 (lemmaNoDuplicateFromThenFromBigger!0 lt!307513 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657873 (arrayNoDuplicates!0 lt!307513 #b00000000000000000000000000000000 Nil!12638)))

(declare-fun lt!307520 () Unit!22784)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38708 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12641) Unit!22784)

(assert (=> b!657873 (= lt!307520 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12638))))

(assert (=> b!657873 (arrayContainsKey!0 lt!307513 (select (arr!18547 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307515 () Unit!22784)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38708 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22784)

(assert (=> b!657873 (= lt!307515 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307513 (select (arr!18547 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22791 () Unit!22784)

(assert (=> b!657873 (= e!377931 Unit!22791)))

(declare-fun res!426707 () Bool)

(declare-fun b!657874 () Bool)

(assert (=> b!657874 (= res!426707 (arrayContainsKey!0 lt!307513 (select (arr!18547 a!2986) j!136) j!136))))

(assert (=> b!657874 (=> (not res!426707) (not e!377932))))

(declare-fun e!377924 () Bool)

(assert (=> b!657874 (= e!377924 e!377932)))

(declare-fun b!657875 () Bool)

(declare-fun res!426722 () Bool)

(assert (=> b!657875 (=> (not res!426722) (not e!377930))))

(assert (=> b!657875 (= res!426722 (validKeyInArray!0 (select (arr!18547 a!2986) j!136)))))

(declare-fun b!657876 () Bool)

(declare-fun e!377938 () Bool)

(assert (=> b!657876 (= e!377938 true)))

(assert (=> b!657876 (= (select (store (arr!18547 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657877 () Bool)

(assert (=> b!657877 false))

(declare-fun lt!307524 () Unit!22784)

(assert (=> b!657877 (= lt!307524 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307513 (select (arr!18547 a!2986) j!136) index!984 Nil!12638))))

(assert (=> b!657877 (arrayNoDuplicates!0 lt!307513 index!984 Nil!12638)))

(declare-fun lt!307514 () Unit!22784)

(assert (=> b!657877 (= lt!307514 (lemmaNoDuplicateFromThenFromBigger!0 lt!307513 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657877 (arrayNoDuplicates!0 lt!307513 #b00000000000000000000000000000000 Nil!12638)))

(declare-fun lt!307522 () Unit!22784)

(assert (=> b!657877 (= lt!307522 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12638))))

(assert (=> b!657877 (arrayContainsKey!0 lt!307513 (select (arr!18547 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307526 () Unit!22784)

(assert (=> b!657877 (= lt!307526 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307513 (select (arr!18547 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377934 () Bool)

(assert (=> b!657877 e!377934))

(declare-fun res!426708 () Bool)

(assert (=> b!657877 (=> (not res!426708) (not e!377934))))

(assert (=> b!657877 (= res!426708 (arrayContainsKey!0 lt!307513 (select (arr!18547 a!2986) j!136) j!136))))

(declare-fun Unit!22792 () Unit!22784)

(assert (=> b!657877 (= e!377925 Unit!22792)))

(declare-fun b!657878 () Bool)

(declare-fun Unit!22793 () Unit!22784)

(assert (=> b!657878 (= e!377931 Unit!22793)))

(declare-fun b!657879 () Bool)

(declare-fun e!377926 () Bool)

(assert (=> b!657879 (= e!377926 (not e!377938))))

(declare-fun res!426712 () Bool)

(assert (=> b!657879 (=> res!426712 e!377938)))

(declare-fun lt!307509 () SeekEntryResult!6994)

(assert (=> b!657879 (= res!426712 (not (= lt!307509 (MissingVacant!6994 vacantSpotIndex!68))))))

(declare-fun lt!307517 () Unit!22784)

(assert (=> b!657879 (= lt!307517 e!377937)))

(declare-fun c!75946 () Bool)

(assert (=> b!657879 (= c!75946 (= lt!307509 (Found!6994 index!984)))))

(declare-fun lt!307512 () Unit!22784)

(assert (=> b!657879 (= lt!307512 e!377928)))

(declare-fun c!75944 () Bool)

(assert (=> b!657879 (= c!75944 (= lt!307509 Undefined!6994))))

(declare-fun lt!307511 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38708 (_ BitVec 32)) SeekEntryResult!6994)

(assert (=> b!657879 (= lt!307509 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307511 lt!307513 mask!3053))))

(assert (=> b!657879 e!377933))

(declare-fun res!426715 () Bool)

(assert (=> b!657879 (=> (not res!426715) (not e!377933))))

(declare-fun lt!307521 () (_ BitVec 32))

(assert (=> b!657879 (= res!426715 (= lt!307518 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307521 vacantSpotIndex!68 lt!307511 lt!307513 mask!3053)))))

(assert (=> b!657879 (= lt!307518 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307521 vacantSpotIndex!68 (select (arr!18547 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657879 (= lt!307511 (select (store (arr!18547 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!307508 () Unit!22784)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38708 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22784)

(assert (=> b!657879 (= lt!307508 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307521 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657879 (= lt!307521 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657880 () Bool)

(assert (=> b!657880 (= e!377935 e!377926)))

(declare-fun res!426714 () Bool)

(assert (=> b!657880 (=> (not res!426714) (not e!377926))))

(assert (=> b!657880 (= res!426714 (and (= lt!307527 (Found!6994 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18547 a!2986) index!984) (select (arr!18547 a!2986) j!136))) (not (= (select (arr!18547 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657880 (= lt!307527 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18547 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!426719 () Bool)

(assert (=> start!59594 (=> (not res!426719) (not e!377930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59594 (= res!426719 (validMask!0 mask!3053))))

(assert (=> start!59594 e!377930))

(assert (=> start!59594 true))

(declare-fun array_inv!14321 (array!38708) Bool)

(assert (=> start!59594 (array_inv!14321 a!2986)))

(declare-fun b!657868 () Bool)

(assert (=> b!657868 (= e!377934 (arrayContainsKey!0 lt!307513 (select (arr!18547 a!2986) j!136) index!984))))

(declare-fun b!657881 () Bool)

(declare-fun res!426716 () Bool)

(assert (=> b!657881 (= res!426716 (bvsge j!136 index!984))))

(assert (=> b!657881 (=> res!426716 e!377924)))

(assert (=> b!657881 (= e!377929 e!377924)))

(declare-fun b!657882 () Bool)

(assert (=> b!657882 (= e!377930 e!377936)))

(declare-fun res!426710 () Bool)

(assert (=> b!657882 (=> (not res!426710) (not e!377936))))

(declare-fun lt!307510 () SeekEntryResult!6994)

(assert (=> b!657882 (= res!426710 (or (= lt!307510 (MissingZero!6994 i!1108)) (= lt!307510 (MissingVacant!6994 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38708 (_ BitVec 32)) SeekEntryResult!6994)

(assert (=> b!657882 (= lt!307510 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!657883 () Bool)

(declare-fun res!426720 () Bool)

(assert (=> b!657883 (=> (not res!426720) (not e!377930))))

(assert (=> b!657883 (= res!426720 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657884 () Bool)

(declare-fun res!426706 () Bool)

(assert (=> b!657884 (=> (not res!426706) (not e!377936))))

(assert (=> b!657884 (= res!426706 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18547 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59594 res!426719) b!657861))

(assert (= (and b!657861 res!426711) b!657875))

(assert (= (and b!657875 res!426722) b!657862))

(assert (= (and b!657862 res!426709) b!657883))

(assert (= (and b!657883 res!426720) b!657882))

(assert (= (and b!657882 res!426710) b!657872))

(assert (= (and b!657872 res!426718) b!657863))

(assert (= (and b!657863 res!426717) b!657884))

(assert (= (and b!657884 res!426706) b!657860))

(assert (= (and b!657860 res!426721) b!657880))

(assert (= (and b!657880 res!426714) b!657879))

(assert (= (and b!657879 res!426715) b!657864))

(assert (= (and b!657879 c!75944) b!657871))

(assert (= (and b!657879 (not c!75944)) b!657870))

(assert (= (and b!657879 c!75946) b!657867))

(assert (= (and b!657879 (not c!75946)) b!657869))

(assert (= (and b!657867 res!426713) b!657881))

(assert (= (and b!657881 (not res!426716)) b!657874))

(assert (= (and b!657874 res!426707) b!657866))

(assert (= (and b!657867 c!75947) b!657873))

(assert (= (and b!657867 (not c!75947)) b!657878))

(assert (= (and b!657867 c!75945) b!657877))

(assert (= (and b!657867 (not c!75945)) b!657865))

(assert (= (and b!657877 res!426708) b!657868))

(assert (= (and b!657879 (not res!426712)) b!657876))

(declare-fun m!630931 () Bool)

(assert (=> b!657872 m!630931))

(declare-fun m!630933 () Bool)

(assert (=> b!657883 m!630933))

(declare-fun m!630935 () Bool)

(assert (=> b!657868 m!630935))

(assert (=> b!657868 m!630935))

(declare-fun m!630937 () Bool)

(assert (=> b!657868 m!630937))

(declare-fun m!630939 () Bool)

(assert (=> b!657862 m!630939))

(declare-fun m!630941 () Bool)

(assert (=> b!657882 m!630941))

(declare-fun m!630943 () Bool)

(assert (=> b!657863 m!630943))

(declare-fun m!630945 () Bool)

(assert (=> b!657879 m!630945))

(assert (=> b!657879 m!630935))

(declare-fun m!630947 () Bool)

(assert (=> b!657879 m!630947))

(declare-fun m!630949 () Bool)

(assert (=> b!657879 m!630949))

(assert (=> b!657879 m!630935))

(declare-fun m!630951 () Bool)

(assert (=> b!657879 m!630951))

(declare-fun m!630953 () Bool)

(assert (=> b!657879 m!630953))

(declare-fun m!630955 () Bool)

(assert (=> b!657879 m!630955))

(declare-fun m!630957 () Bool)

(assert (=> b!657879 m!630957))

(declare-fun m!630959 () Bool)

(assert (=> b!657880 m!630959))

(assert (=> b!657880 m!630935))

(assert (=> b!657880 m!630935))

(declare-fun m!630961 () Bool)

(assert (=> b!657880 m!630961))

(assert (=> b!657875 m!630935))

(assert (=> b!657875 m!630935))

(declare-fun m!630963 () Bool)

(assert (=> b!657875 m!630963))

(assert (=> b!657860 m!630947))

(declare-fun m!630965 () Bool)

(assert (=> b!657860 m!630965))

(declare-fun m!630967 () Bool)

(assert (=> start!59594 m!630967))

(declare-fun m!630969 () Bool)

(assert (=> start!59594 m!630969))

(assert (=> b!657876 m!630947))

(declare-fun m!630971 () Bool)

(assert (=> b!657876 m!630971))

(declare-fun m!630973 () Bool)

(assert (=> b!657873 m!630973))

(assert (=> b!657873 m!630935))

(assert (=> b!657873 m!630935))

(declare-fun m!630975 () Bool)

(assert (=> b!657873 m!630975))

(assert (=> b!657873 m!630935))

(declare-fun m!630977 () Bool)

(assert (=> b!657873 m!630977))

(assert (=> b!657873 m!630935))

(declare-fun m!630979 () Bool)

(assert (=> b!657873 m!630979))

(declare-fun m!630981 () Bool)

(assert (=> b!657873 m!630981))

(declare-fun m!630983 () Bool)

(assert (=> b!657873 m!630983))

(declare-fun m!630985 () Bool)

(assert (=> b!657873 m!630985))

(assert (=> b!657874 m!630935))

(assert (=> b!657874 m!630935))

(declare-fun m!630987 () Bool)

(assert (=> b!657874 m!630987))

(assert (=> b!657866 m!630935))

(assert (=> b!657866 m!630935))

(assert (=> b!657866 m!630937))

(assert (=> b!657867 m!630947))

(assert (=> b!657867 m!630971))

(assert (=> b!657867 m!630935))

(assert (=> b!657877 m!630973))

(assert (=> b!657877 m!630935))

(declare-fun m!630989 () Bool)

(assert (=> b!657877 m!630989))

(assert (=> b!657877 m!630935))

(declare-fun m!630991 () Bool)

(assert (=> b!657877 m!630991))

(assert (=> b!657877 m!630935))

(assert (=> b!657877 m!630987))

(declare-fun m!630993 () Bool)

(assert (=> b!657877 m!630993))

(assert (=> b!657877 m!630935))

(assert (=> b!657877 m!630935))

(declare-fun m!630995 () Bool)

(assert (=> b!657877 m!630995))

(declare-fun m!630997 () Bool)

(assert (=> b!657877 m!630997))

(assert (=> b!657877 m!630985))

(declare-fun m!630999 () Bool)

(assert (=> b!657884 m!630999))

(check-sat (not b!657875) (not start!59594) (not b!657863) (not b!657879) (not b!657882) (not b!657877) (not b!657868) (not b!657872) (not b!657866) (not b!657880) (not b!657862) (not b!657873) (not b!657883) (not b!657874))
(check-sat)
