; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53710 () Bool)

(assert start!53710)

(declare-fun b!585171 () Bool)

(declare-fun res!373139 () Bool)

(declare-fun e!334855 () Bool)

(assert (=> b!585171 (=> (not res!373139) (not e!334855))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36565 0))(
  ( (array!36566 (arr!17553 (Array (_ BitVec 32) (_ BitVec 64))) (size!17917 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36565)

(declare-datatypes ((SeekEntryResult!6000 0))(
  ( (MissingZero!6000 (index!26227 (_ BitVec 32))) (Found!6000 (index!26228 (_ BitVec 32))) (Intermediate!6000 (undefined!6812 Bool) (index!26229 (_ BitVec 32)) (x!55080 (_ BitVec 32))) (Undefined!6000) (MissingVacant!6000 (index!26230 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36565 (_ BitVec 32)) SeekEntryResult!6000)

(assert (=> b!585171 (= res!373139 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17553 a!2986) j!136) a!2986 mask!3053) (Found!6000 j!136)))))

(declare-fun b!585172 () Bool)

(declare-fun e!334853 () Bool)

(assert (=> b!585172 (= e!334853 e!334855)))

(declare-fun res!373148 () Bool)

(assert (=> b!585172 (=> (not res!373148) (not e!334855))))

(declare-fun lt!265769 () SeekEntryResult!6000)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585172 (= res!373148 (or (= lt!265769 (MissingZero!6000 i!1108)) (= lt!265769 (MissingVacant!6000 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36565 (_ BitVec 32)) SeekEntryResult!6000)

(assert (=> b!585172 (= lt!265769 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585173 () Bool)

(declare-fun e!334852 () Bool)

(assert (=> b!585173 (= e!334852 false)))

(declare-fun lt!265767 () SeekEntryResult!6000)

(declare-fun lt!265768 () (_ BitVec 32))

(assert (=> b!585173 (= lt!265767 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265768 vacantSpotIndex!68 (select (arr!17553 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585174 () Bool)

(declare-fun res!373142 () Bool)

(assert (=> b!585174 (=> (not res!373142) (not e!334855))))

(declare-datatypes ((List!11647 0))(
  ( (Nil!11644) (Cons!11643 (h!12688 (_ BitVec 64)) (t!17883 List!11647)) )
))
(declare-fun arrayNoDuplicates!0 (array!36565 (_ BitVec 32) List!11647) Bool)

(assert (=> b!585174 (= res!373142 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11644))))

(declare-fun b!585175 () Bool)

(declare-fun res!373141 () Bool)

(assert (=> b!585175 (=> (not res!373141) (not e!334853))))

(assert (=> b!585175 (= res!373141 (and (= (size!17917 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17917 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17917 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585176 () Bool)

(declare-fun res!373138 () Bool)

(assert (=> b!585176 (=> (not res!373138) (not e!334855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36565 (_ BitVec 32)) Bool)

(assert (=> b!585176 (= res!373138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585177 () Bool)

(assert (=> b!585177 (= e!334855 e!334852)))

(declare-fun res!373144 () Bool)

(assert (=> b!585177 (=> (not res!373144) (not e!334852))))

(assert (=> b!585177 (= res!373144 (and (bvsge lt!265768 #b00000000000000000000000000000000) (bvslt lt!265768 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585177 (= lt!265768 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585178 () Bool)

(declare-fun res!373143 () Bool)

(assert (=> b!585178 (=> (not res!373143) (not e!334853))))

(declare-fun arrayContainsKey!0 (array!36565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585178 (= res!373143 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585179 () Bool)

(declare-fun res!373145 () Bool)

(assert (=> b!585179 (=> (not res!373145) (not e!334853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585179 (= res!373145 (validKeyInArray!0 (select (arr!17553 a!2986) j!136)))))

(declare-fun res!373140 () Bool)

(assert (=> start!53710 (=> (not res!373140) (not e!334853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53710 (= res!373140 (validMask!0 mask!3053))))

(assert (=> start!53710 e!334853))

(assert (=> start!53710 true))

(declare-fun array_inv!13327 (array!36565) Bool)

(assert (=> start!53710 (array_inv!13327 a!2986)))

(declare-fun b!585180 () Bool)

(declare-fun res!373147 () Bool)

(assert (=> b!585180 (=> (not res!373147) (not e!334855))))

(assert (=> b!585180 (= res!373147 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17553 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17553 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585181 () Bool)

(declare-fun res!373146 () Bool)

(assert (=> b!585181 (=> (not res!373146) (not e!334855))))

(assert (=> b!585181 (= res!373146 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17553 a!2986) index!984) (select (arr!17553 a!2986) j!136))) (not (= (select (arr!17553 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585182 () Bool)

(declare-fun res!373137 () Bool)

(assert (=> b!585182 (=> (not res!373137) (not e!334853))))

(assert (=> b!585182 (= res!373137 (validKeyInArray!0 k!1786))))

(assert (= (and start!53710 res!373140) b!585175))

(assert (= (and b!585175 res!373141) b!585179))

(assert (= (and b!585179 res!373145) b!585182))

(assert (= (and b!585182 res!373137) b!585178))

(assert (= (and b!585178 res!373143) b!585172))

(assert (= (and b!585172 res!373148) b!585176))

(assert (= (and b!585176 res!373138) b!585174))

(assert (= (and b!585174 res!373142) b!585180))

(assert (= (and b!585180 res!373147) b!585171))

(assert (= (and b!585171 res!373139) b!585181))

(assert (= (and b!585181 res!373146) b!585177))

(assert (= (and b!585177 res!373144) b!585173))

(declare-fun m!563473 () Bool)

(assert (=> b!585178 m!563473))

(declare-fun m!563475 () Bool)

(assert (=> b!585172 m!563475))

(declare-fun m!563477 () Bool)

(assert (=> b!585179 m!563477))

(assert (=> b!585179 m!563477))

(declare-fun m!563479 () Bool)

(assert (=> b!585179 m!563479))

(declare-fun m!563481 () Bool)

(assert (=> b!585176 m!563481))

(declare-fun m!563483 () Bool)

(assert (=> b!585174 m!563483))

(assert (=> b!585171 m!563477))

(assert (=> b!585171 m!563477))

(declare-fun m!563485 () Bool)

(assert (=> b!585171 m!563485))

(declare-fun m!563487 () Bool)

(assert (=> b!585180 m!563487))

(declare-fun m!563489 () Bool)

(assert (=> b!585180 m!563489))

(declare-fun m!563491 () Bool)

(assert (=> b!585180 m!563491))

(declare-fun m!563493 () Bool)

(assert (=> b!585182 m!563493))

(declare-fun m!563495 () Bool)

(assert (=> b!585181 m!563495))

(assert (=> b!585181 m!563477))

(declare-fun m!563497 () Bool)

(assert (=> start!53710 m!563497))

(declare-fun m!563499 () Bool)

(assert (=> start!53710 m!563499))

(assert (=> b!585173 m!563477))

(assert (=> b!585173 m!563477))

(declare-fun m!563501 () Bool)

(assert (=> b!585173 m!563501))

(declare-fun m!563503 () Bool)

(assert (=> b!585177 m!563503))

(push 1)

