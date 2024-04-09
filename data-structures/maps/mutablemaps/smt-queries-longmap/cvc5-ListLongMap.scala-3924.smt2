; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53572 () Bool)

(assert start!53572)

(declare-fun res!370807 () Bool)

(declare-fun e!334076 () Bool)

(assert (=> start!53572 (=> (not res!370807) (not e!334076))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53572 (= res!370807 (validMask!0 mask!3053))))

(assert (=> start!53572 e!334076))

(assert (=> start!53572 true))

(declare-datatypes ((array!36427 0))(
  ( (array!36428 (arr!17484 (Array (_ BitVec 32) (_ BitVec 64))) (size!17848 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36427)

(declare-fun array_inv!13258 (array!36427) Bool)

(assert (=> start!53572 (array_inv!13258 a!2986)))

(declare-fun b!582834 () Bool)

(declare-fun res!370808 () Bool)

(declare-fun e!334077 () Bool)

(assert (=> b!582834 (=> (not res!370808) (not e!334077))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582834 (= res!370808 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17484 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17484 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582835 () Bool)

(assert (=> b!582835 (= e!334077 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5931 0))(
  ( (MissingZero!5931 (index!25951 (_ BitVec 32))) (Found!5931 (index!25952 (_ BitVec 32))) (Intermediate!5931 (undefined!6743 Bool) (index!25953 (_ BitVec 32)) (x!54827 (_ BitVec 32))) (Undefined!5931) (MissingVacant!5931 (index!25954 (_ BitVec 32))) )
))
(declare-fun lt!265208 () SeekEntryResult!5931)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36427 (_ BitVec 32)) SeekEntryResult!5931)

(assert (=> b!582835 (= lt!265208 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17484 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582836 () Bool)

(declare-fun res!370804 () Bool)

(assert (=> b!582836 (=> (not res!370804) (not e!334076))))

(assert (=> b!582836 (= res!370804 (and (= (size!17848 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17848 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17848 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582837 () Bool)

(declare-fun res!370802 () Bool)

(assert (=> b!582837 (=> (not res!370802) (not e!334077))))

(declare-datatypes ((List!11578 0))(
  ( (Nil!11575) (Cons!11574 (h!12619 (_ BitVec 64)) (t!17814 List!11578)) )
))
(declare-fun arrayNoDuplicates!0 (array!36427 (_ BitVec 32) List!11578) Bool)

(assert (=> b!582837 (= res!370802 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11575))))

(declare-fun b!582838 () Bool)

(assert (=> b!582838 (= e!334076 e!334077)))

(declare-fun res!370806 () Bool)

(assert (=> b!582838 (=> (not res!370806) (not e!334077))))

(declare-fun lt!265207 () SeekEntryResult!5931)

(assert (=> b!582838 (= res!370806 (or (= lt!265207 (MissingZero!5931 i!1108)) (= lt!265207 (MissingVacant!5931 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36427 (_ BitVec 32)) SeekEntryResult!5931)

(assert (=> b!582838 (= lt!265207 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582839 () Bool)

(declare-fun res!370805 () Bool)

(assert (=> b!582839 (=> (not res!370805) (not e!334077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36427 (_ BitVec 32)) Bool)

(assert (=> b!582839 (= res!370805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582840 () Bool)

(declare-fun res!370800 () Bool)

(assert (=> b!582840 (=> (not res!370800) (not e!334076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582840 (= res!370800 (validKeyInArray!0 (select (arr!17484 a!2986) j!136)))))

(declare-fun b!582841 () Bool)

(declare-fun res!370801 () Bool)

(assert (=> b!582841 (=> (not res!370801) (not e!334076))))

(declare-fun arrayContainsKey!0 (array!36427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582841 (= res!370801 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582842 () Bool)

(declare-fun res!370803 () Bool)

(assert (=> b!582842 (=> (not res!370803) (not e!334076))))

(assert (=> b!582842 (= res!370803 (validKeyInArray!0 k!1786))))

(assert (= (and start!53572 res!370807) b!582836))

(assert (= (and b!582836 res!370804) b!582840))

(assert (= (and b!582840 res!370800) b!582842))

(assert (= (and b!582842 res!370803) b!582841))

(assert (= (and b!582841 res!370801) b!582838))

(assert (= (and b!582838 res!370806) b!582839))

(assert (= (and b!582839 res!370805) b!582837))

(assert (= (and b!582837 res!370802) b!582834))

(assert (= (and b!582834 res!370808) b!582835))

(declare-fun m!561367 () Bool)

(assert (=> start!53572 m!561367))

(declare-fun m!561369 () Bool)

(assert (=> start!53572 m!561369))

(declare-fun m!561371 () Bool)

(assert (=> b!582840 m!561371))

(assert (=> b!582840 m!561371))

(declare-fun m!561373 () Bool)

(assert (=> b!582840 m!561373))

(declare-fun m!561375 () Bool)

(assert (=> b!582834 m!561375))

(declare-fun m!561377 () Bool)

(assert (=> b!582834 m!561377))

(declare-fun m!561379 () Bool)

(assert (=> b!582834 m!561379))

(declare-fun m!561381 () Bool)

(assert (=> b!582841 m!561381))

(declare-fun m!561383 () Bool)

(assert (=> b!582842 m!561383))

(assert (=> b!582835 m!561371))

(assert (=> b!582835 m!561371))

(declare-fun m!561385 () Bool)

(assert (=> b!582835 m!561385))

(declare-fun m!561387 () Bool)

(assert (=> b!582837 m!561387))

(declare-fun m!561389 () Bool)

(assert (=> b!582839 m!561389))

(declare-fun m!561391 () Bool)

(assert (=> b!582838 m!561391))

(push 1)

