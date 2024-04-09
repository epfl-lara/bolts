; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53422 () Bool)

(assert start!53422)

(declare-fun b!580782 () Bool)

(declare-fun res!368750 () Bool)

(declare-fun e!333402 () Bool)

(assert (=> b!580782 (=> (not res!368750) (not e!333402))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36277 0))(
  ( (array!36278 (arr!17409 (Array (_ BitVec 32) (_ BitVec 64))) (size!17773 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36277)

(assert (=> b!580782 (= res!368750 (and (= (size!17773 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17773 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17773 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580783 () Bool)

(declare-fun res!368755 () Bool)

(declare-fun e!333403 () Bool)

(assert (=> b!580783 (=> (not res!368755) (not e!333403))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580783 (= res!368755 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17409 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17409 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!368753 () Bool)

(assert (=> start!53422 (=> (not res!368753) (not e!333402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53422 (= res!368753 (validMask!0 mask!3053))))

(assert (=> start!53422 e!333402))

(assert (=> start!53422 true))

(declare-fun array_inv!13183 (array!36277) Bool)

(assert (=> start!53422 (array_inv!13183 a!2986)))

(declare-fun b!580784 () Bool)

(assert (=> b!580784 (= e!333402 e!333403)))

(declare-fun res!368756 () Bool)

(assert (=> b!580784 (=> (not res!368756) (not e!333403))))

(declare-datatypes ((SeekEntryResult!5856 0))(
  ( (MissingZero!5856 (index!25651 (_ BitVec 32))) (Found!5856 (index!25652 (_ BitVec 32))) (Intermediate!5856 (undefined!6668 Bool) (index!25653 (_ BitVec 32)) (x!54552 (_ BitVec 32))) (Undefined!5856) (MissingVacant!5856 (index!25654 (_ BitVec 32))) )
))
(declare-fun lt!264775 () SeekEntryResult!5856)

(assert (=> b!580784 (= res!368756 (or (= lt!264775 (MissingZero!5856 i!1108)) (= lt!264775 (MissingVacant!5856 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36277 (_ BitVec 32)) SeekEntryResult!5856)

(assert (=> b!580784 (= lt!264775 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580785 () Bool)

(declare-fun res!368748 () Bool)

(assert (=> b!580785 (=> (not res!368748) (not e!333402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580785 (= res!368748 (validKeyInArray!0 (select (arr!17409 a!2986) j!136)))))

(declare-fun b!580786 () Bool)

(assert (=> b!580786 (= e!333403 false)))

(declare-fun lt!264776 () SeekEntryResult!5856)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36277 (_ BitVec 32)) SeekEntryResult!5856)

(assert (=> b!580786 (= lt!264776 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17409 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580787 () Bool)

(declare-fun res!368751 () Bool)

(assert (=> b!580787 (=> (not res!368751) (not e!333402))))

(declare-fun arrayContainsKey!0 (array!36277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580787 (= res!368751 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580788 () Bool)

(declare-fun res!368752 () Bool)

(assert (=> b!580788 (=> (not res!368752) (not e!333403))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36277 (_ BitVec 32)) Bool)

(assert (=> b!580788 (= res!368752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580789 () Bool)

(declare-fun res!368749 () Bool)

(assert (=> b!580789 (=> (not res!368749) (not e!333402))))

(assert (=> b!580789 (= res!368749 (validKeyInArray!0 k!1786))))

(declare-fun b!580790 () Bool)

(declare-fun res!368754 () Bool)

(assert (=> b!580790 (=> (not res!368754) (not e!333403))))

(declare-datatypes ((List!11503 0))(
  ( (Nil!11500) (Cons!11499 (h!12544 (_ BitVec 64)) (t!17739 List!11503)) )
))
(declare-fun arrayNoDuplicates!0 (array!36277 (_ BitVec 32) List!11503) Bool)

(assert (=> b!580790 (= res!368754 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11500))))

(assert (= (and start!53422 res!368753) b!580782))

(assert (= (and b!580782 res!368750) b!580785))

(assert (= (and b!580785 res!368748) b!580789))

(assert (= (and b!580789 res!368749) b!580787))

(assert (= (and b!580787 res!368751) b!580784))

(assert (= (and b!580784 res!368756) b!580788))

(assert (= (and b!580788 res!368752) b!580790))

(assert (= (and b!580790 res!368754) b!580783))

(assert (= (and b!580783 res!368755) b!580786))

(declare-fun m!559393 () Bool)

(assert (=> b!580789 m!559393))

(declare-fun m!559395 () Bool)

(assert (=> start!53422 m!559395))

(declare-fun m!559397 () Bool)

(assert (=> start!53422 m!559397))

(declare-fun m!559399 () Bool)

(assert (=> b!580784 m!559399))

(declare-fun m!559401 () Bool)

(assert (=> b!580783 m!559401))

(declare-fun m!559403 () Bool)

(assert (=> b!580783 m!559403))

(declare-fun m!559405 () Bool)

(assert (=> b!580783 m!559405))

(declare-fun m!559407 () Bool)

(assert (=> b!580790 m!559407))

(declare-fun m!559409 () Bool)

(assert (=> b!580786 m!559409))

(assert (=> b!580786 m!559409))

(declare-fun m!559411 () Bool)

(assert (=> b!580786 m!559411))

(declare-fun m!559413 () Bool)

(assert (=> b!580787 m!559413))

(assert (=> b!580785 m!559409))

(assert (=> b!580785 m!559409))

(declare-fun m!559415 () Bool)

(assert (=> b!580785 m!559415))

(declare-fun m!559417 () Bool)

(assert (=> b!580788 m!559417))

(push 1)

