; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54896 () Bool)

(assert start!54896)

(declare-fun b!600347 () Bool)

(declare-fun e!343255 () Bool)

(declare-fun e!343257 () Bool)

(assert (=> b!600347 (= e!343255 (not e!343257))))

(declare-fun res!385412 () Bool)

(assert (=> b!600347 (=> res!385412 e!343257)))

(declare-datatypes ((SeekEntryResult!6250 0))(
  ( (MissingZero!6250 (index!27256 (_ BitVec 32))) (Found!6250 (index!27257 (_ BitVec 32))) (Intermediate!6250 (undefined!7062 Bool) (index!27258 (_ BitVec 32)) (x!56082 (_ BitVec 32))) (Undefined!6250) (MissingVacant!6250 (index!27259 (_ BitVec 32))) )
))
(declare-fun lt!273163 () SeekEntryResult!6250)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!600347 (= res!385412 (not (= lt!273163 (Found!6250 index!984))))))

(declare-datatypes ((Unit!18944 0))(
  ( (Unit!18945) )
))
(declare-fun lt!273174 () Unit!18944)

(declare-fun e!343253 () Unit!18944)

(assert (=> b!600347 (= lt!273174 e!343253)))

(declare-fun c!67841 () Bool)

(assert (=> b!600347 (= c!67841 (= lt!273163 Undefined!6250))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!273173 () (_ BitVec 64))

(declare-datatypes ((array!37094 0))(
  ( (array!37095 (arr!17803 (Array (_ BitVec 32) (_ BitVec 64))) (size!18167 (_ BitVec 32))) )
))
(declare-fun lt!273161 () array!37094)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37094 (_ BitVec 32)) SeekEntryResult!6250)

(assert (=> b!600347 (= lt!273163 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273173 lt!273161 mask!3053))))

(declare-fun e!343254 () Bool)

(assert (=> b!600347 e!343254))

(declare-fun res!385410 () Bool)

(assert (=> b!600347 (=> (not res!385410) (not e!343254))))

(declare-fun lt!273172 () SeekEntryResult!6250)

(declare-fun lt!273170 () (_ BitVec 32))

