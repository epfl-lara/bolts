; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56620 () Bool)

(assert start!56620)

(declare-fun b!626983 () Bool)

(declare-fun res!404864 () Bool)

(declare-fun e!359064 () Bool)

(assert (=> b!626983 (=> (not res!404864) (not e!359064))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37873 0))(
  ( (array!37874 (arr!18173 (Array (_ BitVec 32) (_ BitVec 64))) (size!18537 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37873)

(assert (=> b!626983 (= res!404864 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18173 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18173 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!404867 () Bool)

(declare-fun e!359065 () Bool)

(assert (=> start!56620 (=> (not res!404867) (not e!359065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56620 (= res!404867 (validMask!0 mask!3053))))

(assert (=> start!56620 e!359065))

(assert (=> start!56620 true))

(declare-fun array_inv!13947 (array!37873) Bool)

(assert (=> start!56620 (array_inv!13947 a!2986)))

(declare-fun b!626984 () Bool)

(declare-fun res!404863 () Bool)

(assert (=> b!626984 (=> (not res!404863) (not e!359065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626984 (= res!404863 (validKeyInArray!0 k!1786))))

(declare-fun b!626985 () Bool)

(declare-fun res!404865 () Bool)

(assert (=> b!626985 (=> (not res!404865) (not e!359064))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626985 (= res!404865 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18173 a!2986) index!984) (select (arr!18173 a!2986) j!136))) (not (= (select (arr!18173 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626986 () Bool)

(declare-fun res!404872 () Bool)

(assert (=> b!626986 (=> (not res!404872) (not e!359065))))

(assert (=> b!626986 (= res!404872 (validKeyInArray!0 (select (arr!18173 a!2986) j!136)))))

(declare-fun b!626987 () Bool)

(assert (=> b!626987 (= e!359064 false)))

(declare-fun lt!290177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626987 (= lt!290177 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626988 () Bool)

(declare-fun res!404871 () Bool)

(assert (=> b!626988 (=> (not res!404871) (not e!359065))))

(assert (=> b!626988 (= res!404871 (and (= (size!18537 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18537 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18537 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626989 () Bool)

(declare-fun res!404870 () Bool)

(assert (=> b!626989 (=> (not res!404870) (not e!359064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37873 (_ BitVec 32)) Bool)

(assert (=> b!626989 (= res!404870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626990 () Bool)

(declare-fun res!404868 () Bool)

(assert (=> b!626990 (=> (not res!404868) (not e!359065))))

(declare-fun arrayContainsKey!0 (array!37873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626990 (= res!404868 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626991 () Bool)

(declare-fun res!404869 () Bool)

(assert (=> b!626991 (=> (not res!404869) (not e!359064))))

(declare-datatypes ((SeekEntryResult!6620 0))(
  ( (MissingZero!6620 (index!28763 (_ BitVec 32))) (Found!6620 (index!28764 (_ BitVec 32))) (Intermediate!6620 (undefined!7432 Bool) (index!28765 (_ BitVec 32)) (x!57529 (_ BitVec 32))) (Undefined!6620) (MissingVacant!6620 (index!28766 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37873 (_ BitVec 32)) SeekEntryResult!6620)

(assert (=> b!626991 (= res!404869 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18173 a!2986) j!136) a!2986 mask!3053) (Found!6620 j!136)))))

(declare-fun b!626992 () Bool)

(assert (=> b!626992 (= e!359065 e!359064)))

(declare-fun res!404866 () Bool)

(assert (=> b!626992 (=> (not res!404866) (not e!359064))))

(declare-fun lt!290178 () SeekEntryResult!6620)

(assert (=> b!626992 (= res!404866 (or (= lt!290178 (MissingZero!6620 i!1108)) (= lt!290178 (MissingVacant!6620 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37873 (_ BitVec 32)) SeekEntryResult!6620)

(assert (=> b!626992 (= lt!290178 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626993 () Bool)

(declare-fun res!404873 () Bool)

(assert (=> b!626993 (=> (not res!404873) (not e!359064))))

(declare-datatypes ((List!12267 0))(
  ( (Nil!12264) (Cons!12263 (h!13308 (_ BitVec 64)) (t!18503 List!12267)) )
))
(declare-fun arrayNoDuplicates!0 (array!37873 (_ BitVec 32) List!12267) Bool)

(assert (=> b!626993 (= res!404873 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12264))))

(assert (= (and start!56620 res!404867) b!626988))

(assert (= (and b!626988 res!404871) b!626986))

(assert (= (and b!626986 res!404872) b!626984))

(assert (= (and b!626984 res!404863) b!626990))

(assert (= (and b!626990 res!404868) b!626992))

(assert (= (and b!626992 res!404866) b!626989))

(assert (= (and b!626989 res!404870) b!626993))

(assert (= (and b!626993 res!404873) b!626983))

(assert (= (and b!626983 res!404864) b!626991))

(assert (= (and b!626991 res!404869) b!626985))

(assert (= (and b!626985 res!404865) b!626987))

(declare-fun m!602373 () Bool)

(assert (=> b!626990 m!602373))

(declare-fun m!602375 () Bool)

(assert (=> b!626989 m!602375))

(declare-fun m!602377 () Bool)

(assert (=> b!626985 m!602377))

(declare-fun m!602379 () Bool)

(assert (=> b!626985 m!602379))

(declare-fun m!602381 () Bool)

(assert (=> b!626992 m!602381))

(declare-fun m!602383 () Bool)

(assert (=> b!626993 m!602383))

(assert (=> b!626991 m!602379))

(assert (=> b!626991 m!602379))

(declare-fun m!602385 () Bool)

(assert (=> b!626991 m!602385))

(declare-fun m!602387 () Bool)

(assert (=> b!626983 m!602387))

(declare-fun m!602389 () Bool)

(assert (=> b!626983 m!602389))

(declare-fun m!602391 () Bool)

(assert (=> b!626983 m!602391))

(assert (=> b!626986 m!602379))

(assert (=> b!626986 m!602379))

(declare-fun m!602393 () Bool)

(assert (=> b!626986 m!602393))

(declare-fun m!602395 () Bool)

(assert (=> b!626987 m!602395))

(declare-fun m!602397 () Bool)

(assert (=> b!626984 m!602397))

(declare-fun m!602399 () Bool)

(assert (=> start!56620 m!602399))

(declare-fun m!602401 () Bool)

(assert (=> start!56620 m!602401))

(push 1)

(assert (not b!626989))

(assert (not start!56620))

(assert (not b!626992))

