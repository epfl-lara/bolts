; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53274 () Bool)

(assert start!53274)

(declare-fun b!578775 () Bool)

(declare-fun res!366746 () Bool)

(declare-fun e!332737 () Bool)

(assert (=> b!578775 (=> (not res!366746) (not e!332737))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36129 0))(
  ( (array!36130 (arr!17335 (Array (_ BitVec 32) (_ BitVec 64))) (size!17699 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36129)

(assert (=> b!578775 (= res!366746 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17335 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17335 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578776 () Bool)

(declare-fun res!366743 () Bool)

(assert (=> b!578776 (=> (not res!366743) (not e!332737))))

(declare-datatypes ((List!11429 0))(
  ( (Nil!11426) (Cons!11425 (h!12470 (_ BitVec 64)) (t!17665 List!11429)) )
))
(declare-fun arrayNoDuplicates!0 (array!36129 (_ BitVec 32) List!11429) Bool)

(assert (=> b!578776 (= res!366743 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11426))))

(declare-fun b!578777 () Bool)

(declare-fun res!366749 () Bool)

(declare-fun e!332736 () Bool)

(assert (=> b!578777 (=> (not res!366749) (not e!332736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578777 (= res!366749 (validKeyInArray!0 k0!1786))))

(declare-fun b!578778 () Bool)

(declare-fun res!366748 () Bool)

(assert (=> b!578778 (=> (not res!366748) (not e!332737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36129 (_ BitVec 32)) Bool)

(assert (=> b!578778 (= res!366748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578779 () Bool)

(assert (=> b!578779 (= e!332736 e!332737)))

(declare-fun res!366741 () Bool)

(assert (=> b!578779 (=> (not res!366741) (not e!332737))))

(declare-datatypes ((SeekEntryResult!5782 0))(
  ( (MissingZero!5782 (index!25355 (_ BitVec 32))) (Found!5782 (index!25356 (_ BitVec 32))) (Intermediate!5782 (undefined!6594 Bool) (index!25357 (_ BitVec 32)) (x!54278 (_ BitVec 32))) (Undefined!5782) (MissingVacant!5782 (index!25358 (_ BitVec 32))) )
))
(declare-fun lt!264340 () SeekEntryResult!5782)

(assert (=> b!578779 (= res!366741 (or (= lt!264340 (MissingZero!5782 i!1108)) (= lt!264340 (MissingVacant!5782 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36129 (_ BitVec 32)) SeekEntryResult!5782)

(assert (=> b!578779 (= lt!264340 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578780 () Bool)

(declare-fun res!366747 () Bool)

(assert (=> b!578780 (=> (not res!366747) (not e!332736))))

(declare-fun arrayContainsKey!0 (array!36129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578780 (= res!366747 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!366742 () Bool)

(assert (=> start!53274 (=> (not res!366742) (not e!332736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53274 (= res!366742 (validMask!0 mask!3053))))

(assert (=> start!53274 e!332736))

(assert (=> start!53274 true))

(declare-fun array_inv!13109 (array!36129) Bool)

(assert (=> start!53274 (array_inv!13109 a!2986)))

(declare-fun b!578781 () Bool)

(declare-fun res!366745 () Bool)

(assert (=> b!578781 (=> (not res!366745) (not e!332736))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578781 (= res!366745 (and (= (size!17699 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17699 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17699 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578782 () Bool)

(declare-fun res!366744 () Bool)

(assert (=> b!578782 (=> (not res!366744) (not e!332736))))

(assert (=> b!578782 (= res!366744 (validKeyInArray!0 (select (arr!17335 a!2986) j!136)))))

(declare-fun b!578783 () Bool)

(assert (=> b!578783 (= e!332737 false)))

(declare-fun lt!264341 () SeekEntryResult!5782)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36129 (_ BitVec 32)) SeekEntryResult!5782)

(assert (=> b!578783 (= lt!264341 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17335 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53274 res!366742) b!578781))

(assert (= (and b!578781 res!366745) b!578782))

(assert (= (and b!578782 res!366744) b!578777))

(assert (= (and b!578777 res!366749) b!578780))

(assert (= (and b!578780 res!366747) b!578779))

(assert (= (and b!578779 res!366741) b!578778))

(assert (= (and b!578778 res!366748) b!578776))

(assert (= (and b!578776 res!366743) b!578775))

(assert (= (and b!578775 res!366746) b!578783))

(declare-fun m!557463 () Bool)

(assert (=> b!578783 m!557463))

(assert (=> b!578783 m!557463))

(declare-fun m!557465 () Bool)

(assert (=> b!578783 m!557465))

(declare-fun m!557467 () Bool)

(assert (=> b!578780 m!557467))

(declare-fun m!557469 () Bool)

(assert (=> b!578775 m!557469))

(declare-fun m!557471 () Bool)

(assert (=> b!578775 m!557471))

(declare-fun m!557473 () Bool)

(assert (=> b!578775 m!557473))

(declare-fun m!557475 () Bool)

(assert (=> b!578778 m!557475))

(assert (=> b!578782 m!557463))

(assert (=> b!578782 m!557463))

(declare-fun m!557477 () Bool)

(assert (=> b!578782 m!557477))

(declare-fun m!557479 () Bool)

(assert (=> start!53274 m!557479))

(declare-fun m!557481 () Bool)

(assert (=> start!53274 m!557481))

(declare-fun m!557483 () Bool)

(assert (=> b!578776 m!557483))

(declare-fun m!557485 () Bool)

(assert (=> b!578779 m!557485))

(declare-fun m!557487 () Bool)

(assert (=> b!578777 m!557487))

(check-sat (not b!578776) (not b!578780) (not start!53274) (not b!578783) (not b!578779) (not b!578782) (not b!578777) (not b!578778))
(check-sat)
