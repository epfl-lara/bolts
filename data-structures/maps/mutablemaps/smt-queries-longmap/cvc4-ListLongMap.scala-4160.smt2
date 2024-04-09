; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56662 () Bool)

(assert start!56662)

(declare-fun b!627676 () Bool)

(declare-fun res!405566 () Bool)

(declare-fun e!359253 () Bool)

(assert (=> b!627676 (=> (not res!405566) (not e!359253))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627676 (= res!405566 (validKeyInArray!0 k!1786))))

(declare-fun b!627677 () Bool)

(declare-fun res!405559 () Bool)

(assert (=> b!627677 (=> (not res!405559) (not e!359253))))

(declare-datatypes ((array!37915 0))(
  ( (array!37916 (arr!18194 (Array (_ BitVec 32) (_ BitVec 64))) (size!18558 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37915)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!627677 (= res!405559 (validKeyInArray!0 (select (arr!18194 a!2986) j!136)))))

(declare-fun b!627679 () Bool)

(declare-fun res!405558 () Bool)

(declare-fun e!359252 () Bool)

(assert (=> b!627679 (=> (not res!405558) (not e!359252))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6641 0))(
  ( (MissingZero!6641 (index!28847 (_ BitVec 32))) (Found!6641 (index!28848 (_ BitVec 32))) (Intermediate!6641 (undefined!7453 Bool) (index!28849 (_ BitVec 32)) (x!57606 (_ BitVec 32))) (Undefined!6641) (MissingVacant!6641 (index!28850 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37915 (_ BitVec 32)) SeekEntryResult!6641)

(assert (=> b!627679 (= res!405558 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18194 a!2986) j!136) a!2986 mask!3053) (Found!6641 j!136)))))

(declare-fun b!627680 () Bool)

(assert (=> b!627680 (= e!359253 e!359252)))

(declare-fun res!405565 () Bool)

(assert (=> b!627680 (=> (not res!405565) (not e!359252))))

(declare-fun lt!290303 () SeekEntryResult!6641)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627680 (= res!405565 (or (= lt!290303 (MissingZero!6641 i!1108)) (= lt!290303 (MissingVacant!6641 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37915 (_ BitVec 32)) SeekEntryResult!6641)

(assert (=> b!627680 (= lt!290303 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627681 () Bool)

(declare-fun res!405560 () Bool)

(assert (=> b!627681 (=> (not res!405560) (not e!359253))))

(assert (=> b!627681 (= res!405560 (and (= (size!18558 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18558 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18558 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627682 () Bool)

(declare-fun res!405556 () Bool)

(assert (=> b!627682 (=> (not res!405556) (not e!359252))))

(assert (=> b!627682 (= res!405556 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18194 a!2986) index!984) (select (arr!18194 a!2986) j!136))) (not (= (select (arr!18194 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627683 () Bool)

(declare-fun res!405562 () Bool)

(assert (=> b!627683 (=> (not res!405562) (not e!359252))))

(assert (=> b!627683 (= res!405562 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18194 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18194 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627684 () Bool)

(declare-fun res!405561 () Bool)

(assert (=> b!627684 (=> (not res!405561) (not e!359252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37915 (_ BitVec 32)) Bool)

(assert (=> b!627684 (= res!405561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!405564 () Bool)

(assert (=> start!56662 (=> (not res!405564) (not e!359253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56662 (= res!405564 (validMask!0 mask!3053))))

(assert (=> start!56662 e!359253))

(assert (=> start!56662 true))

(declare-fun array_inv!13968 (array!37915) Bool)

(assert (=> start!56662 (array_inv!13968 a!2986)))

(declare-fun b!627678 () Bool)

(declare-fun res!405563 () Bool)

(assert (=> b!627678 (=> (not res!405563) (not e!359253))))

(declare-fun arrayContainsKey!0 (array!37915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627678 (= res!405563 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627685 () Bool)

(assert (=> b!627685 (= e!359252 false)))

(declare-fun lt!290304 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627685 (= lt!290304 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627686 () Bool)

(declare-fun res!405557 () Bool)

(assert (=> b!627686 (=> (not res!405557) (not e!359252))))

(declare-datatypes ((List!12288 0))(
  ( (Nil!12285) (Cons!12284 (h!13329 (_ BitVec 64)) (t!18524 List!12288)) )
))
(declare-fun arrayNoDuplicates!0 (array!37915 (_ BitVec 32) List!12288) Bool)

(assert (=> b!627686 (= res!405557 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12285))))

(assert (= (and start!56662 res!405564) b!627681))

(assert (= (and b!627681 res!405560) b!627677))

(assert (= (and b!627677 res!405559) b!627676))

(assert (= (and b!627676 res!405566) b!627678))

(assert (= (and b!627678 res!405563) b!627680))

(assert (= (and b!627680 res!405565) b!627684))

(assert (= (and b!627684 res!405561) b!627686))

(assert (= (and b!627686 res!405557) b!627683))

(assert (= (and b!627683 res!405562) b!627679))

(assert (= (and b!627679 res!405558) b!627682))

(assert (= (and b!627682 res!405556) b!627685))

(declare-fun m!603003 () Bool)

(assert (=> b!627679 m!603003))

(assert (=> b!627679 m!603003))

(declare-fun m!603005 () Bool)

(assert (=> b!627679 m!603005))

(declare-fun m!603007 () Bool)

(assert (=> b!627685 m!603007))

(declare-fun m!603009 () Bool)

(assert (=> b!627678 m!603009))

(declare-fun m!603011 () Bool)

(assert (=> b!627684 m!603011))

(declare-fun m!603013 () Bool)

(assert (=> b!627680 m!603013))

(declare-fun m!603015 () Bool)

(assert (=> b!627683 m!603015))

(declare-fun m!603017 () Bool)

(assert (=> b!627683 m!603017))

(declare-fun m!603019 () Bool)

(assert (=> b!627683 m!603019))

(declare-fun m!603021 () Bool)

(assert (=> b!627676 m!603021))

(declare-fun m!603023 () Bool)

(assert (=> b!627682 m!603023))

(assert (=> b!627682 m!603003))

(declare-fun m!603025 () Bool)

(assert (=> b!627686 m!603025))

(declare-fun m!603027 () Bool)

(assert (=> start!56662 m!603027))

(declare-fun m!603029 () Bool)

(assert (=> start!56662 m!603029))

(assert (=> b!627677 m!603003))

(assert (=> b!627677 m!603003))

(declare-fun m!603031 () Bool)

(assert (=> b!627677 m!603031))

(push 1)

(assert (not b!627677))

(assert (not b!627685))

(assert (not b!627686))

(assert (not b!627678))

