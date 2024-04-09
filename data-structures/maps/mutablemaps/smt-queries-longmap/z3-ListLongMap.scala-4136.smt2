; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56420 () Bool)

(assert start!56420)

(declare-fun b!625059 () Bool)

(declare-fun e!358308 () Bool)

(declare-fun e!358309 () Bool)

(assert (=> b!625059 (= e!358308 e!358309)))

(declare-fun res!403248 () Bool)

(assert (=> b!625059 (=> (not res!403248) (not e!358309))))

(declare-datatypes ((SeekEntryResult!6568 0))(
  ( (MissingZero!6568 (index!28555 (_ BitVec 32))) (Found!6568 (index!28556 (_ BitVec 32))) (Intermediate!6568 (undefined!7380 Bool) (index!28557 (_ BitVec 32)) (x!57335 (_ BitVec 32))) (Undefined!6568) (MissingVacant!6568 (index!28558 (_ BitVec 32))) )
))
(declare-fun lt!289743 () SeekEntryResult!6568)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625059 (= res!403248 (or (= lt!289743 (MissingZero!6568 i!1108)) (= lt!289743 (MissingVacant!6568 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37763 0))(
  ( (array!37764 (arr!18121 (Array (_ BitVec 32) (_ BitVec 64))) (size!18485 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37763)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37763 (_ BitVec 32)) SeekEntryResult!6568)

(assert (=> b!625059 (= lt!289743 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!625060 () Bool)

(assert (=> b!625060 (= e!358309 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!289742 () SeekEntryResult!6568)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37763 (_ BitVec 32)) SeekEntryResult!6568)

(assert (=> b!625060 (= lt!289742 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18121 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625061 () Bool)

(declare-fun res!403249 () Bool)

(assert (=> b!625061 (=> (not res!403249) (not e!358308))))

(declare-fun arrayContainsKey!0 (array!37763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625061 (= res!403249 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625062 () Bool)

(declare-fun res!403247 () Bool)

(assert (=> b!625062 (=> (not res!403247) (not e!358308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625062 (= res!403247 (validKeyInArray!0 k0!1786))))

(declare-fun b!625063 () Bool)

(declare-fun res!403245 () Bool)

(assert (=> b!625063 (=> (not res!403245) (not e!358309))))

(assert (=> b!625063 (= res!403245 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18121 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18121 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625064 () Bool)

(declare-fun res!403253 () Bool)

(assert (=> b!625064 (=> (not res!403253) (not e!358309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37763 (_ BitVec 32)) Bool)

(assert (=> b!625064 (= res!403253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!403250 () Bool)

(assert (=> start!56420 (=> (not res!403250) (not e!358308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56420 (= res!403250 (validMask!0 mask!3053))))

(assert (=> start!56420 e!358308))

(assert (=> start!56420 true))

(declare-fun array_inv!13895 (array!37763) Bool)

(assert (=> start!56420 (array_inv!13895 a!2986)))

(declare-fun b!625065 () Bool)

(declare-fun res!403251 () Bool)

(assert (=> b!625065 (=> (not res!403251) (not e!358308))))

(assert (=> b!625065 (= res!403251 (validKeyInArray!0 (select (arr!18121 a!2986) j!136)))))

(declare-fun b!625066 () Bool)

(declare-fun res!403246 () Bool)

(assert (=> b!625066 (=> (not res!403246) (not e!358308))))

(assert (=> b!625066 (= res!403246 (and (= (size!18485 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18485 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18485 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625067 () Bool)

(declare-fun res!403252 () Bool)

(assert (=> b!625067 (=> (not res!403252) (not e!358309))))

(declare-datatypes ((List!12215 0))(
  ( (Nil!12212) (Cons!12211 (h!13256 (_ BitVec 64)) (t!18451 List!12215)) )
))
(declare-fun arrayNoDuplicates!0 (array!37763 (_ BitVec 32) List!12215) Bool)

(assert (=> b!625067 (= res!403252 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12212))))

(assert (= (and start!56420 res!403250) b!625066))

(assert (= (and b!625066 res!403246) b!625065))

(assert (= (and b!625065 res!403251) b!625062))

(assert (= (and b!625062 res!403247) b!625061))

(assert (= (and b!625061 res!403249) b!625059))

(assert (= (and b!625059 res!403248) b!625064))

(assert (= (and b!625064 res!403253) b!625067))

(assert (= (and b!625067 res!403252) b!625063))

(assert (= (and b!625063 res!403245) b!625060))

(declare-fun m!600695 () Bool)

(assert (=> b!625067 m!600695))

(declare-fun m!600697 () Bool)

(assert (=> b!625059 m!600697))

(declare-fun m!600699 () Bool)

(assert (=> b!625062 m!600699))

(declare-fun m!600701 () Bool)

(assert (=> b!625061 m!600701))

(declare-fun m!600703 () Bool)

(assert (=> b!625064 m!600703))

(declare-fun m!600705 () Bool)

(assert (=> b!625063 m!600705))

(declare-fun m!600707 () Bool)

(assert (=> b!625063 m!600707))

(declare-fun m!600709 () Bool)

(assert (=> b!625063 m!600709))

(declare-fun m!600711 () Bool)

(assert (=> start!56420 m!600711))

(declare-fun m!600713 () Bool)

(assert (=> start!56420 m!600713))

(declare-fun m!600715 () Bool)

(assert (=> b!625060 m!600715))

(assert (=> b!625060 m!600715))

(declare-fun m!600717 () Bool)

(assert (=> b!625060 m!600717))

(assert (=> b!625065 m!600715))

(assert (=> b!625065 m!600715))

(declare-fun m!600719 () Bool)

(assert (=> b!625065 m!600719))

(check-sat (not b!625064) (not b!625067) (not start!56420) (not b!625061) (not b!625059) (not b!625060) (not b!625065) (not b!625062))
(check-sat)
