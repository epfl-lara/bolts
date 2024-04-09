; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53678 () Bool)

(assert start!53678)

(declare-fun b!584595 () Bool)

(declare-fun res!372567 () Bool)

(declare-fun e!334660 () Bool)

(assert (=> b!584595 (=> (not res!372567) (not e!334660))))

(declare-datatypes ((array!36533 0))(
  ( (array!36534 (arr!17537 (Array (_ BitVec 32) (_ BitVec 64))) (size!17901 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36533)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36533 (_ BitVec 32)) Bool)

(assert (=> b!584595 (= res!372567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584596 () Bool)

(declare-fun res!372570 () Bool)

(declare-fun e!334663 () Bool)

(assert (=> b!584596 (=> (not res!372570) (not e!334663))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584596 (= res!372570 (validKeyInArray!0 (select (arr!17537 a!2986) j!136)))))

(declare-fun b!584598 () Bool)

(declare-fun res!372561 () Bool)

(assert (=> b!584598 (=> (not res!372561) (not e!334663))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584598 (= res!372561 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584599 () Bool)

(declare-fun res!372571 () Bool)

(assert (=> b!584599 (=> (not res!372571) (not e!334660))))

(declare-datatypes ((List!11631 0))(
  ( (Nil!11628) (Cons!11627 (h!12672 (_ BitVec 64)) (t!17867 List!11631)) )
))
(declare-fun arrayNoDuplicates!0 (array!36533 (_ BitVec 32) List!11631) Bool)

(assert (=> b!584599 (= res!372571 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11628))))

(declare-fun b!584600 () Bool)

(declare-fun res!372569 () Bool)

(assert (=> b!584600 (=> (not res!372569) (not e!334663))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584600 (= res!372569 (and (= (size!17901 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17901 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17901 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584601 () Bool)

(declare-fun res!372562 () Bool)

(assert (=> b!584601 (=> (not res!372562) (not e!334660))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5984 0))(
  ( (MissingZero!5984 (index!26163 (_ BitVec 32))) (Found!5984 (index!26164 (_ BitVec 32))) (Intermediate!5984 (undefined!6796 Bool) (index!26165 (_ BitVec 32)) (x!55016 (_ BitVec 32))) (Undefined!5984) (MissingVacant!5984 (index!26166 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36533 (_ BitVec 32)) SeekEntryResult!5984)

(assert (=> b!584601 (= res!372562 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17537 a!2986) j!136) a!2986 mask!3053) (Found!5984 j!136)))))

(declare-fun b!584602 () Bool)

(assert (=> b!584602 (= e!334663 e!334660)))

(declare-fun res!372563 () Bool)

(assert (=> b!584602 (=> (not res!372563) (not e!334660))))

(declare-fun lt!265625 () SeekEntryResult!5984)

(assert (=> b!584602 (= res!372563 (or (= lt!265625 (MissingZero!5984 i!1108)) (= lt!265625 (MissingVacant!5984 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36533 (_ BitVec 32)) SeekEntryResult!5984)

(assert (=> b!584602 (= lt!265625 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584603 () Bool)

(declare-fun res!372565 () Bool)

(assert (=> b!584603 (=> (not res!372565) (not e!334660))))

(assert (=> b!584603 (= res!372565 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17537 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17537 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!372572 () Bool)

(assert (=> start!53678 (=> (not res!372572) (not e!334663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53678 (= res!372572 (validMask!0 mask!3053))))

(assert (=> start!53678 e!334663))

(assert (=> start!53678 true))

(declare-fun array_inv!13311 (array!36533) Bool)

(assert (=> start!53678 (array_inv!13311 a!2986)))

(declare-fun b!584597 () Bool)

(declare-fun e!334661 () Bool)

(assert (=> b!584597 (= e!334660 e!334661)))

(declare-fun res!372564 () Bool)

(assert (=> b!584597 (=> (not res!372564) (not e!334661))))

(declare-fun lt!265623 () (_ BitVec 32))

(assert (=> b!584597 (= res!372564 (and (bvsge lt!265623 #b00000000000000000000000000000000) (bvslt lt!265623 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584597 (= lt!265623 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584604 () Bool)

(declare-fun res!372566 () Bool)

(assert (=> b!584604 (=> (not res!372566) (not e!334660))))

(assert (=> b!584604 (= res!372566 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17537 a!2986) index!984) (select (arr!17537 a!2986) j!136))) (not (= (select (arr!17537 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584605 () Bool)

(declare-fun res!372568 () Bool)

(assert (=> b!584605 (=> (not res!372568) (not e!334663))))

(assert (=> b!584605 (= res!372568 (validKeyInArray!0 k!1786))))

(declare-fun b!584606 () Bool)

(assert (=> b!584606 (= e!334661 false)))

(declare-fun lt!265624 () SeekEntryResult!5984)

(assert (=> b!584606 (= lt!265624 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265623 vacantSpotIndex!68 (select (arr!17537 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53678 res!372572) b!584600))

(assert (= (and b!584600 res!372569) b!584596))

(assert (= (and b!584596 res!372570) b!584605))

(assert (= (and b!584605 res!372568) b!584598))

(assert (= (and b!584598 res!372561) b!584602))

(assert (= (and b!584602 res!372563) b!584595))

(assert (= (and b!584595 res!372567) b!584599))

(assert (= (and b!584599 res!372571) b!584603))

(assert (= (and b!584603 res!372565) b!584601))

(assert (= (and b!584601 res!372562) b!584604))

(assert (= (and b!584604 res!372566) b!584597))

(assert (= (and b!584597 res!372564) b!584606))

(declare-fun m!562961 () Bool)

(assert (=> b!584606 m!562961))

(assert (=> b!584606 m!562961))

(declare-fun m!562963 () Bool)

(assert (=> b!584606 m!562963))

(assert (=> b!584601 m!562961))

(assert (=> b!584601 m!562961))

(declare-fun m!562965 () Bool)

(assert (=> b!584601 m!562965))

(declare-fun m!562967 () Bool)

(assert (=> b!584599 m!562967))

(declare-fun m!562969 () Bool)

(assert (=> b!584597 m!562969))

(declare-fun m!562971 () Bool)

(assert (=> b!584603 m!562971))

(declare-fun m!562973 () Bool)

(assert (=> b!584603 m!562973))

(declare-fun m!562975 () Bool)

(assert (=> b!584603 m!562975))

(declare-fun m!562977 () Bool)

(assert (=> b!584604 m!562977))

(assert (=> b!584604 m!562961))

(declare-fun m!562979 () Bool)

(assert (=> b!584595 m!562979))

(declare-fun m!562981 () Bool)

(assert (=> b!584602 m!562981))

(assert (=> b!584596 m!562961))

(assert (=> b!584596 m!562961))

(declare-fun m!562983 () Bool)

(assert (=> b!584596 m!562983))

(declare-fun m!562985 () Bool)

(assert (=> start!53678 m!562985))

(declare-fun m!562987 () Bool)

(assert (=> start!53678 m!562987))

(declare-fun m!562989 () Bool)

(assert (=> b!584598 m!562989))

(declare-fun m!562991 () Bool)

(assert (=> b!584605 m!562991))

(push 1)

(assert (not b!584602))

(assert (not b!584599))

(assert (not b!584605))

(assert (not b!584595))

(assert (not b!584606))

