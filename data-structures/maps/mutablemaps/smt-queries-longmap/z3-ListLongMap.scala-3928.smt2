; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53598 () Bool)

(assert start!53598)

(declare-fun b!583194 () Bool)

(declare-fun res!371163 () Bool)

(declare-fun e!334194 () Bool)

(assert (=> b!583194 (=> (not res!371163) (not e!334194))))

(declare-datatypes ((array!36453 0))(
  ( (array!36454 (arr!17497 (Array (_ BitVec 32) (_ BitVec 64))) (size!17861 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36453)

(declare-datatypes ((List!11591 0))(
  ( (Nil!11588) (Cons!11587 (h!12632 (_ BitVec 64)) (t!17827 List!11591)) )
))
(declare-fun arrayNoDuplicates!0 (array!36453 (_ BitVec 32) List!11591) Bool)

(assert (=> b!583194 (= res!371163 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11588))))

(declare-fun b!583195 () Bool)

(declare-fun res!371165 () Bool)

(declare-fun e!334193 () Bool)

(assert (=> b!583195 (=> (not res!371165) (not e!334193))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583195 (= res!371165 (validKeyInArray!0 k0!1786))))

(declare-fun b!583197 () Bool)

(declare-fun res!371166 () Bool)

(assert (=> b!583197 (=> (not res!371166) (not e!334194))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583197 (= res!371166 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17497 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17497 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583198 () Bool)

(assert (=> b!583198 (= e!334194 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5944 0))(
  ( (MissingZero!5944 (index!26003 (_ BitVec 32))) (Found!5944 (index!26004 (_ BitVec 32))) (Intermediate!5944 (undefined!6756 Bool) (index!26005 (_ BitVec 32)) (x!54872 (_ BitVec 32))) (Undefined!5944) (MissingVacant!5944 (index!26006 (_ BitVec 32))) )
))
(declare-fun lt!265277 () SeekEntryResult!5944)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36453 (_ BitVec 32)) SeekEntryResult!5944)

(assert (=> b!583198 (= lt!265277 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17497 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583199 () Bool)

(declare-fun res!371164 () Bool)

(assert (=> b!583199 (=> (not res!371164) (not e!334193))))

(assert (=> b!583199 (= res!371164 (validKeyInArray!0 (select (arr!17497 a!2986) j!136)))))

(declare-fun b!583200 () Bool)

(declare-fun res!371167 () Bool)

(assert (=> b!583200 (=> (not res!371167) (not e!334193))))

(assert (=> b!583200 (= res!371167 (and (= (size!17861 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17861 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17861 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583201 () Bool)

(declare-fun res!371168 () Bool)

(assert (=> b!583201 (=> (not res!371168) (not e!334194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36453 (_ BitVec 32)) Bool)

(assert (=> b!583201 (= res!371168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583202 () Bool)

(assert (=> b!583202 (= e!334193 e!334194)))

(declare-fun res!371161 () Bool)

(assert (=> b!583202 (=> (not res!371161) (not e!334194))))

(declare-fun lt!265276 () SeekEntryResult!5944)

(assert (=> b!583202 (= res!371161 (or (= lt!265276 (MissingZero!5944 i!1108)) (= lt!265276 (MissingVacant!5944 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36453 (_ BitVec 32)) SeekEntryResult!5944)

(assert (=> b!583202 (= lt!265276 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!371162 () Bool)

(assert (=> start!53598 (=> (not res!371162) (not e!334193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53598 (= res!371162 (validMask!0 mask!3053))))

(assert (=> start!53598 e!334193))

(assert (=> start!53598 true))

(declare-fun array_inv!13271 (array!36453) Bool)

(assert (=> start!53598 (array_inv!13271 a!2986)))

(declare-fun b!583196 () Bool)

(declare-fun res!371160 () Bool)

(assert (=> b!583196 (=> (not res!371160) (not e!334193))))

(declare-fun arrayContainsKey!0 (array!36453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583196 (= res!371160 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53598 res!371162) b!583200))

(assert (= (and b!583200 res!371167) b!583199))

(assert (= (and b!583199 res!371164) b!583195))

(assert (= (and b!583195 res!371165) b!583196))

(assert (= (and b!583196 res!371160) b!583202))

(assert (= (and b!583202 res!371161) b!583201))

(assert (= (and b!583201 res!371168) b!583194))

(assert (= (and b!583194 res!371163) b!583197))

(assert (= (and b!583197 res!371166) b!583198))

(declare-fun m!561711 () Bool)

(assert (=> b!583194 m!561711))

(declare-fun m!561713 () Bool)

(assert (=> b!583199 m!561713))

(assert (=> b!583199 m!561713))

(declare-fun m!561715 () Bool)

(assert (=> b!583199 m!561715))

(declare-fun m!561717 () Bool)

(assert (=> b!583201 m!561717))

(assert (=> b!583198 m!561713))

(assert (=> b!583198 m!561713))

(declare-fun m!561719 () Bool)

(assert (=> b!583198 m!561719))

(declare-fun m!561721 () Bool)

(assert (=> b!583202 m!561721))

(declare-fun m!561723 () Bool)

(assert (=> b!583195 m!561723))

(declare-fun m!561725 () Bool)

(assert (=> b!583196 m!561725))

(declare-fun m!561727 () Bool)

(assert (=> start!53598 m!561727))

(declare-fun m!561729 () Bool)

(assert (=> start!53598 m!561729))

(declare-fun m!561731 () Bool)

(assert (=> b!583197 m!561731))

(declare-fun m!561733 () Bool)

(assert (=> b!583197 m!561733))

(declare-fun m!561735 () Bool)

(assert (=> b!583197 m!561735))

(check-sat (not b!583201) (not start!53598) (not b!583196) (not b!583202) (not b!583195) (not b!583199) (not b!583194) (not b!583198))
(check-sat)
