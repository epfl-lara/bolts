; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53264 () Bool)

(assert start!53264)

(declare-fun b!578640 () Bool)

(declare-fun e!332692 () Bool)

(assert (=> b!578640 (= e!332692 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5777 0))(
  ( (MissingZero!5777 (index!25335 (_ BitVec 32))) (Found!5777 (index!25336 (_ BitVec 32))) (Intermediate!5777 (undefined!6589 Bool) (index!25337 (_ BitVec 32)) (x!54257 (_ BitVec 32))) (Undefined!5777) (MissingVacant!5777 (index!25338 (_ BitVec 32))) )
))
(declare-fun lt!264310 () SeekEntryResult!5777)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36119 0))(
  ( (array!36120 (arr!17330 (Array (_ BitVec 32) (_ BitVec 64))) (size!17694 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36119)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36119 (_ BitVec 32)) SeekEntryResult!5777)

(assert (=> b!578640 (= lt!264310 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17330 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578641 () Bool)

(declare-fun res!366609 () Bool)

(declare-fun e!332691 () Bool)

(assert (=> b!578641 (=> (not res!366609) (not e!332691))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578641 (= res!366609 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578642 () Bool)

(declare-fun res!366611 () Bool)

(assert (=> b!578642 (=> (not res!366611) (not e!332692))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578642 (= res!366611 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17330 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17330 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578643 () Bool)

(declare-fun res!366606 () Bool)

(assert (=> b!578643 (=> (not res!366606) (not e!332691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578643 (= res!366606 (validKeyInArray!0 (select (arr!17330 a!2986) j!136)))))

(declare-fun b!578645 () Bool)

(declare-fun res!366607 () Bool)

(assert (=> b!578645 (=> (not res!366607) (not e!332692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36119 (_ BitVec 32)) Bool)

(assert (=> b!578645 (= res!366607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578646 () Bool)

(declare-fun res!366612 () Bool)

(assert (=> b!578646 (=> (not res!366612) (not e!332691))))

(assert (=> b!578646 (= res!366612 (validKeyInArray!0 k!1786))))

(declare-fun b!578647 () Bool)

(assert (=> b!578647 (= e!332691 e!332692)))

(declare-fun res!366614 () Bool)

(assert (=> b!578647 (=> (not res!366614) (not e!332692))))

(declare-fun lt!264311 () SeekEntryResult!5777)

(assert (=> b!578647 (= res!366614 (or (= lt!264311 (MissingZero!5777 i!1108)) (= lt!264311 (MissingVacant!5777 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36119 (_ BitVec 32)) SeekEntryResult!5777)

(assert (=> b!578647 (= lt!264311 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578648 () Bool)

(declare-fun res!366608 () Bool)

(assert (=> b!578648 (=> (not res!366608) (not e!332692))))

(declare-datatypes ((List!11424 0))(
  ( (Nil!11421) (Cons!11420 (h!12465 (_ BitVec 64)) (t!17660 List!11424)) )
))
(declare-fun arrayNoDuplicates!0 (array!36119 (_ BitVec 32) List!11424) Bool)

(assert (=> b!578648 (= res!366608 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11421))))

(declare-fun res!366613 () Bool)

(assert (=> start!53264 (=> (not res!366613) (not e!332691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53264 (= res!366613 (validMask!0 mask!3053))))

(assert (=> start!53264 e!332691))

(assert (=> start!53264 true))

(declare-fun array_inv!13104 (array!36119) Bool)

(assert (=> start!53264 (array_inv!13104 a!2986)))

(declare-fun b!578644 () Bool)

(declare-fun res!366610 () Bool)

(assert (=> b!578644 (=> (not res!366610) (not e!332691))))

(assert (=> b!578644 (= res!366610 (and (= (size!17694 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17694 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17694 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53264 res!366613) b!578644))

(assert (= (and b!578644 res!366610) b!578643))

(assert (= (and b!578643 res!366606) b!578646))

(assert (= (and b!578646 res!366612) b!578641))

(assert (= (and b!578641 res!366609) b!578647))

(assert (= (and b!578647 res!366614) b!578645))

(assert (= (and b!578645 res!366607) b!578648))

(assert (= (and b!578648 res!366608) b!578642))

(assert (= (and b!578642 res!366611) b!578640))

(declare-fun m!557333 () Bool)

(assert (=> b!578646 m!557333))

(declare-fun m!557335 () Bool)

(assert (=> b!578640 m!557335))

(assert (=> b!578640 m!557335))

(declare-fun m!557337 () Bool)

(assert (=> b!578640 m!557337))

(declare-fun m!557339 () Bool)

(assert (=> b!578641 m!557339))

(declare-fun m!557341 () Bool)

(assert (=> start!53264 m!557341))

(declare-fun m!557343 () Bool)

(assert (=> start!53264 m!557343))

(declare-fun m!557345 () Bool)

(assert (=> b!578647 m!557345))

(declare-fun m!557347 () Bool)

(assert (=> b!578648 m!557347))

(declare-fun m!557349 () Bool)

(assert (=> b!578642 m!557349))

(declare-fun m!557351 () Bool)

(assert (=> b!578642 m!557351))

(declare-fun m!557353 () Bool)

(assert (=> b!578642 m!557353))

(assert (=> b!578643 m!557335))

(assert (=> b!578643 m!557335))

(declare-fun m!557355 () Bool)

(assert (=> b!578643 m!557355))

(declare-fun m!557357 () Bool)

(assert (=> b!578645 m!557357))

(push 1)

(assert (not b!578643))

(assert (not b!578648))

(assert (not b!578647))

