; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53720 () Bool)

(assert start!53720)

(declare-fun b!585351 () Bool)

(declare-fun e!334912 () Bool)

(declare-fun e!334913 () Bool)

(assert (=> b!585351 (= e!334912 e!334913)))

(declare-fun res!373323 () Bool)

(assert (=> b!585351 (=> (not res!373323) (not e!334913))))

(declare-datatypes ((SeekEntryResult!6005 0))(
  ( (MissingZero!6005 (index!26247 (_ BitVec 32))) (Found!6005 (index!26248 (_ BitVec 32))) (Intermediate!6005 (undefined!6817 Bool) (index!26249 (_ BitVec 32)) (x!55093 (_ BitVec 32))) (Undefined!6005) (MissingVacant!6005 (index!26250 (_ BitVec 32))) )
))
(declare-fun lt!265814 () SeekEntryResult!6005)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585351 (= res!373323 (or (= lt!265814 (MissingZero!6005 i!1108)) (= lt!265814 (MissingVacant!6005 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36575 0))(
  ( (array!36576 (arr!17558 (Array (_ BitVec 32) (_ BitVec 64))) (size!17922 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36575)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36575 (_ BitVec 32)) SeekEntryResult!6005)

(assert (=> b!585351 (= lt!265814 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585352 () Bool)

(declare-fun res!373324 () Bool)

(assert (=> b!585352 (=> (not res!373324) (not e!334913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36575 (_ BitVec 32)) Bool)

(assert (=> b!585352 (= res!373324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!373325 () Bool)

(assert (=> start!53720 (=> (not res!373325) (not e!334912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53720 (= res!373325 (validMask!0 mask!3053))))

(assert (=> start!53720 e!334912))

(assert (=> start!53720 true))

(declare-fun array_inv!13332 (array!36575) Bool)

(assert (=> start!53720 (array_inv!13332 a!2986)))

(declare-fun b!585353 () Bool)

(declare-fun res!373322 () Bool)

(assert (=> b!585353 (=> (not res!373322) (not e!334912))))

(declare-fun arrayContainsKey!0 (array!36575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585353 (= res!373322 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585354 () Bool)

(declare-fun res!373328 () Bool)

(assert (=> b!585354 (=> (not res!373328) (not e!334912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585354 (= res!373328 (validKeyInArray!0 k!1786))))

(declare-fun b!585355 () Bool)

(declare-fun res!373320 () Bool)

(assert (=> b!585355 (=> (not res!373320) (not e!334912))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!585355 (= res!373320 (and (= (size!17922 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17922 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17922 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585356 () Bool)

(declare-fun res!373326 () Bool)

(assert (=> b!585356 (=> (not res!373326) (not e!334913))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585356 (= res!373326 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17558 a!2986) index!984) (select (arr!17558 a!2986) j!136))) (not (= (select (arr!17558 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585357 () Bool)

(declare-fun res!373319 () Bool)

(assert (=> b!585357 (=> (not res!373319) (not e!334912))))

(assert (=> b!585357 (= res!373319 (validKeyInArray!0 (select (arr!17558 a!2986) j!136)))))

(declare-fun b!585358 () Bool)

(declare-fun res!373317 () Bool)

(assert (=> b!585358 (=> (not res!373317) (not e!334913))))

(declare-datatypes ((List!11652 0))(
  ( (Nil!11649) (Cons!11648 (h!12693 (_ BitVec 64)) (t!17888 List!11652)) )
))
(declare-fun arrayNoDuplicates!0 (array!36575 (_ BitVec 32) List!11652) Bool)

(assert (=> b!585358 (= res!373317 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11649))))

(declare-fun b!585359 () Bool)

(declare-fun res!373318 () Bool)

(assert (=> b!585359 (=> (not res!373318) (not e!334913))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36575 (_ BitVec 32)) SeekEntryResult!6005)

(assert (=> b!585359 (= res!373318 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17558 a!2986) j!136) a!2986 mask!3053) (Found!6005 j!136)))))

(declare-fun b!585360 () Bool)

(declare-fun e!334915 () Bool)

(assert (=> b!585360 (= e!334915 false)))

(declare-fun lt!265813 () (_ BitVec 32))

(declare-fun lt!265812 () SeekEntryResult!6005)

(assert (=> b!585360 (= lt!265812 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265813 vacantSpotIndex!68 (select (arr!17558 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585361 () Bool)

(declare-fun res!373321 () Bool)

(assert (=> b!585361 (=> (not res!373321) (not e!334913))))

(assert (=> b!585361 (= res!373321 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17558 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17558 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585362 () Bool)

(assert (=> b!585362 (= e!334913 e!334915)))

(declare-fun res!373327 () Bool)

(assert (=> b!585362 (=> (not res!373327) (not e!334915))))

(assert (=> b!585362 (= res!373327 (and (bvsge lt!265813 #b00000000000000000000000000000000) (bvslt lt!265813 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585362 (= lt!265813 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53720 res!373325) b!585355))

(assert (= (and b!585355 res!373320) b!585357))

(assert (= (and b!585357 res!373319) b!585354))

(assert (= (and b!585354 res!373328) b!585353))

(assert (= (and b!585353 res!373322) b!585351))

(assert (= (and b!585351 res!373323) b!585352))

(assert (= (and b!585352 res!373324) b!585358))

(assert (= (and b!585358 res!373317) b!585361))

(assert (= (and b!585361 res!373321) b!585359))

(assert (= (and b!585359 res!373318) b!585356))

(assert (= (and b!585356 res!373326) b!585362))

(assert (= (and b!585362 res!373327) b!585360))

(declare-fun m!563633 () Bool)

(assert (=> b!585360 m!563633))

(assert (=> b!585360 m!563633))

(declare-fun m!563635 () Bool)

(assert (=> b!585360 m!563635))

(declare-fun m!563637 () Bool)

(assert (=> b!585352 m!563637))

(declare-fun m!563639 () Bool)

(assert (=> b!585361 m!563639))

(declare-fun m!563641 () Bool)

(assert (=> b!585361 m!563641))

(declare-fun m!563643 () Bool)

(assert (=> b!585361 m!563643))

(declare-fun m!563645 () Bool)

(assert (=> b!585354 m!563645))

(declare-fun m!563647 () Bool)

(assert (=> b!585356 m!563647))

(assert (=> b!585356 m!563633))

(declare-fun m!563649 () Bool)

(assert (=> b!585353 m!563649))

(assert (=> b!585357 m!563633))

(assert (=> b!585357 m!563633))

(declare-fun m!563651 () Bool)

(assert (=> b!585357 m!563651))

(declare-fun m!563653 () Bool)

(assert (=> start!53720 m!563653))

(declare-fun m!563655 () Bool)

(assert (=> start!53720 m!563655))

(assert (=> b!585359 m!563633))

(assert (=> b!585359 m!563633))

(declare-fun m!563657 () Bool)

(assert (=> b!585359 m!563657))

(declare-fun m!563659 () Bool)

(assert (=> b!585362 m!563659))

(declare-fun m!563661 () Bool)

(assert (=> b!585358 m!563661))

(declare-fun m!563663 () Bool)

(assert (=> b!585351 m!563663))

(push 1)

