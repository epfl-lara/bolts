; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55136 () Bool)

(assert start!55136)

(declare-fun b!603382 () Bool)

(declare-fun e!345185 () Bool)

(declare-fun e!345192 () Bool)

(assert (=> b!603382 (= e!345185 e!345192)))

(declare-fun res!387626 () Bool)

(assert (=> b!603382 (=> (not res!387626) (not e!345192))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6286 0))(
  ( (MissingZero!6286 (index!27406 (_ BitVec 32))) (Found!6286 (index!27407 (_ BitVec 32))) (Intermediate!6286 (undefined!7098 Bool) (index!27408 (_ BitVec 32)) (x!56232 (_ BitVec 32))) (Undefined!6286) (MissingVacant!6286 (index!27409 (_ BitVec 32))) )
))
(declare-fun lt!275052 () SeekEntryResult!6286)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37172 0))(
  ( (array!37173 (arr!17839 (Array (_ BitVec 32) (_ BitVec 64))) (size!18203 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37172)

(assert (=> b!603382 (= res!387626 (and (= lt!275052 (Found!6286 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17839 a!2986) index!984) (select (arr!17839 a!2986) j!136))) (not (= (select (arr!17839 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37172 (_ BitVec 32)) SeekEntryResult!6286)

(assert (=> b!603382 (= lt!275052 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17839 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603383 () Bool)

(declare-fun res!387634 () Bool)

(declare-fun e!345197 () Bool)

(assert (=> b!603383 (=> (not res!387634) (not e!345197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37172 (_ BitVec 32)) Bool)

(assert (=> b!603383 (= res!387634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603384 () Bool)

(declare-datatypes ((Unit!19144 0))(
  ( (Unit!19145) )
))
(declare-fun e!345194 () Unit!19144)

(declare-fun Unit!19146 () Unit!19144)

(assert (=> b!603384 (= e!345194 Unit!19146)))

(assert (=> b!603384 false))

(declare-fun res!387638 () Bool)

(declare-fun e!345190 () Bool)

(assert (=> start!55136 (=> (not res!387638) (not e!345190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55136 (= res!387638 (validMask!0 mask!3053))))

(assert (=> start!55136 e!345190))

(assert (=> start!55136 true))

(declare-fun array_inv!13613 (array!37172) Bool)

(assert (=> start!55136 (array_inv!13613 a!2986)))

(declare-fun b!603385 () Bool)

(declare-fun Unit!19147 () Unit!19144)

(assert (=> b!603385 (= e!345194 Unit!19147)))

(declare-fun b!603386 () Bool)

(declare-fun res!387629 () Bool)

(assert (=> b!603386 (=> (not res!387629) (not e!345190))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603386 (= res!387629 (validKeyInArray!0 k0!1786))))

(declare-fun b!603387 () Bool)

(declare-fun e!345187 () Bool)

(declare-fun e!345199 () Bool)

(assert (=> b!603387 (= e!345187 e!345199)))

(declare-fun res!387631 () Bool)

(assert (=> b!603387 (=> res!387631 e!345199)))

(declare-fun lt!275061 () (_ BitVec 64))

(declare-fun lt!275051 () (_ BitVec 64))

(assert (=> b!603387 (= res!387631 (or (not (= (select (arr!17839 a!2986) j!136) lt!275051)) (not (= (select (arr!17839 a!2986) j!136) lt!275061)) (bvsge j!136 index!984)))))

(declare-fun b!603388 () Bool)

(declare-fun e!345191 () Bool)

(assert (=> b!603388 (= e!345192 (not e!345191))))

(declare-fun res!387639 () Bool)

(assert (=> b!603388 (=> res!387639 e!345191)))

(declare-fun lt!275058 () SeekEntryResult!6286)

(assert (=> b!603388 (= res!387639 (not (= lt!275058 (Found!6286 index!984))))))

(declare-fun lt!275054 () Unit!19144)

(assert (=> b!603388 (= lt!275054 e!345194)))

(declare-fun c!68246 () Bool)

(assert (=> b!603388 (= c!68246 (= lt!275058 Undefined!6286))))

(declare-fun lt!275060 () array!37172)

(assert (=> b!603388 (= lt!275058 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275051 lt!275060 mask!3053))))

(declare-fun e!345189 () Bool)

(assert (=> b!603388 e!345189))

(declare-fun res!387640 () Bool)

(assert (=> b!603388 (=> (not res!387640) (not e!345189))))

(declare-fun lt!275056 () SeekEntryResult!6286)

(declare-fun lt!275059 () (_ BitVec 32))

(assert (=> b!603388 (= res!387640 (= lt!275056 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275059 vacantSpotIndex!68 lt!275051 lt!275060 mask!3053)))))

(assert (=> b!603388 (= lt!275056 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275059 vacantSpotIndex!68 (select (arr!17839 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603388 (= lt!275051 (select (store (arr!17839 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!275053 () Unit!19144)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37172 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19144)

(assert (=> b!603388 (= lt!275053 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275059 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603388 (= lt!275059 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603389 () Bool)

(assert (=> b!603389 (= e!345189 (= lt!275052 lt!275056))))

(declare-fun b!603390 () Bool)

(declare-fun e!345188 () Bool)

(assert (=> b!603390 (= e!345188 true)))

(declare-fun e!345198 () Bool)

(assert (=> b!603390 e!345198))

(declare-fun res!387628 () Bool)

(assert (=> b!603390 (=> (not res!387628) (not e!345198))))

(declare-fun arrayContainsKey!0 (array!37172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603390 (= res!387628 (arrayContainsKey!0 lt!275060 (select (arr!17839 a!2986) j!136) j!136))))

(declare-fun b!603391 () Bool)

(assert (=> b!603391 (= e!345198 (arrayContainsKey!0 lt!275060 (select (arr!17839 a!2986) j!136) index!984))))

(declare-fun b!603392 () Bool)

(declare-fun e!345196 () Bool)

(assert (=> b!603392 (= e!345199 e!345196)))

(declare-fun res!387635 () Bool)

(assert (=> b!603392 (=> (not res!387635) (not e!345196))))

(assert (=> b!603392 (= res!387635 (arrayContainsKey!0 lt!275060 (select (arr!17839 a!2986) j!136) j!136))))

(declare-fun b!603393 () Bool)

(assert (=> b!603393 (= e!345190 e!345197)))

(declare-fun res!387643 () Bool)

(assert (=> b!603393 (=> (not res!387643) (not e!345197))))

(declare-fun lt!275055 () SeekEntryResult!6286)

(assert (=> b!603393 (= res!387643 (or (= lt!275055 (MissingZero!6286 i!1108)) (= lt!275055 (MissingVacant!6286 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37172 (_ BitVec 32)) SeekEntryResult!6286)

(assert (=> b!603393 (= lt!275055 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!603394 () Bool)

(assert (=> b!603394 (= e!345197 e!345185)))

(declare-fun res!387627 () Bool)

(assert (=> b!603394 (=> (not res!387627) (not e!345185))))

(assert (=> b!603394 (= res!387627 (= (select (store (arr!17839 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603394 (= lt!275060 (array!37173 (store (arr!17839 a!2986) i!1108 k0!1786) (size!18203 a!2986)))))

(declare-fun b!603395 () Bool)

(assert (=> b!603395 (= e!345196 (arrayContainsKey!0 lt!275060 (select (arr!17839 a!2986) j!136) index!984))))

(declare-fun b!603396 () Bool)

(declare-fun res!387644 () Bool)

(assert (=> b!603396 (=> (not res!387644) (not e!345190))))

(assert (=> b!603396 (= res!387644 (and (= (size!18203 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18203 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18203 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603397 () Bool)

(declare-fun e!345195 () Unit!19144)

(declare-fun Unit!19148 () Unit!19144)

(assert (=> b!603397 (= e!345195 Unit!19148)))

(declare-fun lt!275050 () Unit!19144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37172 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19144)

(assert (=> b!603397 (= lt!275050 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275060 (select (arr!17839 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603397 (arrayContainsKey!0 lt!275060 (select (arr!17839 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275047 () Unit!19144)

(declare-datatypes ((List!11933 0))(
  ( (Nil!11930) (Cons!11929 (h!12974 (_ BitVec 64)) (t!18169 List!11933)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37172 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11933) Unit!19144)

(assert (=> b!603397 (= lt!275047 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11930))))

(declare-fun arrayNoDuplicates!0 (array!37172 (_ BitVec 32) List!11933) Bool)

(assert (=> b!603397 (arrayNoDuplicates!0 lt!275060 #b00000000000000000000000000000000 Nil!11930)))

(declare-fun lt!275048 () Unit!19144)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37172 (_ BitVec 32) (_ BitVec 32)) Unit!19144)

(assert (=> b!603397 (= lt!275048 (lemmaNoDuplicateFromThenFromBigger!0 lt!275060 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603397 (arrayNoDuplicates!0 lt!275060 j!136 Nil!11930)))

(declare-fun lt!275049 () Unit!19144)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37172 (_ BitVec 64) (_ BitVec 32) List!11933) Unit!19144)

(assert (=> b!603397 (= lt!275049 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275060 (select (arr!17839 a!2986) j!136) j!136 Nil!11930))))

(assert (=> b!603397 false))

(declare-fun b!603398 () Bool)

(declare-fun res!387642 () Bool)

(assert (=> b!603398 (=> (not res!387642) (not e!345190))))

(assert (=> b!603398 (= res!387642 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603399 () Bool)

(declare-fun res!387630 () Bool)

(assert (=> b!603399 (=> (not res!387630) (not e!345197))))

(assert (=> b!603399 (= res!387630 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17839 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603400 () Bool)

(declare-fun Unit!19149 () Unit!19144)

(assert (=> b!603400 (= e!345195 Unit!19149)))

(declare-fun b!603401 () Bool)

(declare-fun res!387641 () Bool)

(assert (=> b!603401 (=> (not res!387641) (not e!345190))))

(assert (=> b!603401 (= res!387641 (validKeyInArray!0 (select (arr!17839 a!2986) j!136)))))

(declare-fun b!603402 () Bool)

(declare-fun e!345193 () Bool)

(assert (=> b!603402 (= e!345193 e!345188)))

(declare-fun res!387636 () Bool)

(assert (=> b!603402 (=> res!387636 e!345188)))

(assert (=> b!603402 (= res!387636 (bvsge index!984 j!136))))

(declare-fun lt!275057 () Unit!19144)

(assert (=> b!603402 (= lt!275057 e!345195)))

(declare-fun c!68245 () Bool)

(assert (=> b!603402 (= c!68245 (bvslt j!136 index!984))))

(declare-fun b!603403 () Bool)

(declare-fun res!387633 () Bool)

(assert (=> b!603403 (=> (not res!387633) (not e!345197))))

(assert (=> b!603403 (= res!387633 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11930))))

(declare-fun b!603404 () Bool)

(assert (=> b!603404 (= e!345191 e!345193)))

(declare-fun res!387632 () Bool)

(assert (=> b!603404 (=> res!387632 e!345193)))

(assert (=> b!603404 (= res!387632 (or (not (= (select (arr!17839 a!2986) j!136) lt!275051)) (not (= (select (arr!17839 a!2986) j!136) lt!275061))))))

(assert (=> b!603404 e!345187))

(declare-fun res!387637 () Bool)

(assert (=> b!603404 (=> (not res!387637) (not e!345187))))

(assert (=> b!603404 (= res!387637 (= lt!275061 (select (arr!17839 a!2986) j!136)))))

(assert (=> b!603404 (= lt!275061 (select (store (arr!17839 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!55136 res!387638) b!603396))

(assert (= (and b!603396 res!387644) b!603401))

(assert (= (and b!603401 res!387641) b!603386))

(assert (= (and b!603386 res!387629) b!603398))

(assert (= (and b!603398 res!387642) b!603393))

(assert (= (and b!603393 res!387643) b!603383))

(assert (= (and b!603383 res!387634) b!603403))

(assert (= (and b!603403 res!387633) b!603399))

(assert (= (and b!603399 res!387630) b!603394))

(assert (= (and b!603394 res!387627) b!603382))

(assert (= (and b!603382 res!387626) b!603388))

(assert (= (and b!603388 res!387640) b!603389))

(assert (= (and b!603388 c!68246) b!603384))

(assert (= (and b!603388 (not c!68246)) b!603385))

(assert (= (and b!603388 (not res!387639)) b!603404))

(assert (= (and b!603404 res!387637) b!603387))

(assert (= (and b!603387 (not res!387631)) b!603392))

(assert (= (and b!603392 res!387635) b!603395))

(assert (= (and b!603404 (not res!387632)) b!603402))

(assert (= (and b!603402 c!68245) b!603397))

(assert (= (and b!603402 (not c!68245)) b!603400))

(assert (= (and b!603402 (not res!387636)) b!603390))

(assert (= (and b!603390 res!387628) b!603391))

(declare-fun m!580431 () Bool)

(assert (=> b!603394 m!580431))

(declare-fun m!580433 () Bool)

(assert (=> b!603394 m!580433))

(declare-fun m!580435 () Bool)

(assert (=> b!603387 m!580435))

(assert (=> b!603395 m!580435))

(assert (=> b!603395 m!580435))

(declare-fun m!580437 () Bool)

(assert (=> b!603395 m!580437))

(assert (=> b!603392 m!580435))

(assert (=> b!603392 m!580435))

(declare-fun m!580439 () Bool)

(assert (=> b!603392 m!580439))

(declare-fun m!580441 () Bool)

(assert (=> b!603382 m!580441))

(assert (=> b!603382 m!580435))

(assert (=> b!603382 m!580435))

(declare-fun m!580443 () Bool)

(assert (=> b!603382 m!580443))

(declare-fun m!580445 () Bool)

(assert (=> b!603399 m!580445))

(assert (=> b!603401 m!580435))

(assert (=> b!603401 m!580435))

(declare-fun m!580447 () Bool)

(assert (=> b!603401 m!580447))

(assert (=> b!603397 m!580435))

(declare-fun m!580449 () Bool)

(assert (=> b!603397 m!580449))

(assert (=> b!603397 m!580435))

(declare-fun m!580451 () Bool)

(assert (=> b!603397 m!580451))

(assert (=> b!603397 m!580435))

(assert (=> b!603397 m!580435))

(declare-fun m!580453 () Bool)

(assert (=> b!603397 m!580453))

(declare-fun m!580455 () Bool)

(assert (=> b!603397 m!580455))

(declare-fun m!580457 () Bool)

(assert (=> b!603397 m!580457))

(declare-fun m!580459 () Bool)

(assert (=> b!603397 m!580459))

(declare-fun m!580461 () Bool)

(assert (=> b!603397 m!580461))

(declare-fun m!580463 () Bool)

(assert (=> b!603386 m!580463))

(assert (=> b!603391 m!580435))

(assert (=> b!603391 m!580435))

(assert (=> b!603391 m!580437))

(declare-fun m!580465 () Bool)

(assert (=> start!55136 m!580465))

(declare-fun m!580467 () Bool)

(assert (=> start!55136 m!580467))

(declare-fun m!580469 () Bool)

(assert (=> b!603403 m!580469))

(declare-fun m!580471 () Bool)

(assert (=> b!603393 m!580471))

(assert (=> b!603404 m!580435))

(assert (=> b!603404 m!580431))

(declare-fun m!580473 () Bool)

(assert (=> b!603404 m!580473))

(declare-fun m!580475 () Bool)

(assert (=> b!603388 m!580475))

(declare-fun m!580477 () Bool)

(assert (=> b!603388 m!580477))

(assert (=> b!603388 m!580435))

(assert (=> b!603388 m!580431))

(declare-fun m!580479 () Bool)

(assert (=> b!603388 m!580479))

(declare-fun m!580481 () Bool)

(assert (=> b!603388 m!580481))

(declare-fun m!580483 () Bool)

(assert (=> b!603388 m!580483))

(assert (=> b!603388 m!580435))

(declare-fun m!580485 () Bool)

(assert (=> b!603388 m!580485))

(declare-fun m!580487 () Bool)

(assert (=> b!603398 m!580487))

(assert (=> b!603390 m!580435))

(assert (=> b!603390 m!580435))

(assert (=> b!603390 m!580439))

(declare-fun m!580489 () Bool)

(assert (=> b!603383 m!580489))

(check-sat (not b!603395) (not b!603383) (not start!55136) (not b!603403) (not b!603382) (not b!603401) (not b!603398) (not b!603397) (not b!603386) (not b!603393) (not b!603392) (not b!603391) (not b!603388) (not b!603390))
(check-sat)
