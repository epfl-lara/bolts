; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56434 () Bool)

(assert start!56434)

(declare-fun b!625257 () Bool)

(declare-fun e!358371 () Bool)

(assert (=> b!625257 (= e!358371 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6575 0))(
  ( (MissingZero!6575 (index!28583 (_ BitVec 32))) (Found!6575 (index!28584 (_ BitVec 32))) (Intermediate!6575 (undefined!7387 Bool) (index!28585 (_ BitVec 32)) (x!57358 (_ BitVec 32))) (Undefined!6575) (MissingVacant!6575 (index!28586 (_ BitVec 32))) )
))
(declare-fun lt!289775 () SeekEntryResult!6575)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37777 0))(
  ( (array!37778 (arr!18128 (Array (_ BitVec 32) (_ BitVec 64))) (size!18492 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37777)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37777 (_ BitVec 32)) SeekEntryResult!6575)

(assert (=> b!625257 (= lt!289775 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18128 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!403448 () Bool)

(declare-fun e!358370 () Bool)

(assert (=> start!56434 (=> (not res!403448) (not e!358370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56434 (= res!403448 (validMask!0 mask!3053))))

(assert (=> start!56434 e!358370))

(assert (=> start!56434 true))

(declare-fun array_inv!13902 (array!37777) Bool)

(assert (=> start!56434 (array_inv!13902 a!2986)))

(declare-fun b!625258 () Bool)

(declare-fun res!403443 () Bool)

(assert (=> b!625258 (=> (not res!403443) (not e!358370))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625258 (= res!403443 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625259 () Bool)

(declare-fun res!403450 () Bool)

(assert (=> b!625259 (=> (not res!403450) (not e!358370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625259 (= res!403450 (validKeyInArray!0 (select (arr!18128 a!2986) j!136)))))

(declare-fun b!625260 () Bool)

(declare-fun res!403447 () Bool)

(assert (=> b!625260 (=> (not res!403447) (not e!358371))))

(declare-datatypes ((List!12222 0))(
  ( (Nil!12219) (Cons!12218 (h!13263 (_ BitVec 64)) (t!18458 List!12222)) )
))
(declare-fun arrayNoDuplicates!0 (array!37777 (_ BitVec 32) List!12222) Bool)

(assert (=> b!625260 (= res!403447 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12219))))

(declare-fun b!625261 () Bool)

(assert (=> b!625261 (= e!358370 e!358371)))

(declare-fun res!403449 () Bool)

(assert (=> b!625261 (=> (not res!403449) (not e!358371))))

(declare-fun lt!289776 () SeekEntryResult!6575)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625261 (= res!403449 (or (= lt!289776 (MissingZero!6575 i!1108)) (= lt!289776 (MissingVacant!6575 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37777 (_ BitVec 32)) SeekEntryResult!6575)

(assert (=> b!625261 (= lt!289776 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625262 () Bool)

(declare-fun res!403445 () Bool)

(assert (=> b!625262 (=> (not res!403445) (not e!358371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37777 (_ BitVec 32)) Bool)

(assert (=> b!625262 (= res!403445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625263 () Bool)

(declare-fun res!403444 () Bool)

(assert (=> b!625263 (=> (not res!403444) (not e!358371))))

(assert (=> b!625263 (= res!403444 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18128 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18128 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625264 () Bool)

(declare-fun res!403451 () Bool)

(assert (=> b!625264 (=> (not res!403451) (not e!358370))))

(assert (=> b!625264 (= res!403451 (validKeyInArray!0 k!1786))))

(declare-fun b!625265 () Bool)

(declare-fun res!403446 () Bool)

(assert (=> b!625265 (=> (not res!403446) (not e!358370))))

(assert (=> b!625265 (= res!403446 (and (= (size!18492 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18492 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18492 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56434 res!403448) b!625265))

(assert (= (and b!625265 res!403446) b!625259))

(assert (= (and b!625259 res!403450) b!625264))

(assert (= (and b!625264 res!403451) b!625258))

(assert (= (and b!625258 res!403443) b!625261))

(assert (= (and b!625261 res!403449) b!625262))

(assert (= (and b!625262 res!403445) b!625260))

(assert (= (and b!625260 res!403447) b!625263))

(assert (= (and b!625263 res!403444) b!625257))

(declare-fun m!600877 () Bool)

(assert (=> b!625257 m!600877))

(assert (=> b!625257 m!600877))

(declare-fun m!600879 () Bool)

(assert (=> b!625257 m!600879))

(declare-fun m!600881 () Bool)

(assert (=> b!625261 m!600881))

(declare-fun m!600883 () Bool)

(assert (=> start!56434 m!600883))

(declare-fun m!600885 () Bool)

(assert (=> start!56434 m!600885))

(assert (=> b!625259 m!600877))

(assert (=> b!625259 m!600877))

(declare-fun m!600887 () Bool)

(assert (=> b!625259 m!600887))

(declare-fun m!600889 () Bool)

(assert (=> b!625264 m!600889))

(declare-fun m!600891 () Bool)

(assert (=> b!625260 m!600891))

(declare-fun m!600893 () Bool)

(assert (=> b!625262 m!600893))

(declare-fun m!600895 () Bool)

(assert (=> b!625263 m!600895))

(declare-fun m!600897 () Bool)

(assert (=> b!625263 m!600897))

(declare-fun m!600899 () Bool)

(assert (=> b!625263 m!600899))

(declare-fun m!600901 () Bool)

(assert (=> b!625258 m!600901))

(push 1)

(assert (not b!625257))

(assert (not b!625262))

