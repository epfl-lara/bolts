; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59020 () Bool)

(assert start!59020)

(declare-fun b!651106 () Bool)

(declare-fun e!373623 () Bool)

(declare-fun e!373622 () Bool)

(assert (=> b!651106 (= e!373623 (not e!373622))))

(declare-fun res!422314 () Bool)

(assert (=> b!651106 (=> res!422314 e!373622)))

(declare-datatypes ((SeekEntryResult!6926 0))(
  ( (MissingZero!6926 (index!30053 (_ BitVec 32))) (Found!6926 (index!30054 (_ BitVec 32))) (Intermediate!6926 (undefined!7738 Bool) (index!30055 (_ BitVec 32)) (x!58861 (_ BitVec 32))) (Undefined!6926) (MissingVacant!6926 (index!30056 (_ BitVec 32))) )
))
(declare-fun lt!302813 () SeekEntryResult!6926)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!651106 (= res!422314 (not (= lt!302813 (Found!6926 index!984))))))

(declare-datatypes ((Unit!22228 0))(
  ( (Unit!22229) )
))
(declare-fun lt!302797 () Unit!22228)

(declare-fun e!373616 () Unit!22228)

(assert (=> b!651106 (= lt!302797 e!373616)))

(declare-fun c!74771 () Bool)

(assert (=> b!651106 (= c!74771 (= lt!302813 Undefined!6926))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!302799 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38557 0))(
  ( (array!38558 (arr!18479 (Array (_ BitVec 32) (_ BitVec 64))) (size!18843 (_ BitVec 32))) )
))
(declare-fun lt!302801 () array!38557)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38557 (_ BitVec 32)) SeekEntryResult!6926)

(assert (=> b!651106 (= lt!302813 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302799 lt!302801 mask!3053))))

(declare-fun e!373615 () Bool)

(assert (=> b!651106 e!373615))

(declare-fun res!422315 () Bool)

(assert (=> b!651106 (=> (not res!422315) (not e!373615))))

(declare-fun lt!302802 () SeekEntryResult!6926)

(declare-fun lt!302808 () (_ BitVec 32))

