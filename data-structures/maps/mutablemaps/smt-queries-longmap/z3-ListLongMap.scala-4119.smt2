; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56222 () Bool)

(assert start!56222)

(declare-fun b!622983 () Bool)

(assert (=> b!622983 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37655 0))(
  ( (array!37656 (arr!18070 (Array (_ BitVec 32) (_ BitVec 64))) (size!18434 (_ BitVec 32))) )
))
(declare-fun lt!288989 () array!37655)

(declare-fun a!2986 () array!37655)

(declare-datatypes ((Unit!20990 0))(
  ( (Unit!20991) )
))
(declare-fun lt!288980 () Unit!20990)

(declare-datatypes ((List!12164 0))(
  ( (Nil!12161) (Cons!12160 (h!13205 (_ BitVec 64)) (t!18400 List!12164)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37655 (_ BitVec 64) (_ BitVec 32) List!12164) Unit!20990)

(assert (=> b!622983 (= lt!288980 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288989 (select (arr!18070 a!2986) j!136) j!136 Nil!12161))))

(declare-fun arrayNoDuplicates!0 (array!37655 (_ BitVec 32) List!12164) Bool)

(assert (=> b!622983 (arrayNoDuplicates!0 lt!288989 j!136 Nil!12161)))

(declare-fun lt!288986 () Unit!20990)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37655 (_ BitVec 32) (_ BitVec 32)) Unit!20990)

