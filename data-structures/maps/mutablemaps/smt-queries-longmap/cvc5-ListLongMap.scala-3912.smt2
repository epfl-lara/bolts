; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53500 () Bool)

(assert start!53500)

(declare-fun b!581862 () Bool)

(declare-fun res!369832 () Bool)

(declare-fun e!333752 () Bool)

(assert (=> b!581862 (=> (not res!369832) (not e!333752))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581862 (= res!369832 (validKeyInArray!0 k!1786))))

(declare-fun b!581863 () Bool)

(declare-fun res!369828 () Bool)

(declare-fun e!333753 () Bool)

(assert (=> b!581863 (=> (not res!369828) (not e!333753))))

(declare-datatypes ((array!36355 0))(
  ( (array!36356 (arr!17448 (Array (_ BitVec 32) (_ BitVec 64))) (size!17812 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36355)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36355 (_ BitVec 32)) Bool)

(assert (=> b!581863 (= res!369828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581864 () Bool)

(declare-fun res!369829 () Bool)

(assert (=> b!581864 (=> (not res!369829) (not e!333752))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581864 (= res!369829 (validKeyInArray!0 (select (arr!17448 a!2986) j!136)))))

(declare-fun b!581865 () Bool)

(assert (=> b!581865 (= e!333753 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5895 0))(
  ( (MissingZero!5895 (index!25807 (_ BitVec 32))) (Found!5895 (index!25808 (_ BitVec 32))) (Intermediate!5895 (undefined!6707 Bool) (index!25809 (_ BitVec 32)) (x!54695 (_ BitVec 32))) (Undefined!5895) (MissingVacant!5895 (index!25810 (_ BitVec 32))) )
))
(declare-fun lt!264992 () SeekEntryResult!5895)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36355 (_ BitVec 32)) SeekEntryResult!5895)

(assert (=> b!581865 (= lt!264992 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17448 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581866 () Bool)

(declare-fun res!369834 () Bool)

(assert (=> b!581866 (=> (not res!369834) (not e!333753))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581866 (= res!369834 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17448 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17448 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581867 () Bool)

(declare-fun res!369836 () Bool)

(assert (=> b!581867 (=> (not res!369836) (not e!333752))))

(declare-fun arrayContainsKey!0 (array!36355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581867 (= res!369836 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581868 () Bool)

(assert (=> b!581868 (= e!333752 e!333753)))

(declare-fun res!369835 () Bool)

(assert (=> b!581868 (=> (not res!369835) (not e!333753))))

(declare-fun lt!264991 () SeekEntryResult!5895)

(assert (=> b!581868 (= res!369835 (or (= lt!264991 (MissingZero!5895 i!1108)) (= lt!264991 (MissingVacant!5895 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36355 (_ BitVec 32)) SeekEntryResult!5895)

(assert (=> b!581868 (= lt!264991 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581869 () Bool)

(declare-fun res!369830 () Bool)

(assert (=> b!581869 (=> (not res!369830) (not e!333752))))

(assert (=> b!581869 (= res!369830 (and (= (size!17812 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17812 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17812 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!369831 () Bool)

(assert (=> start!53500 (=> (not res!369831) (not e!333752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53500 (= res!369831 (validMask!0 mask!3053))))

(assert (=> start!53500 e!333752))

(assert (=> start!53500 true))

(declare-fun array_inv!13222 (array!36355) Bool)

(assert (=> start!53500 (array_inv!13222 a!2986)))

(declare-fun b!581870 () Bool)

(declare-fun res!369833 () Bool)

(assert (=> b!581870 (=> (not res!369833) (not e!333753))))

(declare-datatypes ((List!11542 0))(
  ( (Nil!11539) (Cons!11538 (h!12583 (_ BitVec 64)) (t!17778 List!11542)) )
))
(declare-fun arrayNoDuplicates!0 (array!36355 (_ BitVec 32) List!11542) Bool)

(assert (=> b!581870 (= res!369833 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11539))))

(assert (= (and start!53500 res!369831) b!581869))

(assert (= (and b!581869 res!369830) b!581864))

(assert (= (and b!581864 res!369829) b!581862))

(assert (= (and b!581862 res!369832) b!581867))

(assert (= (and b!581867 res!369836) b!581868))

(assert (= (and b!581868 res!369835) b!581863))

(assert (= (and b!581863 res!369828) b!581870))

(assert (= (and b!581870 res!369833) b!581866))

(assert (= (and b!581866 res!369834) b!581865))

(declare-fun m!560431 () Bool)

(assert (=> b!581870 m!560431))

(declare-fun m!560433 () Bool)

(assert (=> b!581862 m!560433))

(declare-fun m!560435 () Bool)

(assert (=> b!581865 m!560435))

(assert (=> b!581865 m!560435))

(declare-fun m!560437 () Bool)

(assert (=> b!581865 m!560437))

(assert (=> b!581864 m!560435))

(assert (=> b!581864 m!560435))

(declare-fun m!560439 () Bool)

(assert (=> b!581864 m!560439))

(declare-fun m!560441 () Bool)

(assert (=> b!581868 m!560441))

(declare-fun m!560443 () Bool)

(assert (=> start!53500 m!560443))

(declare-fun m!560445 () Bool)

(assert (=> start!53500 m!560445))

(declare-fun m!560447 () Bool)

(assert (=> b!581866 m!560447))

(declare-fun m!560449 () Bool)

(assert (=> b!581866 m!560449))

(declare-fun m!560451 () Bool)

(assert (=> b!581866 m!560451))

(declare-fun m!560453 () Bool)

(assert (=> b!581867 m!560453))

(declare-fun m!560455 () Bool)

(assert (=> b!581863 m!560455))

(push 1)

