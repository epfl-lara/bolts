; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53926 () Bool)

(assert start!53926)

(declare-fun b!588013 () Bool)

(declare-fun res!375809 () Bool)

(declare-fun e!335810 () Bool)

(assert (=> b!588013 (=> (not res!375809) (not e!335810))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36724 0))(
  ( (array!36725 (arr!17631 (Array (_ BitVec 32) (_ BitVec 64))) (size!17995 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36724)

(assert (=> b!588013 (= res!375809 (and (= (size!17995 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17995 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17995 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588014 () Bool)

(declare-fun res!375805 () Bool)

(declare-fun e!335811 () Bool)

(assert (=> b!588014 (=> (not res!375805) (not e!335811))))

(declare-datatypes ((List!11725 0))(
  ( (Nil!11722) (Cons!11721 (h!12766 (_ BitVec 64)) (t!17961 List!11725)) )
))
(declare-fun arrayNoDuplicates!0 (array!36724 (_ BitVec 32) List!11725) Bool)

(assert (=> b!588014 (= res!375805 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11722))))

(declare-fun b!588015 () Bool)

(declare-fun res!375802 () Bool)

(assert (=> b!588015 (=> (not res!375802) (not e!335810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588015 (= res!375802 (validKeyInArray!0 (select (arr!17631 a!2986) j!136)))))

(declare-fun b!588016 () Bool)

(declare-fun e!335812 () Bool)

(declare-datatypes ((SeekEntryResult!6078 0))(
  ( (MissingZero!6078 (index!26542 (_ BitVec 32))) (Found!6078 (index!26543 (_ BitVec 32))) (Intermediate!6078 (undefined!6890 Bool) (index!26544 (_ BitVec 32)) (x!55375 (_ BitVec 32))) (Undefined!6078) (MissingVacant!6078 (index!26545 (_ BitVec 32))) )
))
(declare-fun lt!266651 () SeekEntryResult!6078)

(declare-fun lt!266649 () SeekEntryResult!6078)

(assert (=> b!588016 (= e!335812 (= lt!266651 lt!266649))))

(declare-fun b!588017 () Bool)

(declare-fun e!335809 () Bool)

(assert (=> b!588017 (= e!335809 (not true))))

(assert (=> b!588017 e!335812))

(declare-fun res!375799 () Bool)

(assert (=> b!588017 (=> (not res!375799) (not e!335812))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266650 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36724 (_ BitVec 32)) SeekEntryResult!6078)

(assert (=> b!588017 (= res!375799 (= lt!266649 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266650 vacantSpotIndex!68 (select (store (arr!17631 a!2986) i!1108 k!1786) j!136) (array!36725 (store (arr!17631 a!2986) i!1108 k!1786) (size!17995 a!2986)) mask!3053)))))

(assert (=> b!588017 (= lt!266649 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266650 vacantSpotIndex!68 (select (arr!17631 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18280 0))(
  ( (Unit!18281) )
))
(declare-fun lt!266648 () Unit!18280)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36724 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18280)

(assert (=> b!588017 (= lt!266648 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266650 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588017 (= lt!266650 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588018 () Bool)

(declare-fun res!375806 () Bool)

(assert (=> b!588018 (=> (not res!375806) (not e!335810))))

(declare-fun arrayContainsKey!0 (array!36724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588018 (= res!375806 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588019 () Bool)

(declare-fun res!375800 () Bool)

(assert (=> b!588019 (=> (not res!375800) (not e!335811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36724 (_ BitVec 32)) Bool)

(assert (=> b!588019 (= res!375800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588020 () Bool)

(assert (=> b!588020 (= e!335811 e!335809)))

(declare-fun res!375801 () Bool)

(assert (=> b!588020 (=> (not res!375801) (not e!335809))))

(assert (=> b!588020 (= res!375801 (and (= lt!266651 (Found!6078 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17631 a!2986) index!984) (select (arr!17631 a!2986) j!136))) (not (= (select (arr!17631 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588020 (= lt!266651 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17631 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588021 () Bool)

(assert (=> b!588021 (= e!335810 e!335811)))

(declare-fun res!375804 () Bool)

(assert (=> b!588021 (=> (not res!375804) (not e!335811))))

(declare-fun lt!266647 () SeekEntryResult!6078)

(assert (=> b!588021 (= res!375804 (or (= lt!266647 (MissingZero!6078 i!1108)) (= lt!266647 (MissingVacant!6078 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36724 (_ BitVec 32)) SeekEntryResult!6078)

(assert (=> b!588021 (= lt!266647 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!375803 () Bool)

(assert (=> start!53926 (=> (not res!375803) (not e!335810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53926 (= res!375803 (validMask!0 mask!3053))))

(assert (=> start!53926 e!335810))

(assert (=> start!53926 true))

(declare-fun array_inv!13405 (array!36724) Bool)

(assert (=> start!53926 (array_inv!13405 a!2986)))

(declare-fun b!588022 () Bool)

(declare-fun res!375808 () Bool)

(assert (=> b!588022 (=> (not res!375808) (not e!335811))))

(assert (=> b!588022 (= res!375808 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17631 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17631 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588023 () Bool)

(declare-fun res!375807 () Bool)

(assert (=> b!588023 (=> (not res!375807) (not e!335810))))

(assert (=> b!588023 (= res!375807 (validKeyInArray!0 k!1786))))

(assert (= (and start!53926 res!375803) b!588013))

(assert (= (and b!588013 res!375809) b!588015))

(assert (= (and b!588015 res!375802) b!588023))

(assert (= (and b!588023 res!375807) b!588018))

(assert (= (and b!588018 res!375806) b!588021))

(assert (= (and b!588021 res!375804) b!588019))

(assert (= (and b!588019 res!375800) b!588014))

(assert (= (and b!588014 res!375805) b!588022))

(assert (= (and b!588022 res!375808) b!588020))

(assert (= (and b!588020 res!375801) b!588017))

(assert (= (and b!588017 res!375799) b!588016))

(declare-fun m!566581 () Bool)

(assert (=> b!588017 m!566581))

(declare-fun m!566583 () Bool)

(assert (=> b!588017 m!566583))

(declare-fun m!566585 () Bool)

(assert (=> b!588017 m!566585))

(declare-fun m!566587 () Bool)

(assert (=> b!588017 m!566587))

(declare-fun m!566589 () Bool)

(assert (=> b!588017 m!566589))

(assert (=> b!588017 m!566583))

(declare-fun m!566591 () Bool)

(assert (=> b!588017 m!566591))

(assert (=> b!588017 m!566585))

(declare-fun m!566593 () Bool)

(assert (=> b!588017 m!566593))

(declare-fun m!566595 () Bool)

(assert (=> b!588022 m!566595))

(assert (=> b!588022 m!566587))

(declare-fun m!566597 () Bool)

(assert (=> b!588022 m!566597))

(assert (=> b!588015 m!566585))

(assert (=> b!588015 m!566585))

(declare-fun m!566599 () Bool)

(assert (=> b!588015 m!566599))

(declare-fun m!566601 () Bool)

(assert (=> start!53926 m!566601))

(declare-fun m!566603 () Bool)

(assert (=> start!53926 m!566603))

(declare-fun m!566605 () Bool)

(assert (=> b!588018 m!566605))

(declare-fun m!566607 () Bool)

(assert (=> b!588019 m!566607))

(declare-fun m!566609 () Bool)

(assert (=> b!588014 m!566609))

(declare-fun m!566611 () Bool)

(assert (=> b!588023 m!566611))

(declare-fun m!566613 () Bool)

(assert (=> b!588021 m!566613))

(declare-fun m!566615 () Bool)

(assert (=> b!588020 m!566615))

(assert (=> b!588020 m!566585))

(assert (=> b!588020 m!566585))

(declare-fun m!566617 () Bool)

(assert (=> b!588020 m!566617))

(push 1)

