; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53498 () Bool)

(assert start!53498)

(declare-fun b!581835 () Bool)

(declare-fun e!333743 () Bool)

(declare-fun e!333744 () Bool)

(assert (=> b!581835 (= e!333743 e!333744)))

(declare-fun res!369802 () Bool)

(assert (=> b!581835 (=> (not res!369802) (not e!333744))))

(declare-datatypes ((SeekEntryResult!5894 0))(
  ( (MissingZero!5894 (index!25803 (_ BitVec 32))) (Found!5894 (index!25804 (_ BitVec 32))) (Intermediate!5894 (undefined!6706 Bool) (index!25805 (_ BitVec 32)) (x!54686 (_ BitVec 32))) (Undefined!5894) (MissingVacant!5894 (index!25806 (_ BitVec 32))) )
))
(declare-fun lt!264985 () SeekEntryResult!5894)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581835 (= res!369802 (or (= lt!264985 (MissingZero!5894 i!1108)) (= lt!264985 (MissingVacant!5894 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36353 0))(
  ( (array!36354 (arr!17447 (Array (_ BitVec 32) (_ BitVec 64))) (size!17811 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36353)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36353 (_ BitVec 32)) SeekEntryResult!5894)

(assert (=> b!581835 (= lt!264985 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581836 () Bool)

(assert (=> b!581836 (= e!333744 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264986 () SeekEntryResult!5894)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36353 (_ BitVec 32)) SeekEntryResult!5894)

(assert (=> b!581836 (= lt!264986 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17447 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581837 () Bool)

(declare-fun res!369807 () Bool)

(assert (=> b!581837 (=> (not res!369807) (not e!333744))))

(declare-datatypes ((List!11541 0))(
  ( (Nil!11538) (Cons!11537 (h!12582 (_ BitVec 64)) (t!17777 List!11541)) )
))
(declare-fun arrayNoDuplicates!0 (array!36353 (_ BitVec 32) List!11541) Bool)

(assert (=> b!581837 (= res!369807 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11538))))

(declare-fun res!369801 () Bool)

(assert (=> start!53498 (=> (not res!369801) (not e!333743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53498 (= res!369801 (validMask!0 mask!3053))))

(assert (=> start!53498 e!333743))

(assert (=> start!53498 true))

(declare-fun array_inv!13221 (array!36353) Bool)

(assert (=> start!53498 (array_inv!13221 a!2986)))

(declare-fun b!581838 () Bool)

(declare-fun res!369808 () Bool)

(assert (=> b!581838 (=> (not res!369808) (not e!333743))))

(declare-fun arrayContainsKey!0 (array!36353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581838 (= res!369808 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581839 () Bool)

(declare-fun res!369803 () Bool)

(assert (=> b!581839 (=> (not res!369803) (not e!333744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36353 (_ BitVec 32)) Bool)

(assert (=> b!581839 (= res!369803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581840 () Bool)

(declare-fun res!369806 () Bool)

(assert (=> b!581840 (=> (not res!369806) (not e!333744))))

(assert (=> b!581840 (= res!369806 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17447 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17447 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581841 () Bool)

(declare-fun res!369804 () Bool)

(assert (=> b!581841 (=> (not res!369804) (not e!333743))))

(assert (=> b!581841 (= res!369804 (and (= (size!17811 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17811 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17811 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581842 () Bool)

(declare-fun res!369809 () Bool)

(assert (=> b!581842 (=> (not res!369809) (not e!333743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581842 (= res!369809 (validKeyInArray!0 (select (arr!17447 a!2986) j!136)))))

(declare-fun b!581843 () Bool)

(declare-fun res!369805 () Bool)

(assert (=> b!581843 (=> (not res!369805) (not e!333743))))

(assert (=> b!581843 (= res!369805 (validKeyInArray!0 k!1786))))

(assert (= (and start!53498 res!369801) b!581841))

(assert (= (and b!581841 res!369804) b!581842))

(assert (= (and b!581842 res!369809) b!581843))

(assert (= (and b!581843 res!369805) b!581838))

(assert (= (and b!581838 res!369808) b!581835))

(assert (= (and b!581835 res!369802) b!581839))

(assert (= (and b!581839 res!369803) b!581837))

(assert (= (and b!581837 res!369807) b!581840))

(assert (= (and b!581840 res!369806) b!581836))

(declare-fun m!560405 () Bool)

(assert (=> b!581838 m!560405))

(declare-fun m!560407 () Bool)

(assert (=> b!581837 m!560407))

(declare-fun m!560409 () Bool)

(assert (=> b!581839 m!560409))

(declare-fun m!560411 () Bool)

(assert (=> b!581836 m!560411))

(assert (=> b!581836 m!560411))

(declare-fun m!560413 () Bool)

(assert (=> b!581836 m!560413))

(declare-fun m!560415 () Bool)

(assert (=> b!581843 m!560415))

(declare-fun m!560417 () Bool)

(assert (=> start!53498 m!560417))

(declare-fun m!560419 () Bool)

(assert (=> start!53498 m!560419))

(declare-fun m!560421 () Bool)

(assert (=> b!581835 m!560421))

(assert (=> b!581842 m!560411))

(assert (=> b!581842 m!560411))

(declare-fun m!560423 () Bool)

(assert (=> b!581842 m!560423))

(declare-fun m!560425 () Bool)

(assert (=> b!581840 m!560425))

(declare-fun m!560427 () Bool)

(assert (=> b!581840 m!560427))

(declare-fun m!560429 () Bool)

(assert (=> b!581840 m!560429))

(push 1)

(assert (not b!581843))

(assert (not 