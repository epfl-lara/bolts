; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53258 () Bool)

(assert start!53258)

(declare-fun b!578558 () Bool)

(declare-fun res!366527 () Bool)

(declare-fun e!332663 () Bool)

(assert (=> b!578558 (=> (not res!366527) (not e!332663))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36113 0))(
  ( (array!36114 (arr!17327 (Array (_ BitVec 32) (_ BitVec 64))) (size!17691 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36113)

(assert (=> b!578558 (= res!366527 (and (= (size!17691 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17691 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17691 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578559 () Bool)

(declare-fun res!366532 () Bool)

(assert (=> b!578559 (=> (not res!366532) (not e!332663))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578559 (= res!366532 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578560 () Bool)

(declare-fun res!366526 () Bool)

(declare-fun e!332664 () Bool)

(assert (=> b!578560 (=> (not res!366526) (not e!332664))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!578560 (= res!366526 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17327 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17327 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578561 () Bool)

(declare-fun res!366525 () Bool)

(assert (=> b!578561 (=> (not res!366525) (not e!332663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578561 (= res!366525 (validKeyInArray!0 k!1786))))

(declare-fun b!578562 () Bool)

(declare-fun res!366530 () Bool)

(assert (=> b!578562 (=> (not res!366530) (not e!332664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36113 (_ BitVec 32)) Bool)

(assert (=> b!578562 (= res!366530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578563 () Bool)

(declare-fun res!366529 () Bool)

(assert (=> b!578563 (=> (not res!366529) (not e!332664))))

(declare-datatypes ((List!11421 0))(
  ( (Nil!11418) (Cons!11417 (h!12462 (_ BitVec 64)) (t!17657 List!11421)) )
))
(declare-fun arrayNoDuplicates!0 (array!36113 (_ BitVec 32) List!11421) Bool)

(assert (=> b!578563 (= res!366529 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11418))))

(declare-fun b!578564 () Bool)

(declare-fun res!366531 () Bool)

(assert (=> b!578564 (=> (not res!366531) (not e!332664))))

(declare-datatypes ((SeekEntryResult!5774 0))(
  ( (MissingZero!5774 (index!25323 (_ BitVec 32))) (Found!5774 (index!25324 (_ BitVec 32))) (Intermediate!5774 (undefined!6586 Bool) (index!25325 (_ BitVec 32)) (x!54246 (_ BitVec 32))) (Undefined!5774) (MissingVacant!5774 (index!25326 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36113 (_ BitVec 32)) SeekEntryResult!5774)

(assert (=> b!578564 (= res!366531 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17327 a!2986) j!136) a!2986 mask!3053) (Found!5774 j!136)))))

(declare-fun b!578565 () Bool)

(declare-fun res!366524 () Bool)

(assert (=> b!578565 (=> (not res!366524) (not e!332663))))

(assert (=> b!578565 (= res!366524 (validKeyInArray!0 (select (arr!17327 a!2986) j!136)))))

(declare-fun b!578566 () Bool)

(assert (=> b!578566 (= e!332663 e!332664)))

(declare-fun res!366528 () Bool)

(assert (=> b!578566 (=> (not res!366528) (not e!332664))))

(declare-fun lt!264293 () SeekEntryResult!5774)

(assert (=> b!578566 (= res!366528 (or (= lt!264293 (MissingZero!5774 i!1108)) (= lt!264293 (MissingVacant!5774 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36113 (_ BitVec 32)) SeekEntryResult!5774)

(assert (=> b!578566 (= lt!264293 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!366533 () Bool)

(assert (=> start!53258 (=> (not res!366533) (not e!332663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53258 (= res!366533 (validMask!0 mask!3053))))

(assert (=> start!53258 e!332663))

(assert (=> start!53258 true))

(declare-fun array_inv!13101 (array!36113) Bool)

(assert (=> start!53258 (array_inv!13101 a!2986)))

(declare-fun b!578567 () Bool)

(assert (=> b!578567 (= e!332664 (bvslt mask!3053 #b00000000000000000000000000000000))))

(assert (= (and start!53258 res!366533) b!578558))

(assert (= (and b!578558 res!366527) b!578565))

(assert (= (and b!578565 res!366524) b!578561))

(assert (= (and b!578561 res!366525) b!578559))

(assert (= (and b!578559 res!366532) b!578566))

(assert (= (and b!578566 res!366528) b!578562))

(assert (= (and b!578562 res!366530) b!578563))

(assert (= (and b!578563 res!366529) b!578560))

(assert (= (and b!578560 res!366526) b!578564))

(assert (= (and b!578564 res!366531) b!578567))

(declare-fun m!557255 () Bool)

(assert (=> b!578559 m!557255))

(declare-fun m!557257 () Bool)

(assert (=> b!578565 m!557257))

(assert (=> b!578565 m!557257))

(declare-fun m!557259 () Bool)

(assert (=> b!578565 m!557259))

(declare-fun m!557261 () Bool)

(assert (=> b!578560 m!557261))

(declare-fun m!557263 () Bool)

(assert (=> b!578560 m!557263))

(declare-fun m!557265 () Bool)

(assert (=> b!578560 m!557265))

(assert (=> b!578564 m!557257))

(assert (=> b!578564 m!557257))

(declare-fun m!557267 () Bool)

(assert (=> b!578564 m!557267))

(declare-fun m!557269 () Bool)

(assert (=> b!578566 m!557269))

(declare-fun m!557271 () Bool)

(assert (=> b!578562 m!557271))

(declare-fun m!557273 () Bool)

(assert (=> start!53258 m!557273))

(declare-fun m!557275 () Bool)

(assert (=> start!53258 m!557275))

(declare-fun m!557277 () Bool)

(assert (=> b!578561 m!557277))

(declare-fun m!557279 () Bool)

(assert (=> b!578563 m!557279))

(push 1)

(assert (not b!578565))

(assert (not b!578559))

(assert (not b!578562))

(assert (not b!578564))

(assert (not b!578561))

(assert (not b!578563))

(assert (not b!578566))

(assert (not start!53258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

