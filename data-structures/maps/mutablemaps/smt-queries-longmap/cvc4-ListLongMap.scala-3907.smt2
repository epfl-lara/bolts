; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53474 () Bool)

(assert start!53474)

(declare-fun b!581493 () Bool)

(declare-fun res!369465 () Bool)

(declare-fun e!333636 () Bool)

(assert (=> b!581493 (=> (not res!369465) (not e!333636))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36329 0))(
  ( (array!36330 (arr!17435 (Array (_ BitVec 32) (_ BitVec 64))) (size!17799 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36329)

(assert (=> b!581493 (= res!369465 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17435 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17435 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!369464 () Bool)

(declare-fun e!333637 () Bool)

(assert (=> start!53474 (=> (not res!369464) (not e!333637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53474 (= res!369464 (validMask!0 mask!3053))))

(assert (=> start!53474 e!333637))

(assert (=> start!53474 true))

(declare-fun array_inv!13209 (array!36329) Bool)

(assert (=> start!53474 (array_inv!13209 a!2986)))

(declare-fun b!581494 () Bool)

(declare-fun res!369463 () Bool)

(assert (=> b!581494 (=> (not res!369463) (not e!333636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36329 (_ BitVec 32)) Bool)

(assert (=> b!581494 (= res!369463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581495 () Bool)

(assert (=> b!581495 (= e!333636 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5882 0))(
  ( (MissingZero!5882 (index!25755 (_ BitVec 32))) (Found!5882 (index!25756 (_ BitVec 32))) (Intermediate!5882 (undefined!6694 Bool) (index!25757 (_ BitVec 32)) (x!54642 (_ BitVec 32))) (Undefined!5882) (MissingVacant!5882 (index!25758 (_ BitVec 32))) )
))
(declare-fun lt!264922 () SeekEntryResult!5882)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36329 (_ BitVec 32)) SeekEntryResult!5882)

(assert (=> b!581495 (= lt!264922 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17435 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581496 () Bool)

(declare-fun res!369461 () Bool)

(assert (=> b!581496 (=> (not res!369461) (not e!333637))))

(assert (=> b!581496 (= res!369461 (and (= (size!17799 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17799 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17799 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581497 () Bool)

(declare-fun res!369466 () Bool)

(assert (=> b!581497 (=> (not res!369466) (not e!333637))))

(declare-fun arrayContainsKey!0 (array!36329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581497 (= res!369466 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581498 () Bool)

(declare-fun res!369460 () Bool)

(assert (=> b!581498 (=> (not res!369460) (not e!333637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581498 (= res!369460 (validKeyInArray!0 (select (arr!17435 a!2986) j!136)))))

(declare-fun b!581499 () Bool)

(declare-fun res!369462 () Bool)

(assert (=> b!581499 (=> (not res!369462) (not e!333637))))

(assert (=> b!581499 (= res!369462 (validKeyInArray!0 k!1786))))

(declare-fun b!581500 () Bool)

(assert (=> b!581500 (= e!333637 e!333636)))

(declare-fun res!369467 () Bool)

(assert (=> b!581500 (=> (not res!369467) (not e!333636))))

(declare-fun lt!264923 () SeekEntryResult!5882)

(assert (=> b!581500 (= res!369467 (or (= lt!264923 (MissingZero!5882 i!1108)) (= lt!264923 (MissingVacant!5882 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36329 (_ BitVec 32)) SeekEntryResult!5882)

(assert (=> b!581500 (= lt!264923 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581501 () Bool)

(declare-fun res!369459 () Bool)

(assert (=> b!581501 (=> (not res!369459) (not e!333636))))

(declare-datatypes ((List!11529 0))(
  ( (Nil!11526) (Cons!11525 (h!12570 (_ BitVec 64)) (t!17765 List!11529)) )
))
(declare-fun arrayNoDuplicates!0 (array!36329 (_ BitVec 32) List!11529) Bool)

(assert (=> b!581501 (= res!369459 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11526))))

(assert (= (and start!53474 res!369464) b!581496))

(assert (= (and b!581496 res!369461) b!581498))

(assert (= (and b!581498 res!369460) b!581499))

(assert (= (and b!581499 res!369462) b!581497))

(assert (= (and b!581497 res!369466) b!581500))

(assert (= (and b!581500 res!369467) b!581494))

(assert (= (and b!581494 res!369463) b!581501))

(assert (= (and b!581501 res!369459) b!581493))

(assert (= (and b!581493 res!369465) b!581495))

(declare-fun m!560075 () Bool)

(assert (=> b!581501 m!560075))

(declare-fun m!560077 () Bool)

(assert (=> b!581494 m!560077))

(declare-fun m!560079 () Bool)

(assert (=> b!581498 m!560079))

(assert (=> b!581498 m!560079))

(declare-fun m!560081 () Bool)

(assert (=> b!581498 m!560081))

(declare-fun m!560083 () Bool)

(assert (=> b!581493 m!560083))

(declare-fun m!560085 () Bool)

(assert (=> b!581493 m!560085))

(declare-fun m!560087 () Bool)

(assert (=> b!581493 m!560087))

(declare-fun m!560089 () Bool)

(assert (=> b!581499 m!560089))

(assert (=> b!581495 m!560079))

(assert (=> b!581495 m!560079))

(declare-fun m!560091 () Bool)

(assert (=> b!581495 m!560091))

(declare-fun m!560093 () Bool)

(assert (=> b!581500 m!560093))

(declare-fun m!560095 () Bool)

(assert (=> start!53474 m!560095))

(declare-fun m!560097 () Bool)

(assert (=> start!53474 m!560097))

(declare-fun m!560099 () Bool)

(assert (=> b!581497 m!560099))

(push 1)

(assert (not b!581495))

(assert (not b!581497))

(assert (not b!581500))

(assert (not b!581498))

(assert (not b!581494))

(assert (not start!53474))

(assert (not b!581499))

