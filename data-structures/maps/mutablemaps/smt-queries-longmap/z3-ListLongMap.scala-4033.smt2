; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54914 () Bool)

(assert start!54914)

(declare-fun b!600936 () Bool)

(declare-fun res!385933 () Bool)

(declare-fun e!343600 () Bool)

(assert (=> b!600936 (=> (not res!385933) (not e!343600))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37112 0))(
  ( (array!37113 (arr!17812 (Array (_ BitVec 32) (_ BitVec 64))) (size!18176 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37112)

(assert (=> b!600936 (= res!385933 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17812 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600937 () Bool)

(declare-fun e!343606 () Bool)

(assert (=> b!600937 (= e!343606 e!343600)))

(declare-fun res!385935 () Bool)

(assert (=> b!600937 (=> (not res!385935) (not e!343600))))

(declare-datatypes ((SeekEntryResult!6259 0))(
  ( (MissingZero!6259 (index!27292 (_ BitVec 32))) (Found!6259 (index!27293 (_ BitVec 32))) (Intermediate!6259 (undefined!7071 Bool) (index!27294 (_ BitVec 32)) (x!56115 (_ BitVec 32))) (Undefined!6259) (MissingVacant!6259 (index!27295 (_ BitVec 32))) )
))
(declare-fun lt!273555 () SeekEntryResult!6259)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!600937 (= res!385935 (or (= lt!273555 (MissingZero!6259 i!1108)) (= lt!273555 (MissingVacant!6259 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37112 (_ BitVec 32)) SeekEntryResult!6259)

(assert (=> b!600937 (= lt!273555 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!600938 () Bool)

(declare-fun res!385930 () Bool)

(assert (=> b!600938 (=> (not res!385930) (not e!343606))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600938 (= res!385930 (validKeyInArray!0 (select (arr!17812 a!2986) j!136)))))

(declare-fun b!600939 () Bool)

(declare-fun res!385937 () Bool)

(assert (=> b!600939 (=> (not res!385937) (not e!343606))))

(declare-fun arrayContainsKey!0 (array!37112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600939 (= res!385937 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600940 () Bool)

(declare-fun e!343601 () Bool)

(declare-fun lt!273554 () SeekEntryResult!6259)

(declare-fun lt!273553 () SeekEntryResult!6259)

(assert (=> b!600940 (= e!343601 (= lt!273554 lt!273553))))

(declare-fun b!600941 () Bool)

(declare-fun res!385939 () Bool)

(assert (=> b!600941 (=> (not res!385939) (not e!343606))))

(assert (=> b!600941 (= res!385939 (validKeyInArray!0 k0!1786))))

(declare-fun b!600942 () Bool)

(declare-fun e!343598 () Bool)

(assert (=> b!600942 (= e!343600 e!343598)))

(declare-fun res!385924 () Bool)

(assert (=> b!600942 (=> (not res!385924) (not e!343598))))

(assert (=> b!600942 (= res!385924 (= (select (store (arr!17812 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!273544 () array!37112)

(assert (=> b!600942 (= lt!273544 (array!37113 (store (arr!17812 a!2986) i!1108 k0!1786) (size!18176 a!2986)))))

(declare-fun b!600943 () Bool)

(declare-fun res!385932 () Bool)

(assert (=> b!600943 (=> (not res!385932) (not e!343606))))

(assert (=> b!600943 (= res!385932 (and (= (size!18176 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18176 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18176 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600945 () Bool)

(declare-fun e!343607 () Bool)

(declare-fun e!343604 () Bool)

(assert (=> b!600945 (= e!343607 e!343604)))

(declare-fun res!385931 () Bool)

(assert (=> b!600945 (=> res!385931 e!343604)))

(declare-fun lt!273557 () (_ BitVec 64))

(declare-fun lt!273558 () (_ BitVec 64))

(assert (=> b!600945 (= res!385931 (or (not (= (select (arr!17812 a!2986) j!136) lt!273558)) (not (= (select (arr!17812 a!2986) j!136) lt!273557))))))

(declare-fun e!343602 () Bool)

(assert (=> b!600945 e!343602))

(declare-fun res!385926 () Bool)

(assert (=> b!600945 (=> (not res!385926) (not e!343602))))

(assert (=> b!600945 (= res!385926 (= lt!273557 (select (arr!17812 a!2986) j!136)))))

(assert (=> b!600945 (= lt!273557 (select (store (arr!17812 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!600946 () Bool)

(declare-datatypes ((Unit!18982 0))(
  ( (Unit!18983) )
))
(declare-fun e!343599 () Unit!18982)

(declare-fun Unit!18984 () Unit!18982)

(assert (=> b!600946 (= e!343599 Unit!18984)))

(declare-fun b!600947 () Bool)

(declare-fun Unit!18985 () Unit!18982)

(assert (=> b!600947 (= e!343599 Unit!18985)))

(assert (=> b!600947 false))

(declare-fun b!600948 () Bool)

(assert (=> b!600948 (= e!343604 true)))

(declare-fun lt!273547 () Unit!18982)

(declare-fun e!343609 () Unit!18982)

(assert (=> b!600948 (= lt!273547 e!343609)))

(declare-fun c!67874 () Bool)

(assert (=> b!600948 (= c!67874 (bvslt j!136 index!984))))

(declare-fun b!600949 () Bool)

(declare-fun e!343605 () Bool)

(assert (=> b!600949 (= e!343605 (arrayContainsKey!0 lt!273544 (select (arr!17812 a!2986) j!136) index!984))))

(declare-fun b!600950 () Bool)

(declare-fun e!343608 () Bool)

(assert (=> b!600950 (= e!343608 e!343605)))

(declare-fun res!385929 () Bool)

(assert (=> b!600950 (=> (not res!385929) (not e!343605))))

(assert (=> b!600950 (= res!385929 (arrayContainsKey!0 lt!273544 (select (arr!17812 a!2986) j!136) j!136))))

(declare-fun b!600944 () Bool)

(declare-fun e!343603 () Bool)

(assert (=> b!600944 (= e!343598 e!343603)))

(declare-fun res!385927 () Bool)

(assert (=> b!600944 (=> (not res!385927) (not e!343603))))

(assert (=> b!600944 (= res!385927 (and (= lt!273554 (Found!6259 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17812 a!2986) index!984) (select (arr!17812 a!2986) j!136))) (not (= (select (arr!17812 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37112 (_ BitVec 32)) SeekEntryResult!6259)

(assert (=> b!600944 (= lt!273554 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17812 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!385934 () Bool)

(assert (=> start!54914 (=> (not res!385934) (not e!343606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54914 (= res!385934 (validMask!0 mask!3053))))

(assert (=> start!54914 e!343606))

(assert (=> start!54914 true))

(declare-fun array_inv!13586 (array!37112) Bool)

(assert (=> start!54914 (array_inv!13586 a!2986)))

(declare-fun b!600951 () Bool)

(declare-fun res!385940 () Bool)

(assert (=> b!600951 (=> (not res!385940) (not e!343600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37112 (_ BitVec 32)) Bool)

(assert (=> b!600951 (= res!385940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600952 () Bool)

(declare-fun Unit!18986 () Unit!18982)

(assert (=> b!600952 (= e!343609 Unit!18986)))

(declare-fun b!600953 () Bool)

(assert (=> b!600953 (= e!343602 e!343608)))

(declare-fun res!385925 () Bool)

(assert (=> b!600953 (=> res!385925 e!343608)))

(assert (=> b!600953 (= res!385925 (or (not (= (select (arr!17812 a!2986) j!136) lt!273558)) (not (= (select (arr!17812 a!2986) j!136) lt!273557)) (bvsge j!136 index!984)))))

(declare-fun b!600954 () Bool)

(declare-fun res!385936 () Bool)

(assert (=> b!600954 (=> (not res!385936) (not e!343600))))

(declare-datatypes ((List!11906 0))(
  ( (Nil!11903) (Cons!11902 (h!12947 (_ BitVec 64)) (t!18142 List!11906)) )
))
(declare-fun arrayNoDuplicates!0 (array!37112 (_ BitVec 32) List!11906) Bool)

(assert (=> b!600954 (= res!385936 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11903))))

(declare-fun b!600955 () Bool)

(assert (=> b!600955 (= e!343603 (not e!343607))))

(declare-fun res!385938 () Bool)

(assert (=> b!600955 (=> res!385938 e!343607)))

(declare-fun lt!273546 () SeekEntryResult!6259)

(assert (=> b!600955 (= res!385938 (not (= lt!273546 (Found!6259 index!984))))))

(declare-fun lt!273545 () Unit!18982)

(assert (=> b!600955 (= lt!273545 e!343599)))

(declare-fun c!67873 () Bool)

(assert (=> b!600955 (= c!67873 (= lt!273546 Undefined!6259))))

(assert (=> b!600955 (= lt!273546 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273558 lt!273544 mask!3053))))

(assert (=> b!600955 e!343601))

(declare-fun res!385928 () Bool)

(assert (=> b!600955 (=> (not res!385928) (not e!343601))))

(declare-fun lt!273552 () (_ BitVec 32))

(assert (=> b!600955 (= res!385928 (= lt!273553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273552 vacantSpotIndex!68 lt!273558 lt!273544 mask!3053)))))

(assert (=> b!600955 (= lt!273553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273552 vacantSpotIndex!68 (select (arr!17812 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600955 (= lt!273558 (select (store (arr!17812 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!273549 () Unit!18982)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37112 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18982)

(assert (=> b!600955 (= lt!273549 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273552 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600955 (= lt!273552 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600956 () Bool)

(declare-fun Unit!18987 () Unit!18982)

(assert (=> b!600956 (= e!343609 Unit!18987)))

(declare-fun lt!273551 () Unit!18982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37112 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18982)

(assert (=> b!600956 (= lt!273551 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273544 (select (arr!17812 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!600956 (arrayContainsKey!0 lt!273544 (select (arr!17812 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273548 () Unit!18982)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37112 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11906) Unit!18982)

(assert (=> b!600956 (= lt!273548 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11903))))

(assert (=> b!600956 (arrayNoDuplicates!0 lt!273544 #b00000000000000000000000000000000 Nil!11903)))

(declare-fun lt!273550 () Unit!18982)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37112 (_ BitVec 32) (_ BitVec 32)) Unit!18982)

(assert (=> b!600956 (= lt!273550 (lemmaNoDuplicateFromThenFromBigger!0 lt!273544 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600956 (arrayNoDuplicates!0 lt!273544 j!136 Nil!11903)))

(declare-fun lt!273556 () Unit!18982)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37112 (_ BitVec 64) (_ BitVec 32) List!11906) Unit!18982)

(assert (=> b!600956 (= lt!273556 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273544 (select (arr!17812 a!2986) j!136) j!136 Nil!11903))))

(assert (=> b!600956 false))

(assert (= (and start!54914 res!385934) b!600943))

(assert (= (and b!600943 res!385932) b!600938))

(assert (= (and b!600938 res!385930) b!600941))

(assert (= (and b!600941 res!385939) b!600939))

(assert (= (and b!600939 res!385937) b!600937))

(assert (= (and b!600937 res!385935) b!600951))

(assert (= (and b!600951 res!385940) b!600954))

(assert (= (and b!600954 res!385936) b!600936))

(assert (= (and b!600936 res!385933) b!600942))

(assert (= (and b!600942 res!385924) b!600944))

(assert (= (and b!600944 res!385927) b!600955))

(assert (= (and b!600955 res!385928) b!600940))

(assert (= (and b!600955 c!67873) b!600947))

(assert (= (and b!600955 (not c!67873)) b!600946))

(assert (= (and b!600955 (not res!385938)) b!600945))

(assert (= (and b!600945 res!385926) b!600953))

(assert (= (and b!600953 (not res!385925)) b!600950))

(assert (= (and b!600950 res!385929) b!600949))

(assert (= (and b!600945 (not res!385931)) b!600948))

(assert (= (and b!600948 c!67874) b!600956))

(assert (= (and b!600948 (not c!67874)) b!600952))

(declare-fun m!578187 () Bool)

(assert (=> b!600955 m!578187))

(declare-fun m!578189 () Bool)

(assert (=> b!600955 m!578189))

(declare-fun m!578191 () Bool)

(assert (=> b!600955 m!578191))

(assert (=> b!600955 m!578191))

(declare-fun m!578193 () Bool)

(assert (=> b!600955 m!578193))

(declare-fun m!578195 () Bool)

(assert (=> b!600955 m!578195))

(declare-fun m!578197 () Bool)

(assert (=> b!600955 m!578197))

(declare-fun m!578199 () Bool)

(assert (=> b!600955 m!578199))

(declare-fun m!578201 () Bool)

(assert (=> b!600955 m!578201))

(declare-fun m!578203 () Bool)

(assert (=> b!600941 m!578203))

(assert (=> b!600942 m!578195))

(declare-fun m!578205 () Bool)

(assert (=> b!600942 m!578205))

(assert (=> b!600953 m!578191))

(declare-fun m!578207 () Bool)

(assert (=> b!600954 m!578207))

(declare-fun m!578209 () Bool)

(assert (=> b!600936 m!578209))

(assert (=> b!600938 m!578191))

(assert (=> b!600938 m!578191))

(declare-fun m!578211 () Bool)

(assert (=> b!600938 m!578211))

(declare-fun m!578213 () Bool)

(assert (=> b!600939 m!578213))

(assert (=> b!600945 m!578191))

(assert (=> b!600945 m!578195))

(declare-fun m!578215 () Bool)

(assert (=> b!600945 m!578215))

(assert (=> b!600950 m!578191))

(assert (=> b!600950 m!578191))

(declare-fun m!578217 () Bool)

(assert (=> b!600950 m!578217))

(declare-fun m!578219 () Bool)

(assert (=> start!54914 m!578219))

(declare-fun m!578221 () Bool)

(assert (=> start!54914 m!578221))

(assert (=> b!600949 m!578191))

(assert (=> b!600949 m!578191))

(declare-fun m!578223 () Bool)

(assert (=> b!600949 m!578223))

(declare-fun m!578225 () Bool)

(assert (=> b!600944 m!578225))

(assert (=> b!600944 m!578191))

(assert (=> b!600944 m!578191))

(declare-fun m!578227 () Bool)

(assert (=> b!600944 m!578227))

(declare-fun m!578229 () Bool)

(assert (=> b!600951 m!578229))

(assert (=> b!600956 m!578191))

(declare-fun m!578231 () Bool)

(assert (=> b!600956 m!578231))

(declare-fun m!578233 () Bool)

(assert (=> b!600956 m!578233))

(declare-fun m!578235 () Bool)

(assert (=> b!600956 m!578235))

(assert (=> b!600956 m!578191))

(assert (=> b!600956 m!578191))

(declare-fun m!578237 () Bool)

(assert (=> b!600956 m!578237))

(declare-fun m!578239 () Bool)

(assert (=> b!600956 m!578239))

(assert (=> b!600956 m!578191))

(declare-fun m!578241 () Bool)

(assert (=> b!600956 m!578241))

(declare-fun m!578243 () Bool)

(assert (=> b!600956 m!578243))

(declare-fun m!578245 () Bool)

(assert (=> b!600937 m!578245))

(check-sat (not b!600956) (not b!600949) (not b!600939) (not b!600944) (not b!600941) (not b!600950) (not b!600954) (not start!54914) (not b!600937) (not b!600951) (not b!600955) (not b!600938))
(check-sat)
