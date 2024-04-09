; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58142 () Bool)

(assert start!58142)

(declare-fun b!642086 () Bool)

(declare-fun res!416003 () Bool)

(declare-fun e!367719 () Bool)

(assert (=> b!642086 (=> (not res!416003) (not e!367719))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38357 0))(
  ( (array!38358 (arr!18391 (Array (_ BitVec 32) (_ BitVec 64))) (size!18755 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38357)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!642086 (= res!416003 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18391 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!367713 () Bool)

(declare-fun lt!297364 () array!38357)

(declare-fun b!642087 () Bool)

(declare-fun arrayContainsKey!0 (array!38357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642087 (= e!367713 (arrayContainsKey!0 lt!297364 (select (arr!18391 a!2986) j!136) index!984))))

(declare-fun res!416008 () Bool)

(declare-fun e!367717 () Bool)

(assert (=> start!58142 (=> (not res!416008) (not e!367717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58142 (= res!416008 (validMask!0 mask!3053))))

(assert (=> start!58142 e!367717))

(assert (=> start!58142 true))

(declare-fun array_inv!14165 (array!38357) Bool)

(assert (=> start!58142 (array_inv!14165 a!2986)))

(declare-fun b!642088 () Bool)

(declare-fun e!367723 () Bool)

(declare-datatypes ((SeekEntryResult!6838 0))(
  ( (MissingZero!6838 (index!29677 (_ BitVec 32))) (Found!6838 (index!29678 (_ BitVec 32))) (Intermediate!6838 (undefined!7650 Bool) (index!29679 (_ BitVec 32)) (x!58469 (_ BitVec 32))) (Undefined!6838) (MissingVacant!6838 (index!29680 (_ BitVec 32))) )
))
(declare-fun lt!297374 () SeekEntryResult!6838)

(declare-fun lt!297375 () SeekEntryResult!6838)

(assert (=> b!642088 (= e!367723 (= lt!297374 lt!297375))))

(declare-fun b!642089 () Bool)

(declare-fun res!415998 () Bool)

(assert (=> b!642089 (=> (not res!415998) (not e!367717))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642089 (= res!415998 (validKeyInArray!0 k0!1786))))

(declare-fun b!642090 () Bool)

(declare-fun res!415991 () Bool)

(assert (=> b!642090 (=> (not res!415991) (not e!367717))))

(assert (=> b!642090 (= res!415991 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642091 () Bool)

(declare-fun res!415990 () Bool)

(declare-fun e!367711 () Bool)

(assert (=> b!642091 (=> res!415990 e!367711)))

(declare-datatypes ((List!12485 0))(
  ( (Nil!12482) (Cons!12481 (h!13526 (_ BitVec 64)) (t!18721 List!12485)) )
))
(declare-fun contains!3139 (List!12485 (_ BitVec 64)) Bool)

(assert (=> b!642091 (= res!415990 (contains!3139 Nil!12482 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!642092 () Bool)

(declare-fun res!416007 () Bool)

(assert (=> b!642092 (=> (not res!416007) (not e!367719))))

(declare-fun arrayNoDuplicates!0 (array!38357 (_ BitVec 32) List!12485) Bool)

(assert (=> b!642092 (= res!416007 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12482))))

(declare-fun b!642093 () Bool)

(declare-fun res!416005 () Bool)

(assert (=> b!642093 (=> (not res!416005) (not e!367719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38357 (_ BitVec 32)) Bool)

(assert (=> b!642093 (= res!416005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642094 () Bool)

(declare-fun e!367712 () Bool)

(assert (=> b!642094 (= e!367712 e!367713)))

(declare-fun res!416000 () Bool)

(assert (=> b!642094 (=> (not res!416000) (not e!367713))))

(assert (=> b!642094 (= res!416000 (arrayContainsKey!0 lt!297364 (select (arr!18391 a!2986) j!136) j!136))))

(declare-fun b!642095 () Bool)

(assert (=> b!642095 (= e!367717 e!367719)))

(declare-fun res!415995 () Bool)

(assert (=> b!642095 (=> (not res!415995) (not e!367719))))

(declare-fun lt!297363 () SeekEntryResult!6838)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!642095 (= res!415995 (or (= lt!297363 (MissingZero!6838 i!1108)) (= lt!297363 (MissingVacant!6838 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38357 (_ BitVec 32)) SeekEntryResult!6838)

(assert (=> b!642095 (= lt!297363 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!642096 () Bool)

(declare-fun res!416006 () Bool)

(assert (=> b!642096 (=> (not res!416006) (not e!367717))))

(assert (=> b!642096 (= res!416006 (validKeyInArray!0 (select (arr!18391 a!2986) j!136)))))

(declare-fun b!642097 () Bool)

(declare-datatypes ((Unit!21710 0))(
  ( (Unit!21711) )
))
(declare-fun e!367714 () Unit!21710)

(declare-fun Unit!21712 () Unit!21710)

(assert (=> b!642097 (= e!367714 Unit!21712)))

(assert (=> b!642097 false))

(declare-fun b!642098 () Bool)

(declare-fun e!367721 () Bool)

(declare-fun e!367715 () Bool)

(assert (=> b!642098 (= e!367721 (not e!367715))))

(declare-fun res!415994 () Bool)

(assert (=> b!642098 (=> res!415994 e!367715)))

(declare-fun lt!297370 () SeekEntryResult!6838)

(assert (=> b!642098 (= res!415994 (not (= lt!297370 (Found!6838 index!984))))))

(declare-fun lt!297362 () Unit!21710)

(assert (=> b!642098 (= lt!297362 e!367714)))

(declare-fun c!73415 () Bool)

(assert (=> b!642098 (= c!73415 (= lt!297370 Undefined!6838))))

(declare-fun lt!297367 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38357 (_ BitVec 32)) SeekEntryResult!6838)

(assert (=> b!642098 (= lt!297370 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297367 lt!297364 mask!3053))))

(assert (=> b!642098 e!367723))

(declare-fun res!415996 () Bool)

(assert (=> b!642098 (=> (not res!415996) (not e!367723))))

(declare-fun lt!297371 () (_ BitVec 32))

(assert (=> b!642098 (= res!415996 (= lt!297375 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297371 vacantSpotIndex!68 lt!297367 lt!297364 mask!3053)))))

(assert (=> b!642098 (= lt!297375 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297371 vacantSpotIndex!68 (select (arr!18391 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!642098 (= lt!297367 (select (store (arr!18391 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!297373 () Unit!21710)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38357 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21710)

(assert (=> b!642098 (= lt!297373 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297371 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642098 (= lt!297371 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642099 () Bool)

(declare-fun res!416001 () Bool)

(assert (=> b!642099 (=> res!416001 e!367711)))

(declare-fun noDuplicate!410 (List!12485) Bool)

(assert (=> b!642099 (= res!416001 (not (noDuplicate!410 Nil!12482)))))

(declare-fun b!642100 () Bool)

(declare-fun e!367720 () Bool)

(assert (=> b!642100 (= e!367719 e!367720)))

(declare-fun res!415993 () Bool)

(assert (=> b!642100 (=> (not res!415993) (not e!367720))))

(assert (=> b!642100 (= res!415993 (= (select (store (arr!18391 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642100 (= lt!297364 (array!38358 (store (arr!18391 a!2986) i!1108 k0!1786) (size!18755 a!2986)))))

(declare-fun b!642101 () Bool)

(assert (=> b!642101 (= e!367711 true)))

(declare-fun lt!297369 () Bool)

(assert (=> b!642101 (= lt!297369 (contains!3139 Nil!12482 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!642102 () Bool)

(declare-fun res!415992 () Bool)

(assert (=> b!642102 (=> (not res!415992) (not e!367717))))

(assert (=> b!642102 (= res!415992 (and (= (size!18755 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18755 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18755 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642103 () Bool)

(assert (=> b!642103 (= e!367720 e!367721)))

(declare-fun res!415997 () Bool)

(assert (=> b!642103 (=> (not res!415997) (not e!367721))))

(assert (=> b!642103 (= res!415997 (and (= lt!297374 (Found!6838 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18391 a!2986) index!984) (select (arr!18391 a!2986) j!136))) (not (= (select (arr!18391 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!642103 (= lt!297374 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18391 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642104 () Bool)

(declare-fun e!367716 () Bool)

(assert (=> b!642104 (= e!367716 e!367711)))

(declare-fun res!416009 () Bool)

(assert (=> b!642104 (=> res!416009 e!367711)))

(assert (=> b!642104 (= res!416009 (or (bvsge (size!18755 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18755 a!2986))))))

(assert (=> b!642104 (arrayNoDuplicates!0 lt!297364 j!136 Nil!12482)))

(declare-fun lt!297366 () Unit!21710)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38357 (_ BitVec 32) (_ BitVec 32)) Unit!21710)

(assert (=> b!642104 (= lt!297366 (lemmaNoDuplicateFromThenFromBigger!0 lt!297364 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642104 (arrayNoDuplicates!0 lt!297364 #b00000000000000000000000000000000 Nil!12482)))

(declare-fun lt!297368 () Unit!21710)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38357 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12485) Unit!21710)

(assert (=> b!642104 (= lt!297368 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12482))))

(assert (=> b!642104 (arrayContainsKey!0 lt!297364 (select (arr!18391 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297365 () Unit!21710)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38357 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21710)

(assert (=> b!642104 (= lt!297365 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297364 (select (arr!18391 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!642105 () Bool)

(declare-fun e!367722 () Bool)

(assert (=> b!642105 (= e!367722 e!367712)))

(declare-fun res!416002 () Bool)

(assert (=> b!642105 (=> res!416002 e!367712)))

(declare-fun lt!297372 () (_ BitVec 64))

(assert (=> b!642105 (= res!416002 (or (not (= (select (arr!18391 a!2986) j!136) lt!297367)) (not (= (select (arr!18391 a!2986) j!136) lt!297372)) (bvsge j!136 index!984)))))

(declare-fun b!642106 () Bool)

(declare-fun Unit!21713 () Unit!21710)

(assert (=> b!642106 (= e!367714 Unit!21713)))

(declare-fun b!642107 () Bool)

(assert (=> b!642107 (= e!367715 e!367716)))

(declare-fun res!415999 () Bool)

(assert (=> b!642107 (=> res!415999 e!367716)))

(assert (=> b!642107 (= res!415999 (or (not (= (select (arr!18391 a!2986) j!136) lt!297367)) (not (= (select (arr!18391 a!2986) j!136) lt!297372)) (bvsge j!136 index!984)))))

(assert (=> b!642107 e!367722))

(declare-fun res!416004 () Bool)

(assert (=> b!642107 (=> (not res!416004) (not e!367722))))

(assert (=> b!642107 (= res!416004 (= lt!297372 (select (arr!18391 a!2986) j!136)))))

(assert (=> b!642107 (= lt!297372 (select (store (arr!18391 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!58142 res!416008) b!642102))

(assert (= (and b!642102 res!415992) b!642096))

(assert (= (and b!642096 res!416006) b!642089))

(assert (= (and b!642089 res!415998) b!642090))

(assert (= (and b!642090 res!415991) b!642095))

(assert (= (and b!642095 res!415995) b!642093))

(assert (= (and b!642093 res!416005) b!642092))

(assert (= (and b!642092 res!416007) b!642086))

(assert (= (and b!642086 res!416003) b!642100))

(assert (= (and b!642100 res!415993) b!642103))

(assert (= (and b!642103 res!415997) b!642098))

(assert (= (and b!642098 res!415996) b!642088))

(assert (= (and b!642098 c!73415) b!642097))

(assert (= (and b!642098 (not c!73415)) b!642106))

(assert (= (and b!642098 (not res!415994)) b!642107))

(assert (= (and b!642107 res!416004) b!642105))

(assert (= (and b!642105 (not res!416002)) b!642094))

(assert (= (and b!642094 res!416000) b!642087))

(assert (= (and b!642107 (not res!415999)) b!642104))

(assert (= (and b!642104 (not res!416009)) b!642099))

(assert (= (and b!642099 (not res!416001)) b!642091))

(assert (= (and b!642091 (not res!415990)) b!642101))

(declare-fun m!615931 () Bool)

(assert (=> b!642099 m!615931))

(declare-fun m!615933 () Bool)

(assert (=> b!642104 m!615933))

(declare-fun m!615935 () Bool)

(assert (=> b!642104 m!615935))

(assert (=> b!642104 m!615933))

(declare-fun m!615937 () Bool)

(assert (=> b!642104 m!615937))

(declare-fun m!615939 () Bool)

(assert (=> b!642104 m!615939))

(declare-fun m!615941 () Bool)

(assert (=> b!642104 m!615941))

(assert (=> b!642104 m!615933))

(declare-fun m!615943 () Bool)

(assert (=> b!642104 m!615943))

(declare-fun m!615945 () Bool)

(assert (=> b!642104 m!615945))

(assert (=> b!642096 m!615933))

(assert (=> b!642096 m!615933))

(declare-fun m!615947 () Bool)

(assert (=> b!642096 m!615947))

(declare-fun m!615949 () Bool)

(assert (=> b!642100 m!615949))

(declare-fun m!615951 () Bool)

(assert (=> b!642100 m!615951))

(declare-fun m!615953 () Bool)

(assert (=> b!642092 m!615953))

(assert (=> b!642094 m!615933))

(assert (=> b!642094 m!615933))

(declare-fun m!615955 () Bool)

(assert (=> b!642094 m!615955))

(declare-fun m!615957 () Bool)

(assert (=> b!642091 m!615957))

(declare-fun m!615959 () Bool)

(assert (=> b!642093 m!615959))

(declare-fun m!615961 () Bool)

(assert (=> b!642090 m!615961))

(assert (=> b!642087 m!615933))

(assert (=> b!642087 m!615933))

(declare-fun m!615963 () Bool)

(assert (=> b!642087 m!615963))

(declare-fun m!615965 () Bool)

(assert (=> b!642103 m!615965))

(assert (=> b!642103 m!615933))

(assert (=> b!642103 m!615933))

(declare-fun m!615967 () Bool)

(assert (=> b!642103 m!615967))

(declare-fun m!615969 () Bool)

(assert (=> b!642098 m!615969))

(declare-fun m!615971 () Bool)

(assert (=> b!642098 m!615971))

(declare-fun m!615973 () Bool)

(assert (=> b!642098 m!615973))

(assert (=> b!642098 m!615933))

(declare-fun m!615975 () Bool)

(assert (=> b!642098 m!615975))

(assert (=> b!642098 m!615949))

(declare-fun m!615977 () Bool)

(assert (=> b!642098 m!615977))

(assert (=> b!642098 m!615933))

(declare-fun m!615979 () Bool)

(assert (=> b!642098 m!615979))

(declare-fun m!615981 () Bool)

(assert (=> start!58142 m!615981))

(declare-fun m!615983 () Bool)

(assert (=> start!58142 m!615983))

(declare-fun m!615985 () Bool)

(assert (=> b!642086 m!615985))

(assert (=> b!642105 m!615933))

(declare-fun m!615987 () Bool)

(assert (=> b!642101 m!615987))

(declare-fun m!615989 () Bool)

(assert (=> b!642095 m!615989))

(assert (=> b!642107 m!615933))

(assert (=> b!642107 m!615949))

(declare-fun m!615991 () Bool)

(assert (=> b!642107 m!615991))

(declare-fun m!615993 () Bool)

(assert (=> b!642089 m!615993))

(check-sat (not b!642104) (not b!642092) (not b!642095) (not b!642094) (not b!642103) (not b!642093) (not b!642099) (not b!642091) (not b!642087) (not b!642096) (not b!642089) (not start!58142) (not b!642090) (not b!642098) (not b!642101))
(check-sat)
