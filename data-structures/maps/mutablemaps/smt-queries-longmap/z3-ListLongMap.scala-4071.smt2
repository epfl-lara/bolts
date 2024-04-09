; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55934 () Bool)

(assert start!55934)

(declare-fun b!612304 () Bool)

(declare-fun e!350977 () Bool)

(declare-fun e!350972 () Bool)

(assert (=> b!612304 (= e!350977 e!350972)))

(declare-fun res!394041 () Bool)

(assert (=> b!612304 (=> (not res!394041) (not e!350972))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37367 0))(
  ( (array!37368 (arr!17926 (Array (_ BitVec 32) (_ BitVec 64))) (size!18290 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37367)

(assert (=> b!612304 (= res!394041 (= (select (store (arr!17926 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!280441 () array!37367)

(assert (=> b!612304 (= lt!280441 (array!37368 (store (arr!17926 a!2986) i!1108 k0!1786) (size!18290 a!2986)))))

(declare-fun b!612305 () Bool)

(declare-datatypes ((Unit!19666 0))(
  ( (Unit!19667) )
))
(declare-fun e!350975 () Unit!19666)

(declare-fun Unit!19668 () Unit!19666)

(assert (=> b!612305 (= e!350975 Unit!19668)))

(assert (=> b!612305 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!350970 () Bool)

(declare-fun b!612306 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612306 (= e!350970 (arrayContainsKey!0 lt!280441 (select (arr!17926 a!2986) j!136) index!984))))

(declare-fun b!612307 () Bool)

(declare-fun res!394045 () Bool)

(declare-fun e!350983 () Bool)

(assert (=> b!612307 (=> (not res!394045) (not e!350983))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!612307 (= res!394045 (and (= (size!18290 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18290 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18290 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612308 () Bool)

(declare-fun res!394047 () Bool)

(assert (=> b!612308 (=> (not res!394047) (not e!350983))))

(assert (=> b!612308 (= res!394047 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!394036 () Bool)

(assert (=> start!55934 (=> (not res!394036) (not e!350983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55934 (= res!394036 (validMask!0 mask!3053))))

(assert (=> start!55934 e!350983))

(assert (=> start!55934 true))

(declare-fun array_inv!13700 (array!37367) Bool)

(assert (=> start!55934 (array_inv!13700 a!2986)))

(declare-fun b!612309 () Bool)

(assert (=> b!612309 (= e!350983 e!350977)))

(declare-fun res!394050 () Bool)

(assert (=> b!612309 (=> (not res!394050) (not e!350977))))

(declare-datatypes ((SeekEntryResult!6373 0))(
  ( (MissingZero!6373 (index!27775 (_ BitVec 32))) (Found!6373 (index!27776 (_ BitVec 32))) (Intermediate!6373 (undefined!7185 Bool) (index!27777 (_ BitVec 32)) (x!56614 (_ BitVec 32))) (Undefined!6373) (MissingVacant!6373 (index!27778 (_ BitVec 32))) )
))
(declare-fun lt!280443 () SeekEntryResult!6373)

(assert (=> b!612309 (= res!394050 (or (= lt!280443 (MissingZero!6373 i!1108)) (= lt!280443 (MissingVacant!6373 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37367 (_ BitVec 32)) SeekEntryResult!6373)

(assert (=> b!612309 (= lt!280443 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!612310 () Bool)

(declare-fun res!394042 () Bool)

(assert (=> b!612310 (=> (not res!394042) (not e!350983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612310 (= res!394042 (validKeyInArray!0 k0!1786))))

(declare-fun b!612311 () Bool)

(declare-fun e!350981 () Bool)

(declare-fun e!350978 () Bool)

(assert (=> b!612311 (= e!350981 e!350978)))

(declare-fun res!394039 () Bool)

(assert (=> b!612311 (=> res!394039 e!350978)))

(declare-fun lt!280431 () (_ BitVec 64))

(declare-fun lt!280436 () (_ BitVec 64))

(assert (=> b!612311 (= res!394039 (or (not (= (select (arr!17926 a!2986) j!136) lt!280436)) (not (= (select (arr!17926 a!2986) j!136) lt!280431))))))

(declare-fun e!350973 () Bool)

(assert (=> b!612311 e!350973))

(declare-fun res!394046 () Bool)

(assert (=> b!612311 (=> (not res!394046) (not e!350973))))

(assert (=> b!612311 (= res!394046 (= lt!280431 (select (arr!17926 a!2986) j!136)))))

(assert (=> b!612311 (= lt!280431 (select (store (arr!17926 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!612312 () Bool)

(declare-fun res!394044 () Bool)

(assert (=> b!612312 (=> (not res!394044) (not e!350977))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!612312 (= res!394044 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17926 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612313 () Bool)

(declare-fun e!350980 () Bool)

(assert (=> b!612313 (= e!350972 e!350980)))

(declare-fun res!394035 () Bool)

(assert (=> b!612313 (=> (not res!394035) (not e!350980))))

(declare-fun lt!280440 () SeekEntryResult!6373)

(assert (=> b!612313 (= res!394035 (and (= lt!280440 (Found!6373 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17926 a!2986) index!984) (select (arr!17926 a!2986) j!136))) (not (= (select (arr!17926 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37367 (_ BitVec 32)) SeekEntryResult!6373)

(assert (=> b!612313 (= lt!280440 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17926 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!612314 () Bool)

(declare-fun res!394048 () Bool)

(assert (=> b!612314 (=> (not res!394048) (not e!350977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37367 (_ BitVec 32)) Bool)

(assert (=> b!612314 (= res!394048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612315 () Bool)

(declare-fun e!350979 () Bool)

(assert (=> b!612315 (= e!350973 e!350979)))

(declare-fun res!394040 () Bool)

(assert (=> b!612315 (=> res!394040 e!350979)))

(assert (=> b!612315 (= res!394040 (or (not (= (select (arr!17926 a!2986) j!136) lt!280436)) (not (= (select (arr!17926 a!2986) j!136) lt!280431)) (bvsge j!136 index!984)))))

(declare-fun e!350969 () Bool)

(declare-fun b!612316 () Bool)

(assert (=> b!612316 (= e!350969 (arrayContainsKey!0 lt!280441 (select (arr!17926 a!2986) j!136) index!984))))

(declare-fun b!612317 () Bool)

(assert (=> b!612317 (= e!350980 (not e!350981))))

(declare-fun res!394052 () Bool)

(assert (=> b!612317 (=> res!394052 e!350981)))

(declare-fun lt!280438 () SeekEntryResult!6373)

(assert (=> b!612317 (= res!394052 (not (= lt!280438 (Found!6373 index!984))))))

(declare-fun lt!280435 () Unit!19666)

(assert (=> b!612317 (= lt!280435 e!350975)))

(declare-fun c!69503 () Bool)

(assert (=> b!612317 (= c!69503 (= lt!280438 Undefined!6373))))

(assert (=> b!612317 (= lt!280438 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280436 lt!280441 mask!3053))))

(declare-fun e!350971 () Bool)

(assert (=> b!612317 e!350971))

(declare-fun res!394034 () Bool)

(assert (=> b!612317 (=> (not res!394034) (not e!350971))))

(declare-fun lt!280437 () SeekEntryResult!6373)

(declare-fun lt!280445 () (_ BitVec 32))

(assert (=> b!612317 (= res!394034 (= lt!280437 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280445 vacantSpotIndex!68 lt!280436 lt!280441 mask!3053)))))

(assert (=> b!612317 (= lt!280437 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280445 vacantSpotIndex!68 (select (arr!17926 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612317 (= lt!280436 (select (store (arr!17926 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!280430 () Unit!19666)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37367 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19666)

(assert (=> b!612317 (= lt!280430 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280445 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612317 (= lt!280445 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!612318 () Bool)

(assert (=> b!612318 (= e!350971 (= lt!280440 lt!280437))))

(declare-fun b!612319 () Bool)

(declare-fun e!350974 () Unit!19666)

(declare-fun Unit!19669 () Unit!19666)

(assert (=> b!612319 (= e!350974 Unit!19669)))

(declare-fun lt!280446 () Unit!19666)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37367 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19666)

(assert (=> b!612319 (= lt!280446 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280441 (select (arr!17926 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!612319 (arrayContainsKey!0 lt!280441 (select (arr!17926 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280442 () Unit!19666)

(declare-datatypes ((List!12020 0))(
  ( (Nil!12017) (Cons!12016 (h!13061 (_ BitVec 64)) (t!18256 List!12020)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37367 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12020) Unit!19666)

(assert (=> b!612319 (= lt!280442 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12017))))

(declare-fun arrayNoDuplicates!0 (array!37367 (_ BitVec 32) List!12020) Bool)

(assert (=> b!612319 (arrayNoDuplicates!0 lt!280441 #b00000000000000000000000000000000 Nil!12017)))

(declare-fun lt!280444 () Unit!19666)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37367 (_ BitVec 32) (_ BitVec 32)) Unit!19666)

(assert (=> b!612319 (= lt!280444 (lemmaNoDuplicateFromThenFromBigger!0 lt!280441 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612319 (arrayNoDuplicates!0 lt!280441 j!136 Nil!12017)))

(declare-fun lt!280433 () Unit!19666)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37367 (_ BitVec 64) (_ BitVec 32) List!12020) Unit!19666)

(assert (=> b!612319 (= lt!280433 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280441 (select (arr!17926 a!2986) j!136) j!136 Nil!12017))))

(assert (=> b!612319 false))

(declare-fun b!612320 () Bool)

(declare-fun Unit!19670 () Unit!19666)

(assert (=> b!612320 (= e!350974 Unit!19670)))

(declare-fun b!612321 () Bool)

(assert (=> b!612321 (= e!350979 e!350970)))

(declare-fun res!394049 () Bool)

(assert (=> b!612321 (=> (not res!394049) (not e!350970))))

(assert (=> b!612321 (= res!394049 (arrayContainsKey!0 lt!280441 (select (arr!17926 a!2986) j!136) j!136))))

(declare-fun b!612322 () Bool)

(declare-fun e!350976 () Bool)

(assert (=> b!612322 (= e!350978 e!350976)))

(declare-fun res!394038 () Bool)

(assert (=> b!612322 (=> res!394038 e!350976)))

(assert (=> b!612322 (= res!394038 (bvsge index!984 j!136))))

(declare-fun lt!280434 () Unit!19666)

(assert (=> b!612322 (= lt!280434 e!350974)))

(declare-fun c!69502 () Bool)

(assert (=> b!612322 (= c!69502 (bvslt j!136 index!984))))

(declare-fun b!612323 () Bool)

(declare-fun Unit!19671 () Unit!19666)

(assert (=> b!612323 (= e!350975 Unit!19671)))

(declare-fun b!612324 () Bool)

(assert (=> b!612324 (= e!350976 true)))

(assert (=> b!612324 (arrayNoDuplicates!0 lt!280441 #b00000000000000000000000000000000 Nil!12017)))

(declare-fun lt!280439 () Unit!19666)

(assert (=> b!612324 (= lt!280439 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12017))))

(assert (=> b!612324 (arrayContainsKey!0 lt!280441 (select (arr!17926 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280432 () Unit!19666)

(assert (=> b!612324 (= lt!280432 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280441 (select (arr!17926 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!612324 e!350969))

(declare-fun res!394051 () Bool)

(assert (=> b!612324 (=> (not res!394051) (not e!350969))))

(assert (=> b!612324 (= res!394051 (arrayContainsKey!0 lt!280441 (select (arr!17926 a!2986) j!136) j!136))))

(declare-fun b!612325 () Bool)

(declare-fun res!394037 () Bool)

(assert (=> b!612325 (=> (not res!394037) (not e!350983))))

(assert (=> b!612325 (= res!394037 (validKeyInArray!0 (select (arr!17926 a!2986) j!136)))))

(declare-fun b!612326 () Bool)

(declare-fun res!394043 () Bool)

(assert (=> b!612326 (=> (not res!394043) (not e!350977))))

(assert (=> b!612326 (= res!394043 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12017))))

(assert (= (and start!55934 res!394036) b!612307))

(assert (= (and b!612307 res!394045) b!612325))

(assert (= (and b!612325 res!394037) b!612310))

(assert (= (and b!612310 res!394042) b!612308))

(assert (= (and b!612308 res!394047) b!612309))

(assert (= (and b!612309 res!394050) b!612314))

(assert (= (and b!612314 res!394048) b!612326))

(assert (= (and b!612326 res!394043) b!612312))

(assert (= (and b!612312 res!394044) b!612304))

(assert (= (and b!612304 res!394041) b!612313))

(assert (= (and b!612313 res!394035) b!612317))

(assert (= (and b!612317 res!394034) b!612318))

(assert (= (and b!612317 c!69503) b!612305))

(assert (= (and b!612317 (not c!69503)) b!612323))

(assert (= (and b!612317 (not res!394052)) b!612311))

(assert (= (and b!612311 res!394046) b!612315))

(assert (= (and b!612315 (not res!394040)) b!612321))

(assert (= (and b!612321 res!394049) b!612306))

(assert (= (and b!612311 (not res!394039)) b!612322))

(assert (= (and b!612322 c!69502) b!612319))

(assert (= (and b!612322 (not c!69502)) b!612320))

(assert (= (and b!612322 (not res!394038)) b!612324))

(assert (= (and b!612324 res!394051) b!612316))

(declare-fun m!588697 () Bool)

(assert (=> b!612311 m!588697))

(declare-fun m!588699 () Bool)

(assert (=> b!612311 m!588699))

(declare-fun m!588701 () Bool)

(assert (=> b!612311 m!588701))

(declare-fun m!588703 () Bool)

(assert (=> b!612312 m!588703))

(assert (=> b!612315 m!588697))

(declare-fun m!588705 () Bool)

(assert (=> b!612308 m!588705))

(declare-fun m!588707 () Bool)

(assert (=> b!612313 m!588707))

(assert (=> b!612313 m!588697))

(assert (=> b!612313 m!588697))

(declare-fun m!588709 () Bool)

(assert (=> b!612313 m!588709))

(assert (=> b!612306 m!588697))

(assert (=> b!612306 m!588697))

(declare-fun m!588711 () Bool)

(assert (=> b!612306 m!588711))

(declare-fun m!588713 () Bool)

(assert (=> b!612309 m!588713))

(declare-fun m!588715 () Bool)

(assert (=> b!612317 m!588715))

(declare-fun m!588717 () Bool)

(assert (=> b!612317 m!588717))

(assert (=> b!612317 m!588697))

(assert (=> b!612317 m!588699))

(declare-fun m!588719 () Bool)

(assert (=> b!612317 m!588719))

(assert (=> b!612317 m!588697))

(declare-fun m!588721 () Bool)

(assert (=> b!612317 m!588721))

(declare-fun m!588723 () Bool)

(assert (=> b!612317 m!588723))

(declare-fun m!588725 () Bool)

(assert (=> b!612317 m!588725))

(assert (=> b!612304 m!588699))

(declare-fun m!588727 () Bool)

(assert (=> b!612304 m!588727))

(assert (=> b!612321 m!588697))

(assert (=> b!612321 m!588697))

(declare-fun m!588729 () Bool)

(assert (=> b!612321 m!588729))

(assert (=> b!612316 m!588697))

(assert (=> b!612316 m!588697))

(assert (=> b!612316 m!588711))

(declare-fun m!588731 () Bool)

(assert (=> b!612314 m!588731))

(assert (=> b!612324 m!588697))

(declare-fun m!588733 () Bool)

(assert (=> b!612324 m!588733))

(assert (=> b!612324 m!588697))

(assert (=> b!612324 m!588697))

(assert (=> b!612324 m!588729))

(declare-fun m!588735 () Bool)

(assert (=> b!612324 m!588735))

(assert (=> b!612324 m!588697))

(declare-fun m!588737 () Bool)

(assert (=> b!612324 m!588737))

(declare-fun m!588739 () Bool)

(assert (=> b!612324 m!588739))

(declare-fun m!588741 () Bool)

(assert (=> b!612310 m!588741))

(declare-fun m!588743 () Bool)

(assert (=> start!55934 m!588743))

(declare-fun m!588745 () Bool)

(assert (=> start!55934 m!588745))

(assert (=> b!612325 m!588697))

(assert (=> b!612325 m!588697))

(declare-fun m!588747 () Bool)

(assert (=> b!612325 m!588747))

(assert (=> b!612319 m!588697))

(assert (=> b!612319 m!588697))

(declare-fun m!588749 () Bool)

(assert (=> b!612319 m!588749))

(assert (=> b!612319 m!588697))

(declare-fun m!588751 () Bool)

(assert (=> b!612319 m!588751))

(assert (=> b!612319 m!588739))

(assert (=> b!612319 m!588735))

(declare-fun m!588753 () Bool)

(assert (=> b!612319 m!588753))

(assert (=> b!612319 m!588697))

(declare-fun m!588755 () Bool)

(assert (=> b!612319 m!588755))

(declare-fun m!588757 () Bool)

(assert (=> b!612319 m!588757))

(declare-fun m!588759 () Bool)

(assert (=> b!612326 m!588759))

(check-sat (not b!612306) (not b!612324) (not b!612310) (not b!612317) (not b!612321) (not b!612309) (not start!55934) (not b!612319) (not b!612326) (not b!612316) (not b!612314) (not b!612313) (not b!612325) (not b!612308))
(check-sat)
