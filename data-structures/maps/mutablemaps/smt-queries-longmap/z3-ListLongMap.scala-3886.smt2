; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53346 () Bool)

(assert start!53346)

(declare-fun res!367716 () Bool)

(declare-fun e!333060 () Bool)

(assert (=> start!53346 (=> (not res!367716) (not e!333060))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53346 (= res!367716 (validMask!0 mask!3053))))

(assert (=> start!53346 e!333060))

(assert (=> start!53346 true))

(declare-datatypes ((array!36201 0))(
  ( (array!36202 (arr!17371 (Array (_ BitVec 32) (_ BitVec 64))) (size!17735 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36201)

(declare-fun array_inv!13145 (array!36201) Bool)

(assert (=> start!53346 (array_inv!13145 a!2986)))

(declare-fun b!579747 () Bool)

(declare-fun res!367714 () Bool)

(assert (=> b!579747 (=> (not res!367714) (not e!333060))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579747 (= res!367714 (and (= (size!17735 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17735 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17735 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579748 () Bool)

(declare-fun res!367721 () Bool)

(assert (=> b!579748 (=> (not res!367721) (not e!333060))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579748 (= res!367721 (validKeyInArray!0 k0!1786))))

(declare-fun b!579749 () Bool)

(declare-fun e!333059 () Bool)

(assert (=> b!579749 (= e!333060 e!333059)))

(declare-fun res!367719 () Bool)

(assert (=> b!579749 (=> (not res!367719) (not e!333059))))

(declare-datatypes ((SeekEntryResult!5818 0))(
  ( (MissingZero!5818 (index!25499 (_ BitVec 32))) (Found!5818 (index!25500 (_ BitVec 32))) (Intermediate!5818 (undefined!6630 Bool) (index!25501 (_ BitVec 32)) (x!54410 (_ BitVec 32))) (Undefined!5818) (MissingVacant!5818 (index!25502 (_ BitVec 32))) )
))
(declare-fun lt!264557 () SeekEntryResult!5818)

(assert (=> b!579749 (= res!367719 (or (= lt!264557 (MissingZero!5818 i!1108)) (= lt!264557 (MissingVacant!5818 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36201 (_ BitVec 32)) SeekEntryResult!5818)

(assert (=> b!579749 (= lt!264557 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579750 () Bool)

(declare-fun res!367717 () Bool)

(assert (=> b!579750 (=> (not res!367717) (not e!333060))))

(declare-fun arrayContainsKey!0 (array!36201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579750 (= res!367717 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579751 () Bool)

(assert (=> b!579751 (= e!333059 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264556 () SeekEntryResult!5818)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36201 (_ BitVec 32)) SeekEntryResult!5818)

(assert (=> b!579751 (= lt!264556 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17371 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579752 () Bool)

(declare-fun res!367718 () Bool)

(assert (=> b!579752 (=> (not res!367718) (not e!333060))))

(assert (=> b!579752 (= res!367718 (validKeyInArray!0 (select (arr!17371 a!2986) j!136)))))

(declare-fun b!579753 () Bool)

(declare-fun res!367720 () Bool)

(assert (=> b!579753 (=> (not res!367720) (not e!333059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36201 (_ BitVec 32)) Bool)

(assert (=> b!579753 (= res!367720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579754 () Bool)

(declare-fun res!367713 () Bool)

(assert (=> b!579754 (=> (not res!367713) (not e!333059))))

(assert (=> b!579754 (= res!367713 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17371 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17371 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579755 () Bool)

(declare-fun res!367715 () Bool)

(assert (=> b!579755 (=> (not res!367715) (not e!333059))))

(declare-datatypes ((List!11465 0))(
  ( (Nil!11462) (Cons!11461 (h!12506 (_ BitVec 64)) (t!17701 List!11465)) )
))
(declare-fun arrayNoDuplicates!0 (array!36201 (_ BitVec 32) List!11465) Bool)

(assert (=> b!579755 (= res!367715 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11462))))

(assert (= (and start!53346 res!367716) b!579747))

(assert (= (and b!579747 res!367714) b!579752))

(assert (= (and b!579752 res!367718) b!579748))

(assert (= (and b!579748 res!367721) b!579750))

(assert (= (and b!579750 res!367717) b!579749))

(assert (= (and b!579749 res!367719) b!579753))

(assert (= (and b!579753 res!367720) b!579755))

(assert (= (and b!579755 res!367715) b!579754))

(assert (= (and b!579754 res!367713) b!579751))

(declare-fun m!558399 () Bool)

(assert (=> b!579750 m!558399))

(declare-fun m!558401 () Bool)

(assert (=> b!579755 m!558401))

(declare-fun m!558403 () Bool)

(assert (=> b!579754 m!558403))

(declare-fun m!558405 () Bool)

(assert (=> b!579754 m!558405))

(declare-fun m!558407 () Bool)

(assert (=> b!579754 m!558407))

(declare-fun m!558409 () Bool)

(assert (=> b!579751 m!558409))

(assert (=> b!579751 m!558409))

(declare-fun m!558411 () Bool)

(assert (=> b!579751 m!558411))

(declare-fun m!558413 () Bool)

(assert (=> start!53346 m!558413))

(declare-fun m!558415 () Bool)

(assert (=> start!53346 m!558415))

(assert (=> b!579752 m!558409))

(assert (=> b!579752 m!558409))

(declare-fun m!558417 () Bool)

(assert (=> b!579752 m!558417))

(declare-fun m!558419 () Bool)

(assert (=> b!579749 m!558419))

(declare-fun m!558421 () Bool)

(assert (=> b!579753 m!558421))

(declare-fun m!558423 () Bool)

(assert (=> b!579748 m!558423))

(check-sat (not start!53346) (not b!579750) (not b!579748) (not b!579751) (not b!579755) (not b!579749) (not b!579753) (not b!579752))
(check-sat)
