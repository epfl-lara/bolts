; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53278 () Bool)

(assert start!53278)

(declare-fun b!578829 () Bool)

(declare-fun res!366797 () Bool)

(declare-fun e!332754 () Bool)

(assert (=> b!578829 (=> (not res!366797) (not e!332754))))

(declare-datatypes ((array!36133 0))(
  ( (array!36134 (arr!17337 (Array (_ BitVec 32) (_ BitVec 64))) (size!17701 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36133)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578829 (= res!366797 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578830 () Bool)

(declare-fun e!332755 () Bool)

(assert (=> b!578830 (= e!332755 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5784 0))(
  ( (MissingZero!5784 (index!25363 (_ BitVec 32))) (Found!5784 (index!25364 (_ BitVec 32))) (Intermediate!5784 (undefined!6596 Bool) (index!25365 (_ BitVec 32)) (x!54288 (_ BitVec 32))) (Undefined!5784) (MissingVacant!5784 (index!25366 (_ BitVec 32))) )
))
(declare-fun lt!264353 () SeekEntryResult!5784)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36133 (_ BitVec 32)) SeekEntryResult!5784)

(assert (=> b!578830 (= lt!264353 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17337 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578831 () Bool)

(declare-fun res!366795 () Bool)

(assert (=> b!578831 (=> (not res!366795) (not e!332755))))

(declare-datatypes ((List!11431 0))(
  ( (Nil!11428) (Cons!11427 (h!12472 (_ BitVec 64)) (t!17667 List!11431)) )
))
(declare-fun arrayNoDuplicates!0 (array!36133 (_ BitVec 32) List!11431) Bool)

(assert (=> b!578831 (= res!366795 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11428))))

(declare-fun b!578832 () Bool)

(declare-fun res!366802 () Bool)

(assert (=> b!578832 (=> (not res!366802) (not e!332754))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578832 (= res!366802 (and (= (size!17701 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17701 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17701 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578834 () Bool)

(declare-fun res!366798 () Bool)

(assert (=> b!578834 (=> (not res!366798) (not e!332755))))

(assert (=> b!578834 (= res!366798 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17337 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17337 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578835 () Bool)

(declare-fun res!366800 () Bool)

(assert (=> b!578835 (=> (not res!366800) (not e!332755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36133 (_ BitVec 32)) Bool)

(assert (=> b!578835 (= res!366800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!366796 () Bool)

(assert (=> start!53278 (=> (not res!366796) (not e!332754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53278 (= res!366796 (validMask!0 mask!3053))))

(assert (=> start!53278 e!332754))

(assert (=> start!53278 true))

(declare-fun array_inv!13111 (array!36133) Bool)

(assert (=> start!53278 (array_inv!13111 a!2986)))

(declare-fun b!578833 () Bool)

(declare-fun res!366801 () Bool)

(assert (=> b!578833 (=> (not res!366801) (not e!332754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578833 (= res!366801 (validKeyInArray!0 k!1786))))

(declare-fun b!578836 () Bool)

(declare-fun res!366799 () Bool)

(assert (=> b!578836 (=> (not res!366799) (not e!332754))))

(assert (=> b!578836 (= res!366799 (validKeyInArray!0 (select (arr!17337 a!2986) j!136)))))

(declare-fun b!578837 () Bool)

(assert (=> b!578837 (= e!332754 e!332755)))

(declare-fun res!366803 () Bool)

(assert (=> b!578837 (=> (not res!366803) (not e!332755))))

(declare-fun lt!264352 () SeekEntryResult!5784)

(assert (=> b!578837 (= res!366803 (or (= lt!264352 (MissingZero!5784 i!1108)) (= lt!264352 (MissingVacant!5784 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36133 (_ BitVec 32)) SeekEntryResult!5784)

(assert (=> b!578837 (= lt!264352 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53278 res!366796) b!578832))

(assert (= (and b!578832 res!366802) b!578836))

(assert (= (and b!578836 res!366799) b!578833))

(assert (= (and b!578833 res!366801) b!578829))

(assert (= (and b!578829 res!366797) b!578837))

(assert (= (and b!578837 res!366803) b!578835))

(assert (= (and b!578835 res!366800) b!578831))

(assert (= (and b!578831 res!366795) b!578834))

(assert (= (and b!578834 res!366798) b!578830))

(declare-fun m!557515 () Bool)

(assert (=> b!578835 m!557515))

(declare-fun m!557517 () Bool)

(assert (=> b!578836 m!557517))

(assert (=> b!578836 m!557517))

(declare-fun m!557519 () Bool)

(assert (=> b!578836 m!557519))

(declare-fun m!557521 () Bool)

(assert (=> b!578833 m!557521))

(declare-fun m!557523 () Bool)

(assert (=> start!53278 m!557523))

(declare-fun m!557525 () Bool)

(assert (=> start!53278 m!557525))

(declare-fun m!557527 () Bool)

(assert (=> b!578831 m!557527))

(declare-fun m!557529 () Bool)

(assert (=> b!578834 m!557529))

(declare-fun m!557531 () Bool)

(assert (=> b!578834 m!557531))

(declare-fun m!557533 () Bool)

(assert (=> b!578834 m!557533))

(assert (=> b!578830 m!557517))

(assert (=> b!578830 m!557517))

(declare-fun m!557535 () Bool)

(assert (=> b!578830 m!557535))

(declare-fun m!557537 () Bool)

(assert (=> b!578829 m!557537))

(declare-fun m!557539 () Bool)

(assert (=> b!578837 m!557539))

(push 1)

