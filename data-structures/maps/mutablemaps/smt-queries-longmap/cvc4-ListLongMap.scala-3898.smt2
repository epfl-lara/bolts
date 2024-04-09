; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53420 () Bool)

(assert start!53420)

(declare-fun b!580755 () Bool)

(declare-fun e!333392 () Bool)

(declare-fun e!333393 () Bool)

(assert (=> b!580755 (= e!333392 e!333393)))

(declare-fun res!368727 () Bool)

(assert (=> b!580755 (=> (not res!368727) (not e!333393))))

(declare-datatypes ((SeekEntryResult!5855 0))(
  ( (MissingZero!5855 (index!25647 (_ BitVec 32))) (Found!5855 (index!25648 (_ BitVec 32))) (Intermediate!5855 (undefined!6667 Bool) (index!25649 (_ BitVec 32)) (x!54543 (_ BitVec 32))) (Undefined!5855) (MissingVacant!5855 (index!25650 (_ BitVec 32))) )
))
(declare-fun lt!264770 () SeekEntryResult!5855)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580755 (= res!368727 (or (= lt!264770 (MissingZero!5855 i!1108)) (= lt!264770 (MissingVacant!5855 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36275 0))(
  ( (array!36276 (arr!17408 (Array (_ BitVec 32) (_ BitVec 64))) (size!17772 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36275)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36275 (_ BitVec 32)) SeekEntryResult!5855)

(assert (=> b!580755 (= lt!264770 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!368722 () Bool)

(assert (=> start!53420 (=> (not res!368722) (not e!333392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53420 (= res!368722 (validMask!0 mask!3053))))

(assert (=> start!53420 e!333392))

(assert (=> start!53420 true))

(declare-fun array_inv!13182 (array!36275) Bool)

(assert (=> start!53420 (array_inv!13182 a!2986)))

(declare-fun b!580756 () Bool)

(declare-fun res!368729 () Bool)

(assert (=> b!580756 (=> (not res!368729) (not e!333392))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580756 (= res!368729 (validKeyInArray!0 (select (arr!17408 a!2986) j!136)))))

(declare-fun b!580757 () Bool)

(declare-fun res!368723 () Bool)

(assert (=> b!580757 (=> (not res!368723) (not e!333393))))

(declare-datatypes ((List!11502 0))(
  ( (Nil!11499) (Cons!11498 (h!12543 (_ BitVec 64)) (t!17738 List!11502)) )
))
(declare-fun arrayNoDuplicates!0 (array!36275 (_ BitVec 32) List!11502) Bool)

(assert (=> b!580757 (= res!368723 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11499))))

(declare-fun b!580758 () Bool)

(declare-fun res!368726 () Bool)

(assert (=> b!580758 (=> (not res!368726) (not e!333393))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580758 (= res!368726 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17408 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17408 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580759 () Bool)

(declare-fun res!368725 () Bool)

(assert (=> b!580759 (=> (not res!368725) (not e!333393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36275 (_ BitVec 32)) Bool)

(assert (=> b!580759 (= res!368725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580760 () Bool)

(declare-fun res!368724 () Bool)

(assert (=> b!580760 (=> (not res!368724) (not e!333392))))

(assert (=> b!580760 (= res!368724 (validKeyInArray!0 k!1786))))

(declare-fun b!580761 () Bool)

(assert (=> b!580761 (= e!333393 false)))

(declare-fun lt!264769 () SeekEntryResult!5855)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36275 (_ BitVec 32)) SeekEntryResult!5855)

(assert (=> b!580761 (= lt!264769 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17408 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580762 () Bool)

(declare-fun res!368728 () Bool)

(assert (=> b!580762 (=> (not res!368728) (not e!333392))))

(assert (=> b!580762 (= res!368728 (and (= (size!17772 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17772 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17772 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580763 () Bool)

(declare-fun res!368721 () Bool)

(assert (=> b!580763 (=> (not res!368721) (not e!333392))))

(declare-fun arrayContainsKey!0 (array!36275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580763 (= res!368721 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53420 res!368722) b!580762))

(assert (= (and b!580762 res!368728) b!580756))

(assert (= (and b!580756 res!368729) b!580760))

(assert (= (and b!580760 res!368724) b!580763))

(assert (= (and b!580763 res!368721) b!580755))

(assert (= (and b!580755 res!368727) b!580759))

(assert (= (and b!580759 res!368725) b!580757))

(assert (= (and b!580757 res!368723) b!580758))

(assert (= (and b!580758 res!368726) b!580761))

(declare-fun m!559367 () Bool)

(assert (=> b!580760 m!559367))

(declare-fun m!559369 () Bool)

(assert (=> b!580763 m!559369))

(declare-fun m!559371 () Bool)

(assert (=> b!580759 m!559371))

(declare-fun m!559373 () Bool)

(assert (=> b!580756 m!559373))

(assert (=> b!580756 m!559373))

(declare-fun m!559375 () Bool)

(assert (=> b!580756 m!559375))

(assert (=> b!580761 m!559373))

(assert (=> b!580761 m!559373))

(declare-fun m!559377 () Bool)

(assert (=> b!580761 m!559377))

(declare-fun m!559379 () Bool)

(assert (=> b!580757 m!559379))

(declare-fun m!559381 () Bool)

(assert (=> b!580758 m!559381))

(declare-fun m!559383 () Bool)

(assert (=> b!580758 m!559383))

(declare-fun m!559385 () Bool)

(assert (=> b!580758 m!559385))

(declare-fun m!559387 () Bool)

(assert (=> start!53420 m!559387))

(declare-fun m!559389 () Bool)

(assert (=> start!53420 m!559389))

(declare-fun m!559391 () Bool)

(assert (=> b!580755 m!559391))

(push 1)

