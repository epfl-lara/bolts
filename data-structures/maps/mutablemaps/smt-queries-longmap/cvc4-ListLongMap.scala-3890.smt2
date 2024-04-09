; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53372 () Bool)

(assert start!53372)

(declare-fun b!580099 () Bool)

(declare-fun res!368065 () Bool)

(declare-fun e!333176 () Bool)

(assert (=> b!580099 (=> (not res!368065) (not e!333176))))

(declare-datatypes ((array!36227 0))(
  ( (array!36228 (arr!17384 (Array (_ BitVec 32) (_ BitVec 64))) (size!17748 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36227)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580099 (= res!368065 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580100 () Bool)

(declare-fun res!368072 () Bool)

(assert (=> b!580100 (=> (not res!368072) (not e!333176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580100 (= res!368072 (validKeyInArray!0 k!1786))))

(declare-fun b!580101 () Bool)

(declare-fun res!368064 () Bool)

(declare-fun e!333177 () Bool)

(assert (=> b!580101 (=> (not res!368064) (not e!333177))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36227 (_ BitVec 32)) Bool)

(assert (=> b!580101 (= res!368064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580102 () Bool)

(declare-fun res!368068 () Bool)

(assert (=> b!580102 (=> (not res!368068) (not e!333177))))

(declare-datatypes ((List!11478 0))(
  ( (Nil!11475) (Cons!11474 (h!12519 (_ BitVec 64)) (t!17714 List!11478)) )
))
(declare-fun arrayNoDuplicates!0 (array!36227 (_ BitVec 32) List!11478) Bool)

(assert (=> b!580102 (= res!368068 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11475))))

(declare-fun res!368067 () Bool)

(assert (=> start!53372 (=> (not res!368067) (not e!333176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53372 (= res!368067 (validMask!0 mask!3053))))

(assert (=> start!53372 e!333176))

(assert (=> start!53372 true))

(declare-fun array_inv!13158 (array!36227) Bool)

(assert (=> start!53372 (array_inv!13158 a!2986)))

(declare-fun b!580098 () Bool)

(assert (=> b!580098 (= e!333176 e!333177)))

(declare-fun res!368070 () Bool)

(assert (=> b!580098 (=> (not res!368070) (not e!333177))))

(declare-datatypes ((SeekEntryResult!5831 0))(
  ( (MissingZero!5831 (index!25551 (_ BitVec 32))) (Found!5831 (index!25552 (_ BitVec 32))) (Intermediate!5831 (undefined!6643 Bool) (index!25553 (_ BitVec 32)) (x!54455 (_ BitVec 32))) (Undefined!5831) (MissingVacant!5831 (index!25554 (_ BitVec 32))) )
))
(declare-fun lt!264634 () SeekEntryResult!5831)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580098 (= res!368070 (or (= lt!264634 (MissingZero!5831 i!1108)) (= lt!264634 (MissingVacant!5831 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36227 (_ BitVec 32)) SeekEntryResult!5831)

(assert (=> b!580098 (= lt!264634 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580103 () Bool)

(declare-fun res!368066 () Bool)

(assert (=> b!580103 (=> (not res!368066) (not e!333176))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580103 (= res!368066 (validKeyInArray!0 (select (arr!17384 a!2986) j!136)))))

(declare-fun b!580104 () Bool)

(declare-fun res!368071 () Bool)

(assert (=> b!580104 (=> (not res!368071) (not e!333176))))

(assert (=> b!580104 (= res!368071 (and (= (size!17748 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17748 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17748 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580105 () Bool)

(assert (=> b!580105 (= e!333177 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264635 () SeekEntryResult!5831)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36227 (_ BitVec 32)) SeekEntryResult!5831)

(assert (=> b!580105 (= lt!264635 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17384 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580106 () Bool)

(declare-fun res!368069 () Bool)

(assert (=> b!580106 (=> (not res!368069) (not e!333177))))

(assert (=> b!580106 (= res!368069 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17384 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17384 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53372 res!368067) b!580104))

(assert (= (and b!580104 res!368071) b!580103))

(assert (= (and b!580103 res!368066) b!580100))

(assert (= (and b!580100 res!368072) b!580099))

(assert (= (and b!580099 res!368065) b!580098))

(assert (= (and b!580098 res!368070) b!580101))

(assert (= (and b!580101 res!368064) b!580102))

(assert (= (and b!580102 res!368068) b!580106))

(assert (= (and b!580106 res!368069) b!580105))

(declare-fun m!558737 () Bool)

(assert (=> b!580101 m!558737))

(declare-fun m!558739 () Bool)

(assert (=> b!580098 m!558739))

(declare-fun m!558741 () Bool)

(assert (=> b!580103 m!558741))

(assert (=> b!580103 m!558741))

(declare-fun m!558743 () Bool)

(assert (=> b!580103 m!558743))

(declare-fun m!558745 () Bool)

(assert (=> b!580106 m!558745))

(declare-fun m!558747 () Bool)

(assert (=> b!580106 m!558747))

(declare-fun m!558749 () Bool)

(assert (=> b!580106 m!558749))

(declare-fun m!558751 () Bool)

(assert (=> b!580100 m!558751))

(declare-fun m!558753 () Bool)

(assert (=> b!580102 m!558753))

(assert (=> b!580105 m!558741))

(assert (=> b!580105 m!558741))

(declare-fun m!558755 () Bool)

(assert (=> b!580105 m!558755))

(declare-fun m!558757 () Bool)

(assert (=> start!53372 m!558757))

(declare-fun m!558759 () Bool)

(assert (=> start!53372 m!558759))

(declare-fun m!558761 () Bool)

(assert (=> b!580099 m!558761))

(push 1)

(assert (not b!580103))

