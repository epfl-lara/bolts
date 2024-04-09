; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53596 () Bool)

(assert start!53596)

(declare-fun b!583167 () Bool)

(declare-fun e!334186 () Bool)

(declare-fun e!334184 () Bool)

(assert (=> b!583167 (= e!334186 e!334184)))

(declare-fun res!371137 () Bool)

(assert (=> b!583167 (=> (not res!371137) (not e!334184))))

(declare-datatypes ((SeekEntryResult!5943 0))(
  ( (MissingZero!5943 (index!25999 (_ BitVec 32))) (Found!5943 (index!26000 (_ BitVec 32))) (Intermediate!5943 (undefined!6755 Bool) (index!26001 (_ BitVec 32)) (x!54871 (_ BitVec 32))) (Undefined!5943) (MissingVacant!5943 (index!26002 (_ BitVec 32))) )
))
(declare-fun lt!265270 () SeekEntryResult!5943)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583167 (= res!371137 (or (= lt!265270 (MissingZero!5943 i!1108)) (= lt!265270 (MissingVacant!5943 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36451 0))(
  ( (array!36452 (arr!17496 (Array (_ BitVec 32) (_ BitVec 64))) (size!17860 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36451)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36451 (_ BitVec 32)) SeekEntryResult!5943)

(assert (=> b!583167 (= lt!265270 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583168 () Bool)

(declare-fun res!371135 () Bool)

(assert (=> b!583168 (=> (not res!371135) (not e!334186))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583168 (= res!371135 (validKeyInArray!0 (select (arr!17496 a!2986) j!136)))))

(declare-fun b!583169 () Bool)

(declare-fun res!371139 () Bool)

(assert (=> b!583169 (=> (not res!371139) (not e!334186))))

(declare-fun arrayContainsKey!0 (array!36451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583169 (= res!371139 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!371136 () Bool)

(assert (=> start!53596 (=> (not res!371136) (not e!334186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53596 (= res!371136 (validMask!0 mask!3053))))

(assert (=> start!53596 e!334186))

(assert (=> start!53596 true))

(declare-fun array_inv!13270 (array!36451) Bool)

(assert (=> start!53596 (array_inv!13270 a!2986)))

(declare-fun b!583170 () Bool)

(declare-fun res!371141 () Bool)

(assert (=> b!583170 (=> (not res!371141) (not e!334184))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583170 (= res!371141 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17496 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17496 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583171 () Bool)

(declare-fun res!371133 () Bool)

(assert (=> b!583171 (=> (not res!371133) (not e!334186))))

(assert (=> b!583171 (= res!371133 (validKeyInArray!0 k!1786))))

(declare-fun b!583172 () Bool)

(declare-fun res!371138 () Bool)

(assert (=> b!583172 (=> (not res!371138) (not e!334184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36451 (_ BitVec 32)) Bool)

(assert (=> b!583172 (= res!371138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583173 () Bool)

(assert (=> b!583173 (= e!334184 false)))

(declare-fun lt!265271 () SeekEntryResult!5943)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36451 (_ BitVec 32)) SeekEntryResult!5943)

(assert (=> b!583173 (= lt!265271 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17496 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583174 () Bool)

(declare-fun res!371134 () Bool)

(assert (=> b!583174 (=> (not res!371134) (not e!334186))))

(assert (=> b!583174 (= res!371134 (and (= (size!17860 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17860 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17860 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583175 () Bool)

(declare-fun res!371140 () Bool)

(assert (=> b!583175 (=> (not res!371140) (not e!334184))))

(declare-datatypes ((List!11590 0))(
  ( (Nil!11587) (Cons!11586 (h!12631 (_ BitVec 64)) (t!17826 List!11590)) )
))
(declare-fun arrayNoDuplicates!0 (array!36451 (_ BitVec 32) List!11590) Bool)

(assert (=> b!583175 (= res!371140 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11587))))

(assert (= (and start!53596 res!371136) b!583174))

(assert (= (and b!583174 res!371134) b!583168))

(assert (= (and b!583168 res!371135) b!583171))

(assert (= (and b!583171 res!371133) b!583169))

(assert (= (and b!583169 res!371139) b!583167))

(assert (= (and b!583167 res!371137) b!583172))

(assert (= (and b!583172 res!371138) b!583175))

(assert (= (and b!583175 res!371140) b!583170))

(assert (= (and b!583170 res!371141) b!583173))

(declare-fun m!561685 () Bool)

(assert (=> b!583168 m!561685))

(assert (=> b!583168 m!561685))

(declare-fun m!561687 () Bool)

(assert (=> b!583168 m!561687))

(declare-fun m!561689 () Bool)

(assert (=> b!583170 m!561689))

(declare-fun m!561691 () Bool)

(assert (=> b!583170 m!561691))

(declare-fun m!561693 () Bool)

(assert (=> b!583170 m!561693))

(declare-fun m!561695 () Bool)

(assert (=> b!583171 m!561695))

(declare-fun m!561697 () Bool)

(assert (=> start!53596 m!561697))

(declare-fun m!561699 () Bool)

(assert (=> start!53596 m!561699))

(declare-fun m!561701 () Bool)

(assert (=> b!583167 m!561701))

(declare-fun m!561703 () Bool)

(assert (=> b!583169 m!561703))

(declare-fun m!561705 () Bool)

(assert (=> b!583175 m!561705))

(assert (=> b!583173 m!561685))

(assert (=> b!583173 m!561685))

(declare-fun m!561707 () Bool)

(assert (=> b!583173 m!561707))

(declare-fun m!561709 () Bool)

(assert (=> b!583172 m!561709))

(push 1)

