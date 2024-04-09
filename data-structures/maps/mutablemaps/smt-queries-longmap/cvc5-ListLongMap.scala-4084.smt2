; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56010 () Bool)

(assert start!56010)

(declare-fun b!615198 () Bool)

(declare-fun res!396363 () Bool)

(declare-fun e!352736 () Bool)

(assert (=> b!615198 (=> (not res!396363) (not e!352736))))

(declare-datatypes ((array!37443 0))(
  ( (array!37444 (arr!17964 (Array (_ BitVec 32) (_ BitVec 64))) (size!18328 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37443)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615198 (= res!396363 (validKeyInArray!0 (select (arr!17964 a!2986) j!136)))))

(declare-fun b!615199 () Bool)

(declare-datatypes ((Unit!19930 0))(
  ( (Unit!19931) )
))
(declare-fun e!352742 () Unit!19930)

(declare-fun Unit!19932 () Unit!19930)

(assert (=> b!615199 (= e!352742 Unit!19932)))

(declare-fun e!352743 () Bool)

(declare-fun b!615200 () Bool)

(declare-fun lt!282617 () array!37443)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615200 (= e!352743 (arrayContainsKey!0 lt!282617 (select (arr!17964 a!2986) j!136) index!984))))

(declare-fun b!615201 () Bool)

(declare-fun res!396357 () Bool)

