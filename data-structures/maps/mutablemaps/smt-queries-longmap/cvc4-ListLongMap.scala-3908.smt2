; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53480 () Bool)

(assert start!53480)

(declare-fun b!581574 () Bool)

(declare-fun res!369545 () Bool)

(declare-fun e!333664 () Bool)

(assert (=> b!581574 (=> (not res!369545) (not e!333664))))

(declare-datatypes ((array!36335 0))(
  ( (array!36336 (arr!17438 (Array (_ BitVec 32) (_ BitVec 64))) (size!17802 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36335)

(declare-datatypes ((List!11532 0))(
  ( (Nil!11529) (Cons!11528 (h!12573 (_ BitVec 64)) (t!17768 List!11532)) )
))
(declare-fun arrayNoDuplicates!0 (array!36335 (_ BitVec 32) List!11532) Bool)

(assert (=> b!581574 (= res!369545 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11529))))

(declare-fun b!581575 () Bool)

(declare-fun res!369543 () Bool)

(declare-fun e!333663 () Bool)

(assert (=> b!581575 (=> (not res!369543) (not e!333663))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581575 (= res!369543 (validKeyInArray!0 (select (arr!17438 a!2986) j!136)))))

(declare-fun b!581576 () Bool)

(declare-fun res!369548 () Bool)

(assert (=> b!581576 (=> (not res!369548) (not e!333664))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36335 (_ BitVec 32)) Bool)

(assert (=> b!581576 (= res!369548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581578 () Bool)

(assert (=> b!581578 (= e!333663 e!333664)))

(declare-fun res!369547 () Bool)

(assert (=> b!581578 (=> (not res!369547) (not e!333664))))

(declare-datatypes ((SeekEntryResult!5885 0))(
  ( (MissingZero!5885 (index!25767 (_ BitVec 32))) (Found!5885 (index!25768 (_ BitVec 32))) (Intermediate!5885 (undefined!6697 Bool) (index!25769 (_ BitVec 32)) (x!54653 (_ BitVec 32))) (Undefined!5885) (MissingVacant!5885 (index!25770 (_ BitVec 32))) )
))
(declare-fun lt!264941 () SeekEntryResult!5885)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581578 (= res!369547 (or (= lt!264941 (MissingZero!5885 i!1108)) (= lt!264941 (MissingVacant!5885 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36335 (_ BitVec 32)) SeekEntryResult!5885)

(assert (=> b!581578 (= lt!264941 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581579 () Bool)

(declare-fun res!369541 () Bool)

(assert (=> b!581579 (=> (not res!369541) (not e!333663))))

(assert (=> b!581579 (= res!369541 (and (= (size!17802 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17802 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17802 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581580 () Bool)

(declare-fun res!369544 () Bool)

(assert (=> b!581580 (=> (not res!369544) (not e!333663))))

(declare-fun arrayContainsKey!0 (array!36335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581580 (= res!369544 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581581 () Bool)

(assert (=> b!581581 (= e!333664 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264940 () SeekEntryResult!5885)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36335 (_ BitVec 32)) SeekEntryResult!5885)

(assert (=> b!581581 (= lt!264940 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17438 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581582 () Bool)

(declare-fun res!369542 () Bool)

(assert (=> b!581582 (=> (not res!369542) (not e!333664))))

(assert (=> b!581582 (= res!369542 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17438 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17438 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581577 () Bool)

(declare-fun res!369540 () Bool)

(assert (=> b!581577 (=> (not res!369540) (not e!333663))))

(assert (=> b!581577 (= res!369540 (validKeyInArray!0 k!1786))))

(declare-fun res!369546 () Bool)

(assert (=> start!53480 (=> (not res!369546) (not e!333663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53480 (= res!369546 (validMask!0 mask!3053))))

(assert (=> start!53480 e!333663))

(assert (=> start!53480 true))

(declare-fun array_inv!13212 (array!36335) Bool)

(assert (=> start!53480 (array_inv!13212 a!2986)))

(assert (= (and start!53480 res!369546) b!581579))

(assert (= (and b!581579 res!369541) b!581575))

(assert (= (and b!581575 res!369543) b!581577))

(assert (= (and b!581577 res!369540) b!581580))

(assert (= (and b!581580 res!369544) b!581578))

(assert (= (and b!581578 res!369547) b!581576))

(assert (= (and b!581576 res!369548) b!581574))

(assert (= (and b!581574 res!369545) b!581582))

(assert (= (and b!581582 res!369542) b!581581))

(declare-fun m!560153 () Bool)

(assert (=> b!581581 m!560153))

(assert (=> b!581581 m!560153))

(declare-fun m!560155 () Bool)

(assert (=> b!581581 m!560155))

(assert (=> b!581575 m!560153))

(assert (=> b!581575 m!560153))

(declare-fun m!560157 () Bool)

(assert (=> b!581575 m!560157))

(declare-fun m!560159 () Bool)

(assert (=> b!581577 m!560159))

(declare-fun m!560161 () Bool)

(assert (=> b!581582 m!560161))

(declare-fun m!560163 () Bool)

(assert (=> b!581582 m!560163))

(declare-fun m!560165 () Bool)

(assert (=> b!581582 m!560165))

(declare-fun m!560167 () Bool)

(assert (=> b!581580 m!560167))

(declare-fun m!560169 () Bool)

(assert (=> start!53480 m!560169))

(declare-fun m!560171 () Bool)

(assert (=> start!53480 m!560171))

(declare-fun m!560173 () Bool)

(assert (=> b!581576 m!560173))

(declare-fun m!560175 () Bool)

(assert (=> b!581578 m!560175))

(declare-fun m!560177 () Bool)

(assert (=> b!581574 m!560177))

(push 1)

(assert (not b!581581))

(assert (not b!581575))

(assert (not b!581574))

(assert (not b!581576))

(assert (not b!581578))

(assert (not b!581577))

(assert (not b!581580))

(assert (not start!53480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