(assert (=> b!622983 (= lt!288986 (lemmaNoDuplicateFromThenFromBigger!0 lt!288989 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622983 (arrayNoDuplicates!0 lt!288989 #b00000000000000000000000000000000 Nil!12161)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!288992 () Unit!20990)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37655 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12164) Unit!20990)

(assert (=> b!622983 (= lt!288992 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12161))))

(declare-fun arrayContainsKey!0 (array!37655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622983 (arrayContainsKey!0 lt!288989 (select (arr!18070 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288993 () Unit!20990)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37655 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20990)

(assert (=> b!622983 (= lt!288993 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288989 (select (arr!18070 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!357343 () Unit!20990)

(declare-fun Unit!20992 () Unit!20990)

(assert (=> b!622983 (= e!357343 Unit!20992)))

(declare-fun b!622984 () Bool)

(declare-fun e!357337 () Unit!20990)

(declare-fun Unit!20993 () Unit!20990)

(assert (=> b!622984 (= e!357337 Unit!20993)))

(assert (=> b!622984 false))

(declare-fun b!622985 () Bool)

(declare-fun res!401601 () Bool)

(declare-fun e!357339 () Bool)

(assert (=> b!622985 (=> (not res!401601) (not e!357339))))

(assert (=> b!622985 (= res!401601 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12161))))

(declare-fun b!622986 () Bool)

(declare-fun res!401612 () Bool)

(declare-fun e!357341 () Bool)

(assert (=> b!622986 (=> (not res!401612) (not e!357341))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!622986 (= res!401612 (and (= (size!18434 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18434 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18434 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!357346 () Bool)

(declare-fun b!622987 () Bool)

(assert (=> b!622987 (= e!357346 (arrayContainsKey!0 lt!288989 (select (arr!18070 a!2986) j!136) index!984))))

(declare-fun b!622988 () Bool)

(declare-fun res!401603 () Bool)

(assert (=> b!622988 (=> (not res!401603) (not e!357341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622988 (= res!401603 (validKeyInArray!0 (select (arr!18070 a!2986) j!136)))))

(declare-fun b!622989 () Bool)

(declare-fun res!401599 () Bool)

(assert (=> b!622989 (=> (not res!401599) (not e!357341))))

(assert (=> b!622989 (= res!401599 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622990 () Bool)

(declare-fun Unit!20994 () Unit!20990)

(assert (=> b!622990 (= e!357343 Unit!20994)))

(declare-fun b!622991 () Bool)

(declare-fun res!401611 () Bool)

(assert (=> b!622991 (=> (not res!401611) (not e!357341))))

(assert (=> b!622991 (= res!401611 (validKeyInArray!0 k0!1786))))

(declare-fun res!401602 () Bool)

(assert (=> start!56222 (=> (not res!401602) (not e!357341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56222 (= res!401602 (validMask!0 mask!3053))))

(assert (=> start!56222 e!357341))

(assert (=> start!56222 true))

(declare-fun array_inv!13844 (array!37655) Bool)

(assert (=> start!56222 (array_inv!13844 a!2986)))

(declare-fun b!622992 () Bool)

(declare-fun e!357338 () Bool)

(assert (=> b!622992 (= e!357338 (not true))))

(declare-fun lt!288991 () Unit!20990)

(declare-fun e!357336 () Unit!20990)

(assert (=> b!622992 (= lt!288991 e!357336)))

(declare-fun c!71062 () Bool)

(declare-datatypes ((SeekEntryResult!6517 0))(
  ( (MissingZero!6517 (index!28351 (_ BitVec 32))) (Found!6517 (index!28352 (_ BitVec 32))) (Intermediate!6517 (undefined!7329 Bool) (index!28353 (_ BitVec 32)) (x!57142 (_ BitVec 32))) (Undefined!6517) (MissingVacant!6517 (index!28354 (_ BitVec 32))) )
))
(declare-fun lt!288995 () SeekEntryResult!6517)

(assert (=> b!622992 (= c!71062 (= lt!288995 (Found!6517 index!984)))))

(declare-fun lt!288982 () Unit!20990)

(assert (=> b!622992 (= lt!288982 e!357337)))

(declare-fun c!71061 () Bool)

(assert (=> b!622992 (= c!71061 (= lt!288995 Undefined!6517))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!288996 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37655 (_ BitVec 32)) SeekEntryResult!6517)

(assert (=> b!622992 (= lt!288995 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288996 lt!288989 mask!3053))))

(declare-fun e!357342 () Bool)

(assert (=> b!622992 e!357342))

(declare-fun res!401607 () Bool)

(assert (=> b!622992 (=> (not res!401607) (not e!357342))))

(declare-fun lt!288983 () SeekEntryResult!6517)

(declare-fun lt!288988 () (_ BitVec 32))

(assert (=> b!622992 (= res!401607 (= lt!288983 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288988 vacantSpotIndex!68 lt!288996 lt!288989 mask!3053)))))

(assert (=> b!622992 (= lt!288983 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288988 vacantSpotIndex!68 (select (arr!18070 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622992 (= lt!288996 (select (store (arr!18070 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!288994 () Unit!20990)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37655 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20990)

(assert (=> b!622992 (= lt!288994 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288988 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622992 (= lt!288988 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622993 () Bool)

(declare-fun e!357348 () Unit!20990)

(declare-fun Unit!20995 () Unit!20990)

(assert (=> b!622993 (= e!357348 Unit!20995)))

(declare-fun b!622994 () Bool)

(declare-fun res!401606 () Bool)

(assert (=> b!622994 (= res!401606 (bvsge j!136 index!984))))

(declare-fun e!357347 () Bool)

(assert (=> b!622994 (=> res!401606 e!357347)))

(declare-fun e!357340 () Bool)

(assert (=> b!622994 (= e!357340 e!357347)))

(declare-fun b!622995 () Bool)

(declare-fun res!401600 () Bool)

(assert (=> b!622995 (= res!401600 (arrayContainsKey!0 lt!288989 (select (arr!18070 a!2986) j!136) j!136))))

(assert (=> b!622995 (=> (not res!401600) (not e!357346))))

(assert (=> b!622995 (= e!357347 e!357346)))

(declare-fun b!622996 () Bool)

(assert (=> b!622996 (= e!357341 e!357339)))

(declare-fun res!401597 () Bool)

(assert (=> b!622996 (=> (not res!401597) (not e!357339))))

(declare-fun lt!288981 () SeekEntryResult!6517)

(assert (=> b!622996 (= res!401597 (or (= lt!288981 (MissingZero!6517 i!1108)) (= lt!288981 (MissingVacant!6517 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37655 (_ BitVec 32)) SeekEntryResult!6517)

(assert (=> b!622996 (= lt!288981 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!622997 () Bool)

(declare-fun res!401605 () Bool)

(assert (=> b!622997 (=> (not res!401605) (not e!357339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37655 (_ BitVec 32)) Bool)

(assert (=> b!622997 (= res!401605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622998 () Bool)

(declare-fun Unit!20996 () Unit!20990)

(assert (=> b!622998 (= e!357337 Unit!20996)))

(declare-fun b!622999 () Bool)

(assert (=> b!622999 false))

(declare-fun lt!288984 () Unit!20990)

(assert (=> b!622999 (= lt!288984 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288989 (select (arr!18070 a!2986) j!136) index!984 Nil!12161))))

(assert (=> b!622999 (arrayNoDuplicates!0 lt!288989 index!984 Nil!12161)))

(declare-fun lt!288978 () Unit!20990)

(assert (=> b!622999 (= lt!288978 (lemmaNoDuplicateFromThenFromBigger!0 lt!288989 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622999 (arrayNoDuplicates!0 lt!288989 #b00000000000000000000000000000000 Nil!12161)))

(declare-fun lt!288990 () Unit!20990)

(assert (=> b!622999 (= lt!288990 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12161))))

(assert (=> b!622999 (arrayContainsKey!0 lt!288989 (select (arr!18070 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288977 () Unit!20990)

(assert (=> b!622999 (= lt!288977 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288989 (select (arr!18070 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!357349 () Bool)

(assert (=> b!622999 e!357349))

(declare-fun res!401598 () Bool)

(assert (=> b!622999 (=> (not res!401598) (not e!357349))))

(assert (=> b!622999 (= res!401598 (arrayContainsKey!0 lt!288989 (select (arr!18070 a!2986) j!136) j!136))))

(declare-fun Unit!20997 () Unit!20990)

(assert (=> b!622999 (= e!357348 Unit!20997)))

(declare-fun b!623000 () Bool)

(declare-fun Unit!20998 () Unit!20990)

(assert (=> b!623000 (= e!357336 Unit!20998)))

(declare-fun b!623001 () Bool)

(declare-fun lt!288987 () SeekEntryResult!6517)

(assert (=> b!623001 (= e!357342 (= lt!288987 lt!288983))))

(declare-fun b!623002 () Bool)

(assert (=> b!623002 (= e!357349 (arrayContainsKey!0 lt!288989 (select (arr!18070 a!2986) j!136) index!984))))

(declare-fun b!623003 () Bool)

(declare-fun e!357344 () Bool)

(assert (=> b!623003 (= e!357344 e!357338)))

(declare-fun res!401610 () Bool)

(assert (=> b!623003 (=> (not res!401610) (not e!357338))))

(assert (=> b!623003 (= res!401610 (and (= lt!288987 (Found!6517 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18070 a!2986) index!984) (select (arr!18070 a!2986) j!136))) (not (= (select (arr!18070 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!623003 (= lt!288987 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18070 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623004 () Bool)

(assert (=> b!623004 (= e!357339 e!357344)))

(declare-fun res!401608 () Bool)

(assert (=> b!623004 (=> (not res!401608) (not e!357344))))

(assert (=> b!623004 (= res!401608 (= (select (store (arr!18070 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623004 (= lt!288989 (array!37656 (store (arr!18070 a!2986) i!1108 k0!1786) (size!18434 a!2986)))))

(declare-fun b!623005 () Bool)

(declare-fun res!401609 () Bool)

(assert (=> b!623005 (=> (not res!401609) (not e!357339))))

(assert (=> b!623005 (= res!401609 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18070 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623006 () Bool)

(declare-fun Unit!20999 () Unit!20990)

(assert (=> b!623006 (= e!357336 Unit!20999)))

(declare-fun res!401604 () Bool)

(assert (=> b!623006 (= res!401604 (= (select (store (arr!18070 a!2986) i!1108 k0!1786) index!984) (select (arr!18070 a!2986) j!136)))))

(assert (=> b!623006 (=> (not res!401604) (not e!357340))))

(assert (=> b!623006 e!357340))

(declare-fun c!71063 () Bool)

(assert (=> b!623006 (= c!71063 (bvslt j!136 index!984))))

(declare-fun lt!288985 () Unit!20990)

(assert (=> b!623006 (= lt!288985 e!357343)))

(declare-fun c!71060 () Bool)

(assert (=> b!623006 (= c!71060 (bvslt index!984 j!136))))

(declare-fun lt!288979 () Unit!20990)

(assert (=> b!623006 (= lt!288979 e!357348)))

(assert (=> b!623006 false))

(assert (= (and start!56222 res!401602) b!622986))

(assert (= (and b!622986 res!401612) b!622988))

(assert (= (and b!622988 res!401603) b!622991))

(assert (= (and b!622991 res!401611) b!622989))

(assert (= (and b!622989 res!401599) b!622996))

(assert (= (and b!622996 res!401597) b!622997))

(assert (= (and b!622997 res!401605) b!622985))

(assert (= (and b!622985 res!401601) b!623005))

(assert (= (and b!623005 res!401609) b!623004))

(assert (= (and b!623004 res!401608) b!623003))

(assert (= (and b!623003 res!401610) b!622992))

(assert (= (and b!622992 res!401607) b!623001))

(assert (= (and b!622992 c!71061) b!622984))

(assert (= (and b!622992 (not c!71061)) b!622998))

(assert (= (and b!622992 c!71062) b!623006))

(assert (= (and b!622992 (not c!71062)) b!623000))

(assert (= (and b!623006 res!401604) b!622994))

(assert (= (and b!622994 (not res!401606)) b!622995))

(assert (= (and b!622995 res!401600) b!622987))

(assert (= (and b!623006 c!71063) b!622983))

(assert (= (and b!623006 (not c!71063)) b!622990))

(assert (= (and b!623006 c!71060) b!622999))

(assert (= (and b!623006 (not c!71060)) b!622993))

(assert (= (and b!622999 res!401598) b!623002))

(declare-fun m!598879 () Bool)

(assert (=> b!622989 m!598879))

(declare-fun m!598881 () Bool)

(assert (=> b!623005 m!598881))

(declare-fun m!598883 () Bool)

(assert (=> b!622996 m!598883))

(declare-fun m!598885 () Bool)

(assert (=> b!622991 m!598885))

(declare-fun m!598887 () Bool)

(assert (=> b!622988 m!598887))

(assert (=> b!622988 m!598887))

(declare-fun m!598889 () Bool)

(assert (=> b!622988 m!598889))

(declare-fun m!598891 () Bool)

(assert (=> b!622985 m!598891))

(assert (=> b!622987 m!598887))

(assert (=> b!622987 m!598887))

(declare-fun m!598893 () Bool)

(assert (=> b!622987 m!598893))

(declare-fun m!598895 () Bool)

(assert (=> b!623003 m!598895))

(assert (=> b!623003 m!598887))

(assert (=> b!623003 m!598887))

(declare-fun m!598897 () Bool)

(assert (=> b!623003 m!598897))

(declare-fun m!598899 () Bool)

(assert (=> b!623006 m!598899))

(declare-fun m!598901 () Bool)

(assert (=> b!623006 m!598901))

(assert (=> b!623006 m!598887))

(declare-fun m!598903 () Bool)

(assert (=> start!56222 m!598903))

(declare-fun m!598905 () Bool)

(assert (=> start!56222 m!598905))

(declare-fun m!598907 () Bool)

(assert (=> b!622997 m!598907))

(declare-fun m!598909 () Bool)

(assert (=> b!622992 m!598909))

(declare-fun m!598911 () Bool)

(assert (=> b!622992 m!598911))

(assert (=> b!622992 m!598887))

(assert (=> b!622992 m!598899))

(assert (=> b!622992 m!598887))

(declare-fun m!598913 () Bool)

(assert (=> b!622992 m!598913))

(declare-fun m!598915 () Bool)

(assert (=> b!622992 m!598915))

(declare-fun m!598917 () Bool)

(assert (=> b!622992 m!598917))

(declare-fun m!598919 () Bool)

(assert (=> b!622992 m!598919))

(assert (=> b!622995 m!598887))

(assert (=> b!622995 m!598887))

(declare-fun m!598921 () Bool)

(assert (=> b!622995 m!598921))

(assert (=> b!623004 m!598899))

(declare-fun m!598923 () Bool)

(assert (=> b!623004 m!598923))

(assert (=> b!622999 m!598887))

(declare-fun m!598925 () Bool)

(assert (=> b!622999 m!598925))

(assert (=> b!622999 m!598887))

(declare-fun m!598927 () Bool)

(assert (=> b!622999 m!598927))

(declare-fun m!598929 () Bool)

(assert (=> b!622999 m!598929))

(assert (=> b!622999 m!598887))

(assert (=> b!622999 m!598921))

(declare-fun m!598931 () Bool)

(assert (=> b!622999 m!598931))

(assert (=> b!622999 m!598887))

(declare-fun m!598933 () Bool)

(assert (=> b!622999 m!598933))

(assert (=> b!622999 m!598887))

(declare-fun m!598935 () Bool)

(assert (=> b!622999 m!598935))

(declare-fun m!598937 () Bool)

(assert (=> b!622999 m!598937))

(assert (=> b!623002 m!598887))

(assert (=> b!623002 m!598887))

(assert (=> b!623002 m!598893))

(assert (=> b!622983 m!598925))

(declare-fun m!598939 () Bool)

(assert (=> b!622983 m!598939))

(assert (=> b!622983 m!598887))

(declare-fun m!598941 () Bool)

(assert (=> b!622983 m!598941))

(declare-fun m!598943 () Bool)

(assert (=> b!622983 m!598943))

(assert (=> b!622983 m!598937))

(assert (=> b!622983 m!598887))

(assert (=> b!622983 m!598887))

(declare-fun m!598945 () Bool)

(assert (=> b!622983 m!598945))

(assert (=> b!622983 m!598887))

(declare-fun m!598947 () Bool)

(assert (=> b!622983 m!598947))

(check-sat (not b!622995) (not b!622992) (not b!622997) (not b!622988) (not b!622983) (not b!623002) (not b!622991) (not b!622999) (not b!623003) (not start!56222) (not b!622989) (not b!622996) (not b!622987) (not b!622985))
(check-sat)
