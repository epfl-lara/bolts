; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54926 () Bool)

(assert start!54926)

(declare-fun b!601314 () Bool)

(declare-datatypes ((Unit!19018 0))(
  ( (Unit!19019) )
))
(declare-fun e!343836 () Unit!19018)

(declare-fun Unit!19020 () Unit!19018)

(assert (=> b!601314 (= e!343836 Unit!19020)))

(declare-fun b!601315 () Bool)

(declare-fun e!343835 () Bool)

(declare-fun e!343838 () Bool)

(assert (=> b!601315 (= e!343835 e!343838)))

(declare-fun res!386235 () Bool)

(assert (=> b!601315 (=> (not res!386235) (not e!343838))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6265 0))(
  ( (MissingZero!6265 (index!27316 (_ BitVec 32))) (Found!6265 (index!27317 (_ BitVec 32))) (Intermediate!6265 (undefined!7077 Bool) (index!27318 (_ BitVec 32)) (x!56137 (_ BitVec 32))) (Undefined!6265) (MissingVacant!6265 (index!27319 (_ BitVec 32))) )
))
(declare-fun lt!273821 () SeekEntryResult!6265)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37124 0))(
  ( (array!37125 (arr!17818 (Array (_ BitVec 32) (_ BitVec 64))) (size!18182 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37124)

(assert (=> b!601315 (= res!386235 (and (= lt!273821 (Found!6265 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17818 a!2986) index!984) (select (arr!17818 a!2986) j!136))) (not (= (select (arr!17818 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37124 (_ BitVec 32)) SeekEntryResult!6265)

(assert (=> b!601315 (= lt!273821 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17818 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601316 () Bool)

(declare-fun e!343839 () Bool)

(declare-fun lt!273815 () SeekEntryResult!6265)

(assert (=> b!601316 (= e!343839 (= lt!273821 lt!273815))))

(declare-fun b!601318 () Bool)

(declare-fun res!386230 () Bool)

(declare-fun e!343832 () Bool)

(assert (=> b!601318 (=> (not res!386230) (not e!343832))))

(assert (=> b!601318 (= res!386230 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17818 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601319 () Bool)

(declare-fun e!343834 () Unit!19018)

(declare-fun Unit!19021 () Unit!19018)

(assert (=> b!601319 (= e!343834 Unit!19021)))

(declare-fun b!601320 () Bool)

(declare-fun res!386233 () Bool)

(assert (=> b!601320 (=> (not res!386233) (not e!343832))))

(declare-datatypes ((List!11912 0))(
  ( (Nil!11909) (Cons!11908 (h!12953 (_ BitVec 64)) (t!18148 List!11912)) )
))
(declare-fun arrayNoDuplicates!0 (array!37124 (_ BitVec 32) List!11912) Bool)

(assert (=> b!601320 (= res!386233 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11909))))

(declare-fun b!601321 () Bool)

(declare-fun Unit!19022 () Unit!19018)

(assert (=> b!601321 (= e!343836 Unit!19022)))

(declare-fun lt!273817 () Unit!19018)

(declare-fun lt!273820 () array!37124)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37124 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19018)

(assert (=> b!601321 (= lt!273817 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273820 (select (arr!17818 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601321 (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!273816 () Unit!19018)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37124 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11912) Unit!19018)

(assert (=> b!601321 (= lt!273816 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11909))))

(assert (=> b!601321 (arrayNoDuplicates!0 lt!273820 #b00000000000000000000000000000000 Nil!11909)))

(declare-fun lt!273814 () Unit!19018)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37124 (_ BitVec 32) (_ BitVec 32)) Unit!19018)

(assert (=> b!601321 (= lt!273814 (lemmaNoDuplicateFromThenFromBigger!0 lt!273820 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601321 (arrayNoDuplicates!0 lt!273820 j!136 Nil!11909)))

(declare-fun lt!273826 () Unit!19018)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37124 (_ BitVec 64) (_ BitVec 32) List!11912) Unit!19018)

(assert (=> b!601321 (= lt!273826 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273820 (select (arr!17818 a!2986) j!136) j!136 Nil!11909))))

(assert (=> b!601321 false))

(declare-fun b!601322 () Bool)

(declare-fun e!343842 () Bool)

(declare-fun e!343833 () Bool)

(assert (=> b!601322 (= e!343842 e!343833)))

(declare-fun res!386245 () Bool)

(assert (=> b!601322 (=> (not res!386245) (not e!343833))))

(assert (=> b!601322 (= res!386245 (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) j!136))))

(declare-fun b!601323 () Bool)

(declare-fun res!386239 () Bool)

(declare-fun e!343843 () Bool)

(assert (=> b!601323 (=> (not res!386239) (not e!343843))))

(assert (=> b!601323 (= res!386239 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun e!343831 () Bool)

(declare-fun b!601324 () Bool)

(assert (=> b!601324 (= e!343831 (or (bvsge index!984 j!136) (bvslt (size!18182 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!273823 () Unit!19018)

(assert (=> b!601324 (= lt!273823 e!343836)))

(declare-fun c!67910 () Bool)

(assert (=> b!601324 (= c!67910 (bvslt j!136 index!984))))

(declare-fun b!601325 () Bool)

(declare-fun res!386242 () Bool)

(assert (=> b!601325 (=> (not res!386242) (not e!343832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37124 (_ BitVec 32)) Bool)

(assert (=> b!601325 (= res!386242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601326 () Bool)

(declare-fun Unit!19023 () Unit!19018)

(assert (=> b!601326 (= e!343834 Unit!19023)))

(assert (=> b!601326 false))

(declare-fun b!601317 () Bool)

(declare-fun res!386236 () Bool)

(assert (=> b!601317 (=> (not res!386236) (not e!343843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601317 (= res!386236 (validKeyInArray!0 k0!1786))))

(declare-fun res!386237 () Bool)

(assert (=> start!54926 (=> (not res!386237) (not e!343843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54926 (= res!386237 (validMask!0 mask!3053))))

(assert (=> start!54926 e!343843))

(assert (=> start!54926 true))

(declare-fun array_inv!13592 (array!37124) Bool)

(assert (=> start!54926 (array_inv!13592 a!2986)))

(declare-fun b!601327 () Bool)

(declare-fun res!386232 () Bool)

(assert (=> b!601327 (=> (not res!386232) (not e!343843))))

(assert (=> b!601327 (= res!386232 (and (= (size!18182 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18182 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18182 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601328 () Bool)

(declare-fun e!343840 () Bool)

(assert (=> b!601328 (= e!343840 e!343831)))

(declare-fun res!386243 () Bool)

(assert (=> b!601328 (=> res!386243 e!343831)))

(declare-fun lt!273818 () (_ BitVec 64))

(declare-fun lt!273822 () (_ BitVec 64))

(assert (=> b!601328 (= res!386243 (or (not (= (select (arr!17818 a!2986) j!136) lt!273822)) (not (= (select (arr!17818 a!2986) j!136) lt!273818))))))

(declare-fun e!343837 () Bool)

(assert (=> b!601328 e!343837))

(declare-fun res!386234 () Bool)

(assert (=> b!601328 (=> (not res!386234) (not e!343837))))

(assert (=> b!601328 (= res!386234 (= lt!273818 (select (arr!17818 a!2986) j!136)))))

(assert (=> b!601328 (= lt!273818 (select (store (arr!17818 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!601329 () Bool)

(assert (=> b!601329 (= e!343833 (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) index!984))))

(declare-fun b!601330 () Bool)

(assert (=> b!601330 (= e!343838 (not e!343840))))

(declare-fun res!386244 () Bool)

(assert (=> b!601330 (=> res!386244 e!343840)))

(declare-fun lt!273819 () SeekEntryResult!6265)

(assert (=> b!601330 (= res!386244 (not (= lt!273819 (Found!6265 index!984))))))

(declare-fun lt!273825 () Unit!19018)

(assert (=> b!601330 (= lt!273825 e!343834)))

(declare-fun c!67909 () Bool)

(assert (=> b!601330 (= c!67909 (= lt!273819 Undefined!6265))))

(assert (=> b!601330 (= lt!273819 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273822 lt!273820 mask!3053))))

(assert (=> b!601330 e!343839))

(declare-fun res!386246 () Bool)

(assert (=> b!601330 (=> (not res!386246) (not e!343839))))

(declare-fun lt!273827 () (_ BitVec 32))

(assert (=> b!601330 (= res!386246 (= lt!273815 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 lt!273822 lt!273820 mask!3053)))))

(assert (=> b!601330 (= lt!273815 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 (select (arr!17818 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601330 (= lt!273822 (select (store (arr!17818 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!273828 () Unit!19018)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37124 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19018)

(assert (=> b!601330 (= lt!273828 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601330 (= lt!273827 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601331 () Bool)

(declare-fun res!386231 () Bool)

(assert (=> b!601331 (=> (not res!386231) (not e!343843))))

(assert (=> b!601331 (= res!386231 (validKeyInArray!0 (select (arr!17818 a!2986) j!136)))))

(declare-fun b!601332 () Bool)

(assert (=> b!601332 (= e!343832 e!343835)))

(declare-fun res!386240 () Bool)

(assert (=> b!601332 (=> (not res!386240) (not e!343835))))

(assert (=> b!601332 (= res!386240 (= (select (store (arr!17818 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601332 (= lt!273820 (array!37125 (store (arr!17818 a!2986) i!1108 k0!1786) (size!18182 a!2986)))))

(declare-fun b!601333 () Bool)

(assert (=> b!601333 (= e!343843 e!343832)))

(declare-fun res!386241 () Bool)

(assert (=> b!601333 (=> (not res!386241) (not e!343832))))

(declare-fun lt!273824 () SeekEntryResult!6265)

(assert (=> b!601333 (= res!386241 (or (= lt!273824 (MissingZero!6265 i!1108)) (= lt!273824 (MissingVacant!6265 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37124 (_ BitVec 32)) SeekEntryResult!6265)

(assert (=> b!601333 (= lt!273824 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!601334 () Bool)

(assert (=> b!601334 (= e!343837 e!343842)))

(declare-fun res!386238 () Bool)

(assert (=> b!601334 (=> res!386238 e!343842)))

(assert (=> b!601334 (= res!386238 (or (not (= (select (arr!17818 a!2986) j!136) lt!273822)) (not (= (select (arr!17818 a!2986) j!136) lt!273818)) (bvsge j!136 index!984)))))

(assert (= (and start!54926 res!386237) b!601327))

(assert (= (and b!601327 res!386232) b!601331))

(assert (= (and b!601331 res!386231) b!601317))

(assert (= (and b!601317 res!386236) b!601323))

(assert (= (and b!601323 res!386239) b!601333))

(assert (= (and b!601333 res!386241) b!601325))

(assert (= (and b!601325 res!386242) b!601320))

(assert (= (and b!601320 res!386233) b!601318))

(assert (= (and b!601318 res!386230) b!601332))

(assert (= (and b!601332 res!386240) b!601315))

(assert (= (and b!601315 res!386235) b!601330))

(assert (= (and b!601330 res!386246) b!601316))

(assert (= (and b!601330 c!67909) b!601326))

(assert (= (and b!601330 (not c!67909)) b!601319))

(assert (= (and b!601330 (not res!386244)) b!601328))

(assert (= (and b!601328 res!386234) b!601334))

(assert (= (and b!601334 (not res!386238)) b!601322))

(assert (= (and b!601322 res!386245) b!601329))

(assert (= (and b!601328 (not res!386243)) b!601324))

(assert (= (and b!601324 c!67910) b!601321))

(assert (= (and b!601324 (not c!67910)) b!601314))

(declare-fun m!578547 () Bool)

(assert (=> start!54926 m!578547))

(declare-fun m!578549 () Bool)

(assert (=> start!54926 m!578549))

(declare-fun m!578551 () Bool)

(assert (=> b!601315 m!578551))

(declare-fun m!578553 () Bool)

(assert (=> b!601315 m!578553))

(assert (=> b!601315 m!578553))

(declare-fun m!578555 () Bool)

(assert (=> b!601315 m!578555))

(assert (=> b!601328 m!578553))

(declare-fun m!578557 () Bool)

(assert (=> b!601328 m!578557))

(declare-fun m!578559 () Bool)

(assert (=> b!601328 m!578559))

(assert (=> b!601329 m!578553))

(assert (=> b!601329 m!578553))

(declare-fun m!578561 () Bool)

(assert (=> b!601329 m!578561))

(declare-fun m!578563 () Bool)

(assert (=> b!601325 m!578563))

(declare-fun m!578565 () Bool)

(assert (=> b!601320 m!578565))

(assert (=> b!601334 m!578553))

(assert (=> b!601332 m!578557))

(declare-fun m!578567 () Bool)

(assert (=> b!601332 m!578567))

(assert (=> b!601331 m!578553))

(assert (=> b!601331 m!578553))

(declare-fun m!578569 () Bool)

(assert (=> b!601331 m!578569))

(declare-fun m!578571 () Bool)

(assert (=> b!601333 m!578571))

(declare-fun m!578573 () Bool)

(assert (=> b!601317 m!578573))

(assert (=> b!601322 m!578553))

(assert (=> b!601322 m!578553))

(declare-fun m!578575 () Bool)

(assert (=> b!601322 m!578575))

(assert (=> b!601321 m!578553))

(declare-fun m!578577 () Bool)

(assert (=> b!601321 m!578577))

(declare-fun m!578579 () Bool)

(assert (=> b!601321 m!578579))

(assert (=> b!601321 m!578553))

(assert (=> b!601321 m!578553))

(declare-fun m!578581 () Bool)

(assert (=> b!601321 m!578581))

(assert (=> b!601321 m!578553))

(declare-fun m!578583 () Bool)

(assert (=> b!601321 m!578583))

(declare-fun m!578585 () Bool)

(assert (=> b!601321 m!578585))

(declare-fun m!578587 () Bool)

(assert (=> b!601321 m!578587))

(declare-fun m!578589 () Bool)

(assert (=> b!601321 m!578589))

(declare-fun m!578591 () Bool)

(assert (=> b!601318 m!578591))

(declare-fun m!578593 () Bool)

(assert (=> b!601330 m!578593))

(declare-fun m!578595 () Bool)

(assert (=> b!601330 m!578595))

(assert (=> b!601330 m!578553))

(assert (=> b!601330 m!578553))

(declare-fun m!578597 () Bool)

(assert (=> b!601330 m!578597))

(declare-fun m!578599 () Bool)

(assert (=> b!601330 m!578599))

(declare-fun m!578601 () Bool)

(assert (=> b!601330 m!578601))

(declare-fun m!578603 () Bool)

(assert (=> b!601330 m!578603))

(assert (=> b!601330 m!578557))

(declare-fun m!578605 () Bool)

(assert (=> b!601323 m!578605))

(check-sat (not b!601323) (not b!601333) (not b!601322) (not b!601321) (not b!601315) (not b!601330) (not b!601329) (not b!601331) (not b!601325) (not b!601320) (not b!601317) (not start!54926))
(check-sat)
(get-model)

(declare-fun d!87003 () Bool)

(assert (=> d!87003 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!601317 d!87003))

(declare-fun d!87005 () Bool)

(declare-fun res!386302 () Bool)

(declare-fun e!343887 () Bool)

(assert (=> d!87005 (=> res!386302 e!343887)))

(assert (=> d!87005 (= res!386302 (= (select (arr!17818 lt!273820) index!984) (select (arr!17818 a!2986) j!136)))))

(assert (=> d!87005 (= (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) index!984) e!343887)))

(declare-fun b!601402 () Bool)

(declare-fun e!343888 () Bool)

(assert (=> b!601402 (= e!343887 e!343888)))

(declare-fun res!386303 () Bool)

(assert (=> b!601402 (=> (not res!386303) (not e!343888))))

(assert (=> b!601402 (= res!386303 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18182 lt!273820)))))

(declare-fun b!601403 () Bool)

(assert (=> b!601403 (= e!343888 (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87005 (not res!386302)) b!601402))

(assert (= (and b!601402 res!386303) b!601403))

(declare-fun m!578667 () Bool)

(assert (=> d!87005 m!578667))

(assert (=> b!601403 m!578553))

(declare-fun m!578669 () Bool)

(assert (=> b!601403 m!578669))

(assert (=> b!601329 d!87005))

(declare-fun b!601416 () Bool)

(declare-fun e!343897 () SeekEntryResult!6265)

(assert (=> b!601416 (= e!343897 Undefined!6265)))

(declare-fun b!601417 () Bool)

(declare-fun e!343895 () SeekEntryResult!6265)

(assert (=> b!601417 (= e!343897 e!343895)))

(declare-fun lt!273879 () (_ BitVec 64))

(declare-fun c!67923 () Bool)

(assert (=> b!601417 (= c!67923 (= lt!273879 (select (arr!17818 a!2986) j!136)))))

(declare-fun e!343896 () SeekEntryResult!6265)

(declare-fun b!601418 () Bool)

(assert (=> b!601418 (= e!343896 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17818 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601419 () Bool)

(assert (=> b!601419 (= e!343895 (Found!6265 index!984))))

(declare-fun b!601421 () Bool)

(assert (=> b!601421 (= e!343896 (MissingVacant!6265 vacantSpotIndex!68))))

(declare-fun b!601420 () Bool)

(declare-fun c!67924 () Bool)

(assert (=> b!601420 (= c!67924 (= lt!273879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601420 (= e!343895 e!343896)))

(declare-fun d!87007 () Bool)

(declare-fun lt!273878 () SeekEntryResult!6265)

(get-info :version)

(assert (=> d!87007 (and (or ((_ is Undefined!6265) lt!273878) (not ((_ is Found!6265) lt!273878)) (and (bvsge (index!27317 lt!273878) #b00000000000000000000000000000000) (bvslt (index!27317 lt!273878) (size!18182 a!2986)))) (or ((_ is Undefined!6265) lt!273878) ((_ is Found!6265) lt!273878) (not ((_ is MissingVacant!6265) lt!273878)) (not (= (index!27319 lt!273878) vacantSpotIndex!68)) (and (bvsge (index!27319 lt!273878) #b00000000000000000000000000000000) (bvslt (index!27319 lt!273878) (size!18182 a!2986)))) (or ((_ is Undefined!6265) lt!273878) (ite ((_ is Found!6265) lt!273878) (= (select (arr!17818 a!2986) (index!27317 lt!273878)) (select (arr!17818 a!2986) j!136)) (and ((_ is MissingVacant!6265) lt!273878) (= (index!27319 lt!273878) vacantSpotIndex!68) (= (select (arr!17818 a!2986) (index!27319 lt!273878)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87007 (= lt!273878 e!343897)))

(declare-fun c!67925 () Bool)

(assert (=> d!87007 (= c!67925 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87007 (= lt!273879 (select (arr!17818 a!2986) index!984))))

(assert (=> d!87007 (validMask!0 mask!3053)))

(assert (=> d!87007 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17818 a!2986) j!136) a!2986 mask!3053) lt!273878)))

(assert (= (and d!87007 c!67925) b!601416))

(assert (= (and d!87007 (not c!67925)) b!601417))

(assert (= (and b!601417 c!67923) b!601419))

(assert (= (and b!601417 (not c!67923)) b!601420))

(assert (= (and b!601420 c!67924) b!601421))

(assert (= (and b!601420 (not c!67924)) b!601418))

(assert (=> b!601418 m!578593))

(assert (=> b!601418 m!578593))

(assert (=> b!601418 m!578553))

(declare-fun m!578671 () Bool)

(assert (=> b!601418 m!578671))

(declare-fun m!578673 () Bool)

(assert (=> d!87007 m!578673))

(declare-fun m!578675 () Bool)

(assert (=> d!87007 m!578675))

(assert (=> d!87007 m!578551))

(assert (=> d!87007 m!578547))

(assert (=> b!601315 d!87007))

(declare-fun b!601430 () Bool)

(declare-fun e!343905 () Bool)

(declare-fun e!343906 () Bool)

(assert (=> b!601430 (= e!343905 e!343906)))

(declare-fun lt!273886 () (_ BitVec 64))

(assert (=> b!601430 (= lt!273886 (select (arr!17818 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!273888 () Unit!19018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37124 (_ BitVec 64) (_ BitVec 32)) Unit!19018)

(assert (=> b!601430 (= lt!273888 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!273886 #b00000000000000000000000000000000))))

(assert (=> b!601430 (arrayContainsKey!0 a!2986 lt!273886 #b00000000000000000000000000000000)))

(declare-fun lt!273887 () Unit!19018)

(assert (=> b!601430 (= lt!273887 lt!273888)))

(declare-fun res!386309 () Bool)

(assert (=> b!601430 (= res!386309 (= (seekEntryOrOpen!0 (select (arr!17818 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6265 #b00000000000000000000000000000000)))))

(assert (=> b!601430 (=> (not res!386309) (not e!343906))))

(declare-fun b!601431 () Bool)

(declare-fun call!32963 () Bool)

(assert (=> b!601431 (= e!343906 call!32963)))

(declare-fun bm!32960 () Bool)

(assert (=> bm!32960 (= call!32963 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!601432 () Bool)

(assert (=> b!601432 (= e!343905 call!32963)))

(declare-fun d!87009 () Bool)

(declare-fun res!386308 () Bool)

(declare-fun e!343904 () Bool)

(assert (=> d!87009 (=> res!386308 e!343904)))

(assert (=> d!87009 (= res!386308 (bvsge #b00000000000000000000000000000000 (size!18182 a!2986)))))

(assert (=> d!87009 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!343904)))

(declare-fun b!601433 () Bool)

(assert (=> b!601433 (= e!343904 e!343905)))

(declare-fun c!67928 () Bool)

(assert (=> b!601433 (= c!67928 (validKeyInArray!0 (select (arr!17818 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87009 (not res!386308)) b!601433))

(assert (= (and b!601433 c!67928) b!601430))

(assert (= (and b!601433 (not c!67928)) b!601432))

(assert (= (and b!601430 res!386309) b!601431))

(assert (= (or b!601431 b!601432) bm!32960))

(declare-fun m!578677 () Bool)

(assert (=> b!601430 m!578677))

(declare-fun m!578679 () Bool)

(assert (=> b!601430 m!578679))

(declare-fun m!578681 () Bool)

(assert (=> b!601430 m!578681))

(assert (=> b!601430 m!578677))

(declare-fun m!578683 () Bool)

(assert (=> b!601430 m!578683))

(declare-fun m!578685 () Bool)

(assert (=> bm!32960 m!578685))

(assert (=> b!601433 m!578677))

(assert (=> b!601433 m!578677))

(declare-fun m!578687 () Bool)

(assert (=> b!601433 m!578687))

(assert (=> b!601325 d!87009))

(declare-fun d!87011 () Bool)

(declare-fun res!386310 () Bool)

(declare-fun e!343907 () Bool)

(assert (=> d!87011 (=> res!386310 e!343907)))

(assert (=> d!87011 (= res!386310 (= (select (arr!17818 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!87011 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!343907)))

(declare-fun b!601434 () Bool)

(declare-fun e!343908 () Bool)

(assert (=> b!601434 (= e!343907 e!343908)))

(declare-fun res!386311 () Bool)

(assert (=> b!601434 (=> (not res!386311) (not e!343908))))

(assert (=> b!601434 (= res!386311 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18182 a!2986)))))

(declare-fun b!601435 () Bool)

(assert (=> b!601435 (= e!343908 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87011 (not res!386310)) b!601434))

(assert (= (and b!601434 res!386311) b!601435))

(assert (=> d!87011 m!578677))

(declare-fun m!578689 () Bool)

(assert (=> b!601435 m!578689))

(assert (=> b!601323 d!87011))

(declare-fun d!87013 () Bool)

(declare-fun res!386312 () Bool)

(declare-fun e!343909 () Bool)

(assert (=> d!87013 (=> res!386312 e!343909)))

(assert (=> d!87013 (= res!386312 (= (select (arr!17818 lt!273820) j!136) (select (arr!17818 a!2986) j!136)))))

(assert (=> d!87013 (= (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) j!136) e!343909)))

(declare-fun b!601436 () Bool)

(declare-fun e!343910 () Bool)

(assert (=> b!601436 (= e!343909 e!343910)))

(declare-fun res!386313 () Bool)

(assert (=> b!601436 (=> (not res!386313) (not e!343910))))

(assert (=> b!601436 (= res!386313 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18182 lt!273820)))))

(declare-fun b!601437 () Bool)

(assert (=> b!601437 (= e!343910 (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87013 (not res!386312)) b!601436))

(assert (= (and b!601436 res!386313) b!601437))

(declare-fun m!578691 () Bool)

(assert (=> d!87013 m!578691))

(assert (=> b!601437 m!578553))

(declare-fun m!578693 () Bool)

(assert (=> b!601437 m!578693))

(assert (=> b!601322 d!87013))

(declare-fun d!87015 () Bool)

(assert (=> d!87015 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54926 d!87015))

(declare-fun d!87017 () Bool)

(assert (=> d!87017 (= (array_inv!13592 a!2986) (bvsge (size!18182 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54926 d!87017))

(declare-fun d!87019 () Bool)

(declare-fun lt!273897 () SeekEntryResult!6265)

(assert (=> d!87019 (and (or ((_ is Undefined!6265) lt!273897) (not ((_ is Found!6265) lt!273897)) (and (bvsge (index!27317 lt!273897) #b00000000000000000000000000000000) (bvslt (index!27317 lt!273897) (size!18182 a!2986)))) (or ((_ is Undefined!6265) lt!273897) ((_ is Found!6265) lt!273897) (not ((_ is MissingZero!6265) lt!273897)) (and (bvsge (index!27316 lt!273897) #b00000000000000000000000000000000) (bvslt (index!27316 lt!273897) (size!18182 a!2986)))) (or ((_ is Undefined!6265) lt!273897) ((_ is Found!6265) lt!273897) ((_ is MissingZero!6265) lt!273897) (not ((_ is MissingVacant!6265) lt!273897)) (and (bvsge (index!27319 lt!273897) #b00000000000000000000000000000000) (bvslt (index!27319 lt!273897) (size!18182 a!2986)))) (or ((_ is Undefined!6265) lt!273897) (ite ((_ is Found!6265) lt!273897) (= (select (arr!17818 a!2986) (index!27317 lt!273897)) k0!1786) (ite ((_ is MissingZero!6265) lt!273897) (= (select (arr!17818 a!2986) (index!27316 lt!273897)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6265) lt!273897) (= (select (arr!17818 a!2986) (index!27319 lt!273897)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!343943 () SeekEntryResult!6265)

(assert (=> d!87019 (= lt!273897 e!343943)))

(declare-fun c!67943 () Bool)

(declare-fun lt!273895 () SeekEntryResult!6265)

(assert (=> d!87019 (= c!67943 (and ((_ is Intermediate!6265) lt!273895) (undefined!7077 lt!273895)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37124 (_ BitVec 32)) SeekEntryResult!6265)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87019 (= lt!273895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!87019 (validMask!0 mask!3053)))

(assert (=> d!87019 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!273897)))

(declare-fun b!601480 () Bool)

(declare-fun c!67941 () Bool)

(declare-fun lt!273896 () (_ BitVec 64))

(assert (=> b!601480 (= c!67941 (= lt!273896 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!343941 () SeekEntryResult!6265)

(declare-fun e!343942 () SeekEntryResult!6265)

(assert (=> b!601480 (= e!343941 e!343942)))

(declare-fun b!601481 () Bool)

(assert (=> b!601481 (= e!343942 (MissingZero!6265 (index!27318 lt!273895)))))

(declare-fun b!601482 () Bool)

(assert (=> b!601482 (= e!343943 e!343941)))

(assert (=> b!601482 (= lt!273896 (select (arr!17818 a!2986) (index!27318 lt!273895)))))

(declare-fun c!67942 () Bool)

(assert (=> b!601482 (= c!67942 (= lt!273896 k0!1786))))

(declare-fun b!601483 () Bool)

(assert (=> b!601483 (= e!343942 (seekKeyOrZeroReturnVacant!0 (x!56137 lt!273895) (index!27318 lt!273895) (index!27318 lt!273895) k0!1786 a!2986 mask!3053))))

(declare-fun b!601484 () Bool)

(assert (=> b!601484 (= e!343943 Undefined!6265)))

(declare-fun b!601485 () Bool)

(assert (=> b!601485 (= e!343941 (Found!6265 (index!27318 lt!273895)))))

(assert (= (and d!87019 c!67943) b!601484))

(assert (= (and d!87019 (not c!67943)) b!601482))

(assert (= (and b!601482 c!67942) b!601485))

(assert (= (and b!601482 (not c!67942)) b!601480))

(assert (= (and b!601480 c!67941) b!601481))

(assert (= (and b!601480 (not c!67941)) b!601483))

(declare-fun m!578711 () Bool)

(assert (=> d!87019 m!578711))

(declare-fun m!578713 () Bool)

(assert (=> d!87019 m!578713))

(declare-fun m!578715 () Bool)

(assert (=> d!87019 m!578715))

(declare-fun m!578717 () Bool)

(assert (=> d!87019 m!578717))

(declare-fun m!578719 () Bool)

(assert (=> d!87019 m!578719))

(assert (=> d!87019 m!578711))

(assert (=> d!87019 m!578547))

(declare-fun m!578721 () Bool)

(assert (=> b!601482 m!578721))

(declare-fun m!578723 () Bool)

(assert (=> b!601483 m!578723))

(assert (=> b!601333 d!87019))

(declare-fun b!601496 () Bool)

(declare-fun e!343953 () Bool)

(declare-fun e!343955 () Bool)

(assert (=> b!601496 (= e!343953 e!343955)))

(declare-fun c!67946 () Bool)

(assert (=> b!601496 (= c!67946 (validKeyInArray!0 (select (arr!17818 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87029 () Bool)

(declare-fun res!386340 () Bool)

(declare-fun e!343954 () Bool)

(assert (=> d!87029 (=> res!386340 e!343954)))

(assert (=> d!87029 (= res!386340 (bvsge #b00000000000000000000000000000000 (size!18182 a!2986)))))

(assert (=> d!87029 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11909) e!343954)))

(declare-fun b!601497 () Bool)

(declare-fun e!343952 () Bool)

(declare-fun contains!2990 (List!11912 (_ BitVec 64)) Bool)

(assert (=> b!601497 (= e!343952 (contains!2990 Nil!11909 (select (arr!17818 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32969 () Bool)

(declare-fun call!32972 () Bool)

(assert (=> bm!32969 (= call!32972 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67946 (Cons!11908 (select (arr!17818 a!2986) #b00000000000000000000000000000000) Nil!11909) Nil!11909)))))

(declare-fun b!601498 () Bool)

(assert (=> b!601498 (= e!343955 call!32972)))

(declare-fun b!601499 () Bool)

(assert (=> b!601499 (= e!343954 e!343953)))

(declare-fun res!386338 () Bool)

(assert (=> b!601499 (=> (not res!386338) (not e!343953))))

(assert (=> b!601499 (= res!386338 (not e!343952))))

(declare-fun res!386339 () Bool)

(assert (=> b!601499 (=> (not res!386339) (not e!343952))))

(assert (=> b!601499 (= res!386339 (validKeyInArray!0 (select (arr!17818 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!601500 () Bool)

(assert (=> b!601500 (= e!343955 call!32972)))

(assert (= (and d!87029 (not res!386340)) b!601499))

(assert (= (and b!601499 res!386339) b!601497))

(assert (= (and b!601499 res!386338) b!601496))

(assert (= (and b!601496 c!67946) b!601500))

(assert (= (and b!601496 (not c!67946)) b!601498))

(assert (= (or b!601500 b!601498) bm!32969))

(assert (=> b!601496 m!578677))

(assert (=> b!601496 m!578677))

(assert (=> b!601496 m!578687))

(assert (=> b!601497 m!578677))

(assert (=> b!601497 m!578677))

(declare-fun m!578725 () Bool)

(assert (=> b!601497 m!578725))

(assert (=> bm!32969 m!578677))

(declare-fun m!578727 () Bool)

(assert (=> bm!32969 m!578727))

(assert (=> b!601499 m!578677))

(assert (=> b!601499 m!578677))

(assert (=> b!601499 m!578687))

(assert (=> b!601320 d!87029))

(declare-fun d!87031 () Bool)

(assert (=> d!87031 (= (validKeyInArray!0 (select (arr!17818 a!2986) j!136)) (and (not (= (select (arr!17818 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17818 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!601331 d!87031))

(declare-fun b!601501 () Bool)

(declare-fun e!343958 () SeekEntryResult!6265)

(assert (=> b!601501 (= e!343958 Undefined!6265)))

(declare-fun b!601502 () Bool)

(declare-fun e!343956 () SeekEntryResult!6265)

(assert (=> b!601502 (= e!343958 e!343956)))

(declare-fun c!67947 () Bool)

(declare-fun lt!273899 () (_ BitVec 64))

(assert (=> b!601502 (= c!67947 (= lt!273899 (select (arr!17818 a!2986) j!136)))))

(declare-fun e!343957 () SeekEntryResult!6265)

(declare-fun b!601503 () Bool)

(assert (=> b!601503 (= e!343957 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!273827 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17818 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601504 () Bool)

(assert (=> b!601504 (= e!343956 (Found!6265 lt!273827))))

(declare-fun b!601506 () Bool)

(assert (=> b!601506 (= e!343957 (MissingVacant!6265 vacantSpotIndex!68))))

(declare-fun b!601505 () Bool)

(declare-fun c!67948 () Bool)

(assert (=> b!601505 (= c!67948 (= lt!273899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601505 (= e!343956 e!343957)))

(declare-fun lt!273898 () SeekEntryResult!6265)

(declare-fun d!87033 () Bool)

(assert (=> d!87033 (and (or ((_ is Undefined!6265) lt!273898) (not ((_ is Found!6265) lt!273898)) (and (bvsge (index!27317 lt!273898) #b00000000000000000000000000000000) (bvslt (index!27317 lt!273898) (size!18182 a!2986)))) (or ((_ is Undefined!6265) lt!273898) ((_ is Found!6265) lt!273898) (not ((_ is MissingVacant!6265) lt!273898)) (not (= (index!27319 lt!273898) vacantSpotIndex!68)) (and (bvsge (index!27319 lt!273898) #b00000000000000000000000000000000) (bvslt (index!27319 lt!273898) (size!18182 a!2986)))) (or ((_ is Undefined!6265) lt!273898) (ite ((_ is Found!6265) lt!273898) (= (select (arr!17818 a!2986) (index!27317 lt!273898)) (select (arr!17818 a!2986) j!136)) (and ((_ is MissingVacant!6265) lt!273898) (= (index!27319 lt!273898) vacantSpotIndex!68) (= (select (arr!17818 a!2986) (index!27319 lt!273898)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87033 (= lt!273898 e!343958)))

(declare-fun c!67949 () Bool)

(assert (=> d!87033 (= c!67949 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87033 (= lt!273899 (select (arr!17818 a!2986) lt!273827))))

(assert (=> d!87033 (validMask!0 mask!3053)))

(assert (=> d!87033 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 (select (arr!17818 a!2986) j!136) a!2986 mask!3053) lt!273898)))

(assert (= (and d!87033 c!67949) b!601501))

(assert (= (and d!87033 (not c!67949)) b!601502))

(assert (= (and b!601502 c!67947) b!601504))

(assert (= (and b!601502 (not c!67947)) b!601505))

(assert (= (and b!601505 c!67948) b!601506))

(assert (= (and b!601505 (not c!67948)) b!601503))

(declare-fun m!578729 () Bool)

(assert (=> b!601503 m!578729))

(assert (=> b!601503 m!578729))

(assert (=> b!601503 m!578553))

(declare-fun m!578731 () Bool)

(assert (=> b!601503 m!578731))

(declare-fun m!578733 () Bool)

(assert (=> d!87033 m!578733))

(declare-fun m!578735 () Bool)

(assert (=> d!87033 m!578735))

(declare-fun m!578737 () Bool)

(assert (=> d!87033 m!578737))

(assert (=> d!87033 m!578547))

(assert (=> b!601330 d!87033))

(declare-fun b!601507 () Bool)

(declare-fun e!343961 () SeekEntryResult!6265)

(assert (=> b!601507 (= e!343961 Undefined!6265)))

(declare-fun b!601508 () Bool)

(declare-fun e!343959 () SeekEntryResult!6265)

(assert (=> b!601508 (= e!343961 e!343959)))

(declare-fun c!67950 () Bool)

(declare-fun lt!273901 () (_ BitVec 64))

(assert (=> b!601508 (= c!67950 (= lt!273901 lt!273822))))

(declare-fun b!601509 () Bool)

(declare-fun e!343960 () SeekEntryResult!6265)

(assert (=> b!601509 (= e!343960 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!273827 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!273822 lt!273820 mask!3053))))

(declare-fun b!601510 () Bool)

(assert (=> b!601510 (= e!343959 (Found!6265 lt!273827))))

(declare-fun b!601512 () Bool)

(assert (=> b!601512 (= e!343960 (MissingVacant!6265 vacantSpotIndex!68))))

(declare-fun b!601511 () Bool)

(declare-fun c!67951 () Bool)

(assert (=> b!601511 (= c!67951 (= lt!273901 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601511 (= e!343959 e!343960)))

(declare-fun d!87035 () Bool)

(declare-fun lt!273900 () SeekEntryResult!6265)

(assert (=> d!87035 (and (or ((_ is Undefined!6265) lt!273900) (not ((_ is Found!6265) lt!273900)) (and (bvsge (index!27317 lt!273900) #b00000000000000000000000000000000) (bvslt (index!27317 lt!273900) (size!18182 lt!273820)))) (or ((_ is Undefined!6265) lt!273900) ((_ is Found!6265) lt!273900) (not ((_ is MissingVacant!6265) lt!273900)) (not (= (index!27319 lt!273900) vacantSpotIndex!68)) (and (bvsge (index!27319 lt!273900) #b00000000000000000000000000000000) (bvslt (index!27319 lt!273900) (size!18182 lt!273820)))) (or ((_ is Undefined!6265) lt!273900) (ite ((_ is Found!6265) lt!273900) (= (select (arr!17818 lt!273820) (index!27317 lt!273900)) lt!273822) (and ((_ is MissingVacant!6265) lt!273900) (= (index!27319 lt!273900) vacantSpotIndex!68) (= (select (arr!17818 lt!273820) (index!27319 lt!273900)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87035 (= lt!273900 e!343961)))

(declare-fun c!67952 () Bool)

(assert (=> d!87035 (= c!67952 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87035 (= lt!273901 (select (arr!17818 lt!273820) lt!273827))))

(assert (=> d!87035 (validMask!0 mask!3053)))

(assert (=> d!87035 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 lt!273822 lt!273820 mask!3053) lt!273900)))

(assert (= (and d!87035 c!67952) b!601507))

(assert (= (and d!87035 (not c!67952)) b!601508))

(assert (= (and b!601508 c!67950) b!601510))

(assert (= (and b!601508 (not c!67950)) b!601511))

(assert (= (and b!601511 c!67951) b!601512))

(assert (= (and b!601511 (not c!67951)) b!601509))

(assert (=> b!601509 m!578729))

(assert (=> b!601509 m!578729))

(declare-fun m!578739 () Bool)

(assert (=> b!601509 m!578739))

(declare-fun m!578741 () Bool)

(assert (=> d!87035 m!578741))

(declare-fun m!578743 () Bool)

(assert (=> d!87035 m!578743))

(declare-fun m!578745 () Bool)

(assert (=> d!87035 m!578745))

(assert (=> d!87035 m!578547))

(assert (=> b!601330 d!87035))

(declare-fun d!87037 () Bool)

(declare-fun lt!273904 () (_ BitVec 32))

(assert (=> d!87037 (and (bvsge lt!273904 #b00000000000000000000000000000000) (bvslt lt!273904 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87037 (= lt!273904 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87037 (validMask!0 mask!3053)))

(assert (=> d!87037 (= (nextIndex!0 index!984 x!910 mask!3053) lt!273904)))

(declare-fun bs!18434 () Bool)

(assert (= bs!18434 d!87037))

(declare-fun m!578747 () Bool)

(assert (=> bs!18434 m!578747))

(assert (=> bs!18434 m!578547))

(assert (=> b!601330 d!87037))

(declare-fun d!87039 () Bool)

(declare-fun e!343976 () Bool)

(assert (=> d!87039 e!343976))

(declare-fun res!386349 () Bool)

(assert (=> d!87039 (=> (not res!386349) (not e!343976))))

(assert (=> d!87039 (= res!386349 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18182 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18182 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18182 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18182 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18182 a!2986))))))

(declare-fun lt!273913 () Unit!19018)

(declare-fun choose!9 (array!37124 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19018)

(assert (=> d!87039 (= lt!273913 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87039 (validMask!0 mask!3053)))

(assert (=> d!87039 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 mask!3053) lt!273913)))

(declare-fun b!601533 () Bool)

(assert (=> b!601533 (= e!343976 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 (select (arr!17818 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273827 vacantSpotIndex!68 (select (store (arr!17818 a!2986) i!1108 k0!1786) j!136) (array!37125 (store (arr!17818 a!2986) i!1108 k0!1786) (size!18182 a!2986)) mask!3053)))))

(assert (= (and d!87039 res!386349) b!601533))

(declare-fun m!578753 () Bool)

(assert (=> d!87039 m!578753))

(assert (=> d!87039 m!578547))

(assert (=> b!601533 m!578595))

(declare-fun m!578755 () Bool)

(assert (=> b!601533 m!578755))

(assert (=> b!601533 m!578553))

(assert (=> b!601533 m!578595))

(assert (=> b!601533 m!578557))

(assert (=> b!601533 m!578553))

(assert (=> b!601533 m!578597))

(assert (=> b!601330 d!87039))

(declare-fun b!601534 () Bool)

(declare-fun e!343979 () SeekEntryResult!6265)

(assert (=> b!601534 (= e!343979 Undefined!6265)))

(declare-fun b!601535 () Bool)

(declare-fun e!343977 () SeekEntryResult!6265)

(assert (=> b!601535 (= e!343979 e!343977)))

(declare-fun c!67959 () Bool)

(declare-fun lt!273915 () (_ BitVec 64))

(assert (=> b!601535 (= c!67959 (= lt!273915 lt!273822))))

(declare-fun e!343978 () SeekEntryResult!6265)

(declare-fun b!601536 () Bool)

(assert (=> b!601536 (= e!343978 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!273822 lt!273820 mask!3053))))

(declare-fun b!601537 () Bool)

(assert (=> b!601537 (= e!343977 (Found!6265 index!984))))

(declare-fun b!601539 () Bool)

(assert (=> b!601539 (= e!343978 (MissingVacant!6265 vacantSpotIndex!68))))

(declare-fun b!601538 () Bool)

(declare-fun c!67960 () Bool)

(assert (=> b!601538 (= c!67960 (= lt!273915 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601538 (= e!343977 e!343978)))

(declare-fun d!87051 () Bool)

(declare-fun lt!273914 () SeekEntryResult!6265)

(assert (=> d!87051 (and (or ((_ is Undefined!6265) lt!273914) (not ((_ is Found!6265) lt!273914)) (and (bvsge (index!27317 lt!273914) #b00000000000000000000000000000000) (bvslt (index!27317 lt!273914) (size!18182 lt!273820)))) (or ((_ is Undefined!6265) lt!273914) ((_ is Found!6265) lt!273914) (not ((_ is MissingVacant!6265) lt!273914)) (not (= (index!27319 lt!273914) vacantSpotIndex!68)) (and (bvsge (index!27319 lt!273914) #b00000000000000000000000000000000) (bvslt (index!27319 lt!273914) (size!18182 lt!273820)))) (or ((_ is Undefined!6265) lt!273914) (ite ((_ is Found!6265) lt!273914) (= (select (arr!17818 lt!273820) (index!27317 lt!273914)) lt!273822) (and ((_ is MissingVacant!6265) lt!273914) (= (index!27319 lt!273914) vacantSpotIndex!68) (= (select (arr!17818 lt!273820) (index!27319 lt!273914)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87051 (= lt!273914 e!343979)))

(declare-fun c!67961 () Bool)

(assert (=> d!87051 (= c!67961 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87051 (= lt!273915 (select (arr!17818 lt!273820) index!984))))

(assert (=> d!87051 (validMask!0 mask!3053)))

(assert (=> d!87051 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273822 lt!273820 mask!3053) lt!273914)))

(assert (= (and d!87051 c!67961) b!601534))

(assert (= (and d!87051 (not c!67961)) b!601535))

(assert (= (and b!601535 c!67959) b!601537))

(assert (= (and b!601535 (not c!67959)) b!601538))

(assert (= (and b!601538 c!67960) b!601539))

(assert (= (and b!601538 (not c!67960)) b!601536))

(assert (=> b!601536 m!578593))

(assert (=> b!601536 m!578593))

(declare-fun m!578757 () Bool)

(assert (=> b!601536 m!578757))

(declare-fun m!578759 () Bool)

(assert (=> d!87051 m!578759))

(declare-fun m!578761 () Bool)

(assert (=> d!87051 m!578761))

(assert (=> d!87051 m!578667))

(assert (=> d!87051 m!578547))

(assert (=> b!601330 d!87051))

(declare-fun d!87053 () Bool)

(assert (=> d!87053 (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273918 () Unit!19018)

(declare-fun choose!114 (array!37124 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19018)

(assert (=> d!87053 (= lt!273918 (choose!114 lt!273820 (select (arr!17818 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87053 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87053 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273820 (select (arr!17818 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!273918)))

(declare-fun bs!18435 () Bool)

(assert (= bs!18435 d!87053))

(assert (=> bs!18435 m!578553))

(assert (=> bs!18435 m!578583))

(assert (=> bs!18435 m!578553))

(declare-fun m!578763 () Bool)

(assert (=> bs!18435 m!578763))

(assert (=> b!601321 d!87053))

(declare-fun b!601540 () Bool)

(declare-fun e!343981 () Bool)

(declare-fun e!343983 () Bool)

(assert (=> b!601540 (= e!343981 e!343983)))

(declare-fun c!67962 () Bool)

(assert (=> b!601540 (= c!67962 (validKeyInArray!0 (select (arr!17818 lt!273820) #b00000000000000000000000000000000)))))

(declare-fun d!87055 () Bool)

(declare-fun res!386352 () Bool)

(declare-fun e!343982 () Bool)

(assert (=> d!87055 (=> res!386352 e!343982)))

(assert (=> d!87055 (= res!386352 (bvsge #b00000000000000000000000000000000 (size!18182 lt!273820)))))

(assert (=> d!87055 (= (arrayNoDuplicates!0 lt!273820 #b00000000000000000000000000000000 Nil!11909) e!343982)))

(declare-fun b!601541 () Bool)

(declare-fun e!343980 () Bool)

(assert (=> b!601541 (= e!343980 (contains!2990 Nil!11909 (select (arr!17818 lt!273820) #b00000000000000000000000000000000)))))

(declare-fun bm!32970 () Bool)

(declare-fun call!32973 () Bool)

(assert (=> bm!32970 (= call!32973 (arrayNoDuplicates!0 lt!273820 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67962 (Cons!11908 (select (arr!17818 lt!273820) #b00000000000000000000000000000000) Nil!11909) Nil!11909)))))

(declare-fun b!601542 () Bool)

(assert (=> b!601542 (= e!343983 call!32973)))

(declare-fun b!601543 () Bool)

(assert (=> b!601543 (= e!343982 e!343981)))

(declare-fun res!386350 () Bool)

(assert (=> b!601543 (=> (not res!386350) (not e!343981))))

(assert (=> b!601543 (= res!386350 (not e!343980))))

(declare-fun res!386351 () Bool)

(assert (=> b!601543 (=> (not res!386351) (not e!343980))))

(assert (=> b!601543 (= res!386351 (validKeyInArray!0 (select (arr!17818 lt!273820) #b00000000000000000000000000000000)))))

(declare-fun b!601544 () Bool)

(assert (=> b!601544 (= e!343983 call!32973)))

(assert (= (and d!87055 (not res!386352)) b!601543))

(assert (= (and b!601543 res!386351) b!601541))

(assert (= (and b!601543 res!386350) b!601540))

(assert (= (and b!601540 c!67962) b!601544))

(assert (= (and b!601540 (not c!67962)) b!601542))

(assert (= (or b!601544 b!601542) bm!32970))

(declare-fun m!578765 () Bool)

(assert (=> b!601540 m!578765))

(assert (=> b!601540 m!578765))

(declare-fun m!578767 () Bool)

(assert (=> b!601540 m!578767))

(assert (=> b!601541 m!578765))

(assert (=> b!601541 m!578765))

(declare-fun m!578769 () Bool)

(assert (=> b!601541 m!578769))

(assert (=> bm!32970 m!578765))

(declare-fun m!578771 () Bool)

(assert (=> bm!32970 m!578771))

(assert (=> b!601543 m!578765))

(assert (=> b!601543 m!578765))

(assert (=> b!601543 m!578767))

(assert (=> b!601321 d!87055))

(declare-fun d!87057 () Bool)

(assert (=> d!87057 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18182 lt!273820)) (not (= (select (arr!17818 lt!273820) j!136) (select (arr!17818 a!2986) j!136))))))

(declare-fun lt!273924 () Unit!19018)

(declare-fun choose!21 (array!37124 (_ BitVec 64) (_ BitVec 32) List!11912) Unit!19018)

(assert (=> d!87057 (= lt!273924 (choose!21 lt!273820 (select (arr!17818 a!2986) j!136) j!136 Nil!11909))))

(assert (=> d!87057 (bvslt (size!18182 lt!273820) #b01111111111111111111111111111111)))

(assert (=> d!87057 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273820 (select (arr!17818 a!2986) j!136) j!136 Nil!11909) lt!273924)))

(declare-fun bs!18436 () Bool)

(assert (= bs!18436 d!87057))

(assert (=> bs!18436 m!578691))

(assert (=> bs!18436 m!578553))

(declare-fun m!578787 () Bool)

(assert (=> bs!18436 m!578787))

(assert (=> b!601321 d!87057))

(declare-fun b!601551 () Bool)

(declare-fun e!343990 () Bool)

(declare-fun e!343992 () Bool)

(assert (=> b!601551 (= e!343990 e!343992)))

(declare-fun c!67966 () Bool)

(assert (=> b!601551 (= c!67966 (validKeyInArray!0 (select (arr!17818 lt!273820) j!136)))))

(declare-fun d!87061 () Bool)

(declare-fun res!386357 () Bool)

(declare-fun e!343991 () Bool)

(assert (=> d!87061 (=> res!386357 e!343991)))

(assert (=> d!87061 (= res!386357 (bvsge j!136 (size!18182 lt!273820)))))

(assert (=> d!87061 (= (arrayNoDuplicates!0 lt!273820 j!136 Nil!11909) e!343991)))

(declare-fun b!601552 () Bool)

(declare-fun e!343989 () Bool)

(assert (=> b!601552 (= e!343989 (contains!2990 Nil!11909 (select (arr!17818 lt!273820) j!136)))))

(declare-fun call!32974 () Bool)

(declare-fun bm!32971 () Bool)

(assert (=> bm!32971 (= call!32974 (arrayNoDuplicates!0 lt!273820 (bvadd j!136 #b00000000000000000000000000000001) (ite c!67966 (Cons!11908 (select (arr!17818 lt!273820) j!136) Nil!11909) Nil!11909)))))

(declare-fun b!601553 () Bool)

(assert (=> b!601553 (= e!343992 call!32974)))

(declare-fun b!601554 () Bool)

(assert (=> b!601554 (= e!343991 e!343990)))

(declare-fun res!386355 () Bool)

(assert (=> b!601554 (=> (not res!386355) (not e!343990))))

(assert (=> b!601554 (= res!386355 (not e!343989))))

(declare-fun res!386356 () Bool)

(assert (=> b!601554 (=> (not res!386356) (not e!343989))))

(assert (=> b!601554 (= res!386356 (validKeyInArray!0 (select (arr!17818 lt!273820) j!136)))))

(declare-fun b!601555 () Bool)

(assert (=> b!601555 (= e!343992 call!32974)))

(assert (= (and d!87061 (not res!386357)) b!601554))

(assert (= (and b!601554 res!386356) b!601552))

(assert (= (and b!601554 res!386355) b!601551))

(assert (= (and b!601551 c!67966) b!601555))

(assert (= (and b!601551 (not c!67966)) b!601553))

(assert (= (or b!601555 b!601553) bm!32971))

(assert (=> b!601551 m!578691))

(assert (=> b!601551 m!578691))

(declare-fun m!578789 () Bool)

(assert (=> b!601551 m!578789))

(assert (=> b!601552 m!578691))

(assert (=> b!601552 m!578691))

(declare-fun m!578791 () Bool)

(assert (=> b!601552 m!578791))

(assert (=> bm!32971 m!578691))

(declare-fun m!578793 () Bool)

(assert (=> bm!32971 m!578793))

(assert (=> b!601554 m!578691))

(assert (=> b!601554 m!578691))

(assert (=> b!601554 m!578789))

(assert (=> b!601321 d!87061))

(declare-fun d!87063 () Bool)

(declare-fun e!344003 () Bool)

(assert (=> d!87063 e!344003))

(declare-fun res!386364 () Bool)

(assert (=> d!87063 (=> (not res!386364) (not e!344003))))

(assert (=> d!87063 (= res!386364 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18182 a!2986))))))

(declare-fun lt!273931 () Unit!19018)

(declare-fun choose!41 (array!37124 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11912) Unit!19018)

(assert (=> d!87063 (= lt!273931 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11909))))

(assert (=> d!87063 (bvslt (size!18182 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87063 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11909) lt!273931)))

(declare-fun b!601572 () Bool)

(assert (=> b!601572 (= e!344003 (arrayNoDuplicates!0 (array!37125 (store (arr!17818 a!2986) i!1108 k0!1786) (size!18182 a!2986)) #b00000000000000000000000000000000 Nil!11909))))

(assert (= (and d!87063 res!386364) b!601572))

(declare-fun m!578799 () Bool)

(assert (=> d!87063 m!578799))

(assert (=> b!601572 m!578557))

(declare-fun m!578801 () Bool)

(assert (=> b!601572 m!578801))

(assert (=> b!601321 d!87063))

(declare-fun d!87069 () Bool)

(assert (=> d!87069 (arrayNoDuplicates!0 lt!273820 j!136 Nil!11909)))

(declare-fun lt!273934 () Unit!19018)

(declare-fun choose!39 (array!37124 (_ BitVec 32) (_ BitVec 32)) Unit!19018)

(assert (=> d!87069 (= lt!273934 (choose!39 lt!273820 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87069 (bvslt (size!18182 lt!273820) #b01111111111111111111111111111111)))

(assert (=> d!87069 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!273820 #b00000000000000000000000000000000 j!136) lt!273934)))

(declare-fun bs!18437 () Bool)

(assert (= bs!18437 d!87069))

(assert (=> bs!18437 m!578585))

(declare-fun m!578803 () Bool)

(assert (=> bs!18437 m!578803))

(assert (=> b!601321 d!87069))

(declare-fun d!87071 () Bool)

(declare-fun res!386365 () Bool)

(declare-fun e!344006 () Bool)

(assert (=> d!87071 (=> res!386365 e!344006)))

(assert (=> d!87071 (= res!386365 (= (select (arr!17818 lt!273820) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17818 a!2986) j!136)))))

(assert (=> d!87071 (= (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!344006)))

(declare-fun b!601577 () Bool)

(declare-fun e!344007 () Bool)

(assert (=> b!601577 (= e!344006 e!344007)))

(declare-fun res!386366 () Bool)

(assert (=> b!601577 (=> (not res!386366) (not e!344007))))

(assert (=> b!601577 (= res!386366 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18182 lt!273820)))))

(declare-fun b!601578 () Bool)

(assert (=> b!601578 (= e!344007 (arrayContainsKey!0 lt!273820 (select (arr!17818 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87071 (not res!386365)) b!601577))

(assert (= (and b!601577 res!386366) b!601578))

(declare-fun m!578805 () Bool)

(assert (=> d!87071 m!578805))

(assert (=> b!601578 m!578553))

(declare-fun m!578807 () Bool)

(assert (=> b!601578 m!578807))

(assert (=> b!601321 d!87071))

(check-sat (not d!87019) (not b!601552) (not b!601533) (not d!87057) (not b!601418) (not b!601437) (not bm!32969) (not b!601536) (not bm!32960) (not b!601551) (not b!601541) (not b!601499) (not b!601403) (not b!601433) (not b!601430) (not d!87033) (not d!87051) (not bm!32971) (not b!601554) (not d!87053) (not d!87007) (not b!601503) (not b!601540) (not b!601572) (not b!601435) (not b!601578) (not d!87063) (not b!601483) (not b!601497) (not d!87039) (not bm!32970) (not b!601496) (not d!87035) (not d!87037) (not b!601543) (not b!601509) (not d!87069))
(check-sat)
