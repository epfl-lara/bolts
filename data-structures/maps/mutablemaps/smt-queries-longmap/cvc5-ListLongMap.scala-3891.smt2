; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53374 () Bool)

(assert start!53374)

(declare-fun b!580125 () Bool)

(declare-fun res!368096 () Bool)

(declare-fun e!333187 () Bool)

(assert (=> b!580125 (=> (not res!368096) (not e!333187))))

(declare-datatypes ((array!36229 0))(
  ( (array!36230 (arr!17385 (Array (_ BitVec 32) (_ BitVec 64))) (size!17749 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36229)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36229 (_ BitVec 32)) Bool)

(assert (=> b!580125 (= res!368096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!368095 () Bool)

(declare-fun e!333186 () Bool)

(assert (=> start!53374 (=> (not res!368095) (not e!333186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53374 (= res!368095 (validMask!0 mask!3053))))

(assert (=> start!53374 e!333186))

(assert (=> start!53374 true))

(declare-fun array_inv!13159 (array!36229) Bool)

(assert (=> start!53374 (array_inv!13159 a!2986)))

(declare-fun b!580126 () Bool)

(assert (=> b!580126 (= e!333186 e!333187)))

(declare-fun res!368099 () Bool)

(assert (=> b!580126 (=> (not res!368099) (not e!333187))))

(declare-datatypes ((SeekEntryResult!5832 0))(
  ( (MissingZero!5832 (index!25555 (_ BitVec 32))) (Found!5832 (index!25556 (_ BitVec 32))) (Intermediate!5832 (undefined!6644 Bool) (index!25557 (_ BitVec 32)) (x!54464 (_ BitVec 32))) (Undefined!5832) (MissingVacant!5832 (index!25558 (_ BitVec 32))) )
))
(declare-fun lt!264641 () SeekEntryResult!5832)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580126 (= res!368099 (or (= lt!264641 (MissingZero!5832 i!1108)) (= lt!264641 (MissingVacant!5832 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36229 (_ BitVec 32)) SeekEntryResult!5832)

(assert (=> b!580126 (= lt!264641 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580127 () Bool)

(declare-fun res!368094 () Bool)

(assert (=> b!580127 (=> (not res!368094) (not e!333186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580127 (= res!368094 (validKeyInArray!0 k!1786))))

(declare-fun b!580128 () Bool)

(declare-fun res!368093 () Bool)

(assert (=> b!580128 (=> (not res!368093) (not e!333186))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580128 (= res!368093 (and (= (size!17749 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17749 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17749 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580129 () Bool)

(declare-fun res!368092 () Bool)

(assert (=> b!580129 (=> (not res!368092) (not e!333186))))

(assert (=> b!580129 (= res!368092 (validKeyInArray!0 (select (arr!17385 a!2986) j!136)))))

(declare-fun b!580130 () Bool)

(declare-fun res!368091 () Bool)

(assert (=> b!580130 (=> (not res!368091) (not e!333187))))

(declare-datatypes ((List!11479 0))(
  ( (Nil!11476) (Cons!11475 (h!12520 (_ BitVec 64)) (t!17715 List!11479)) )
))
(declare-fun arrayNoDuplicates!0 (array!36229 (_ BitVec 32) List!11479) Bool)

(assert (=> b!580130 (= res!368091 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11476))))

(declare-fun b!580131 () Bool)

(declare-fun res!368097 () Bool)

(assert (=> b!580131 (=> (not res!368097) (not e!333186))))

(declare-fun arrayContainsKey!0 (array!36229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580131 (= res!368097 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580132 () Bool)

(assert (=> b!580132 (= e!333187 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264640 () SeekEntryResult!5832)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36229 (_ BitVec 32)) SeekEntryResult!5832)

(assert (=> b!580132 (= lt!264640 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17385 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580133 () Bool)

(declare-fun res!368098 () Bool)

(assert (=> b!580133 (=> (not res!368098) (not e!333187))))

(assert (=> b!580133 (= res!368098 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17385 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17385 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53374 res!368095) b!580128))

(assert (= (and b!580128 res!368093) b!580129))

(assert (= (and b!580129 res!368092) b!580127))

(assert (= (and b!580127 res!368094) b!580131))

(assert (= (and b!580131 res!368097) b!580126))

(assert (= (and b!580126 res!368099) b!580125))

(assert (= (and b!580125 res!368096) b!580130))

(assert (= (and b!580130 res!368091) b!580133))

(assert (= (and b!580133 res!368098) b!580132))

(declare-fun m!558763 () Bool)

(assert (=> b!580131 m!558763))

(declare-fun m!558765 () Bool)

(assert (=> b!580130 m!558765))

(declare-fun m!558767 () Bool)

(assert (=> b!580133 m!558767))

(declare-fun m!558769 () Bool)

(assert (=> b!580133 m!558769))

(declare-fun m!558771 () Bool)

(assert (=> b!580133 m!558771))

(declare-fun m!558773 () Bool)

(assert (=> b!580132 m!558773))

(assert (=> b!580132 m!558773))

(declare-fun m!558775 () Bool)

(assert (=> b!580132 m!558775))

(assert (=> b!580129 m!558773))

(assert (=> b!580129 m!558773))

(declare-fun m!558777 () Bool)

(assert (=> b!580129 m!558777))

(declare-fun m!558779 () Bool)

(assert (=> b!580126 m!558779))

(declare-fun m!558781 () Bool)

(assert (=> start!53374 m!558781))

(declare-fun m!558783 () Bool)

(assert (=> start!53374 m!558783))

(declare-fun m!558785 () Bool)

(assert (=> b!580125 m!558785))

(declare-fun m!558787 () Bool)

(assert (=> b!580127 m!558787))

(push 1)

