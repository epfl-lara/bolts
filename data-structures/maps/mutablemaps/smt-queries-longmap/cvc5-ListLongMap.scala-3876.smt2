; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53284 () Bool)

(assert start!53284)

(declare-fun b!578910 () Bool)

(declare-fun res!366878 () Bool)

(declare-fun e!332782 () Bool)

(assert (=> b!578910 (=> (not res!366878) (not e!332782))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36139 0))(
  ( (array!36140 (arr!17340 (Array (_ BitVec 32) (_ BitVec 64))) (size!17704 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36139)

(assert (=> b!578910 (= res!366878 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17340 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17340 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578911 () Bool)

(declare-fun e!332781 () Bool)

(assert (=> b!578911 (= e!332781 e!332782)))

(declare-fun res!366877 () Bool)

(assert (=> b!578911 (=> (not res!366877) (not e!332782))))

(declare-datatypes ((SeekEntryResult!5787 0))(
  ( (MissingZero!5787 (index!25375 (_ BitVec 32))) (Found!5787 (index!25376 (_ BitVec 32))) (Intermediate!5787 (undefined!6599 Bool) (index!25377 (_ BitVec 32)) (x!54299 (_ BitVec 32))) (Undefined!5787) (MissingVacant!5787 (index!25378 (_ BitVec 32))) )
))
(declare-fun lt!264371 () SeekEntryResult!5787)

(assert (=> b!578911 (= res!366877 (or (= lt!264371 (MissingZero!5787 i!1108)) (= lt!264371 (MissingVacant!5787 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36139 (_ BitVec 32)) SeekEntryResult!5787)

(assert (=> b!578911 (= lt!264371 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578912 () Bool)

(declare-fun res!366880 () Bool)

(assert (=> b!578912 (=> (not res!366880) (not e!332781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578912 (= res!366880 (validKeyInArray!0 k!1786))))

(declare-fun b!578913 () Bool)

(declare-fun res!366884 () Bool)

(assert (=> b!578913 (=> (not res!366884) (not e!332782))))

(declare-datatypes ((List!11434 0))(
  ( (Nil!11431) (Cons!11430 (h!12475 (_ BitVec 64)) (t!17670 List!11434)) )
))
(declare-fun arrayNoDuplicates!0 (array!36139 (_ BitVec 32) List!11434) Bool)

(assert (=> b!578913 (= res!366884 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11431))))

(declare-fun b!578915 () Bool)

(assert (=> b!578915 (= e!332782 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!264370 () SeekEntryResult!5787)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36139 (_ BitVec 32)) SeekEntryResult!5787)

(assert (=> b!578915 (= lt!264370 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17340 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578916 () Bool)

(declare-fun res!366883 () Bool)

(assert (=> b!578916 (=> (not res!366883) (not e!332781))))

(declare-fun arrayContainsKey!0 (array!36139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578916 (= res!366883 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!366881 () Bool)

(assert (=> start!53284 (=> (not res!366881) (not e!332781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53284 (= res!366881 (validMask!0 mask!3053))))

(assert (=> start!53284 e!332781))

(assert (=> start!53284 true))

(declare-fun array_inv!13114 (array!36139) Bool)

(assert (=> start!53284 (array_inv!13114 a!2986)))

(declare-fun b!578914 () Bool)

(declare-fun res!366882 () Bool)

(assert (=> b!578914 (=> (not res!366882) (not e!332781))))

(assert (=> b!578914 (= res!366882 (and (= (size!17704 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17704 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17704 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578917 () Bool)

(declare-fun res!366879 () Bool)

(assert (=> b!578917 (=> (not res!366879) (not e!332782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36139 (_ BitVec 32)) Bool)

(assert (=> b!578917 (= res!366879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578918 () Bool)

(declare-fun res!366876 () Bool)

(assert (=> b!578918 (=> (not res!366876) (not e!332781))))

(assert (=> b!578918 (= res!366876 (validKeyInArray!0 (select (arr!17340 a!2986) j!136)))))

(assert (= (and start!53284 res!366881) b!578914))

(assert (= (and b!578914 res!366882) b!578918))

(assert (= (and b!578918 res!366876) b!578912))

(assert (= (and b!578912 res!366880) b!578916))

(assert (= (and b!578916 res!366883) b!578911))

(assert (= (and b!578911 res!366877) b!578917))

(assert (= (and b!578917 res!366879) b!578913))

(assert (= (and b!578913 res!366884) b!578910))

(assert (= (and b!578910 res!366878) b!578915))

(declare-fun m!557593 () Bool)

(assert (=> b!578916 m!557593))

(declare-fun m!557595 () Bool)

(assert (=> b!578911 m!557595))

(declare-fun m!557597 () Bool)

(assert (=> b!578913 m!557597))

(declare-fun m!557599 () Bool)

(assert (=> b!578918 m!557599))

(assert (=> b!578918 m!557599))

(declare-fun m!557601 () Bool)

(assert (=> b!578918 m!557601))

(declare-fun m!557603 () Bool)

(assert (=> b!578912 m!557603))

(declare-fun m!557605 () Bool)

(assert (=> b!578917 m!557605))

(declare-fun m!557607 () Bool)

(assert (=> start!53284 m!557607))

(declare-fun m!557609 () Bool)

(assert (=> start!53284 m!557609))

(assert (=> b!578915 m!557599))

(assert (=> b!578915 m!557599))

(declare-fun m!557611 () Bool)

(assert (=> b!578915 m!557611))

(declare-fun m!557613 () Bool)

(assert (=> b!578910 m!557613))

(declare-fun m!557615 () Bool)

(assert (=> b!578910 m!557615))

(declare-fun m!557617 () Bool)

(assert (=> b!578910 m!557617))

(push 1)

