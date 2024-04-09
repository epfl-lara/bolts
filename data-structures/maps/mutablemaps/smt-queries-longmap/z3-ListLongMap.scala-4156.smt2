; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56636 () Bool)

(assert start!56636)

(declare-fun res!405131 () Bool)

(declare-fun e!359136 () Bool)

(assert (=> start!56636 (=> (not res!405131) (not e!359136))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56636 (= res!405131 (validMask!0 mask!3053))))

(assert (=> start!56636 e!359136))

(assert (=> start!56636 true))

(declare-datatypes ((array!37889 0))(
  ( (array!37890 (arr!18181 (Array (_ BitVec 32) (_ BitVec 64))) (size!18545 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37889)

(declare-fun array_inv!13955 (array!37889) Bool)

(assert (=> start!56636 (array_inv!13955 a!2986)))

(declare-fun b!627247 () Bool)

(declare-fun res!405135 () Bool)

(declare-fun e!359135 () Bool)

(assert (=> b!627247 (=> (not res!405135) (not e!359135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37889 (_ BitVec 32)) Bool)

(assert (=> b!627247 (= res!405135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627248 () Bool)

(assert (=> b!627248 (= e!359135 false)))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!290226 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627248 (= lt!290226 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627249 () Bool)

(declare-fun res!405128 () Bool)

(assert (=> b!627249 (=> (not res!405128) (not e!359135))))

(declare-datatypes ((List!12275 0))(
  ( (Nil!12272) (Cons!12271 (h!13316 (_ BitVec 64)) (t!18511 List!12275)) )
))
(declare-fun arrayNoDuplicates!0 (array!37889 (_ BitVec 32) List!12275) Bool)

(assert (=> b!627249 (= res!405128 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12272))))

(declare-fun b!627250 () Bool)

(declare-fun res!405137 () Bool)

(assert (=> b!627250 (=> (not res!405137) (not e!359135))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6628 0))(
  ( (MissingZero!6628 (index!28795 (_ BitVec 32))) (Found!6628 (index!28796 (_ BitVec 32))) (Intermediate!6628 (undefined!7440 Bool) (index!28797 (_ BitVec 32)) (x!57561 (_ BitVec 32))) (Undefined!6628) (MissingVacant!6628 (index!28798 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37889 (_ BitVec 32)) SeekEntryResult!6628)

(assert (=> b!627250 (= res!405137 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18181 a!2986) j!136) a!2986 mask!3053) (Found!6628 j!136)))))

(declare-fun b!627251 () Bool)

(declare-fun res!405129 () Bool)

(assert (=> b!627251 (=> (not res!405129) (not e!359135))))

(assert (=> b!627251 (= res!405129 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18181 a!2986) index!984) (select (arr!18181 a!2986) j!136))) (not (= (select (arr!18181 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627252 () Bool)

(declare-fun res!405127 () Bool)

(assert (=> b!627252 (=> (not res!405127) (not e!359136))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627252 (= res!405127 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627253 () Bool)

(declare-fun res!405134 () Bool)

(assert (=> b!627253 (=> (not res!405134) (not e!359136))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627253 (= res!405134 (and (= (size!18545 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18545 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18545 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627254 () Bool)

(declare-fun res!405136 () Bool)

(assert (=> b!627254 (=> (not res!405136) (not e!359136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627254 (= res!405136 (validKeyInArray!0 k0!1786))))

(declare-fun b!627255 () Bool)

(declare-fun res!405130 () Bool)

(assert (=> b!627255 (=> (not res!405130) (not e!359136))))

(assert (=> b!627255 (= res!405130 (validKeyInArray!0 (select (arr!18181 a!2986) j!136)))))

(declare-fun b!627256 () Bool)

(declare-fun res!405133 () Bool)

(assert (=> b!627256 (=> (not res!405133) (not e!359135))))

(assert (=> b!627256 (= res!405133 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18181 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18181 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627257 () Bool)

(assert (=> b!627257 (= e!359136 e!359135)))

(declare-fun res!405132 () Bool)

(assert (=> b!627257 (=> (not res!405132) (not e!359135))))

(declare-fun lt!290225 () SeekEntryResult!6628)

(assert (=> b!627257 (= res!405132 (or (= lt!290225 (MissingZero!6628 i!1108)) (= lt!290225 (MissingVacant!6628 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37889 (_ BitVec 32)) SeekEntryResult!6628)

(assert (=> b!627257 (= lt!290225 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!56636 res!405131) b!627253))

(assert (= (and b!627253 res!405134) b!627255))

(assert (= (and b!627255 res!405130) b!627254))

(assert (= (and b!627254 res!405136) b!627252))

(assert (= (and b!627252 res!405127) b!627257))

(assert (= (and b!627257 res!405132) b!627247))

(assert (= (and b!627247 res!405135) b!627249))

(assert (= (and b!627249 res!405128) b!627256))

(assert (= (and b!627256 res!405133) b!627250))

(assert (= (and b!627250 res!405137) b!627251))

(assert (= (and b!627251 res!405129) b!627248))

(declare-fun m!602613 () Bool)

(assert (=> b!627252 m!602613))

(declare-fun m!602615 () Bool)

(assert (=> b!627248 m!602615))

(declare-fun m!602617 () Bool)

(assert (=> b!627254 m!602617))

(declare-fun m!602619 () Bool)

(assert (=> b!627257 m!602619))

(declare-fun m!602621 () Bool)

(assert (=> b!627256 m!602621))

(declare-fun m!602623 () Bool)

(assert (=> b!627256 m!602623))

(declare-fun m!602625 () Bool)

(assert (=> b!627256 m!602625))

(declare-fun m!602627 () Bool)

(assert (=> b!627249 m!602627))

(declare-fun m!602629 () Bool)

(assert (=> b!627255 m!602629))

(assert (=> b!627255 m!602629))

(declare-fun m!602631 () Bool)

(assert (=> b!627255 m!602631))

(assert (=> b!627250 m!602629))

(assert (=> b!627250 m!602629))

(declare-fun m!602633 () Bool)

(assert (=> b!627250 m!602633))

(declare-fun m!602635 () Bool)

(assert (=> b!627247 m!602635))

(declare-fun m!602637 () Bool)

(assert (=> b!627251 m!602637))

(assert (=> b!627251 m!602629))

(declare-fun m!602639 () Bool)

(assert (=> start!56636 m!602639))

(declare-fun m!602641 () Bool)

(assert (=> start!56636 m!602641))

(check-sat (not b!627247) (not b!627248) (not b!627249) (not b!627255) (not b!627257) (not b!627250) (not start!56636) (not b!627252) (not b!627254))
