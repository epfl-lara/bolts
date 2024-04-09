; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56454 () Bool)

(assert start!56454)

(declare-fun res!403716 () Bool)

(declare-fun e!358461 () Bool)

(assert (=> start!56454 (=> (not res!403716) (not e!358461))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56454 (= res!403716 (validMask!0 mask!3053))))

(assert (=> start!56454 e!358461))

(assert (=> start!56454 true))

(declare-datatypes ((array!37797 0))(
  ( (array!37798 (arr!18138 (Array (_ BitVec 32) (_ BitVec 64))) (size!18502 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37797)

(declare-fun array_inv!13912 (array!37797) Bool)

(assert (=> start!56454 (array_inv!13912 a!2986)))

(declare-fun b!625527 () Bool)

(declare-fun res!403718 () Bool)

(declare-fun e!358462 () Bool)

(assert (=> b!625527 (=> (not res!403718) (not e!358462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37797 (_ BitVec 32)) Bool)

(assert (=> b!625527 (= res!403718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625528 () Bool)

(declare-fun res!403714 () Bool)

(assert (=> b!625528 (=> (not res!403714) (not e!358461))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625528 (= res!403714 (and (= (size!18502 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18502 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18502 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625529 () Bool)

(declare-fun res!403719 () Bool)

(assert (=> b!625529 (=> (not res!403719) (not e!358462))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625529 (= res!403719 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18138 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18138 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625530 () Bool)

(declare-fun res!403717 () Bool)

(assert (=> b!625530 (=> (not res!403717) (not e!358462))))

(declare-datatypes ((List!12232 0))(
  ( (Nil!12229) (Cons!12228 (h!13273 (_ BitVec 64)) (t!18468 List!12232)) )
))
(declare-fun arrayNoDuplicates!0 (array!37797 (_ BitVec 32) List!12232) Bool)

(assert (=> b!625530 (= res!403717 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12229))))

(declare-fun b!625531 () Bool)

(assert (=> b!625531 (= e!358461 e!358462)))

(declare-fun res!403721 () Bool)

(assert (=> b!625531 (=> (not res!403721) (not e!358462))))

(declare-datatypes ((SeekEntryResult!6585 0))(
  ( (MissingZero!6585 (index!28623 (_ BitVec 32))) (Found!6585 (index!28624 (_ BitVec 32))) (Intermediate!6585 (undefined!7397 Bool) (index!28625 (_ BitVec 32)) (x!57400 (_ BitVec 32))) (Undefined!6585) (MissingVacant!6585 (index!28626 (_ BitVec 32))) )
))
(declare-fun lt!289835 () SeekEntryResult!6585)

(assert (=> b!625531 (= res!403721 (or (= lt!289835 (MissingZero!6585 i!1108)) (= lt!289835 (MissingVacant!6585 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37797 (_ BitVec 32)) SeekEntryResult!6585)

(assert (=> b!625531 (= lt!289835 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625532 () Bool)

(declare-fun res!403720 () Bool)

(assert (=> b!625532 (=> (not res!403720) (not e!358461))))

(declare-fun arrayContainsKey!0 (array!37797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625532 (= res!403720 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625533 () Bool)

(declare-fun res!403713 () Bool)

(assert (=> b!625533 (=> (not res!403713) (not e!358461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625533 (= res!403713 (validKeyInArray!0 k!1786))))

(declare-fun b!625534 () Bool)

(declare-fun res!403715 () Bool)

(assert (=> b!625534 (=> (not res!403715) (not e!358461))))

(assert (=> b!625534 (= res!403715 (validKeyInArray!0 (select (arr!18138 a!2986) j!136)))))

(declare-fun b!625535 () Bool)

(assert (=> b!625535 (= e!358462 false)))

(declare-fun lt!289836 () SeekEntryResult!6585)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37797 (_ BitVec 32)) SeekEntryResult!6585)

(assert (=> b!625535 (= lt!289836 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18138 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!56454 res!403716) b!625528))

(assert (= (and b!625528 res!403714) b!625534))

(assert (= (and b!625534 res!403715) b!625533))

(assert (= (and b!625533 res!403713) b!625532))

(assert (= (and b!625532 res!403720) b!625531))

(assert (= (and b!625531 res!403721) b!625527))

(assert (= (and b!625527 res!403718) b!625530))

(assert (= (and b!625530 res!403717) b!625529))

(assert (= (and b!625529 res!403719) b!625535))

(declare-fun m!601137 () Bool)

(assert (=> b!625533 m!601137))

(declare-fun m!601139 () Bool)

(assert (=> b!625534 m!601139))

(assert (=> b!625534 m!601139))

(declare-fun m!601141 () Bool)

(assert (=> b!625534 m!601141))

(declare-fun m!601143 () Bool)

(assert (=> b!625527 m!601143))

(declare-fun m!601145 () Bool)

(assert (=> start!56454 m!601145))

(declare-fun m!601147 () Bool)

(assert (=> start!56454 m!601147))

(declare-fun m!601149 () Bool)

(assert (=> b!625529 m!601149))

(declare-fun m!601151 () Bool)

(assert (=> b!625529 m!601151))

(declare-fun m!601153 () Bool)

(assert (=> b!625529 m!601153))

(declare-fun m!601155 () Bool)

(assert (=> b!625532 m!601155))

(declare-fun m!601157 () Bool)

(assert (=> b!625530 m!601157))

(declare-fun m!601159 () Bool)

(assert (=> b!625531 m!601159))

(assert (=> b!625535 m!601139))

(assert (=> b!625535 m!601139))

(declare-fun m!601161 () Bool)

(assert (=> b!625535 m!601161))

(push 1)

