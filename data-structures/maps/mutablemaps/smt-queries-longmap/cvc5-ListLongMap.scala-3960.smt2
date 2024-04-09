; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53788 () Bool)

(assert start!53788)

(declare-fun b!586474 () Bool)

(declare-fun e!335220 () Bool)

(declare-fun e!335219 () Bool)

(assert (=> b!586474 (= e!335220 e!335219)))

(declare-fun res!374447 () Bool)

(assert (=> b!586474 (=> (not res!374447) (not e!335219))))

(declare-datatypes ((SeekEntryResult!6039 0))(
  ( (MissingZero!6039 (index!26383 (_ BitVec 32))) (Found!6039 (index!26384 (_ BitVec 32))) (Intermediate!6039 (undefined!6851 Bool) (index!26385 (_ BitVec 32)) (x!55223 (_ BitVec 32))) (Undefined!6039) (MissingVacant!6039 (index!26386 (_ BitVec 32))) )
))
(declare-fun lt!266120 () SeekEntryResult!6039)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586474 (= res!374447 (or (= lt!266120 (MissingZero!6039 i!1108)) (= lt!266120 (MissingVacant!6039 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36643 0))(
  ( (array!36644 (arr!17592 (Array (_ BitVec 32) (_ BitVec 64))) (size!17956 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36643)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36643 (_ BitVec 32)) SeekEntryResult!6039)

(assert (=> b!586474 (= lt!266120 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586475 () Bool)

(declare-fun res!374449 () Bool)

(assert (=> b!586475 (=> (not res!374449) (not e!335219))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586475 (= res!374449 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17592 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17592 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!374448 () Bool)

(assert (=> start!53788 (=> (not res!374448) (not e!335220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53788 (= res!374448 (validMask!0 mask!3053))))

(assert (=> start!53788 e!335220))

(assert (=> start!53788 true))

(declare-fun array_inv!13366 (array!36643) Bool)

(assert (=> start!53788 (array_inv!13366 a!2986)))

(declare-fun b!586476 () Bool)

(assert (=> b!586476 (= e!335219 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!266119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36643 (_ BitVec 32)) SeekEntryResult!6039)

(assert (=> b!586476 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266119 vacantSpotIndex!68 (select (arr!17592 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266119 vacantSpotIndex!68 (select (store (arr!17592 a!2986) i!1108 k!1786) j!136) (array!36644 (store (arr!17592 a!2986) i!1108 k!1786) (size!17956 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18202 0))(
  ( (Unit!18203) )
))
(declare-fun lt!266118 () Unit!18202)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18202)

(assert (=> b!586476 (= lt!266118 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266119 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586476 (= lt!266119 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586477 () Bool)

(declare-fun res!374450 () Bool)

(assert (=> b!586477 (=> (not res!374450) (not e!335220))))

(declare-fun arrayContainsKey!0 (array!36643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586477 (= res!374450 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586478 () Bool)

(declare-fun res!374441 () Bool)

(assert (=> b!586478 (=> (not res!374441) (not e!335219))))

(assert (=> b!586478 (= res!374441 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17592 a!2986) index!984) (select (arr!17592 a!2986) j!136))) (not (= (select (arr!17592 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586479 () Bool)

(declare-fun res!374444 () Bool)

(assert (=> b!586479 (=> (not res!374444) (not e!335220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586479 (= res!374444 (validKeyInArray!0 (select (arr!17592 a!2986) j!136)))))

(declare-fun b!586480 () Bool)

(declare-fun res!374440 () Bool)

(assert (=> b!586480 (=> (not res!374440) (not e!335220))))

(assert (=> b!586480 (= res!374440 (validKeyInArray!0 k!1786))))

(declare-fun b!586481 () Bool)

(declare-fun res!374446 () Bool)

(assert (=> b!586481 (=> (not res!374446) (not e!335219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36643 (_ BitVec 32)) Bool)

(assert (=> b!586481 (= res!374446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586482 () Bool)

(declare-fun res!374442 () Bool)

(assert (=> b!586482 (=> (not res!374442) (not e!335219))))

(assert (=> b!586482 (= res!374442 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17592 a!2986) j!136) a!2986 mask!3053) (Found!6039 j!136)))))

(declare-fun b!586483 () Bool)

(declare-fun res!374443 () Bool)

(assert (=> b!586483 (=> (not res!374443) (not e!335219))))

(declare-datatypes ((List!11686 0))(
  ( (Nil!11683) (Cons!11682 (h!12727 (_ BitVec 64)) (t!17922 List!11686)) )
))
(declare-fun arrayNoDuplicates!0 (array!36643 (_ BitVec 32) List!11686) Bool)

(assert (=> b!586483 (= res!374443 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11683))))

(declare-fun b!586484 () Bool)

(declare-fun res!374445 () Bool)

(assert (=> b!586484 (=> (not res!374445) (not e!335220))))

(assert (=> b!586484 (= res!374445 (and (= (size!17956 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17956 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17956 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53788 res!374448) b!586484))

(assert (= (and b!586484 res!374445) b!586479))

(assert (= (and b!586479 res!374444) b!586480))

(assert (= (and b!586480 res!374440) b!586477))

(assert (= (and b!586477 res!374450) b!586474))

(assert (= (and b!586474 res!374447) b!586481))

(assert (= (and b!586481 res!374446) b!586483))

(assert (= (and b!586483 res!374443) b!586475))

(assert (= (and b!586475 res!374449) b!586482))

(assert (= (and b!586482 res!374442) b!586478))

(assert (= (and b!586478 res!374441) b!586476))

(declare-fun m!564919 () Bool)

(assert (=> b!586476 m!564919))

(declare-fun m!564921 () Bool)

(assert (=> b!586476 m!564921))

(declare-fun m!564923 () Bool)

(assert (=> b!586476 m!564923))

(assert (=> b!586476 m!564923))

(declare-fun m!564925 () Bool)

(assert (=> b!586476 m!564925))

(declare-fun m!564927 () Bool)

(assert (=> b!586476 m!564927))

(assert (=> b!586476 m!564921))

(declare-fun m!564929 () Bool)

(assert (=> b!586476 m!564929))

(declare-fun m!564931 () Bool)

(assert (=> b!586476 m!564931))

(declare-fun m!564933 () Bool)

(assert (=> b!586475 m!564933))

(assert (=> b!586475 m!564927))

(declare-fun m!564935 () Bool)

(assert (=> b!586475 m!564935))

(declare-fun m!564937 () Bool)

(assert (=> b!586483 m!564937))

(declare-fun m!564939 () Bool)

(assert (=> b!586477 m!564939))

(declare-fun m!564941 () Bool)

(assert (=> b!586474 m!564941))

(declare-fun m!564943 () Bool)

(assert (=> b!586481 m!564943))

(declare-fun m!564945 () Bool)

(assert (=> start!53788 m!564945))

(declare-fun m!564947 () Bool)

(assert (=> start!53788 m!564947))

(declare-fun m!564949 () Bool)

(assert (=> b!586478 m!564949))

(assert (=> b!586478 m!564923))

(assert (=> b!586482 m!564923))

(assert (=> b!586482 m!564923))

(declare-fun m!564951 () Bool)

(assert (=> b!586482 m!564951))

(declare-fun m!564953 () Bool)

(assert (=> b!586480 m!564953))

(assert (=> b!586479 m!564923))

(assert (=> b!586479 m!564923))

(declare-fun m!564955 () Bool)

(assert (=> b!586479 m!564955))

(push 1)

(assert (not b!586476))

(assert (not b!586480))

(assert (not b!586474))

(assert (not start!53788))

(assert (not b!586481))

(assert (not b!586482))

(assert (not b!586479))

(assert (not b!586483))

(assert (not b!586477))

(check-sat)

(pop 1)

