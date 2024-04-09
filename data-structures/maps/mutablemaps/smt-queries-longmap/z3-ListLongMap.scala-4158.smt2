; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56648 () Bool)

(assert start!56648)

(declare-fun b!627445 () Bool)

(declare-fun res!405328 () Bool)

(declare-fun e!359190 () Bool)

(assert (=> b!627445 (=> (not res!405328) (not e!359190))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37901 0))(
  ( (array!37902 (arr!18187 (Array (_ BitVec 32) (_ BitVec 64))) (size!18551 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37901)

(assert (=> b!627445 (= res!405328 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18187 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18187 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627446 () Bool)

(declare-fun e!359189 () Bool)

(assert (=> b!627446 (= e!359189 e!359190)))

(declare-fun res!405329 () Bool)

(assert (=> b!627446 (=> (not res!405329) (not e!359190))))

(declare-datatypes ((SeekEntryResult!6634 0))(
  ( (MissingZero!6634 (index!28819 (_ BitVec 32))) (Found!6634 (index!28820 (_ BitVec 32))) (Intermediate!6634 (undefined!7446 Bool) (index!28821 (_ BitVec 32)) (x!57583 (_ BitVec 32))) (Undefined!6634) (MissingVacant!6634 (index!28822 (_ BitVec 32))) )
))
(declare-fun lt!290261 () SeekEntryResult!6634)

(assert (=> b!627446 (= res!405329 (or (= lt!290261 (MissingZero!6634 i!1108)) (= lt!290261 (MissingVacant!6634 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37901 (_ BitVec 32)) SeekEntryResult!6634)

(assert (=> b!627446 (= lt!290261 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!627447 () Bool)

(declare-fun res!405334 () Bool)

(assert (=> b!627447 (=> (not res!405334) (not e!359189))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627447 (= res!405334 (validKeyInArray!0 (select (arr!18187 a!2986) j!136)))))

(declare-fun b!627448 () Bool)

(declare-fun res!405325 () Bool)

(assert (=> b!627448 (=> (not res!405325) (not e!359190))))

(declare-datatypes ((List!12281 0))(
  ( (Nil!12278) (Cons!12277 (h!13322 (_ BitVec 64)) (t!18517 List!12281)) )
))
(declare-fun arrayNoDuplicates!0 (array!37901 (_ BitVec 32) List!12281) Bool)

(assert (=> b!627448 (= res!405325 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12278))))

(declare-fun b!627449 () Bool)

(declare-fun res!405331 () Bool)

(assert (=> b!627449 (=> (not res!405331) (not e!359189))))

(assert (=> b!627449 (= res!405331 (and (= (size!18551 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18551 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18551 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627450 () Bool)

(declare-fun res!405333 () Bool)

(assert (=> b!627450 (=> (not res!405333) (not e!359190))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37901 (_ BitVec 32)) SeekEntryResult!6634)

(assert (=> b!627450 (= res!405333 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18187 a!2986) j!136) a!2986 mask!3053) (Found!6634 j!136)))))

(declare-fun res!405332 () Bool)

(assert (=> start!56648 (=> (not res!405332) (not e!359189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56648 (= res!405332 (validMask!0 mask!3053))))

(assert (=> start!56648 e!359189))

(assert (=> start!56648 true))

(declare-fun array_inv!13961 (array!37901) Bool)

(assert (=> start!56648 (array_inv!13961 a!2986)))

(declare-fun b!627451 () Bool)

(declare-fun res!405327 () Bool)

(assert (=> b!627451 (=> (not res!405327) (not e!359189))))

(assert (=> b!627451 (= res!405327 (validKeyInArray!0 k0!1786))))

(declare-fun b!627452 () Bool)

(declare-fun res!405326 () Bool)

(assert (=> b!627452 (=> (not res!405326) (not e!359190))))

(assert (=> b!627452 (= res!405326 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18187 a!2986) index!984) (select (arr!18187 a!2986) j!136))) (not (= (select (arr!18187 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627453 () Bool)

(declare-fun res!405335 () Bool)

(assert (=> b!627453 (=> (not res!405335) (not e!359189))))

(declare-fun arrayContainsKey!0 (array!37901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627453 (= res!405335 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627454 () Bool)

(assert (=> b!627454 (= e!359190 false)))

(declare-fun lt!290262 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627454 (= lt!290262 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627455 () Bool)

(declare-fun res!405330 () Bool)

(assert (=> b!627455 (=> (not res!405330) (not e!359190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37901 (_ BitVec 32)) Bool)

(assert (=> b!627455 (= res!405330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56648 res!405332) b!627449))

(assert (= (and b!627449 res!405331) b!627447))

(assert (= (and b!627447 res!405334) b!627451))

(assert (= (and b!627451 res!405327) b!627453))

(assert (= (and b!627453 res!405335) b!627446))

(assert (= (and b!627446 res!405329) b!627455))

(assert (= (and b!627455 res!405330) b!627448))

(assert (= (and b!627448 res!405325) b!627445))

(assert (= (and b!627445 res!405328) b!627450))

(assert (= (and b!627450 res!405333) b!627452))

(assert (= (and b!627452 res!405326) b!627454))

(declare-fun m!602793 () Bool)

(assert (=> b!627455 m!602793))

(declare-fun m!602795 () Bool)

(assert (=> b!627452 m!602795))

(declare-fun m!602797 () Bool)

(assert (=> b!627452 m!602797))

(declare-fun m!602799 () Bool)

(assert (=> start!56648 m!602799))

(declare-fun m!602801 () Bool)

(assert (=> start!56648 m!602801))

(assert (=> b!627450 m!602797))

(assert (=> b!627450 m!602797))

(declare-fun m!602803 () Bool)

(assert (=> b!627450 m!602803))

(declare-fun m!602805 () Bool)

(assert (=> b!627451 m!602805))

(declare-fun m!602807 () Bool)

(assert (=> b!627453 m!602807))

(declare-fun m!602809 () Bool)

(assert (=> b!627446 m!602809))

(declare-fun m!602811 () Bool)

(assert (=> b!627448 m!602811))

(assert (=> b!627447 m!602797))

(assert (=> b!627447 m!602797))

(declare-fun m!602813 () Bool)

(assert (=> b!627447 m!602813))

(declare-fun m!602815 () Bool)

(assert (=> b!627454 m!602815))

(declare-fun m!602817 () Bool)

(assert (=> b!627445 m!602817))

(declare-fun m!602819 () Bool)

(assert (=> b!627445 m!602819))

(declare-fun m!602821 () Bool)

(assert (=> b!627445 m!602821))

(check-sat (not b!627454) (not start!56648) (not b!627455) (not b!627451) (not b!627453) (not b!627448) (not b!627450) (not b!627446) (not b!627447))
(check-sat)
