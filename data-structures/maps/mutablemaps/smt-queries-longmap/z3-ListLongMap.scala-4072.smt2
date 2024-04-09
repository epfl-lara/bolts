; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55940 () Bool)

(assert start!55940)

(declare-fun b!612526 () Bool)

(declare-fun res!394224 () Bool)

(declare-fun e!351124 () Bool)

(assert (=> b!612526 (=> (not res!394224) (not e!351124))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37373 0))(
  ( (array!37374 (arr!17929 (Array (_ BitVec 32) (_ BitVec 64))) (size!18293 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37373)

(assert (=> b!612526 (= res!394224 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17929 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612527 () Bool)

(declare-fun e!351110 () Bool)

(assert (=> b!612527 (= e!351124 e!351110)))

(declare-fun res!394229 () Bool)

(assert (=> b!612527 (=> (not res!394229) (not e!351110))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!612527 (= res!394229 (= (select (store (arr!17929 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!280610 () array!37373)

(assert (=> b!612527 (= lt!280610 (array!37374 (store (arr!17929 a!2986) i!1108 k0!1786) (size!18293 a!2986)))))

(declare-fun b!612528 () Bool)

(declare-datatypes ((Unit!19684 0))(
  ( (Unit!19685) )
))
(declare-fun e!351123 () Unit!19684)

(declare-fun Unit!19686 () Unit!19684)

(assert (=> b!612528 (= e!351123 Unit!19686)))

(declare-fun b!612529 () Bool)

(declare-fun res!394230 () Bool)

(declare-fun e!351109 () Bool)

(assert (=> b!612529 (=> (not res!394230) (not e!351109))))

(declare-fun arrayContainsKey!0 (array!37373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612529 (= res!394230 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!612530 () Bool)

(declare-fun res!394231 () Bool)

(declare-fun e!351112 () Bool)

(assert (=> b!612530 (=> res!394231 e!351112)))

(declare-datatypes ((List!12023 0))(
  ( (Nil!12020) (Cons!12019 (h!13064 (_ BitVec 64)) (t!18259 List!12023)) )
))
(declare-fun contains!3050 (List!12023 (_ BitVec 64)) Bool)

(assert (=> b!612530 (= res!394231 (contains!3050 Nil!12020 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!612531 () Bool)

(declare-fun res!394240 () Bool)

(assert (=> b!612531 (=> res!394240 e!351112)))

(declare-fun noDuplicate!350 (List!12023) Bool)

(assert (=> b!612531 (= res!394240 (not (noDuplicate!350 Nil!12020)))))

(declare-fun b!612532 () Bool)

(declare-fun e!351116 () Bool)

(declare-fun e!351114 () Bool)

(assert (=> b!612532 (= e!351116 (not e!351114))))

(declare-fun res!394238 () Bool)

(assert (=> b!612532 (=> res!394238 e!351114)))

(declare-datatypes ((SeekEntryResult!6376 0))(
  ( (MissingZero!6376 (index!27787 (_ BitVec 32))) (Found!6376 (index!27788 (_ BitVec 32))) (Intermediate!6376 (undefined!7188 Bool) (index!27789 (_ BitVec 32)) (x!56625 (_ BitVec 32))) (Undefined!6376) (MissingVacant!6376 (index!27790 (_ BitVec 32))) )
))
(declare-fun lt!280598 () SeekEntryResult!6376)

(assert (=> b!612532 (= res!394238 (not (= lt!280598 (Found!6376 index!984))))))

(declare-fun lt!280602 () Unit!19684)

(declare-fun e!351115 () Unit!19684)

(assert (=> b!612532 (= lt!280602 e!351115)))

(declare-fun c!69520 () Bool)

(assert (=> b!612532 (= c!69520 (= lt!280598 Undefined!6376))))

(declare-fun lt!280606 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37373 (_ BitVec 32)) SeekEntryResult!6376)

(assert (=> b!612532 (= lt!280598 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280606 lt!280610 mask!3053))))

(declare-fun e!351118 () Bool)

(assert (=> b!612532 e!351118))

(declare-fun res!394228 () Bool)

(assert (=> b!612532 (=> (not res!394228) (not e!351118))))

(declare-fun lt!280593 () SeekEntryResult!6376)

(declare-fun lt!280611 () (_ BitVec 32))

(assert (=> b!612532 (= res!394228 (= lt!280593 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280611 vacantSpotIndex!68 lt!280606 lt!280610 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!612532 (= lt!280593 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280611 vacantSpotIndex!68 (select (arr!17929 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612532 (= lt!280606 (select (store (arr!17929 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!280608 () Unit!19684)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37373 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19684)

(assert (=> b!612532 (= lt!280608 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280611 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612532 (= lt!280611 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!612533 () Bool)

(assert (=> b!612533 (= e!351109 e!351124)))

(declare-fun res!394234 () Bool)

(assert (=> b!612533 (=> (not res!394234) (not e!351124))))

(declare-fun lt!280599 () SeekEntryResult!6376)

(assert (=> b!612533 (= res!394234 (or (= lt!280599 (MissingZero!6376 i!1108)) (= lt!280599 (MissingVacant!6376 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37373 (_ BitVec 32)) SeekEntryResult!6376)

(assert (=> b!612533 (= lt!280599 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!612534 () Bool)

(declare-fun res!394220 () Bool)

(assert (=> b!612534 (=> (not res!394220) (not e!351124))))

(declare-fun arrayNoDuplicates!0 (array!37373 (_ BitVec 32) List!12023) Bool)

(assert (=> b!612534 (= res!394220 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12020))))

(declare-fun b!612535 () Bool)

(declare-fun lt!280609 () SeekEntryResult!6376)

(assert (=> b!612535 (= e!351118 (= lt!280609 lt!280593))))

(declare-fun b!612536 () Bool)

(declare-fun res!394225 () Bool)

(assert (=> b!612536 (=> (not res!394225) (not e!351109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612536 (= res!394225 (validKeyInArray!0 k0!1786))))

(declare-fun b!612537 () Bool)

(declare-fun e!351117 () Bool)

(declare-fun e!351120 () Bool)

(assert (=> b!612537 (= e!351117 e!351120)))

(declare-fun res!394223 () Bool)

(assert (=> b!612537 (=> (not res!394223) (not e!351120))))

(assert (=> b!612537 (= res!394223 (arrayContainsKey!0 lt!280610 (select (arr!17929 a!2986) j!136) j!136))))

(declare-fun b!612538 () Bool)

(declare-fun e!351113 () Bool)

(declare-fun e!351111 () Bool)

(assert (=> b!612538 (= e!351113 e!351111)))

(declare-fun res!394237 () Bool)

(assert (=> b!612538 (=> res!394237 e!351111)))

(assert (=> b!612538 (= res!394237 (bvsge index!984 j!136))))

(declare-fun lt!280597 () Unit!19684)

(assert (=> b!612538 (= lt!280597 e!351123)))

(declare-fun c!69521 () Bool)

(assert (=> b!612538 (= c!69521 (bvslt j!136 index!984))))

(declare-fun b!612539 () Bool)

(assert (=> b!612539 (= e!351120 (arrayContainsKey!0 lt!280610 (select (arr!17929 a!2986) j!136) index!984))))

(declare-fun b!612540 () Bool)

(declare-fun Unit!19687 () Unit!19684)

(assert (=> b!612540 (= e!351115 Unit!19687)))

(declare-fun b!612541 () Bool)

(assert (=> b!612541 (= e!351111 e!351112)))

(declare-fun res!394241 () Bool)

(assert (=> b!612541 (=> res!394241 e!351112)))

(assert (=> b!612541 (= res!394241 (or (bvsge (size!18293 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18293 a!2986)) (bvsge index!984 (size!18293 a!2986))))))

(assert (=> b!612541 (arrayNoDuplicates!0 lt!280610 index!984 Nil!12020)))

(declare-fun lt!280595 () Unit!19684)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37373 (_ BitVec 32) (_ BitVec 32)) Unit!19684)

(assert (=> b!612541 (= lt!280595 (lemmaNoDuplicateFromThenFromBigger!0 lt!280610 #b00000000000000000000000000000000 index!984))))

(assert (=> b!612541 (arrayNoDuplicates!0 lt!280610 #b00000000000000000000000000000000 Nil!12020)))

(declare-fun lt!280601 () Unit!19684)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37373 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12023) Unit!19684)

(assert (=> b!612541 (= lt!280601 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12020))))

(assert (=> b!612541 (arrayContainsKey!0 lt!280610 (select (arr!17929 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280596 () Unit!19684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37373 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19684)

(assert (=> b!612541 (= lt!280596 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280610 (select (arr!17929 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!351121 () Bool)

(assert (=> b!612541 e!351121))

(declare-fun res!394233 () Bool)

(assert (=> b!612541 (=> (not res!394233) (not e!351121))))

(assert (=> b!612541 (= res!394233 (arrayContainsKey!0 lt!280610 (select (arr!17929 a!2986) j!136) j!136))))

(declare-fun b!612542 () Bool)

(declare-fun Unit!19688 () Unit!19684)

(assert (=> b!612542 (= e!351123 Unit!19688)))

(declare-fun lt!280604 () Unit!19684)

(assert (=> b!612542 (= lt!280604 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280610 (select (arr!17929 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!612542 (arrayContainsKey!0 lt!280610 (select (arr!17929 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280594 () Unit!19684)

(assert (=> b!612542 (= lt!280594 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12020))))

(assert (=> b!612542 (arrayNoDuplicates!0 lt!280610 #b00000000000000000000000000000000 Nil!12020)))

(declare-fun lt!280600 () Unit!19684)

(assert (=> b!612542 (= lt!280600 (lemmaNoDuplicateFromThenFromBigger!0 lt!280610 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612542 (arrayNoDuplicates!0 lt!280610 j!136 Nil!12020)))

(declare-fun lt!280603 () Unit!19684)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37373 (_ BitVec 64) (_ BitVec 32) List!12023) Unit!19684)

(assert (=> b!612542 (= lt!280603 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280610 (select (arr!17929 a!2986) j!136) j!136 Nil!12020))))

(assert (=> b!612542 false))

(declare-fun b!612543 () Bool)

(declare-fun res!394222 () Bool)

(assert (=> b!612543 (=> (not res!394222) (not e!351109))))

(assert (=> b!612543 (= res!394222 (validKeyInArray!0 (select (arr!17929 a!2986) j!136)))))

(declare-fun b!612544 () Bool)

(declare-fun e!351119 () Bool)

(assert (=> b!612544 (= e!351119 e!351117)))

(declare-fun res!394221 () Bool)

(assert (=> b!612544 (=> res!394221 e!351117)))

(declare-fun lt!280605 () (_ BitVec 64))

(assert (=> b!612544 (= res!394221 (or (not (= (select (arr!17929 a!2986) j!136) lt!280606)) (not (= (select (arr!17929 a!2986) j!136) lt!280605)) (bvsge j!136 index!984)))))

(declare-fun b!612545 () Bool)

(declare-fun Unit!19689 () Unit!19684)

(assert (=> b!612545 (= e!351115 Unit!19689)))

(assert (=> b!612545 false))

(declare-fun b!612546 () Bool)

(declare-fun res!394239 () Bool)

(assert (=> b!612546 (=> (not res!394239) (not e!351109))))

(assert (=> b!612546 (= res!394239 (and (= (size!18293 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18293 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18293 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612547 () Bool)

(declare-fun res!394227 () Bool)

(assert (=> b!612547 (=> (not res!394227) (not e!351124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37373 (_ BitVec 32)) Bool)

(assert (=> b!612547 (= res!394227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612548 () Bool)

(assert (=> b!612548 (= e!351121 (arrayContainsKey!0 lt!280610 (select (arr!17929 a!2986) j!136) index!984))))

(declare-fun b!612549 () Bool)

(assert (=> b!612549 (= e!351110 e!351116)))

(declare-fun res!394235 () Bool)

(assert (=> b!612549 (=> (not res!394235) (not e!351116))))

(assert (=> b!612549 (= res!394235 (and (= lt!280609 (Found!6376 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17929 a!2986) index!984) (select (arr!17929 a!2986) j!136))) (not (= (select (arr!17929 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!612549 (= lt!280609 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17929 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!612550 () Bool)

(assert (=> b!612550 (= e!351114 e!351113)))

(declare-fun res!394232 () Bool)

(assert (=> b!612550 (=> res!394232 e!351113)))

(assert (=> b!612550 (= res!394232 (or (not (= (select (arr!17929 a!2986) j!136) lt!280606)) (not (= (select (arr!17929 a!2986) j!136) lt!280605))))))

(assert (=> b!612550 e!351119))

(declare-fun res!394226 () Bool)

(assert (=> b!612550 (=> (not res!394226) (not e!351119))))

(assert (=> b!612550 (= res!394226 (= lt!280605 (select (arr!17929 a!2986) j!136)))))

(assert (=> b!612550 (= lt!280605 (select (store (arr!17929 a!2986) i!1108 k0!1786) index!984))))

(declare-fun res!394236 () Bool)

(assert (=> start!55940 (=> (not res!394236) (not e!351109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55940 (= res!394236 (validMask!0 mask!3053))))

(assert (=> start!55940 e!351109))

(assert (=> start!55940 true))

(declare-fun array_inv!13703 (array!37373) Bool)

(assert (=> start!55940 (array_inv!13703 a!2986)))

(declare-fun b!612551 () Bool)

(assert (=> b!612551 (= e!351112 true)))

(declare-fun lt!280607 () Bool)

(assert (=> b!612551 (= lt!280607 (contains!3050 Nil!12020 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!55940 res!394236) b!612546))

(assert (= (and b!612546 res!394239) b!612543))

(assert (= (and b!612543 res!394222) b!612536))

(assert (= (and b!612536 res!394225) b!612529))

(assert (= (and b!612529 res!394230) b!612533))

(assert (= (and b!612533 res!394234) b!612547))

(assert (= (and b!612547 res!394227) b!612534))

(assert (= (and b!612534 res!394220) b!612526))

(assert (= (and b!612526 res!394224) b!612527))

(assert (= (and b!612527 res!394229) b!612549))

(assert (= (and b!612549 res!394235) b!612532))

(assert (= (and b!612532 res!394228) b!612535))

(assert (= (and b!612532 c!69520) b!612545))

(assert (= (and b!612532 (not c!69520)) b!612540))

(assert (= (and b!612532 (not res!394238)) b!612550))

(assert (= (and b!612550 res!394226) b!612544))

(assert (= (and b!612544 (not res!394221)) b!612537))

(assert (= (and b!612537 res!394223) b!612539))

(assert (= (and b!612550 (not res!394232)) b!612538))

(assert (= (and b!612538 c!69521) b!612542))

(assert (= (and b!612538 (not c!69521)) b!612528))

(assert (= (and b!612538 (not res!394237)) b!612541))

(assert (= (and b!612541 res!394233) b!612548))

(assert (= (and b!612541 (not res!394241)) b!612531))

(assert (= (and b!612531 (not res!394240)) b!612530))

(assert (= (and b!612530 (not res!394231)) b!612551))

(declare-fun m!588899 () Bool)

(assert (=> b!612531 m!588899))

(declare-fun m!588901 () Bool)

(assert (=> b!612536 m!588901))

(declare-fun m!588903 () Bool)

(assert (=> b!612544 m!588903))

(declare-fun m!588905 () Bool)

(assert (=> b!612529 m!588905))

(declare-fun m!588907 () Bool)

(assert (=> b!612547 m!588907))

(assert (=> b!612537 m!588903))

(assert (=> b!612537 m!588903))

(declare-fun m!588909 () Bool)

(assert (=> b!612537 m!588909))

(assert (=> b!612548 m!588903))

(assert (=> b!612548 m!588903))

(declare-fun m!588911 () Bool)

(assert (=> b!612548 m!588911))

(assert (=> b!612542 m!588903))

(assert (=> b!612542 m!588903))

(declare-fun m!588913 () Bool)

(assert (=> b!612542 m!588913))

(declare-fun m!588915 () Bool)

(assert (=> b!612542 m!588915))

(assert (=> b!612542 m!588903))

(declare-fun m!588917 () Bool)

(assert (=> b!612542 m!588917))

(assert (=> b!612542 m!588903))

(declare-fun m!588919 () Bool)

(assert (=> b!612542 m!588919))

(declare-fun m!588921 () Bool)

(assert (=> b!612542 m!588921))

(declare-fun m!588923 () Bool)

(assert (=> b!612542 m!588923))

(declare-fun m!588925 () Bool)

(assert (=> b!612542 m!588925))

(declare-fun m!588927 () Bool)

(assert (=> b!612551 m!588927))

(declare-fun m!588929 () Bool)

(assert (=> b!612530 m!588929))

(declare-fun m!588931 () Bool)

(assert (=> b!612533 m!588931))

(assert (=> b!612541 m!588903))

(declare-fun m!588933 () Bool)

(assert (=> b!612541 m!588933))

(declare-fun m!588935 () Bool)

(assert (=> b!612541 m!588935))

(declare-fun m!588937 () Bool)

(assert (=> b!612541 m!588937))

(assert (=> b!612541 m!588903))

(assert (=> b!612541 m!588903))

(assert (=> b!612541 m!588909))

(assert (=> b!612541 m!588925))

(assert (=> b!612541 m!588915))

(assert (=> b!612541 m!588903))

(declare-fun m!588939 () Bool)

(assert (=> b!612541 m!588939))

(declare-fun m!588941 () Bool)

(assert (=> b!612532 m!588941))

(declare-fun m!588943 () Bool)

(assert (=> b!612532 m!588943))

(declare-fun m!588945 () Bool)

(assert (=> b!612532 m!588945))

(declare-fun m!588947 () Bool)

(assert (=> b!612532 m!588947))

(assert (=> b!612532 m!588903))

(declare-fun m!588949 () Bool)

(assert (=> b!612532 m!588949))

(declare-fun m!588951 () Bool)

(assert (=> b!612532 m!588951))

(assert (=> b!612532 m!588903))

(declare-fun m!588953 () Bool)

(assert (=> b!612532 m!588953))

(declare-fun m!588955 () Bool)

(assert (=> b!612526 m!588955))

(declare-fun m!588957 () Bool)

(assert (=> start!55940 m!588957))

(declare-fun m!588959 () Bool)

(assert (=> start!55940 m!588959))

(assert (=> b!612527 m!588945))

(declare-fun m!588961 () Bool)

(assert (=> b!612527 m!588961))

(declare-fun m!588963 () Bool)

(assert (=> b!612549 m!588963))

(assert (=> b!612549 m!588903))

(assert (=> b!612549 m!588903))

(declare-fun m!588965 () Bool)

(assert (=> b!612549 m!588965))

(assert (=> b!612543 m!588903))

(assert (=> b!612543 m!588903))

(declare-fun m!588967 () Bool)

(assert (=> b!612543 m!588967))

(assert (=> b!612539 m!588903))

(assert (=> b!612539 m!588903))

(assert (=> b!612539 m!588911))

(assert (=> b!612550 m!588903))

(assert (=> b!612550 m!588945))

(declare-fun m!588969 () Bool)

(assert (=> b!612550 m!588969))

(declare-fun m!588971 () Bool)

(assert (=> b!612534 m!588971))

(check-sat (not b!612539) (not b!612536) (not b!612547) (not b!612529) (not b!612534) (not b!612533) (not b!612531) (not b!612542) (not b!612530) (not b!612551) (not start!55940) (not b!612532) (not b!612541) (not b!612537) (not b!612548) (not b!612543) (not b!612549))
(check-sat)
