; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56298 () Bool)

(assert start!56298)

(declare-fun b!623856 () Bool)

(declare-fun res!402212 () Bool)

(declare-fun e!357805 () Bool)

(assert (=> b!623856 (=> (not res!402212) (not e!357805))))

(declare-datatypes ((array!37686 0))(
  ( (array!37687 (arr!18084 (Array (_ BitVec 32) (_ BitVec 64))) (size!18448 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37686)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623856 (= res!402212 (validKeyInArray!0 (select (arr!18084 a!2986) j!136)))))

(declare-fun b!623857 () Bool)

(declare-fun res!402209 () Bool)

(assert (=> b!623857 (=> (not res!402209) (not e!357805))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623857 (= res!402209 (and (= (size!18448 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18448 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18448 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623858 () Bool)

(declare-fun e!357806 () Bool)

(declare-fun e!357804 () Bool)

(assert (=> b!623858 (= e!357806 e!357804)))

(declare-fun res!402205 () Bool)

(assert (=> b!623858 (=> (not res!402205) (not e!357804))))

(declare-datatypes ((SeekEntryResult!6531 0))(
  ( (MissingZero!6531 (index!28407 (_ BitVec 32))) (Found!6531 (index!28408 (_ BitVec 32))) (Intermediate!6531 (undefined!7343 Bool) (index!28409 (_ BitVec 32)) (x!57199 (_ BitVec 32))) (Undefined!6531) (MissingVacant!6531 (index!28410 (_ BitVec 32))) )
))
(declare-fun lt!289427 () SeekEntryResult!6531)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623858 (= res!402205 (and (= lt!289427 (Found!6531 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18084 a!2986) index!984) (select (arr!18084 a!2986) j!136))) (not (= (select (arr!18084 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37686 (_ BitVec 32)) SeekEntryResult!6531)

(assert (=> b!623858 (= lt!289427 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18084 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623859 () Bool)

(declare-fun res!402204 () Bool)

(declare-fun e!357809 () Bool)

(assert (=> b!623859 (=> (not res!402204) (not e!357809))))

(declare-datatypes ((List!12178 0))(
  ( (Nil!12175) (Cons!12174 (h!13219 (_ BitVec 64)) (t!18414 List!12178)) )
))
(declare-fun arrayNoDuplicates!0 (array!37686 (_ BitVec 32) List!12178) Bool)

(assert (=> b!623859 (= res!402204 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12175))))

(declare-fun res!402210 () Bool)

(assert (=> start!56298 (=> (not res!402210) (not e!357805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56298 (= res!402210 (validMask!0 mask!3053))))

(assert (=> start!56298 e!357805))

(assert (=> start!56298 true))

(declare-fun array_inv!13858 (array!37686) Bool)

(assert (=> start!56298 (array_inv!13858 a!2986)))

(declare-fun e!357808 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!289430 () (_ BitVec 64))

(declare-fun b!623860 () Bool)

(assert (=> b!623860 (= e!357808 (or (not (= (select (arr!18084 a!2986) j!136) lt!289430)) (= (select (arr!18084 a!2986) j!136) (select (store (arr!18084 a!2986) i!1108 k!1786) index!984))))))

(assert (=> b!623860 (= (select (store (arr!18084 a!2986) i!1108 k!1786) index!984) (select (arr!18084 a!2986) j!136))))

(declare-fun b!623861 () Bool)

(declare-fun res!402203 () Bool)

(assert (=> b!623861 (=> (not res!402203) (not e!357805))))

(assert (=> b!623861 (= res!402203 (validKeyInArray!0 k!1786))))

(declare-fun b!623862 () Bool)

(declare-fun res!402208 () Bool)

(assert (=> b!623862 (=> (not res!402208) (not e!357809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37686 (_ BitVec 32)) Bool)

(assert (=> b!623862 (= res!402208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623863 () Bool)

(declare-fun res!402207 () Bool)

(assert (=> b!623863 (=> (not res!402207) (not e!357805))))

(declare-fun arrayContainsKey!0 (array!37686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623863 (= res!402207 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623864 () Bool)

(declare-datatypes ((Unit!21054 0))(
  ( (Unit!21055) )
))
(declare-fun e!357807 () Unit!21054)

(declare-fun Unit!21056 () Unit!21054)

(assert (=> b!623864 (= e!357807 Unit!21056)))

(declare-fun b!623865 () Bool)

(declare-fun res!402202 () Bool)

(assert (=> b!623865 (=> (not res!402202) (not e!357809))))

(assert (=> b!623865 (= res!402202 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18084 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623866 () Bool)

(declare-fun Unit!21057 () Unit!21054)

(assert (=> b!623866 (= e!357807 Unit!21057)))

(assert (=> b!623866 false))

(declare-fun b!623867 () Bool)

(declare-fun e!357810 () Bool)

(declare-fun lt!289429 () SeekEntryResult!6531)

(assert (=> b!623867 (= e!357810 (= lt!289427 lt!289429))))

(declare-fun b!623868 () Bool)

(assert (=> b!623868 (= e!357804 (not e!357808))))

(declare-fun res!402206 () Bool)

(assert (=> b!623868 (=> res!402206 e!357808)))

(declare-fun lt!289428 () SeekEntryResult!6531)

(assert (=> b!623868 (= res!402206 (not (= lt!289428 (Found!6531 index!984))))))

(declare-fun lt!289433 () Unit!21054)

(assert (=> b!623868 (= lt!289433 e!357807)))

(declare-fun c!71195 () Bool)

(assert (=> b!623868 (= c!71195 (= lt!289428 Undefined!6531))))

(declare-fun lt!289434 () array!37686)

(assert (=> b!623868 (= lt!289428 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289430 lt!289434 mask!3053))))

(assert (=> b!623868 e!357810))

(declare-fun res!402211 () Bool)

(assert (=> b!623868 (=> (not res!402211) (not e!357810))))

(declare-fun lt!289431 () (_ BitVec 32))

(assert (=> b!623868 (= res!402211 (= lt!289429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289431 vacantSpotIndex!68 lt!289430 lt!289434 mask!3053)))))

(assert (=> b!623868 (= lt!289429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289431 vacantSpotIndex!68 (select (arr!18084 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623868 (= lt!289430 (select (store (arr!18084 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!289432 () Unit!21054)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37686 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21054)

(assert (=> b!623868 (= lt!289432 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289431 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623868 (= lt!289431 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623869 () Bool)

(assert (=> b!623869 (= e!357809 e!357806)))

(declare-fun res!402200 () Bool)

(assert (=> b!623869 (=> (not res!402200) (not e!357806))))

(assert (=> b!623869 (= res!402200 (= (select (store (arr!18084 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623869 (= lt!289434 (array!37687 (store (arr!18084 a!2986) i!1108 k!1786) (size!18448 a!2986)))))

(declare-fun b!623870 () Bool)

(assert (=> b!623870 (= e!357805 e!357809)))

(declare-fun res!402201 () Bool)

(assert (=> b!623870 (=> (not res!402201) (not e!357809))))

(declare-fun lt!289426 () SeekEntryResult!6531)

(assert (=> b!623870 (= res!402201 (or (= lt!289426 (MissingZero!6531 i!1108)) (= lt!289426 (MissingVacant!6531 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37686 (_ BitVec 32)) SeekEntryResult!6531)

(assert (=> b!623870 (= lt!289426 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56298 res!402210) b!623857))

(assert (= (and b!623857 res!402209) b!623856))

(assert (= (and b!623856 res!402212) b!623861))

(assert (= (and b!623861 res!402203) b!623863))

(assert (= (and b!623863 res!402207) b!623870))

(assert (= (and b!623870 res!402201) b!623862))

(assert (= (and b!623862 res!402208) b!623859))

(assert (= (and b!623859 res!402204) b!623865))

(assert (= (and b!623865 res!402202) b!623869))

(assert (= (and b!623869 res!402200) b!623858))

(assert (= (and b!623858 res!402205) b!623868))

(assert (= (and b!623868 res!402211) b!623867))

(assert (= (and b!623868 c!71195) b!623866))

(assert (= (and b!623868 (not c!71195)) b!623864))

(assert (= (and b!623868 (not res!402206)) b!623860))

(declare-fun m!599649 () Bool)

(assert (=> b!623870 m!599649))

(declare-fun m!599651 () Bool)

(assert (=> b!623861 m!599651))

(declare-fun m!599653 () Bool)

(assert (=> b!623859 m!599653))

(declare-fun m!599655 () Bool)

(assert (=> b!623869 m!599655))

(declare-fun m!599657 () Bool)

(assert (=> b!623869 m!599657))

(declare-fun m!599659 () Bool)

(assert (=> b!623863 m!599659))

(declare-fun m!599661 () Bool)

(assert (=> b!623860 m!599661))

(assert (=> b!623860 m!599655))

(declare-fun m!599663 () Bool)

(assert (=> b!623860 m!599663))

(assert (=> b!623856 m!599661))

(assert (=> b!623856 m!599661))

(declare-fun m!599665 () Bool)

(assert (=> b!623856 m!599665))

(declare-fun m!599667 () Bool)

(assert (=> b!623865 m!599667))

(declare-fun m!599669 () Bool)

(assert (=> b!623862 m!599669))

(declare-fun m!599671 () Bool)

(assert (=> b!623868 m!599671))

(declare-fun m!599673 () Bool)

(assert (=> b!623868 m!599673))

(assert (=> b!623868 m!599661))

(assert (=> b!623868 m!599661))

(declare-fun m!599675 () Bool)

(assert (=> b!623868 m!599675))

(declare-fun m!599677 () Bool)

(assert (=> b!623868 m!599677))

(declare-fun m!599679 () Bool)

(assert (=> b!623868 m!599679))

(declare-fun m!599681 () Bool)

(assert (=> b!623868 m!599681))

(assert (=> b!623868 m!599655))

(declare-fun m!599683 () Bool)

(assert (=> b!623858 m!599683))

(assert (=> b!623858 m!599661))

(assert (=> b!623858 m!599661))

(declare-fun m!599685 () Bool)

(assert (=> b!623858 m!599685))

(declare-fun m!599687 () Bool)

(assert (=> start!56298 m!599687))

(declare-fun m!599689 () Bool)

(assert (=> start!56298 m!599689))

(push 1)

