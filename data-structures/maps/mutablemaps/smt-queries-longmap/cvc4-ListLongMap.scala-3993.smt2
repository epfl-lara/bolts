; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54160 () Bool)

(assert start!54160)

(declare-fun b!591253 () Bool)

(declare-fun res!378380 () Bool)

(declare-fun e!337604 () Bool)

(assert (=> b!591253 (=> (not res!378380) (not e!337604))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36853 0))(
  ( (array!36854 (arr!17693 (Array (_ BitVec 32) (_ BitVec 64))) (size!18057 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36853)

(assert (=> b!591253 (= res!378380 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17693 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591254 () Bool)

(declare-fun e!337606 () Bool)

(assert (=> b!591254 (= e!337604 e!337606)))

(declare-fun res!378370 () Bool)

(assert (=> b!591254 (=> (not res!378370) (not e!337606))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!591254 (= res!378370 (= (select (store (arr!17693 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268339 () array!36853)

(assert (=> b!591254 (= lt!268339 (array!36854 (store (arr!17693 a!2986) i!1108 k!1786) (size!18057 a!2986)))))

(declare-fun b!591255 () Bool)

(declare-datatypes ((Unit!18504 0))(
  ( (Unit!18505) )
))
(declare-fun e!337601 () Unit!18504)

(declare-fun Unit!18506 () Unit!18504)

(assert (=> b!591255 (= e!337601 Unit!18506)))

(declare-fun b!591256 () Bool)

(declare-fun e!337597 () Bool)

(declare-datatypes ((SeekEntryResult!6140 0))(
  ( (MissingZero!6140 (index!26795 (_ BitVec 32))) (Found!6140 (index!26796 (_ BitVec 32))) (Intermediate!6140 (undefined!6952 Bool) (index!26797 (_ BitVec 32)) (x!55613 (_ BitVec 32))) (Undefined!6140) (MissingVacant!6140 (index!26798 (_ BitVec 32))) )
))
(declare-fun lt!268336 () SeekEntryResult!6140)

(declare-fun lt!268341 () SeekEntryResult!6140)

(assert (=> b!591256 (= e!337597 (= lt!268336 lt!268341))))

(declare-fun b!591257 () Bool)

(declare-fun e!337602 () Bool)

(assert (=> b!591257 (= e!337606 e!337602)))

(declare-fun res!378379 () Bool)

(assert (=> b!591257 (=> (not res!378379) (not e!337602))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!591257 (= res!378379 (and (= lt!268336 (Found!6140 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17693 a!2986) index!984) (select (arr!17693 a!2986) j!136))) (not (= (select (arr!17693 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36853 (_ BitVec 32)) SeekEntryResult!6140)

(assert (=> b!591257 (= lt!268336 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17693 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591258 () Bool)

(declare-fun res!378376 () Bool)

(declare-fun e!337596 () Bool)

(assert (=> b!591258 (=> (not res!378376) (not e!337596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591258 (= res!378376 (validKeyInArray!0 k!1786))))

(declare-fun b!591259 () Bool)

(declare-fun res!378369 () Bool)

(assert (=> b!591259 (=> (not res!378369) (not e!337604))))

(declare-datatypes ((List!11787 0))(
  ( (Nil!11784) (Cons!11783 (h!12828 (_ BitVec 64)) (t!18023 List!11787)) )
))
(declare-fun arrayNoDuplicates!0 (array!36853 (_ BitVec 32) List!11787) Bool)

(assert (=> b!591259 (= res!378369 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11784))))

(declare-fun b!591260 () Bool)

(declare-fun Unit!18507 () Unit!18504)

(assert (=> b!591260 (= e!337601 Unit!18507)))

(assert (=> b!591260 false))

(declare-fun b!591261 () Bool)

(declare-fun e!337598 () Bool)

(assert (=> b!591261 (= e!337602 (not e!337598))))

(declare-fun res!378382 () Bool)

(assert (=> b!591261 (=> res!378382 e!337598)))

(declare-fun lt!268337 () SeekEntryResult!6140)

(assert (=> b!591261 (= res!378382 (not (= lt!268337 (Found!6140 index!984))))))

(declare-fun lt!268333 () Unit!18504)

(assert (=> b!591261 (= lt!268333 e!337601)))

(declare-fun c!66809 () Bool)

(assert (=> b!591261 (= c!66809 (= lt!268337 Undefined!6140))))

(declare-fun lt!268335 () (_ BitVec 64))

(assert (=> b!591261 (= lt!268337 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268335 lt!268339 mask!3053))))

(assert (=> b!591261 e!337597))

(declare-fun res!378383 () Bool)

(assert (=> b!591261 (=> (not res!378383) (not e!337597))))

(declare-fun lt!268332 () (_ BitVec 32))

(assert (=> b!591261 (= res!378383 (= lt!268341 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268332 vacantSpotIndex!68 lt!268335 lt!268339 mask!3053)))))

(assert (=> b!591261 (= lt!268341 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268332 vacantSpotIndex!68 (select (arr!17693 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591261 (= lt!268335 (select (store (arr!17693 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268340 () Unit!18504)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36853 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18504)

(assert (=> b!591261 (= lt!268340 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268332 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591261 (= lt!268332 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591262 () Bool)

(assert (=> b!591262 (= e!337598 true)))

(declare-fun e!337605 () Bool)

(assert (=> b!591262 e!337605))

(declare-fun res!378381 () Bool)

(assert (=> b!591262 (=> (not res!378381) (not e!337605))))

(declare-fun lt!268338 () (_ BitVec 64))

(assert (=> b!591262 (= res!378381 (= lt!268338 (select (arr!17693 a!2986) j!136)))))

(assert (=> b!591262 (= lt!268338 (select (store (arr!17693 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!378373 () Bool)

(assert (=> start!54160 (=> (not res!378373) (not e!337596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54160 (= res!378373 (validMask!0 mask!3053))))

(assert (=> start!54160 e!337596))

(assert (=> start!54160 true))

(declare-fun array_inv!13467 (array!36853) Bool)

(assert (=> start!54160 (array_inv!13467 a!2986)))

(declare-fun b!591252 () Bool)

(declare-fun res!378368 () Bool)

(assert (=> b!591252 (=> (not res!378368) (not e!337596))))

(assert (=> b!591252 (= res!378368 (validKeyInArray!0 (select (arr!17693 a!2986) j!136)))))

(declare-fun b!591263 () Bool)

(declare-fun e!337600 () Bool)

(assert (=> b!591263 (= e!337605 e!337600)))

(declare-fun res!378372 () Bool)

(assert (=> b!591263 (=> res!378372 e!337600)))

(assert (=> b!591263 (= res!378372 (or (not (= (select (arr!17693 a!2986) j!136) lt!268335)) (not (= (select (arr!17693 a!2986) j!136) lt!268338)) (bvsge j!136 index!984)))))

(declare-fun b!591264 () Bool)

(declare-fun e!337599 () Bool)

(assert (=> b!591264 (= e!337600 e!337599)))

(declare-fun res!378378 () Bool)

(assert (=> b!591264 (=> (not res!378378) (not e!337599))))

(declare-fun arrayContainsKey!0 (array!36853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591264 (= res!378378 (arrayContainsKey!0 lt!268339 (select (arr!17693 a!2986) j!136) j!136))))

(declare-fun b!591265 () Bool)

(assert (=> b!591265 (= e!337599 (arrayContainsKey!0 lt!268339 (select (arr!17693 a!2986) j!136) index!984))))

(declare-fun b!591266 () Bool)

(declare-fun res!378375 () Bool)

(assert (=> b!591266 (=> (not res!378375) (not e!337604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36853 (_ BitVec 32)) Bool)

(assert (=> b!591266 (= res!378375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591267 () Bool)

(declare-fun res!378377 () Bool)

(assert (=> b!591267 (=> (not res!378377) (not e!337596))))

(assert (=> b!591267 (= res!378377 (and (= (size!18057 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18057 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18057 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591268 () Bool)

(declare-fun res!378371 () Bool)

(assert (=> b!591268 (=> (not res!378371) (not e!337596))))

(assert (=> b!591268 (= res!378371 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591269 () Bool)

(assert (=> b!591269 (= e!337596 e!337604)))

(declare-fun res!378374 () Bool)

(assert (=> b!591269 (=> (not res!378374) (not e!337604))))

(declare-fun lt!268334 () SeekEntryResult!6140)

(assert (=> b!591269 (= res!378374 (or (= lt!268334 (MissingZero!6140 i!1108)) (= lt!268334 (MissingVacant!6140 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36853 (_ BitVec 32)) SeekEntryResult!6140)

(assert (=> b!591269 (= lt!268334 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!54160 res!378373) b!591267))

(assert (= (and b!591267 res!378377) b!591252))

(assert (= (and b!591252 res!378368) b!591258))

(assert (= (and b!591258 res!378376) b!591268))

(assert (= (and b!591268 res!378371) b!591269))

(assert (= (and b!591269 res!378374) b!591266))

(assert (= (and b!591266 res!378375) b!591259))

(assert (= (and b!591259 res!378369) b!591253))

(assert (= (and b!591253 res!378380) b!591254))

(assert (= (and b!591254 res!378370) b!591257))

(assert (= (and b!591257 res!378379) b!591261))

(assert (= (and b!591261 res!378383) b!591256))

(assert (= (and b!591261 c!66809) b!591260))

(assert (= (and b!591261 (not c!66809)) b!591255))

(assert (= (and b!591261 (not res!378382)) b!591262))

(assert (= (and b!591262 res!378381) b!591263))

(assert (= (and b!591263 (not res!378372)) b!591264))

(assert (= (and b!591264 res!378378) b!591265))

(declare-fun m!569531 () Bool)

(assert (=> b!591262 m!569531))

(declare-fun m!569533 () Bool)

(assert (=> b!591262 m!569533))

(declare-fun m!569535 () Bool)

(assert (=> b!591262 m!569535))

(assert (=> b!591265 m!569531))

(assert (=> b!591265 m!569531))

(declare-fun m!569537 () Bool)

(assert (=> b!591265 m!569537))

(assert (=> b!591254 m!569533))

(declare-fun m!569539 () Bool)

(assert (=> b!591254 m!569539))

(declare-fun m!569541 () Bool)

(assert (=> b!591269 m!569541))

(declare-fun m!569543 () Bool)

(assert (=> b!591258 m!569543))

(declare-fun m!569545 () Bool)

(assert (=> b!591266 m!569545))

(declare-fun m!569547 () Bool)

(assert (=> b!591268 m!569547))

(declare-fun m!569549 () Bool)

(assert (=> b!591261 m!569549))

(assert (=> b!591261 m!569531))

(assert (=> b!591261 m!569533))

(declare-fun m!569551 () Bool)

(assert (=> b!591261 m!569551))

(assert (=> b!591261 m!569531))

(declare-fun m!569553 () Bool)

(assert (=> b!591261 m!569553))

(declare-fun m!569555 () Bool)

(assert (=> b!591261 m!569555))

(declare-fun m!569557 () Bool)

(assert (=> b!591261 m!569557))

(declare-fun m!569559 () Bool)

(assert (=> b!591261 m!569559))

(declare-fun m!569561 () Bool)

(assert (=> b!591253 m!569561))

(declare-fun m!569563 () Bool)

(assert (=> start!54160 m!569563))

(declare-fun m!569565 () Bool)

(assert (=> start!54160 m!569565))

(declare-fun m!569567 () Bool)

(assert (=> b!591257 m!569567))

(assert (=> b!591257 m!569531))

(assert (=> b!591257 m!569531))

(declare-fun m!569569 () Bool)

(assert (=> b!591257 m!569569))

(assert (=> b!591263 m!569531))

(assert (=> b!591252 m!569531))

(assert (=> b!591252 m!569531))

(declare-fun m!569571 () Bool)

(assert (=> b!591252 m!569571))

(declare-fun m!569573 () Bool)

(assert (=> b!591259 m!569573))

(assert (=> b!591264 m!569531))

(assert (=> b!591264 m!569531))

(declare-fun m!569575 () Bool)

(assert (=> b!591264 m!569575))

(push 1)