(assert (=> b!651106 (= res!422315 (= lt!302802 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302808 vacantSpotIndex!68 lt!302799 lt!302801 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38557)

(assert (=> b!651106 (= lt!302802 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302808 vacantSpotIndex!68 (select (arr!18479 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!651106 (= lt!302799 (select (store (arr!18479 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302800 () Unit!22228)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38557 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22228)

(assert (=> b!651106 (= lt!302800 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302808 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651106 (= lt!302808 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651107 () Bool)

(declare-fun e!373613 () Bool)

(declare-fun arrayContainsKey!0 (array!38557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651107 (= e!373613 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) index!984))))

(declare-fun b!651108 () Bool)

(declare-fun lt!302810 () SeekEntryResult!6926)

(assert (=> b!651108 (= e!373615 (= lt!302810 lt!302802))))

(declare-fun b!651109 () Bool)

(declare-fun res!422309 () Bool)

(declare-fun e!373619 () Bool)

(assert (=> b!651109 (=> (not res!422309) (not e!373619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651109 (= res!422309 (validKeyInArray!0 (select (arr!18479 a!2986) j!136)))))

(declare-fun b!651110 () Bool)

(declare-fun res!422302 () Bool)

(assert (=> b!651110 (=> (not res!422302) (not e!373619))))

(assert (=> b!651110 (= res!422302 (and (= (size!18843 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18843 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18843 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!651111 () Bool)

(declare-fun Unit!22230 () Unit!22228)

(assert (=> b!651111 (= e!373616 Unit!22230)))

(assert (=> b!651111 false))

(declare-fun b!651112 () Bool)

(declare-fun res!422317 () Bool)

(assert (=> b!651112 (=> (not res!422317) (not e!373619))))

(assert (=> b!651112 (= res!422317 (validKeyInArray!0 k!1786))))

(declare-fun b!651113 () Bool)

(declare-fun e!373625 () Bool)

(assert (=> b!651113 (= e!373619 e!373625)))

(declare-fun res!422300 () Bool)

(assert (=> b!651113 (=> (not res!422300) (not e!373625))))

(declare-fun lt!302807 () SeekEntryResult!6926)

(assert (=> b!651113 (= res!422300 (or (= lt!302807 (MissingZero!6926 i!1108)) (= lt!302807 (MissingVacant!6926 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38557 (_ BitVec 32)) SeekEntryResult!6926)

(assert (=> b!651113 (= lt!302807 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!651114 () Bool)

(declare-fun e!373618 () Bool)

(assert (=> b!651114 (= e!373622 e!373618)))

(declare-fun res!422304 () Bool)

(assert (=> b!651114 (=> res!422304 e!373618)))

(declare-fun lt!302798 () (_ BitVec 64))

(assert (=> b!651114 (= res!422304 (or (not (= (select (arr!18479 a!2986) j!136) lt!302799)) (not (= (select (arr!18479 a!2986) j!136) lt!302798))))))

(declare-fun e!373620 () Bool)

(assert (=> b!651114 e!373620))

(declare-fun res!422311 () Bool)

(assert (=> b!651114 (=> (not res!422311) (not e!373620))))

(assert (=> b!651114 (= res!422311 (= lt!302798 (select (arr!18479 a!2986) j!136)))))

(assert (=> b!651114 (= lt!302798 (select (store (arr!18479 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!651115 () Bool)

(declare-fun e!373617 () Unit!22228)

(declare-fun Unit!22231 () Unit!22228)

(assert (=> b!651115 (= e!373617 Unit!22231)))

(declare-fun b!651117 () Bool)

(declare-fun Unit!22232 () Unit!22228)

(assert (=> b!651117 (= e!373617 Unit!22232)))

(declare-fun lt!302809 () Unit!22228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38557 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22228)

(assert (=> b!651117 (= lt!302809 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302801 (select (arr!18479 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!651117 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302803 () Unit!22228)

(declare-datatypes ((List!12573 0))(
  ( (Nil!12570) (Cons!12569 (h!13614 (_ BitVec 64)) (t!18809 List!12573)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38557 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12573) Unit!22228)

(assert (=> b!651117 (= lt!302803 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12570))))

(declare-fun arrayNoDuplicates!0 (array!38557 (_ BitVec 32) List!12573) Bool)

(assert (=> b!651117 (arrayNoDuplicates!0 lt!302801 #b00000000000000000000000000000000 Nil!12570)))

(declare-fun lt!302806 () Unit!22228)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38557 (_ BitVec 32) (_ BitVec 32)) Unit!22228)

(assert (=> b!651117 (= lt!302806 (lemmaNoDuplicateFromThenFromBigger!0 lt!302801 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651117 (arrayNoDuplicates!0 lt!302801 j!136 Nil!12570)))

(declare-fun lt!302814 () Unit!22228)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38557 (_ BitVec 64) (_ BitVec 32) List!12573) Unit!22228)

(assert (=> b!651117 (= lt!302814 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302801 (select (arr!18479 a!2986) j!136) j!136 Nil!12570))))

(assert (=> b!651117 false))

(declare-fun b!651118 () Bool)

(declare-fun e!373621 () Bool)

(assert (=> b!651118 (= e!373620 e!373621)))

(declare-fun res!422312 () Bool)

(assert (=> b!651118 (=> res!422312 e!373621)))

(assert (=> b!651118 (= res!422312 (or (not (= (select (arr!18479 a!2986) j!136) lt!302799)) (not (= (select (arr!18479 a!2986) j!136) lt!302798)) (bvsge j!136 index!984)))))

(declare-fun b!651119 () Bool)

(declare-fun e!373624 () Bool)

(assert (=> b!651119 (= e!373625 e!373624)))

(declare-fun res!422313 () Bool)

(assert (=> b!651119 (=> (not res!422313) (not e!373624))))

(assert (=> b!651119 (= res!422313 (= (select (store (arr!18479 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651119 (= lt!302801 (array!38558 (store (arr!18479 a!2986) i!1108 k!1786) (size!18843 a!2986)))))

(declare-fun b!651120 () Bool)

(declare-fun e!373614 () Bool)

(assert (=> b!651120 (= e!373618 e!373614)))

(declare-fun res!422305 () Bool)

(assert (=> b!651120 (=> res!422305 e!373614)))

(assert (=> b!651120 (= res!422305 (bvsge index!984 j!136))))

(declare-fun lt!302812 () Unit!22228)

(assert (=> b!651120 (= lt!302812 e!373617)))

(declare-fun c!74770 () Bool)

(assert (=> b!651120 (= c!74770 (bvslt j!136 index!984))))

(declare-fun b!651121 () Bool)

(declare-fun e!373627 () Bool)

(assert (=> b!651121 (= e!373627 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) index!984))))

(declare-fun b!651122 () Bool)

(declare-fun Unit!22233 () Unit!22228)

(assert (=> b!651122 (= e!373616 Unit!22233)))

(declare-fun b!651123 () Bool)

(declare-fun res!422310 () Bool)

(assert (=> b!651123 (=> (not res!422310) (not e!373625))))

(assert (=> b!651123 (= res!422310 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18479 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651124 () Bool)

(declare-fun res!422318 () Bool)

(assert (=> b!651124 (=> (not res!422318) (not e!373625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38557 (_ BitVec 32)) Bool)

(assert (=> b!651124 (= res!422318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!651125 () Bool)

(declare-fun res!422308 () Bool)

(assert (=> b!651125 (=> (not res!422308) (not e!373625))))

(assert (=> b!651125 (= res!422308 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12570))))

(declare-fun b!651126 () Bool)

(declare-fun res!422316 () Bool)

(assert (=> b!651126 (=> (not res!422316) (not e!373619))))

(assert (=> b!651126 (= res!422316 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651127 () Bool)

(assert (=> b!651127 (= e!373614 (bvslt (size!18843 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!651127 (arrayNoDuplicates!0 lt!302801 index!984 Nil!12570)))

(declare-fun lt!302805 () Unit!22228)

(assert (=> b!651127 (= lt!302805 (lemmaNoDuplicateFromThenFromBigger!0 lt!302801 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651127 (arrayNoDuplicates!0 lt!302801 #b00000000000000000000000000000000 Nil!12570)))

(declare-fun lt!302811 () Unit!22228)

(assert (=> b!651127 (= lt!302811 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12570))))

(assert (=> b!651127 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302804 () Unit!22228)

(assert (=> b!651127 (= lt!302804 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302801 (select (arr!18479 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!651127 e!373613))

(declare-fun res!422306 () Bool)

(assert (=> b!651127 (=> (not res!422306) (not e!373613))))

(assert (=> b!651127 (= res!422306 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) j!136))))

(declare-fun b!651128 () Bool)

(assert (=> b!651128 (= e!373624 e!373623)))

(declare-fun res!422301 () Bool)

(assert (=> b!651128 (=> (not res!422301) (not e!373623))))

(assert (=> b!651128 (= res!422301 (and (= lt!302810 (Found!6926 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18479 a!2986) index!984) (select (arr!18479 a!2986) j!136))) (not (= (select (arr!18479 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!651128 (= lt!302810 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18479 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!422307 () Bool)

(assert (=> start!59020 (=> (not res!422307) (not e!373619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59020 (= res!422307 (validMask!0 mask!3053))))

(assert (=> start!59020 e!373619))

(assert (=> start!59020 true))

(declare-fun array_inv!14253 (array!38557) Bool)

(assert (=> start!59020 (array_inv!14253 a!2986)))

(declare-fun b!651116 () Bool)

(assert (=> b!651116 (= e!373621 e!373627)))

(declare-fun res!422303 () Bool)

(assert (=> b!651116 (=> (not res!422303) (not e!373627))))

(assert (=> b!651116 (= res!422303 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) j!136))))

(assert (= (and start!59020 res!422307) b!651110))

(assert (= (and b!651110 res!422302) b!651109))

(assert (= (and b!651109 res!422309) b!651112))

(assert (= (and b!651112 res!422317) b!651126))

(assert (= (and b!651126 res!422316) b!651113))

(assert (= (and b!651113 res!422300) b!651124))

(assert (= (and b!651124 res!422318) b!651125))

(assert (= (and b!651125 res!422308) b!651123))

(assert (= (and b!651123 res!422310) b!651119))

(assert (= (and b!651119 res!422313) b!651128))

(assert (= (and b!651128 res!422301) b!651106))

(assert (= (and b!651106 res!422315) b!651108))

(assert (= (and b!651106 c!74771) b!651111))

(assert (= (and b!651106 (not c!74771)) b!651122))

(assert (= (and b!651106 (not res!422314)) b!651114))

(assert (= (and b!651114 res!422311) b!651118))

(assert (= (and b!651118 (not res!422312)) b!651116))

(assert (= (and b!651116 res!422303) b!651121))

(assert (= (and b!651114 (not res!422304)) b!651120))

(assert (= (and b!651120 c!74770) b!651117))

(assert (= (and b!651120 (not c!74770)) b!651115))

(assert (= (and b!651120 (not res!422305)) b!651127))

(assert (= (and b!651127 res!422306) b!651107))

(declare-fun m!624325 () Bool)

(assert (=> b!651127 m!624325))

(declare-fun m!624327 () Bool)

(assert (=> b!651127 m!624327))

(assert (=> b!651127 m!624325))

(declare-fun m!624329 () Bool)

(assert (=> b!651127 m!624329))

(declare-fun m!624331 () Bool)

(assert (=> b!651127 m!624331))

(assert (=> b!651127 m!624325))

(declare-fun m!624333 () Bool)

(assert (=> b!651127 m!624333))

(assert (=> b!651127 m!624325))

(declare-fun m!624335 () Bool)

(assert (=> b!651127 m!624335))

(declare-fun m!624337 () Bool)

(assert (=> b!651127 m!624337))

(declare-fun m!624339 () Bool)

(assert (=> b!651127 m!624339))

(declare-fun m!624341 () Bool)

(assert (=> b!651119 m!624341))

(declare-fun m!624343 () Bool)

(assert (=> b!651119 m!624343))

(declare-fun m!624345 () Bool)

(assert (=> b!651112 m!624345))

(assert (=> b!651116 m!624325))

(assert (=> b!651116 m!624325))

(assert (=> b!651116 m!624335))

(declare-fun m!624347 () Bool)

(assert (=> b!651128 m!624347))

(assert (=> b!651128 m!624325))

(assert (=> b!651128 m!624325))

(declare-fun m!624349 () Bool)

(assert (=> b!651128 m!624349))

(assert (=> b!651121 m!624325))

(assert (=> b!651121 m!624325))

(declare-fun m!624351 () Bool)

(assert (=> b!651121 m!624351))

(declare-fun m!624353 () Bool)

(assert (=> start!59020 m!624353))

(declare-fun m!624355 () Bool)

(assert (=> start!59020 m!624355))

(declare-fun m!624357 () Bool)

(assert (=> b!651113 m!624357))

(declare-fun m!624359 () Bool)

(assert (=> b!651124 m!624359))

(declare-fun m!624361 () Bool)

(assert (=> b!651126 m!624361))

(assert (=> b!651114 m!624325))

(assert (=> b!651114 m!624341))

(declare-fun m!624363 () Bool)

(assert (=> b!651114 m!624363))

(declare-fun m!624365 () Bool)

(assert (=> b!651117 m!624365))

(assert (=> b!651117 m!624325))

(declare-fun m!624367 () Bool)

(assert (=> b!651117 m!624367))

(assert (=> b!651117 m!624325))

(declare-fun m!624369 () Bool)

(assert (=> b!651117 m!624369))

(assert (=> b!651117 m!624331))

(assert (=> b!651117 m!624325))

(declare-fun m!624371 () Bool)

(assert (=> b!651117 m!624371))

(assert (=> b!651117 m!624325))

(declare-fun m!624373 () Bool)

(assert (=> b!651117 m!624373))

(assert (=> b!651117 m!624339))

(declare-fun m!624375 () Bool)

(assert (=> b!651125 m!624375))

(assert (=> b!651118 m!624325))

(assert (=> b!651109 m!624325))

(assert (=> b!651109 m!624325))

(declare-fun m!624377 () Bool)

(assert (=> b!651109 m!624377))

(assert (=> b!651107 m!624325))

(assert (=> b!651107 m!624325))

(assert (=> b!651107 m!624351))

(declare-fun m!624379 () Bool)

(assert (=> b!651106 m!624379))

(declare-fun m!624381 () Bool)

(assert (=> b!651106 m!624381))

(declare-fun m!624383 () Bool)

(assert (=> b!651106 m!624383))

(assert (=> b!651106 m!624341))

(assert (=> b!651106 m!624325))

(declare-fun m!624385 () Bool)

(assert (=> b!651106 m!624385))

(declare-fun m!624387 () Bool)

(assert (=> b!651106 m!624387))

(assert (=> b!651106 m!624325))

(declare-fun m!624389 () Bool)

(assert (=> b!651106 m!624389))

(declare-fun m!624391 () Bool)

(assert (=> b!651123 m!624391))

(push 1)

(assert (not b!651125))

(assert (not b!651126))

(assert (not b!651121))

(assert (not b!651116))

(assert (not b!651124))

(assert (not b!651128))

(assert (not b!651117))

(assert (not b!651113))

(assert (not b!651112))

(assert (not b!651106))

(assert (not b!651109))

(assert (not b!651107))

(assert (not start!59020))

(assert (not b!651127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91933 () Bool)

(assert (=> d!91933 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!651112 d!91933))

(declare-fun d!91937 () Bool)

(declare-fun lt!302843 () SeekEntryResult!6926)

(assert (=> d!91937 (and (or (is-Undefined!6926 lt!302843) (not (is-Found!6926 lt!302843)) (and (bvsge (index!30054 lt!302843) #b00000000000000000000000000000000) (bvslt (index!30054 lt!302843) (size!18843 a!2986)))) (or (is-Undefined!6926 lt!302843) (is-Found!6926 lt!302843) (not (is-MissingZero!6926 lt!302843)) (and (bvsge (index!30053 lt!302843) #b00000000000000000000000000000000) (bvslt (index!30053 lt!302843) (size!18843 a!2986)))) (or (is-Undefined!6926 lt!302843) (is-Found!6926 lt!302843) (is-MissingZero!6926 lt!302843) (not (is-MissingVacant!6926 lt!302843)) (and (bvsge (index!30056 lt!302843) #b00000000000000000000000000000000) (bvslt (index!30056 lt!302843) (size!18843 a!2986)))) (or (is-Undefined!6926 lt!302843) (ite (is-Found!6926 lt!302843) (= (select (arr!18479 a!2986) (index!30054 lt!302843)) k!1786) (ite (is-MissingZero!6926 lt!302843) (= (select (arr!18479 a!2986) (index!30053 lt!302843)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6926 lt!302843) (= (select (arr!18479 a!2986) (index!30056 lt!302843)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!373683 () SeekEntryResult!6926)

(assert (=> d!91937 (= lt!302843 e!373683)))

(declare-fun c!74794 () Bool)

(declare-fun lt!302841 () SeekEntryResult!6926)

(assert (=> d!91937 (= c!74794 (and (is-Intermediate!6926 lt!302841) (undefined!7738 lt!302841)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38557 (_ BitVec 32)) SeekEntryResult!6926)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91937 (= lt!302841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91937 (validMask!0 mask!3053)))

(assert (=> d!91937 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!302843)))

(declare-fun b!651204 () Bool)

(assert (=> b!651204 (= e!373683 Undefined!6926)))

(declare-fun b!651205 () Bool)

(declare-fun e!373684 () SeekEntryResult!6926)

(assert (=> b!651205 (= e!373684 (MissingZero!6926 (index!30055 lt!302841)))))

(declare-fun b!651206 () Bool)

(assert (=> b!651206 (= e!373684 (seekKeyOrZeroReturnVacant!0 (x!58861 lt!302841) (index!30055 lt!302841) (index!30055 lt!302841) k!1786 a!2986 mask!3053))))

(declare-fun b!651207 () Bool)

(declare-fun c!74795 () Bool)

(declare-fun lt!302842 () (_ BitVec 64))

(assert (=> b!651207 (= c!74795 (= lt!302842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373682 () SeekEntryResult!6926)

(assert (=> b!651207 (= e!373682 e!373684)))

(declare-fun b!651208 () Bool)

(assert (=> b!651208 (= e!373682 (Found!6926 (index!30055 lt!302841)))))

(declare-fun b!651209 () Bool)

(assert (=> b!651209 (= e!373683 e!373682)))

(assert (=> b!651209 (= lt!302842 (select (arr!18479 a!2986) (index!30055 lt!302841)))))

(declare-fun c!74793 () Bool)

(assert (=> b!651209 (= c!74793 (= lt!302842 k!1786))))

(assert (= (and d!91937 c!74794) b!651204))

(assert (= (and d!91937 (not c!74794)) b!651209))

(assert (= (and b!651209 c!74793) b!651208))

(assert (= (and b!651209 (not c!74793)) b!651207))

(assert (= (and b!651207 c!74795) b!651205))

(assert (= (and b!651207 (not c!74795)) b!651206))

(declare-fun m!624457 () Bool)

(assert (=> d!91937 m!624457))

(declare-fun m!624459 () Bool)

(assert (=> d!91937 m!624459))

(assert (=> d!91937 m!624353))

(declare-fun m!624461 () Bool)

(assert (=> d!91937 m!624461))

(declare-fun m!624463 () Bool)

(assert (=> d!91937 m!624463))

(assert (=> d!91937 m!624461))

(declare-fun m!624469 () Bool)

(assert (=> d!91937 m!624469))

(declare-fun m!624471 () Bool)

(assert (=> b!651206 m!624471))

(declare-fun m!624473 () Bool)

(assert (=> b!651209 m!624473))

(assert (=> b!651113 d!91937))

(declare-fun d!91969 () Bool)

(declare-fun res!422356 () Bool)

(declare-fun e!373698 () Bool)

(assert (=> d!91969 (=> res!422356 e!373698)))

(assert (=> d!91969 (= res!422356 (= (select (arr!18479 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!91969 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!373698)))

(declare-fun b!651232 () Bool)

(declare-fun e!373699 () Bool)

(assert (=> b!651232 (= e!373698 e!373699)))

(declare-fun res!422357 () Bool)

(assert (=> b!651232 (=> (not res!422357) (not e!373699))))

(assert (=> b!651232 (= res!422357 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18843 a!2986)))))

(declare-fun b!651233 () Bool)

(assert (=> b!651233 (= e!373699 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91969 (not res!422356)) b!651232))

(assert (= (and b!651232 res!422357) b!651233))

(declare-fun m!624479 () Bool)

(assert (=> d!91969 m!624479))

(declare-fun m!624481 () Bool)

(assert (=> b!651233 m!624481))

(assert (=> b!651126 d!91969))

(declare-fun b!651266 () Bool)

(declare-fun e!373718 () Bool)

(declare-fun e!373720 () Bool)

(assert (=> b!651266 (= e!373718 e!373720)))

(declare-fun c!74819 () Bool)

(assert (=> b!651266 (= c!74819 (validKeyInArray!0 (select (arr!18479 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!651267 () Bool)

(declare-fun e!373719 () Bool)

(declare-fun call!33758 () Bool)

(assert (=> b!651267 (= e!373719 call!33758)))

(declare-fun b!651268 () Bool)

(assert (=> b!651268 (= e!373720 call!33758)))

(declare-fun b!651269 () Bool)

(assert (=> b!651269 (= e!373720 e!373719)))

(declare-fun lt!302872 () (_ BitVec 64))

(assert (=> b!651269 (= lt!302872 (select (arr!18479 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!302870 () Unit!22228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38557 (_ BitVec 64) (_ BitVec 32)) Unit!22228)

(assert (=> b!651269 (= lt!302870 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!302872 #b00000000000000000000000000000000))))

(assert (=> b!651269 (arrayContainsKey!0 a!2986 lt!302872 #b00000000000000000000000000000000)))

(declare-fun lt!302871 () Unit!22228)

(assert (=> b!651269 (= lt!302871 lt!302870)))

(declare-fun res!422362 () Bool)

(assert (=> b!651269 (= res!422362 (= (seekEntryOrOpen!0 (select (arr!18479 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6926 #b00000000000000000000000000000000)))))

(assert (=> b!651269 (=> (not res!422362) (not e!373719))))

(declare-fun bm!33755 () Bool)

(assert (=> bm!33755 (= call!33758 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!91975 () Bool)

(declare-fun res!422363 () Bool)

(assert (=> d!91975 (=> res!422363 e!373718)))

(assert (=> d!91975 (= res!422363 (bvsge #b00000000000000000000000000000000 (size!18843 a!2986)))))

(assert (=> d!91975 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!373718)))

(assert (= (and d!91975 (not res!422363)) b!651266))

(assert (= (and b!651266 c!74819) b!651269))

(assert (= (and b!651266 (not c!74819)) b!651268))

(assert (= (and b!651269 res!422362) b!651267))

(assert (= (or b!651267 b!651268) bm!33755))

(assert (=> b!651266 m!624479))

(assert (=> b!651266 m!624479))

(declare-fun m!624521 () Bool)

(assert (=> b!651266 m!624521))

(assert (=> b!651269 m!624479))

(declare-fun m!624523 () Bool)

(assert (=> b!651269 m!624523))

(declare-fun m!624525 () Bool)

(assert (=> b!651269 m!624525))

(assert (=> b!651269 m!624479))

(declare-fun m!624527 () Bool)

(assert (=> b!651269 m!624527))

(declare-fun m!624529 () Bool)

(assert (=> bm!33755 m!624529))

(assert (=> b!651124 d!91975))

(declare-fun b!651292 () Bool)

(declare-fun e!373741 () Bool)

(declare-fun e!373739 () Bool)

(assert (=> b!651292 (= e!373741 e!373739)))

(declare-fun res!422377 () Bool)

(assert (=> b!651292 (=> (not res!422377) (not e!373739))))

(declare-fun e!373740 () Bool)

(assert (=> b!651292 (= res!422377 (not e!373740))))

(declare-fun res!422378 () Bool)

(assert (=> b!651292 (=> (not res!422378) (not e!373740))))

(assert (=> b!651292 (= res!422378 (validKeyInArray!0 (select (arr!18479 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33758 () Bool)

(declare-fun call!33761 () Bool)

(declare-fun c!74825 () Bool)

(assert (=> bm!33758 (= call!33761 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74825 (Cons!12569 (select (arr!18479 a!2986) #b00000000000000000000000000000000) Nil!12570) Nil!12570)))))

(declare-fun b!651293 () Bool)

(declare-fun e!373738 () Bool)

(assert (=> b!651293 (= e!373738 call!33761)))

(declare-fun b!651294 () Bool)

(assert (=> b!651294 (= e!373738 call!33761)))

(declare-fun d!91987 () Bool)

(declare-fun res!422376 () Bool)

(assert (=> d!91987 (=> res!422376 e!373741)))

(assert (=> d!91987 (= res!422376 (bvsge #b00000000000000000000000000000000 (size!18843 a!2986)))))

(assert (=> d!91987 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12570) e!373741)))

(declare-fun b!651295 () Bool)

(assert (=> b!651295 (= e!373739 e!373738)))

(assert (=> b!651295 (= c!74825 (validKeyInArray!0 (select (arr!18479 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!651296 () Bool)

(declare-fun contains!3180 (List!12573 (_ BitVec 64)) Bool)

(assert (=> b!651296 (= e!373740 (contains!3180 Nil!12570 (select (arr!18479 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91987 (not res!422376)) b!651292))

(assert (= (and b!651292 res!422378) b!651296))

(assert (= (and b!651292 res!422377) b!651295))

(assert (= (and b!651295 c!74825) b!651293))

(assert (= (and b!651295 (not c!74825)) b!651294))

(assert (= (or b!651293 b!651294) bm!33758))

(assert (=> b!651292 m!624479))

(assert (=> b!651292 m!624479))

(assert (=> b!651292 m!624521))

(assert (=> bm!33758 m!624479))

(declare-fun m!624549 () Bool)

(assert (=> bm!33758 m!624549))

(assert (=> b!651295 m!624479))

(assert (=> b!651295 m!624479))

(assert (=> b!651295 m!624521))

(assert (=> b!651296 m!624479))

(assert (=> b!651296 m!624479))

(declare-fun m!624555 () Bool)

(assert (=> b!651296 m!624555))

(assert (=> b!651125 d!91987))

(declare-fun b!651341 () Bool)

(declare-fun c!74840 () Bool)

(declare-fun lt!302893 () (_ BitVec 64))

(assert (=> b!651341 (= c!74840 (= lt!302893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373774 () SeekEntryResult!6926)

(declare-fun e!373773 () SeekEntryResult!6926)

(assert (=> b!651341 (= e!373774 e!373773)))

(declare-fun b!651342 () Bool)

(declare-fun e!373775 () SeekEntryResult!6926)

(assert (=> b!651342 (= e!373775 Undefined!6926)))

(declare-fun b!651343 () Bool)

(assert (=> b!651343 (= e!373773 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18479 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651344 () Bool)

(assert (=> b!651344 (= e!373773 (MissingVacant!6926 vacantSpotIndex!68))))

(declare-fun d!91997 () Bool)

(declare-fun lt!302894 () SeekEntryResult!6926)

(assert (=> d!91997 (and (or (is-Undefined!6926 lt!302894) (not (is-Found!6926 lt!302894)) (and (bvsge (index!30054 lt!302894) #b00000000000000000000000000000000) (bvslt (index!30054 lt!302894) (size!18843 a!2986)))) (or (is-Undefined!6926 lt!302894) (is-Found!6926 lt!302894) (not (is-MissingVacant!6926 lt!302894)) (not (= (index!30056 lt!302894) vacantSpotIndex!68)) (and (bvsge (index!30056 lt!302894) #b00000000000000000000000000000000) (bvslt (index!30056 lt!302894) (size!18843 a!2986)))) (or (is-Undefined!6926 lt!302894) (ite (is-Found!6926 lt!302894) (= (select (arr!18479 a!2986) (index!30054 lt!302894)) (select (arr!18479 a!2986) j!136)) (and (is-MissingVacant!6926 lt!302894) (= (index!30056 lt!302894) vacantSpotIndex!68) (= (select (arr!18479 a!2986) (index!30056 lt!302894)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91997 (= lt!302894 e!373775)))

(declare-fun c!74839 () Bool)

(assert (=> d!91997 (= c!74839 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91997 (= lt!302893 (select (arr!18479 a!2986) index!984))))

(assert (=> d!91997 (validMask!0 mask!3053)))

(assert (=> d!91997 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18479 a!2986) j!136) a!2986 mask!3053) lt!302894)))

(declare-fun b!651345 () Bool)

(assert (=> b!651345 (= e!373775 e!373774)))

(declare-fun c!74841 () Bool)

(assert (=> b!651345 (= c!74841 (= lt!302893 (select (arr!18479 a!2986) j!136)))))

(declare-fun b!651346 () Bool)

(assert (=> b!651346 (= e!373774 (Found!6926 index!984))))

(assert (= (and d!91997 c!74839) b!651342))

(assert (= (and d!91997 (not c!74839)) b!651345))

(assert (= (and b!651345 c!74841) b!651346))

(assert (= (and b!651345 (not c!74841)) b!651341))

(assert (= (and b!651341 c!74840) b!651344))

(assert (= (and b!651341 (not c!74840)) b!651343))

(assert (=> b!651343 m!624379))

(assert (=> b!651343 m!624379))

(assert (=> b!651343 m!624325))

(declare-fun m!624581 () Bool)

(assert (=> b!651343 m!624581))

(declare-fun m!624583 () Bool)

(assert (=> d!91997 m!624583))

(declare-fun m!624585 () Bool)

(assert (=> d!91997 m!624585))

(assert (=> d!91997 m!624347))

(assert (=> d!91997 m!624353))

(assert (=> b!651128 d!91997))

(declare-fun d!92009 () Bool)

(declare-fun res!422399 () Bool)

(declare-fun e!373784 () Bool)

(assert (=> d!92009 (=> res!422399 e!373784)))

(assert (=> d!92009 (= res!422399 (= (select (arr!18479 lt!302801) index!984) (select (arr!18479 a!2986) j!136)))))

(assert (=> d!92009 (= (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) index!984) e!373784)))

(declare-fun b!651359 () Bool)

(declare-fun e!373785 () Bool)

(assert (=> b!651359 (= e!373784 e!373785)))

(declare-fun res!422400 () Bool)

(assert (=> b!651359 (=> (not res!422400) (not e!373785))))

(assert (=> b!651359 (= res!422400 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18843 lt!302801)))))

(declare-fun b!651360 () Bool)

(assert (=> b!651360 (= e!373785 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92009 (not res!422399)) b!651359))

(assert (= (and b!651359 res!422400) b!651360))

(declare-fun m!624587 () Bool)

(assert (=> d!92009 m!624587))

(assert (=> b!651360 m!624325))

(declare-fun m!624589 () Bool)

(assert (=> b!651360 m!624589))

(assert (=> b!651107 d!92009))

(declare-fun d!92011 () Bool)

(declare-fun res!422401 () Bool)

(declare-fun e!373786 () Bool)

(assert (=> d!92011 (=> res!422401 e!373786)))

(assert (=> d!92011 (= res!422401 (= (select (arr!18479 lt!302801) j!136) (select (arr!18479 a!2986) j!136)))))

(assert (=> d!92011 (= (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) j!136) e!373786)))

(declare-fun b!651363 () Bool)

(declare-fun e!373787 () Bool)

(assert (=> b!651363 (= e!373786 e!373787)))

(declare-fun res!422402 () Bool)

(assert (=> b!651363 (=> (not res!422402) (not e!373787))))

(assert (=> b!651363 (= res!422402 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18843 lt!302801)))))

(declare-fun b!651364 () Bool)

(assert (=> b!651364 (= e!373787 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92011 (not res!422401)) b!651363))

(assert (= (and b!651363 res!422402) b!651364))

(declare-fun m!624591 () Bool)

(assert (=> d!92011 m!624591))

(assert (=> b!651364 m!624325))

(declare-fun m!624593 () Bool)

(assert (=> b!651364 m!624593))

(assert (=> b!651116 d!92011))

(declare-fun d!92013 () Bool)

(assert (=> d!92013 (arrayContainsKey!0 lt!302801 (select (arr!18479 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302906 () Unit!22228)

(declare-fun choose!114 (array!38557 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22228)

(assert (=> d!92013 (= lt!302906 (choose!114 lt!302801 (select (arr!18479 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92013 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92013 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302801 (select (arr!18479 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!302906)))

(declare-fun bs!19424 () Bool)

(assert (= bs!19424 d!92013))

(assert (=> bs!19424 m!624325))

(assert (=> bs!19424 m!624333))

(assert (=> bs!19424 m!624325))

(declare-fun m!624599 () Bool)

(assert (=> bs!19424 m!624599))

(assert (=> b!651127 d!92013))

(assert (=> b!651127 d!92011))

(declare-fun b!651366 () Bool)

(declare-fun e!373792 () Bool)

(declare-fun e!373790 () Bool)

(assert (=> b!651366 (= e!373792 e!373790)))

(declare-fun res!422405 () Bool)

(assert (=> b!651366 (=> (not res!422405) (not e!373790))))

(declare-fun e!373791 () Bool)

(assert (=> b!651366 (= res!422405 (not e!373791))))

(declare-fun res!422406 () Bool)

(assert (=> b!651366 (=> (not res!422406) (not e!373791))))

(assert (=> b!651366 (= res!422406 (validKeyInArray!0 (select (arr!18479 lt!302801) index!984)))))

(declare-fun c!74848 () Bool)

(declare-fun call!33766 () Bool)

(declare-fun bm!33763 () Bool)

(assert (=> bm!33763 (= call!33766 (arrayNoDuplicates!0 lt!302801 (bvadd index!984 #b00000000000000000000000000000001) (ite c!74848 (Cons!12569 (select (arr!18479 lt!302801) index!984) Nil!12570) Nil!12570)))))

(declare-fun b!651367 () Bool)

(declare-fun e!373789 () Bool)

(assert (=> b!651367 (= e!373789 call!33766)))

(declare-fun b!651368 () Bool)

(assert (=> b!651368 (= e!373789 call!33766)))

(declare-fun d!92017 () Bool)

(declare-fun res!422404 () Bool)

(assert (=> d!92017 (=> res!422404 e!373792)))

(assert (=> d!92017 (= res!422404 (bvsge index!984 (size!18843 lt!302801)))))

(assert (=> d!92017 (= (arrayNoDuplicates!0 lt!302801 index!984 Nil!12570) e!373792)))

(declare-fun b!651369 () Bool)

(assert (=> b!651369 (= e!373790 e!373789)))

(assert (=> b!651369 (= c!74848 (validKeyInArray!0 (select (arr!18479 lt!302801) index!984)))))

(declare-fun b!651370 () Bool)

(assert (=> b!651370 (= e!373791 (contains!3180 Nil!12570 (select (arr!18479 lt!302801) index!984)))))

(assert (= (and d!92017 (not res!422404)) b!651366))

(assert (= (and b!651366 res!422406) b!651370))

(assert (= (and b!651366 res!422405) b!651369))

(assert (= (and b!651369 c!74848) b!651367))

(assert (= (and b!651369 (not c!74848)) b!651368))

(assert (= (or b!651367 b!651368) bm!33763))

(assert (=> b!651366 m!624587))

(assert (=> b!651366 m!624587))

(declare-fun m!624603 () Bool)

(assert (=> b!651366 m!624603))

(assert (=> bm!33763 m!624587))

(declare-fun m!624605 () Bool)

(assert (=> bm!33763 m!624605))

(assert (=> b!651369 m!624587))

(assert (=> b!651369 m!624587))

(assert (=> b!651369 m!624603))

(assert (=> b!651370 m!624587))

(assert (=> b!651370 m!624587))

(declare-fun m!624607 () Bool)

(assert (=> b!651370 m!624607))

(assert (=> b!651127 d!92017))

(declare-fun b!651376 () Bool)

(declare-fun e!373800 () Bool)

(declare-fun e!373798 () Bool)

(assert (=> b!651376 (= e!373800 e!373798)))

(declare-fun res!422411 () Bool)

(assert (=> b!651376 (=> (not res!422411) (not e!373798))))

(declare-fun e!373799 () Bool)

(assert (=> b!651376 (= res!422411 (not e!373799))))

(declare-fun res!422412 () Bool)

(assert (=> b!651376 (=> (not res!422412) (not e!373799))))

(assert (=> b!651376 (= res!422412 (validKeyInArray!0 (select (arr!18479 lt!302801) #b00000000000000000000000000000000)))))

(declare-fun bm!33765 () Bool)

(declare-fun call!33768 () Bool)

(declare-fun c!74850 () Bool)

(assert (=> bm!33765 (= call!33768 (arrayNoDuplicates!0 lt!302801 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74850 (Cons!12569 (select (arr!18479 lt!302801) #b00000000000000000000000000000000) Nil!12570) Nil!12570)))))

(declare-fun b!651377 () Bool)

(declare-fun e!373797 () Bool)

(assert (=> b!651377 (= e!373797 call!33768)))

(declare-fun b!651378 () Bool)

(assert (=> b!651378 (= e!373797 call!33768)))

(declare-fun d!92021 () Bool)

(declare-fun res!422410 () Bool)

(assert (=> d!92021 (=> res!422410 e!373800)))

(assert (=> d!92021 (= res!422410 (bvsge #b00000000000000000000000000000000 (size!18843 lt!302801)))))

(assert (=> d!92021 (= (arrayNoDuplicates!0 lt!302801 #b00000000000000000000000000000000 Nil!12570) e!373800)))

(declare-fun b!651379 () Bool)

(assert (=> b!651379 (= e!373798 e!373797)))

(assert (=> b!651379 (= c!74850 (validKeyInArray!0 (select (arr!18479 lt!302801) #b00000000000000000000000000000000)))))

(declare-fun b!651380 () Bool)

(assert (=> b!651380 (= e!373799 (contains!3180 Nil!12570 (select (arr!18479 lt!302801) #b00000000000000000000000000000000)))))

(assert (= (and d!92021 (not res!422410)) b!651376))

(assert (= (and b!651376 res!422412) b!651380))

