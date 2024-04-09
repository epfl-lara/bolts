; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53626 () Bool)

(assert start!53626)

(declare-fun b!583659 () Bool)

(declare-fun res!371630 () Bool)

(declare-fun e!334351 () Bool)

(assert (=> b!583659 (=> (not res!371630) (not e!334351))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583659 (= res!371630 (validKeyInArray!0 k!1786))))

(declare-fun res!371628 () Bool)

(assert (=> start!53626 (=> (not res!371628) (not e!334351))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53626 (= res!371628 (validMask!0 mask!3053))))

(assert (=> start!53626 e!334351))

(assert (=> start!53626 true))

(declare-datatypes ((array!36481 0))(
  ( (array!36482 (arr!17511 (Array (_ BitVec 32) (_ BitVec 64))) (size!17875 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36481)

(declare-fun array_inv!13285 (array!36481) Bool)

(assert (=> start!53626 (array_inv!13285 a!2986)))

(declare-fun b!583660 () Bool)

(declare-fun res!371632 () Bool)

(declare-fun e!334349 () Bool)

(assert (=> b!583660 (=> (not res!371632) (not e!334349))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583660 (= res!371632 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17511 a!2986) index!984) (select (arr!17511 a!2986) j!136))) (not (= (select (arr!17511 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583661 () Bool)

(declare-fun res!371634 () Bool)

(assert (=> b!583661 (=> (not res!371634) (not e!334349))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5958 0))(
  ( (MissingZero!5958 (index!26059 (_ BitVec 32))) (Found!5958 (index!26060 (_ BitVec 32))) (Intermediate!5958 (undefined!6770 Bool) (index!26061 (_ BitVec 32)) (x!54926 (_ BitVec 32))) (Undefined!5958) (MissingVacant!5958 (index!26062 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36481 (_ BitVec 32)) SeekEntryResult!5958)

(assert (=> b!583661 (= res!371634 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17511 a!2986) j!136) a!2986 mask!3053) (Found!5958 j!136)))))

(declare-fun b!583662 () Bool)

(declare-fun res!371629 () Bool)

(assert (=> b!583662 (=> (not res!371629) (not e!334351))))

(assert (=> b!583662 (= res!371629 (validKeyInArray!0 (select (arr!17511 a!2986) j!136)))))

(declare-fun b!583663 () Bool)

(declare-fun res!371635 () Bool)

(assert (=> b!583663 (=> (not res!371635) (not e!334349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36481 (_ BitVec 32)) Bool)

(assert (=> b!583663 (= res!371635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583664 () Bool)

(declare-fun e!334348 () Bool)

(assert (=> b!583664 (= e!334348 false)))

(declare-fun lt!265390 () (_ BitVec 32))

(declare-fun lt!265391 () SeekEntryResult!5958)

(assert (=> b!583664 (= lt!265391 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265390 vacantSpotIndex!68 (select (arr!17511 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583665 () Bool)

(assert (=> b!583665 (= e!334349 e!334348)))

(declare-fun res!371626 () Bool)

(assert (=> b!583665 (=> (not res!371626) (not e!334348))))

(assert (=> b!583665 (= res!371626 (and (bvsge lt!265390 #b00000000000000000000000000000000) (bvslt lt!265390 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583665 (= lt!265390 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583666 () Bool)

(declare-fun res!371636 () Bool)

(assert (=> b!583666 (=> (not res!371636) (not e!334349))))

(declare-datatypes ((List!11605 0))(
  ( (Nil!11602) (Cons!11601 (h!12646 (_ BitVec 64)) (t!17841 List!11605)) )
))
(declare-fun arrayNoDuplicates!0 (array!36481 (_ BitVec 32) List!11605) Bool)

(assert (=> b!583666 (= res!371636 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11602))))

(declare-fun b!583667 () Bool)

(declare-fun res!371627 () Bool)

(assert (=> b!583667 (=> (not res!371627) (not e!334349))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583667 (= res!371627 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17511 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17511 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583668 () Bool)

(assert (=> b!583668 (= e!334351 e!334349)))

(declare-fun res!371633 () Bool)

(assert (=> b!583668 (=> (not res!371633) (not e!334349))))

(declare-fun lt!265389 () SeekEntryResult!5958)

(assert (=> b!583668 (= res!371633 (or (= lt!265389 (MissingZero!5958 i!1108)) (= lt!265389 (MissingVacant!5958 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36481 (_ BitVec 32)) SeekEntryResult!5958)

(assert (=> b!583668 (= lt!265389 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583669 () Bool)

(declare-fun res!371625 () Bool)

(assert (=> b!583669 (=> (not res!371625) (not e!334351))))

(assert (=> b!583669 (= res!371625 (and (= (size!17875 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17875 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17875 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583670 () Bool)

(declare-fun res!371631 () Bool)

(assert (=> b!583670 (=> (not res!371631) (not e!334351))))

(declare-fun arrayContainsKey!0 (array!36481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583670 (= res!371631 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53626 res!371628) b!583669))

(assert (= (and b!583669 res!371625) b!583662))

(assert (= (and b!583662 res!371629) b!583659))

(assert (= (and b!583659 res!371630) b!583670))

(assert (= (and b!583670 res!371631) b!583668))

(assert (= (and b!583668 res!371633) b!583663))

(assert (= (and b!583663 res!371635) b!583666))

(assert (= (and b!583666 res!371636) b!583667))

(assert (= (and b!583667 res!371627) b!583661))

(assert (= (and b!583661 res!371634) b!583660))

(assert (= (and b!583660 res!371632) b!583665))

(assert (= (and b!583665 res!371626) b!583664))

(declare-fun m!562129 () Bool)

(assert (=> start!53626 m!562129))

(declare-fun m!562131 () Bool)

(assert (=> start!53626 m!562131))

(declare-fun m!562133 () Bool)

(assert (=> b!583668 m!562133))

(declare-fun m!562135 () Bool)

(assert (=> b!583662 m!562135))

(assert (=> b!583662 m!562135))

(declare-fun m!562137 () Bool)

(assert (=> b!583662 m!562137))

(assert (=> b!583661 m!562135))

(assert (=> b!583661 m!562135))

(declare-fun m!562139 () Bool)

(assert (=> b!583661 m!562139))

(declare-fun m!562141 () Bool)

(assert (=> b!583670 m!562141))

(declare-fun m!562143 () Bool)

(assert (=> b!583666 m!562143))

(declare-fun m!562145 () Bool)

(assert (=> b!583667 m!562145))

(declare-fun m!562147 () Bool)

(assert (=> b!583667 m!562147))

(declare-fun m!562149 () Bool)

(assert (=> b!583667 m!562149))

(declare-fun m!562151 () Bool)

(assert (=> b!583663 m!562151))

(declare-fun m!562153 () Bool)

(assert (=> b!583665 m!562153))

(declare-fun m!562155 () Bool)

(assert (=> b!583659 m!562155))

(assert (=> b!583664 m!562135))

(assert (=> b!583664 m!562135))

(declare-fun m!562157 () Bool)

(assert (=> b!583664 m!562157))

(declare-fun m!562159 () Bool)

(assert (=> b!583660 m!562159))

(assert (=> b!583660 m!562135))

(push 1)

