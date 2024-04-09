; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56438 () Bool)

(assert start!56438)

(declare-fun b!625311 () Bool)

(declare-fun res!403499 () Bool)

(declare-fun e!358388 () Bool)

(assert (=> b!625311 (=> (not res!403499) (not e!358388))))

(declare-datatypes ((array!37781 0))(
  ( (array!37782 (arr!18130 (Array (_ BitVec 32) (_ BitVec 64))) (size!18494 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37781)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37781 (_ BitVec 32)) Bool)

(assert (=> b!625311 (= res!403499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625312 () Bool)

(declare-fun res!403497 () Bool)

(declare-fun e!358389 () Bool)

(assert (=> b!625312 (=> (not res!403497) (not e!358389))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625312 (= res!403497 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625313 () Bool)

(declare-fun res!403498 () Bool)

(assert (=> b!625313 (=> (not res!403498) (not e!358388))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625313 (= res!403498 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18130 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18130 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625314 () Bool)

(declare-fun res!403504 () Bool)

(assert (=> b!625314 (=> (not res!403504) (not e!358389))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!625314 (= res!403504 (and (= (size!18494 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18494 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18494 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625316 () Bool)

(declare-fun res!403503 () Bool)

(assert (=> b!625316 (=> (not res!403503) (not e!358388))))

(declare-datatypes ((List!12224 0))(
  ( (Nil!12221) (Cons!12220 (h!13265 (_ BitVec 64)) (t!18460 List!12224)) )
))
(declare-fun arrayNoDuplicates!0 (array!37781 (_ BitVec 32) List!12224) Bool)

(assert (=> b!625316 (= res!403503 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12221))))

(declare-fun b!625317 () Bool)

(declare-fun res!403500 () Bool)

(assert (=> b!625317 (=> (not res!403500) (not e!358389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625317 (= res!403500 (validKeyInArray!0 k0!1786))))

(declare-fun b!625318 () Bool)

(assert (=> b!625318 (= e!358389 e!358388)))

(declare-fun res!403501 () Bool)

(assert (=> b!625318 (=> (not res!403501) (not e!358388))))

(declare-datatypes ((SeekEntryResult!6577 0))(
  ( (MissingZero!6577 (index!28591 (_ BitVec 32))) (Found!6577 (index!28592 (_ BitVec 32))) (Intermediate!6577 (undefined!7389 Bool) (index!28593 (_ BitVec 32)) (x!57368 (_ BitVec 32))) (Undefined!6577) (MissingVacant!6577 (index!28594 (_ BitVec 32))) )
))
(declare-fun lt!289787 () SeekEntryResult!6577)

(assert (=> b!625318 (= res!403501 (or (= lt!289787 (MissingZero!6577 i!1108)) (= lt!289787 (MissingVacant!6577 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37781 (_ BitVec 32)) SeekEntryResult!6577)

(assert (=> b!625318 (= lt!289787 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!625319 () Bool)

(declare-fun res!403502 () Bool)

(assert (=> b!625319 (=> (not res!403502) (not e!358389))))

(assert (=> b!625319 (= res!403502 (validKeyInArray!0 (select (arr!18130 a!2986) j!136)))))

(declare-fun b!625315 () Bool)

(assert (=> b!625315 (= e!358388 false)))

(declare-fun lt!289788 () SeekEntryResult!6577)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37781 (_ BitVec 32)) SeekEntryResult!6577)

(assert (=> b!625315 (= lt!289788 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18130 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!403505 () Bool)

(assert (=> start!56438 (=> (not res!403505) (not e!358389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56438 (= res!403505 (validMask!0 mask!3053))))

(assert (=> start!56438 e!358389))

(assert (=> start!56438 true))

(declare-fun array_inv!13904 (array!37781) Bool)

(assert (=> start!56438 (array_inv!13904 a!2986)))

(assert (= (and start!56438 res!403505) b!625314))

(assert (= (and b!625314 res!403504) b!625319))

(assert (= (and b!625319 res!403502) b!625317))

(assert (= (and b!625317 res!403500) b!625312))

(assert (= (and b!625312 res!403497) b!625318))

(assert (= (and b!625318 res!403501) b!625311))

(assert (= (and b!625311 res!403499) b!625316))

(assert (= (and b!625316 res!403503) b!625313))

(assert (= (and b!625313 res!403498) b!625315))

(declare-fun m!600929 () Bool)

(assert (=> b!625319 m!600929))

(assert (=> b!625319 m!600929))

(declare-fun m!600931 () Bool)

(assert (=> b!625319 m!600931))

(declare-fun m!600933 () Bool)

(assert (=> b!625312 m!600933))

(declare-fun m!600935 () Bool)

(assert (=> b!625313 m!600935))

(declare-fun m!600937 () Bool)

(assert (=> b!625313 m!600937))

(declare-fun m!600939 () Bool)

(assert (=> b!625313 m!600939))

(assert (=> b!625315 m!600929))

(assert (=> b!625315 m!600929))

(declare-fun m!600941 () Bool)

(assert (=> b!625315 m!600941))

(declare-fun m!600943 () Bool)

(assert (=> b!625316 m!600943))

(declare-fun m!600945 () Bool)

(assert (=> b!625311 m!600945))

(declare-fun m!600947 () Bool)

(assert (=> b!625317 m!600947))

(declare-fun m!600949 () Bool)

(assert (=> b!625318 m!600949))

(declare-fun m!600951 () Bool)

(assert (=> start!56438 m!600951))

(declare-fun m!600953 () Bool)

(assert (=> start!56438 m!600953))

(check-sat (not b!625319) (not b!625317) (not start!56438) (not b!625315) (not b!625311) (not b!625318) (not b!625312) (not b!625316))
(check-sat)
