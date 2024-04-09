; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56402 () Bool)

(assert start!56402)

(declare-fun b!624816 () Bool)

(declare-fun res!403005 () Bool)

(declare-fun e!358226 () Bool)

(assert (=> b!624816 (=> (not res!403005) (not e!358226))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37745 0))(
  ( (array!37746 (arr!18112 (Array (_ BitVec 32) (_ BitVec 64))) (size!18476 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37745)

(assert (=> b!624816 (= res!403005 (and (= (size!18476 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18476 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18476 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624817 () Bool)

(declare-fun res!403008 () Bool)

(declare-fun e!358228 () Bool)

(assert (=> b!624817 (=> (not res!403008) (not e!358228))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624817 (= res!403008 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18112 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18112 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624818 () Bool)

(assert (=> b!624818 (= e!358228 false)))

(declare-datatypes ((SeekEntryResult!6559 0))(
  ( (MissingZero!6559 (index!28519 (_ BitVec 32))) (Found!6559 (index!28520 (_ BitVec 32))) (Intermediate!6559 (undefined!7371 Bool) (index!28521 (_ BitVec 32)) (x!57302 (_ BitVec 32))) (Undefined!6559) (MissingVacant!6559 (index!28522 (_ BitVec 32))) )
))
(declare-fun lt!289688 () SeekEntryResult!6559)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37745 (_ BitVec 32)) SeekEntryResult!6559)

(assert (=> b!624818 (= lt!289688 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18112 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624819 () Bool)

(declare-fun res!403006 () Bool)

(assert (=> b!624819 (=> (not res!403006) (not e!358226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624819 (= res!403006 (validKeyInArray!0 k0!1786))))

(declare-fun b!624821 () Bool)

(declare-fun res!403004 () Bool)

(assert (=> b!624821 (=> (not res!403004) (not e!358226))))

(assert (=> b!624821 (= res!403004 (validKeyInArray!0 (select (arr!18112 a!2986) j!136)))))

(declare-fun b!624822 () Bool)

(assert (=> b!624822 (= e!358226 e!358228)))

(declare-fun res!403002 () Bool)

(assert (=> b!624822 (=> (not res!403002) (not e!358228))))

(declare-fun lt!289689 () SeekEntryResult!6559)

(assert (=> b!624822 (= res!403002 (or (= lt!289689 (MissingZero!6559 i!1108)) (= lt!289689 (MissingVacant!6559 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37745 (_ BitVec 32)) SeekEntryResult!6559)

(assert (=> b!624822 (= lt!289689 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!624820 () Bool)

(declare-fun res!403003 () Bool)

(assert (=> b!624820 (=> (not res!403003) (not e!358226))))

(declare-fun arrayContainsKey!0 (array!37745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624820 (= res!403003 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!403007 () Bool)

(assert (=> start!56402 (=> (not res!403007) (not e!358226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56402 (= res!403007 (validMask!0 mask!3053))))

(assert (=> start!56402 e!358226))

(assert (=> start!56402 true))

(declare-fun array_inv!13886 (array!37745) Bool)

(assert (=> start!56402 (array_inv!13886 a!2986)))

(declare-fun b!624823 () Bool)

(declare-fun res!403010 () Bool)

(assert (=> b!624823 (=> (not res!403010) (not e!358228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37745 (_ BitVec 32)) Bool)

(assert (=> b!624823 (= res!403010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624824 () Bool)

(declare-fun res!403009 () Bool)

(assert (=> b!624824 (=> (not res!403009) (not e!358228))))

(declare-datatypes ((List!12206 0))(
  ( (Nil!12203) (Cons!12202 (h!13247 (_ BitVec 64)) (t!18442 List!12206)) )
))
(declare-fun arrayNoDuplicates!0 (array!37745 (_ BitVec 32) List!12206) Bool)

(assert (=> b!624824 (= res!403009 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12203))))

(assert (= (and start!56402 res!403007) b!624816))

(assert (= (and b!624816 res!403005) b!624821))

(assert (= (and b!624821 res!403004) b!624819))

(assert (= (and b!624819 res!403006) b!624820))

(assert (= (and b!624820 res!403003) b!624822))

(assert (= (and b!624822 res!403002) b!624823))

(assert (= (and b!624823 res!403010) b!624824))

(assert (= (and b!624824 res!403009) b!624817))

(assert (= (and b!624817 res!403008) b!624818))

(declare-fun m!600461 () Bool)

(assert (=> b!624818 m!600461))

(assert (=> b!624818 m!600461))

(declare-fun m!600463 () Bool)

(assert (=> b!624818 m!600463))

(declare-fun m!600465 () Bool)

(assert (=> b!624819 m!600465))

(declare-fun m!600467 () Bool)

(assert (=> b!624824 m!600467))

(declare-fun m!600469 () Bool)

(assert (=> b!624820 m!600469))

(declare-fun m!600471 () Bool)

(assert (=> b!624823 m!600471))

(assert (=> b!624821 m!600461))

(assert (=> b!624821 m!600461))

(declare-fun m!600473 () Bool)

(assert (=> b!624821 m!600473))

(declare-fun m!600475 () Bool)

(assert (=> b!624822 m!600475))

(declare-fun m!600477 () Bool)

(assert (=> start!56402 m!600477))

(declare-fun m!600479 () Bool)

(assert (=> start!56402 m!600479))

(declare-fun m!600481 () Bool)

(assert (=> b!624817 m!600481))

(declare-fun m!600483 () Bool)

(assert (=> b!624817 m!600483))

(declare-fun m!600485 () Bool)

(assert (=> b!624817 m!600485))

(check-sat (not b!624823) (not b!624824) (not b!624820) (not start!56402) (not b!624819) (not b!624821) (not b!624822) (not b!624818))
(check-sat)
