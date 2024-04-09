; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53920 () Bool)

(assert start!53920)

(declare-fun b!587914 () Bool)

(declare-fun e!335764 () Bool)

(assert (=> b!587914 (= e!335764 (not true))))

(declare-fun e!335765 () Bool)

(assert (=> b!587914 e!335765))

(declare-fun res!375706 () Bool)

(assert (=> b!587914 (=> (not res!375706) (not e!335765))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!266605 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36718 0))(
  ( (array!36719 (arr!17628 (Array (_ BitVec 32) (_ BitVec 64))) (size!17992 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36718)

(declare-datatypes ((SeekEntryResult!6075 0))(
  ( (MissingZero!6075 (index!26530 (_ BitVec 32))) (Found!6075 (index!26531 (_ BitVec 32))) (Intermediate!6075 (undefined!6887 Bool) (index!26532 (_ BitVec 32)) (x!55364 (_ BitVec 32))) (Undefined!6075) (MissingVacant!6075 (index!26533 (_ BitVec 32))) )
))
(declare-fun lt!266602 () SeekEntryResult!6075)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36718 (_ BitVec 32)) SeekEntryResult!6075)

(assert (=> b!587914 (= res!375706 (= lt!266602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266605 vacantSpotIndex!68 (select (store (arr!17628 a!2986) i!1108 k!1786) j!136) (array!36719 (store (arr!17628 a!2986) i!1108 k!1786) (size!17992 a!2986)) mask!3053)))))

