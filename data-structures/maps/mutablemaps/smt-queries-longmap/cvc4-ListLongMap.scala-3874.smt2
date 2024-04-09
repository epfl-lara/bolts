; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53276 () Bool)

(assert start!53276)

(declare-fun b!578802 () Bool)

(declare-fun res!366769 () Bool)

(declare-fun e!332744 () Bool)

(assert (=> b!578802 (=> (not res!366769) (not e!332744))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36131 0))(
  ( (array!36132 (arr!17336 (Array (_ BitVec 32) (_ BitVec 64))) (size!17700 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36131)

(assert (=> b!578802 (= res!366769 (and (= (size!17700 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17700 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17700 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578803 () Bool)

(declare-fun res!366772 () Bool)

(assert (=> b!578803 (=> (not res!366772) (not e!332744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578803 (= res!366772 (validKeyInArray!0 (select (arr!17336 a!2986) j!136)))))

(declare-fun res!366770 () Bool)

(assert (=> start!53276 (=> (not res!366770) (not e!332744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53276 (= res!366770 (validMask!0 mask!3053))))

(assert (=> start!53276 e!332744))

(assert (=> start!53276 true))

(declare-fun array_inv!13110 (array!36131) Bool)

(assert (=> start!53276 (array_inv!13110 a!2986)))

(declare-fun b!578804 () Bool)

(declare-fun res!366771 () Bool)

(declare-fun e!332746 () Bool)

(assert (=> b!578804 (=> (not res!366771) (not e!332746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36131 (_ BitVec 32)) Bool)

(assert (=> b!578804 (= res!366771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578805 () Bool)

(assert (=> b!578805 (= e!332744 e!332746)))

(declare-fun res!366774 () Bool)

(assert (=> b!578805 (=> (not res!366774) (not e!332746))))

(declare-datatypes ((SeekEntryResult!5783 0))(
  ( (MissingZero!5783 (index!25359 (_ BitVec 32))) (Found!5783 (index!25360 (_ BitVec 32))) (Intermediate!5783 (undefined!6595 Bool) (index!25361 (_ BitVec 32)) (x!54279 (_ BitVec 32))) (Undefined!5783) (MissingVacant!5783 (index!25362 (_ BitVec 32))) )
))
(declare-fun lt!264346 () SeekEntryResult!5783)

(assert (=> b!578805 (= res!366774 (or (= lt!264346 (MissingZero!5783 i!1108)) (= lt!264346 (MissingVacant!5783 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36131 (_ BitVec 32)) SeekEntryResult!5783)

(assert (=> b!578805 (= lt!264346 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578806 () Bool)

(declare-fun res!366773 () Bool)

(assert (=> b!578806 (=> (not res!366773) (not e!332744))))

(assert (=> b!578806 (= res!366773 (validKeyInArray!0 k!1786))))

(declare-fun b!578807 () Bool)

(declare-fun res!366775 () Bool)

(assert (=> b!578807 (=> (not res!366775) (not e!332744))))

(declare-fun arrayContainsKey!0 (array!36131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578807 (= res!366775 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578808 () Bool)

(declare-fun res!366776 () Bool)

(assert (=> b!578808 (=> (not res!366776) (not e!332746))))

(declare-datatypes ((List!11430 0))(
  ( (Nil!11427) (Cons!11426 (h!12471 (_ BitVec 64)) (t!17666 List!11430)) )
))
(declare-fun arrayNoDuplicates!0 (array!36131 (_ BitVec 32) List!11430) Bool)

(assert (=> b!578808 (= res!366776 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11427))))

(declare-fun b!578809 () Bool)

(declare-fun res!366768 () Bool)

(assert (=> b!578809 (=> (not res!366768) (not e!332746))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!578809 (= res!366768 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17336 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17336 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578810 () Bool)

(assert (=> b!578810 (= e!332746 false)))

(declare-fun lt!264347 () SeekEntryResult!5783)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36131 (_ BitVec 32)) SeekEntryResult!5783)

(assert (=> b!578810 (= lt!264347 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17336 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53276 res!366770) b!578802))

(assert (= (and b!578802 res!366769) b!578803))

(assert (= (and b!578803 res!366772) b!578806))

(assert (= (and b!578806 res!366773) b!578807))

(assert (= (and b!578807 res!366775) b!578805))

(assert (= (and b!578805 res!366774) b!578804))

(assert (= (and b!578804 res!366771) b!578808))

(assert (= (and b!578808 res!366776) b!578809))

(assert (= (and b!578809 res!366768) b!578810))

(declare-fun m!557489 () Bool)

(assert (=> start!53276 m!557489))

(declare-fun m!557491 () Bool)

(assert (=> start!53276 m!557491))

(declare-fun m!557493 () Bool)

(assert (=> b!578806 m!557493))

(declare-fun m!557495 () Bool)

(assert (=> b!578808 m!557495))

(declare-fun m!557497 () Bool)

(assert (=> b!578803 m!557497))

(assert (=> b!578803 m!557497))

(declare-fun m!557499 () Bool)

(assert (=> b!578803 m!557499))

(declare-fun m!557501 () Bool)

(assert (=> b!578809 m!557501))

(declare-fun m!557503 () Bool)

(assert (=> b!578809 m!557503))

(declare-fun m!557505 () Bool)

(assert (=> b!578809 m!557505))

(declare-fun m!557507 () Bool)

(assert (=> b!578805 m!557507))

(declare-fun m!557509 () Bool)

(assert (=> b!578804 m!557509))

(declare-fun m!557511 () Bool)

(assert (=> b!578807 m!557511))

(assert (=> b!578810 m!557497))

(assert (=> b!578810 m!557497))

(declare-fun m!557513 () Bool)

(assert (=> b!578810 m!557513))

(push 1)

