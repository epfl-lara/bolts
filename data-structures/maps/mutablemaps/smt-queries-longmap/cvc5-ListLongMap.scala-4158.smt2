; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56646 () Bool)

(assert start!56646)

(declare-fun b!627412 () Bool)

(declare-fun res!405292 () Bool)

(declare-fun e!359182 () Bool)

(assert (=> b!627412 (=> (not res!405292) (not e!359182))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627412 (= res!405292 (validKeyInArray!0 k!1786))))

(declare-fun b!627413 () Bool)

(declare-fun e!359180 () Bool)

(assert (=> b!627413 (= e!359182 e!359180)))

(declare-fun res!405298 () Bool)

(assert (=> b!627413 (=> (not res!405298) (not e!359180))))

(declare-datatypes ((SeekEntryResult!6633 0))(
  ( (MissingZero!6633 (index!28815 (_ BitVec 32))) (Found!6633 (index!28816 (_ BitVec 32))) (Intermediate!6633 (undefined!7445 Bool) (index!28817 (_ BitVec 32)) (x!57582 (_ BitVec 32))) (Undefined!6633) (MissingVacant!6633 (index!28818 (_ BitVec 32))) )
))
(declare-fun lt!290256 () SeekEntryResult!6633)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627413 (= res!405298 (or (= lt!290256 (MissingZero!6633 i!1108)) (= lt!290256 (MissingVacant!6633 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37899 0))(
  ( (array!37900 (arr!18186 (Array (_ BitVec 32) (_ BitVec 64))) (size!18550 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37899)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37899 (_ BitVec 32)) SeekEntryResult!6633)

(assert (=> b!627413 (= lt!290256 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627414 () Bool)

(declare-fun res!405301 () Bool)

(assert (=> b!627414 (=> (not res!405301) (not e!359180))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627414 (= res!405301 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18186 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18186 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627415 () Bool)

(declare-fun res!405299 () Bool)

(assert (=> b!627415 (=> (not res!405299) (not e!359180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37899 (_ BitVec 32)) Bool)

(assert (=> b!627415 (= res!405299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627416 () Bool)

(declare-fun res!405294 () Bool)

(assert (=> b!627416 (=> (not res!405294) (not e!359182))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!627416 (= res!405294 (and (= (size!18550 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18550 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18550 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627417 () Bool)

(declare-fun res!405297 () Bool)

(assert (=> b!627417 (=> (not res!405297) (not e!359180))))

(declare-datatypes ((List!12280 0))(
  ( (Nil!12277) (Cons!12276 (h!13321 (_ BitVec 64)) (t!18516 List!12280)) )
))
(declare-fun arrayNoDuplicates!0 (array!37899 (_ BitVec 32) List!12280) Bool)

(assert (=> b!627417 (= res!405297 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12277))))

(declare-fun b!627418 () Bool)

(assert (=> b!627418 (= e!359180 false)))

(declare-fun lt!290255 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627418 (= lt!290255 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!405293 () Bool)

(assert (=> start!56646 (=> (not res!405293) (not e!359182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56646 (= res!405293 (validMask!0 mask!3053))))

(assert (=> start!56646 e!359182))

(assert (=> start!56646 true))

(declare-fun array_inv!13960 (array!37899) Bool)

(assert (=> start!56646 (array_inv!13960 a!2986)))

(declare-fun b!627419 () Bool)

(declare-fun res!405296 () Bool)

(assert (=> b!627419 (=> (not res!405296) (not e!359182))))

(assert (=> b!627419 (= res!405296 (validKeyInArray!0 (select (arr!18186 a!2986) j!136)))))

(declare-fun b!627420 () Bool)

(declare-fun res!405300 () Bool)

(assert (=> b!627420 (=> (not res!405300) (not e!359182))))

(declare-fun arrayContainsKey!0 (array!37899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627420 (= res!405300 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627421 () Bool)

(declare-fun res!405295 () Bool)

(assert (=> b!627421 (=> (not res!405295) (not e!359180))))

(assert (=> b!627421 (= res!405295 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18186 a!2986) index!984) (select (arr!18186 a!2986) j!136))) (not (= (select (arr!18186 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627422 () Bool)

(declare-fun res!405302 () Bool)

(assert (=> b!627422 (=> (not res!405302) (not e!359180))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37899 (_ BitVec 32)) SeekEntryResult!6633)

(assert (=> b!627422 (= res!405302 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18186 a!2986) j!136) a!2986 mask!3053) (Found!6633 j!136)))))

(assert (= (and start!56646 res!405293) b!627416))

(assert (= (and b!627416 res!405294) b!627419))

(assert (= (and b!627419 res!405296) b!627412))

(assert (= (and b!627412 res!405292) b!627420))

(assert (= (and b!627420 res!405300) b!627413))

(assert (= (and b!627413 res!405298) b!627415))

(assert (= (and b!627415 res!405299) b!627417))

(assert (= (and b!627417 res!405297) b!627414))

(assert (= (and b!627414 res!405301) b!627422))

(assert (= (and b!627422 res!405302) b!627421))

(assert (= (and b!627421 res!405295) b!627418))

(declare-fun m!602763 () Bool)

(assert (=> b!627422 m!602763))

(assert (=> b!627422 m!602763))

(declare-fun m!602765 () Bool)

(assert (=> b!627422 m!602765))

(declare-fun m!602767 () Bool)

(assert (=> b!627413 m!602767))

(declare-fun m!602769 () Bool)

(assert (=> b!627417 m!602769))

(declare-fun m!602771 () Bool)

(assert (=> start!56646 m!602771))

(declare-fun m!602773 () Bool)

(assert (=> start!56646 m!602773))

(declare-fun m!602775 () Bool)

(assert (=> b!627418 m!602775))

(declare-fun m!602777 () Bool)

(assert (=> b!627421 m!602777))

(assert (=> b!627421 m!602763))

(declare-fun m!602779 () Bool)

(assert (=> b!627415 m!602779))

(declare-fun m!602781 () Bool)

(assert (=> b!627414 m!602781))

(declare-fun m!602783 () Bool)

(assert (=> b!627414 m!602783))

(declare-fun m!602785 () Bool)

(assert (=> b!627414 m!602785))

(declare-fun m!602787 () Bool)

(assert (=> b!627412 m!602787))

(assert (=> b!627419 m!602763))

(assert (=> b!627419 m!602763))

(declare-fun m!602789 () Bool)

(assert (=> b!627419 m!602789))

(declare-fun m!602791 () Bool)

(assert (=> b!627420 m!602791))

(push 1)