(assert (=> b!587914 (= lt!266602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266605 vacantSpotIndex!68 (select (arr!17628 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18274 0))(
  ( (Unit!18275) )
))
(declare-fun lt!266604 () Unit!18274)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36718 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18274)

(assert (=> b!587914 (= lt!266604 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266605 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587914 (= lt!266605 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587915 () Bool)

(declare-fun e!335766 () Bool)

(declare-fun e!335767 () Bool)

(assert (=> b!587915 (= e!335766 e!335767)))

(declare-fun res!375707 () Bool)

(assert (=> b!587915 (=> (not res!375707) (not e!335767))))

(declare-fun lt!266606 () SeekEntryResult!6075)

(assert (=> b!587915 (= res!375707 (or (= lt!266606 (MissingZero!6075 i!1108)) (= lt!266606 (MissingVacant!6075 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36718 (_ BitVec 32)) SeekEntryResult!6075)

(assert (=> b!587915 (= lt!266606 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587916 () Bool)

(declare-fun res!375708 () Bool)

(assert (=> b!587916 (=> (not res!375708) (not e!335767))))

(declare-datatypes ((List!11722 0))(
  ( (Nil!11719) (Cons!11718 (h!12763 (_ BitVec 64)) (t!17958 List!11722)) )
))
(declare-fun arrayNoDuplicates!0 (array!36718 (_ BitVec 32) List!11722) Bool)

(assert (=> b!587916 (= res!375708 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11719))))

(declare-fun b!587917 () Bool)

(declare-fun res!375709 () Bool)

(assert (=> b!587917 (=> (not res!375709) (not e!335767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36718 (_ BitVec 32)) Bool)

(assert (=> b!587917 (= res!375709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!375704 () Bool)

(assert (=> start!53920 (=> (not res!375704) (not e!335766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53920 (= res!375704 (validMask!0 mask!3053))))

(assert (=> start!53920 e!335766))

(assert (=> start!53920 true))

(declare-fun array_inv!13402 (array!36718) Bool)

(assert (=> start!53920 (array_inv!13402 a!2986)))

(declare-fun b!587918 () Bool)

(declare-fun res!375701 () Bool)

(assert (=> b!587918 (=> (not res!375701) (not e!335766))))

(declare-fun arrayContainsKey!0 (array!36718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587918 (= res!375701 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587919 () Bool)

(declare-fun res!375702 () Bool)

(assert (=> b!587919 (=> (not res!375702) (not e!335766))))

(assert (=> b!587919 (= res!375702 (and (= (size!17992 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17992 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17992 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587920 () Bool)

(assert (=> b!587920 (= e!335767 e!335764)))

(declare-fun res!375703 () Bool)

(assert (=> b!587920 (=> (not res!375703) (not e!335764))))

(declare-fun lt!266603 () SeekEntryResult!6075)

(assert (=> b!587920 (= res!375703 (and (= lt!266603 (Found!6075 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17628 a!2986) index!984) (select (arr!17628 a!2986) j!136))) (not (= (select (arr!17628 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587920 (= lt!266603 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17628 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587921 () Bool)

(assert (=> b!587921 (= e!335765 (= lt!266603 lt!266602))))

(declare-fun b!587922 () Bool)

(declare-fun res!375705 () Bool)

(assert (=> b!587922 (=> (not res!375705) (not e!335767))))

(assert (=> b!587922 (= res!375705 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17628 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17628 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587923 () Bool)

(declare-fun res!375700 () Bool)

(assert (=> b!587923 (=> (not res!375700) (not e!335766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587923 (= res!375700 (validKeyInArray!0 k!1786))))

(declare-fun b!587924 () Bool)

(declare-fun res!375710 () Bool)

(assert (=> b!587924 (=> (not res!375710) (not e!335766))))

(assert (=> b!587924 (= res!375710 (validKeyInArray!0 (select (arr!17628 a!2986) j!136)))))

(assert (= (and start!53920 res!375704) b!587919))

(assert (= (and b!587919 res!375702) b!587924))

(assert (= (and b!587924 res!375710) b!587923))

(assert (= (and b!587923 res!375700) b!587918))

(assert (= (and b!587918 res!375701) b!587915))

(assert (= (and b!587915 res!375707) b!587917))

(assert (= (and b!587917 res!375709) b!587916))

(assert (= (and b!587916 res!375708) b!587922))

(assert (= (and b!587922 res!375705) b!587920))

(assert (= (and b!587920 res!375703) b!587914))

(assert (= (and b!587914 res!375706) b!587921))

(declare-fun m!566467 () Bool)

(assert (=> b!587916 m!566467))

(declare-fun m!566469 () Bool)

(assert (=> b!587915 m!566469))

(declare-fun m!566471 () Bool)

(assert (=> b!587924 m!566471))

(assert (=> b!587924 m!566471))

(declare-fun m!566473 () Bool)

(assert (=> b!587924 m!566473))

(declare-fun m!566475 () Bool)

(assert (=> b!587914 m!566475))

(declare-fun m!566477 () Bool)

(assert (=> b!587914 m!566477))

(assert (=> b!587914 m!566471))

(declare-fun m!566479 () Bool)

(assert (=> b!587914 m!566479))

(declare-fun m!566481 () Bool)

(assert (=> b!587914 m!566481))

(assert (=> b!587914 m!566471))

(declare-fun m!566483 () Bool)

(assert (=> b!587914 m!566483))

(assert (=> b!587914 m!566477))

(declare-fun m!566485 () Bool)

(assert (=> b!587914 m!566485))

(declare-fun m!566487 () Bool)

(assert (=> b!587918 m!566487))

(declare-fun m!566489 () Bool)

(assert (=> b!587922 m!566489))

(assert (=> b!587922 m!566479))

(declare-fun m!566491 () Bool)

(assert (=> b!587922 m!566491))

(declare-fun m!566493 () Bool)

(assert (=> start!53920 m!566493))

(declare-fun m!566495 () Bool)

(assert (=> start!53920 m!566495))

(declare-fun m!566497 () Bool)

(assert (=> b!587920 m!566497))

(assert (=> b!587920 m!566471))

(assert (=> b!587920 m!566471))

(declare-fun m!566499 () Bool)

(assert (=> b!587920 m!566499))

(declare-fun m!566501 () Bool)

(assert (=> b!587923 m!566501))

(declare-fun m!566503 () Bool)

(assert (=> b!587917 m!566503))

(push 1)

