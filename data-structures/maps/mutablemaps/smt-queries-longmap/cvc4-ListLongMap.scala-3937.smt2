; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53654 () Bool)

(assert start!53654)

(declare-fun res!372137 () Bool)

(declare-fun e!334516 () Bool)

(assert (=> start!53654 (=> (not res!372137) (not e!334516))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53654 (= res!372137 (validMask!0 mask!3053))))

(assert (=> start!53654 e!334516))

(assert (=> start!53654 true))

(declare-datatypes ((array!36509 0))(
  ( (array!36510 (arr!17525 (Array (_ BitVec 32) (_ BitVec 64))) (size!17889 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36509)

(declare-fun array_inv!13299 (array!36509) Bool)

(assert (=> start!53654 (array_inv!13299 a!2986)))

(declare-fun b!584163 () Bool)

(declare-fun e!334517 () Bool)

(assert (=> b!584163 (= e!334516 e!334517)))

(declare-fun res!372132 () Bool)

(assert (=> b!584163 (=> (not res!372132) (not e!334517))))

(declare-datatypes ((SeekEntryResult!5972 0))(
  ( (MissingZero!5972 (index!26115 (_ BitVec 32))) (Found!5972 (index!26116 (_ BitVec 32))) (Intermediate!5972 (undefined!6784 Bool) (index!26117 (_ BitVec 32)) (x!54972 (_ BitVec 32))) (Undefined!5972) (MissingVacant!5972 (index!26118 (_ BitVec 32))) )
))
(declare-fun lt!265515 () SeekEntryResult!5972)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584163 (= res!372132 (or (= lt!265515 (MissingZero!5972 i!1108)) (= lt!265515 (MissingVacant!5972 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36509 (_ BitVec 32)) SeekEntryResult!5972)

(assert (=> b!584163 (= lt!265515 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584164 () Bool)

(declare-fun res!372136 () Bool)

(assert (=> b!584164 (=> (not res!372136) (not e!334516))))

(declare-fun arrayContainsKey!0 (array!36509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584164 (= res!372136 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584165 () Bool)

(declare-fun res!372133 () Bool)

(assert (=> b!584165 (=> (not res!372133) (not e!334516))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!584165 (= res!372133 (and (= (size!17889 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17889 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17889 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584166 () Bool)

(declare-fun res!372129 () Bool)

(assert (=> b!584166 (=> (not res!372129) (not e!334517))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36509 (_ BitVec 32)) SeekEntryResult!5972)

(assert (=> b!584166 (= res!372129 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17525 a!2986) j!136) a!2986 mask!3053) (Found!5972 j!136)))))

(declare-fun b!584167 () Bool)

(declare-fun e!334519 () Bool)

(assert (=> b!584167 (= e!334517 e!334519)))

(declare-fun res!372130 () Bool)

(assert (=> b!584167 (=> (not res!372130) (not e!334519))))

(declare-fun lt!265516 () (_ BitVec 32))

(assert (=> b!584167 (= res!372130 (and (bvsge lt!265516 #b00000000000000000000000000000000) (bvslt lt!265516 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584167 (= lt!265516 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584168 () Bool)

(declare-fun res!372131 () Bool)

(assert (=> b!584168 (=> (not res!372131) (not e!334516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584168 (= res!372131 (validKeyInArray!0 k!1786))))

(declare-fun b!584169 () Bool)

(assert (=> b!584169 (= e!334519 false)))

(declare-fun lt!265517 () SeekEntryResult!5972)

(assert (=> b!584169 (= lt!265517 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265516 vacantSpotIndex!68 (select (arr!17525 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584170 () Bool)

(declare-fun res!372135 () Bool)

(assert (=> b!584170 (=> (not res!372135) (not e!334517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36509 (_ BitVec 32)) Bool)

(assert (=> b!584170 (= res!372135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584171 () Bool)

(declare-fun res!372134 () Bool)

(assert (=> b!584171 (=> (not res!372134) (not e!334517))))

(assert (=> b!584171 (= res!372134 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17525 a!2986) index!984) (select (arr!17525 a!2986) j!136))) (not (= (select (arr!17525 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584172 () Bool)

(declare-fun res!372140 () Bool)

(assert (=> b!584172 (=> (not res!372140) (not e!334517))))

(declare-datatypes ((List!11619 0))(
  ( (Nil!11616) (Cons!11615 (h!12660 (_ BitVec 64)) (t!17855 List!11619)) )
))
(declare-fun arrayNoDuplicates!0 (array!36509 (_ BitVec 32) List!11619) Bool)

(assert (=> b!584172 (= res!372140 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11616))))

(declare-fun b!584173 () Bool)

(declare-fun res!372138 () Bool)

(assert (=> b!584173 (=> (not res!372138) (not e!334516))))

(assert (=> b!584173 (= res!372138 (validKeyInArray!0 (select (arr!17525 a!2986) j!136)))))

(declare-fun b!584174 () Bool)

(declare-fun res!372139 () Bool)

(assert (=> b!584174 (=> (not res!372139) (not e!334517))))

(assert (=> b!584174 (= res!372139 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17525 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17525 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53654 res!372137) b!584165))

(assert (= (and b!584165 res!372133) b!584173))

(assert (= (and b!584173 res!372138) b!584168))

(assert (= (and b!584168 res!372131) b!584164))

(assert (= (and b!584164 res!372136) b!584163))

(assert (= (and b!584163 res!372132) b!584170))

(assert (= (and b!584170 res!372135) b!584172))

(assert (= (and b!584172 res!372140) b!584174))

(assert (= (and b!584174 res!372139) b!584166))

(assert (= (and b!584166 res!372129) b!584171))

(assert (= (and b!584171 res!372134) b!584167))

(assert (= (and b!584167 res!372130) b!584169))

(declare-fun m!562577 () Bool)

(assert (=> b!584171 m!562577))

(declare-fun m!562579 () Bool)

(assert (=> b!584171 m!562579))

(declare-fun m!562581 () Bool)

(assert (=> b!584172 m!562581))

(declare-fun m!562583 () Bool)

(assert (=> b!584170 m!562583))

(declare-fun m!562585 () Bool)

(assert (=> b!584164 m!562585))

(declare-fun m!562587 () Bool)

(assert (=> b!584163 m!562587))

(declare-fun m!562589 () Bool)

(assert (=> b!584174 m!562589))

(declare-fun m!562591 () Bool)

(assert (=> b!584174 m!562591))

(declare-fun m!562593 () Bool)

(assert (=> b!584174 m!562593))

(declare-fun m!562595 () Bool)

(assert (=> start!53654 m!562595))

(declare-fun m!562597 () Bool)

(assert (=> start!53654 m!562597))

(assert (=> b!584173 m!562579))

(assert (=> b!584173 m!562579))

(declare-fun m!562599 () Bool)

(assert (=> b!584173 m!562599))

(declare-fun m!562601 () Bool)

(assert (=> b!584167 m!562601))

(assert (=> b!584166 m!562579))

(assert (=> b!584166 m!562579))

(declare-fun m!562603 () Bool)

(assert (=> b!584166 m!562603))

(declare-fun m!562605 () Bool)

(assert (=> b!584168 m!562605))

(assert (=> b!584169 m!562579))

(assert (=> b!584169 m!562579))

(declare-fun m!562607 () Bool)

(assert (=> b!584169 m!562607))

(push 1)

(assert (not b!584166))

(assert (not start!53654))

(assert (not b!584172))

(assert (not b!584167))

(assert (not b!584168))

(assert (not b!584164))

(assert (not b!584173))

(assert (not b!584170))

(assert (not b!584169))

(assert (not b!584163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

