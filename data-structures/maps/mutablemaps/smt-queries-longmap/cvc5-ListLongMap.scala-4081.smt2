; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55992 () Bool)

(assert start!55992)

(declare-fun b!614550 () Bool)

(declare-fun res!395939 () Bool)

(declare-fun e!352365 () Bool)

(assert (=> b!614550 (=> (not res!395939) (not e!352365))))

(declare-datatypes ((array!37425 0))(
  ( (array!37426 (arr!17955 (Array (_ BitVec 32) (_ BitVec 64))) (size!18319 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37425)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614550 (= res!395939 (validKeyInArray!0 (select (arr!17955 a!2986) j!136)))))

(declare-fun b!614551 () Bool)

(declare-fun e!352361 () Bool)

(declare-datatypes ((SeekEntryResult!6402 0))(
  ( (MissingZero!6402 (index!27891 (_ BitVec 32))) (Found!6402 (index!27892 (_ BitVec 32))) (Intermediate!6402 (undefined!7214 Bool) (index!27893 (_ BitVec 32)) (x!56723 (_ BitVec 32))) (Undefined!6402) (MissingVacant!6402 (index!27894 (_ BitVec 32))) )
))
(declare-fun lt!282089 () SeekEntryResult!6402)

(declare-fun lt!282092 () SeekEntryResult!6402)

(assert (=> b!614551 (= e!352361 (= lt!282089 lt!282092))))

(declare-fun res!395926 () Bool)

(assert (=> start!55992 (=> (not res!395926) (not e!352365))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55992 (= res!395926 (validMask!0 mask!3053))))

(assert (=> start!55992 e!352365))

(assert (=> start!55992 true))

(declare-fun array_inv!13729 (array!37425) Bool)

(assert (=> start!55992 (array_inv!13729 a!2986)))

(declare-fun b!614552 () Bool)

(declare-fun res!395936 () Bool)

(declare-fun e!352356 () Bool)

(assert (=> b!614552 (=> (not res!395936) (not e!352356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37425 (_ BitVec 32)) Bool)

(assert (=> b!614552 (= res!395936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!614553 () Bool)

(assert (=> b!614553 false))

(declare-fun lt!282093 () array!37425)

(declare-datatypes ((Unit!19840 0))(
  ( (Unit!19841) )
))
(declare-fun lt!282084 () Unit!19840)

(declare-datatypes ((List!12049 0))(
  ( (Nil!12046) (Cons!12045 (h!13090 (_ BitVec 64)) (t!18285 List!12049)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37425 (_ BitVec 64) (_ BitVec 32) List!12049) Unit!19840)

(assert (=> b!614553 (= lt!282084 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282093 (select (arr!17955 a!2986) j!136) j!136 Nil!12046))))

(declare-fun arrayNoDuplicates!0 (array!37425 (_ BitVec 32) List!12049) Bool)

(assert (=> b!614553 (arrayNoDuplicates!0 lt!282093 j!136 Nil!12046)))

(declare-fun lt!282082 () Unit!19840)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37425 (_ BitVec 32) (_ BitVec 32)) Unit!19840)

(assert (=> b!614553 (= lt!282082 (lemmaNoDuplicateFromThenFromBigger!0 lt!282093 #b00000000000000000000000000000000 j!136))))

(assert (=> b!614553 (arrayNoDuplicates!0 lt!282093 #b00000000000000000000000000000000 Nil!12046)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!282085 () Unit!19840)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37425 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12049) Unit!19840)

(assert (=> b!614553 (= lt!282085 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12046))))

(declare-fun arrayContainsKey!0 (array!37425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614553 (arrayContainsKey!0 lt!282093 (select (arr!17955 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282077 () Unit!19840)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37425 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19840)

(assert (=> b!614553 (= lt!282077 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282093 (select (arr!17955 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!352357 () Unit!19840)

(declare-fun Unit!19842 () Unit!19840)

(assert (=> b!614553 (= e!352357 Unit!19842)))

(declare-fun e!352364 () Bool)

(declare-fun b!614554 () Bool)

(assert (=> b!614554 (= e!352364 (arrayContainsKey!0 lt!282093 (select (arr!17955 a!2986) j!136) index!984))))

(declare-fun b!614555 () Bool)

(declare-fun res!395929 () Bool)

(assert (=> b!614555 (= res!395929 (bvsge j!136 index!984))))

(declare-fun e!352360 () Bool)

(assert (=> b!614555 (=> res!395929 e!352360)))

(declare-fun e!352363 () Bool)

(assert (=> b!614555 (= e!352363 e!352360)))

(declare-fun res!395928 () Bool)

(declare-fun b!614556 () Bool)

(assert (=> b!614556 (= res!395928 (arrayContainsKey!0 lt!282093 (select (arr!17955 a!2986) j!136) j!136))))

(assert (=> b!614556 (=> (not res!395928) (not e!352364))))

(assert (=> b!614556 (= e!352360 e!352364)))

(declare-fun b!614557 () Bool)

(declare-fun res!395934 () Bool)

(assert (=> b!614557 (=> (not res!395934) (not e!352356))))

(assert (=> b!614557 (= res!395934 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12046))))

(declare-fun b!614558 () Bool)

(declare-fun e!352366 () Unit!19840)

(declare-fun Unit!19843 () Unit!19840)

(assert (=> b!614558 (= e!352366 Unit!19843)))

(declare-fun b!614559 () Bool)

(declare-fun Unit!19844 () Unit!19840)

(assert (=> b!614559 (= e!352357 Unit!19844)))

(declare-fun b!614560 () Bool)

(assert (=> b!614560 (= e!352365 e!352356)))

(declare-fun res!395930 () Bool)

(assert (=> b!614560 (=> (not res!395930) (not e!352356))))

(declare-fun lt!282094 () SeekEntryResult!6402)

(assert (=> b!614560 (= res!395930 (or (= lt!282094 (MissingZero!6402 i!1108)) (= lt!282094 (MissingVacant!6402 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37425 (_ BitVec 32)) SeekEntryResult!6402)

(assert (=> b!614560 (= lt!282094 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!614561 () Bool)

(declare-fun res!395938 () Bool)

(assert (=> b!614561 (=> (not res!395938) (not e!352365))))

(assert (=> b!614561 (= res!395938 (and (= (size!18319 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18319 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18319 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!614562 () Bool)

(declare-fun e!352353 () Unit!19840)

(declare-fun Unit!19845 () Unit!19840)

(assert (=> b!614562 (= e!352353 Unit!19845)))

(declare-fun b!614563 () Bool)

(declare-fun res!395933 () Bool)

(assert (=> b!614563 (=> (not res!395933) (not e!352365))))

(assert (=> b!614563 (= res!395933 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun e!352358 () Bool)

(declare-fun b!614564 () Bool)

(assert (=> b!614564 (= e!352358 (arrayContainsKey!0 lt!282093 (select (arr!17955 a!2986) j!136) index!984))))

(declare-fun b!614565 () Bool)

(declare-fun e!352354 () Bool)

(assert (=> b!614565 (= e!352354 (not true))))

(declare-fun lt!282091 () Unit!19840)

(declare-fun e!352355 () Unit!19840)

(assert (=> b!614565 (= lt!282091 e!352355)))

(declare-fun c!69682 () Bool)

(declare-fun lt!282090 () SeekEntryResult!6402)

(assert (=> b!614565 (= c!69682 (= lt!282090 (Found!6402 index!984)))))

(declare-fun lt!282087 () Unit!19840)

(assert (=> b!614565 (= lt!282087 e!352353)))

(declare-fun c!69683 () Bool)

(assert (=> b!614565 (= c!69683 (= lt!282090 Undefined!6402))))

(declare-fun lt!282083 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37425 (_ BitVec 32)) SeekEntryResult!6402)

(assert (=> b!614565 (= lt!282090 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282083 lt!282093 mask!3053))))

(assert (=> b!614565 e!352361))

(declare-fun res!395925 () Bool)

(assert (=> b!614565 (=> (not res!395925) (not e!352361))))

(declare-fun lt!282095 () (_ BitVec 32))

(assert (=> b!614565 (= res!395925 (= lt!282092 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282095 vacantSpotIndex!68 lt!282083 lt!282093 mask!3053)))))

(assert (=> b!614565 (= lt!282092 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282095 vacantSpotIndex!68 (select (arr!17955 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!614565 (= lt!282083 (select (store (arr!17955 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282078 () Unit!19840)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37425 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19840)

(assert (=> b!614565 (= lt!282078 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282095 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!614565 (= lt!282095 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!614566 () Bool)

(declare-fun res!395932 () Bool)

(assert (=> b!614566 (=> (not res!395932) (not e!352356))))

(assert (=> b!614566 (= res!395932 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17955 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614567 () Bool)

(assert (=> b!614567 false))

(declare-fun lt!282081 () Unit!19840)

(assert (=> b!614567 (= lt!282081 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282093 (select (arr!17955 a!2986) j!136) index!984 Nil!12046))))

(assert (=> b!614567 (arrayNoDuplicates!0 lt!282093 index!984 Nil!12046)))

(declare-fun lt!282096 () Unit!19840)

(assert (=> b!614567 (= lt!282096 (lemmaNoDuplicateFromThenFromBigger!0 lt!282093 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614567 (arrayNoDuplicates!0 lt!282093 #b00000000000000000000000000000000 Nil!12046)))

(declare-fun lt!282080 () Unit!19840)

(assert (=> b!614567 (= lt!282080 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12046))))

(assert (=> b!614567 (arrayContainsKey!0 lt!282093 (select (arr!17955 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282088 () Unit!19840)

(assert (=> b!614567 (= lt!282088 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282093 (select (arr!17955 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!614567 e!352358))

(declare-fun res!395935 () Bool)

(assert (=> b!614567 (=> (not res!395935) (not e!352358))))

(assert (=> b!614567 (= res!395935 (arrayContainsKey!0 lt!282093 (select (arr!17955 a!2986) j!136) j!136))))

(declare-fun Unit!19846 () Unit!19840)

(assert (=> b!614567 (= e!352366 Unit!19846)))

(declare-fun b!614568 () Bool)

(declare-fun Unit!19847 () Unit!19840)

(assert (=> b!614568 (= e!352353 Unit!19847)))

(assert (=> b!614568 false))

(declare-fun b!614569 () Bool)

(declare-fun Unit!19848 () Unit!19840)

(assert (=> b!614569 (= e!352355 Unit!19848)))

(declare-fun res!395924 () Bool)

(assert (=> b!614569 (= res!395924 (= (select (store (arr!17955 a!2986) i!1108 k!1786) index!984) (select (arr!17955 a!2986) j!136)))))

(assert (=> b!614569 (=> (not res!395924) (not e!352363))))

(assert (=> b!614569 e!352363))

(declare-fun c!69681 () Bool)

(assert (=> b!614569 (= c!69681 (bvslt j!136 index!984))))

(declare-fun lt!282086 () Unit!19840)

(assert (=> b!614569 (= lt!282086 e!352357)))

(declare-fun c!69680 () Bool)

(assert (=> b!614569 (= c!69680 (bvslt index!984 j!136))))

(declare-fun lt!282079 () Unit!19840)

(assert (=> b!614569 (= lt!282079 e!352366)))

(assert (=> b!614569 false))

(declare-fun b!614570 () Bool)

(declare-fun res!395937 () Bool)

(assert (=> b!614570 (=> (not res!395937) (not e!352365))))

(assert (=> b!614570 (= res!395937 (validKeyInArray!0 k!1786))))

(declare-fun b!614571 () Bool)

(declare-fun e!352359 () Bool)

(assert (=> b!614571 (= e!352356 e!352359)))

(declare-fun res!395927 () Bool)

(assert (=> b!614571 (=> (not res!395927) (not e!352359))))

(assert (=> b!614571 (= res!395927 (= (select (store (arr!17955 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!614571 (= lt!282093 (array!37426 (store (arr!17955 a!2986) i!1108 k!1786) (size!18319 a!2986)))))

(declare-fun b!614572 () Bool)

(declare-fun Unit!19849 () Unit!19840)

(assert (=> b!614572 (= e!352355 Unit!19849)))

(declare-fun b!614573 () Bool)

(assert (=> b!614573 (= e!352359 e!352354)))

(declare-fun res!395931 () Bool)

(assert (=> b!614573 (=> (not res!395931) (not e!352354))))

(assert (=> b!614573 (= res!395931 (and (= lt!282089 (Found!6402 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17955 a!2986) index!984) (select (arr!17955 a!2986) j!136))) (not (= (select (arr!17955 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!614573 (= lt!282089 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17955 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!55992 res!395926) b!614561))

(assert (= (and b!614561 res!395938) b!614550))

(assert (= (and b!614550 res!395939) b!614570))

(assert (= (and b!614570 res!395937) b!614563))

(assert (= (and b!614563 res!395933) b!614560))

(assert (= (and b!614560 res!395930) b!614552))

(assert (= (and b!614552 res!395936) b!614557))

(assert (= (and b!614557 res!395934) b!614566))

(assert (= (and b!614566 res!395932) b!614571))

(assert (= (and b!614571 res!395927) b!614573))

(assert (= (and b!614573 res!395931) b!614565))

(assert (= (and b!614565 res!395925) b!614551))

(assert (= (and b!614565 c!69683) b!614568))

(assert (= (and b!614565 (not c!69683)) b!614562))

(assert (= (and b!614565 c!69682) b!614569))

(assert (= (and b!614565 (not c!69682)) b!614572))

(assert (= (and b!614569 res!395924) b!614555))

(assert (= (and b!614555 (not res!395929)) b!614556))

(assert (= (and b!614556 res!395928) b!614554))

(assert (= (and b!614569 c!69681) b!614553))

(assert (= (and b!614569 (not c!69681)) b!614559))

(assert (= (and b!614569 c!69680) b!614567))

(assert (= (and b!614569 (not c!69680)) b!614558))

(assert (= (and b!614567 res!395935) b!614564))

(declare-fun m!590823 () Bool)

(assert (=> b!614550 m!590823))

(assert (=> b!614550 m!590823))

(declare-fun m!590825 () Bool)

(assert (=> b!614550 m!590825))

(assert (=> b!614554 m!590823))

(assert (=> b!614554 m!590823))

(declare-fun m!590827 () Bool)

(assert (=> b!614554 m!590827))

(declare-fun m!590829 () Bool)

(assert (=> b!614567 m!590829))

(assert (=> b!614567 m!590823))

(declare-fun m!590831 () Bool)

(assert (=> b!614567 m!590831))

(assert (=> b!614567 m!590823))

(assert (=> b!614567 m!590823))

(declare-fun m!590833 () Bool)

(assert (=> b!614567 m!590833))

(assert (=> b!614567 m!590823))

(declare-fun m!590835 () Bool)

(assert (=> b!614567 m!590835))

(declare-fun m!590837 () Bool)

(assert (=> b!614567 m!590837))

(declare-fun m!590839 () Bool)

(assert (=> b!614567 m!590839))

(assert (=> b!614567 m!590823))

(declare-fun m!590841 () Bool)

(assert (=> b!614567 m!590841))

(declare-fun m!590843 () Bool)

(assert (=> b!614567 m!590843))

(declare-fun m!590845 () Bool)

(assert (=> b!614571 m!590845))

(declare-fun m!590847 () Bool)

(assert (=> b!614571 m!590847))

(declare-fun m!590849 () Bool)

(assert (=> b!614552 m!590849))

(assert (=> b!614556 m!590823))

(assert (=> b!614556 m!590823))

(assert (=> b!614556 m!590841))

(declare-fun m!590851 () Bool)

(assert (=> start!55992 m!590851))

(declare-fun m!590853 () Bool)

(assert (=> start!55992 m!590853))

(declare-fun m!590855 () Bool)

(assert (=> b!614553 m!590855))

(assert (=> b!614553 m!590823))

(assert (=> b!614553 m!590823))

(declare-fun m!590857 () Bool)

(assert (=> b!614553 m!590857))

(assert (=> b!614553 m!590823))

(declare-fun m!590859 () Bool)

(assert (=> b!614553 m!590859))

(assert (=> b!614553 m!590823))

(declare-fun m!590861 () Bool)

(assert (=> b!614553 m!590861))

(assert (=> b!614553 m!590843))

(declare-fun m!590863 () Bool)

(assert (=> b!614553 m!590863))

(assert (=> b!614553 m!590829))

(declare-fun m!590865 () Bool)

(assert (=> b!614566 m!590865))

(declare-fun m!590867 () Bool)

(assert (=> b!614557 m!590867))

(declare-fun m!590869 () Bool)

(assert (=> b!614565 m!590869))

(declare-fun m!590871 () Bool)

(assert (=> b!614565 m!590871))

(assert (=> b!614565 m!590823))

(declare-fun m!590873 () Bool)

(assert (=> b!614565 m!590873))

(assert (=> b!614565 m!590845))

(declare-fun m!590875 () Bool)

(assert (=> b!614565 m!590875))

(assert (=> b!614565 m!590823))

(declare-fun m!590877 () Bool)

(assert (=> b!614565 m!590877))

(declare-fun m!590879 () Bool)

(assert (=> b!614565 m!590879))

(declare-fun m!590881 () Bool)

(assert (=> b!614570 m!590881))

(declare-fun m!590883 () Bool)

(assert (=> b!614573 m!590883))

(assert (=> b!614573 m!590823))

(assert (=> b!614573 m!590823))

(declare-fun m!590885 () Bool)

(assert (=> b!614573 m!590885))

(declare-fun m!590887 () Bool)

(assert (=> b!614560 m!590887))

(declare-fun m!590889 () Bool)

(assert (=> b!614563 m!590889))

(assert (=> b!614569 m!590845))

(declare-fun m!590891 () Bool)

(assert (=> b!614569 m!590891))

(assert (=> b!614569 m!590823))

(assert (=> b!614564 m!590823))

(assert (=> b!614564 m!590823))

(assert (=> b!614564 m!590827))

(push 1)

