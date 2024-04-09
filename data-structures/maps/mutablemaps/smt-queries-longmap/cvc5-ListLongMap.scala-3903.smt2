; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53446 () Bool)

(assert start!53446)

(declare-fun b!581108 () Bool)

(declare-fun res!369075 () Bool)

(declare-fun e!333509 () Bool)

(assert (=> b!581108 (=> (not res!369075) (not e!333509))))

(declare-datatypes ((array!36301 0))(
  ( (array!36302 (arr!17421 (Array (_ BitVec 32) (_ BitVec 64))) (size!17785 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36301)

(declare-datatypes ((List!11515 0))(
  ( (Nil!11512) (Cons!11511 (h!12556 (_ BitVec 64)) (t!17751 List!11515)) )
))
(declare-fun arrayNoDuplicates!0 (array!36301 (_ BitVec 32) List!11515) Bool)

(assert (=> b!581108 (= res!369075 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11512))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun b!581109 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581109 (= e!333509 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17421 a!2986) index!984) (select (arr!17421 a!2986) j!136)) (= index!984 j!136) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun res!369080 () Bool)

(declare-fun e!333511 () Bool)

(assert (=> start!53446 (=> (not res!369080) (not e!333511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53446 (= res!369080 (validMask!0 mask!3053))))

(assert (=> start!53446 e!333511))

(assert (=> start!53446 true))

(declare-fun array_inv!13195 (array!36301) Bool)

(assert (=> start!53446 (array_inv!13195 a!2986)))

(declare-fun b!581110 () Bool)

(declare-fun res!369081 () Bool)

(assert (=> b!581110 (=> (not res!369081) (not e!333509))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!581110 (= res!369081 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17421 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17421 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581111 () Bool)

(declare-fun res!369079 () Bool)

(assert (=> b!581111 (=> (not res!369079) (not e!333511))))

(declare-fun arrayContainsKey!0 (array!36301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581111 (= res!369079 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581112 () Bool)

(declare-fun res!369077 () Bool)

(assert (=> b!581112 (=> (not res!369077) (not e!333511))))

(assert (=> b!581112 (= res!369077 (and (= (size!17785 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17785 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17785 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581113 () Bool)

(declare-fun res!369076 () Bool)

(assert (=> b!581113 (=> (not res!369076) (not e!333511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581113 (= res!369076 (validKeyInArray!0 k!1786))))

(declare-fun b!581114 () Bool)

(declare-fun res!369083 () Bool)

(assert (=> b!581114 (=> (not res!369083) (not e!333509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36301 (_ BitVec 32)) Bool)

(assert (=> b!581114 (= res!369083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581115 () Bool)

(assert (=> b!581115 (= e!333511 e!333509)))

(declare-fun res!369078 () Bool)

(assert (=> b!581115 (=> (not res!369078) (not e!333509))))

(declare-datatypes ((SeekEntryResult!5868 0))(
  ( (MissingZero!5868 (index!25699 (_ BitVec 32))) (Found!5868 (index!25700 (_ BitVec 32))) (Intermediate!5868 (undefined!6680 Bool) (index!25701 (_ BitVec 32)) (x!54596 (_ BitVec 32))) (Undefined!5868) (MissingVacant!5868 (index!25702 (_ BitVec 32))) )
))
(declare-fun lt!264845 () SeekEntryResult!5868)

(assert (=> b!581115 (= res!369078 (or (= lt!264845 (MissingZero!5868 i!1108)) (= lt!264845 (MissingVacant!5868 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36301 (_ BitVec 32)) SeekEntryResult!5868)

(assert (=> b!581115 (= lt!264845 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581116 () Bool)

(declare-fun res!369074 () Bool)

(assert (=> b!581116 (=> (not res!369074) (not e!333511))))

(assert (=> b!581116 (= res!369074 (validKeyInArray!0 (select (arr!17421 a!2986) j!136)))))

(declare-fun b!581117 () Bool)

(declare-fun res!369082 () Bool)

(assert (=> b!581117 (=> (not res!369082) (not e!333509))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36301 (_ BitVec 32)) SeekEntryResult!5868)

(assert (=> b!581117 (= res!369082 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17421 a!2986) j!136) a!2986 mask!3053) (Found!5868 j!136)))))

(assert (= (and start!53446 res!369080) b!581112))

(assert (= (and b!581112 res!369077) b!581116))

(assert (= (and b!581116 res!369074) b!581113))

(assert (= (and b!581113 res!369076) b!581111))

(assert (= (and b!581111 res!369079) b!581115))

(assert (= (and b!581115 res!369078) b!581114))

(assert (= (and b!581114 res!369083) b!581108))

(assert (= (and b!581108 res!369075) b!581110))

(assert (= (and b!581110 res!369081) b!581117))

(assert (= (and b!581117 res!369082) b!581109))

(declare-fun m!559705 () Bool)

(assert (=> b!581116 m!559705))

(assert (=> b!581116 m!559705))

(declare-fun m!559707 () Bool)

(assert (=> b!581116 m!559707))

(declare-fun m!559709 () Bool)

(assert (=> b!581110 m!559709))

(declare-fun m!559711 () Bool)

(assert (=> b!581110 m!559711))

(declare-fun m!559713 () Bool)

(assert (=> b!581110 m!559713))

(declare-fun m!559715 () Bool)

(assert (=> b!581108 m!559715))

(declare-fun m!559717 () Bool)

(assert (=> b!581113 m!559717))

(declare-fun m!559719 () Bool)

(assert (=> b!581115 m!559719))

(declare-fun m!559721 () Bool)

(assert (=> start!53446 m!559721))

(declare-fun m!559723 () Bool)

(assert (=> start!53446 m!559723))

(assert (=> b!581117 m!559705))

(assert (=> b!581117 m!559705))

(declare-fun m!559725 () Bool)

(assert (=> b!581117 m!559725))

(declare-fun m!559727 () Bool)

(assert (=> b!581114 m!559727))

(declare-fun m!559729 () Bool)

(assert (=> b!581111 m!559729))

(declare-fun m!559731 () Bool)

(assert (=> b!581109 m!559731))

(assert (=> b!581109 m!559705))

(push 1)

