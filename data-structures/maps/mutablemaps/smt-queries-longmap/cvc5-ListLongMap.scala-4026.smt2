; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54870 () Bool)

(assert start!54870)

(declare-fun b!599489 () Bool)

(declare-fun e!342747 () Bool)

(declare-fun e!342748 () Bool)

(assert (=> b!599489 (= e!342747 e!342748)))

(declare-fun res!384623 () Bool)

(assert (=> b!599489 (=> (not res!384623) (not e!342748))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37068 0))(
  ( (array!37069 (arr!17790 (Array (_ BitVec 32) (_ BitVec 64))) (size!18154 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37068)

(assert (=> b!599489 (= res!384623 (= (select (store (arr!17790 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!272615 () array!37068)

(assert (=> b!599489 (= lt!272615 (array!37069 (store (arr!17790 a!2986) i!1108 k!1786) (size!18154 a!2986)))))

(declare-fun b!599490 () Bool)

(declare-fun res!384624 () Bool)

(declare-fun e!342750 () Bool)

(assert (=> b!599490 (=> (not res!384624) (not e!342750))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!599490 (= res!384624 (and (= (size!18154 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18154 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18154 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599491 () Bool)

(declare-fun res!384631 () Bool)

(assert (=> b!599491 (=> (not res!384631) (not e!342750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599491 (= res!384631 (validKeyInArray!0 (select (arr!17790 a!2986) j!136)))))

(declare-fun b!599492 () Bool)

(declare-fun e!342743 () Bool)

(declare-fun e!342742 () Bool)

(assert (=> b!599492 (= e!342743 e!342742)))

(declare-fun res!384627 () Bool)

(assert (=> b!599492 (=> (not res!384627) (not e!342742))))

(declare-fun arrayContainsKey!0 (array!37068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599492 (= res!384627 (arrayContainsKey!0 lt!272615 (select (arr!17790 a!2986) j!136) j!136))))

(declare-fun b!599493 () Bool)

(declare-fun res!384633 () Bool)

(assert (=> b!599493 (=> (not res!384633) (not e!342750))))

(assert (=> b!599493 (= res!384633 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!384632 () Bool)

(assert (=> start!54870 (=> (not res!384632) (not e!342750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54870 (= res!384632 (validMask!0 mask!3053))))

(assert (=> start!54870 e!342750))

(assert (=> start!54870 true))

(declare-fun array_inv!13564 (array!37068) Bool)

(assert (=> start!54870 (array_inv!13564 a!2986)))

(declare-fun b!599494 () Bool)

(declare-fun e!342739 () Bool)

(assert (=> b!599494 (= e!342748 e!342739)))

(declare-fun res!384621 () Bool)

(assert (=> b!599494 (=> (not res!384621) (not e!342739))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6237 0))(
  ( (MissingZero!6237 (index!27204 (_ BitVec 32))) (Found!6237 (index!27205 (_ BitVec 32))) (Intermediate!6237 (undefined!7049 Bool) (index!27206 (_ BitVec 32)) (x!56037 (_ BitVec 32))) (Undefined!6237) (MissingVacant!6237 (index!27207 (_ BitVec 32))) )
))
(declare-fun lt!272625 () SeekEntryResult!6237)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599494 (= res!384621 (and (= lt!272625 (Found!6237 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17790 a!2986) index!984) (select (arr!17790 a!2986) j!136))) (not (= (select (arr!17790 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37068 (_ BitVec 32)) SeekEntryResult!6237)

(assert (=> b!599494 (= lt!272625 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17790 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599495 () Bool)

(assert (=> b!599495 (= e!342750 e!342747)))

(declare-fun res!384634 () Bool)

(assert (=> b!599495 (=> (not res!384634) (not e!342747))))

(declare-fun lt!272622 () SeekEntryResult!6237)

(assert (=> b!599495 (= res!384634 (or (= lt!272622 (MissingZero!6237 i!1108)) (= lt!272622 (MissingVacant!6237 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37068 (_ BitVec 32)) SeekEntryResult!6237)

(assert (=> b!599495 (= lt!272622 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599496 () Bool)

(declare-fun e!342745 () Bool)

(assert (=> b!599496 (= e!342739 (not e!342745))))

(declare-fun res!384630 () Bool)

(assert (=> b!599496 (=> res!384630 e!342745)))

(declare-fun lt!272619 () SeekEntryResult!6237)

(assert (=> b!599496 (= res!384630 (not (= lt!272619 (Found!6237 index!984))))))

(declare-datatypes ((Unit!18892 0))(
  ( (Unit!18893) )
))
(declare-fun lt!272620 () Unit!18892)

(declare-fun e!342744 () Unit!18892)

(assert (=> b!599496 (= lt!272620 e!342744)))

(declare-fun c!67802 () Bool)

(assert (=> b!599496 (= c!67802 (= lt!272619 Undefined!6237))))

(declare-fun lt!272616 () (_ BitVec 64))

(assert (=> b!599496 (= lt!272619 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272616 lt!272615 mask!3053))))

(declare-fun e!342751 () Bool)

(assert (=> b!599496 e!342751))

(declare-fun res!384628 () Bool)

(assert (=> b!599496 (=> (not res!384628) (not e!342751))))

(declare-fun lt!272624 () (_ BitVec 32))

(declare-fun lt!272618 () SeekEntryResult!6237)

(assert (=> b!599496 (= res!384628 (= lt!272618 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272624 vacantSpotIndex!68 lt!272616 lt!272615 mask!3053)))))

(assert (=> b!599496 (= lt!272618 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272624 vacantSpotIndex!68 (select (arr!17790 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599496 (= lt!272616 (select (store (arr!17790 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272627 () Unit!18892)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37068 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18892)

(assert (=> b!599496 (= lt!272627 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272624 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599496 (= lt!272624 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599497 () Bool)

(declare-fun res!384626 () Bool)

(declare-fun e!342746 () Bool)

(assert (=> b!599497 (=> res!384626 e!342746)))

(declare-datatypes ((List!11884 0))(
  ( (Nil!11881) (Cons!11880 (h!12925 (_ BitVec 64)) (t!18120 List!11884)) )
))
(declare-fun contains!2969 (List!11884 (_ BitVec 64)) Bool)

(assert (=> b!599497 (= res!384626 (contains!2969 Nil!11881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599498 () Bool)

(declare-fun res!384636 () Bool)

(assert (=> b!599498 (=> (not res!384636) (not e!342747))))

(assert (=> b!599498 (= res!384636 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17790 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599499 () Bool)

(declare-fun e!342749 () Bool)

(assert (=> b!599499 (= e!342745 e!342749)))

(declare-fun res!384622 () Bool)

(assert (=> b!599499 (=> res!384622 e!342749)))

(declare-fun lt!272621 () (_ BitVec 64))

(assert (=> b!599499 (= res!384622 (or (not (= (select (arr!17790 a!2986) j!136) lt!272616)) (not (= (select (arr!17790 a!2986) j!136) lt!272621)) (bvsge j!136 index!984)))))

(declare-fun e!342740 () Bool)

(assert (=> b!599499 e!342740))

(declare-fun res!384619 () Bool)

(assert (=> b!599499 (=> (not res!384619) (not e!342740))))

(assert (=> b!599499 (= res!384619 (= lt!272621 (select (arr!17790 a!2986) j!136)))))

(assert (=> b!599499 (= lt!272621 (select (store (arr!17790 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599500 () Bool)

(declare-fun res!384637 () Bool)

(assert (=> b!599500 (=> (not res!384637) (not e!342747))))

(declare-fun arrayNoDuplicates!0 (array!37068 (_ BitVec 32) List!11884) Bool)

(assert (=> b!599500 (= res!384637 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11881))))

(declare-fun b!599501 () Bool)

(declare-fun res!384635 () Bool)

(assert (=> b!599501 (=> (not res!384635) (not e!342747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37068 (_ BitVec 32)) Bool)

(assert (=> b!599501 (= res!384635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599502 () Bool)

(assert (=> b!599502 (= e!342746 true)))

(declare-fun lt!272623 () Bool)

(assert (=> b!599502 (= lt!272623 (contains!2969 Nil!11881 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599503 () Bool)

(declare-fun res!384620 () Bool)

(assert (=> b!599503 (=> (not res!384620) (not e!342750))))

(assert (=> b!599503 (= res!384620 (validKeyInArray!0 k!1786))))

(declare-fun b!599504 () Bool)

(declare-fun Unit!18894 () Unit!18892)

(assert (=> b!599504 (= e!342744 Unit!18894)))

(declare-fun b!599505 () Bool)

(declare-fun Unit!18895 () Unit!18892)

(assert (=> b!599505 (= e!342744 Unit!18895)))

(assert (=> b!599505 false))

(declare-fun b!599506 () Bool)

(assert (=> b!599506 (= e!342740 e!342743)))

(declare-fun res!384625 () Bool)

(assert (=> b!599506 (=> res!384625 e!342743)))

(assert (=> b!599506 (= res!384625 (or (not (= (select (arr!17790 a!2986) j!136) lt!272616)) (not (= (select (arr!17790 a!2986) j!136) lt!272621)) (bvsge j!136 index!984)))))

(declare-fun b!599507 () Bool)

(assert (=> b!599507 (= e!342742 (arrayContainsKey!0 lt!272615 (select (arr!17790 a!2986) j!136) index!984))))

(declare-fun b!599508 () Bool)

(declare-fun res!384638 () Bool)

(assert (=> b!599508 (=> res!384638 e!342746)))

(declare-fun noDuplicate!283 (List!11884) Bool)

(assert (=> b!599508 (= res!384638 (not (noDuplicate!283 Nil!11881)))))

(declare-fun b!599509 () Bool)

(assert (=> b!599509 (= e!342749 e!342746)))

(declare-fun res!384629 () Bool)

(assert (=> b!599509 (=> res!384629 e!342746)))

(assert (=> b!599509 (= res!384629 (or (bvsge (size!18154 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18154 a!2986))))))

(assert (=> b!599509 (arrayNoDuplicates!0 lt!272615 j!136 Nil!11881)))

(declare-fun lt!272617 () Unit!18892)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37068 (_ BitVec 32) (_ BitVec 32)) Unit!18892)

(assert (=> b!599509 (= lt!272617 (lemmaNoDuplicateFromThenFromBigger!0 lt!272615 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599509 (arrayNoDuplicates!0 lt!272615 #b00000000000000000000000000000000 Nil!11881)))

(declare-fun lt!272628 () Unit!18892)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37068 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11884) Unit!18892)

(assert (=> b!599509 (= lt!272628 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11881))))

(assert (=> b!599509 (arrayContainsKey!0 lt!272615 (select (arr!17790 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272626 () Unit!18892)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37068 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18892)

(assert (=> b!599509 (= lt!272626 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272615 (select (arr!17790 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599510 () Bool)

(assert (=> b!599510 (= e!342751 (= lt!272625 lt!272618))))

(assert (= (and start!54870 res!384632) b!599490))

(assert (= (and b!599490 res!384624) b!599491))

(assert (= (and b!599491 res!384631) b!599503))

(assert (= (and b!599503 res!384620) b!599493))

(assert (= (and b!599493 res!384633) b!599495))

(assert (= (and b!599495 res!384634) b!599501))

(assert (= (and b!599501 res!384635) b!599500))

(assert (= (and b!599500 res!384637) b!599498))

(assert (= (and b!599498 res!384636) b!599489))

(assert (= (and b!599489 res!384623) b!599494))

(assert (= (and b!599494 res!384621) b!599496))

(assert (= (and b!599496 res!384628) b!599510))

(assert (= (and b!599496 c!67802) b!599505))

(assert (= (and b!599496 (not c!67802)) b!599504))

(assert (= (and b!599496 (not res!384630)) b!599499))

(assert (= (and b!599499 res!384619) b!599506))

(assert (= (and b!599506 (not res!384625)) b!599492))

(assert (= (and b!599492 res!384627) b!599507))

(assert (= (and b!599499 (not res!384622)) b!599509))

(assert (= (and b!599509 (not res!384629)) b!599508))

(assert (= (and b!599508 (not res!384638)) b!599497))

(assert (= (and b!599497 (not res!384626)) b!599502))

(declare-fun m!576783 () Bool)

(assert (=> b!599500 m!576783))

(declare-fun m!576785 () Bool)

(assert (=> b!599499 m!576785))

(declare-fun m!576787 () Bool)

(assert (=> b!599499 m!576787))

(declare-fun m!576789 () Bool)

(assert (=> b!599499 m!576789))

(declare-fun m!576791 () Bool)

(assert (=> b!599497 m!576791))

(declare-fun m!576793 () Bool)

(assert (=> b!599503 m!576793))

(assert (=> b!599492 m!576785))

(assert (=> b!599492 m!576785))

(declare-fun m!576795 () Bool)

(assert (=> b!599492 m!576795))

(declare-fun m!576797 () Bool)

(assert (=> b!599494 m!576797))

(assert (=> b!599494 m!576785))

(assert (=> b!599494 m!576785))

(declare-fun m!576799 () Bool)

(assert (=> b!599494 m!576799))

(declare-fun m!576801 () Bool)

(assert (=> b!599495 m!576801))

(assert (=> b!599489 m!576787))

(declare-fun m!576803 () Bool)

(assert (=> b!599489 m!576803))

(declare-fun m!576805 () Bool)

(assert (=> b!599493 m!576805))

(assert (=> b!599491 m!576785))

(assert (=> b!599491 m!576785))

(declare-fun m!576807 () Bool)

(assert (=> b!599491 m!576807))

(declare-fun m!576809 () Bool)

(assert (=> b!599508 m!576809))

(declare-fun m!576811 () Bool)

(assert (=> b!599498 m!576811))

(assert (=> b!599506 m!576785))

(declare-fun m!576813 () Bool)

(assert (=> b!599496 m!576813))

(assert (=> b!599496 m!576785))

(declare-fun m!576815 () Bool)

(assert (=> b!599496 m!576815))

(assert (=> b!599496 m!576787))

(assert (=> b!599496 m!576785))

(declare-fun m!576817 () Bool)

(assert (=> b!599496 m!576817))

(declare-fun m!576819 () Bool)

(assert (=> b!599496 m!576819))

(declare-fun m!576821 () Bool)

(assert (=> b!599496 m!576821))

(declare-fun m!576823 () Bool)

(assert (=> b!599496 m!576823))

(assert (=> b!599509 m!576785))

(declare-fun m!576825 () Bool)

(assert (=> b!599509 m!576825))

(assert (=> b!599509 m!576785))

(declare-fun m!576827 () Bool)

(assert (=> b!599509 m!576827))

(declare-fun m!576829 () Bool)

(assert (=> b!599509 m!576829))

(assert (=> b!599509 m!576785))

(declare-fun m!576831 () Bool)

(assert (=> b!599509 m!576831))

(declare-fun m!576833 () Bool)

(assert (=> b!599509 m!576833))

(declare-fun m!576835 () Bool)

(assert (=> b!599509 m!576835))

(declare-fun m!576837 () Bool)

(assert (=> b!599502 m!576837))

(assert (=> b!599507 m!576785))

(assert (=> b!599507 m!576785))

(declare-fun m!576839 () Bool)

(assert (=> b!599507 m!576839))

(declare-fun m!576841 () Bool)

(assert (=> start!54870 m!576841))

(declare-fun m!576843 () Bool)

(assert (=> start!54870 m!576843))

(declare-fun m!576845 () Bool)

(assert (=> b!599501 m!576845))

(push 1)

