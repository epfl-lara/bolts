; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53674 () Bool)

(assert start!53674)

(declare-fun b!584523 () Bool)

(declare-fun res!372493 () Bool)

(declare-fun e!334637 () Bool)

(assert (=> b!584523 (=> (not res!372493) (not e!334637))))

(declare-datatypes ((array!36529 0))(
  ( (array!36530 (arr!17535 (Array (_ BitVec 32) (_ BitVec 64))) (size!17899 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36529)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584523 (= res!372493 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584524 () Bool)

(declare-fun res!372492 () Bool)

(declare-fun e!334639 () Bool)

(assert (=> b!584524 (=> (not res!372492) (not e!334639))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584524 (= res!372492 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17535 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17535 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584525 () Bool)

(declare-fun res!372491 () Bool)

(assert (=> b!584525 (=> (not res!372491) (not e!334639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36529 (_ BitVec 32)) Bool)

(assert (=> b!584525 (= res!372491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584526 () Bool)

(declare-fun res!372496 () Bool)

(assert (=> b!584526 (=> (not res!372496) (not e!334639))))

(declare-datatypes ((List!11629 0))(
  ( (Nil!11626) (Cons!11625 (h!12670 (_ BitVec 64)) (t!17865 List!11629)) )
))
(declare-fun arrayNoDuplicates!0 (array!36529 (_ BitVec 32) List!11629) Bool)

(assert (=> b!584526 (= res!372496 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11626))))

(declare-fun b!584527 () Bool)

(declare-fun e!334638 () Bool)

(assert (=> b!584527 (= e!334638 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5982 0))(
  ( (MissingZero!5982 (index!26155 (_ BitVec 32))) (Found!5982 (index!26156 (_ BitVec 32))) (Intermediate!5982 (undefined!6794 Bool) (index!26157 (_ BitVec 32)) (x!55014 (_ BitVec 32))) (Undefined!5982) (MissingVacant!5982 (index!26158 (_ BitVec 32))) )
))
(declare-fun lt!265606 () SeekEntryResult!5982)

(declare-fun lt!265607 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36529 (_ BitVec 32)) SeekEntryResult!5982)

(assert (=> b!584527 (= lt!265606 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265607 vacantSpotIndex!68 (select (arr!17535 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584528 () Bool)

(assert (=> b!584528 (= e!334637 e!334639)))

(declare-fun res!372494 () Bool)

(assert (=> b!584528 (=> (not res!372494) (not e!334639))))

(declare-fun lt!265605 () SeekEntryResult!5982)

(assert (=> b!584528 (= res!372494 (or (= lt!265605 (MissingZero!5982 i!1108)) (= lt!265605 (MissingVacant!5982 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36529 (_ BitVec 32)) SeekEntryResult!5982)

(assert (=> b!584528 (= lt!265605 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584529 () Bool)

(assert (=> b!584529 (= e!334639 e!334638)))

(declare-fun res!372498 () Bool)

(assert (=> b!584529 (=> (not res!372498) (not e!334638))))

(assert (=> b!584529 (= res!372498 (and (bvsge lt!265607 #b00000000000000000000000000000000) (bvslt lt!265607 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584529 (= lt!265607 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584530 () Bool)

(declare-fun res!372499 () Bool)

(assert (=> b!584530 (=> (not res!372499) (not e!334639))))

(assert (=> b!584530 (= res!372499 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17535 a!2986) j!136) a!2986 mask!3053) (Found!5982 j!136)))))

(declare-fun res!372500 () Bool)

(assert (=> start!53674 (=> (not res!372500) (not e!334637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53674 (= res!372500 (validMask!0 mask!3053))))

(assert (=> start!53674 e!334637))

(assert (=> start!53674 true))

(declare-fun array_inv!13309 (array!36529) Bool)

(assert (=> start!53674 (array_inv!13309 a!2986)))

(declare-fun b!584531 () Bool)

(declare-fun res!372497 () Bool)

(assert (=> b!584531 (=> (not res!372497) (not e!334637))))

(assert (=> b!584531 (= res!372497 (and (= (size!17899 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17899 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17899 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584532 () Bool)

(declare-fun res!372490 () Bool)

(assert (=> b!584532 (=> (not res!372490) (not e!334639))))

(assert (=> b!584532 (= res!372490 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17535 a!2986) index!984) (select (arr!17535 a!2986) j!136))) (not (= (select (arr!17535 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584533 () Bool)

(declare-fun res!372489 () Bool)

(assert (=> b!584533 (=> (not res!372489) (not e!334637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584533 (= res!372489 (validKeyInArray!0 k!1786))))

(declare-fun b!584534 () Bool)

(declare-fun res!372495 () Bool)

(assert (=> b!584534 (=> (not res!372495) (not e!334637))))

(assert (=> b!584534 (= res!372495 (validKeyInArray!0 (select (arr!17535 a!2986) j!136)))))

(assert (= (and start!53674 res!372500) b!584531))

(assert (= (and b!584531 res!372497) b!584534))

(assert (= (and b!584534 res!372495) b!584533))

(assert (= (and b!584533 res!372489) b!584523))

(assert (= (and b!584523 res!372493) b!584528))

(assert (= (and b!584528 res!372494) b!584525))

(assert (= (and b!584525 res!372491) b!584526))

(assert (= (and b!584526 res!372496) b!584524))

(assert (= (and b!584524 res!372492) b!584530))

(assert (= (and b!584530 res!372499) b!584532))

(assert (= (and b!584532 res!372490) b!584529))

(assert (= (and b!584529 res!372498) b!584527))

(declare-fun m!562897 () Bool)

(assert (=> b!584534 m!562897))

(assert (=> b!584534 m!562897))

(declare-fun m!562899 () Bool)

(assert (=> b!584534 m!562899))

(declare-fun m!562901 () Bool)

(assert (=> b!584528 m!562901))

(declare-fun m!562903 () Bool)

(assert (=> start!53674 m!562903))

(declare-fun m!562905 () Bool)

(assert (=> start!53674 m!562905))

(declare-fun m!562907 () Bool)

(assert (=> b!584523 m!562907))

(assert (=> b!584530 m!562897))

(assert (=> b!584530 m!562897))

(declare-fun m!562909 () Bool)

(assert (=> b!584530 m!562909))

(declare-fun m!562911 () Bool)

(assert (=> b!584526 m!562911))

(assert (=> b!584527 m!562897))

(assert (=> b!584527 m!562897))

(declare-fun m!562913 () Bool)

(assert (=> b!584527 m!562913))

(declare-fun m!562915 () Bool)

(assert (=> b!584524 m!562915))

(declare-fun m!562917 () Bool)

(assert (=> b!584524 m!562917))

(declare-fun m!562919 () Bool)

(assert (=> b!584524 m!562919))

(declare-fun m!562921 () Bool)

(assert (=> b!584525 m!562921))

(declare-fun m!562923 () Bool)

(assert (=> b!584529 m!562923))

(declare-fun m!562925 () Bool)

(assert (=> b!584533 m!562925))

(declare-fun m!562927 () Bool)

(assert (=> b!584532 m!562927))

(assert (=> b!584532 m!562897))

(push 1)

