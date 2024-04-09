; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53494 () Bool)

(assert start!53494)

(declare-fun b!581781 () Bool)

(declare-fun res!369747 () Bool)

(declare-fun e!333726 () Bool)

(assert (=> b!581781 (=> (not res!369747) (not e!333726))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36349 0))(
  ( (array!36350 (arr!17445 (Array (_ BitVec 32) (_ BitVec 64))) (size!17809 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36349)

(assert (=> b!581781 (= res!369747 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17445 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17445 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581782 () Bool)

(declare-fun e!333727 () Bool)

(assert (=> b!581782 (= e!333727 e!333726)))

(declare-fun res!369748 () Bool)

(assert (=> b!581782 (=> (not res!369748) (not e!333726))))

(declare-datatypes ((SeekEntryResult!5892 0))(
  ( (MissingZero!5892 (index!25795 (_ BitVec 32))) (Found!5892 (index!25796 (_ BitVec 32))) (Intermediate!5892 (undefined!6704 Bool) (index!25797 (_ BitVec 32)) (x!54684 (_ BitVec 32))) (Undefined!5892) (MissingVacant!5892 (index!25798 (_ BitVec 32))) )
))
(declare-fun lt!264974 () SeekEntryResult!5892)

(assert (=> b!581782 (= res!369748 (or (= lt!264974 (MissingZero!5892 i!1108)) (= lt!264974 (MissingVacant!5892 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36349 (_ BitVec 32)) SeekEntryResult!5892)

(assert (=> b!581782 (= lt!264974 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581783 () Bool)

(declare-fun res!369754 () Bool)

(assert (=> b!581783 (=> (not res!369754) (not e!333727))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581783 (= res!369754 (and (= (size!17809 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17809 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17809 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581784 () Bool)

(declare-fun res!369753 () Bool)

(assert (=> b!581784 (=> (not res!369753) (not e!333726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36349 (_ BitVec 32)) Bool)

(assert (=> b!581784 (= res!369753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581785 () Bool)

(assert (=> b!581785 (= e!333726 false)))

(declare-fun lt!264973 () SeekEntryResult!5892)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36349 (_ BitVec 32)) SeekEntryResult!5892)

(assert (=> b!581785 (= lt!264973 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17445 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581786 () Bool)

(declare-fun res!369750 () Bool)

(assert (=> b!581786 (=> (not res!369750) (not e!333727))))

(declare-fun arrayContainsKey!0 (array!36349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581786 (= res!369750 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581787 () Bool)

(declare-fun res!369755 () Bool)

(assert (=> b!581787 (=> (not res!369755) (not e!333726))))

(declare-datatypes ((List!11539 0))(
  ( (Nil!11536) (Cons!11535 (h!12580 (_ BitVec 64)) (t!17775 List!11539)) )
))
(declare-fun arrayNoDuplicates!0 (array!36349 (_ BitVec 32) List!11539) Bool)

(assert (=> b!581787 (= res!369755 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11536))))

(declare-fun res!369752 () Bool)

(assert (=> start!53494 (=> (not res!369752) (not e!333727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53494 (= res!369752 (validMask!0 mask!3053))))

(assert (=> start!53494 e!333727))

(assert (=> start!53494 true))

(declare-fun array_inv!13219 (array!36349) Bool)

(assert (=> start!53494 (array_inv!13219 a!2986)))

(declare-fun b!581788 () Bool)

(declare-fun res!369751 () Bool)

(assert (=> b!581788 (=> (not res!369751) (not e!333727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581788 (= res!369751 (validKeyInArray!0 k!1786))))

(declare-fun b!581789 () Bool)

(declare-fun res!369749 () Bool)

(assert (=> b!581789 (=> (not res!369749) (not e!333727))))

(assert (=> b!581789 (= res!369749 (validKeyInArray!0 (select (arr!17445 a!2986) j!136)))))

(assert (= (and start!53494 res!369752) b!581783))

(assert (= (and b!581783 res!369754) b!581789))

(assert (= (and b!581789 res!369749) b!581788))

(assert (= (and b!581788 res!369751) b!581786))

(assert (= (and b!581786 res!369750) b!581782))

(assert (= (and b!581782 res!369748) b!581784))

(assert (= (and b!581784 res!369753) b!581787))

(assert (= (and b!581787 res!369755) b!581781))

(assert (= (and b!581781 res!369747) b!581785))

(declare-fun m!560353 () Bool)

(assert (=> b!581782 m!560353))

(declare-fun m!560355 () Bool)

(assert (=> b!581789 m!560355))

(assert (=> b!581789 m!560355))

(declare-fun m!560357 () Bool)

(assert (=> b!581789 m!560357))

(assert (=> b!581785 m!560355))

(assert (=> b!581785 m!560355))

(declare-fun m!560359 () Bool)

(assert (=> b!581785 m!560359))

(declare-fun m!560361 () Bool)

(assert (=> start!53494 m!560361))

(declare-fun m!560363 () Bool)

(assert (=> start!53494 m!560363))

(declare-fun m!560365 () Bool)

(assert (=> b!581788 m!560365))

(declare-fun m!560367 () Bool)

(assert (=> b!581781 m!560367))

(declare-fun m!560369 () Bool)

(assert (=> b!581781 m!560369))

(declare-fun m!560371 () Bool)

(assert (=> b!581781 m!560371))

(declare-fun m!560373 () Bool)

(assert (=> b!581784 m!560373))

(declare-fun m!560375 () Bool)

(assert (=> b!581786 m!560375))

(declare-fun m!560377 () Bool)

(assert (=> b!581787 m!560377))

(push 1)