(assert (=> b!600347 (= res!385410 (= lt!273172 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273170 vacantSpotIndex!68 lt!273173 lt!273161 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37094)

(assert (=> b!600347 (= lt!273172 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273170 vacantSpotIndex!68 (select (arr!17803 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!600347 (= lt!273173 (select (store (arr!17803 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!273162 () Unit!18944)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37094 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18944)

(assert (=> b!600347 (= lt!273162 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273170 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600347 (= lt!273170 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600348 () Bool)

(declare-fun res!385400 () Bool)

(declare-fun e!343256 () Bool)

(assert (=> b!600348 (=> (not res!385400) (not e!343256))))

(declare-datatypes ((List!11897 0))(
  ( (Nil!11894) (Cons!11893 (h!12938 (_ BitVec 64)) (t!18133 List!11897)) )
))
(declare-fun arrayNoDuplicates!0 (array!37094 (_ BitVec 32) List!11897) Bool)

(assert (=> b!600348 (= res!385400 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11894))))

(declare-fun b!600349 () Bool)

(declare-fun Unit!18946 () Unit!18944)

(assert (=> b!600349 (= e!343253 Unit!18946)))

(assert (=> b!600349 false))

(declare-fun b!600350 () Bool)

(declare-fun e!343258 () Bool)

(declare-fun e!343246 () Bool)

(assert (=> b!600350 (= e!343258 e!343246)))

(declare-fun res!385417 () Bool)

(assert (=> b!600350 (=> res!385417 e!343246)))

(declare-fun lt!273168 () (_ BitVec 64))

(assert (=> b!600350 (= res!385417 (or (not (= (select (arr!17803 a!2986) j!136) lt!273173)) (not (= (select (arr!17803 a!2986) j!136) lt!273168)) (bvsge j!136 index!984)))))

(declare-fun b!600351 () Bool)

(declare-fun e!343251 () Bool)

(assert (=> b!600351 (= e!343256 e!343251)))

(declare-fun res!385408 () Bool)

(assert (=> b!600351 (=> (not res!385408) (not e!343251))))

(assert (=> b!600351 (= res!385408 (= (select (store (arr!17803 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600351 (= lt!273161 (array!37095 (store (arr!17803 a!2986) i!1108 k0!1786) (size!18167 a!2986)))))

(declare-fun b!600352 () Bool)

(declare-fun e!343248 () Bool)

(declare-fun e!343247 () Bool)

(assert (=> b!600352 (= e!343248 e!343247)))

(declare-fun res!385414 () Bool)

(assert (=> b!600352 (=> res!385414 e!343247)))

(assert (=> b!600352 (= res!385414 (or (bvsge (size!18167 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18167 a!2986))))))

(assert (=> b!600352 (arrayNoDuplicates!0 lt!273161 j!136 Nil!11894)))

(declare-fun lt!273171 () Unit!18944)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37094 (_ BitVec 32) (_ BitVec 32)) Unit!18944)

(assert (=> b!600352 (= lt!273171 (lemmaNoDuplicateFromThenFromBigger!0 lt!273161 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600352 (arrayNoDuplicates!0 lt!273161 #b00000000000000000000000000000000 Nil!11894)))

(declare-fun lt!273167 () Unit!18944)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37094 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11897) Unit!18944)

(assert (=> b!600352 (= lt!273167 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11894))))

(declare-fun arrayContainsKey!0 (array!37094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600352 (arrayContainsKey!0 lt!273161 (select (arr!17803 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273166 () Unit!18944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37094 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18944)

(assert (=> b!600352 (= lt!273166 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273161 (select (arr!17803 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600353 () Bool)

(declare-fun Unit!18947 () Unit!18944)

(assert (=> b!600353 (= e!343253 Unit!18947)))

(declare-fun b!600354 () Bool)

(declare-fun lt!273164 () SeekEntryResult!6250)

(assert (=> b!600354 (= e!343254 (= lt!273164 lt!273172))))

(declare-fun b!600355 () Bool)

(declare-fun e!343252 () Bool)

(assert (=> b!600355 (= e!343246 e!343252)))

(declare-fun res!385409 () Bool)

(assert (=> b!600355 (=> (not res!385409) (not e!343252))))

(assert (=> b!600355 (= res!385409 (arrayContainsKey!0 lt!273161 (select (arr!17803 a!2986) j!136) j!136))))

(declare-fun b!600356 () Bool)

(declare-fun res!385415 () Bool)

(assert (=> b!600356 (=> res!385415 e!343247)))

(declare-fun contains!2982 (List!11897 (_ BitVec 64)) Bool)

(assert (=> b!600356 (= res!385415 (contains!2982 Nil!11894 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600357 () Bool)

(declare-fun res!385405 () Bool)

(declare-fun e!343249 () Bool)

(assert (=> b!600357 (=> (not res!385405) (not e!343249))))

(assert (=> b!600357 (= res!385405 (and (= (size!18167 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18167 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18167 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!385402 () Bool)

(assert (=> start!54896 (=> (not res!385402) (not e!343249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54896 (= res!385402 (validMask!0 mask!3053))))

(assert (=> start!54896 e!343249))

(assert (=> start!54896 true))

(declare-fun array_inv!13577 (array!37094) Bool)

(assert (=> start!54896 (array_inv!13577 a!2986)))

(declare-fun b!600358 () Bool)

(assert (=> b!600358 (= e!343251 e!343255)))

(declare-fun res!385411 () Bool)

(assert (=> b!600358 (=> (not res!385411) (not e!343255))))

(assert (=> b!600358 (= res!385411 (and (= lt!273164 (Found!6250 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17803 a!2986) index!984) (select (arr!17803 a!2986) j!136))) (not (= (select (arr!17803 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600358 (= lt!273164 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17803 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600359 () Bool)

(declare-fun res!385399 () Bool)

(assert (=> b!600359 (=> (not res!385399) (not e!343256))))

(assert (=> b!600359 (= res!385399 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17803 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600360 () Bool)

(declare-fun res!385416 () Bool)

(assert (=> b!600360 (=> (not res!385416) (not e!343249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600360 (= res!385416 (validKeyInArray!0 (select (arr!17803 a!2986) j!136)))))

(declare-fun b!600361 () Bool)

(assert (=> b!600361 (= e!343247 true)))

(declare-fun lt!273165 () Bool)

(assert (=> b!600361 (= lt!273165 (contains!2982 Nil!11894 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600362 () Bool)

(assert (=> b!600362 (= e!343257 e!343248)))

(declare-fun res!385404 () Bool)

(assert (=> b!600362 (=> res!385404 e!343248)))

(assert (=> b!600362 (= res!385404 (or (not (= (select (arr!17803 a!2986) j!136) lt!273173)) (not (= (select (arr!17803 a!2986) j!136) lt!273168)) (bvsge j!136 index!984)))))

(assert (=> b!600362 e!343258))

(declare-fun res!385401 () Bool)

(assert (=> b!600362 (=> (not res!385401) (not e!343258))))

(assert (=> b!600362 (= res!385401 (= lt!273168 (select (arr!17803 a!2986) j!136)))))

(assert (=> b!600362 (= lt!273168 (select (store (arr!17803 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!600363 () Bool)

(declare-fun res!385403 () Bool)

(assert (=> b!600363 (=> (not res!385403) (not e!343256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37094 (_ BitVec 32)) Bool)

(assert (=> b!600363 (= res!385403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600364 () Bool)

(declare-fun res!385418 () Bool)

(assert (=> b!600364 (=> (not res!385418) (not e!343249))))

(assert (=> b!600364 (= res!385418 (validKeyInArray!0 k0!1786))))

(declare-fun b!600365 () Bool)

(declare-fun res!385406 () Bool)

(assert (=> b!600365 (=> res!385406 e!343247)))

(declare-fun noDuplicate!296 (List!11897) Bool)

(assert (=> b!600365 (= res!385406 (not (noDuplicate!296 Nil!11894)))))

(declare-fun b!600366 () Bool)

(assert (=> b!600366 (= e!343249 e!343256)))

(declare-fun res!385413 () Bool)

(assert (=> b!600366 (=> (not res!385413) (not e!343256))))

(declare-fun lt!273169 () SeekEntryResult!6250)

(assert (=> b!600366 (= res!385413 (or (= lt!273169 (MissingZero!6250 i!1108)) (= lt!273169 (MissingVacant!6250 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37094 (_ BitVec 32)) SeekEntryResult!6250)

(assert (=> b!600366 (= lt!273169 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!600367 () Bool)

(assert (=> b!600367 (= e!343252 (arrayContainsKey!0 lt!273161 (select (arr!17803 a!2986) j!136) index!984))))

(declare-fun b!600368 () Bool)

(declare-fun res!385407 () Bool)

(assert (=> b!600368 (=> (not res!385407) (not e!343249))))

(assert (=> b!600368 (= res!385407 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!54896 res!385402) b!600357))

(assert (= (and b!600357 res!385405) b!600360))

(assert (= (and b!600360 res!385416) b!600364))

(assert (= (and b!600364 res!385418) b!600368))

(assert (= (and b!600368 res!385407) b!600366))

(assert (= (and b!600366 res!385413) b!600363))

(assert (= (and b!600363 res!385403) b!600348))

(assert (= (and b!600348 res!385400) b!600359))

(assert (= (and b!600359 res!385399) b!600351))

(assert (= (and b!600351 res!385408) b!600358))

(assert (= (and b!600358 res!385411) b!600347))

(assert (= (and b!600347 res!385410) b!600354))

(assert (= (and b!600347 c!67841) b!600349))

(assert (= (and b!600347 (not c!67841)) b!600353))

(assert (= (and b!600347 (not res!385412)) b!600362))

(assert (= (and b!600362 res!385401) b!600350))

(assert (= (and b!600350 (not res!385417)) b!600355))

(assert (= (and b!600355 res!385409) b!600367))

(assert (= (and b!600362 (not res!385404)) b!600352))

(assert (= (and b!600352 (not res!385414)) b!600365))

(assert (= (and b!600365 (not res!385406)) b!600356))

(assert (= (and b!600356 (not res!385415)) b!600361))

(declare-fun m!577615 () Bool)

(assert (=> b!600352 m!577615))

(declare-fun m!577617 () Bool)

(assert (=> b!600352 m!577617))

(declare-fun m!577619 () Bool)

(assert (=> b!600352 m!577619))

(assert (=> b!600352 m!577617))

(declare-fun m!577621 () Bool)

(assert (=> b!600352 m!577621))

(assert (=> b!600352 m!577617))

(declare-fun m!577623 () Bool)

(assert (=> b!600352 m!577623))

(declare-fun m!577625 () Bool)

(assert (=> b!600352 m!577625))

(declare-fun m!577627 () Bool)

(assert (=> b!600352 m!577627))

(assert (=> b!600350 m!577617))

(declare-fun m!577629 () Bool)

(assert (=> b!600351 m!577629))

(declare-fun m!577631 () Bool)

(assert (=> b!600351 m!577631))

(declare-fun m!577633 () Bool)

(assert (=> b!600366 m!577633))

(declare-fun m!577635 () Bool)

(assert (=> b!600348 m!577635))

(declare-fun m!577637 () Bool)

(assert (=> b!600364 m!577637))

(declare-fun m!577639 () Bool)

(assert (=> b!600347 m!577639))

(declare-fun m!577641 () Bool)

(assert (=> b!600347 m!577641))

(assert (=> b!600347 m!577617))

(assert (=> b!600347 m!577629))

(declare-fun m!577643 () Bool)

(assert (=> b!600347 m!577643))

(declare-fun m!577645 () Bool)

(assert (=> b!600347 m!577645))

(declare-fun m!577647 () Bool)

(assert (=> b!600347 m!577647))

(assert (=> b!600347 m!577617))

(declare-fun m!577649 () Bool)

(assert (=> b!600347 m!577649))

(declare-fun m!577651 () Bool)

(assert (=> start!54896 m!577651))

(declare-fun m!577653 () Bool)

(assert (=> start!54896 m!577653))

(declare-fun m!577655 () Bool)

(assert (=> b!600363 m!577655))

(declare-fun m!577657 () Bool)

(assert (=> b!600365 m!577657))

(assert (=> b!600362 m!577617))

(assert (=> b!600362 m!577629))

(declare-fun m!577659 () Bool)

(assert (=> b!600362 m!577659))

(assert (=> b!600367 m!577617))

(assert (=> b!600367 m!577617))

(declare-fun m!577661 () Bool)

(assert (=> b!600367 m!577661))

(declare-fun m!577663 () Bool)

(assert (=> b!600358 m!577663))

(assert (=> b!600358 m!577617))

(assert (=> b!600358 m!577617))

(declare-fun m!577665 () Bool)

(assert (=> b!600358 m!577665))

(declare-fun m!577667 () Bool)

(assert (=> b!600356 m!577667))

(assert (=> b!600355 m!577617))

(assert (=> b!600355 m!577617))

(declare-fun m!577669 () Bool)

(assert (=> b!600355 m!577669))

(assert (=> b!600360 m!577617))

(assert (=> b!600360 m!577617))

(declare-fun m!577671 () Bool)

(assert (=> b!600360 m!577671))

(declare-fun m!577673 () Bool)

(assert (=> b!600359 m!577673))

(declare-fun m!577675 () Bool)

(assert (=> b!600361 m!577675))

(declare-fun m!577677 () Bool)

(assert (=> b!600368 m!577677))

(check-sat (not b!600352) (not b!600347) (not b!600361) (not b!600366) (not b!600360) (not b!600358) (not b!600355) (not b!600356) (not b!600365) (not b!600368) (not b!600348) (not start!54896) (not b!600363) (not b!600364) (not b!600367))
(check-sat)
