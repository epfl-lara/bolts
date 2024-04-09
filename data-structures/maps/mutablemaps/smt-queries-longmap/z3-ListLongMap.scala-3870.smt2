; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53250 () Bool)

(assert start!53250)

(declare-fun b!578442 () Bool)

(declare-fun res!366413 () Bool)

(declare-fun e!332627 () Bool)

(assert (=> b!578442 (=> (not res!366413) (not e!332627))))

(declare-datatypes ((array!36105 0))(
  ( (array!36106 (arr!17323 (Array (_ BitVec 32) (_ BitVec 64))) (size!17687 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36105)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578442 (= res!366413 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578443 () Bool)

(declare-fun res!366408 () Bool)

(declare-fun e!332628 () Bool)

(assert (=> b!578443 (=> (not res!366408) (not e!332628))))

(declare-datatypes ((List!11417 0))(
  ( (Nil!11414) (Cons!11413 (h!12458 (_ BitVec 64)) (t!17653 List!11417)) )
))
(declare-fun arrayNoDuplicates!0 (array!36105 (_ BitVec 32) List!11417) Bool)

(assert (=> b!578443 (= res!366408 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11414))))

(declare-fun b!578444 () Bool)

(declare-fun res!366416 () Bool)

(assert (=> b!578444 (=> (not res!366416) (not e!332627))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578444 (= res!366416 (validKeyInArray!0 (select (arr!17323 a!2986) j!136)))))

(declare-fun b!578445 () Bool)

(declare-fun res!366410 () Bool)

(assert (=> b!578445 (=> (not res!366410) (not e!332628))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!578445 (= res!366410 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17323 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17323 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578446 () Bool)

(assert (=> b!578446 (= e!332628 false)))

(declare-datatypes ((SeekEntryResult!5770 0))(
  ( (MissingZero!5770 (index!25307 (_ BitVec 32))) (Found!5770 (index!25308 (_ BitVec 32))) (Intermediate!5770 (undefined!6582 Bool) (index!25309 (_ BitVec 32)) (x!54234 (_ BitVec 32))) (Undefined!5770) (MissingVacant!5770 (index!25310 (_ BitVec 32))) )
))
(declare-fun lt!264277 () SeekEntryResult!5770)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36105 (_ BitVec 32)) SeekEntryResult!5770)

(assert (=> b!578446 (= lt!264277 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17323 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578447 () Bool)

(assert (=> b!578447 (= e!332627 e!332628)))

(declare-fun res!366409 () Bool)

(assert (=> b!578447 (=> (not res!366409) (not e!332628))))

(declare-fun lt!264278 () SeekEntryResult!5770)

(assert (=> b!578447 (= res!366409 (or (= lt!264278 (MissingZero!5770 i!1108)) (= lt!264278 (MissingVacant!5770 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36105 (_ BitVec 32)) SeekEntryResult!5770)

(assert (=> b!578447 (= lt!264278 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578449 () Bool)

(declare-fun res!366414 () Bool)

(assert (=> b!578449 (=> (not res!366414) (not e!332627))))

(assert (=> b!578449 (= res!366414 (and (= (size!17687 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17687 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17687 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578450 () Bool)

(declare-fun res!366411 () Bool)

(assert (=> b!578450 (=> (not res!366411) (not e!332627))))

(assert (=> b!578450 (= res!366411 (validKeyInArray!0 k0!1786))))

(declare-fun b!578448 () Bool)

(declare-fun res!366415 () Bool)

(assert (=> b!578448 (=> (not res!366415) (not e!332628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36105 (_ BitVec 32)) Bool)

(assert (=> b!578448 (= res!366415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!366412 () Bool)

(assert (=> start!53250 (=> (not res!366412) (not e!332627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53250 (= res!366412 (validMask!0 mask!3053))))

(assert (=> start!53250 e!332627))

(assert (=> start!53250 true))

(declare-fun array_inv!13097 (array!36105) Bool)

(assert (=> start!53250 (array_inv!13097 a!2986)))

(assert (= (and start!53250 res!366412) b!578449))

(assert (= (and b!578449 res!366414) b!578444))

(assert (= (and b!578444 res!366416) b!578450))

(assert (= (and b!578450 res!366411) b!578442))

(assert (= (and b!578442 res!366413) b!578447))

(assert (= (and b!578447 res!366409) b!578448))

(assert (= (and b!578448 res!366415) b!578443))

(assert (= (and b!578443 res!366408) b!578445))

(assert (= (and b!578445 res!366410) b!578446))

(declare-fun m!557151 () Bool)

(assert (=> b!578443 m!557151))

(declare-fun m!557153 () Bool)

(assert (=> b!578444 m!557153))

(assert (=> b!578444 m!557153))

(declare-fun m!557155 () Bool)

(assert (=> b!578444 m!557155))

(declare-fun m!557157 () Bool)

(assert (=> b!578450 m!557157))

(declare-fun m!557159 () Bool)

(assert (=> start!53250 m!557159))

(declare-fun m!557161 () Bool)

(assert (=> start!53250 m!557161))

(declare-fun m!557163 () Bool)

(assert (=> b!578442 m!557163))

(declare-fun m!557165 () Bool)

(assert (=> b!578445 m!557165))

(declare-fun m!557167 () Bool)

(assert (=> b!578445 m!557167))

(declare-fun m!557169 () Bool)

(assert (=> b!578445 m!557169))

(declare-fun m!557171 () Bool)

(assert (=> b!578447 m!557171))

(assert (=> b!578446 m!557153))

(assert (=> b!578446 m!557153))

(declare-fun m!557173 () Bool)

(assert (=> b!578446 m!557173))

(declare-fun m!557175 () Bool)

(assert (=> b!578448 m!557175))

(check-sat (not start!53250) (not b!578444) (not b!578447) (not b!578443) (not b!578442) (not b!578450) (not b!578448) (not b!578446))
(check-sat)
