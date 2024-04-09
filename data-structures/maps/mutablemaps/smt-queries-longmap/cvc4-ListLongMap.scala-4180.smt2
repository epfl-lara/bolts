; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57010 () Bool)

(assert start!57010)

(declare-fun b!630715 () Bool)

(declare-fun e!360637 () Bool)

(declare-datatypes ((SeekEntryResult!6701 0))(
  ( (MissingZero!6701 (index!29093 (_ BitVec 32))) (Found!6701 (index!29094 (_ BitVec 32))) (Intermediate!6701 (undefined!7513 Bool) (index!29095 (_ BitVec 32)) (x!57856 (_ BitVec 32))) (Undefined!6701) (MissingVacant!6701 (index!29096 (_ BitVec 32))) )
))
(declare-fun lt!291391 () SeekEntryResult!6701)

(declare-fun lt!291388 () SeekEntryResult!6701)

(assert (=> b!630715 (= e!360637 (= lt!291391 lt!291388))))

(declare-fun b!630716 () Bool)

(declare-fun res!407867 () Bool)

(declare-fun e!360639 () Bool)

(assert (=> b!630716 (=> (not res!407867) (not e!360639))))

(declare-datatypes ((array!38047 0))(
  ( (array!38048 (arr!18254 (Array (_ BitVec 32) (_ BitVec 64))) (size!18618 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38047)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38047 (_ BitVec 32)) Bool)

(assert (=> b!630716 (= res!407867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630717 () Bool)

(declare-fun e!360640 () Bool)

(declare-fun e!360638 () Bool)

(assert (=> b!630717 (= e!360640 e!360638)))

(declare-fun res!407868 () Bool)

(assert (=> b!630717 (=> (not res!407868) (not e!360638))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630717 (= res!407868 (and (= lt!291391 (Found!6701 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18254 a!2986) index!984) (select (arr!18254 a!2986) j!136))) (not (= (select (arr!18254 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38047 (_ BitVec 32)) SeekEntryResult!6701)

(assert (=> b!630717 (= lt!291391 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18254 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630718 () Bool)

(declare-fun res!407866 () Bool)

(assert (=> b!630718 (=> (not res!407866) (not e!360639))))

(assert (=> b!630718 (= res!407866 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18254 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630719 () Bool)

(assert (=> b!630719 (= e!360638 (not true))))

(declare-datatypes ((Unit!21162 0))(
  ( (Unit!21163) )
))
(declare-fun lt!291393 () Unit!21162)

(declare-fun e!360635 () Unit!21162)

(assert (=> b!630719 (= lt!291393 e!360635)))

(declare-fun c!71795 () Bool)

(declare-fun lt!291389 () (_ BitVec 64))

(declare-fun lt!291386 () array!38047)

(assert (=> b!630719 (= c!71795 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291389 lt!291386 mask!3053) Undefined!6701))))

(assert (=> b!630719 e!360637))

(declare-fun res!407860 () Bool)

(assert (=> b!630719 (=> (not res!407860) (not e!360637))))

(declare-fun lt!291387 () (_ BitVec 32))

(assert (=> b!630719 (= res!407860 (= lt!291388 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291387 vacantSpotIndex!68 lt!291389 lt!291386 mask!3053)))))

(assert (=> b!630719 (= lt!291388 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291387 vacantSpotIndex!68 (select (arr!18254 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!630719 (= lt!291389 (select (store (arr!18254 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291390 () Unit!21162)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38047 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21162)

(assert (=> b!630719 (= lt!291390 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291387 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630719 (= lt!291387 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!407863 () Bool)

(declare-fun e!360636 () Bool)

(assert (=> start!57010 (=> (not res!407863) (not e!360636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57010 (= res!407863 (validMask!0 mask!3053))))

(assert (=> start!57010 e!360636))

(assert (=> start!57010 true))

(declare-fun array_inv!14028 (array!38047) Bool)

(assert (=> start!57010 (array_inv!14028 a!2986)))

(declare-fun b!630720 () Bool)

(assert (=> b!630720 (= e!360636 e!360639)))

(declare-fun res!407869 () Bool)

(assert (=> b!630720 (=> (not res!407869) (not e!360639))))

(declare-fun lt!291392 () SeekEntryResult!6701)

(assert (=> b!630720 (= res!407869 (or (= lt!291392 (MissingZero!6701 i!1108)) (= lt!291392 (MissingVacant!6701 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38047 (_ BitVec 32)) SeekEntryResult!6701)

(assert (=> b!630720 (= lt!291392 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630721 () Bool)

(declare-fun res!407862 () Bool)

(assert (=> b!630721 (=> (not res!407862) (not e!360636))))

(declare-fun arrayContainsKey!0 (array!38047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630721 (= res!407862 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630722 () Bool)

(declare-fun res!407865 () Bool)

(assert (=> b!630722 (=> (not res!407865) (not e!360636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630722 (= res!407865 (validKeyInArray!0 k!1786))))

(declare-fun b!630723 () Bool)

(declare-fun res!407864 () Bool)

(assert (=> b!630723 (=> (not res!407864) (not e!360639))))

(declare-datatypes ((List!12348 0))(
  ( (Nil!12345) (Cons!12344 (h!13389 (_ BitVec 64)) (t!18584 List!12348)) )
))
(declare-fun arrayNoDuplicates!0 (array!38047 (_ BitVec 32) List!12348) Bool)

(assert (=> b!630723 (= res!407864 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12345))))

(declare-fun b!630724 () Bool)

(declare-fun Unit!21164 () Unit!21162)

(assert (=> b!630724 (= e!360635 Unit!21164)))

(assert (=> b!630724 false))

(declare-fun b!630725 () Bool)

(assert (=> b!630725 (= e!360639 e!360640)))

(declare-fun res!407859 () Bool)

(assert (=> b!630725 (=> (not res!407859) (not e!360640))))

(assert (=> b!630725 (= res!407859 (= (select (store (arr!18254 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630725 (= lt!291386 (array!38048 (store (arr!18254 a!2986) i!1108 k!1786) (size!18618 a!2986)))))

(declare-fun b!630726 () Bool)

(declare-fun Unit!21165 () Unit!21162)

(assert (=> b!630726 (= e!360635 Unit!21165)))

(declare-fun b!630727 () Bool)

(declare-fun res!407861 () Bool)

(assert (=> b!630727 (=> (not res!407861) (not e!360636))))

(assert (=> b!630727 (= res!407861 (validKeyInArray!0 (select (arr!18254 a!2986) j!136)))))

(declare-fun b!630728 () Bool)

(declare-fun res!407870 () Bool)

(assert (=> b!630728 (=> (not res!407870) (not e!360636))))

(assert (=> b!630728 (= res!407870 (and (= (size!18618 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18618 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18618 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!57010 res!407863) b!630728))

(assert (= (and b!630728 res!407870) b!630727))

(assert (= (and b!630727 res!407861) b!630722))

(assert (= (and b!630722 res!407865) b!630721))

(assert (= (and b!630721 res!407862) b!630720))

(assert (= (and b!630720 res!407869) b!630716))

(assert (= (and b!630716 res!407867) b!630723))

(assert (= (and b!630723 res!407864) b!630718))

(assert (= (and b!630718 res!407866) b!630725))

(assert (= (and b!630725 res!407859) b!630717))

(assert (= (and b!630717 res!407868) b!630719))

(assert (= (and b!630719 res!407860) b!630715))

(assert (= (and b!630719 c!71795) b!630724))

(assert (= (and b!630719 (not c!71795)) b!630726))

(declare-fun m!605729 () Bool)

(assert (=> b!630725 m!605729))

(declare-fun m!605731 () Bool)

(assert (=> b!630725 m!605731))

(declare-fun m!605733 () Bool)

(assert (=> b!630722 m!605733))

(declare-fun m!605735 () Bool)

(assert (=> b!630720 m!605735))

(declare-fun m!605737 () Bool)

(assert (=> b!630718 m!605737))

(declare-fun m!605739 () Bool)

(assert (=> b!630727 m!605739))

(assert (=> b!630727 m!605739))

(declare-fun m!605741 () Bool)

(assert (=> b!630727 m!605741))

(declare-fun m!605743 () Bool)

(assert (=> b!630719 m!605743))

(declare-fun m!605745 () Bool)

(assert (=> b!630719 m!605745))

(assert (=> b!630719 m!605739))

(assert (=> b!630719 m!605729))

(declare-fun m!605747 () Bool)

(assert (=> b!630719 m!605747))

(assert (=> b!630719 m!605739))

(declare-fun m!605749 () Bool)

(assert (=> b!630719 m!605749))

(declare-fun m!605751 () Bool)

(assert (=> b!630719 m!605751))

(declare-fun m!605753 () Bool)

(assert (=> b!630719 m!605753))

(declare-fun m!605755 () Bool)

(assert (=> b!630716 m!605755))

(declare-fun m!605757 () Bool)

(assert (=> b!630723 m!605757))

(declare-fun m!605759 () Bool)

(assert (=> b!630717 m!605759))

(assert (=> b!630717 m!605739))

(assert (=> b!630717 m!605739))

(declare-fun m!605761 () Bool)

(assert (=> b!630717 m!605761))

(declare-fun m!605763 () Bool)

(assert (=> start!57010 m!605763))

(declare-fun m!605765 () Bool)

(assert (=> start!57010 m!605765))

(declare-fun m!605767 () Bool)

(assert (=> b!630721 m!605767))

(push 1)

