; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53492 () Bool)

(assert start!53492)

(declare-fun b!581754 () Bool)

(declare-fun res!369727 () Bool)

(declare-fun e!333716 () Bool)

(assert (=> b!581754 (=> (not res!369727) (not e!333716))))

(declare-datatypes ((array!36347 0))(
  ( (array!36348 (arr!17444 (Array (_ BitVec 32) (_ BitVec 64))) (size!17808 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36347)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581754 (= res!369727 (validKeyInArray!0 (select (arr!17444 a!2986) j!136)))))

(declare-fun b!581755 () Bool)

(declare-fun res!369720 () Bool)

(declare-fun e!333718 () Bool)

(assert (=> b!581755 (=> (not res!369720) (not e!333718))))

(declare-datatypes ((List!11538 0))(
  ( (Nil!11535) (Cons!11534 (h!12579 (_ BitVec 64)) (t!17774 List!11538)) )
))
(declare-fun arrayNoDuplicates!0 (array!36347 (_ BitVec 32) List!11538) Bool)

(assert (=> b!581755 (= res!369720 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11535))))

(declare-fun b!581756 () Bool)

(assert (=> b!581756 (= e!333716 e!333718)))

(declare-fun res!369728 () Bool)

(assert (=> b!581756 (=> (not res!369728) (not e!333718))))

(declare-datatypes ((SeekEntryResult!5891 0))(
  ( (MissingZero!5891 (index!25791 (_ BitVec 32))) (Found!5891 (index!25792 (_ BitVec 32))) (Intermediate!5891 (undefined!6703 Bool) (index!25793 (_ BitVec 32)) (x!54675 (_ BitVec 32))) (Undefined!5891) (MissingVacant!5891 (index!25794 (_ BitVec 32))) )
))
(declare-fun lt!264967 () SeekEntryResult!5891)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581756 (= res!369728 (or (= lt!264967 (MissingZero!5891 i!1108)) (= lt!264967 (MissingVacant!5891 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36347 (_ BitVec 32)) SeekEntryResult!5891)

(assert (=> b!581756 (= lt!264967 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581757 () Bool)

(declare-fun res!369725 () Bool)

(assert (=> b!581757 (=> (not res!369725) (not e!333718))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581757 (= res!369725 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17444 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17444 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581758 () Bool)

(declare-fun res!369726 () Bool)

(assert (=> b!581758 (=> (not res!369726) (not e!333718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36347 (_ BitVec 32)) Bool)

(assert (=> b!581758 (= res!369726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581760 () Bool)

(declare-fun res!369724 () Bool)

(assert (=> b!581760 (=> (not res!369724) (not e!333716))))

(assert (=> b!581760 (= res!369724 (validKeyInArray!0 k!1786))))

(declare-fun res!369722 () Bool)

(assert (=> start!53492 (=> (not res!369722) (not e!333716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53492 (= res!369722 (validMask!0 mask!3053))))

(assert (=> start!53492 e!333716))

(assert (=> start!53492 true))

(declare-fun array_inv!13218 (array!36347) Bool)

(assert (=> start!53492 (array_inv!13218 a!2986)))

(declare-fun b!581759 () Bool)

(assert (=> b!581759 (= e!333718 false)))

(declare-fun lt!264968 () SeekEntryResult!5891)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36347 (_ BitVec 32)) SeekEntryResult!5891)

(assert (=> b!581759 (= lt!264968 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17444 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581761 () Bool)

(declare-fun res!369723 () Bool)

(assert (=> b!581761 (=> (not res!369723) (not e!333716))))

(assert (=> b!581761 (= res!369723 (and (= (size!17808 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17808 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17808 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581762 () Bool)

(declare-fun res!369721 () Bool)

(assert (=> b!581762 (=> (not res!369721) (not e!333716))))

(declare-fun arrayContainsKey!0 (array!36347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581762 (= res!369721 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53492 res!369722) b!581761))

(assert (= (and b!581761 res!369723) b!581754))

(assert (= (and b!581754 res!369727) b!581760))

(assert (= (and b!581760 res!369724) b!581762))

(assert (= (and b!581762 res!369721) b!581756))

(assert (= (and b!581756 res!369728) b!581758))

(assert (= (and b!581758 res!369726) b!581755))

(assert (= (and b!581755 res!369720) b!581757))

(assert (= (and b!581757 res!369725) b!581759))

(declare-fun m!560327 () Bool)

(assert (=> b!581756 m!560327))

(declare-fun m!560329 () Bool)

(assert (=> b!581754 m!560329))

(assert (=> b!581754 m!560329))

(declare-fun m!560331 () Bool)

(assert (=> b!581754 m!560331))

(declare-fun m!560333 () Bool)

(assert (=> b!581755 m!560333))

(assert (=> b!581759 m!560329))

(assert (=> b!581759 m!560329))

(declare-fun m!560335 () Bool)

(assert (=> b!581759 m!560335))

(declare-fun m!560337 () Bool)

(assert (=> b!581758 m!560337))

(declare-fun m!560339 () Bool)

(assert (=> start!53492 m!560339))

(declare-fun m!560341 () Bool)

(assert (=> start!53492 m!560341))

(declare-fun m!560343 () Bool)

(assert (=> b!581760 m!560343))

(declare-fun m!560345 () Bool)

(assert (=> b!581762 m!560345))

(declare-fun m!560347 () Bool)

(assert (=> b!581757 m!560347))

(declare-fun m!560349 () Bool)

(assert (=> b!581757 m!560349))

(declare-fun m!560351 () Bool)

(assert (=> b!581757 m!560351))

(push 1)

(assert (not b!581762))

