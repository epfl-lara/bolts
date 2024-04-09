; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54862 () Bool)

(assert start!54862)

(declare-fun b!599225 () Bool)

(declare-fun e!342583 () Bool)

(declare-fun e!342584 () Bool)

(assert (=> b!599225 (= e!342583 e!342584)))

(declare-fun res!384388 () Bool)

(assert (=> b!599225 (=> (not res!384388) (not e!342584))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37060 0))(
  ( (array!37061 (arr!17786 (Array (_ BitVec 32) (_ BitVec 64))) (size!18150 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37060)

(assert (=> b!599225 (= res!384388 (= (select (store (arr!17786 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!272452 () array!37060)

(assert (=> b!599225 (= lt!272452 (array!37061 (store (arr!17786 a!2986) i!1108 k!1786) (size!18150 a!2986)))))

(declare-fun b!599226 () Bool)

(declare-fun res!384385 () Bool)

(assert (=> b!599226 (=> (not res!384385) (not e!342583))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599226 (= res!384385 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17786 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599227 () Bool)

(declare-fun res!384398 () Bool)

(assert (=> b!599227 (=> (not res!384398) (not e!342583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37060 (_ BitVec 32)) Bool)

(assert (=> b!599227 (= res!384398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599228 () Bool)

(declare-fun e!342595 () Bool)

(assert (=> b!599228 (= e!342595 e!342583)))

(declare-fun res!384382 () Bool)

(assert (=> b!599228 (=> (not res!384382) (not e!342583))))

(declare-datatypes ((SeekEntryResult!6233 0))(
  ( (MissingZero!6233 (index!27188 (_ BitVec 32))) (Found!6233 (index!27189 (_ BitVec 32))) (Intermediate!6233 (undefined!7045 Bool) (index!27190 (_ BitVec 32)) (x!56017 (_ BitVec 32))) (Undefined!6233) (MissingVacant!6233 (index!27191 (_ BitVec 32))) )
))
(declare-fun lt!272451 () SeekEntryResult!6233)

(assert (=> b!599228 (= res!384382 (or (= lt!272451 (MissingZero!6233 i!1108)) (= lt!272451 (MissingVacant!6233 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37060 (_ BitVec 32)) SeekEntryResult!6233)

(assert (=> b!599228 (= lt!272451 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599230 () Bool)

(declare-fun res!384391 () Bool)

(assert (=> b!599230 (=> (not res!384391) (not e!342595))))

(declare-fun arrayContainsKey!0 (array!37060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599230 (= res!384391 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599231 () Bool)

(declare-datatypes ((Unit!18876 0))(
  ( (Unit!18877) )
))
(declare-fun e!342585 () Unit!18876)

(declare-fun Unit!18878 () Unit!18876)

(assert (=> b!599231 (= e!342585 Unit!18878)))

(assert (=> b!599231 false))

(declare-fun b!599232 () Bool)

(declare-fun Unit!18879 () Unit!18876)

(assert (=> b!599232 (= e!342585 Unit!18879)))

(declare-fun b!599233 () Bool)

(declare-fun e!342593 () Bool)

(declare-fun e!342587 () Bool)

(assert (=> b!599233 (= e!342593 e!342587)))

(declare-fun res!384392 () Bool)

(assert (=> b!599233 (=> res!384392 e!342587)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!272459 () (_ BitVec 64))

(declare-fun lt!272455 () (_ BitVec 64))

(assert (=> b!599233 (= res!384392 (or (not (= (select (arr!17786 a!2986) j!136) lt!272455)) (not (= (select (arr!17786 a!2986) j!136) lt!272459)) (bvsge j!136 index!984)))))

(declare-fun b!599234 () Bool)

(declare-fun e!342589 () Bool)

(declare-fun lt!272458 () SeekEntryResult!6233)

(declare-fun lt!272453 () SeekEntryResult!6233)

(assert (=> b!599234 (= e!342589 (= lt!272458 lt!272453))))

(declare-fun b!599235 () Bool)

(declare-fun e!342592 () Bool)

(assert (=> b!599235 (= e!342587 e!342592)))

(declare-fun res!384381 () Bool)

(assert (=> b!599235 (=> (not res!384381) (not e!342592))))

(assert (=> b!599235 (= res!384381 (arrayContainsKey!0 lt!272452 (select (arr!17786 a!2986) j!136) j!136))))

(declare-fun b!599236 () Bool)

(declare-fun res!384396 () Bool)

(assert (=> b!599236 (=> (not res!384396) (not e!342595))))

(assert (=> b!599236 (= res!384396 (and (= (size!18150 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18150 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18150 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599237 () Bool)

(declare-fun res!384384 () Bool)

(declare-fun e!342586 () Bool)

(assert (=> b!599237 (=> res!384384 e!342586)))

(declare-datatypes ((List!11880 0))(
  ( (Nil!11877) (Cons!11876 (h!12921 (_ BitVec 64)) (t!18116 List!11880)) )
))
(declare-fun noDuplicate!279 (List!11880) Bool)

(assert (=> b!599237 (= res!384384 (not (noDuplicate!279 Nil!11877)))))

(declare-fun b!599238 () Bool)

(declare-fun res!384380 () Bool)

(assert (=> b!599238 (=> (not res!384380) (not e!342583))))

(declare-fun arrayNoDuplicates!0 (array!37060 (_ BitVec 32) List!11880) Bool)

(assert (=> b!599238 (= res!384380 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11877))))

(declare-fun b!599239 () Bool)

(declare-fun e!342588 () Bool)

(assert (=> b!599239 (= e!342588 e!342586)))

(declare-fun res!384383 () Bool)

(assert (=> b!599239 (=> res!384383 e!342586)))

(assert (=> b!599239 (= res!384383 (or (bvsge (size!18150 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18150 a!2986))))))

(assert (=> b!599239 (arrayNoDuplicates!0 lt!272452 j!136 Nil!11877)))

(declare-fun lt!272460 () Unit!18876)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37060 (_ BitVec 32) (_ BitVec 32)) Unit!18876)

(assert (=> b!599239 (= lt!272460 (lemmaNoDuplicateFromThenFromBigger!0 lt!272452 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599239 (arrayNoDuplicates!0 lt!272452 #b00000000000000000000000000000000 Nil!11877)))

(declare-fun lt!272456 () Unit!18876)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37060 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11880) Unit!18876)

(assert (=> b!599239 (= lt!272456 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11877))))

(assert (=> b!599239 (arrayContainsKey!0 lt!272452 (select (arr!17786 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272447 () Unit!18876)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37060 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18876)

(assert (=> b!599239 (= lt!272447 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272452 (select (arr!17786 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599240 () Bool)

(declare-fun res!384387 () Bool)

(assert (=> b!599240 (=> res!384387 e!342586)))

(declare-fun contains!2965 (List!11880 (_ BitVec 64)) Bool)

(assert (=> b!599240 (= res!384387 (contains!2965 Nil!11877 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599241 () Bool)

(declare-fun res!384395 () Bool)

(assert (=> b!599241 (=> (not res!384395) (not e!342595))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599241 (= res!384395 (validKeyInArray!0 (select (arr!17786 a!2986) j!136)))))

(declare-fun b!599242 () Bool)

(declare-fun e!342590 () Bool)

(declare-fun e!342591 () Bool)

(assert (=> b!599242 (= e!342590 (not e!342591))))

(declare-fun res!384390 () Bool)

(assert (=> b!599242 (=> res!384390 e!342591)))

(declare-fun lt!272449 () SeekEntryResult!6233)

(assert (=> b!599242 (= res!384390 (not (= lt!272449 (Found!6233 index!984))))))

(declare-fun lt!272450 () Unit!18876)

(assert (=> b!599242 (= lt!272450 e!342585)))

(declare-fun c!67790 () Bool)

(assert (=> b!599242 (= c!67790 (= lt!272449 Undefined!6233))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37060 (_ BitVec 32)) SeekEntryResult!6233)

(assert (=> b!599242 (= lt!272449 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272455 lt!272452 mask!3053))))

(assert (=> b!599242 e!342589))

(declare-fun res!384393 () Bool)

(assert (=> b!599242 (=> (not res!384393) (not e!342589))))

(declare-fun lt!272457 () (_ BitVec 32))

(assert (=> b!599242 (= res!384393 (= lt!272453 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272457 vacantSpotIndex!68 lt!272455 lt!272452 mask!3053)))))

(assert (=> b!599242 (= lt!272453 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272457 vacantSpotIndex!68 (select (arr!17786 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599242 (= lt!272455 (select (store (arr!17786 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272448 () Unit!18876)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37060 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18876)

(assert (=> b!599242 (= lt!272448 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272457 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599242 (= lt!272457 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!384389 () Bool)

(assert (=> start!54862 (=> (not res!384389) (not e!342595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54862 (= res!384389 (validMask!0 mask!3053))))

(assert (=> start!54862 e!342595))

(assert (=> start!54862 true))

(declare-fun array_inv!13560 (array!37060) Bool)

(assert (=> start!54862 (array_inv!13560 a!2986)))

(declare-fun b!599229 () Bool)

(declare-fun res!384394 () Bool)

(assert (=> b!599229 (=> (not res!384394) (not e!342595))))

(assert (=> b!599229 (= res!384394 (validKeyInArray!0 k!1786))))

(declare-fun b!599243 () Bool)

(assert (=> b!599243 (= e!342592 (arrayContainsKey!0 lt!272452 (select (arr!17786 a!2986) j!136) index!984))))

(declare-fun b!599244 () Bool)

(assert (=> b!599244 (= e!342584 e!342590)))

(declare-fun res!384397 () Bool)

(assert (=> b!599244 (=> (not res!384397) (not e!342590))))

(assert (=> b!599244 (= res!384397 (and (= lt!272458 (Found!6233 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17786 a!2986) index!984) (select (arr!17786 a!2986) j!136))) (not (= (select (arr!17786 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599244 (= lt!272458 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17786 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599245 () Bool)

(assert (=> b!599245 (= e!342586 true)))

(declare-fun lt!272454 () Bool)

(assert (=> b!599245 (= lt!272454 (contains!2965 Nil!11877 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599246 () Bool)

(assert (=> b!599246 (= e!342591 e!342588)))

(declare-fun res!384379 () Bool)

(assert (=> b!599246 (=> res!384379 e!342588)))

(assert (=> b!599246 (= res!384379 (or (not (= (select (arr!17786 a!2986) j!136) lt!272455)) (not (= (select (arr!17786 a!2986) j!136) lt!272459)) (bvsge j!136 index!984)))))

(assert (=> b!599246 e!342593))

(declare-fun res!384386 () Bool)

(assert (=> b!599246 (=> (not res!384386) (not e!342593))))

(assert (=> b!599246 (= res!384386 (= lt!272459 (select (arr!17786 a!2986) j!136)))))

(assert (=> b!599246 (= lt!272459 (select (store (arr!17786 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!54862 res!384389) b!599236))

(assert (= (and b!599236 res!384396) b!599241))

(assert (= (and b!599241 res!384395) b!599229))

(assert (= (and b!599229 res!384394) b!599230))

(assert (= (and b!599230 res!384391) b!599228))

(assert (= (and b!599228 res!384382) b!599227))

(assert (= (and b!599227 res!384398) b!599238))

(assert (= (and b!599238 res!384380) b!599226))

(assert (= (and b!599226 res!384385) b!599225))

(assert (= (and b!599225 res!384388) b!599244))

(assert (= (and b!599244 res!384397) b!599242))

(assert (= (and b!599242 res!384393) b!599234))

(assert (= (and b!599242 c!67790) b!599231))

(assert (= (and b!599242 (not c!67790)) b!599232))

(assert (= (and b!599242 (not res!384390)) b!599246))

(assert (= (and b!599246 res!384386) b!599233))

(assert (= (and b!599233 (not res!384392)) b!599235))

(assert (= (and b!599235 res!384381) b!599243))

(assert (= (and b!599246 (not res!384379)) b!599239))

(assert (= (and b!599239 (not res!384383)) b!599237))

(assert (= (and b!599237 (not res!384384)) b!599240))

(assert (= (and b!599240 (not res!384387)) b!599245))

(declare-fun m!576527 () Bool)

(assert (=> b!599230 m!576527))

(declare-fun m!576529 () Bool)

(assert (=> start!54862 m!576529))

(declare-fun m!576531 () Bool)

(assert (=> start!54862 m!576531))

(declare-fun m!576533 () Bool)

(assert (=> b!599239 m!576533))

(declare-fun m!576535 () Bool)

(assert (=> b!599239 m!576535))

(assert (=> b!599239 m!576533))

(declare-fun m!576537 () Bool)

(assert (=> b!599239 m!576537))

(declare-fun m!576539 () Bool)

(assert (=> b!599239 m!576539))

(assert (=> b!599239 m!576533))

(declare-fun m!576541 () Bool)

(assert (=> b!599239 m!576541))

(declare-fun m!576543 () Bool)

(assert (=> b!599239 m!576543))

(declare-fun m!576545 () Bool)

(assert (=> b!599239 m!576545))

(assert (=> b!599246 m!576533))

(declare-fun m!576547 () Bool)

(assert (=> b!599246 m!576547))

(declare-fun m!576549 () Bool)

(assert (=> b!599246 m!576549))

(assert (=> b!599241 m!576533))

(assert (=> b!599241 m!576533))

(declare-fun m!576551 () Bool)

(assert (=> b!599241 m!576551))

(declare-fun m!576553 () Bool)

(assert (=> b!599227 m!576553))

(assert (=> b!599225 m!576547))

(declare-fun m!576555 () Bool)

(assert (=> b!599225 m!576555))

(assert (=> b!599235 m!576533))

(assert (=> b!599235 m!576533))

(declare-fun m!576557 () Bool)

(assert (=> b!599235 m!576557))

(declare-fun m!576559 () Bool)

(assert (=> b!599226 m!576559))

(assert (=> b!599233 m!576533))

(declare-fun m!576561 () Bool)

(assert (=> b!599238 m!576561))

(declare-fun m!576563 () Bool)

(assert (=> b!599237 m!576563))

(declare-fun m!576565 () Bool)

(assert (=> b!599229 m!576565))

(declare-fun m!576567 () Bool)

(assert (=> b!599228 m!576567))

(assert (=> b!599243 m!576533))

(assert (=> b!599243 m!576533))

(declare-fun m!576569 () Bool)

(assert (=> b!599243 m!576569))

(declare-fun m!576571 () Bool)

(assert (=> b!599242 m!576571))

(declare-fun m!576573 () Bool)

(assert (=> b!599242 m!576573))

(assert (=> b!599242 m!576533))

(assert (=> b!599242 m!576547))

(declare-fun m!576575 () Bool)

(assert (=> b!599242 m!576575))

(declare-fun m!576577 () Bool)

(assert (=> b!599242 m!576577))

(assert (=> b!599242 m!576533))

(declare-fun m!576579 () Bool)

(assert (=> b!599242 m!576579))

(declare-fun m!576581 () Bool)

(assert (=> b!599242 m!576581))

(declare-fun m!576583 () Bool)

(assert (=> b!599245 m!576583))

(declare-fun m!576585 () Bool)

(assert (=> b!599240 m!576585))

(declare-fun m!576587 () Bool)

(assert (=> b!599244 m!576587))

(assert (=> b!599244 m!576533))

(assert (=> b!599244 m!576533))

(declare-fun m!576589 () Bool)

(assert (=> b!599244 m!576589))

(push 1)

