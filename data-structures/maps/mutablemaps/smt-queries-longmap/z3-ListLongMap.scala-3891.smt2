; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53376 () Bool)

(assert start!53376)

(declare-fun b!580152 () Bool)

(declare-fun e!333195 () Bool)

(assert (=> b!580152 (= e!333195 false)))

(declare-datatypes ((SeekEntryResult!5833 0))(
  ( (MissingZero!5833 (index!25559 (_ BitVec 32))) (Found!5833 (index!25560 (_ BitVec 32))) (Intermediate!5833 (undefined!6645 Bool) (index!25561 (_ BitVec 32)) (x!54465 (_ BitVec 32))) (Undefined!5833) (MissingVacant!5833 (index!25562 (_ BitVec 32))) )
))
(declare-fun lt!264647 () SeekEntryResult!5833)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36231 0))(
  ( (array!36232 (arr!17386 (Array (_ BitVec 32) (_ BitVec 64))) (size!17750 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36231)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36231 (_ BitVec 32)) SeekEntryResult!5833)

(assert (=> b!580152 (= lt!264647 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17386 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580153 () Bool)

(declare-fun res!368123 () Bool)

(declare-fun e!333194 () Bool)

(assert (=> b!580153 (=> (not res!368123) (not e!333194))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580153 (= res!368123 (validKeyInArray!0 k0!1786))))

(declare-fun b!580154 () Bool)

(declare-fun res!368118 () Bool)

(assert (=> b!580154 (=> (not res!368118) (not e!333195))))

(declare-datatypes ((List!11480 0))(
  ( (Nil!11477) (Cons!11476 (h!12521 (_ BitVec 64)) (t!17716 List!11480)) )
))
(declare-fun arrayNoDuplicates!0 (array!36231 (_ BitVec 32) List!11480) Bool)

(assert (=> b!580154 (= res!368118 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11477))))

(declare-fun res!368119 () Bool)

(assert (=> start!53376 (=> (not res!368119) (not e!333194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53376 (= res!368119 (validMask!0 mask!3053))))

(assert (=> start!53376 e!333194))

(assert (=> start!53376 true))

(declare-fun array_inv!13160 (array!36231) Bool)

(assert (=> start!53376 (array_inv!13160 a!2986)))

(declare-fun b!580155 () Bool)

(declare-fun res!368121 () Bool)

(assert (=> b!580155 (=> (not res!368121) (not e!333195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36231 (_ BitVec 32)) Bool)

(assert (=> b!580155 (= res!368121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580156 () Bool)

(declare-fun res!368125 () Bool)

(assert (=> b!580156 (=> (not res!368125) (not e!333194))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580156 (= res!368125 (and (= (size!17750 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17750 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17750 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580157 () Bool)

(assert (=> b!580157 (= e!333194 e!333195)))

(declare-fun res!368120 () Bool)

(assert (=> b!580157 (=> (not res!368120) (not e!333195))))

(declare-fun lt!264646 () SeekEntryResult!5833)

(assert (=> b!580157 (= res!368120 (or (= lt!264646 (MissingZero!5833 i!1108)) (= lt!264646 (MissingVacant!5833 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36231 (_ BitVec 32)) SeekEntryResult!5833)

(assert (=> b!580157 (= lt!264646 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580158 () Bool)

(declare-fun res!368122 () Bool)

(assert (=> b!580158 (=> (not res!368122) (not e!333194))))

(declare-fun arrayContainsKey!0 (array!36231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580158 (= res!368122 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580159 () Bool)

(declare-fun res!368126 () Bool)

(assert (=> b!580159 (=> (not res!368126) (not e!333195))))

(assert (=> b!580159 (= res!368126 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17386 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17386 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580160 () Bool)

(declare-fun res!368124 () Bool)

(assert (=> b!580160 (=> (not res!368124) (not e!333194))))

(assert (=> b!580160 (= res!368124 (validKeyInArray!0 (select (arr!17386 a!2986) j!136)))))

(assert (= (and start!53376 res!368119) b!580156))

(assert (= (and b!580156 res!368125) b!580160))

(assert (= (and b!580160 res!368124) b!580153))

(assert (= (and b!580153 res!368123) b!580158))

(assert (= (and b!580158 res!368122) b!580157))

(assert (= (and b!580157 res!368120) b!580155))

(assert (= (and b!580155 res!368121) b!580154))

(assert (= (and b!580154 res!368118) b!580159))

(assert (= (and b!580159 res!368126) b!580152))

(declare-fun m!558789 () Bool)

(assert (=> b!580155 m!558789))

(declare-fun m!558791 () Bool)

(assert (=> b!580154 m!558791))

(declare-fun m!558793 () Bool)

(assert (=> start!53376 m!558793))

(declare-fun m!558795 () Bool)

(assert (=> start!53376 m!558795))

(declare-fun m!558797 () Bool)

(assert (=> b!580158 m!558797))

(declare-fun m!558799 () Bool)

(assert (=> b!580153 m!558799))

(declare-fun m!558801 () Bool)

(assert (=> b!580152 m!558801))

(assert (=> b!580152 m!558801))

(declare-fun m!558803 () Bool)

(assert (=> b!580152 m!558803))

(declare-fun m!558805 () Bool)

(assert (=> b!580157 m!558805))

(assert (=> b!580160 m!558801))

(assert (=> b!580160 m!558801))

(declare-fun m!558807 () Bool)

(assert (=> b!580160 m!558807))

(declare-fun m!558809 () Bool)

(assert (=> b!580159 m!558809))

(declare-fun m!558811 () Bool)

(assert (=> b!580159 m!558811))

(declare-fun m!558813 () Bool)

(assert (=> b!580159 m!558813))

(check-sat (not b!580155) (not b!580154) (not b!580153) (not b!580160) (not b!580152) (not start!53376) (not b!580157) (not b!580158))
(check-sat)
