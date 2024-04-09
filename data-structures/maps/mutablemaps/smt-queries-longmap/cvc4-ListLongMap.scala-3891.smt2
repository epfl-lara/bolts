; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53378 () Bool)

(assert start!53378)

(declare-fun b!580179 () Bool)

(declare-fun e!333204 () Bool)

(declare-fun e!333203 () Bool)

(assert (=> b!580179 (= e!333204 e!333203)))

(declare-fun res!368145 () Bool)

(assert (=> b!580179 (=> (not res!368145) (not e!333203))))

(declare-datatypes ((SeekEntryResult!5834 0))(
  ( (MissingZero!5834 (index!25563 (_ BitVec 32))) (Found!5834 (index!25564 (_ BitVec 32))) (Intermediate!5834 (undefined!6646 Bool) (index!25565 (_ BitVec 32)) (x!54466 (_ BitVec 32))) (Undefined!5834) (MissingVacant!5834 (index!25566 (_ BitVec 32))) )
))
(declare-fun lt!264653 () SeekEntryResult!5834)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580179 (= res!368145 (or (= lt!264653 (MissingZero!5834 i!1108)) (= lt!264653 (MissingVacant!5834 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36233 0))(
  ( (array!36234 (arr!17387 (Array (_ BitVec 32) (_ BitVec 64))) (size!17751 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36233)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36233 (_ BitVec 32)) SeekEntryResult!5834)

(assert (=> b!580179 (= lt!264653 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580180 () Bool)

(declare-fun res!368150 () Bool)

(assert (=> b!580180 (=> (not res!368150) (not e!333203))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580180 (= res!368150 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17387 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17387 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!368147 () Bool)

(assert (=> start!53378 (=> (not res!368147) (not e!333204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53378 (= res!368147 (validMask!0 mask!3053))))

(assert (=> start!53378 e!333204))

(assert (=> start!53378 true))

(declare-fun array_inv!13161 (array!36233) Bool)

(assert (=> start!53378 (array_inv!13161 a!2986)))

(declare-fun b!580181 () Bool)

(assert (=> b!580181 (= e!333203 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!264652 () SeekEntryResult!5834)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36233 (_ BitVec 32)) SeekEntryResult!5834)

(assert (=> b!580181 (= lt!264652 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17387 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580182 () Bool)

(declare-fun res!368151 () Bool)

(assert (=> b!580182 (=> (not res!368151) (not e!333204))))

(assert (=> b!580182 (= res!368151 (and (= (size!17751 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17751 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17751 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580183 () Bool)

(declare-fun res!368149 () Bool)

(assert (=> b!580183 (=> (not res!368149) (not e!333203))))

(declare-datatypes ((List!11481 0))(
  ( (Nil!11478) (Cons!11477 (h!12522 (_ BitVec 64)) (t!17717 List!11481)) )
))
(declare-fun arrayNoDuplicates!0 (array!36233 (_ BitVec 32) List!11481) Bool)

(assert (=> b!580183 (= res!368149 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11478))))

(declare-fun b!580184 () Bool)

(declare-fun res!368148 () Bool)

(assert (=> b!580184 (=> (not res!368148) (not e!333204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580184 (= res!368148 (validKeyInArray!0 (select (arr!17387 a!2986) j!136)))))

(declare-fun b!580185 () Bool)

(declare-fun res!368152 () Bool)

(assert (=> b!580185 (=> (not res!368152) (not e!333204))))

(declare-fun arrayContainsKey!0 (array!36233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580185 (= res!368152 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580186 () Bool)

(declare-fun res!368153 () Bool)

(assert (=> b!580186 (=> (not res!368153) (not e!333203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36233 (_ BitVec 32)) Bool)

(assert (=> b!580186 (= res!368153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580187 () Bool)

(declare-fun res!368146 () Bool)

(assert (=> b!580187 (=> (not res!368146) (not e!333204))))

(assert (=> b!580187 (= res!368146 (validKeyInArray!0 k!1786))))

(assert (= (and start!53378 res!368147) b!580182))

(assert (= (and b!580182 res!368151) b!580184))

(assert (= (and b!580184 res!368148) b!580187))

(assert (= (and b!580187 res!368146) b!580185))

(assert (= (and b!580185 res!368152) b!580179))

(assert (= (and b!580179 res!368145) b!580186))

(assert (= (and b!580186 res!368153) b!580183))

(assert (= (and b!580183 res!368149) b!580180))

(assert (= (and b!580180 res!368150) b!580181))

(declare-fun m!558815 () Bool)

(assert (=> b!580187 m!558815))

(declare-fun m!558817 () Bool)

(assert (=> b!580184 m!558817))

(assert (=> b!580184 m!558817))

(declare-fun m!558819 () Bool)

(assert (=> b!580184 m!558819))

(declare-fun m!558821 () Bool)

(assert (=> start!53378 m!558821))

(declare-fun m!558823 () Bool)

(assert (=> start!53378 m!558823))

(assert (=> b!580181 m!558817))

(assert (=> b!580181 m!558817))

(declare-fun m!558825 () Bool)

(assert (=> b!580181 m!558825))

(declare-fun m!558827 () Bool)

(assert (=> b!580183 m!558827))

(declare-fun m!558829 () Bool)

(assert (=> b!580186 m!558829))

(declare-fun m!558831 () Bool)

(assert (=> b!580179 m!558831))

(declare-fun m!558833 () Bool)

(assert (=> b!580185 m!558833))

(declare-fun m!558835 () Bool)

(assert (=> b!580180 m!558835))

(declare-fun m!558837 () Bool)

(assert (=> b!580180 m!558837))

(declare-fun m!558839 () Bool)

(assert (=> b!580180 m!558839))

(push 1)

(assert (not b!580186))

(assert (not b!580179))

(assert (not b!580187))

(assert (not b!580183))

(assert (not start!53378))

(assert (not b!580181))

(assert (not b!580185))

(assert (not b!580184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

