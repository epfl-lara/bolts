; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53798 () Bool)

(assert start!53798)

(declare-fun b!586639 () Bool)

(declare-fun res!374611 () Bool)

(declare-fun e!335266 () Bool)

(assert (=> b!586639 (=> (not res!374611) (not e!335266))))

(declare-datatypes ((array!36653 0))(
  ( (array!36654 (arr!17597 (Array (_ BitVec 32) (_ BitVec 64))) (size!17961 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36653)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586639 (= res!374611 (validKeyInArray!0 (select (arr!17597 a!2986) j!136)))))

(declare-fun b!586640 () Bool)

(declare-fun res!374608 () Bool)

(declare-fun e!335264 () Bool)

(assert (=> b!586640 (=> (not res!374608) (not e!335264))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586640 (= res!374608 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17597 a!2986) index!984) (select (arr!17597 a!2986) j!136))) (not (= (select (arr!17597 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586641 () Bool)

(declare-fun res!374613 () Bool)

(assert (=> b!586641 (=> (not res!374613) (not e!335264))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36653 (_ BitVec 32)) Bool)

(assert (=> b!586641 (= res!374613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586642 () Bool)

(declare-fun res!374605 () Bool)

(assert (=> b!586642 (=> (not res!374605) (not e!335264))))

(declare-datatypes ((List!11691 0))(
  ( (Nil!11688) (Cons!11687 (h!12732 (_ BitVec 64)) (t!17927 List!11691)) )
))
(declare-fun arrayNoDuplicates!0 (array!36653 (_ BitVec 32) List!11691) Bool)

(assert (=> b!586642 (= res!374605 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11688))))

(declare-fun b!586644 () Bool)

(declare-fun res!374606 () Bool)

(assert (=> b!586644 (=> (not res!374606) (not e!335266))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!586644 (= res!374606 (validKeyInArray!0 k!1786))))

(declare-fun b!586645 () Bool)

(declare-fun res!374612 () Bool)

(assert (=> b!586645 (=> (not res!374612) (not e!335266))))

(declare-fun arrayContainsKey!0 (array!36653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586645 (= res!374612 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586646 () Bool)

(assert (=> b!586646 (= e!335264 (not true))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!266165 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6044 0))(
  ( (MissingZero!6044 (index!26403 (_ BitVec 32))) (Found!6044 (index!26404 (_ BitVec 32))) (Intermediate!6044 (undefined!6856 Bool) (index!26405 (_ BitVec 32)) (x!55236 (_ BitVec 32))) (Undefined!6044) (MissingVacant!6044 (index!26406 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36653 (_ BitVec 32)) SeekEntryResult!6044)

(assert (=> b!586646 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266165 vacantSpotIndex!68 (select (arr!17597 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266165 vacantSpotIndex!68 (select (store (arr!17597 a!2986) i!1108 k!1786) j!136) (array!36654 (store (arr!17597 a!2986) i!1108 k!1786) (size!17961 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18212 0))(
  ( (Unit!18213) )
))
(declare-fun lt!266163 () Unit!18212)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36653 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18212)

(assert (=> b!586646 (= lt!266163 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266165 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586646 (= lt!266165 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586647 () Bool)

(declare-fun res!374609 () Bool)

(assert (=> b!586647 (=> (not res!374609) (not e!335264))))

(assert (=> b!586647 (= res!374609 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17597 a!2986) j!136) a!2986 mask!3053) (Found!6044 j!136)))))

(declare-fun b!586648 () Bool)

(declare-fun res!374615 () Bool)

(assert (=> b!586648 (=> (not res!374615) (not e!335264))))

(assert (=> b!586648 (= res!374615 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17597 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17597 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586649 () Bool)

(declare-fun res!374607 () Bool)

(assert (=> b!586649 (=> (not res!374607) (not e!335266))))

(assert (=> b!586649 (= res!374607 (and (= (size!17961 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17961 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17961 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!374614 () Bool)

(assert (=> start!53798 (=> (not res!374614) (not e!335266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53798 (= res!374614 (validMask!0 mask!3053))))

(assert (=> start!53798 e!335266))

(assert (=> start!53798 true))

(declare-fun array_inv!13371 (array!36653) Bool)

(assert (=> start!53798 (array_inv!13371 a!2986)))

(declare-fun b!586643 () Bool)

(assert (=> b!586643 (= e!335266 e!335264)))

(declare-fun res!374610 () Bool)

(assert (=> b!586643 (=> (not res!374610) (not e!335264))))

(declare-fun lt!266164 () SeekEntryResult!6044)

(assert (=> b!586643 (= res!374610 (or (= lt!266164 (MissingZero!6044 i!1108)) (= lt!266164 (MissingVacant!6044 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36653 (_ BitVec 32)) SeekEntryResult!6044)

(assert (=> b!586643 (= lt!266164 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53798 res!374614) b!586649))

(assert (= (and b!586649 res!374607) b!586639))

(assert (= (and b!586639 res!374611) b!586644))

(assert (= (and b!586644 res!374606) b!586645))

(assert (= (and b!586645 res!374612) b!586643))

(assert (= (and b!586643 res!374610) b!586641))

(assert (= (and b!586641 res!374613) b!586642))

(assert (= (and b!586642 res!374605) b!586648))

(assert (= (and b!586648 res!374615) b!586647))

(assert (= (and b!586647 res!374609) b!586640))

(assert (= (and b!586640 res!374608) b!586646))

(declare-fun m!565109 () Bool)

(assert (=> b!586643 m!565109))

(declare-fun m!565111 () Bool)

(assert (=> b!586647 m!565111))

(assert (=> b!586647 m!565111))

(declare-fun m!565113 () Bool)

(assert (=> b!586647 m!565113))

(declare-fun m!565115 () Bool)

(assert (=> b!586645 m!565115))

(assert (=> b!586639 m!565111))

(assert (=> b!586639 m!565111))

(declare-fun m!565117 () Bool)

(assert (=> b!586639 m!565117))

(declare-fun m!565119 () Bool)

(assert (=> b!586644 m!565119))

(declare-fun m!565121 () Bool)

(assert (=> b!586646 m!565121))

(declare-fun m!565123 () Bool)

(assert (=> b!586646 m!565123))

(assert (=> b!586646 m!565111))

(declare-fun m!565125 () Bool)

(assert (=> b!586646 m!565125))

(assert (=> b!586646 m!565123))

(declare-fun m!565127 () Bool)

(assert (=> b!586646 m!565127))

(declare-fun m!565129 () Bool)

(assert (=> b!586646 m!565129))

(assert (=> b!586646 m!565111))

(declare-fun m!565131 () Bool)

(assert (=> b!586646 m!565131))

(declare-fun m!565133 () Bool)

(assert (=> b!586641 m!565133))

(declare-fun m!565135 () Bool)

(assert (=> b!586642 m!565135))

(declare-fun m!565137 () Bool)

(assert (=> b!586640 m!565137))

(assert (=> b!586640 m!565111))

(declare-fun m!565139 () Bool)

(assert (=> start!53798 m!565139))

(declare-fun m!565141 () Bool)

(assert (=> start!53798 m!565141))

(declare-fun m!565143 () Bool)

(assert (=> b!586648 m!565143))

(assert (=> b!586648 m!565125))

(declare-fun m!565145 () Bool)

(assert (=> b!586648 m!565145))

(push 1)

(assert (not b!586645))

