; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53734 () Bool)

(assert start!53734)

(declare-fun b!585583 () Bool)

(declare-fun res!373559 () Bool)

(declare-fun e!334978 () Bool)

(assert (=> b!585583 (=> (not res!373559) (not e!334978))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36589 0))(
  ( (array!36590 (arr!17565 (Array (_ BitVec 32) (_ BitVec 64))) (size!17929 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36589)

(declare-datatypes ((SeekEntryResult!6012 0))(
  ( (MissingZero!6012 (index!26275 (_ BitVec 32))) (Found!6012 (index!26276 (_ BitVec 32))) (Intermediate!6012 (undefined!6824 Bool) (index!26277 (_ BitVec 32)) (x!55124 (_ BitVec 32))) (Undefined!6012) (MissingVacant!6012 (index!26278 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36589 (_ BitVec 32)) SeekEntryResult!6012)

(assert (=> b!585583 (= res!373559 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17565 a!2986) j!136) a!2986 mask!3053) (Found!6012 j!136)))))

(declare-fun b!585584 () Bool)

(declare-fun res!373553 () Bool)

(declare-fun e!334976 () Bool)

(assert (=> b!585584 (=> (not res!373553) (not e!334976))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585584 (= res!373553 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585585 () Bool)

(assert (=> b!585585 (= e!334976 e!334978)))

(declare-fun res!373558 () Bool)

(assert (=> b!585585 (=> (not res!373558) (not e!334978))))

(declare-fun lt!265875 () SeekEntryResult!6012)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585585 (= res!373558 (or (= lt!265875 (MissingZero!6012 i!1108)) (= lt!265875 (MissingVacant!6012 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36589 (_ BitVec 32)) SeekEntryResult!6012)

(assert (=> b!585585 (= lt!265875 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585586 () Bool)

(declare-fun res!373551 () Bool)

(assert (=> b!585586 (=> (not res!373551) (not e!334978))))

(declare-datatypes ((List!11659 0))(
  ( (Nil!11656) (Cons!11655 (h!12700 (_ BitVec 64)) (t!17895 List!11659)) )
))
(declare-fun arrayNoDuplicates!0 (array!36589 (_ BitVec 32) List!11659) Bool)

(assert (=> b!585586 (= res!373551 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11656))))

(declare-fun b!585587 () Bool)

(declare-fun res!373554 () Bool)

(assert (=> b!585587 (=> (not res!373554) (not e!334978))))

(assert (=> b!585587 (= res!373554 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17565 a!2986) index!984) (select (arr!17565 a!2986) j!136))) (not (= (select (arr!17565 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585588 () Bool)

(declare-fun res!373552 () Bool)

(assert (=> b!585588 (=> (not res!373552) (not e!334976))))

(assert (=> b!585588 (= res!373552 (and (= (size!17929 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17929 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17929 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585590 () Bool)

(declare-fun res!373555 () Bool)

(assert (=> b!585590 (=> (not res!373555) (not e!334976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585590 (= res!373555 (validKeyInArray!0 (select (arr!17565 a!2986) j!136)))))

(declare-fun b!585591 () Bool)

(assert (=> b!585591 (= e!334978 (not true))))

(declare-fun lt!265876 () (_ BitVec 32))

(assert (=> b!585591 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265876 vacantSpotIndex!68 (select (arr!17565 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265876 vacantSpotIndex!68 (select (store (arr!17565 a!2986) i!1108 k!1786) j!136) (array!36590 (store (arr!17565 a!2986) i!1108 k!1786) (size!17929 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18148 0))(
  ( (Unit!18149) )
))
(declare-fun lt!265877 () Unit!18148)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36589 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18148)

(assert (=> b!585591 (= lt!265877 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265876 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585591 (= lt!265876 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585592 () Bool)

(declare-fun res!373557 () Bool)

(assert (=> b!585592 (=> (not res!373557) (not e!334978))))

(assert (=> b!585592 (= res!373557 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17565 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17565 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585593 () Bool)

(declare-fun res!373550 () Bool)

(assert (=> b!585593 (=> (not res!373550) (not e!334976))))

(assert (=> b!585593 (= res!373550 (validKeyInArray!0 k!1786))))

(declare-fun b!585589 () Bool)

(declare-fun res!373549 () Bool)

(assert (=> b!585589 (=> (not res!373549) (not e!334978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36589 (_ BitVec 32)) Bool)

(assert (=> b!585589 (= res!373549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!373556 () Bool)

(assert (=> start!53734 (=> (not res!373556) (not e!334976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53734 (= res!373556 (validMask!0 mask!3053))))

(assert (=> start!53734 e!334976))

(assert (=> start!53734 true))

(declare-fun array_inv!13339 (array!36589) Bool)

(assert (=> start!53734 (array_inv!13339 a!2986)))

(assert (= (and start!53734 res!373556) b!585588))

(assert (= (and b!585588 res!373552) b!585590))

(assert (= (and b!585590 res!373555) b!585593))

(assert (= (and b!585593 res!373550) b!585584))

(assert (= (and b!585584 res!373553) b!585585))

(assert (= (and b!585585 res!373558) b!585589))

(assert (= (and b!585589 res!373549) b!585586))

(assert (= (and b!585586 res!373551) b!585592))

(assert (= (and b!585592 res!373557) b!585583))

(assert (= (and b!585583 res!373559) b!585587))

(assert (= (and b!585587 res!373554) b!585591))

(declare-fun m!563893 () Bool)

(assert (=> start!53734 m!563893))

(declare-fun m!563895 () Bool)

(assert (=> start!53734 m!563895))

(declare-fun m!563897 () Bool)

(assert (=> b!585593 m!563897))

(declare-fun m!563899 () Bool)

(assert (=> b!585584 m!563899))

(declare-fun m!563901 () Bool)

(assert (=> b!585591 m!563901))

(declare-fun m!563903 () Bool)

(assert (=> b!585591 m!563903))

(declare-fun m!563905 () Bool)

(assert (=> b!585591 m!563905))

(declare-fun m!563907 () Bool)

(assert (=> b!585591 m!563907))

(assert (=> b!585591 m!563905))

(declare-fun m!563909 () Bool)

(assert (=> b!585591 m!563909))

(declare-fun m!563911 () Bool)

(assert (=> b!585591 m!563911))

(assert (=> b!585591 m!563903))

(declare-fun m!563913 () Bool)

(assert (=> b!585591 m!563913))

(declare-fun m!563915 () Bool)

(assert (=> b!585589 m!563915))

(declare-fun m!563917 () Bool)

(assert (=> b!585592 m!563917))

(assert (=> b!585592 m!563907))

(declare-fun m!563919 () Bool)

(assert (=> b!585592 m!563919))

(assert (=> b!585583 m!563905))

(assert (=> b!585583 m!563905))

(declare-fun m!563921 () Bool)

(assert (=> b!585583 m!563921))

(declare-fun m!563923 () Bool)

(assert (=> b!585587 m!563923))

(assert (=> b!585587 m!563905))

(declare-fun m!563925 () Bool)

(assert (=> b!585585 m!563925))

(declare-fun m!563927 () Bool)

(assert (=> b!585586 m!563927))

(assert (=> b!585590 m!563905))

(assert (=> b!585590 m!563905))

(declare-fun m!563929 () Bool)

(assert (=> b!585590 m!563929))

(push 1)

