; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53924 () Bool)

(assert start!53924)

(declare-fun b!587980 () Bool)

(declare-fun res!375771 () Bool)

(declare-fun e!335796 () Bool)

(assert (=> b!587980 (=> (not res!375771) (not e!335796))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36722 0))(
  ( (array!36723 (arr!17630 (Array (_ BitVec 32) (_ BitVec 64))) (size!17994 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36722)

(assert (=> b!587980 (= res!375771 (and (= (size!17994 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17994 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17994 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587981 () Bool)

(declare-fun res!375774 () Bool)

(declare-fun e!335793 () Bool)

(assert (=> b!587981 (=> (not res!375774) (not e!335793))))

(declare-datatypes ((List!11724 0))(
  ( (Nil!11721) (Cons!11720 (h!12765 (_ BitVec 64)) (t!17960 List!11724)) )
))
(declare-fun arrayNoDuplicates!0 (array!36722 (_ BitVec 32) List!11724) Bool)

(assert (=> b!587981 (= res!375774 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11721))))

(declare-fun b!587982 () Bool)

(declare-fun res!375773 () Bool)

(assert (=> b!587982 (=> (not res!375773) (not e!335793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36722 (_ BitVec 32)) Bool)

(assert (=> b!587982 (= res!375773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587983 () Bool)

(declare-fun res!375776 () Bool)

(assert (=> b!587983 (=> (not res!375776) (not e!335793))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587983 (= res!375776 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17630 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17630 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587984 () Bool)

(declare-fun res!375772 () Bool)

(assert (=> b!587984 (=> (not res!375772) (not e!335796))))

(declare-fun arrayContainsKey!0 (array!36722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587984 (= res!375772 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!375769 () Bool)

(assert (=> start!53924 (=> (not res!375769) (not e!335796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53924 (= res!375769 (validMask!0 mask!3053))))

(assert (=> start!53924 e!335796))

(assert (=> start!53924 true))

(declare-fun array_inv!13404 (array!36722) Bool)

(assert (=> start!53924 (array_inv!13404 a!2986)))

(declare-fun b!587985 () Bool)

(declare-fun e!335797 () Bool)

(assert (=> b!587985 (= e!335797 (not true))))

(declare-fun e!335795 () Bool)

(assert (=> b!587985 e!335795))

(declare-fun res!375766 () Bool)

(assert (=> b!587985 (=> (not res!375766) (not e!335795))))

(declare-datatypes ((SeekEntryResult!6077 0))(
  ( (MissingZero!6077 (index!26538 (_ BitVec 32))) (Found!6077 (index!26539 (_ BitVec 32))) (Intermediate!6077 (undefined!6889 Bool) (index!26540 (_ BitVec 32)) (x!55366 (_ BitVec 32))) (Undefined!6077) (MissingVacant!6077 (index!26541 (_ BitVec 32))) )
))
(declare-fun lt!266635 () SeekEntryResult!6077)

(declare-fun lt!266633 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36722 (_ BitVec 32)) SeekEntryResult!6077)

(assert (=> b!587985 (= res!375766 (= lt!266635 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266633 vacantSpotIndex!68 (select (store (arr!17630 a!2986) i!1108 k!1786) j!136) (array!36723 (store (arr!17630 a!2986) i!1108 k!1786) (size!17994 a!2986)) mask!3053)))))

(assert (=> b!587985 (= lt!266635 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266633 vacantSpotIndex!68 (select (arr!17630 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18278 0))(
  ( (Unit!18279) )
))
(declare-fun lt!266634 () Unit!18278)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36722 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18278)

(assert (=> b!587985 (= lt!266634 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266633 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587985 (= lt!266633 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587986 () Bool)

(declare-fun res!375767 () Bool)

(assert (=> b!587986 (=> (not res!375767) (not e!335796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587986 (= res!375767 (validKeyInArray!0 (select (arr!17630 a!2986) j!136)))))

(declare-fun b!587987 () Bool)

(assert (=> b!587987 (= e!335796 e!335793)))

(declare-fun res!375768 () Bool)

(assert (=> b!587987 (=> (not res!375768) (not e!335793))))

(declare-fun lt!266636 () SeekEntryResult!6077)

(assert (=> b!587987 (= res!375768 (or (= lt!266636 (MissingZero!6077 i!1108)) (= lt!266636 (MissingVacant!6077 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36722 (_ BitVec 32)) SeekEntryResult!6077)

(assert (=> b!587987 (= lt!266636 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587988 () Bool)

(declare-fun res!375770 () Bool)

(assert (=> b!587988 (=> (not res!375770) (not e!335796))))

(assert (=> b!587988 (= res!375770 (validKeyInArray!0 k!1786))))

(declare-fun b!587989 () Bool)

(assert (=> b!587989 (= e!335793 e!335797)))

(declare-fun res!375775 () Bool)

(assert (=> b!587989 (=> (not res!375775) (not e!335797))))

(declare-fun lt!266632 () SeekEntryResult!6077)

(assert (=> b!587989 (= res!375775 (and (= lt!266632 (Found!6077 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17630 a!2986) index!984) (select (arr!17630 a!2986) j!136))) (not (= (select (arr!17630 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587989 (= lt!266632 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17630 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587990 () Bool)

(assert (=> b!587990 (= e!335795 (= lt!266632 lt!266635))))

(assert (= (and start!53924 res!375769) b!587980))

(assert (= (and b!587980 res!375771) b!587986))

(assert (= (and b!587986 res!375767) b!587988))

(assert (= (and b!587988 res!375770) b!587984))

(assert (= (and b!587984 res!375772) b!587987))

(assert (= (and b!587987 res!375768) b!587982))

(assert (= (and b!587982 res!375773) b!587981))

(assert (= (and b!587981 res!375774) b!587983))

(assert (= (and b!587983 res!375776) b!587989))

(assert (= (and b!587989 res!375775) b!587985))

(assert (= (and b!587985 res!375766) b!587990))

(declare-fun m!566543 () Bool)

(assert (=> b!587984 m!566543))

(declare-fun m!566545 () Bool)

(assert (=> b!587989 m!566545))

(declare-fun m!566547 () Bool)

(assert (=> b!587989 m!566547))

(assert (=> b!587989 m!566547))

(declare-fun m!566549 () Bool)

(assert (=> b!587989 m!566549))

(declare-fun m!566551 () Bool)

(assert (=> b!587983 m!566551))

(declare-fun m!566553 () Bool)

(assert (=> b!587983 m!566553))

(declare-fun m!566555 () Bool)

(assert (=> b!587983 m!566555))

(declare-fun m!566557 () Bool)

(assert (=> b!587982 m!566557))

(assert (=> b!587985 m!566547))

(declare-fun m!566559 () Bool)

(assert (=> b!587985 m!566559))

(declare-fun m!566561 () Bool)

(assert (=> b!587985 m!566561))

(declare-fun m!566563 () Bool)

(assert (=> b!587985 m!566563))

(assert (=> b!587985 m!566547))

(assert (=> b!587985 m!566553))

(declare-fun m!566565 () Bool)

(assert (=> b!587985 m!566565))

(assert (=> b!587985 m!566563))

(declare-fun m!566567 () Bool)

(assert (=> b!587985 m!566567))

(assert (=> b!587986 m!566547))

(assert (=> b!587986 m!566547))

(declare-fun m!566569 () Bool)

(assert (=> b!587986 m!566569))

(declare-fun m!566571 () Bool)

(assert (=> b!587987 m!566571))

(declare-fun m!566573 () Bool)

(assert (=> start!53924 m!566573))

(declare-fun m!566575 () Bool)

(assert (=> start!53924 m!566575))

(declare-fun m!566577 () Bool)

(assert (=> b!587988 m!566577))

(declare-fun m!566579 () Bool)

(assert (=> b!587981 m!566579))

(push 1)

(assert (not b!587981))

(assert (not b!587988))

(assert (not b!587982))

(assert (not b!587985))

(assert (not b!587987))

(assert (not b!587984))

(assert (not start!53924))

(assert (not b!587989))

(assert (not b!587986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