(assert (=> b!615201 (=> (not res!396357) (not e!352736))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!615201 (= res!396357 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun e!352733 () Bool)

(declare-fun b!615202 () Bool)

(assert (=> b!615202 (= e!352733 (arrayContainsKey!0 lt!282617 (select (arr!17964 a!2986) j!136) index!984))))

(declare-fun b!615203 () Bool)

(declare-fun res!396356 () Bool)

(declare-fun e!352732 () Bool)

(assert (=> b!615203 (=> (not res!396356) (not e!352732))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37443 (_ BitVec 32)) Bool)

(assert (=> b!615203 (= res!396356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615204 () Bool)

(declare-fun e!352740 () Unit!19930)

(declare-fun Unit!19933 () Unit!19930)

(assert (=> b!615204 (= e!352740 Unit!19933)))

(assert (=> b!615204 false))

(declare-fun b!615205 () Bool)

(declare-fun res!396360 () Bool)

(assert (=> b!615205 (= res!396360 (arrayContainsKey!0 lt!282617 (select (arr!17964 a!2986) j!136) j!136))))

(assert (=> b!615205 (=> (not res!396360) (not e!352743))))

(declare-fun e!352738 () Bool)

(assert (=> b!615205 (= e!352738 e!352743)))

(declare-fun b!615206 () Bool)

(declare-fun Unit!19934 () Unit!19930)

(assert (=> b!615206 (= e!352740 Unit!19934)))

(declare-fun res!396370 () Bool)

(assert (=> start!56010 (=> (not res!396370) (not e!352736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56010 (= res!396370 (validMask!0 mask!3053))))

(assert (=> start!56010 e!352736))

(assert (=> start!56010 true))

(declare-fun array_inv!13738 (array!37443) Bool)

(assert (=> start!56010 (array_inv!13738 a!2986)))

(declare-fun b!615207 () Bool)

(declare-fun res!396369 () Bool)

(assert (=> b!615207 (=> (not res!396369) (not e!352736))))

(assert (=> b!615207 (= res!396369 (validKeyInArray!0 k!1786))))

(declare-fun b!615208 () Bool)

(declare-fun e!352741 () Bool)

(assert (=> b!615208 (= e!352732 e!352741)))

(declare-fun res!396358 () Bool)

(assert (=> b!615208 (=> (not res!396358) (not e!352741))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!615208 (= res!396358 (= (select (store (arr!17964 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615208 (= lt!282617 (array!37444 (store (arr!17964 a!2986) i!1108 k!1786) (size!18328 a!2986)))))

(declare-fun b!615209 () Bool)

(declare-fun e!352744 () Unit!19930)

(declare-fun Unit!19935 () Unit!19930)

(assert (=> b!615209 (= e!352744 Unit!19935)))

(declare-fun res!396366 () Bool)

(assert (=> b!615209 (= res!396366 (= (select (store (arr!17964 a!2986) i!1108 k!1786) index!984) (select (arr!17964 a!2986) j!136)))))

(declare-fun e!352735 () Bool)

(assert (=> b!615209 (=> (not res!396366) (not e!352735))))

(assert (=> b!615209 e!352735))

(declare-fun c!69789 () Bool)

(assert (=> b!615209 (= c!69789 (bvslt j!136 index!984))))

(declare-fun lt!282626 () Unit!19930)

(declare-fun e!352739 () Unit!19930)

(assert (=> b!615209 (= lt!282626 e!352739)))

(declare-fun c!69790 () Bool)

(assert (=> b!615209 (= c!69790 (bvslt index!984 j!136))))

(declare-fun lt!282632 () Unit!19930)

(assert (=> b!615209 (= lt!282632 e!352742)))

(assert (=> b!615209 false))

(declare-fun b!615210 () Bool)

(declare-fun e!352731 () Bool)

(assert (=> b!615210 (= e!352741 e!352731)))

(declare-fun res!396361 () Bool)

(assert (=> b!615210 (=> (not res!396361) (not e!352731))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6411 0))(
  ( (MissingZero!6411 (index!27927 (_ BitVec 32))) (Found!6411 (index!27928 (_ BitVec 32))) (Intermediate!6411 (undefined!7223 Bool) (index!27929 (_ BitVec 32)) (x!56756 (_ BitVec 32))) (Undefined!6411) (MissingVacant!6411 (index!27930 (_ BitVec 32))) )
))
(declare-fun lt!282634 () SeekEntryResult!6411)

(assert (=> b!615210 (= res!396361 (and (= lt!282634 (Found!6411 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17964 a!2986) index!984) (select (arr!17964 a!2986) j!136))) (not (= (select (arr!17964 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37443 (_ BitVec 32)) SeekEntryResult!6411)

(assert (=> b!615210 (= lt!282634 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17964 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615211 () Bool)

(declare-fun Unit!19936 () Unit!19930)

(assert (=> b!615211 (= e!352739 Unit!19936)))

(declare-fun b!615212 () Bool)

(declare-fun e!352734 () Bool)

(declare-fun lt!282629 () SeekEntryResult!6411)

(assert (=> b!615212 (= e!352734 (= lt!282634 lt!282629))))

(declare-fun b!615213 () Bool)

(declare-fun res!396368 () Bool)

(assert (=> b!615213 (=> (not res!396368) (not e!352732))))

(assert (=> b!615213 (= res!396368 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17964 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615214 () Bool)

(declare-fun Unit!19937 () Unit!19930)

(assert (=> b!615214 (= e!352744 Unit!19937)))

(declare-fun b!615215 () Bool)

(assert (=> b!615215 (= e!352731 (not true))))

(declare-fun lt!282628 () Unit!19930)

(assert (=> b!615215 (= lt!282628 e!352744)))

(declare-fun c!69791 () Bool)

(declare-fun lt!282624 () SeekEntryResult!6411)

(assert (=> b!615215 (= c!69791 (= lt!282624 (Found!6411 index!984)))))

(declare-fun lt!282618 () Unit!19930)

(assert (=> b!615215 (= lt!282618 e!352740)))

(declare-fun c!69788 () Bool)

(assert (=> b!615215 (= c!69788 (= lt!282624 Undefined!6411))))

(declare-fun lt!282623 () (_ BitVec 64))

(assert (=> b!615215 (= lt!282624 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282623 lt!282617 mask!3053))))

(assert (=> b!615215 e!352734))

(declare-fun res!396364 () Bool)

(assert (=> b!615215 (=> (not res!396364) (not e!352734))))

(declare-fun lt!282630 () (_ BitVec 32))

(assert (=> b!615215 (= res!396364 (= lt!282629 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282630 vacantSpotIndex!68 lt!282623 lt!282617 mask!3053)))))

(assert (=> b!615215 (= lt!282629 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282630 vacantSpotIndex!68 (select (arr!17964 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615215 (= lt!282623 (select (store (arr!17964 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282631 () Unit!19930)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37443 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19930)

(assert (=> b!615215 (= lt!282631 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282630 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615215 (= lt!282630 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615216 () Bool)

(assert (=> b!615216 false))

(declare-fun lt!282619 () Unit!19930)

(declare-datatypes ((List!12058 0))(
  ( (Nil!12055) (Cons!12054 (h!13099 (_ BitVec 64)) (t!18294 List!12058)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37443 (_ BitVec 64) (_ BitVec 32) List!12058) Unit!19930)

(assert (=> b!615216 (= lt!282619 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282617 (select (arr!17964 a!2986) j!136) j!136 Nil!12055))))

(declare-fun arrayNoDuplicates!0 (array!37443 (_ BitVec 32) List!12058) Bool)

(assert (=> b!615216 (arrayNoDuplicates!0 lt!282617 j!136 Nil!12055)))

(declare-fun lt!282633 () Unit!19930)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37443 (_ BitVec 32) (_ BitVec 32)) Unit!19930)

(assert (=> b!615216 (= lt!282633 (lemmaNoDuplicateFromThenFromBigger!0 lt!282617 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615216 (arrayNoDuplicates!0 lt!282617 #b00000000000000000000000000000000 Nil!12055)))

(declare-fun lt!282625 () Unit!19930)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37443 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12058) Unit!19930)

(assert (=> b!615216 (= lt!282625 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12055))))

(assert (=> b!615216 (arrayContainsKey!0 lt!282617 (select (arr!17964 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282627 () Unit!19930)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37443 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19930)

(assert (=> b!615216 (= lt!282627 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282617 (select (arr!17964 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19938 () Unit!19930)

(assert (=> b!615216 (= e!352739 Unit!19938)))

(declare-fun b!615217 () Bool)

(declare-fun res!396365 () Bool)

(assert (=> b!615217 (= res!396365 (bvsge j!136 index!984))))

(assert (=> b!615217 (=> res!396365 e!352738)))

(assert (=> b!615217 (= e!352735 e!352738)))

(declare-fun b!615218 () Bool)

(assert (=> b!615218 (= e!352736 e!352732)))

(declare-fun res!396359 () Bool)

(assert (=> b!615218 (=> (not res!396359) (not e!352732))))

(declare-fun lt!282621 () SeekEntryResult!6411)

(assert (=> b!615218 (= res!396359 (or (= lt!282621 (MissingZero!6411 i!1108)) (= lt!282621 (MissingVacant!6411 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37443 (_ BitVec 32)) SeekEntryResult!6411)

(assert (=> b!615218 (= lt!282621 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615219 () Bool)

(assert (=> b!615219 false))

(declare-fun lt!282620 () Unit!19930)

(assert (=> b!615219 (= lt!282620 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282617 (select (arr!17964 a!2986) j!136) index!984 Nil!12055))))

(assert (=> b!615219 (arrayNoDuplicates!0 lt!282617 index!984 Nil!12055)))

(declare-fun lt!282636 () Unit!19930)

(assert (=> b!615219 (= lt!282636 (lemmaNoDuplicateFromThenFromBigger!0 lt!282617 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615219 (arrayNoDuplicates!0 lt!282617 #b00000000000000000000000000000000 Nil!12055)))

(declare-fun lt!282622 () Unit!19930)

(assert (=> b!615219 (= lt!282622 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12055))))

(assert (=> b!615219 (arrayContainsKey!0 lt!282617 (select (arr!17964 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282635 () Unit!19930)

(assert (=> b!615219 (= lt!282635 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282617 (select (arr!17964 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615219 e!352733))

(declare-fun res!396371 () Bool)

(assert (=> b!615219 (=> (not res!396371) (not e!352733))))

(assert (=> b!615219 (= res!396371 (arrayContainsKey!0 lt!282617 (select (arr!17964 a!2986) j!136) j!136))))

(declare-fun Unit!19939 () Unit!19930)

(assert (=> b!615219 (= e!352742 Unit!19939)))

(declare-fun b!615220 () Bool)

(declare-fun res!396362 () Bool)

(assert (=> b!615220 (=> (not res!396362) (not e!352732))))

(assert (=> b!615220 (= res!396362 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12055))))

(declare-fun b!615221 () Bool)

(declare-fun res!396367 () Bool)

(assert (=> b!615221 (=> (not res!396367) (not e!352736))))

(assert (=> b!615221 (= res!396367 (and (= (size!18328 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18328 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18328 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56010 res!396370) b!615221))

(assert (= (and b!615221 res!396367) b!615198))

(assert (= (and b!615198 res!396363) b!615207))

(assert (= (and b!615207 res!396369) b!615201))

(assert (= (and b!615201 res!396357) b!615218))

(assert (= (and b!615218 res!396359) b!615203))

(assert (= (and b!615203 res!396356) b!615220))

(assert (= (and b!615220 res!396362) b!615213))

(assert (= (and b!615213 res!396368) b!615208))

(assert (= (and b!615208 res!396358) b!615210))

(assert (= (and b!615210 res!396361) b!615215))

(assert (= (and b!615215 res!396364) b!615212))

(assert (= (and b!615215 c!69788) b!615204))

(assert (= (and b!615215 (not c!69788)) b!615206))

(assert (= (and b!615215 c!69791) b!615209))

(assert (= (and b!615215 (not c!69791)) b!615214))

(assert (= (and b!615209 res!396366) b!615217))

(assert (= (and b!615217 (not res!396365)) b!615205))

(assert (= (and b!615205 res!396360) b!615200))

(assert (= (and b!615209 c!69789) b!615216))

(assert (= (and b!615209 (not c!69789)) b!615211))

(assert (= (and b!615209 c!69790) b!615219))

(assert (= (and b!615209 (not c!69790)) b!615199))

(assert (= (and b!615219 res!396371) b!615202))

(declare-fun m!591453 () Bool)

(assert (=> b!615205 m!591453))

(assert (=> b!615205 m!591453))

(declare-fun m!591455 () Bool)

(assert (=> b!615205 m!591455))

(assert (=> b!615216 m!591453))

(assert (=> b!615216 m!591453))

(declare-fun m!591457 () Bool)

(assert (=> b!615216 m!591457))

(declare-fun m!591459 () Bool)

(assert (=> b!615216 m!591459))

(assert (=> b!615216 m!591453))

(declare-fun m!591461 () Bool)

(assert (=> b!615216 m!591461))

(declare-fun m!591463 () Bool)

(assert (=> b!615216 m!591463))

(assert (=> b!615216 m!591453))

(declare-fun m!591465 () Bool)

(assert (=> b!615216 m!591465))

(declare-fun m!591467 () Bool)

(assert (=> b!615216 m!591467))

(declare-fun m!591469 () Bool)

(assert (=> b!615216 m!591469))

(declare-fun m!591471 () Bool)

(assert (=> b!615210 m!591471))

(assert (=> b!615210 m!591453))

(assert (=> b!615210 m!591453))

(declare-fun m!591473 () Bool)

(assert (=> b!615210 m!591473))

(declare-fun m!591475 () Bool)

(assert (=> b!615219 m!591475))

(assert (=> b!615219 m!591453))

(assert (=> b!615219 m!591459))

(declare-fun m!591477 () Bool)

(assert (=> b!615219 m!591477))

(assert (=> b!615219 m!591453))

(assert (=> b!615219 m!591455))

(assert (=> b!615219 m!591453))

(declare-fun m!591479 () Bool)

(assert (=> b!615219 m!591479))

(assert (=> b!615219 m!591453))

(declare-fun m!591481 () Bool)

(assert (=> b!615219 m!591481))

(assert (=> b!615219 m!591453))

(declare-fun m!591483 () Bool)

(assert (=> b!615219 m!591483))

(assert (=> b!615219 m!591469))

(declare-fun m!591485 () Bool)

(assert (=> b!615207 m!591485))

(declare-fun m!591487 () Bool)

(assert (=> b!615203 m!591487))

(declare-fun m!591489 () Bool)

(assert (=> b!615220 m!591489))

(assert (=> b!615200 m!591453))

(assert (=> b!615200 m!591453))

(declare-fun m!591491 () Bool)

(assert (=> b!615200 m!591491))

(declare-fun m!591493 () Bool)

(assert (=> b!615209 m!591493))

(declare-fun m!591495 () Bool)

(assert (=> b!615209 m!591495))

(assert (=> b!615209 m!591453))

(assert (=> b!615208 m!591493))

(declare-fun m!591497 () Bool)

(assert (=> b!615208 m!591497))

(declare-fun m!591499 () Bool)

(assert (=> start!56010 m!591499))

(declare-fun m!591501 () Bool)

(assert (=> start!56010 m!591501))

(declare-fun m!591503 () Bool)

(assert (=> b!615215 m!591503))

(declare-fun m!591505 () Bool)

(assert (=> b!615215 m!591505))

(declare-fun m!591507 () Bool)

(assert (=> b!615215 m!591507))

(assert (=> b!615215 m!591453))

(assert (=> b!615215 m!591493))

(assert (=> b!615215 m!591453))

(declare-fun m!591509 () Bool)

(assert (=> b!615215 m!591509))

(declare-fun m!591511 () Bool)

(assert (=> b!615215 m!591511))

(declare-fun m!591513 () Bool)

(assert (=> b!615215 m!591513))

(assert (=> b!615198 m!591453))

(assert (=> b!615198 m!591453))

(declare-fun m!591515 () Bool)

(assert (=> b!615198 m!591515))

(declare-fun m!591517 () Bool)

(assert (=> b!615213 m!591517))

(declare-fun m!591519 () Bool)

(assert (=> b!615201 m!591519))

(declare-fun m!591521 () Bool)

(assert (=> b!615218 m!591521))

(assert (=> b!615202 m!591453))

(assert (=> b!615202 m!591453))

(assert (=> b!615202 m!591491))

(push 1)

