; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57008 () Bool)

(assert start!57008)

(declare-fun b!630673 () Bool)

(declare-fun res!407831 () Bool)

(declare-fun e!360616 () Bool)

(assert (=> b!630673 (=> (not res!407831) (not e!360616))))

(declare-datatypes ((array!38045 0))(
  ( (array!38046 (arr!18253 (Array (_ BitVec 32) (_ BitVec 64))) (size!18617 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38045)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38045 (_ BitVec 32)) Bool)

(assert (=> b!630673 (= res!407831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630674 () Bool)

(declare-fun res!407834 () Bool)

(assert (=> b!630674 (=> (not res!407834) (not e!360616))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630674 (= res!407834 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18253 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630675 () Bool)

(declare-fun e!360619 () Bool)

(assert (=> b!630675 (= e!360616 e!360619)))

(declare-fun res!407832 () Bool)

(assert (=> b!630675 (=> (not res!407832) (not e!360619))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!630675 (= res!407832 (= (select (store (arr!18253 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291368 () array!38045)

(assert (=> b!630675 (= lt!291368 (array!38046 (store (arr!18253 a!2986) i!1108 k0!1786) (size!18617 a!2986)))))

(declare-fun b!630676 () Bool)

(declare-fun res!407828 () Bool)

(declare-fun e!360614 () Bool)

(assert (=> b!630676 (=> (not res!407828) (not e!360614))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!630676 (= res!407828 (and (= (size!18617 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18617 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18617 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630677 () Bool)

(declare-fun e!360617 () Bool)

(declare-datatypes ((SeekEntryResult!6700 0))(
  ( (MissingZero!6700 (index!29089 (_ BitVec 32))) (Found!6700 (index!29090 (_ BitVec 32))) (Intermediate!6700 (undefined!7512 Bool) (index!29091 (_ BitVec 32)) (x!57855 (_ BitVec 32))) (Undefined!6700) (MissingVacant!6700 (index!29092 (_ BitVec 32))) )
))
(declare-fun lt!291366 () SeekEntryResult!6700)

(declare-fun lt!291369 () SeekEntryResult!6700)

(assert (=> b!630677 (= e!360617 (= lt!291366 lt!291369))))

(declare-fun b!630678 () Bool)

(assert (=> b!630678 (= e!360614 e!360616)))

(declare-fun res!407829 () Bool)

(assert (=> b!630678 (=> (not res!407829) (not e!360616))))

(declare-fun lt!291364 () SeekEntryResult!6700)

(assert (=> b!630678 (= res!407829 (or (= lt!291364 (MissingZero!6700 i!1108)) (= lt!291364 (MissingVacant!6700 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38045 (_ BitVec 32)) SeekEntryResult!6700)

(assert (=> b!630678 (= lt!291364 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!630679 () Bool)

(declare-fun res!407830 () Bool)

(assert (=> b!630679 (=> (not res!407830) (not e!360614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630679 (= res!407830 (validKeyInArray!0 k0!1786))))

(declare-fun b!630680 () Bool)

(declare-datatypes ((Unit!21158 0))(
  ( (Unit!21159) )
))
(declare-fun e!360615 () Unit!21158)

(declare-fun Unit!21160 () Unit!21158)

(assert (=> b!630680 (= e!360615 Unit!21160)))

(declare-fun b!630681 () Bool)

(declare-fun res!407825 () Bool)

(assert (=> b!630681 (=> (not res!407825) (not e!360616))))

(declare-datatypes ((List!12347 0))(
  ( (Nil!12344) (Cons!12343 (h!13388 (_ BitVec 64)) (t!18583 List!12347)) )
))
(declare-fun arrayNoDuplicates!0 (array!38045 (_ BitVec 32) List!12347) Bool)

(assert (=> b!630681 (= res!407825 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12344))))

(declare-fun b!630682 () Bool)

(declare-fun e!360618 () Bool)

(assert (=> b!630682 (= e!360619 e!360618)))

(declare-fun res!407824 () Bool)

(assert (=> b!630682 (=> (not res!407824) (not e!360618))))

(assert (=> b!630682 (= res!407824 (and (= lt!291366 (Found!6700 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18253 a!2986) index!984) (select (arr!18253 a!2986) j!136))) (not (= (select (arr!18253 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38045 (_ BitVec 32)) SeekEntryResult!6700)

(assert (=> b!630682 (= lt!291366 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18253 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630683 () Bool)

(assert (=> b!630683 (= e!360618 (not true))))

(declare-fun lt!291362 () Unit!21158)

(assert (=> b!630683 (= lt!291362 e!360615)))

(declare-fun c!71792 () Bool)

(declare-fun lt!291363 () (_ BitVec 64))

(assert (=> b!630683 (= c!71792 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291363 lt!291368 mask!3053) Undefined!6700))))

(assert (=> b!630683 e!360617))

(declare-fun res!407827 () Bool)

(assert (=> b!630683 (=> (not res!407827) (not e!360617))))

(declare-fun lt!291367 () (_ BitVec 32))

(assert (=> b!630683 (= res!407827 (= lt!291369 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291367 vacantSpotIndex!68 lt!291363 lt!291368 mask!3053)))))

(assert (=> b!630683 (= lt!291369 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291367 vacantSpotIndex!68 (select (arr!18253 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630683 (= lt!291363 (select (store (arr!18253 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291365 () Unit!21158)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38045 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21158)

(assert (=> b!630683 (= lt!291365 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291367 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630683 (= lt!291367 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!407823 () Bool)

(assert (=> start!57008 (=> (not res!407823) (not e!360614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57008 (= res!407823 (validMask!0 mask!3053))))

(assert (=> start!57008 e!360614))

(assert (=> start!57008 true))

(declare-fun array_inv!14027 (array!38045) Bool)

(assert (=> start!57008 (array_inv!14027 a!2986)))

(declare-fun b!630684 () Bool)

(declare-fun res!407826 () Bool)

(assert (=> b!630684 (=> (not res!407826) (not e!360614))))

(declare-fun arrayContainsKey!0 (array!38045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630684 (= res!407826 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630685 () Bool)

(declare-fun Unit!21161 () Unit!21158)

(assert (=> b!630685 (= e!360615 Unit!21161)))

(assert (=> b!630685 false))

(declare-fun b!630686 () Bool)

(declare-fun res!407833 () Bool)

(assert (=> b!630686 (=> (not res!407833) (not e!360614))))

(assert (=> b!630686 (= res!407833 (validKeyInArray!0 (select (arr!18253 a!2986) j!136)))))

(assert (= (and start!57008 res!407823) b!630676))

(assert (= (and b!630676 res!407828) b!630686))

(assert (= (and b!630686 res!407833) b!630679))

(assert (= (and b!630679 res!407830) b!630684))

(assert (= (and b!630684 res!407826) b!630678))

(assert (= (and b!630678 res!407829) b!630673))

(assert (= (and b!630673 res!407831) b!630681))

(assert (= (and b!630681 res!407825) b!630674))

(assert (= (and b!630674 res!407834) b!630675))

(assert (= (and b!630675 res!407832) b!630682))

(assert (= (and b!630682 res!407824) b!630683))

(assert (= (and b!630683 res!407827) b!630677))

(assert (= (and b!630683 c!71792) b!630685))

(assert (= (and b!630683 (not c!71792)) b!630680))

(declare-fun m!605689 () Bool)

(assert (=> start!57008 m!605689))

(declare-fun m!605691 () Bool)

(assert (=> start!57008 m!605691))

(declare-fun m!605693 () Bool)

(assert (=> b!630675 m!605693))

(declare-fun m!605695 () Bool)

(assert (=> b!630675 m!605695))

(declare-fun m!605697 () Bool)

(assert (=> b!630683 m!605697))

(declare-fun m!605699 () Bool)

(assert (=> b!630683 m!605699))

(declare-fun m!605701 () Bool)

(assert (=> b!630683 m!605701))

(assert (=> b!630683 m!605693))

(declare-fun m!605703 () Bool)

(assert (=> b!630683 m!605703))

(declare-fun m!605705 () Bool)

(assert (=> b!630683 m!605705))

(assert (=> b!630683 m!605701))

(declare-fun m!605707 () Bool)

(assert (=> b!630683 m!605707))

(declare-fun m!605709 () Bool)

(assert (=> b!630683 m!605709))

(assert (=> b!630686 m!605701))

(assert (=> b!630686 m!605701))

(declare-fun m!605711 () Bool)

(assert (=> b!630686 m!605711))

(declare-fun m!605713 () Bool)

(assert (=> b!630674 m!605713))

(declare-fun m!605715 () Bool)

(assert (=> b!630682 m!605715))

(assert (=> b!630682 m!605701))

(assert (=> b!630682 m!605701))

(declare-fun m!605717 () Bool)

(assert (=> b!630682 m!605717))

(declare-fun m!605719 () Bool)

(assert (=> b!630684 m!605719))

(declare-fun m!605721 () Bool)

(assert (=> b!630679 m!605721))

(declare-fun m!605723 () Bool)

(assert (=> b!630678 m!605723))

(declare-fun m!605725 () Bool)

(assert (=> b!630673 m!605725))

(declare-fun m!605727 () Bool)

(assert (=> b!630681 m!605727))

(check-sat (not b!630684) (not start!57008) (not b!630679) (not b!630683) (not b!630681) (not b!630673) (not b!630682) (not b!630678) (not b!630686))
(check-sat)
