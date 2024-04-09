; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53768 () Bool)

(assert start!53768)

(declare-fun b!586144 () Bool)

(declare-fun res!374113 () Bool)

(declare-fun e!335130 () Bool)

(assert (=> b!586144 (=> (not res!374113) (not e!335130))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36623 0))(
  ( (array!36624 (arr!17582 (Array (_ BitVec 32) (_ BitVec 64))) (size!17946 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36623)

(declare-datatypes ((SeekEntryResult!6029 0))(
  ( (MissingZero!6029 (index!26343 (_ BitVec 32))) (Found!6029 (index!26344 (_ BitVec 32))) (Intermediate!6029 (undefined!6841 Bool) (index!26345 (_ BitVec 32)) (x!55181 (_ BitVec 32))) (Undefined!6029) (MissingVacant!6029 (index!26346 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36623 (_ BitVec 32)) SeekEntryResult!6029)

(assert (=> b!586144 (= res!374113 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17582 a!2986) j!136) a!2986 mask!3053) (Found!6029 j!136)))))

(declare-fun b!586145 () Bool)

(declare-fun res!374111 () Bool)

(declare-fun e!335131 () Bool)

(assert (=> b!586145 (=> (not res!374111) (not e!335131))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586145 (= res!374111 (validKeyInArray!0 k!1786))))

(declare-fun b!586146 () Bool)

(declare-fun res!374115 () Bool)

(assert (=> b!586146 (=> (not res!374115) (not e!335131))))

(declare-fun arrayContainsKey!0 (array!36623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586146 (= res!374115 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586147 () Bool)

(declare-fun res!374112 () Bool)

(assert (=> b!586147 (=> (not res!374112) (not e!335130))))

(declare-datatypes ((List!11676 0))(
  ( (Nil!11673) (Cons!11672 (h!12717 (_ BitVec 64)) (t!17912 List!11676)) )
))
(declare-fun arrayNoDuplicates!0 (array!36623 (_ BitVec 32) List!11676) Bool)

(assert (=> b!586147 (= res!374112 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11673))))

(declare-fun res!374119 () Bool)

(assert (=> start!53768 (=> (not res!374119) (not e!335131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53768 (= res!374119 (validMask!0 mask!3053))))

(assert (=> start!53768 e!335131))

(assert (=> start!53768 true))

(declare-fun array_inv!13356 (array!36623) Bool)

(assert (=> start!53768 (array_inv!13356 a!2986)))

(declare-fun b!586148 () Bool)

(declare-fun res!374114 () Bool)

(assert (=> b!586148 (=> (not res!374114) (not e!335131))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586148 (= res!374114 (and (= (size!17946 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17946 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17946 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586149 () Bool)

(declare-fun res!374117 () Bool)

(assert (=> b!586149 (=> (not res!374117) (not e!335130))))

(assert (=> b!586149 (= res!374117 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17582 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17582 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586150 () Bool)

(assert (=> b!586150 (= e!335130 (not true))))

(declare-fun lt!266028 () (_ BitVec 32))

(assert (=> b!586150 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266028 vacantSpotIndex!68 (select (arr!17582 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266028 vacantSpotIndex!68 (select (store (arr!17582 a!2986) i!1108 k!1786) j!136) (array!36624 (store (arr!17582 a!2986) i!1108 k!1786) (size!17946 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18182 0))(
  ( (Unit!18183) )
))
(declare-fun lt!266029 () Unit!18182)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36623 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18182)

(assert (=> b!586150 (= lt!266029 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266028 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586150 (= lt!266028 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586151 () Bool)

(declare-fun res!374116 () Bool)

(assert (=> b!586151 (=> (not res!374116) (not e!335130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36623 (_ BitVec 32)) Bool)

(assert (=> b!586151 (= res!374116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586152 () Bool)

(assert (=> b!586152 (= e!335131 e!335130)))

(declare-fun res!374110 () Bool)

(assert (=> b!586152 (=> (not res!374110) (not e!335130))))

(declare-fun lt!266030 () SeekEntryResult!6029)

(assert (=> b!586152 (= res!374110 (or (= lt!266030 (MissingZero!6029 i!1108)) (= lt!266030 (MissingVacant!6029 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36623 (_ BitVec 32)) SeekEntryResult!6029)

(assert (=> b!586152 (= lt!266030 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586153 () Bool)

(declare-fun res!374118 () Bool)

(assert (=> b!586153 (=> (not res!374118) (not e!335131))))

(assert (=> b!586153 (= res!374118 (validKeyInArray!0 (select (arr!17582 a!2986) j!136)))))

(declare-fun b!586154 () Bool)

(declare-fun res!374120 () Bool)

(assert (=> b!586154 (=> (not res!374120) (not e!335130))))

(assert (=> b!586154 (= res!374120 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17582 a!2986) index!984) (select (arr!17582 a!2986) j!136))) (not (= (select (arr!17582 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53768 res!374119) b!586148))

(assert (= (and b!586148 res!374114) b!586153))

(assert (= (and b!586153 res!374118) b!586145))

(assert (= (and b!586145 res!374111) b!586146))

(assert (= (and b!586146 res!374115) b!586152))

(assert (= (and b!586152 res!374110) b!586151))

(assert (= (and b!586151 res!374116) b!586147))

(assert (= (and b!586147 res!374112) b!586149))

(assert (= (and b!586149 res!374117) b!586144))

(assert (= (and b!586144 res!374113) b!586154))

(assert (= (and b!586154 res!374120) b!586150))

(declare-fun m!564539 () Bool)

(assert (=> b!586147 m!564539))

(declare-fun m!564541 () Bool)

(assert (=> b!586151 m!564541))

(declare-fun m!564543 () Bool)

(assert (=> b!586153 m!564543))

(assert (=> b!586153 m!564543))

(declare-fun m!564545 () Bool)

(assert (=> b!586153 m!564545))

(declare-fun m!564547 () Bool)

(assert (=> b!586150 m!564547))

(declare-fun m!564549 () Bool)

(assert (=> b!586150 m!564549))

(declare-fun m!564551 () Bool)

(assert (=> b!586150 m!564551))

(assert (=> b!586150 m!564543))

(declare-fun m!564553 () Bool)

(assert (=> b!586150 m!564553))

(assert (=> b!586150 m!564549))

(declare-fun m!564555 () Bool)

(assert (=> b!586150 m!564555))

(assert (=> b!586150 m!564543))

(declare-fun m!564557 () Bool)

(assert (=> b!586150 m!564557))

(declare-fun m!564559 () Bool)

(assert (=> start!53768 m!564559))

(declare-fun m!564561 () Bool)

(assert (=> start!53768 m!564561))

(declare-fun m!564563 () Bool)

(assert (=> b!586146 m!564563))

(declare-fun m!564565 () Bool)

(assert (=> b!586149 m!564565))

(assert (=> b!586149 m!564553))

(declare-fun m!564567 () Bool)

(assert (=> b!586149 m!564567))

(declare-fun m!564569 () Bool)

(assert (=> b!586152 m!564569))

(declare-fun m!564571 () Bool)

(assert (=> b!586154 m!564571))

(assert (=> b!586154 m!564543))

(assert (=> b!586144 m!564543))

(assert (=> b!586144 m!564543))

(declare-fun m!564573 () Bool)

(assert (=> b!586144 m!564573))

(declare-fun m!564575 () Bool)

(assert (=> b!586145 m!564575))

(push 1)

