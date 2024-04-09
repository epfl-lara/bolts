; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56220 () Bool)

(assert start!56220)

(declare-fun b!622911 () Bool)

(declare-fun res!401560 () Bool)

(declare-fun e!357305 () Bool)

(assert (=> b!622911 (=> (not res!401560) (not e!357305))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37653 0))(
  ( (array!37654 (arr!18069 (Array (_ BitVec 32) (_ BitVec 64))) (size!18433 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37653)

(assert (=> b!622911 (= res!401560 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18069 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!401561 () Bool)

(declare-fun b!622912 () Bool)

(declare-fun lt!288935 () array!37653)

(declare-fun arrayContainsKey!0 (array!37653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622912 (= res!401561 (arrayContainsKey!0 lt!288935 (select (arr!18069 a!2986) j!136) j!136))))

(declare-fun e!357295 () Bool)

(assert (=> b!622912 (=> (not res!401561) (not e!357295))))

(declare-fun e!357303 () Bool)

(assert (=> b!622912 (= e!357303 e!357295)))

(declare-fun b!622914 () Bool)

(declare-datatypes ((Unit!20980 0))(
  ( (Unit!20981) )
))
(declare-fun e!357296 () Unit!20980)

(declare-fun Unit!20982 () Unit!20980)

(assert (=> b!622914 (= e!357296 Unit!20982)))

(declare-fun b!622915 () Bool)

(declare-fun e!357306 () Unit!20980)

(declare-fun Unit!20983 () Unit!20980)

(assert (=> b!622915 (= e!357306 Unit!20983)))

(declare-fun b!622916 () Bool)

(assert (=> b!622916 false))

(declare-fun lt!288920 () Unit!20980)

(declare-datatypes ((List!12163 0))(
  ( (Nil!12160) (Cons!12159 (h!13204 (_ BitVec 64)) (t!18399 List!12163)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37653 (_ BitVec 64) (_ BitVec 32) List!12163) Unit!20980)

(assert (=> b!622916 (= lt!288920 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288935 (select (arr!18069 a!2986) j!136) index!984 Nil!12160))))

(declare-fun arrayNoDuplicates!0 (array!37653 (_ BitVec 32) List!12163) Bool)

(assert (=> b!622916 (arrayNoDuplicates!0 lt!288935 index!984 Nil!12160)))

(declare-fun lt!288930 () Unit!20980)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37653 (_ BitVec 32) (_ BitVec 32)) Unit!20980)

(assert (=> b!622916 (= lt!288930 (lemmaNoDuplicateFromThenFromBigger!0 lt!288935 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622916 (arrayNoDuplicates!0 lt!288935 #b00000000000000000000000000000000 Nil!12160)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!288919 () Unit!20980)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37653 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12163) Unit!20980)

(assert (=> b!622916 (= lt!288919 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12160))))

(assert (=> b!622916 (arrayContainsKey!0 lt!288935 (select (arr!18069 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288922 () Unit!20980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37653 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20980)

(assert (=> b!622916 (= lt!288922 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288935 (select (arr!18069 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!357307 () Bool)

(assert (=> b!622916 e!357307))

(declare-fun res!401551 () Bool)

(assert (=> b!622916 (=> (not res!401551) (not e!357307))))

(assert (=> b!622916 (= res!401551 (arrayContainsKey!0 lt!288935 (select (arr!18069 a!2986) j!136) j!136))))

(declare-fun Unit!20984 () Unit!20980)

(assert (=> b!622916 (= e!357306 Unit!20984)))

(declare-fun b!622917 () Bool)

(assert (=> b!622917 false))

(declare-fun lt!288929 () Unit!20980)

(assert (=> b!622917 (= lt!288929 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288935 (select (arr!18069 a!2986) j!136) j!136 Nil!12160))))

(assert (=> b!622917 (arrayNoDuplicates!0 lt!288935 j!136 Nil!12160)))

(declare-fun lt!288932 () Unit!20980)

(assert (=> b!622917 (= lt!288932 (lemmaNoDuplicateFromThenFromBigger!0 lt!288935 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622917 (arrayNoDuplicates!0 lt!288935 #b00000000000000000000000000000000 Nil!12160)))

(declare-fun lt!288923 () Unit!20980)

(assert (=> b!622917 (= lt!288923 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12160))))

(assert (=> b!622917 (arrayContainsKey!0 lt!288935 (select (arr!18069 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288917 () Unit!20980)

(assert (=> b!622917 (= lt!288917 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288935 (select (arr!18069 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!357300 () Unit!20980)

(declare-fun Unit!20985 () Unit!20980)

(assert (=> b!622917 (= e!357300 Unit!20985)))

(declare-fun b!622918 () Bool)

(assert (=> b!622918 (= e!357307 (arrayContainsKey!0 lt!288935 (select (arr!18069 a!2986) j!136) index!984))))

(declare-fun b!622919 () Bool)

(declare-fun res!401562 () Bool)

(assert (=> b!622919 (= res!401562 (bvsge j!136 index!984))))

(assert (=> b!622919 (=> res!401562 e!357303)))

(declare-fun e!357294 () Bool)

(assert (=> b!622919 (= e!357294 e!357303)))

(declare-fun b!622920 () Bool)

(declare-fun e!357299 () Bool)

(assert (=> b!622920 (= e!357299 (not true))))

(declare-fun lt!288927 () Unit!20980)

(assert (=> b!622920 (= lt!288927 e!357296)))

(declare-fun c!71050 () Bool)

(declare-datatypes ((SeekEntryResult!6516 0))(
  ( (MissingZero!6516 (index!28347 (_ BitVec 32))) (Found!6516 (index!28348 (_ BitVec 32))) (Intermediate!6516 (undefined!7328 Bool) (index!28349 (_ BitVec 32)) (x!57141 (_ BitVec 32))) (Undefined!6516) (MissingVacant!6516 (index!28350 (_ BitVec 32))) )
))
(declare-fun lt!288936 () SeekEntryResult!6516)

(assert (=> b!622920 (= c!71050 (= lt!288936 (Found!6516 index!984)))))

(declare-fun lt!288926 () Unit!20980)

(declare-fun e!357304 () Unit!20980)

(assert (=> b!622920 (= lt!288926 e!357304)))

(declare-fun c!71049 () Bool)

(assert (=> b!622920 (= c!71049 (= lt!288936 Undefined!6516))))

(declare-fun lt!288924 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37653 (_ BitVec 32)) SeekEntryResult!6516)

(assert (=> b!622920 (= lt!288936 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288924 lt!288935 mask!3053))))

(declare-fun e!357302 () Bool)

(assert (=> b!622920 e!357302))

(declare-fun res!401552 () Bool)

(assert (=> b!622920 (=> (not res!401552) (not e!357302))))

(declare-fun lt!288921 () (_ BitVec 32))

(declare-fun lt!288928 () SeekEntryResult!6516)

(assert (=> b!622920 (= res!401552 (= lt!288928 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288921 vacantSpotIndex!68 lt!288924 lt!288935 mask!3053)))))

(assert (=> b!622920 (= lt!288928 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288921 vacantSpotIndex!68 (select (arr!18069 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622920 (= lt!288924 (select (store (arr!18069 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288934 () Unit!20980)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37653 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20980)

(assert (=> b!622920 (= lt!288934 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288921 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622920 (= lt!288921 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622921 () Bool)

(declare-fun e!357301 () Bool)

(assert (=> b!622921 (= e!357301 e!357305)))

(declare-fun res!401564 () Bool)

(assert (=> b!622921 (=> (not res!401564) (not e!357305))))

(declare-fun lt!288925 () SeekEntryResult!6516)

(assert (=> b!622921 (= res!401564 (or (= lt!288925 (MissingZero!6516 i!1108)) (= lt!288925 (MissingVacant!6516 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37653 (_ BitVec 32)) SeekEntryResult!6516)

(assert (=> b!622921 (= lt!288925 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!622922 () Bool)

(assert (=> b!622922 (= e!357295 (arrayContainsKey!0 lt!288935 (select (arr!18069 a!2986) j!136) index!984))))

(declare-fun b!622923 () Bool)

(declare-fun Unit!20986 () Unit!20980)

(assert (=> b!622923 (= e!357300 Unit!20986)))

(declare-fun b!622913 () Bool)

(declare-fun Unit!20987 () Unit!20980)

(assert (=> b!622913 (= e!357304 Unit!20987)))

(assert (=> b!622913 false))

(declare-fun res!401559 () Bool)

(assert (=> start!56220 (=> (not res!401559) (not e!357301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56220 (= res!401559 (validMask!0 mask!3053))))

(assert (=> start!56220 e!357301))

(assert (=> start!56220 true))

(declare-fun array_inv!13843 (array!37653) Bool)

(assert (=> start!56220 (array_inv!13843 a!2986)))

(declare-fun b!622924 () Bool)

(declare-fun res!401557 () Bool)

(assert (=> b!622924 (=> (not res!401557) (not e!357305))))

(assert (=> b!622924 (= res!401557 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12160))))

(declare-fun b!622925 () Bool)

(declare-fun res!401556 () Bool)

(assert (=> b!622925 (=> (not res!401556) (not e!357301))))

(assert (=> b!622925 (= res!401556 (and (= (size!18433 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18433 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18433 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622926 () Bool)

(declare-fun Unit!20988 () Unit!20980)

(assert (=> b!622926 (= e!357296 Unit!20988)))

(declare-fun res!401558 () Bool)

(assert (=> b!622926 (= res!401558 (= (select (store (arr!18069 a!2986) i!1108 k!1786) index!984) (select (arr!18069 a!2986) j!136)))))

(assert (=> b!622926 (=> (not res!401558) (not e!357294))))

(assert (=> b!622926 e!357294))

(declare-fun c!71051 () Bool)

(assert (=> b!622926 (= c!71051 (bvslt j!136 index!984))))

(declare-fun lt!288933 () Unit!20980)

(assert (=> b!622926 (= lt!288933 e!357300)))

(declare-fun c!71048 () Bool)

(assert (=> b!622926 (= c!71048 (bvslt index!984 j!136))))

(declare-fun lt!288918 () Unit!20980)

(assert (=> b!622926 (= lt!288918 e!357306)))

(assert (=> b!622926 false))

(declare-fun b!622927 () Bool)

(declare-fun res!401555 () Bool)

(assert (=> b!622927 (=> (not res!401555) (not e!357305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37653 (_ BitVec 32)) Bool)

(assert (=> b!622927 (= res!401555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622928 () Bool)

(declare-fun Unit!20989 () Unit!20980)

(assert (=> b!622928 (= e!357304 Unit!20989)))

(declare-fun b!622929 () Bool)

(declare-fun lt!288931 () SeekEntryResult!6516)

(assert (=> b!622929 (= e!357302 (= lt!288931 lt!288928))))

(declare-fun b!622930 () Bool)

(declare-fun e!357297 () Bool)

(assert (=> b!622930 (= e!357297 e!357299)))

(declare-fun res!401550 () Bool)

(assert (=> b!622930 (=> (not res!401550) (not e!357299))))

(assert (=> b!622930 (= res!401550 (and (= lt!288931 (Found!6516 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18069 a!2986) index!984) (select (arr!18069 a!2986) j!136))) (not (= (select (arr!18069 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!622930 (= lt!288931 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18069 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622931 () Bool)

(assert (=> b!622931 (= e!357305 e!357297)))

(declare-fun res!401553 () Bool)

(assert (=> b!622931 (=> (not res!401553) (not e!357297))))

(assert (=> b!622931 (= res!401553 (= (select (store (arr!18069 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622931 (= lt!288935 (array!37654 (store (arr!18069 a!2986) i!1108 k!1786) (size!18433 a!2986)))))

(declare-fun b!622932 () Bool)

(declare-fun res!401554 () Bool)

(assert (=> b!622932 (=> (not res!401554) (not e!357301))))

(assert (=> b!622932 (= res!401554 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622933 () Bool)

(declare-fun res!401563 () Bool)

(assert (=> b!622933 (=> (not res!401563) (not e!357301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622933 (= res!401563 (validKeyInArray!0 k!1786))))

(declare-fun b!622934 () Bool)

(declare-fun res!401549 () Bool)

(assert (=> b!622934 (=> (not res!401549) (not e!357301))))

(assert (=> b!622934 (= res!401549 (validKeyInArray!0 (select (arr!18069 a!2986) j!136)))))

(assert (= (and start!56220 res!401559) b!622925))

(assert (= (and b!622925 res!401556) b!622934))

(assert (= (and b!622934 res!401549) b!622933))

(assert (= (and b!622933 res!401563) b!622932))

(assert (= (and b!622932 res!401554) b!622921))

(assert (= (and b!622921 res!401564) b!622927))

(assert (= (and b!622927 res!401555) b!622924))

(assert (= (and b!622924 res!401557) b!622911))

(assert (= (and b!622911 res!401560) b!622931))

(assert (= (and b!622931 res!401553) b!622930))

(assert (= (and b!622930 res!401550) b!622920))

(assert (= (and b!622920 res!401552) b!622929))

(assert (= (and b!622920 c!71049) b!622913))

(assert (= (and b!622920 (not c!71049)) b!622928))

(assert (= (and b!622920 c!71050) b!622926))

(assert (= (and b!622920 (not c!71050)) b!622914))

(assert (= (and b!622926 res!401558) b!622919))

(assert (= (and b!622919 (not res!401562)) b!622912))

(assert (= (and b!622912 res!401561) b!622922))

(assert (= (and b!622926 c!71051) b!622917))

(assert (= (and b!622926 (not c!71051)) b!622923))

(assert (= (and b!622926 c!71048) b!622916))

(assert (= (and b!622926 (not c!71048)) b!622915))

(assert (= (and b!622916 res!401551) b!622918))

(declare-fun m!598809 () Bool)

(assert (=> b!622916 m!598809))

(declare-fun m!598811 () Bool)

(assert (=> b!622916 m!598811))

(assert (=> b!622916 m!598811))

(declare-fun m!598813 () Bool)

(assert (=> b!622916 m!598813))

(declare-fun m!598815 () Bool)

(assert (=> b!622916 m!598815))

(assert (=> b!622916 m!598811))

(declare-fun m!598817 () Bool)

(assert (=> b!622916 m!598817))

(assert (=> b!622916 m!598811))

(declare-fun m!598819 () Bool)

(assert (=> b!622916 m!598819))

(declare-fun m!598821 () Bool)

(assert (=> b!622916 m!598821))

(assert (=> b!622916 m!598811))

(declare-fun m!598823 () Bool)

(assert (=> b!622916 m!598823))

(declare-fun m!598825 () Bool)

(assert (=> b!622916 m!598825))

(assert (=> b!622922 m!598811))

(assert (=> b!622922 m!598811))

(declare-fun m!598827 () Bool)

(assert (=> b!622922 m!598827))

(declare-fun m!598829 () Bool)

(assert (=> b!622932 m!598829))

(declare-fun m!598831 () Bool)

(assert (=> b!622930 m!598831))

(assert (=> b!622930 m!598811))

(assert (=> b!622930 m!598811))

(declare-fun m!598833 () Bool)

(assert (=> b!622930 m!598833))

(declare-fun m!598835 () Bool)

(assert (=> start!56220 m!598835))

(declare-fun m!598837 () Bool)

(assert (=> start!56220 m!598837))

(declare-fun m!598839 () Bool)

(assert (=> b!622931 m!598839))

(declare-fun m!598841 () Bool)

(assert (=> b!622931 m!598841))

(assert (=> b!622918 m!598811))

(assert (=> b!622918 m!598811))

(assert (=> b!622918 m!598827))

(declare-fun m!598843 () Bool)

(assert (=> b!622921 m!598843))

(declare-fun m!598845 () Bool)

(assert (=> b!622933 m!598845))

(assert (=> b!622912 m!598811))

(assert (=> b!622912 m!598811))

(assert (=> b!622912 m!598817))

(assert (=> b!622934 m!598811))

(assert (=> b!622934 m!598811))

(declare-fun m!598847 () Bool)

(assert (=> b!622934 m!598847))

(declare-fun m!598849 () Bool)

(assert (=> b!622924 m!598849))

(declare-fun m!598851 () Bool)

(assert (=> b!622911 m!598851))

(assert (=> b!622926 m!598839))

(declare-fun m!598853 () Bool)

(assert (=> b!622926 m!598853))

(assert (=> b!622926 m!598811))

(assert (=> b!622917 m!598811))

(declare-fun m!598855 () Bool)

(assert (=> b!622917 m!598855))

(assert (=> b!622917 m!598811))

(assert (=> b!622917 m!598811))

(declare-fun m!598857 () Bool)

(assert (=> b!622917 m!598857))

(declare-fun m!598859 () Bool)

(assert (=> b!622917 m!598859))

(assert (=> b!622917 m!598821))

(assert (=> b!622917 m!598825))

(assert (=> b!622917 m!598811))

(declare-fun m!598861 () Bool)

(assert (=> b!622917 m!598861))

(declare-fun m!598863 () Bool)

(assert (=> b!622917 m!598863))

(declare-fun m!598865 () Bool)

(assert (=> b!622927 m!598865))

(declare-fun m!598867 () Bool)

(assert (=> b!622920 m!598867))

(declare-fun m!598869 () Bool)

(assert (=> b!622920 m!598869))

(assert (=> b!622920 m!598811))

(assert (=> b!622920 m!598839))

(declare-fun m!598871 () Bool)

(assert (=> b!622920 m!598871))

(declare-fun m!598873 () Bool)

(assert (=> b!622920 m!598873))

(assert (=> b!622920 m!598811))

(declare-fun m!598875 () Bool)

(assert (=> b!622920 m!598875))

(declare-fun m!598877 () Bool)

(assert (=> b!622920 m!598877))

(push 1)

