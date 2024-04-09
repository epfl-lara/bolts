; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53922 () Bool)

(assert start!53922)

(declare-fun b!587947 () Bool)

(declare-fun res!375736 () Bool)

(declare-fun e!335781 () Bool)

(assert (=> b!587947 (=> (not res!375736) (not e!335781))))

(declare-datatypes ((array!36720 0))(
  ( (array!36721 (arr!17629 (Array (_ BitVec 32) (_ BitVec 64))) (size!17993 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36720)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587947 (= res!375736 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587948 () Bool)

(declare-fun e!335778 () Bool)

(declare-fun e!335780 () Bool)

(assert (=> b!587948 (= e!335778 e!335780)))

(declare-fun res!375743 () Bool)

(assert (=> b!587948 (=> (not res!375743) (not e!335780))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6076 0))(
  ( (MissingZero!6076 (index!26534 (_ BitVec 32))) (Found!6076 (index!26535 (_ BitVec 32))) (Intermediate!6076 (undefined!6888 Bool) (index!26536 (_ BitVec 32)) (x!55365 (_ BitVec 32))) (Undefined!6076) (MissingVacant!6076 (index!26537 (_ BitVec 32))) )
))
(declare-fun lt!266620 () SeekEntryResult!6076)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587948 (= res!375743 (and (= lt!266620 (Found!6076 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17629 a!2986) index!984) (select (arr!17629 a!2986) j!136))) (not (= (select (arr!17629 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36720 (_ BitVec 32)) SeekEntryResult!6076)

(assert (=> b!587948 (= lt!266620 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17629 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587949 () Bool)

(declare-fun res!375740 () Bool)

(assert (=> b!587949 (=> (not res!375740) (not e!335781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587949 (= res!375740 (validKeyInArray!0 (select (arr!17629 a!2986) j!136)))))

(declare-fun b!587950 () Bool)

(declare-fun res!375741 () Bool)

(assert (=> b!587950 (=> (not res!375741) (not e!335778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36720 (_ BitVec 32)) Bool)

(assert (=> b!587950 (= res!375741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587951 () Bool)

(assert (=> b!587951 (= e!335780 (not true))))

(declare-fun e!335779 () Bool)

(assert (=> b!587951 e!335779))

(declare-fun res!375742 () Bool)

(assert (=> b!587951 (=> (not res!375742) (not e!335779))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!266619 () SeekEntryResult!6076)

(declare-fun lt!266621 () (_ BitVec 32))

(assert (=> b!587951 (= res!375742 (= lt!266619 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266621 vacantSpotIndex!68 (select (store (arr!17629 a!2986) i!1108 k0!1786) j!136) (array!36721 (store (arr!17629 a!2986) i!1108 k0!1786) (size!17993 a!2986)) mask!3053)))))

(assert (=> b!587951 (= lt!266619 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266621 vacantSpotIndex!68 (select (arr!17629 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18276 0))(
  ( (Unit!18277) )
))
(declare-fun lt!266618 () Unit!18276)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36720 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18276)

(assert (=> b!587951 (= lt!266618 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266621 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587951 (= lt!266621 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587952 () Bool)

(assert (=> b!587952 (= e!335781 e!335778)))

(declare-fun res!375738 () Bool)

(assert (=> b!587952 (=> (not res!375738) (not e!335778))))

(declare-fun lt!266617 () SeekEntryResult!6076)

(assert (=> b!587952 (= res!375738 (or (= lt!266617 (MissingZero!6076 i!1108)) (= lt!266617 (MissingVacant!6076 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36720 (_ BitVec 32)) SeekEntryResult!6076)

(assert (=> b!587952 (= lt!266617 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!375735 () Bool)

(assert (=> start!53922 (=> (not res!375735) (not e!335781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53922 (= res!375735 (validMask!0 mask!3053))))

(assert (=> start!53922 e!335781))

(assert (=> start!53922 true))

(declare-fun array_inv!13403 (array!36720) Bool)

(assert (=> start!53922 (array_inv!13403 a!2986)))

(declare-fun b!587953 () Bool)

(declare-fun res!375733 () Bool)

(assert (=> b!587953 (=> (not res!375733) (not e!335778))))

(assert (=> b!587953 (= res!375733 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17629 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17629 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587954 () Bool)

(assert (=> b!587954 (= e!335779 (= lt!266620 lt!266619))))

(declare-fun b!587955 () Bool)

(declare-fun res!375737 () Bool)

(assert (=> b!587955 (=> (not res!375737) (not e!335781))))

(assert (=> b!587955 (= res!375737 (validKeyInArray!0 k0!1786))))

(declare-fun b!587956 () Bool)

(declare-fun res!375739 () Bool)

(assert (=> b!587956 (=> (not res!375739) (not e!335781))))

(assert (=> b!587956 (= res!375739 (and (= (size!17993 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17993 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17993 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587957 () Bool)

(declare-fun res!375734 () Bool)

(assert (=> b!587957 (=> (not res!375734) (not e!335778))))

(declare-datatypes ((List!11723 0))(
  ( (Nil!11720) (Cons!11719 (h!12764 (_ BitVec 64)) (t!17959 List!11723)) )
))
(declare-fun arrayNoDuplicates!0 (array!36720 (_ BitVec 32) List!11723) Bool)

(assert (=> b!587957 (= res!375734 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11720))))

(assert (= (and start!53922 res!375735) b!587956))

(assert (= (and b!587956 res!375739) b!587949))

(assert (= (and b!587949 res!375740) b!587955))

(assert (= (and b!587955 res!375737) b!587947))

(assert (= (and b!587947 res!375736) b!587952))

(assert (= (and b!587952 res!375738) b!587950))

(assert (= (and b!587950 res!375741) b!587957))

(assert (= (and b!587957 res!375734) b!587953))

(assert (= (and b!587953 res!375733) b!587948))

(assert (= (and b!587948 res!375743) b!587951))

(assert (= (and b!587951 res!375742) b!587954))

(declare-fun m!566505 () Bool)

(assert (=> b!587948 m!566505))

(declare-fun m!566507 () Bool)

(assert (=> b!587948 m!566507))

(assert (=> b!587948 m!566507))

(declare-fun m!566509 () Bool)

(assert (=> b!587948 m!566509))

(declare-fun m!566511 () Bool)

(assert (=> b!587955 m!566511))

(declare-fun m!566513 () Bool)

(assert (=> b!587947 m!566513))

(declare-fun m!566515 () Bool)

(assert (=> b!587951 m!566515))

(declare-fun m!566517 () Bool)

(assert (=> b!587951 m!566517))

(assert (=> b!587951 m!566507))

(assert (=> b!587951 m!566507))

(declare-fun m!566519 () Bool)

(assert (=> b!587951 m!566519))

(declare-fun m!566521 () Bool)

(assert (=> b!587951 m!566521))

(declare-fun m!566523 () Bool)

(assert (=> b!587951 m!566523))

(assert (=> b!587951 m!566517))

(declare-fun m!566525 () Bool)

(assert (=> b!587951 m!566525))

(declare-fun m!566527 () Bool)

(assert (=> b!587950 m!566527))

(assert (=> b!587949 m!566507))

(assert (=> b!587949 m!566507))

(declare-fun m!566529 () Bool)

(assert (=> b!587949 m!566529))

(declare-fun m!566531 () Bool)

(assert (=> b!587957 m!566531))

(declare-fun m!566533 () Bool)

(assert (=> b!587952 m!566533))

(declare-fun m!566535 () Bool)

(assert (=> b!587953 m!566535))

(assert (=> b!587953 m!566523))

(declare-fun m!566537 () Bool)

(assert (=> b!587953 m!566537))

(declare-fun m!566539 () Bool)

(assert (=> start!53922 m!566539))

(declare-fun m!566541 () Bool)

(assert (=> start!53922 m!566541))

(check-sat (not b!587947) (not b!587951) (not b!587952) (not b!587957) (not b!587949) (not b!587950) (not b!587955) (not start!53922) (not b!587948))
