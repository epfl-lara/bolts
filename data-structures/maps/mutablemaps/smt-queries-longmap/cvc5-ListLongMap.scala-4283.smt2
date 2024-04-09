; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59622 () Bool)

(assert start!59622)

(declare-fun b!658872 () Bool)

(declare-datatypes ((Unit!22924 0))(
  ( (Unit!22925) )
))
(declare-fun e!378519 () Unit!22924)

(declare-fun Unit!22926 () Unit!22924)

(assert (=> b!658872 (= e!378519 Unit!22926)))

(declare-fun b!658873 () Bool)

(declare-fun e!378520 () Bool)

(declare-fun e!378525 () Bool)

(assert (=> b!658873 (= e!378520 e!378525)))

(declare-fun res!427393 () Bool)

(assert (=> b!658873 (=> (not res!427393) (not e!378525))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7008 0))(
  ( (MissingZero!7008 (index!30396 (_ BitVec 32))) (Found!7008 (index!30397 (_ BitVec 32))) (Intermediate!7008 (undefined!7820 Bool) (index!30398 (_ BitVec 32)) (x!59212 (_ BitVec 32))) (Undefined!7008) (MissingVacant!7008 (index!30399 (_ BitVec 32))) )
))
(declare-fun lt!308352 () SeekEntryResult!7008)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38736 0))(
  ( (array!38737 (arr!18561 (Array (_ BitVec 32) (_ BitVec 64))) (size!18925 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38736)

(assert (=> b!658873 (= res!427393 (and (= lt!308352 (Found!7008 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18561 a!2986) index!984) (select (arr!18561 a!2986) j!136))) (not (= (select (arr!18561 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38736 (_ BitVec 32)) SeekEntryResult!7008)

(assert (=> b!658873 (= lt!308352 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18561 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658874 () Bool)

(declare-fun e!378521 () Unit!22924)

(declare-fun Unit!22927 () Unit!22924)

(assert (=> b!658874 (= e!378521 Unit!22927)))

(assert (=> b!658874 false))

(declare-fun b!658875 () Bool)

(assert (=> b!658875 false))

(declare-fun lt!308367 () array!38736)

(declare-fun lt!308364 () Unit!22924)

(declare-datatypes ((List!12655 0))(
  ( (Nil!12652) (Cons!12651 (h!13696 (_ BitVec 64)) (t!18891 List!12655)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38736 (_ BitVec 64) (_ BitVec 32) List!12655) Unit!22924)

(assert (=> b!658875 (= lt!308364 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308367 (select (arr!18561 a!2986) j!136) j!136 Nil!12652))))

(declare-fun arrayNoDuplicates!0 (array!38736 (_ BitVec 32) List!12655) Bool)

(assert (=> b!658875 (arrayNoDuplicates!0 lt!308367 j!136 Nil!12652)))

(declare-fun lt!308365 () Unit!22924)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38736 (_ BitVec 32) (_ BitVec 32)) Unit!22924)

(assert (=> b!658875 (= lt!308365 (lemmaNoDuplicateFromThenFromBigger!0 lt!308367 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658875 (arrayNoDuplicates!0 lt!308367 #b00000000000000000000000000000000 Nil!12652)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!308349 () Unit!22924)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38736 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12655) Unit!22924)

(assert (=> b!658875 (= lt!308349 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12652))))

(declare-fun arrayContainsKey!0 (array!38736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658875 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308356 () Unit!22924)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38736 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22924)

(assert (=> b!658875 (= lt!308356 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308367 (select (arr!18561 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!378528 () Unit!22924)

(declare-fun Unit!22928 () Unit!22924)

(assert (=> b!658875 (= e!378528 Unit!22928)))

(declare-fun b!658877 () Bool)

(declare-fun Unit!22929 () Unit!22924)

(assert (=> b!658877 (= e!378521 Unit!22929)))

(declare-fun b!658878 () Bool)

(declare-fun e!378523 () Bool)

(assert (=> b!658878 (= e!378523 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) index!984))))

(declare-fun b!658879 () Bool)

(declare-fun e!378524 () Bool)

(declare-fun e!378518 () Bool)

(assert (=> b!658879 (= e!378524 e!378518)))

(declare-fun res!427395 () Bool)

(assert (=> b!658879 (=> (not res!427395) (not e!378518))))

(declare-fun lt!308363 () SeekEntryResult!7008)

(assert (=> b!658879 (= res!427395 (or (= lt!308363 (MissingZero!7008 i!1108)) (= lt!308363 (MissingVacant!7008 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38736 (_ BitVec 32)) SeekEntryResult!7008)

(assert (=> b!658879 (= lt!308363 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658880 () Bool)

(declare-fun res!427396 () Bool)

(assert (=> b!658880 (=> (not res!427396) (not e!378524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658880 (= res!427396 (validKeyInArray!0 k!1786))))

(declare-fun b!658881 () Bool)

(declare-fun res!427391 () Bool)

(assert (=> b!658881 (=> (not res!427391) (not e!378524))))

(assert (=> b!658881 (= res!427391 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658882 () Bool)

(declare-fun e!378522 () Bool)

(declare-fun lt!308353 () SeekEntryResult!7008)

(assert (=> b!658882 (= e!378522 (= lt!308352 lt!308353))))

(declare-fun b!658883 () Bool)

(declare-fun Unit!22930 () Unit!22924)

(assert (=> b!658883 (= e!378528 Unit!22930)))

(declare-fun b!658884 () Bool)

(declare-fun res!427392 () Bool)

(assert (=> b!658884 (=> (not res!427392) (not e!378518))))

(assert (=> b!658884 (= res!427392 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12652))))

(declare-fun b!658885 () Bool)

(declare-fun res!427385 () Bool)

(assert (=> b!658885 (=> (not res!427385) (not e!378518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38736 (_ BitVec 32)) Bool)

(assert (=> b!658885 (= res!427385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!427397 () Bool)

(declare-fun b!658886 () Bool)

(assert (=> b!658886 (= res!427397 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) j!136))))

(assert (=> b!658886 (=> (not res!427397) (not e!378523))))

(declare-fun e!378529 () Bool)

(assert (=> b!658886 (= e!378529 e!378523)))

(declare-fun b!658887 () Bool)

(declare-fun e!378527 () Unit!22924)

(declare-fun Unit!22931 () Unit!22924)

(assert (=> b!658887 (= e!378527 Unit!22931)))

(declare-fun res!427387 () Bool)

(assert (=> b!658887 (= res!427387 (= (select (store (arr!18561 a!2986) i!1108 k!1786) index!984) (select (arr!18561 a!2986) j!136)))))

(declare-fun e!378516 () Bool)

(assert (=> b!658887 (=> (not res!427387) (not e!378516))))

(assert (=> b!658887 e!378516))

(declare-fun c!76112 () Bool)

(assert (=> b!658887 (= c!76112 (bvslt j!136 index!984))))

(declare-fun lt!308361 () Unit!22924)

(assert (=> b!658887 (= lt!308361 e!378528)))

(declare-fun c!76114 () Bool)

(assert (=> b!658887 (= c!76114 (bvslt index!984 j!136))))

(declare-fun lt!308358 () Unit!22924)

(assert (=> b!658887 (= lt!308358 e!378519)))

(assert (=> b!658887 false))

(declare-fun b!658888 () Bool)

(declare-fun res!427386 () Bool)

(assert (=> b!658888 (= res!427386 (bvsge j!136 index!984))))

(assert (=> b!658888 (=> res!427386 e!378529)))

(assert (=> b!658888 (= e!378516 e!378529)))

(declare-fun b!658889 () Bool)

(declare-fun res!427383 () Bool)

(assert (=> b!658889 (=> (not res!427383) (not e!378524))))

(assert (=> b!658889 (= res!427383 (validKeyInArray!0 (select (arr!18561 a!2986) j!136)))))

(declare-fun b!658890 () Bool)

(assert (=> b!658890 false))

(declare-fun lt!308360 () Unit!22924)

(assert (=> b!658890 (= lt!308360 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308367 (select (arr!18561 a!2986) j!136) index!984 Nil!12652))))

(assert (=> b!658890 (arrayNoDuplicates!0 lt!308367 index!984 Nil!12652)))

(declare-fun lt!308350 () Unit!22924)

(assert (=> b!658890 (= lt!308350 (lemmaNoDuplicateFromThenFromBigger!0 lt!308367 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658890 (arrayNoDuplicates!0 lt!308367 #b00000000000000000000000000000000 Nil!12652)))

(declare-fun lt!308351 () Unit!22924)

(assert (=> b!658890 (= lt!308351 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12652))))

(assert (=> b!658890 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308355 () Unit!22924)

(assert (=> b!658890 (= lt!308355 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308367 (select (arr!18561 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378526 () Bool)

(assert (=> b!658890 e!378526))

(declare-fun res!427388 () Bool)

(assert (=> b!658890 (=> (not res!427388) (not e!378526))))

(assert (=> b!658890 (= res!427388 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) j!136))))

(declare-fun Unit!22932 () Unit!22924)

(assert (=> b!658890 (= e!378519 Unit!22932)))

(declare-fun b!658891 () Bool)

(declare-fun Unit!22933 () Unit!22924)

(assert (=> b!658891 (= e!378527 Unit!22933)))

(declare-fun b!658892 () Bool)

(declare-fun res!427390 () Bool)

(assert (=> b!658892 (=> (not res!427390) (not e!378518))))

(assert (=> b!658892 (= res!427390 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18561 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658893 () Bool)

(declare-fun res!427384 () Bool)

(assert (=> b!658893 (=> (not res!427384) (not e!378524))))

(assert (=> b!658893 (= res!427384 (and (= (size!18925 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18925 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18925 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658876 () Bool)

(assert (=> b!658876 (= e!378518 e!378520)))

(declare-fun res!427382 () Bool)

(assert (=> b!658876 (=> (not res!427382) (not e!378520))))

(assert (=> b!658876 (= res!427382 (= (select (store (arr!18561 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658876 (= lt!308367 (array!38737 (store (arr!18561 a!2986) i!1108 k!1786) (size!18925 a!2986)))))

(declare-fun res!427389 () Bool)

(assert (=> start!59622 (=> (not res!427389) (not e!378524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59622 (= res!427389 (validMask!0 mask!3053))))

(assert (=> start!59622 e!378524))

(assert (=> start!59622 true))

(declare-fun array_inv!14335 (array!38736) Bool)

(assert (=> start!59622 (array_inv!14335 a!2986)))

(declare-fun lt!308354 () SeekEntryResult!7008)

(declare-fun b!658894 () Bool)

(assert (=> b!658894 (= e!378525 (not (or (= lt!308354 (MissingVacant!7008 vacantSpotIndex!68)) (= lt!308352 lt!308354))))))

(declare-fun lt!308348 () Unit!22924)

(assert (=> b!658894 (= lt!308348 e!378527)))

(declare-fun c!76115 () Bool)

(assert (=> b!658894 (= c!76115 (= lt!308354 (Found!7008 index!984)))))

(declare-fun lt!308359 () Unit!22924)

(assert (=> b!658894 (= lt!308359 e!378521)))

(declare-fun c!76113 () Bool)

(assert (=> b!658894 (= c!76113 (= lt!308354 Undefined!7008))))

(declare-fun lt!308366 () (_ BitVec 64))

(assert (=> b!658894 (= lt!308354 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308366 lt!308367 mask!3053))))

(assert (=> b!658894 e!378522))

(declare-fun res!427394 () Bool)

(assert (=> b!658894 (=> (not res!427394) (not e!378522))))

(declare-fun lt!308362 () (_ BitVec 32))

(assert (=> b!658894 (= res!427394 (= lt!308353 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308362 vacantSpotIndex!68 lt!308366 lt!308367 mask!3053)))))

(assert (=> b!658894 (= lt!308353 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308362 vacantSpotIndex!68 (select (arr!18561 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658894 (= lt!308366 (select (store (arr!18561 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!308357 () Unit!22924)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38736 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22924)

(assert (=> b!658894 (= lt!308357 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308362 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658894 (= lt!308362 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658895 () Bool)

(assert (=> b!658895 (= e!378526 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) index!984))))

(assert (= (and start!59622 res!427389) b!658893))

(assert (= (and b!658893 res!427384) b!658889))

(assert (= (and b!658889 res!427383) b!658880))

(assert (= (and b!658880 res!427396) b!658881))

(assert (= (and b!658881 res!427391) b!658879))

(assert (= (and b!658879 res!427395) b!658885))

(assert (= (and b!658885 res!427385) b!658884))

(assert (= (and b!658884 res!427392) b!658892))

(assert (= (and b!658892 res!427390) b!658876))

(assert (= (and b!658876 res!427382) b!658873))

(assert (= (and b!658873 res!427393) b!658894))

(assert (= (and b!658894 res!427394) b!658882))

(assert (= (and b!658894 c!76113) b!658874))

(assert (= (and b!658894 (not c!76113)) b!658877))

(assert (= (and b!658894 c!76115) b!658887))

(assert (= (and b!658894 (not c!76115)) b!658891))

(assert (= (and b!658887 res!427387) b!658888))

(assert (= (and b!658888 (not res!427386)) b!658886))

(assert (= (and b!658886 res!427397) b!658878))

(assert (= (and b!658887 c!76112) b!658875))

(assert (= (and b!658887 (not c!76112)) b!658883))

(assert (= (and b!658887 c!76114) b!658890))

(assert (= (and b!658887 (not c!76114)) b!658872))

(assert (= (and b!658890 res!427388) b!658895))

(declare-fun m!631911 () Bool)

(assert (=> b!658894 m!631911))

(declare-fun m!631913 () Bool)

(assert (=> b!658894 m!631913))

(declare-fun m!631915 () Bool)

(assert (=> b!658894 m!631915))

(declare-fun m!631917 () Bool)

(assert (=> b!658894 m!631917))

(declare-fun m!631919 () Bool)

(assert (=> b!658894 m!631919))

(declare-fun m!631921 () Bool)

(assert (=> b!658894 m!631921))

(assert (=> b!658894 m!631913))

(declare-fun m!631923 () Bool)

(assert (=> b!658894 m!631923))

(declare-fun m!631925 () Bool)

(assert (=> b!658894 m!631925))

(assert (=> b!658886 m!631913))

(assert (=> b!658886 m!631913))

(declare-fun m!631927 () Bool)

(assert (=> b!658886 m!631927))

(declare-fun m!631929 () Bool)

(assert (=> b!658885 m!631929))

(assert (=> b!658890 m!631913))

(assert (=> b!658890 m!631927))

(declare-fun m!631931 () Bool)

(assert (=> b!658890 m!631931))

(assert (=> b!658890 m!631913))

(declare-fun m!631933 () Bool)

(assert (=> b!658890 m!631933))

(declare-fun m!631935 () Bool)

(assert (=> b!658890 m!631935))

(declare-fun m!631937 () Bool)

(assert (=> b!658890 m!631937))

(assert (=> b!658890 m!631913))

(declare-fun m!631939 () Bool)

(assert (=> b!658890 m!631939))

(declare-fun m!631941 () Bool)

(assert (=> b!658890 m!631941))

(assert (=> b!658890 m!631913))

(assert (=> b!658890 m!631913))

(declare-fun m!631943 () Bool)

(assert (=> b!658890 m!631943))

(declare-fun m!631945 () Bool)

(assert (=> b!658892 m!631945))

(declare-fun m!631947 () Bool)

(assert (=> b!658880 m!631947))

(assert (=> b!658895 m!631913))

(assert (=> b!658895 m!631913))

(declare-fun m!631949 () Bool)

(assert (=> b!658895 m!631949))

(assert (=> b!658878 m!631913))

(assert (=> b!658878 m!631913))

(assert (=> b!658878 m!631949))

(declare-fun m!631951 () Bool)

(assert (=> b!658875 m!631951))

(assert (=> b!658875 m!631913))

(declare-fun m!631953 () Bool)

(assert (=> b!658875 m!631953))

(assert (=> b!658875 m!631941))

(assert (=> b!658875 m!631913))

(declare-fun m!631955 () Bool)

(assert (=> b!658875 m!631955))

(assert (=> b!658875 m!631913))

(declare-fun m!631957 () Bool)

(assert (=> b!658875 m!631957))

(assert (=> b!658875 m!631913))

(declare-fun m!631959 () Bool)

(assert (=> b!658875 m!631959))

(assert (=> b!658875 m!631937))

(assert (=> b!658876 m!631915))

(declare-fun m!631961 () Bool)

(assert (=> b!658876 m!631961))

(declare-fun m!631963 () Bool)

(assert (=> b!658879 m!631963))

(declare-fun m!631965 () Bool)

(assert (=> b!658881 m!631965))

(declare-fun m!631967 () Bool)

(assert (=> start!59622 m!631967))

(declare-fun m!631969 () Bool)

(assert (=> start!59622 m!631969))

(declare-fun m!631971 () Bool)

(assert (=> b!658873 m!631971))

(assert (=> b!658873 m!631913))

(assert (=> b!658873 m!631913))

(declare-fun m!631973 () Bool)

(assert (=> b!658873 m!631973))

(assert (=> b!658887 m!631915))

(declare-fun m!631975 () Bool)

(assert (=> b!658887 m!631975))

(assert (=> b!658887 m!631913))

(assert (=> b!658889 m!631913))

(assert (=> b!658889 m!631913))

(declare-fun m!631977 () Bool)

(assert (=> b!658889 m!631977))

(declare-fun m!631979 () Bool)

(assert (=> b!658884 m!631979))

(push 1)

(assert (not b!658878))

(assert (not b!658881))

(assert (not b!658885))

(assert (not b!658890))

(assert (not b!658884))

(assert (not b!658889))

(assert (not start!59622))

(assert (not b!658875))

(assert (not b!658873))

(assert (not b!658880))

(assert (not b!658886))

(assert (not b!658879))

(assert (not b!658894))

(assert (not b!658895))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!92859 () Bool)

(declare-fun res!427519 () Bool)

(declare-fun e!378669 () Bool)

(assert (=> d!92859 (=> res!427519 e!378669)))

(assert (=> d!92859 (= res!427519 (= (select (arr!18561 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!92859 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!378669)))

(declare-fun b!659125 () Bool)

(declare-fun e!378670 () Bool)

(assert (=> b!659125 (= e!378669 e!378670)))

(declare-fun res!427520 () Bool)

(assert (=> b!659125 (=> (not res!427520) (not e!378670))))

(assert (=> b!659125 (= res!427520 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18925 a!2986)))))

(declare-fun b!659126 () Bool)

(assert (=> b!659126 (= e!378670 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92859 (not res!427519)) b!659125))

(assert (= (and b!659125 res!427520) b!659126))

(declare-fun m!632201 () Bool)

(assert (=> d!92859 m!632201))

(declare-fun m!632203 () Bool)

(assert (=> b!659126 m!632203))

(assert (=> b!658881 d!92859))

(declare-fun d!92867 () Bool)

(declare-fun res!427525 () Bool)

(declare-fun e!378675 () Bool)

(assert (=> d!92867 (=> res!427525 e!378675)))

(assert (=> d!92867 (= res!427525 (= (select (arr!18561 lt!308367) j!136) (select (arr!18561 a!2986) j!136)))))

(assert (=> d!92867 (= (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) j!136) e!378675)))

(declare-fun b!659131 () Bool)

(declare-fun e!378676 () Bool)

(assert (=> b!659131 (= e!378675 e!378676)))

(declare-fun res!427526 () Bool)

(assert (=> b!659131 (=> (not res!427526) (not e!378676))))

(assert (=> b!659131 (= res!427526 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18925 lt!308367)))))

(declare-fun b!659132 () Bool)

(assert (=> b!659132 (= e!378676 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92867 (not res!427525)) b!659131))

(assert (= (and b!659131 res!427526) b!659132))

(declare-fun m!632205 () Bool)

(assert (=> d!92867 m!632205))

(assert (=> b!659132 m!631913))

(declare-fun m!632207 () Bool)

(assert (=> b!659132 m!632207))

(assert (=> b!658890 d!92867))

(declare-fun d!92869 () Bool)

(declare-fun res!427535 () Bool)

(declare-fun e!378687 () Bool)

(assert (=> d!92869 (=> res!427535 e!378687)))

(assert (=> d!92869 (= res!427535 (= (select (arr!18561 lt!308367) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18561 a!2986) j!136)))))

(assert (=> d!92869 (= (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!378687)))

(declare-fun b!659145 () Bool)

(declare-fun e!378688 () Bool)

(assert (=> b!659145 (= e!378687 e!378688)))

(declare-fun res!427536 () Bool)

(assert (=> b!659145 (=> (not res!427536) (not e!378688))))

(assert (=> b!659145 (= res!427536 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18925 lt!308367)))))

(declare-fun b!659146 () Bool)

(assert (=> b!659146 (= e!378688 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92869 (not res!427535)) b!659145))

(assert (= (and b!659145 res!427536) b!659146))

(declare-fun m!632213 () Bool)

(assert (=> d!92869 m!632213))

(assert (=> b!659146 m!631913))

(declare-fun m!632215 () Bool)

(assert (=> b!659146 m!632215))

(assert (=> b!658890 d!92869))

(declare-fun d!92873 () Bool)

(assert (=> d!92873 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (size!18925 lt!308367)) (not (= (select (arr!18561 lt!308367) index!984) (select (arr!18561 a!2986) j!136))))))

(declare-fun lt!308541 () Unit!22924)

(declare-fun choose!21 (array!38736 (_ BitVec 64) (_ BitVec 32) List!12655) Unit!22924)

(assert (=> d!92873 (= lt!308541 (choose!21 lt!308367 (select (arr!18561 a!2986) j!136) index!984 Nil!12652))))

(assert (=> d!92873 (bvslt (size!18925 lt!308367) #b01111111111111111111111111111111)))

(assert (=> d!92873 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308367 (select (arr!18561 a!2986) j!136) index!984 Nil!12652) lt!308541)))

(declare-fun bs!19601 () Bool)

(assert (= bs!19601 d!92873))

(declare-fun m!632229 () Bool)

(assert (=> bs!19601 m!632229))

(assert (=> bs!19601 m!631913))

(declare-fun m!632231 () Bool)

(assert (=> bs!19601 m!632231))

(assert (=> b!658890 d!92873))

(declare-fun d!92883 () Bool)

(assert (=> d!92883 (arrayNoDuplicates!0 lt!308367 index!984 Nil!12652)))

(declare-fun lt!308547 () Unit!22924)

(declare-fun choose!39 (array!38736 (_ BitVec 32) (_ BitVec 32)) Unit!22924)

(assert (=> d!92883 (= lt!308547 (choose!39 lt!308367 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92883 (bvslt (size!18925 lt!308367) #b01111111111111111111111111111111)))

(assert (=> d!92883 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!308367 #b00000000000000000000000000000000 index!984) lt!308547)))

(declare-fun bs!19603 () Bool)

(assert (= bs!19603 d!92883))

(assert (=> bs!19603 m!631935))

(declare-fun m!632245 () Bool)

(assert (=> bs!19603 m!632245))

(assert (=> b!658890 d!92883))

(declare-fun d!92889 () Bool)

(assert (=> d!92889 (arrayContainsKey!0 lt!308367 (select (arr!18561 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308553 () Unit!22924)

(declare-fun choose!114 (array!38736 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22924)

(assert (=> d!92889 (= lt!308553 (choose!114 lt!308367 (select (arr!18561 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92889 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92889 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308367 (select (arr!18561 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!308553)))

(declare-fun bs!19604 () Bool)

(assert (= bs!19604 d!92889))

(assert (=> bs!19604 m!631913))

(assert (=> bs!19604 m!631933))

(assert (=> bs!19604 m!631913))

(declare-fun m!632251 () Bool)

(assert (=> bs!19604 m!632251))

(assert (=> b!658890 d!92889))

(declare-fun d!92893 () Bool)

(declare-fun e!378724 () Bool)

(assert (=> d!92893 e!378724))

(declare-fun res!427565 () Bool)

(assert (=> d!92893 (=> (not res!427565) (not e!378724))))

(assert (=> d!92893 (= res!427565 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18925 a!2986))))))

(declare-fun lt!308556 () Unit!22924)

(declare-fun choose!41 (array!38736 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12655) Unit!22924)

(assert (=> d!92893 (= lt!308556 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12652))))

(assert (=> d!92893 (bvslt (size!18925 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92893 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12652) lt!308556)))

(declare-fun b!659189 () Bool)

(assert (=> b!659189 (= e!378724 (arrayNoDuplicates!0 (array!38737 (store (arr!18561 a!2986) i!1108 k!1786) (size!18925 a!2986)) #b00000000000000000000000000000000 Nil!12652))))

(assert (= (and d!92893 res!427565) b!659189))

(declare-fun m!632275 () Bool)

(assert (=> d!92893 m!632275))

(assert (=> b!659189 m!631915))

(declare-fun m!632277 () Bool)

(assert (=> b!659189 m!632277))

(assert (=> b!658890 d!92893))

(declare-fun b!659203 () Bool)

(declare-fun e!378737 () Bool)

(declare-fun call!33899 () Bool)

(assert (=> b!659203 (= e!378737 call!33899)))

(declare-fun d!92903 () Bool)

(declare-fun res!427576 () Bool)

(declare-fun e!378736 () Bool)

(assert (=> d!92903 (=> res!427576 e!378736)))

(assert (=> d!92903 (= res!427576 (bvsge #b00000000000000000000000000000000 (size!18925 lt!308367)))))

(assert (=> d!92903 (= (arrayNoDuplicates!0 lt!308367 #b00000000000000000000000000000000 Nil!12652) e!378736)))

(declare-fun bm!33896 () Bool)

(declare-fun c!76181 () Bool)

(assert (=> bm!33896 (= call!33899 (arrayNoDuplicates!0 lt!308367 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!76181 (Cons!12651 (select (arr!18561 lt!308367) #b00000000000000000000000000000000) Nil!12652) Nil!12652)))))

(declare-fun b!659204 () Bool)

(declare-fun e!378738 () Bool)

(declare-fun contains!3200 (List!12655 (_ BitVec 64)) Bool)

(assert (=> b!659204 (= e!378738 (contains!3200 Nil!12652 (select (arr!18561 lt!308367) #b00000000000000000000000000000000)))))

(declare-fun b!659205 () Bool)

(declare-fun e!378739 () Bool)

(assert (=> b!659205 (= e!378739 e!378737)))

(assert (=> b!659205 (= c!76181 (validKeyInArray!0 (select (arr!18561 lt!308367) #b00000000000000000000000000000000)))))

(declare-fun b!659206 () Bool)

(assert (=> b!659206 (= e!378736 e!378739)))

(declare-fun res!427575 () Bool)

(assert (=> b!659206 (=> (not res!427575) (not e!378739))))

(assert (=> b!659206 (= res!427575 (not e!378738))))

(declare-fun res!427577 () Bool)

(assert (=> b!659206 (=> (not res!427577) (not e!378738))))

(assert (=> b!659206 (= res!427577 (validKeyInArray!0 (select (arr!18561 lt!308367) #b00000000000000000000000000000000)))))

(declare-fun b!659207 () Bool)

(assert (=> b!659207 (= e!378737 call!33899)))

(assert (= (and d!92903 (not res!427576)) b!659206))

(assert (= (and b!659206 res!427577) b!659204))

(assert (= (and b!659206 res!427575) b!659205))

(assert (= (and b!659205 c!76181) b!659207))

(assert (= (and b!659205 (not c!76181)) b!659203))

(assert (= (or b!659207 b!659203) bm!33896))

(declare-fun m!632283 () Bool)

(assert (=> bm!33896 m!632283))

(declare-fun m!632285 () Bool)

(assert (=> bm!33896 m!632285))

(assert (=> b!659204 m!632283))

(assert (=> b!659204 m!632283))

(declare-fun m!632287 () Bool)

(assert (=> b!659204 m!632287))

(assert (=> b!659205 m!632283))

(assert (=> b!659205 m!632283))

(declare-fun m!632289 () Bool)

(assert (=> b!659205 m!632289))

(assert (=> b!659206 m!632283))

(assert (=> b!659206 m!632283))

(assert (=> b!659206 m!632289))

(assert (=> b!658890 d!92903))

(declare-fun b!659208 () Bool)

(declare-fun e!378741 () Bool)

(declare-fun call!33900 () Bool)

(assert (=> b!659208 (= e!378741 call!33900)))

(declare-fun d!92907 () Bool)

(declare-fun res!427579 () Bool)

(declare-fun e!378740 () Bool)

(assert (=> d!92907 (=> res!427579 e!378740)))

(assert (=> d!92907 (= res!427579 (bvsge index!984 (size!18925 lt!308367)))))

(assert (=> d!92907 (= (arrayNoDuplicates!0 lt!308367 index!984 Nil!12652) e!378740)))

(declare-fun c!76182 () Bool)

(declare-fun bm!33897 () Bool)

(assert (=> bm!33897 (= call!33900 (arrayNoDuplicates!0 lt!308367 (bvadd index!984 #b00000000000000000000000000000001) (ite c!76182 (Cons!12651 (select (arr!18561 lt!308367) index!984) Nil!12652) Nil!12652)))))

(declare-fun b!659209 () Bool)

(declare-fun e!378742 () Bool)

(assert (=> b!659209 (= e!378742 (contains!3200 Nil!12652 (select (arr!18561 lt!308367) index!984)))))

(declare-fun b!659210 () Bool)

(declare-fun e!378743 () Bool)

(assert (=> b!659210 (= e!378743 e!378741)))

(assert (=> b!659210 (= c!76182 (validKeyInArray!0 (select (arr!18561 lt!308367) index!984)))))

(declare-fun b!659211 () Bool)

(assert (=> b!659211 (= e!378740 e!378743)))

(declare-fun res!427578 () Bool)

(assert (=> b!659211 (=> (not res!427578) (not e!378743))))

(assert (=> b!659211 (= res!427578 (not e!378742))))

(declare-fun res!427580 () Bool)

(assert (=> b!659211 (=> (not res!427580) (not e!378742))))

(assert (=> b!659211 (= res!427580 (validKeyInArray!0 (select (arr!18561 lt!308367) index!984)))))

(declare-fun b!659212 () Bool)

(assert (=> b!659212 (= e!378741 call!33900)))

(assert (= (and d!92907 (not res!427579)) b!659211))

(assert (= (and b!659211 res!427580) b!659209))

(assert (= (and b!659211 res!427578) b!659210))

(assert (= (and b!659210 c!76182) b!659212))

(assert (= (and b!659210 (not c!76182)) b!659208))

(assert (= (or b!659212 b!659208) bm!33897))

(assert (=> bm!33897 m!632229))

(declare-fun m!632291 () Bool)

(assert (=> bm!33897 m!632291))

(assert (=> b!659209 m!632229))

(assert (=> b!659209 m!632229))

(declare-fun m!632293 () Bool)

(assert (=> b!659209 m!632293))

(assert (=> b!659210 m!632229))

(assert (=> b!659210 m!632229))

(declare-fun m!632295 () Bool)

(assert (=> b!659210 m!632295))

(assert (=> b!659211 m!632229))

(assert (=> b!659211 m!632229))

(assert (=> b!659211 m!632295))

(assert (=> b!658890 d!92907))

(declare-fun b!659293 () Bool)

(declare-fun e!378794 () SeekEntryResult!7008)

(declare-fun lt!308599 () SeekEntryResult!7008)

(assert (=> b!659293 (= e!378794 (MissingZero!7008 (index!30398 lt!308599)))))

(declare-fun b!659294 () Bool)

(declare-fun c!76215 () Bool)

(declare-fun lt!308600 () (_ BitVec 64))

(assert (=> b!659294 (= c!76215 (= lt!308600 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!378792 () SeekEntryResult!7008)

(assert (=> b!659294 (= e!378792 e!378794)))

(declare-fun b!659295 () Bool)

(assert (=> b!659295 (= e!378794 (seekKeyOrZeroReturnVacant!0 (x!59212 lt!308599) (index!30398 lt!308599) (index!30398 lt!308599) k!1786 a!2986 mask!3053))))

