; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53304 () Bool)

(assert start!53304)

(declare-fun b!579180 () Bool)

(declare-fun res!367154 () Bool)

(declare-fun e!332870 () Bool)

(assert (=> b!579180 (=> (not res!367154) (not e!332870))))

(declare-datatypes ((array!36159 0))(
  ( (array!36160 (arr!17350 (Array (_ BitVec 32) (_ BitVec 64))) (size!17714 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36159)

(declare-datatypes ((List!11444 0))(
  ( (Nil!11441) (Cons!11440 (h!12485 (_ BitVec 64)) (t!17680 List!11444)) )
))
(declare-fun arrayNoDuplicates!0 (array!36159 (_ BitVec 32) List!11444) Bool)

(assert (=> b!579180 (= res!367154 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11441))))

(declare-fun b!579181 () Bool)

(declare-fun res!367152 () Bool)

(declare-fun e!332872 () Bool)

(assert (=> b!579181 (=> (not res!367152) (not e!332872))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579181 (= res!367152 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579182 () Bool)

(declare-fun res!367149 () Bool)

(assert (=> b!579182 (=> (not res!367149) (not e!332870))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36159 (_ BitVec 32)) Bool)

(assert (=> b!579182 (= res!367149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!367148 () Bool)

(assert (=> start!53304 (=> (not res!367148) (not e!332872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53304 (= res!367148 (validMask!0 mask!3053))))

(assert (=> start!53304 e!332872))

(assert (=> start!53304 true))

(declare-fun array_inv!13124 (array!36159) Bool)

(assert (=> start!53304 (array_inv!13124 a!2986)))

(declare-fun b!579183 () Bool)

(assert (=> b!579183 (= e!332870 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5797 0))(
  ( (MissingZero!5797 (index!25415 (_ BitVec 32))) (Found!5797 (index!25416 (_ BitVec 32))) (Intermediate!5797 (undefined!6609 Bool) (index!25417 (_ BitVec 32)) (x!54333 (_ BitVec 32))) (Undefined!5797) (MissingVacant!5797 (index!25418 (_ BitVec 32))) )
))
(declare-fun lt!264431 () SeekEntryResult!5797)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36159 (_ BitVec 32)) SeekEntryResult!5797)

(assert (=> b!579183 (= lt!264431 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17350 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579184 () Bool)

(assert (=> b!579184 (= e!332872 e!332870)))

(declare-fun res!367150 () Bool)

(assert (=> b!579184 (=> (not res!367150) (not e!332870))))

(declare-fun lt!264430 () SeekEntryResult!5797)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579184 (= res!367150 (or (= lt!264430 (MissingZero!5797 i!1108)) (= lt!264430 (MissingVacant!5797 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36159 (_ BitVec 32)) SeekEntryResult!5797)

(assert (=> b!579184 (= lt!264430 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579185 () Bool)

(declare-fun res!367146 () Bool)

(assert (=> b!579185 (=> (not res!367146) (not e!332872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579185 (= res!367146 (validKeyInArray!0 k0!1786))))

(declare-fun b!579186 () Bool)

(declare-fun res!367147 () Bool)

(assert (=> b!579186 (=> (not res!367147) (not e!332870))))

(assert (=> b!579186 (= res!367147 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17350 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17350 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579187 () Bool)

(declare-fun res!367151 () Bool)

(assert (=> b!579187 (=> (not res!367151) (not e!332872))))

(assert (=> b!579187 (= res!367151 (validKeyInArray!0 (select (arr!17350 a!2986) j!136)))))

(declare-fun b!579188 () Bool)

(declare-fun res!367153 () Bool)

(assert (=> b!579188 (=> (not res!367153) (not e!332872))))

(assert (=> b!579188 (= res!367153 (and (= (size!17714 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17714 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17714 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53304 res!367148) b!579188))

(assert (= (and b!579188 res!367153) b!579187))

(assert (= (and b!579187 res!367151) b!579185))

(assert (= (and b!579185 res!367146) b!579181))

(assert (= (and b!579181 res!367152) b!579184))

(assert (= (and b!579184 res!367150) b!579182))

(assert (= (and b!579182 res!367149) b!579180))

(assert (= (and b!579180 res!367154) b!579186))

(assert (= (and b!579186 res!367147) b!579183))

(declare-fun m!557853 () Bool)

(assert (=> b!579181 m!557853))

(declare-fun m!557855 () Bool)

(assert (=> b!579186 m!557855))

(declare-fun m!557857 () Bool)

(assert (=> b!579186 m!557857))

(declare-fun m!557859 () Bool)

(assert (=> b!579186 m!557859))

(declare-fun m!557861 () Bool)

(assert (=> b!579183 m!557861))

(assert (=> b!579183 m!557861))

(declare-fun m!557863 () Bool)

(assert (=> b!579183 m!557863))

(assert (=> b!579187 m!557861))

(assert (=> b!579187 m!557861))

(declare-fun m!557865 () Bool)

(assert (=> b!579187 m!557865))

(declare-fun m!557867 () Bool)

(assert (=> start!53304 m!557867))

(declare-fun m!557869 () Bool)

(assert (=> start!53304 m!557869))

(declare-fun m!557871 () Bool)

(assert (=> b!579180 m!557871))

(declare-fun m!557873 () Bool)

(assert (=> b!579185 m!557873))

(declare-fun m!557875 () Bool)

(assert (=> b!579182 m!557875))

(declare-fun m!557877 () Bool)

(assert (=> b!579184 m!557877))

(check-sat (not b!579183) (not start!53304) (not b!579184) (not b!579187) (not b!579185) (not b!579182) (not b!579181) (not b!579180))
(check-sat)
