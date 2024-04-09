; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55808 () Bool)

(assert start!55808)

(declare-fun b!610882 () Bool)

(declare-fun res!393003 () Bool)

(declare-fun e!350026 () Bool)

(assert (=> b!610882 (=> (not res!393003) (not e!350026))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!610882 (= res!393003 (validKeyInArray!0 k0!1786))))

(declare-fun b!610883 () Bool)

(declare-fun e!350023 () Bool)

(declare-fun e!350020 () Bool)

(assert (=> b!610883 (= e!350023 e!350020)))

(declare-fun res!393016 () Bool)

(assert (=> b!610883 (=> res!393016 e!350020)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!279514 () (_ BitVec 64))

(declare-datatypes ((array!37334 0))(
  ( (array!37335 (arr!17911 (Array (_ BitVec 32) (_ BitVec 64))) (size!18275 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37334)

(declare-fun lt!279512 () (_ BitVec 64))

(assert (=> b!610883 (= res!393016 (or (not (= (select (arr!17911 a!2986) j!136) lt!279514)) (not (= (select (arr!17911 a!2986) j!136) lt!279512))))))

(declare-fun e!350025 () Bool)

(assert (=> b!610883 e!350025))

(declare-fun res!393002 () Bool)

(assert (=> b!610883 (=> (not res!393002) (not e!350025))))

(assert (=> b!610883 (= res!393002 (= lt!279512 (select (arr!17911 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!610883 (= lt!279512 (select (store (arr!17911 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!610884 () Bool)

(declare-fun e!350019 () Bool)

(declare-fun e!350028 () Bool)

(assert (=> b!610884 (= e!350019 e!350028)))

(declare-fun res!393023 () Bool)

(assert (=> b!610884 (=> (not res!393023) (not e!350028))))

(declare-datatypes ((SeekEntryResult!6358 0))(
  ( (MissingZero!6358 (index!27712 (_ BitVec 32))) (Found!6358 (index!27713 (_ BitVec 32))) (Intermediate!6358 (undefined!7170 Bool) (index!27714 (_ BitVec 32)) (x!56550 (_ BitVec 32))) (Undefined!6358) (MissingVacant!6358 (index!27715 (_ BitVec 32))) )
))
(declare-fun lt!279521 () SeekEntryResult!6358)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!610884 (= res!393023 (and (= lt!279521 (Found!6358 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17911 a!2986) index!984) (select (arr!17911 a!2986) j!136))) (not (= (select (arr!17911 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37334 (_ BitVec 32)) SeekEntryResult!6358)

(assert (=> b!610884 (= lt!279521 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17911 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610885 () Bool)

(declare-fun e!350016 () Bool)

(declare-fun e!350031 () Bool)

(assert (=> b!610885 (= e!350016 e!350031)))

(declare-fun res!393009 () Bool)

(assert (=> b!610885 (=> res!393009 e!350031)))

(assert (=> b!610885 (= res!393009 (or (bvsgt #b00000000000000000000000000000000 (size!18275 a!2986)) (bvsge (size!18275 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!279509 () array!37334)

(declare-datatypes ((List!12005 0))(
  ( (Nil!12002) (Cons!12001 (h!13046 (_ BitVec 64)) (t!18241 List!12005)) )
))
(declare-fun arrayNoDuplicates!0 (array!37334 (_ BitVec 32) List!12005) Bool)

(assert (=> b!610885 (arrayNoDuplicates!0 lt!279509 #b00000000000000000000000000000000 Nil!12002)))

(declare-datatypes ((Unit!19576 0))(
  ( (Unit!19577) )
))
(declare-fun lt!279513 () Unit!19576)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37334 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12005) Unit!19576)

(assert (=> b!610885 (= lt!279513 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12002))))

(declare-fun arrayContainsKey!0 (array!37334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!610885 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279516 () Unit!19576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37334 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19576)

(assert (=> b!610885 (= lt!279516 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279509 (select (arr!17911 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350018 () Bool)

(assert (=> b!610885 e!350018))

(declare-fun res!393017 () Bool)

(assert (=> b!610885 (=> (not res!393017) (not e!350018))))

(assert (=> b!610885 (= res!393017 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) j!136))))

(declare-fun b!610886 () Bool)

(declare-fun res!393008 () Bool)

(declare-fun e!350027 () Bool)

(assert (=> b!610886 (=> (not res!393008) (not e!350027))))

(assert (=> b!610886 (= res!393008 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12002))))

(declare-fun b!610887 () Bool)

(declare-fun res!393006 () Bool)

(assert (=> b!610887 (=> (not res!393006) (not e!350026))))

(assert (=> b!610887 (= res!393006 (and (= (size!18275 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18275 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18275 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!610888 () Bool)

(assert (=> b!610888 (= e!350027 e!350019)))

(declare-fun res!393004 () Bool)

(assert (=> b!610888 (=> (not res!393004) (not e!350019))))

(assert (=> b!610888 (= res!393004 (= (select (store (arr!17911 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610888 (= lt!279509 (array!37335 (store (arr!17911 a!2986) i!1108 k0!1786) (size!18275 a!2986)))))

(declare-fun b!610889 () Bool)

(declare-fun res!393010 () Bool)

(assert (=> b!610889 (=> (not res!393010) (not e!350026))))

(assert (=> b!610889 (= res!393010 (validKeyInArray!0 (select (arr!17911 a!2986) j!136)))))

(declare-fun b!610890 () Bool)

(declare-fun e!350024 () Bool)

(declare-fun lt!279506 () SeekEntryResult!6358)

(assert (=> b!610890 (= e!350024 (= lt!279521 lt!279506))))

(declare-fun b!610891 () Bool)

(declare-fun e!350022 () Bool)

(assert (=> b!610891 (= e!350031 e!350022)))

(declare-fun res!393012 () Bool)

(assert (=> b!610891 (=> (not res!393012) (not e!350022))))

(declare-fun contains!3047 (List!12005 (_ BitVec 64)) Bool)

(assert (=> b!610891 (= res!393012 (not (contains!3047 Nil!12002 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!350017 () Bool)

(declare-fun b!610892 () Bool)

(assert (=> b!610892 (= e!350017 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) index!984))))

(declare-fun b!610893 () Bool)

(assert (=> b!610893 (= e!350028 (not e!350023))))

(declare-fun res!393014 () Bool)

(assert (=> b!610893 (=> res!393014 e!350023)))

(declare-fun lt!279507 () SeekEntryResult!6358)

(assert (=> b!610893 (= res!393014 (not (= lt!279507 (Found!6358 index!984))))))

(declare-fun lt!279515 () Unit!19576)

(declare-fun e!350032 () Unit!19576)

(assert (=> b!610893 (= lt!279515 e!350032)))

(declare-fun c!69307 () Bool)

(assert (=> b!610893 (= c!69307 (= lt!279507 Undefined!6358))))

(assert (=> b!610893 (= lt!279507 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279514 lt!279509 mask!3053))))

(assert (=> b!610893 e!350024))

(declare-fun res!393015 () Bool)

(assert (=> b!610893 (=> (not res!393015) (not e!350024))))

(declare-fun lt!279508 () (_ BitVec 32))

(assert (=> b!610893 (= res!393015 (= lt!279506 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 lt!279514 lt!279509 mask!3053)))))

(assert (=> b!610893 (= lt!279506 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 (select (arr!17911 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!610893 (= lt!279514 (select (store (arr!17911 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!279517 () Unit!19576)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37334 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19576)

(assert (=> b!610893 (= lt!279517 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!610893 (= lt!279508 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!610894 () Bool)

(declare-fun Unit!19578 () Unit!19576)

(assert (=> b!610894 (= e!350032 Unit!19578)))

(assert (=> b!610894 false))

(declare-fun b!610895 () Bool)

(declare-fun e!350030 () Bool)

(assert (=> b!610895 (= e!350030 e!350017)))

(declare-fun res!393019 () Bool)

(assert (=> b!610895 (=> (not res!393019) (not e!350017))))

(assert (=> b!610895 (= res!393019 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) j!136))))

(declare-fun b!610896 () Bool)

(assert (=> b!610896 (= e!350020 e!350016)))

(declare-fun res!393005 () Bool)

(assert (=> b!610896 (=> res!393005 e!350016)))

(assert (=> b!610896 (= res!393005 (bvsge index!984 j!136))))

(declare-fun lt!279510 () Unit!19576)

(declare-fun e!350029 () Unit!19576)

(assert (=> b!610896 (= lt!279510 e!350029)))

(declare-fun c!69308 () Bool)

(assert (=> b!610896 (= c!69308 (bvslt j!136 index!984))))

(declare-fun b!610897 () Bool)

(declare-fun res!393007 () Bool)

(assert (=> b!610897 (=> (not res!393007) (not e!350027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37334 (_ BitVec 32)) Bool)

(assert (=> b!610897 (= res!393007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!610898 () Bool)

(declare-fun res!393021 () Bool)

(assert (=> b!610898 (=> (not res!393021) (not e!350026))))

(assert (=> b!610898 (= res!393021 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!610899 () Bool)

(declare-fun Unit!19579 () Unit!19576)

(assert (=> b!610899 (= e!350029 Unit!19579)))

(declare-fun res!393011 () Bool)

(assert (=> start!55808 (=> (not res!393011) (not e!350026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55808 (= res!393011 (validMask!0 mask!3053))))

(assert (=> start!55808 e!350026))

(assert (=> start!55808 true))

(declare-fun array_inv!13685 (array!37334) Bool)

(assert (=> start!55808 (array_inv!13685 a!2986)))

(declare-fun b!610900 () Bool)

(declare-fun res!393022 () Bool)

(assert (=> b!610900 (=> (not res!393022) (not e!350027))))

(assert (=> b!610900 (= res!393022 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17911 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610901 () Bool)

(assert (=> b!610901 (= e!350022 (not (contains!3047 Nil!12002 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610902 () Bool)

(declare-fun Unit!19580 () Unit!19576)

(assert (=> b!610902 (= e!350032 Unit!19580)))

(declare-fun b!610903 () Bool)

(assert (=> b!610903 (= e!350025 e!350030)))

(declare-fun res!393020 () Bool)

(assert (=> b!610903 (=> res!393020 e!350030)))

(assert (=> b!610903 (= res!393020 (or (not (= (select (arr!17911 a!2986) j!136) lt!279514)) (not (= (select (arr!17911 a!2986) j!136) lt!279512)) (bvsge j!136 index!984)))))

(declare-fun b!610904 () Bool)

(declare-fun res!393018 () Bool)

(assert (=> b!610904 (=> res!393018 e!350031)))

(declare-fun noDuplicate!347 (List!12005) Bool)

(assert (=> b!610904 (= res!393018 (not (noDuplicate!347 Nil!12002)))))

(declare-fun b!610905 () Bool)

(assert (=> b!610905 (= e!350026 e!350027)))

(declare-fun res!393013 () Bool)

(assert (=> b!610905 (=> (not res!393013) (not e!350027))))

(declare-fun lt!279518 () SeekEntryResult!6358)

(assert (=> b!610905 (= res!393013 (or (= lt!279518 (MissingZero!6358 i!1108)) (= lt!279518 (MissingVacant!6358 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37334 (_ BitVec 32)) SeekEntryResult!6358)

(assert (=> b!610905 (= lt!279518 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!610906 () Bool)

(declare-fun Unit!19581 () Unit!19576)

(assert (=> b!610906 (= e!350029 Unit!19581)))

(declare-fun lt!279522 () Unit!19576)

(assert (=> b!610906 (= lt!279522 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279509 (select (arr!17911 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!610906 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279519 () Unit!19576)

(assert (=> b!610906 (= lt!279519 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12002))))

(assert (=> b!610906 (arrayNoDuplicates!0 lt!279509 #b00000000000000000000000000000000 Nil!12002)))

(declare-fun lt!279520 () Unit!19576)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37334 (_ BitVec 32) (_ BitVec 32)) Unit!19576)

(assert (=> b!610906 (= lt!279520 (lemmaNoDuplicateFromThenFromBigger!0 lt!279509 #b00000000000000000000000000000000 j!136))))

(assert (=> b!610906 (arrayNoDuplicates!0 lt!279509 j!136 Nil!12002)))

(declare-fun lt!279511 () Unit!19576)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37334 (_ BitVec 64) (_ BitVec 32) List!12005) Unit!19576)

(assert (=> b!610906 (= lt!279511 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279509 (select (arr!17911 a!2986) j!136) j!136 Nil!12002))))

(assert (=> b!610906 false))

(declare-fun b!610907 () Bool)

(assert (=> b!610907 (= e!350018 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) index!984))))

(assert (= (and start!55808 res!393011) b!610887))

(assert (= (and b!610887 res!393006) b!610889))

(assert (= (and b!610889 res!393010) b!610882))

(assert (= (and b!610882 res!393003) b!610898))

(assert (= (and b!610898 res!393021) b!610905))

(assert (= (and b!610905 res!393013) b!610897))

(assert (= (and b!610897 res!393007) b!610886))

(assert (= (and b!610886 res!393008) b!610900))

(assert (= (and b!610900 res!393022) b!610888))

(assert (= (and b!610888 res!393004) b!610884))

(assert (= (and b!610884 res!393023) b!610893))

(assert (= (and b!610893 res!393015) b!610890))

(assert (= (and b!610893 c!69307) b!610894))

(assert (= (and b!610893 (not c!69307)) b!610902))

(assert (= (and b!610893 (not res!393014)) b!610883))

(assert (= (and b!610883 res!393002) b!610903))

(assert (= (and b!610903 (not res!393020)) b!610895))

(assert (= (and b!610895 res!393019) b!610892))

(assert (= (and b!610883 (not res!393016)) b!610896))

(assert (= (and b!610896 c!69308) b!610906))

(assert (= (and b!610896 (not c!69308)) b!610899))

(assert (= (and b!610896 (not res!393005)) b!610885))

(assert (= (and b!610885 res!393017) b!610907))

(assert (= (and b!610885 (not res!393009)) b!610904))

(assert (= (and b!610904 (not res!393018)) b!610891))

(assert (= (and b!610891 res!393012) b!610901))

(declare-fun m!587353 () Bool)

(assert (=> b!610905 m!587353))

(declare-fun m!587355 () Bool)

(assert (=> b!610891 m!587355))

(declare-fun m!587357 () Bool)

(assert (=> b!610907 m!587357))

(assert (=> b!610907 m!587357))

(declare-fun m!587359 () Bool)

(assert (=> b!610907 m!587359))

(assert (=> b!610903 m!587357))

(assert (=> b!610893 m!587357))

(declare-fun m!587361 () Bool)

(assert (=> b!610893 m!587361))

(declare-fun m!587363 () Bool)

(assert (=> b!610893 m!587363))

(declare-fun m!587365 () Bool)

(assert (=> b!610893 m!587365))

(assert (=> b!610893 m!587357))

(declare-fun m!587367 () Bool)

(assert (=> b!610893 m!587367))

(declare-fun m!587369 () Bool)

(assert (=> b!610893 m!587369))

(declare-fun m!587371 () Bool)

(assert (=> b!610893 m!587371))

(declare-fun m!587373 () Bool)

(assert (=> b!610893 m!587373))

(declare-fun m!587375 () Bool)

(assert (=> b!610886 m!587375))

(assert (=> b!610883 m!587357))

(assert (=> b!610883 m!587367))

(declare-fun m!587377 () Bool)

(assert (=> b!610883 m!587377))

(declare-fun m!587379 () Bool)

(assert (=> b!610897 m!587379))

(declare-fun m!587381 () Bool)

(assert (=> b!610882 m!587381))

(declare-fun m!587383 () Bool)

(assert (=> b!610898 m!587383))

(assert (=> b!610888 m!587367))

(declare-fun m!587385 () Bool)

(assert (=> b!610888 m!587385))

(declare-fun m!587387 () Bool)

(assert (=> b!610901 m!587387))

(declare-fun m!587389 () Bool)

(assert (=> b!610904 m!587389))

(declare-fun m!587391 () Bool)

(assert (=> b!610884 m!587391))

(assert (=> b!610884 m!587357))

(assert (=> b!610884 m!587357))

(declare-fun m!587393 () Bool)

(assert (=> b!610884 m!587393))

(assert (=> b!610889 m!587357))

(assert (=> b!610889 m!587357))

(declare-fun m!587395 () Bool)

(assert (=> b!610889 m!587395))

(assert (=> b!610892 m!587357))

(assert (=> b!610892 m!587357))

(assert (=> b!610892 m!587359))

(assert (=> b!610885 m!587357))

(declare-fun m!587397 () Bool)

(assert (=> b!610885 m!587397))

(assert (=> b!610885 m!587357))

(declare-fun m!587399 () Bool)

(assert (=> b!610885 m!587399))

(assert (=> b!610885 m!587357))

(declare-fun m!587401 () Bool)

(assert (=> b!610885 m!587401))

(assert (=> b!610885 m!587357))

(declare-fun m!587403 () Bool)

(assert (=> b!610885 m!587403))

(declare-fun m!587405 () Bool)

(assert (=> b!610885 m!587405))

(declare-fun m!587407 () Bool)

(assert (=> start!55808 m!587407))

(declare-fun m!587409 () Bool)

(assert (=> start!55808 m!587409))

(assert (=> b!610895 m!587357))

(assert (=> b!610895 m!587357))

(assert (=> b!610895 m!587399))

(declare-fun m!587411 () Bool)

(assert (=> b!610906 m!587411))

(declare-fun m!587413 () Bool)

(assert (=> b!610906 m!587413))

(assert (=> b!610906 m!587357))

(assert (=> b!610906 m!587357))

(declare-fun m!587415 () Bool)

(assert (=> b!610906 m!587415))

(assert (=> b!610906 m!587397))

(assert (=> b!610906 m!587357))

(declare-fun m!587417 () Bool)

(assert (=> b!610906 m!587417))

(assert (=> b!610906 m!587357))

(declare-fun m!587419 () Bool)

(assert (=> b!610906 m!587419))

(assert (=> b!610906 m!587405))

(declare-fun m!587421 () Bool)

(assert (=> b!610900 m!587421))

(check-sat (not b!610882) (not b!610897) (not b!610895) (not b!610904) (not b!610891) (not b!610885) (not b!610886) (not b!610892) (not start!55808) (not b!610901) (not b!610889) (not b!610898) (not b!610907) (not b!610884) (not b!610906) (not b!610905) (not b!610893))
(check-sat)
(get-model)

(declare-fun d!88271 () Bool)

(declare-fun res!393094 () Bool)

(declare-fun e!350088 () Bool)

(assert (=> d!88271 (=> res!393094 e!350088)))

(assert (=> d!88271 (= res!393094 (= (select (arr!17911 lt!279509) j!136) (select (arr!17911 a!2986) j!136)))))

(assert (=> d!88271 (= (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) j!136) e!350088)))

(declare-fun b!610990 () Bool)

(declare-fun e!350089 () Bool)

(assert (=> b!610990 (= e!350088 e!350089)))

(declare-fun res!393095 () Bool)

(assert (=> b!610990 (=> (not res!393095) (not e!350089))))

(assert (=> b!610990 (= res!393095 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18275 lt!279509)))))

(declare-fun b!610991 () Bool)

(assert (=> b!610991 (= e!350089 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88271 (not res!393094)) b!610990))

(assert (= (and b!610990 res!393095) b!610991))

(declare-fun m!587493 () Bool)

(assert (=> d!88271 m!587493))

(assert (=> b!610991 m!587357))

(declare-fun m!587495 () Bool)

(assert (=> b!610991 m!587495))

(assert (=> b!610895 d!88271))

(declare-fun d!88273 () Bool)

(assert (=> d!88273 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18275 lt!279509)) (not (= (select (arr!17911 lt!279509) j!136) (select (arr!17911 a!2986) j!136))))))

(declare-fun lt!279576 () Unit!19576)

(declare-fun choose!21 (array!37334 (_ BitVec 64) (_ BitVec 32) List!12005) Unit!19576)

(assert (=> d!88273 (= lt!279576 (choose!21 lt!279509 (select (arr!17911 a!2986) j!136) j!136 Nil!12002))))

(assert (=> d!88273 (bvslt (size!18275 lt!279509) #b01111111111111111111111111111111)))

(assert (=> d!88273 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279509 (select (arr!17911 a!2986) j!136) j!136 Nil!12002) lt!279576)))

(declare-fun bs!18641 () Bool)

(assert (= bs!18641 d!88273))

(assert (=> bs!18641 m!587493))

(assert (=> bs!18641 m!587357))

(declare-fun m!587497 () Bool)

(assert (=> bs!18641 m!587497))

(assert (=> b!610906 d!88273))

(declare-fun b!611002 () Bool)

(declare-fun e!350101 () Bool)

(declare-fun call!33155 () Bool)

(assert (=> b!611002 (= e!350101 call!33155)))

(declare-fun b!611003 () Bool)

(declare-fun e!350099 () Bool)

(assert (=> b!611003 (= e!350099 e!350101)))

(declare-fun c!69317 () Bool)

(assert (=> b!611003 (= c!69317 (validKeyInArray!0 (select (arr!17911 lt!279509) #b00000000000000000000000000000000)))))

(declare-fun b!611004 () Bool)

(declare-fun e!350098 () Bool)

(assert (=> b!611004 (= e!350098 e!350099)))

(declare-fun res!393104 () Bool)

(assert (=> b!611004 (=> (not res!393104) (not e!350099))))

(declare-fun e!350100 () Bool)

(assert (=> b!611004 (= res!393104 (not e!350100))))

(declare-fun res!393102 () Bool)

(assert (=> b!611004 (=> (not res!393102) (not e!350100))))

(assert (=> b!611004 (= res!393102 (validKeyInArray!0 (select (arr!17911 lt!279509) #b00000000000000000000000000000000)))))

(declare-fun b!611005 () Bool)

(assert (=> b!611005 (= e!350101 call!33155)))

(declare-fun bm!33152 () Bool)

(assert (=> bm!33152 (= call!33155 (arrayNoDuplicates!0 lt!279509 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69317 (Cons!12001 (select (arr!17911 lt!279509) #b00000000000000000000000000000000) Nil!12002) Nil!12002)))))

(declare-fun b!611006 () Bool)

(assert (=> b!611006 (= e!350100 (contains!3047 Nil!12002 (select (arr!17911 lt!279509) #b00000000000000000000000000000000)))))

(declare-fun d!88275 () Bool)

(declare-fun res!393103 () Bool)

(assert (=> d!88275 (=> res!393103 e!350098)))

(assert (=> d!88275 (= res!393103 (bvsge #b00000000000000000000000000000000 (size!18275 lt!279509)))))

(assert (=> d!88275 (= (arrayNoDuplicates!0 lt!279509 #b00000000000000000000000000000000 Nil!12002) e!350098)))

(assert (= (and d!88275 (not res!393103)) b!611004))

(assert (= (and b!611004 res!393102) b!611006))

(assert (= (and b!611004 res!393104) b!611003))

(assert (= (and b!611003 c!69317) b!611002))

(assert (= (and b!611003 (not c!69317)) b!611005))

(assert (= (or b!611002 b!611005) bm!33152))

(declare-fun m!587499 () Bool)

(assert (=> b!611003 m!587499))

(assert (=> b!611003 m!587499))

(declare-fun m!587501 () Bool)

(assert (=> b!611003 m!587501))

(assert (=> b!611004 m!587499))

(assert (=> b!611004 m!587499))

(assert (=> b!611004 m!587501))

(assert (=> bm!33152 m!587499))

(declare-fun m!587503 () Bool)

(assert (=> bm!33152 m!587503))

(assert (=> b!611006 m!587499))

(assert (=> b!611006 m!587499))

(declare-fun m!587505 () Bool)

(assert (=> b!611006 m!587505))

(assert (=> b!610906 d!88275))

(declare-fun d!88277 () Bool)

(declare-fun res!393105 () Bool)

(declare-fun e!350102 () Bool)

(assert (=> d!88277 (=> res!393105 e!350102)))

(assert (=> d!88277 (= res!393105 (= (select (arr!17911 lt!279509) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17911 a!2986) j!136)))))

(assert (=> d!88277 (= (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!350102)))

(declare-fun b!611007 () Bool)

(declare-fun e!350103 () Bool)

(assert (=> b!611007 (= e!350102 e!350103)))

(declare-fun res!393106 () Bool)

(assert (=> b!611007 (=> (not res!393106) (not e!350103))))

(assert (=> b!611007 (= res!393106 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18275 lt!279509)))))

(declare-fun b!611008 () Bool)

(assert (=> b!611008 (= e!350103 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88277 (not res!393105)) b!611007))

(assert (= (and b!611007 res!393106) b!611008))

(declare-fun m!587507 () Bool)

(assert (=> d!88277 m!587507))

(assert (=> b!611008 m!587357))

(declare-fun m!587509 () Bool)

(assert (=> b!611008 m!587509))

(assert (=> b!610906 d!88277))

(declare-fun b!611009 () Bool)

(declare-fun e!350107 () Bool)

(declare-fun call!33156 () Bool)

(assert (=> b!611009 (= e!350107 call!33156)))

(declare-fun b!611010 () Bool)

(declare-fun e!350105 () Bool)

(assert (=> b!611010 (= e!350105 e!350107)))

(declare-fun c!69318 () Bool)

(assert (=> b!611010 (= c!69318 (validKeyInArray!0 (select (arr!17911 lt!279509) j!136)))))

(declare-fun b!611011 () Bool)

(declare-fun e!350104 () Bool)

(assert (=> b!611011 (= e!350104 e!350105)))

(declare-fun res!393109 () Bool)

(assert (=> b!611011 (=> (not res!393109) (not e!350105))))

(declare-fun e!350106 () Bool)

(assert (=> b!611011 (= res!393109 (not e!350106))))

(declare-fun res!393107 () Bool)

(assert (=> b!611011 (=> (not res!393107) (not e!350106))))

(assert (=> b!611011 (= res!393107 (validKeyInArray!0 (select (arr!17911 lt!279509) j!136)))))

(declare-fun b!611012 () Bool)

(assert (=> b!611012 (= e!350107 call!33156)))

(declare-fun bm!33153 () Bool)

(assert (=> bm!33153 (= call!33156 (arrayNoDuplicates!0 lt!279509 (bvadd j!136 #b00000000000000000000000000000001) (ite c!69318 (Cons!12001 (select (arr!17911 lt!279509) j!136) Nil!12002) Nil!12002)))))

(declare-fun b!611013 () Bool)

(assert (=> b!611013 (= e!350106 (contains!3047 Nil!12002 (select (arr!17911 lt!279509) j!136)))))

(declare-fun d!88279 () Bool)

(declare-fun res!393108 () Bool)

(assert (=> d!88279 (=> res!393108 e!350104)))

(assert (=> d!88279 (= res!393108 (bvsge j!136 (size!18275 lt!279509)))))

(assert (=> d!88279 (= (arrayNoDuplicates!0 lt!279509 j!136 Nil!12002) e!350104)))

(assert (= (and d!88279 (not res!393108)) b!611011))

(assert (= (and b!611011 res!393107) b!611013))

(assert (= (and b!611011 res!393109) b!611010))

(assert (= (and b!611010 c!69318) b!611009))

(assert (= (and b!611010 (not c!69318)) b!611012))

(assert (= (or b!611009 b!611012) bm!33153))

(assert (=> b!611010 m!587493))

(assert (=> b!611010 m!587493))

(declare-fun m!587511 () Bool)

(assert (=> b!611010 m!587511))

(assert (=> b!611011 m!587493))

(assert (=> b!611011 m!587493))

(assert (=> b!611011 m!587511))

(assert (=> bm!33153 m!587493))

(declare-fun m!587513 () Bool)

(assert (=> bm!33153 m!587513))

(assert (=> b!611013 m!587493))

(assert (=> b!611013 m!587493))

(declare-fun m!587515 () Bool)

(assert (=> b!611013 m!587515))

(assert (=> b!610906 d!88279))

(declare-fun d!88281 () Bool)

(assert (=> d!88281 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279579 () Unit!19576)

(declare-fun choose!114 (array!37334 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19576)

(assert (=> d!88281 (= lt!279579 (choose!114 lt!279509 (select (arr!17911 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!88281 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!88281 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279509 (select (arr!17911 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!279579)))

(declare-fun bs!18642 () Bool)

(assert (= bs!18642 d!88281))

(assert (=> bs!18642 m!587357))

(assert (=> bs!18642 m!587415))

(assert (=> bs!18642 m!587357))

(declare-fun m!587517 () Bool)

(assert (=> bs!18642 m!587517))

(assert (=> b!610906 d!88281))

(declare-fun d!88283 () Bool)

(assert (=> d!88283 (arrayNoDuplicates!0 lt!279509 j!136 Nil!12002)))

(declare-fun lt!279582 () Unit!19576)

(declare-fun choose!39 (array!37334 (_ BitVec 32) (_ BitVec 32)) Unit!19576)

(assert (=> d!88283 (= lt!279582 (choose!39 lt!279509 #b00000000000000000000000000000000 j!136))))

(assert (=> d!88283 (bvslt (size!18275 lt!279509) #b01111111111111111111111111111111)))

(assert (=> d!88283 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!279509 #b00000000000000000000000000000000 j!136) lt!279582)))

(declare-fun bs!18643 () Bool)

(assert (= bs!18643 d!88283))

(assert (=> bs!18643 m!587411))

(declare-fun m!587519 () Bool)

(assert (=> bs!18643 m!587519))

(assert (=> b!610906 d!88283))

(declare-fun d!88285 () Bool)

(declare-fun e!350110 () Bool)

(assert (=> d!88285 e!350110))

(declare-fun res!393112 () Bool)

(assert (=> d!88285 (=> (not res!393112) (not e!350110))))

(assert (=> d!88285 (= res!393112 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18275 a!2986))))))

(declare-fun lt!279585 () Unit!19576)

(declare-fun choose!41 (array!37334 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12005) Unit!19576)

(assert (=> d!88285 (= lt!279585 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12002))))

(assert (=> d!88285 (bvslt (size!18275 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!88285 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12002) lt!279585)))

(declare-fun b!611016 () Bool)

(assert (=> b!611016 (= e!350110 (arrayNoDuplicates!0 (array!37335 (store (arr!17911 a!2986) i!1108 k0!1786) (size!18275 a!2986)) #b00000000000000000000000000000000 Nil!12002))))

(assert (= (and d!88285 res!393112) b!611016))

(declare-fun m!587521 () Bool)

(assert (=> d!88285 m!587521))

(assert (=> b!611016 m!587367))

(declare-fun m!587523 () Bool)

(assert (=> b!611016 m!587523))

(assert (=> b!610906 d!88285))

(assert (=> b!610885 d!88275))

(declare-fun d!88287 () Bool)

(assert (=> d!88287 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279586 () Unit!19576)

(assert (=> d!88287 (= lt!279586 (choose!114 lt!279509 (select (arr!17911 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!88287 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!88287 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279509 (select (arr!17911 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!279586)))

(declare-fun bs!18644 () Bool)

(assert (= bs!18644 d!88287))

(assert (=> bs!18644 m!587357))

(assert (=> bs!18644 m!587401))

(assert (=> bs!18644 m!587357))

(declare-fun m!587525 () Bool)

(assert (=> bs!18644 m!587525))

(assert (=> b!610885 d!88287))

(assert (=> b!610885 d!88271))

(assert (=> b!610885 d!88285))

(declare-fun d!88289 () Bool)

(declare-fun res!393113 () Bool)

(declare-fun e!350111 () Bool)

(assert (=> d!88289 (=> res!393113 e!350111)))

(assert (=> d!88289 (= res!393113 (= (select (arr!17911 lt!279509) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17911 a!2986) j!136)))))

(assert (=> d!88289 (= (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!350111)))

(declare-fun b!611017 () Bool)

(declare-fun e!350112 () Bool)

(assert (=> b!611017 (= e!350111 e!350112)))

(declare-fun res!393114 () Bool)

(assert (=> b!611017 (=> (not res!393114) (not e!350112))))

(assert (=> b!611017 (= res!393114 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18275 lt!279509)))))

(declare-fun b!611018 () Bool)

(assert (=> b!611018 (= e!350112 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88289 (not res!393113)) b!611017))

(assert (= (and b!611017 res!393114) b!611018))

(declare-fun m!587527 () Bool)

(assert (=> d!88289 m!587527))

(assert (=> b!611018 m!587357))

(declare-fun m!587529 () Bool)

(assert (=> b!611018 m!587529))

(assert (=> b!610885 d!88289))

(declare-fun b!611031 () Bool)

(declare-fun e!350120 () SeekEntryResult!6358)

(declare-fun e!350121 () SeekEntryResult!6358)

(assert (=> b!611031 (= e!350120 e!350121)))

(declare-fun lt!279595 () (_ BitVec 64))

(declare-fun lt!279593 () SeekEntryResult!6358)

(assert (=> b!611031 (= lt!279595 (select (arr!17911 a!2986) (index!27714 lt!279593)))))

(declare-fun c!69327 () Bool)

(assert (=> b!611031 (= c!69327 (= lt!279595 k0!1786))))

(declare-fun b!611032 () Bool)

(assert (=> b!611032 (= e!350120 Undefined!6358)))

(declare-fun d!88291 () Bool)

(declare-fun lt!279594 () SeekEntryResult!6358)

(get-info :version)

(assert (=> d!88291 (and (or ((_ is Undefined!6358) lt!279594) (not ((_ is Found!6358) lt!279594)) (and (bvsge (index!27713 lt!279594) #b00000000000000000000000000000000) (bvslt (index!27713 lt!279594) (size!18275 a!2986)))) (or ((_ is Undefined!6358) lt!279594) ((_ is Found!6358) lt!279594) (not ((_ is MissingZero!6358) lt!279594)) (and (bvsge (index!27712 lt!279594) #b00000000000000000000000000000000) (bvslt (index!27712 lt!279594) (size!18275 a!2986)))) (or ((_ is Undefined!6358) lt!279594) ((_ is Found!6358) lt!279594) ((_ is MissingZero!6358) lt!279594) (not ((_ is MissingVacant!6358) lt!279594)) (and (bvsge (index!27715 lt!279594) #b00000000000000000000000000000000) (bvslt (index!27715 lt!279594) (size!18275 a!2986)))) (or ((_ is Undefined!6358) lt!279594) (ite ((_ is Found!6358) lt!279594) (= (select (arr!17911 a!2986) (index!27713 lt!279594)) k0!1786) (ite ((_ is MissingZero!6358) lt!279594) (= (select (arr!17911 a!2986) (index!27712 lt!279594)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6358) lt!279594) (= (select (arr!17911 a!2986) (index!27715 lt!279594)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88291 (= lt!279594 e!350120)))

(declare-fun c!69326 () Bool)

(assert (=> d!88291 (= c!69326 (and ((_ is Intermediate!6358) lt!279593) (undefined!7170 lt!279593)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37334 (_ BitVec 32)) SeekEntryResult!6358)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88291 (= lt!279593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88291 (validMask!0 mask!3053)))

(assert (=> d!88291 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!279594)))

(declare-fun b!611033 () Bool)

(declare-fun e!350119 () SeekEntryResult!6358)

(assert (=> b!611033 (= e!350119 (seekKeyOrZeroReturnVacant!0 (x!56550 lt!279593) (index!27714 lt!279593) (index!27714 lt!279593) k0!1786 a!2986 mask!3053))))

(declare-fun b!611034 () Bool)

(declare-fun c!69325 () Bool)

(assert (=> b!611034 (= c!69325 (= lt!279595 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611034 (= e!350121 e!350119)))

(declare-fun b!611035 () Bool)

(assert (=> b!611035 (= e!350121 (Found!6358 (index!27714 lt!279593)))))

(declare-fun b!611036 () Bool)

(assert (=> b!611036 (= e!350119 (MissingZero!6358 (index!27714 lt!279593)))))

(assert (= (and d!88291 c!69326) b!611032))

(assert (= (and d!88291 (not c!69326)) b!611031))

(assert (= (and b!611031 c!69327) b!611035))

(assert (= (and b!611031 (not c!69327)) b!611034))

(assert (= (and b!611034 c!69325) b!611036))

(assert (= (and b!611034 (not c!69325)) b!611033))

(declare-fun m!587531 () Bool)

(assert (=> b!611031 m!587531))

(declare-fun m!587533 () Bool)

(assert (=> d!88291 m!587533))

(declare-fun m!587535 () Bool)

(assert (=> d!88291 m!587535))

(declare-fun m!587537 () Bool)

(assert (=> d!88291 m!587537))

(declare-fun m!587539 () Bool)

(assert (=> d!88291 m!587539))

(declare-fun m!587541 () Bool)

(assert (=> d!88291 m!587541))

(assert (=> d!88291 m!587533))

(assert (=> d!88291 m!587407))

(declare-fun m!587543 () Bool)

(assert (=> b!611033 m!587543))

(assert (=> b!610905 d!88291))

(declare-fun b!611067 () Bool)

(declare-fun e!350146 () SeekEntryResult!6358)

(assert (=> b!611067 (= e!350146 (MissingVacant!6358 vacantSpotIndex!68))))

(declare-fun b!611068 () Bool)

(declare-fun e!350148 () SeekEntryResult!6358)

(declare-fun e!350147 () SeekEntryResult!6358)

(assert (=> b!611068 (= e!350148 e!350147)))

(declare-fun lt!279607 () (_ BitVec 64))

(declare-fun c!69335 () Bool)

(assert (=> b!611068 (= c!69335 (= lt!279607 (select (arr!17911 a!2986) j!136)))))

(declare-fun b!611069 () Bool)

(assert (=> b!611069 (= e!350146 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17911 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!88293 () Bool)

(declare-fun lt!279606 () SeekEntryResult!6358)

(assert (=> d!88293 (and (or ((_ is Undefined!6358) lt!279606) (not ((_ is Found!6358) lt!279606)) (and (bvsge (index!27713 lt!279606) #b00000000000000000000000000000000) (bvslt (index!27713 lt!279606) (size!18275 a!2986)))) (or ((_ is Undefined!6358) lt!279606) ((_ is Found!6358) lt!279606) (not ((_ is MissingVacant!6358) lt!279606)) (not (= (index!27715 lt!279606) vacantSpotIndex!68)) (and (bvsge (index!27715 lt!279606) #b00000000000000000000000000000000) (bvslt (index!27715 lt!279606) (size!18275 a!2986)))) (or ((_ is Undefined!6358) lt!279606) (ite ((_ is Found!6358) lt!279606) (= (select (arr!17911 a!2986) (index!27713 lt!279606)) (select (arr!17911 a!2986) j!136)) (and ((_ is MissingVacant!6358) lt!279606) (= (index!27715 lt!279606) vacantSpotIndex!68) (= (select (arr!17911 a!2986) (index!27715 lt!279606)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88293 (= lt!279606 e!350148)))

(declare-fun c!69336 () Bool)

(assert (=> d!88293 (= c!69336 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88293 (= lt!279607 (select (arr!17911 a!2986) index!984))))

(assert (=> d!88293 (validMask!0 mask!3053)))

(assert (=> d!88293 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17911 a!2986) j!136) a!2986 mask!3053) lt!279606)))

(declare-fun b!611070 () Bool)

(declare-fun c!69334 () Bool)

(assert (=> b!611070 (= c!69334 (= lt!279607 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611070 (= e!350147 e!350146)))

(declare-fun b!611071 () Bool)

(assert (=> b!611071 (= e!350147 (Found!6358 index!984))))

(declare-fun b!611072 () Bool)

(assert (=> b!611072 (= e!350148 Undefined!6358)))

(assert (= (and d!88293 c!69336) b!611072))

(assert (= (and d!88293 (not c!69336)) b!611068))

(assert (= (and b!611068 c!69335) b!611071))

(assert (= (and b!611068 (not c!69335)) b!611070))

(assert (= (and b!611070 c!69334) b!611067))

(assert (= (and b!611070 (not c!69334)) b!611069))

(assert (=> b!611069 m!587363))

(assert (=> b!611069 m!587363))

(assert (=> b!611069 m!587357))

(declare-fun m!587561 () Bool)

(assert (=> b!611069 m!587561))

(declare-fun m!587563 () Bool)

(assert (=> d!88293 m!587563))

(declare-fun m!587565 () Bool)

(assert (=> d!88293 m!587565))

(assert (=> d!88293 m!587391))

(assert (=> d!88293 m!587407))

(assert (=> b!610884 d!88293))

(declare-fun d!88309 () Bool)

(assert (=> d!88309 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610882 d!88309))

(declare-fun b!611081 () Bool)

(declare-fun e!350155 () SeekEntryResult!6358)

(assert (=> b!611081 (= e!350155 (MissingVacant!6358 vacantSpotIndex!68))))

(declare-fun b!611082 () Bool)

(declare-fun e!350157 () SeekEntryResult!6358)

(declare-fun e!350156 () SeekEntryResult!6358)

(assert (=> b!611082 (= e!350157 e!350156)))

(declare-fun c!69340 () Bool)

(declare-fun lt!279615 () (_ BitVec 64))

(assert (=> b!611082 (= c!69340 (= lt!279615 lt!279514))))

(declare-fun b!611083 () Bool)

(assert (=> b!611083 (= e!350155 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!279514 lt!279509 mask!3053))))

(declare-fun lt!279614 () SeekEntryResult!6358)

(declare-fun d!88311 () Bool)

(assert (=> d!88311 (and (or ((_ is Undefined!6358) lt!279614) (not ((_ is Found!6358) lt!279614)) (and (bvsge (index!27713 lt!279614) #b00000000000000000000000000000000) (bvslt (index!27713 lt!279614) (size!18275 lt!279509)))) (or ((_ is Undefined!6358) lt!279614) ((_ is Found!6358) lt!279614) (not ((_ is MissingVacant!6358) lt!279614)) (not (= (index!27715 lt!279614) vacantSpotIndex!68)) (and (bvsge (index!27715 lt!279614) #b00000000000000000000000000000000) (bvslt (index!27715 lt!279614) (size!18275 lt!279509)))) (or ((_ is Undefined!6358) lt!279614) (ite ((_ is Found!6358) lt!279614) (= (select (arr!17911 lt!279509) (index!27713 lt!279614)) lt!279514) (and ((_ is MissingVacant!6358) lt!279614) (= (index!27715 lt!279614) vacantSpotIndex!68) (= (select (arr!17911 lt!279509) (index!27715 lt!279614)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88311 (= lt!279614 e!350157)))

(declare-fun c!69341 () Bool)

(assert (=> d!88311 (= c!69341 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88311 (= lt!279615 (select (arr!17911 lt!279509) index!984))))

(assert (=> d!88311 (validMask!0 mask!3053)))

(assert (=> d!88311 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279514 lt!279509 mask!3053) lt!279614)))

(declare-fun b!611084 () Bool)

(declare-fun c!69339 () Bool)

(assert (=> b!611084 (= c!69339 (= lt!279615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611084 (= e!350156 e!350155)))

(declare-fun b!611085 () Bool)

(assert (=> b!611085 (= e!350156 (Found!6358 index!984))))

(declare-fun b!611086 () Bool)

(assert (=> b!611086 (= e!350157 Undefined!6358)))

(assert (= (and d!88311 c!69341) b!611086))

(assert (= (and d!88311 (not c!69341)) b!611082))

(assert (= (and b!611082 c!69340) b!611085))

(assert (= (and b!611082 (not c!69340)) b!611084))

(assert (= (and b!611084 c!69339) b!611081))

(assert (= (and b!611084 (not c!69339)) b!611083))

(assert (=> b!611083 m!587363))

(assert (=> b!611083 m!587363))

(declare-fun m!587567 () Bool)

(assert (=> b!611083 m!587567))

(declare-fun m!587569 () Bool)

(assert (=> d!88311 m!587569))

(declare-fun m!587571 () Bool)

(assert (=> d!88311 m!587571))

(declare-fun m!587573 () Bool)

(assert (=> d!88311 m!587573))

(assert (=> d!88311 m!587407))

(assert (=> b!610893 d!88311))

(declare-fun d!88313 () Bool)

(declare-fun e!350178 () Bool)

(assert (=> d!88313 e!350178))

(declare-fun res!393147 () Bool)

(assert (=> d!88313 (=> (not res!393147) (not e!350178))))

(assert (=> d!88313 (= res!393147 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18275 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18275 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18275 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18275 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18275 a!2986))))))

(declare-fun lt!279627 () Unit!19576)

(declare-fun choose!9 (array!37334 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19576)

(assert (=> d!88313 (= lt!279627 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 mask!3053))))

(assert (=> d!88313 (validMask!0 mask!3053)))

(assert (=> d!88313 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 mask!3053) lt!279627)))

(declare-fun b!611117 () Bool)

(assert (=> b!611117 (= e!350178 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 (select (arr!17911 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 (select (store (arr!17911 a!2986) i!1108 k0!1786) j!136) (array!37335 (store (arr!17911 a!2986) i!1108 k0!1786) (size!18275 a!2986)) mask!3053)))))

(assert (= (and d!88313 res!393147) b!611117))

(declare-fun m!587601 () Bool)

(assert (=> d!88313 m!587601))

(assert (=> d!88313 m!587407))

(assert (=> b!611117 m!587367))

(assert (=> b!611117 m!587365))

(declare-fun m!587603 () Bool)

(assert (=> b!611117 m!587603))

(assert (=> b!611117 m!587365))

(assert (=> b!611117 m!587357))

(assert (=> b!611117 m!587361))

(assert (=> b!611117 m!587357))

(assert (=> b!610893 d!88313))

(declare-fun b!611118 () Bool)

(declare-fun e!350179 () SeekEntryResult!6358)

(assert (=> b!611118 (= e!350179 (MissingVacant!6358 vacantSpotIndex!68))))

(declare-fun b!611119 () Bool)

(declare-fun e!350181 () SeekEntryResult!6358)

(declare-fun e!350180 () SeekEntryResult!6358)

(assert (=> b!611119 (= e!350181 e!350180)))

(declare-fun lt!279631 () (_ BitVec 64))

(declare-fun c!69353 () Bool)

(assert (=> b!611119 (= c!69353 (= lt!279631 (select (arr!17911 a!2986) j!136)))))

(declare-fun b!611120 () Bool)

(assert (=> b!611120 (= e!350179 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279508 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17911 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!279630 () SeekEntryResult!6358)

(declare-fun d!88323 () Bool)

(assert (=> d!88323 (and (or ((_ is Undefined!6358) lt!279630) (not ((_ is Found!6358) lt!279630)) (and (bvsge (index!27713 lt!279630) #b00000000000000000000000000000000) (bvslt (index!27713 lt!279630) (size!18275 a!2986)))) (or ((_ is Undefined!6358) lt!279630) ((_ is Found!6358) lt!279630) (not ((_ is MissingVacant!6358) lt!279630)) (not (= (index!27715 lt!279630) vacantSpotIndex!68)) (and (bvsge (index!27715 lt!279630) #b00000000000000000000000000000000) (bvslt (index!27715 lt!279630) (size!18275 a!2986)))) (or ((_ is Undefined!6358) lt!279630) (ite ((_ is Found!6358) lt!279630) (= (select (arr!17911 a!2986) (index!27713 lt!279630)) (select (arr!17911 a!2986) j!136)) (and ((_ is MissingVacant!6358) lt!279630) (= (index!27715 lt!279630) vacantSpotIndex!68) (= (select (arr!17911 a!2986) (index!27715 lt!279630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88323 (= lt!279630 e!350181)))

(declare-fun c!69354 () Bool)

(assert (=> d!88323 (= c!69354 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88323 (= lt!279631 (select (arr!17911 a!2986) lt!279508))))

(assert (=> d!88323 (validMask!0 mask!3053)))

(assert (=> d!88323 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 (select (arr!17911 a!2986) j!136) a!2986 mask!3053) lt!279630)))

(declare-fun b!611121 () Bool)

(declare-fun c!69352 () Bool)

(assert (=> b!611121 (= c!69352 (= lt!279631 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611121 (= e!350180 e!350179)))

(declare-fun b!611122 () Bool)

(assert (=> b!611122 (= e!350180 (Found!6358 lt!279508))))

(declare-fun b!611123 () Bool)

(assert (=> b!611123 (= e!350181 Undefined!6358)))

(assert (= (and d!88323 c!69354) b!611123))

(assert (= (and d!88323 (not c!69354)) b!611119))

(assert (= (and b!611119 c!69353) b!611122))

(assert (= (and b!611119 (not c!69353)) b!611121))

(assert (= (and b!611121 c!69352) b!611118))

(assert (= (and b!611121 (not c!69352)) b!611120))

(declare-fun m!587605 () Bool)

(assert (=> b!611120 m!587605))

(assert (=> b!611120 m!587605))

(assert (=> b!611120 m!587357))

(declare-fun m!587607 () Bool)

(assert (=> b!611120 m!587607))

(declare-fun m!587609 () Bool)

(assert (=> d!88323 m!587609))

(declare-fun m!587613 () Bool)

(assert (=> d!88323 m!587613))

(declare-fun m!587615 () Bool)

(assert (=> d!88323 m!587615))

(assert (=> d!88323 m!587407))

(assert (=> b!610893 d!88323))

(declare-fun d!88327 () Bool)

(declare-fun lt!279643 () (_ BitVec 32))

(assert (=> d!88327 (and (bvsge lt!279643 #b00000000000000000000000000000000) (bvslt lt!279643 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88327 (= lt!279643 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88327 (validMask!0 mask!3053)))

(assert (=> d!88327 (= (nextIndex!0 index!984 x!910 mask!3053) lt!279643)))

(declare-fun bs!18646 () Bool)

(assert (= bs!18646 d!88327))

(declare-fun m!587633 () Bool)

(assert (=> bs!18646 m!587633))

(assert (=> bs!18646 m!587407))

(assert (=> b!610893 d!88327))

(declare-fun b!611148 () Bool)

(declare-fun e!350194 () SeekEntryResult!6358)

(assert (=> b!611148 (= e!350194 (MissingVacant!6358 vacantSpotIndex!68))))

(declare-fun b!611149 () Bool)

(declare-fun e!350196 () SeekEntryResult!6358)

(declare-fun e!350195 () SeekEntryResult!6358)

(assert (=> b!611149 (= e!350196 e!350195)))

(declare-fun c!69368 () Bool)

(declare-fun lt!279645 () (_ BitVec 64))

(assert (=> b!611149 (= c!69368 (= lt!279645 lt!279514))))

(declare-fun b!611150 () Bool)

(assert (=> b!611150 (= e!350194 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279508 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!279514 lt!279509 mask!3053))))

(declare-fun d!88333 () Bool)

(declare-fun lt!279644 () SeekEntryResult!6358)

(assert (=> d!88333 (and (or ((_ is Undefined!6358) lt!279644) (not ((_ is Found!6358) lt!279644)) (and (bvsge (index!27713 lt!279644) #b00000000000000000000000000000000) (bvslt (index!27713 lt!279644) (size!18275 lt!279509)))) (or ((_ is Undefined!6358) lt!279644) ((_ is Found!6358) lt!279644) (not ((_ is MissingVacant!6358) lt!279644)) (not (= (index!27715 lt!279644) vacantSpotIndex!68)) (and (bvsge (index!27715 lt!279644) #b00000000000000000000000000000000) (bvslt (index!27715 lt!279644) (size!18275 lt!279509)))) (or ((_ is Undefined!6358) lt!279644) (ite ((_ is Found!6358) lt!279644) (= (select (arr!17911 lt!279509) (index!27713 lt!279644)) lt!279514) (and ((_ is MissingVacant!6358) lt!279644) (= (index!27715 lt!279644) vacantSpotIndex!68) (= (select (arr!17911 lt!279509) (index!27715 lt!279644)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88333 (= lt!279644 e!350196)))

(declare-fun c!69369 () Bool)

(assert (=> d!88333 (= c!69369 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88333 (= lt!279645 (select (arr!17911 lt!279509) lt!279508))))

(assert (=> d!88333 (validMask!0 mask!3053)))

(assert (=> d!88333 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279508 vacantSpotIndex!68 lt!279514 lt!279509 mask!3053) lt!279644)))

(declare-fun b!611151 () Bool)

(declare-fun c!69367 () Bool)

(assert (=> b!611151 (= c!69367 (= lt!279645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611151 (= e!350195 e!350194)))

(declare-fun b!611152 () Bool)

(assert (=> b!611152 (= e!350195 (Found!6358 lt!279508))))

(declare-fun b!611153 () Bool)

(assert (=> b!611153 (= e!350196 Undefined!6358)))

(assert (= (and d!88333 c!69369) b!611153))

(assert (= (and d!88333 (not c!69369)) b!611149))

(assert (= (and b!611149 c!69368) b!611152))

(assert (= (and b!611149 (not c!69368)) b!611151))

(assert (= (and b!611151 c!69367) b!611148))

(assert (= (and b!611151 (not c!69367)) b!611150))

(assert (=> b!611150 m!587605))

(assert (=> b!611150 m!587605))

(declare-fun m!587635 () Bool)

(assert (=> b!611150 m!587635))

(declare-fun m!587637 () Bool)

(assert (=> d!88333 m!587637))

(declare-fun m!587639 () Bool)

(assert (=> d!88333 m!587639))

(declare-fun m!587641 () Bool)

(assert (=> d!88333 m!587641))

(assert (=> d!88333 m!587407))

(assert (=> b!610893 d!88333))

(declare-fun d!88335 () Bool)

(declare-fun res!393152 () Bool)

(declare-fun e!350204 () Bool)

(assert (=> d!88335 (=> res!393152 e!350204)))

(assert (=> d!88335 (= res!393152 ((_ is Nil!12002) Nil!12002))))

(assert (=> d!88335 (= (noDuplicate!347 Nil!12002) e!350204)))

(declare-fun b!611164 () Bool)

(declare-fun e!350205 () Bool)

(assert (=> b!611164 (= e!350204 e!350205)))

(declare-fun res!393153 () Bool)

(assert (=> b!611164 (=> (not res!393153) (not e!350205))))

(assert (=> b!611164 (= res!393153 (not (contains!3047 (t!18241 Nil!12002) (h!13046 Nil!12002))))))

(declare-fun b!611165 () Bool)

(assert (=> b!611165 (= e!350205 (noDuplicate!347 (t!18241 Nil!12002)))))

(assert (= (and d!88335 (not res!393152)) b!611164))

(assert (= (and b!611164 res!393153) b!611165))

(declare-fun m!587649 () Bool)

(assert (=> b!611164 m!587649))

(declare-fun m!587651 () Bool)

(assert (=> b!611165 m!587651))

(assert (=> b!610904 d!88335))

(declare-fun d!88339 () Bool)

(declare-fun lt!279650 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!242 (List!12005) (InoxSet (_ BitVec 64)))

(assert (=> d!88339 (= lt!279650 (select (content!242 Nil!12002) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!350211 () Bool)

(assert (=> d!88339 (= lt!279650 e!350211)))

(declare-fun res!393158 () Bool)

(assert (=> d!88339 (=> (not res!393158) (not e!350211))))

(assert (=> d!88339 (= res!393158 ((_ is Cons!12001) Nil!12002))))

(assert (=> d!88339 (= (contains!3047 Nil!12002 #b0000000000000000000000000000000000000000000000000000000000000000) lt!279650)))

(declare-fun b!611170 () Bool)

(declare-fun e!350210 () Bool)

(assert (=> b!611170 (= e!350211 e!350210)))

(declare-fun res!393159 () Bool)

(assert (=> b!611170 (=> res!393159 e!350210)))

(assert (=> b!611170 (= res!393159 (= (h!13046 Nil!12002) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!611171 () Bool)

(assert (=> b!611171 (= e!350210 (contains!3047 (t!18241 Nil!12002) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!88339 res!393158) b!611170))

(assert (= (and b!611170 (not res!393159)) b!611171))

(declare-fun m!587653 () Bool)

(assert (=> d!88339 m!587653))

(declare-fun m!587655 () Bool)

(assert (=> d!88339 m!587655))

(declare-fun m!587657 () Bool)

(assert (=> b!611171 m!587657))

(assert (=> b!610891 d!88339))

(declare-fun d!88341 () Bool)

(declare-fun res!393160 () Bool)

(declare-fun e!350212 () Bool)

(assert (=> d!88341 (=> res!393160 e!350212)))

(assert (=> d!88341 (= res!393160 (= (select (arr!17911 lt!279509) index!984) (select (arr!17911 a!2986) j!136)))))

(assert (=> d!88341 (= (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) index!984) e!350212)))

(declare-fun b!611172 () Bool)

(declare-fun e!350213 () Bool)

(assert (=> b!611172 (= e!350212 e!350213)))

(declare-fun res!393161 () Bool)

(assert (=> b!611172 (=> (not res!393161) (not e!350213))))

(assert (=> b!611172 (= res!393161 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18275 lt!279509)))))

(declare-fun b!611173 () Bool)

(assert (=> b!611173 (= e!350213 (arrayContainsKey!0 lt!279509 (select (arr!17911 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88341 (not res!393160)) b!611172))

(assert (= (and b!611172 res!393161) b!611173))

(assert (=> d!88341 m!587573))

(assert (=> b!611173 m!587357))

(declare-fun m!587659 () Bool)

(assert (=> b!611173 m!587659))

(assert (=> b!610892 d!88341))

(declare-fun d!88343 () Bool)

(assert (=> d!88343 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55808 d!88343))

(declare-fun d!88357 () Bool)

(assert (=> d!88357 (= (array_inv!13685 a!2986) (bvsge (size!18275 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55808 d!88357))

(declare-fun d!88359 () Bool)

(declare-fun lt!279657 () Bool)

(assert (=> d!88359 (= lt!279657 (select (content!242 Nil!12002) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!350232 () Bool)

(assert (=> d!88359 (= lt!279657 e!350232)))

(declare-fun res!393177 () Bool)

(assert (=> d!88359 (=> (not res!393177) (not e!350232))))

(assert (=> d!88359 (= res!393177 ((_ is Cons!12001) Nil!12002))))

(assert (=> d!88359 (= (contains!3047 Nil!12002 #b1000000000000000000000000000000000000000000000000000000000000000) lt!279657)))

(declare-fun b!611193 () Bool)

(declare-fun e!350231 () Bool)

(assert (=> b!611193 (= e!350232 e!350231)))

(declare-fun res!393178 () Bool)

(assert (=> b!611193 (=> res!393178 e!350231)))

(assert (=> b!611193 (= res!393178 (= (h!13046 Nil!12002) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!611194 () Bool)

(assert (=> b!611194 (= e!350231 (contains!3047 (t!18241 Nil!12002) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!88359 res!393177) b!611193))

(assert (= (and b!611193 (not res!393178)) b!611194))

(assert (=> d!88359 m!587653))

(declare-fun m!587673 () Bool)

(assert (=> d!88359 m!587673))

(declare-fun m!587675 () Bool)

(assert (=> b!611194 m!587675))

(assert (=> b!610901 d!88359))

(declare-fun d!88361 () Bool)

(assert (=> d!88361 (= (validKeyInArray!0 (select (arr!17911 a!2986) j!136)) (and (not (= (select (arr!17911 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17911 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610889 d!88361))

(declare-fun d!88363 () Bool)

(declare-fun res!393183 () Bool)

(declare-fun e!350239 () Bool)

(assert (=> d!88363 (=> res!393183 e!350239)))

(assert (=> d!88363 (= res!393183 (= (select (arr!17911 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88363 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!350239)))

(declare-fun b!611203 () Bool)

(declare-fun e!350240 () Bool)

(assert (=> b!611203 (= e!350239 e!350240)))

(declare-fun res!393184 () Bool)

(assert (=> b!611203 (=> (not res!393184) (not e!350240))))

(assert (=> b!611203 (= res!393184 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18275 a!2986)))))

(declare-fun b!611204 () Bool)

(assert (=> b!611204 (= e!350240 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88363 (not res!393183)) b!611203))

(assert (= (and b!611203 res!393184) b!611204))

(declare-fun m!587677 () Bool)

(assert (=> d!88363 m!587677))

(declare-fun m!587679 () Bool)

(assert (=> b!611204 m!587679))

(assert (=> b!610898 d!88363))

(assert (=> b!610907 d!88341))

(declare-fun b!611205 () Bool)

(declare-fun e!350244 () Bool)

(declare-fun call!33164 () Bool)

(assert (=> b!611205 (= e!350244 call!33164)))

(declare-fun b!611206 () Bool)

(declare-fun e!350242 () Bool)

(assert (=> b!611206 (= e!350242 e!350244)))

(declare-fun c!69377 () Bool)

(assert (=> b!611206 (= c!69377 (validKeyInArray!0 (select (arr!17911 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!611207 () Bool)

(declare-fun e!350241 () Bool)

(assert (=> b!611207 (= e!350241 e!350242)))

(declare-fun res!393187 () Bool)

(assert (=> b!611207 (=> (not res!393187) (not e!350242))))

(declare-fun e!350243 () Bool)

(assert (=> b!611207 (= res!393187 (not e!350243))))

(declare-fun res!393185 () Bool)

(assert (=> b!611207 (=> (not res!393185) (not e!350243))))

(assert (=> b!611207 (= res!393185 (validKeyInArray!0 (select (arr!17911 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!611208 () Bool)

(assert (=> b!611208 (= e!350244 call!33164)))

(declare-fun bm!33161 () Bool)

(assert (=> bm!33161 (= call!33164 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69377 (Cons!12001 (select (arr!17911 a!2986) #b00000000000000000000000000000000) Nil!12002) Nil!12002)))))

(declare-fun b!611209 () Bool)

(assert (=> b!611209 (= e!350243 (contains!3047 Nil!12002 (select (arr!17911 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88365 () Bool)

(declare-fun res!393186 () Bool)

(assert (=> d!88365 (=> res!393186 e!350241)))

(assert (=> d!88365 (= res!393186 (bvsge #b00000000000000000000000000000000 (size!18275 a!2986)))))

(assert (=> d!88365 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12002) e!350241)))

(assert (= (and d!88365 (not res!393186)) b!611207))

(assert (= (and b!611207 res!393185) b!611209))

(assert (= (and b!611207 res!393187) b!611206))

(assert (= (and b!611206 c!69377) b!611205))

(assert (= (and b!611206 (not c!69377)) b!611208))

(assert (= (or b!611205 b!611208) bm!33161))

(assert (=> b!611206 m!587677))

(assert (=> b!611206 m!587677))

(declare-fun m!587681 () Bool)

(assert (=> b!611206 m!587681))

(assert (=> b!611207 m!587677))

(assert (=> b!611207 m!587677))

(assert (=> b!611207 m!587681))

(assert (=> bm!33161 m!587677))

(declare-fun m!587683 () Bool)

(assert (=> bm!33161 m!587683))

(assert (=> b!611209 m!587677))

(assert (=> b!611209 m!587677))

(declare-fun m!587685 () Bool)

(assert (=> b!611209 m!587685))

(assert (=> b!610886 d!88365))

(declare-fun d!88367 () Bool)

(declare-fun res!393205 () Bool)

(declare-fun e!350269 () Bool)

(assert (=> d!88367 (=> res!393205 e!350269)))

(assert (=> d!88367 (= res!393205 (bvsge #b00000000000000000000000000000000 (size!18275 a!2986)))))

(assert (=> d!88367 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!350269)))

(declare-fun b!611241 () Bool)

(declare-fun e!350271 () Bool)

(declare-fun call!33169 () Bool)

(assert (=> b!611241 (= e!350271 call!33169)))

(declare-fun b!611242 () Bool)

(declare-fun e!350270 () Bool)

(assert (=> b!611242 (= e!350269 e!350270)))

(declare-fun c!69385 () Bool)

(assert (=> b!611242 (= c!69385 (validKeyInArray!0 (select (arr!17911 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!611243 () Bool)

(assert (=> b!611243 (= e!350270 e!350271)))

(declare-fun lt!279671 () (_ BitVec 64))

(assert (=> b!611243 (= lt!279671 (select (arr!17911 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!279670 () Unit!19576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37334 (_ BitVec 64) (_ BitVec 32)) Unit!19576)

(assert (=> b!611243 (= lt!279670 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!279671 #b00000000000000000000000000000000))))

(assert (=> b!611243 (arrayContainsKey!0 a!2986 lt!279671 #b00000000000000000000000000000000)))

(declare-fun lt!279669 () Unit!19576)

(assert (=> b!611243 (= lt!279669 lt!279670)))

(declare-fun res!393206 () Bool)

(assert (=> b!611243 (= res!393206 (= (seekEntryOrOpen!0 (select (arr!17911 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6358 #b00000000000000000000000000000000)))))

(assert (=> b!611243 (=> (not res!393206) (not e!350271))))

(declare-fun b!611244 () Bool)

(assert (=> b!611244 (= e!350270 call!33169)))

(declare-fun bm!33166 () Bool)

(assert (=> bm!33166 (= call!33169 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!88367 (not res!393205)) b!611242))

(assert (= (and b!611242 c!69385) b!611243))

(assert (= (and b!611242 (not c!69385)) b!611244))

(assert (= (and b!611243 res!393206) b!611241))

(assert (= (or b!611241 b!611244) bm!33166))

(assert (=> b!611242 m!587677))

(assert (=> b!611242 m!587677))

(assert (=> b!611242 m!587681))

(assert (=> b!611243 m!587677))

(declare-fun m!587711 () Bool)

(assert (=> b!611243 m!587711))

(declare-fun m!587713 () Bool)

(assert (=> b!611243 m!587713))

(assert (=> b!611243 m!587677))

(declare-fun m!587715 () Bool)

(assert (=> b!611243 m!587715))

(declare-fun m!587717 () Bool)

(assert (=> bm!33166 m!587717))

(assert (=> b!610897 d!88367))

(check-sat (not b!611016) (not d!88323) (not bm!33166) (not d!88339) (not b!611011) (not b!611164) (not b!611207) (not d!88293) (not d!88327) (not b!611173) (not d!88291) (not bm!33161) (not b!611117) (not b!611018) (not b!611206) (not bm!33152) (not b!611010) (not b!611120) (not b!611006) (not d!88313) (not d!88359) (not d!88285) (not b!611204) (not b!611165) (not b!611209) (not d!88333) (not b!611243) (not d!88281) (not b!611069) (not d!88273) (not b!611150) (not b!610991) (not b!611033) (not b!611004) (not b!611013) (not d!88311) (not b!611083) (not b!611008) (not d!88287) (not b!611003) (not d!88283) (not b!611171) (not b!611194) (not b!611242) (not bm!33153))
(check-sat)
