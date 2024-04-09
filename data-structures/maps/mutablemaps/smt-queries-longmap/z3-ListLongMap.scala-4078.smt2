; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55976 () Bool)

(assert start!55976)

(declare-fun b!613930 () Bool)

(declare-fun e!351987 () Bool)

(declare-fun e!351977 () Bool)

(assert (=> b!613930 (= e!351987 e!351977)))

(declare-fun res!395426 () Bool)

(assert (=> b!613930 (=> res!395426 e!351977)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!281635 () (_ BitVec 64))

(declare-fun lt!281637 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37409 0))(
  ( (array!37410 (arr!17947 (Array (_ BitVec 32) (_ BitVec 64))) (size!18311 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37409)

(assert (=> b!613930 (= res!395426 (or (not (= (select (arr!17947 a!2986) j!136) lt!281635)) (not (= (select (arr!17947 a!2986) j!136) lt!281637)) (bvsge j!136 index!984)))))

(declare-fun b!613931 () Bool)

(declare-fun res!395425 () Bool)

(declare-fun e!351976 () Bool)

(assert (=> b!613931 (=> res!395425 e!351976)))

(declare-datatypes ((List!12041 0))(
  ( (Nil!12038) (Cons!12037 (h!13082 (_ BitVec 64)) (t!18277 List!12041)) )
))
(declare-fun contains!3068 (List!12041 (_ BitVec 64)) Bool)

(assert (=> b!613931 (= res!395425 (contains!3068 Nil!12038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613932 () Bool)

(declare-datatypes ((Unit!19792 0))(
  ( (Unit!19793) )
))
(declare-fun e!351978 () Unit!19792)

(declare-fun Unit!19794 () Unit!19792)

(assert (=> b!613932 (= e!351978 Unit!19794)))

(declare-fun b!613933 () Bool)

(declare-fun e!351983 () Bool)

(declare-fun e!351985 () Bool)

(assert (=> b!613933 (= e!351983 (not e!351985))))

(declare-fun res!395422 () Bool)

(assert (=> b!613933 (=> res!395422 e!351985)))

(declare-datatypes ((SeekEntryResult!6394 0))(
  ( (MissingZero!6394 (index!27859 (_ BitVec 32))) (Found!6394 (index!27860 (_ BitVec 32))) (Intermediate!6394 (undefined!7206 Bool) (index!27861 (_ BitVec 32)) (x!56691 (_ BitVec 32))) (Undefined!6394) (MissingVacant!6394 (index!27862 (_ BitVec 32))) )
))
(declare-fun lt!281623 () SeekEntryResult!6394)

(assert (=> b!613933 (= res!395422 (not (= lt!281623 (Found!6394 index!984))))))

(declare-fun lt!281624 () Unit!19792)

(declare-fun e!351980 () Unit!19792)

(assert (=> b!613933 (= lt!281624 e!351980)))

(declare-fun c!69629 () Bool)

(assert (=> b!613933 (= c!69629 (= lt!281623 Undefined!6394))))

(declare-fun lt!281621 () array!37409)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37409 (_ BitVec 32)) SeekEntryResult!6394)

(assert (=> b!613933 (= lt!281623 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!281635 lt!281621 mask!3053))))

(declare-fun e!351984 () Bool)

(assert (=> b!613933 e!351984))

(declare-fun res!395420 () Bool)

(assert (=> b!613933 (=> (not res!395420) (not e!351984))))

(declare-fun lt!281628 () SeekEntryResult!6394)

(declare-fun lt!281629 () (_ BitVec 32))

(assert (=> b!613933 (= res!395420 (= lt!281628 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281629 vacantSpotIndex!68 lt!281635 lt!281621 mask!3053)))))

(assert (=> b!613933 (= lt!281628 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281629 vacantSpotIndex!68 (select (arr!17947 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!613933 (= lt!281635 (select (store (arr!17947 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!281634 () Unit!19792)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19792)

(assert (=> b!613933 (= lt!281634 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!281629 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!613933 (= lt!281629 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!613934 () Bool)

(declare-fun Unit!19795 () Unit!19792)

(assert (=> b!613934 (= e!351978 Unit!19795)))

(declare-fun lt!281625 () Unit!19792)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37409 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19792)

(assert (=> b!613934 (= lt!281625 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281621 (select (arr!17947 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!613934 (arrayContainsKey!0 lt!281621 (select (arr!17947 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!281631 () Unit!19792)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37409 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12041) Unit!19792)

(assert (=> b!613934 (= lt!281631 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12038))))

(declare-fun arrayNoDuplicates!0 (array!37409 (_ BitVec 32) List!12041) Bool)

(assert (=> b!613934 (arrayNoDuplicates!0 lt!281621 #b00000000000000000000000000000000 Nil!12038)))

(declare-fun lt!281627 () Unit!19792)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37409 (_ BitVec 32) (_ BitVec 32)) Unit!19792)

(assert (=> b!613934 (= lt!281627 (lemmaNoDuplicateFromThenFromBigger!0 lt!281621 #b00000000000000000000000000000000 j!136))))

(assert (=> b!613934 (arrayNoDuplicates!0 lt!281621 j!136 Nil!12038)))

(declare-fun lt!281633 () Unit!19792)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37409 (_ BitVec 64) (_ BitVec 32) List!12041) Unit!19792)

(assert (=> b!613934 (= lt!281633 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!281621 (select (arr!17947 a!2986) j!136) j!136 Nil!12038))))

(assert (=> b!613934 false))

(declare-fun b!613935 () Bool)

(declare-fun e!351982 () Bool)

(assert (=> b!613935 (= e!351982 e!351976)))

(declare-fun res!395416 () Bool)

(assert (=> b!613935 (=> res!395416 e!351976)))

(assert (=> b!613935 (= res!395416 (or (bvsge (size!18311 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18311 a!2986)) (bvsge index!984 (size!18311 a!2986))))))

(assert (=> b!613935 (arrayNoDuplicates!0 lt!281621 index!984 Nil!12038)))

(declare-fun lt!281632 () Unit!19792)

(assert (=> b!613935 (= lt!281632 (lemmaNoDuplicateFromThenFromBigger!0 lt!281621 #b00000000000000000000000000000000 index!984))))

(assert (=> b!613935 (arrayNoDuplicates!0 lt!281621 #b00000000000000000000000000000000 Nil!12038)))

(declare-fun lt!281626 () Unit!19792)

(assert (=> b!613935 (= lt!281626 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12038))))

(assert (=> b!613935 (arrayContainsKey!0 lt!281621 (select (arr!17947 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!281622 () Unit!19792)

(assert (=> b!613935 (= lt!281622 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281621 (select (arr!17947 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!351973 () Bool)

(assert (=> b!613935 e!351973))

(declare-fun res!395415 () Bool)

(assert (=> b!613935 (=> (not res!395415) (not e!351973))))

(assert (=> b!613935 (= res!395415 (arrayContainsKey!0 lt!281621 (select (arr!17947 a!2986) j!136) j!136))))

(declare-fun b!613936 () Bool)

(declare-fun e!351981 () Bool)

(assert (=> b!613936 (= e!351981 e!351982)))

(declare-fun res!395412 () Bool)

(assert (=> b!613936 (=> res!395412 e!351982)))

(assert (=> b!613936 (= res!395412 (bvsge index!984 j!136))))

(declare-fun lt!281619 () Unit!19792)

(assert (=> b!613936 (= lt!281619 e!351978)))

(declare-fun c!69628 () Bool)

(assert (=> b!613936 (= c!69628 (bvslt j!136 index!984))))

(declare-fun b!613937 () Bool)

(declare-fun Unit!19796 () Unit!19792)

(assert (=> b!613937 (= e!351980 Unit!19796)))

(assert (=> b!613937 false))

(declare-fun b!613938 () Bool)

(declare-fun e!351988 () Bool)

(declare-fun e!351986 () Bool)

(assert (=> b!613938 (= e!351988 e!351986)))

(declare-fun res!395429 () Bool)

(assert (=> b!613938 (=> (not res!395429) (not e!351986))))

(declare-fun lt!281636 () SeekEntryResult!6394)

(assert (=> b!613938 (= res!395429 (or (= lt!281636 (MissingZero!6394 i!1108)) (= lt!281636 (MissingVacant!6394 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37409 (_ BitVec 32)) SeekEntryResult!6394)

(assert (=> b!613938 (= lt!281636 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!613939 () Bool)

(assert (=> b!613939 (= e!351976 true)))

(declare-fun lt!281620 () Bool)

(assert (=> b!613939 (= lt!281620 (contains!3068 Nil!12038 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613940 () Bool)

(declare-fun res!395423 () Bool)

(assert (=> b!613940 (=> (not res!395423) (not e!351988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!613940 (= res!395423 (validKeyInArray!0 k0!1786))))

(declare-fun b!613941 () Bool)

(declare-fun res!395410 () Bool)

(assert (=> b!613941 (=> (not res!395410) (not e!351988))))

(assert (=> b!613941 (= res!395410 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!613942 () Bool)

(declare-fun res!395427 () Bool)

(assert (=> b!613942 (=> (not res!395427) (not e!351988))))

(assert (=> b!613942 (= res!395427 (and (= (size!18311 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18311 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18311 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!613943 () Bool)

(declare-fun lt!281630 () SeekEntryResult!6394)

(assert (=> b!613943 (= e!351984 (= lt!281630 lt!281628))))

(declare-fun e!351975 () Bool)

(declare-fun b!613945 () Bool)

(assert (=> b!613945 (= e!351975 (arrayContainsKey!0 lt!281621 (select (arr!17947 a!2986) j!136) index!984))))

(declare-fun b!613946 () Bool)

(declare-fun res!395424 () Bool)

(assert (=> b!613946 (=> (not res!395424) (not e!351988))))

(assert (=> b!613946 (= res!395424 (validKeyInArray!0 (select (arr!17947 a!2986) j!136)))))

(declare-fun b!613947 () Bool)

(assert (=> b!613947 (= e!351973 (arrayContainsKey!0 lt!281621 (select (arr!17947 a!2986) j!136) index!984))))

(declare-fun b!613948 () Bool)

(declare-fun res!395419 () Bool)

(assert (=> b!613948 (=> res!395419 e!351976)))

(declare-fun noDuplicate!368 (List!12041) Bool)

(assert (=> b!613948 (= res!395419 (not (noDuplicate!368 Nil!12038)))))

(declare-fun b!613949 () Bool)

(declare-fun res!395428 () Bool)

(assert (=> b!613949 (=> (not res!395428) (not e!351986))))

(assert (=> b!613949 (= res!395428 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17947 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!613950 () Bool)

(declare-fun e!351974 () Bool)

(assert (=> b!613950 (= e!351974 e!351983)))

(declare-fun res!395421 () Bool)

(assert (=> b!613950 (=> (not res!395421) (not e!351983))))

(assert (=> b!613950 (= res!395421 (and (= lt!281630 (Found!6394 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17947 a!2986) index!984) (select (arr!17947 a!2986) j!136))) (not (= (select (arr!17947 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!613950 (= lt!281630 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17947 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!613951 () Bool)

(declare-fun res!395417 () Bool)

(assert (=> b!613951 (=> (not res!395417) (not e!351986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37409 (_ BitVec 32)) Bool)

(assert (=> b!613951 (= res!395417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!613952 () Bool)

(assert (=> b!613952 (= e!351986 e!351974)))

(declare-fun res!395413 () Bool)

(assert (=> b!613952 (=> (not res!395413) (not e!351974))))

(assert (=> b!613952 (= res!395413 (= (select (store (arr!17947 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!613952 (= lt!281621 (array!37410 (store (arr!17947 a!2986) i!1108 k0!1786) (size!18311 a!2986)))))

(declare-fun b!613953 () Bool)

(assert (=> b!613953 (= e!351985 e!351981)))

(declare-fun res!395411 () Bool)

(assert (=> b!613953 (=> res!395411 e!351981)))

(assert (=> b!613953 (= res!395411 (or (not (= (select (arr!17947 a!2986) j!136) lt!281635)) (not (= (select (arr!17947 a!2986) j!136) lt!281637))))))

(assert (=> b!613953 e!351987))

(declare-fun res!395418 () Bool)

(assert (=> b!613953 (=> (not res!395418) (not e!351987))))

(assert (=> b!613953 (= res!395418 (= lt!281637 (select (arr!17947 a!2986) j!136)))))

(assert (=> b!613953 (= lt!281637 (select (store (arr!17947 a!2986) i!1108 k0!1786) index!984))))

(declare-fun res!395409 () Bool)

(assert (=> start!55976 (=> (not res!395409) (not e!351988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55976 (= res!395409 (validMask!0 mask!3053))))

(assert (=> start!55976 e!351988))

(assert (=> start!55976 true))

(declare-fun array_inv!13721 (array!37409) Bool)

(assert (=> start!55976 (array_inv!13721 a!2986)))

(declare-fun b!613944 () Bool)

(assert (=> b!613944 (= e!351977 e!351975)))

(declare-fun res!395414 () Bool)

(assert (=> b!613944 (=> (not res!395414) (not e!351975))))

(assert (=> b!613944 (= res!395414 (arrayContainsKey!0 lt!281621 (select (arr!17947 a!2986) j!136) j!136))))

(declare-fun b!613954 () Bool)

(declare-fun res!395408 () Bool)

(assert (=> b!613954 (=> (not res!395408) (not e!351986))))

(assert (=> b!613954 (= res!395408 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12038))))

(declare-fun b!613955 () Bool)

(declare-fun Unit!19797 () Unit!19792)

(assert (=> b!613955 (= e!351980 Unit!19797)))

(assert (= (and start!55976 res!395409) b!613942))

(assert (= (and b!613942 res!395427) b!613946))

(assert (= (and b!613946 res!395424) b!613940))

(assert (= (and b!613940 res!395423) b!613941))

(assert (= (and b!613941 res!395410) b!613938))

(assert (= (and b!613938 res!395429) b!613951))

(assert (= (and b!613951 res!395417) b!613954))

(assert (= (and b!613954 res!395408) b!613949))

(assert (= (and b!613949 res!395428) b!613952))

(assert (= (and b!613952 res!395413) b!613950))

(assert (= (and b!613950 res!395421) b!613933))

(assert (= (and b!613933 res!395420) b!613943))

(assert (= (and b!613933 c!69629) b!613937))

(assert (= (and b!613933 (not c!69629)) b!613955))

(assert (= (and b!613933 (not res!395422)) b!613953))

(assert (= (and b!613953 res!395418) b!613930))

(assert (= (and b!613930 (not res!395426)) b!613944))

(assert (= (and b!613944 res!395414) b!613945))

(assert (= (and b!613953 (not res!395411)) b!613936))

(assert (= (and b!613936 c!69628) b!613934))

(assert (= (and b!613936 (not c!69628)) b!613932))

(assert (= (and b!613936 (not res!395412)) b!613935))

(assert (= (and b!613935 res!395415) b!613947))

(assert (= (and b!613935 (not res!395416)) b!613948))

(assert (= (and b!613948 (not res!395419)) b!613931))

(assert (= (and b!613931 (not res!395425)) b!613939))

(declare-fun m!590231 () Bool)

(assert (=> b!613950 m!590231))

(declare-fun m!590233 () Bool)

(assert (=> b!613950 m!590233))

(assert (=> b!613950 m!590233))

(declare-fun m!590235 () Bool)

(assert (=> b!613950 m!590235))

(declare-fun m!590237 () Bool)

(assert (=> start!55976 m!590237))

(declare-fun m!590239 () Bool)

(assert (=> start!55976 m!590239))

(assert (=> b!613930 m!590233))

(declare-fun m!590241 () Bool)

(assert (=> b!613952 m!590241))

(declare-fun m!590243 () Bool)

(assert (=> b!613952 m!590243))

(declare-fun m!590245 () Bool)

(assert (=> b!613939 m!590245))

(declare-fun m!590247 () Bool)

(assert (=> b!613940 m!590247))

(assert (=> b!613953 m!590233))

(assert (=> b!613953 m!590241))

(declare-fun m!590249 () Bool)

(assert (=> b!613953 m!590249))

(declare-fun m!590251 () Bool)

(assert (=> b!613954 m!590251))

(assert (=> b!613947 m!590233))

(assert (=> b!613947 m!590233))

(declare-fun m!590253 () Bool)

(assert (=> b!613947 m!590253))

(declare-fun m!590255 () Bool)

(assert (=> b!613949 m!590255))

(declare-fun m!590257 () Bool)

(assert (=> b!613935 m!590257))

(assert (=> b!613935 m!590233))

(declare-fun m!590259 () Bool)

(assert (=> b!613935 m!590259))

(assert (=> b!613935 m!590233))

(declare-fun m!590261 () Bool)

(assert (=> b!613935 m!590261))

(assert (=> b!613935 m!590233))

(declare-fun m!590263 () Bool)

(assert (=> b!613935 m!590263))

(declare-fun m!590265 () Bool)

(assert (=> b!613935 m!590265))

(declare-fun m!590267 () Bool)

(assert (=> b!613935 m!590267))

(assert (=> b!613935 m!590233))

(declare-fun m!590269 () Bool)

(assert (=> b!613935 m!590269))

(declare-fun m!590271 () Bool)

(assert (=> b!613941 m!590271))

(declare-fun m!590273 () Bool)

(assert (=> b!613951 m!590273))

(declare-fun m!590275 () Bool)

(assert (=> b!613933 m!590275))

(declare-fun m!590277 () Bool)

(assert (=> b!613933 m!590277))

(assert (=> b!613933 m!590233))

(assert (=> b!613933 m!590241))

(declare-fun m!590279 () Bool)

(assert (=> b!613933 m!590279))

(declare-fun m!590281 () Bool)

(assert (=> b!613933 m!590281))

(declare-fun m!590283 () Bool)

(assert (=> b!613933 m!590283))

(assert (=> b!613933 m!590233))

(declare-fun m!590285 () Bool)

(assert (=> b!613933 m!590285))

(assert (=> b!613946 m!590233))

(assert (=> b!613946 m!590233))

(declare-fun m!590287 () Bool)

(assert (=> b!613946 m!590287))

(declare-fun m!590289 () Bool)

(assert (=> b!613948 m!590289))

(declare-fun m!590291 () Bool)

(assert (=> b!613934 m!590291))

(declare-fun m!590293 () Bool)

(assert (=> b!613934 m!590293))

(assert (=> b!613934 m!590233))

(declare-fun m!590295 () Bool)

(assert (=> b!613934 m!590295))

(assert (=> b!613934 m!590233))

(declare-fun m!590297 () Bool)

(assert (=> b!613934 m!590297))

(assert (=> b!613934 m!590233))

(declare-fun m!590299 () Bool)

(assert (=> b!613934 m!590299))

(assert (=> b!613934 m!590267))

(assert (=> b!613934 m!590233))

(assert (=> b!613934 m!590269))

(declare-fun m!590301 () Bool)

(assert (=> b!613931 m!590301))

(declare-fun m!590303 () Bool)

(assert (=> b!613938 m!590303))

(assert (=> b!613944 m!590233))

(assert (=> b!613944 m!590233))

(assert (=> b!613944 m!590261))

(assert (=> b!613945 m!590233))

(assert (=> b!613945 m!590233))

(assert (=> b!613945 m!590253))

(check-sat (not b!613934) (not b!613947) (not b!613948) (not start!55976) (not b!613950) (not b!613931) (not b!613951) (not b!613933) (not b!613938) (not b!613941) (not b!613954) (not b!613935) (not b!613940) (not b!613945) (not b!613946) (not b!613939) (not b!613944))
(check-sat)
