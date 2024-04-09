; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53414 () Bool)

(assert start!53414)

(declare-fun b!580675 () Bool)

(declare-fun res!368646 () Bool)

(declare-fun e!333366 () Bool)

(assert (=> b!580675 (=> (not res!368646) (not e!333366))))

(declare-datatypes ((array!36269 0))(
  ( (array!36270 (arr!17405 (Array (_ BitVec 32) (_ BitVec 64))) (size!17769 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36269)

(declare-datatypes ((List!11499 0))(
  ( (Nil!11496) (Cons!11495 (h!12540 (_ BitVec 64)) (t!17735 List!11499)) )
))
(declare-fun arrayNoDuplicates!0 (array!36269 (_ BitVec 32) List!11499) Bool)

(assert (=> b!580675 (= res!368646 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11496))))

(declare-fun b!580676 () Bool)

(declare-fun res!368647 () Bool)

(declare-fun e!333365 () Bool)

(assert (=> b!580676 (=> (not res!368647) (not e!333365))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580676 (= res!368647 (validKeyInArray!0 (select (arr!17405 a!2986) j!136)))))

(declare-fun b!580677 () Bool)

(declare-fun res!368644 () Bool)

(assert (=> b!580677 (=> (not res!368644) (not e!333365))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580677 (= res!368644 (and (= (size!17769 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17769 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17769 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580678 () Bool)

(assert (=> b!580678 (= e!333365 e!333366)))

(declare-fun res!368642 () Bool)

(assert (=> b!580678 (=> (not res!368642) (not e!333366))))

(declare-datatypes ((SeekEntryResult!5852 0))(
  ( (MissingZero!5852 (index!25635 (_ BitVec 32))) (Found!5852 (index!25636 (_ BitVec 32))) (Intermediate!5852 (undefined!6664 Bool) (index!25637 (_ BitVec 32)) (x!54532 (_ BitVec 32))) (Undefined!5852) (MissingVacant!5852 (index!25638 (_ BitVec 32))) )
))
(declare-fun lt!264752 () SeekEntryResult!5852)

(assert (=> b!580678 (= res!368642 (or (= lt!264752 (MissingZero!5852 i!1108)) (= lt!264752 (MissingVacant!5852 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36269 (_ BitVec 32)) SeekEntryResult!5852)

(assert (=> b!580678 (= lt!264752 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580679 () Bool)

(declare-fun res!368645 () Bool)

(assert (=> b!580679 (=> (not res!368645) (not e!333365))))

(declare-fun arrayContainsKey!0 (array!36269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580679 (= res!368645 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580680 () Bool)

(declare-fun res!368641 () Bool)

(assert (=> b!580680 (=> (not res!368641) (not e!333366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36269 (_ BitVec 32)) Bool)

(assert (=> b!580680 (= res!368641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!368648 () Bool)

(assert (=> start!53414 (=> (not res!368648) (not e!333365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53414 (= res!368648 (validMask!0 mask!3053))))

(assert (=> start!53414 e!333365))

(assert (=> start!53414 true))

(declare-fun array_inv!13179 (array!36269) Bool)

(assert (=> start!53414 (array_inv!13179 a!2986)))

(declare-fun b!580674 () Bool)

(declare-fun res!368643 () Bool)

(assert (=> b!580674 (=> (not res!368643) (not e!333365))))

(assert (=> b!580674 (= res!368643 (validKeyInArray!0 k!1786))))

(declare-fun b!580681 () Bool)

(assert (=> b!580681 (= e!333366 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264751 () SeekEntryResult!5852)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36269 (_ BitVec 32)) SeekEntryResult!5852)

(assert (=> b!580681 (= lt!264751 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17405 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580682 () Bool)

(declare-fun res!368640 () Bool)

(assert (=> b!580682 (=> (not res!368640) (not e!333366))))

(assert (=> b!580682 (= res!368640 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17405 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17405 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53414 res!368648) b!580677))

(assert (= (and b!580677 res!368644) b!580676))

(assert (= (and b!580676 res!368647) b!580674))

(assert (= (and b!580674 res!368643) b!580679))

(assert (= (and b!580679 res!368645) b!580678))

(assert (= (and b!580678 res!368642) b!580680))

(assert (= (and b!580680 res!368641) b!580675))

(assert (= (and b!580675 res!368646) b!580682))

(assert (= (and b!580682 res!368640) b!580681))

(declare-fun m!559289 () Bool)

(assert (=> b!580678 m!559289))

(declare-fun m!559291 () Bool)

(assert (=> b!580675 m!559291))

(declare-fun m!559293 () Bool)

(assert (=> start!53414 m!559293))

(declare-fun m!559295 () Bool)

(assert (=> start!53414 m!559295))

(declare-fun m!559297 () Bool)

(assert (=> b!580676 m!559297))

(assert (=> b!580676 m!559297))

(declare-fun m!559299 () Bool)

(assert (=> b!580676 m!559299))

(assert (=> b!580681 m!559297))

(assert (=> b!580681 m!559297))

(declare-fun m!559301 () Bool)

(assert (=> b!580681 m!559301))

(declare-fun m!559303 () Bool)

(assert (=> b!580682 m!559303))

(declare-fun m!559305 () Bool)

(assert (=> b!580682 m!559305))

(declare-fun m!559307 () Bool)

(assert (=> b!580682 m!559307))

(declare-fun m!559309 () Bool)

(assert (=> b!580674 m!559309))

(declare-fun m!559311 () Bool)

(assert (=> b!580680 m!559311))

(declare-fun m!559313 () Bool)

(assert (=> b!580679 m!559313))

(push 1)

(assert (not b!580681))

(assert (not b!580678))

(assert (not start!53414))

(assert (not b!580676))

(assert (not b!580679))

(assert (not b!580675))

