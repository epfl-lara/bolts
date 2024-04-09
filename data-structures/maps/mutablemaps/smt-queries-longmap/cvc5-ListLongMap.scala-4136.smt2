; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56418 () Bool)

(assert start!56418)

(declare-fun b!625032 () Bool)

(declare-fun res!403222 () Bool)

(declare-fun e!358299 () Bool)

(assert (=> b!625032 (=> (not res!403222) (not e!358299))))

(declare-datatypes ((array!37761 0))(
  ( (array!37762 (arr!18120 (Array (_ BitVec 32) (_ BitVec 64))) (size!18484 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37761)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37761 (_ BitVec 32)) Bool)

(assert (=> b!625032 (= res!403222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625033 () Bool)

(declare-fun res!403221 () Bool)

(declare-fun e!358300 () Bool)

(assert (=> b!625033 (=> (not res!403221) (not e!358300))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625033 (= res!403221 (and (= (size!18484 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18484 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18484 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625034 () Bool)

(declare-fun res!403226 () Bool)

(assert (=> b!625034 (=> (not res!403226) (not e!358300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625034 (= res!403226 (validKeyInArray!0 (select (arr!18120 a!2986) j!136)))))

(declare-fun b!625035 () Bool)

(assert (=> b!625035 (= e!358300 e!358299)))

(declare-fun res!403220 () Bool)

(assert (=> b!625035 (=> (not res!403220) (not e!358299))))

(declare-datatypes ((SeekEntryResult!6567 0))(
  ( (MissingZero!6567 (index!28551 (_ BitVec 32))) (Found!6567 (index!28552 (_ BitVec 32))) (Intermediate!6567 (undefined!7379 Bool) (index!28553 (_ BitVec 32)) (x!57334 (_ BitVec 32))) (Undefined!6567) (MissingVacant!6567 (index!28554 (_ BitVec 32))) )
))
(declare-fun lt!289737 () SeekEntryResult!6567)

(assert (=> b!625035 (= res!403220 (or (= lt!289737 (MissingZero!6567 i!1108)) (= lt!289737 (MissingVacant!6567 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37761 (_ BitVec 32)) SeekEntryResult!6567)

(assert (=> b!625035 (= lt!289737 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625036 () Bool)

(assert (=> b!625036 (= e!358299 false)))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!289736 () SeekEntryResult!6567)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37761 (_ BitVec 32)) SeekEntryResult!6567)

(assert (=> b!625036 (= lt!289736 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18120 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625037 () Bool)

(declare-fun res!403219 () Bool)

(assert (=> b!625037 (=> (not res!403219) (not e!358300))))

(declare-fun arrayContainsKey!0 (array!37761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625037 (= res!403219 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625038 () Bool)

(declare-fun res!403223 () Bool)

(assert (=> b!625038 (=> (not res!403223) (not e!358300))))

(assert (=> b!625038 (= res!403223 (validKeyInArray!0 k!1786))))

(declare-fun b!625039 () Bool)

(declare-fun res!403225 () Bool)

(assert (=> b!625039 (=> (not res!403225) (not e!358299))))

(assert (=> b!625039 (= res!403225 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18120 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18120 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625040 () Bool)

(declare-fun res!403224 () Bool)

(assert (=> b!625040 (=> (not res!403224) (not e!358299))))

(declare-datatypes ((List!12214 0))(
  ( (Nil!12211) (Cons!12210 (h!13255 (_ BitVec 64)) (t!18450 List!12214)) )
))
(declare-fun arrayNoDuplicates!0 (array!37761 (_ BitVec 32) List!12214) Bool)

(assert (=> b!625040 (= res!403224 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12211))))

(declare-fun res!403218 () Bool)

(assert (=> start!56418 (=> (not res!403218) (not e!358300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56418 (= res!403218 (validMask!0 mask!3053))))

(assert (=> start!56418 e!358300))

(assert (=> start!56418 true))

(declare-fun array_inv!13894 (array!37761) Bool)

(assert (=> start!56418 (array_inv!13894 a!2986)))

(assert (= (and start!56418 res!403218) b!625033))

(assert (= (and b!625033 res!403221) b!625034))

(assert (= (and b!625034 res!403226) b!625038))

(assert (= (and b!625038 res!403223) b!625037))

(assert (= (and b!625037 res!403219) b!625035))

(assert (= (and b!625035 res!403220) b!625032))

(assert (= (and b!625032 res!403222) b!625040))

(assert (= (and b!625040 res!403224) b!625039))

(assert (= (and b!625039 res!403225) b!625036))

(declare-fun m!600669 () Bool)

(assert (=> b!625032 m!600669))

(declare-fun m!600671 () Bool)

(assert (=> b!625039 m!600671))

(declare-fun m!600673 () Bool)

(assert (=> b!625039 m!600673))

(declare-fun m!600675 () Bool)

(assert (=> b!625039 m!600675))

(declare-fun m!600677 () Bool)

(assert (=> b!625034 m!600677))

(assert (=> b!625034 m!600677))

(declare-fun m!600679 () Bool)

(assert (=> b!625034 m!600679))

(declare-fun m!600681 () Bool)

(assert (=> b!625035 m!600681))

(declare-fun m!600683 () Bool)

(assert (=> b!625040 m!600683))

(declare-fun m!600685 () Bool)

(assert (=> start!56418 m!600685))

(declare-fun m!600687 () Bool)

(assert (=> start!56418 m!600687))

(assert (=> b!625036 m!600677))

(assert (=> b!625036 m!600677))

(declare-fun m!600689 () Bool)

(assert (=> b!625036 m!600689))

(declare-fun m!600691 () Bool)

(assert (=> b!625038 m!600691))

(declare-fun m!600693 () Bool)

(assert (=> b!625037 m!600693))

(push 1)

