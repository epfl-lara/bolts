; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53676 () Bool)

(assert start!53676)

(declare-fun b!584559 () Bool)

(declare-fun res!372531 () Bool)

(declare-fun e!334648 () Bool)

(assert (=> b!584559 (=> (not res!372531) (not e!334648))))

(declare-datatypes ((array!36531 0))(
  ( (array!36532 (arr!17536 (Array (_ BitVec 32) (_ BitVec 64))) (size!17900 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36531)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36531 (_ BitVec 32)) Bool)

(assert (=> b!584559 (= res!372531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584560 () Bool)

(declare-fun res!372532 () Bool)

(declare-fun e!334649 () Bool)

(assert (=> b!584560 (=> (not res!372532) (not e!334649))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584560 (= res!372532 (and (= (size!17900 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17900 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17900 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584561 () Bool)

(declare-fun res!372529 () Bool)

(assert (=> b!584561 (=> (not res!372529) (not e!334649))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584561 (= res!372529 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!372535 () Bool)

(assert (=> start!53676 (=> (not res!372535) (not e!334649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53676 (= res!372535 (validMask!0 mask!3053))))

(assert (=> start!53676 e!334649))

(assert (=> start!53676 true))

(declare-fun array_inv!13310 (array!36531) Bool)

(assert (=> start!53676 (array_inv!13310 a!2986)))

(declare-fun b!584562 () Bool)

(declare-fun e!334650 () Bool)

(assert (=> b!584562 (= e!334650 false)))

(declare-datatypes ((SeekEntryResult!5983 0))(
  ( (MissingZero!5983 (index!26159 (_ BitVec 32))) (Found!5983 (index!26160 (_ BitVec 32))) (Intermediate!5983 (undefined!6795 Bool) (index!26161 (_ BitVec 32)) (x!55015 (_ BitVec 32))) (Undefined!5983) (MissingVacant!5983 (index!26162 (_ BitVec 32))) )
))
(declare-fun lt!265616 () SeekEntryResult!5983)

(declare-fun lt!265614 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36531 (_ BitVec 32)) SeekEntryResult!5983)

(assert (=> b!584562 (= lt!265616 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265614 vacantSpotIndex!68 (select (arr!17536 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584563 () Bool)

(declare-fun res!372530 () Bool)

(assert (=> b!584563 (=> (not res!372530) (not e!334648))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584563 (= res!372530 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17536 a!2986) index!984) (select (arr!17536 a!2986) j!136))) (not (= (select (arr!17536 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584564 () Bool)

(declare-fun res!372534 () Bool)

(assert (=> b!584564 (=> (not res!372534) (not e!334649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584564 (= res!372534 (validKeyInArray!0 k0!1786))))

(declare-fun b!584565 () Bool)

(declare-fun res!372526 () Bool)

(assert (=> b!584565 (=> (not res!372526) (not e!334648))))

(assert (=> b!584565 (= res!372526 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17536 a!2986) j!136) a!2986 mask!3053) (Found!5983 j!136)))))

(declare-fun b!584566 () Bool)

(declare-fun res!372527 () Bool)

(assert (=> b!584566 (=> (not res!372527) (not e!334648))))

(assert (=> b!584566 (= res!372527 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17536 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17536 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584567 () Bool)

(assert (=> b!584567 (= e!334649 e!334648)))

(declare-fun res!372536 () Bool)

(assert (=> b!584567 (=> (not res!372536) (not e!334648))))

(declare-fun lt!265615 () SeekEntryResult!5983)

(assert (=> b!584567 (= res!372536 (or (= lt!265615 (MissingZero!5983 i!1108)) (= lt!265615 (MissingVacant!5983 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36531 (_ BitVec 32)) SeekEntryResult!5983)

(assert (=> b!584567 (= lt!265615 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584568 () Bool)

(declare-fun res!372528 () Bool)

(assert (=> b!584568 (=> (not res!372528) (not e!334648))))

(declare-datatypes ((List!11630 0))(
  ( (Nil!11627) (Cons!11626 (h!12671 (_ BitVec 64)) (t!17866 List!11630)) )
))
(declare-fun arrayNoDuplicates!0 (array!36531 (_ BitVec 32) List!11630) Bool)

(assert (=> b!584568 (= res!372528 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11627))))

(declare-fun b!584569 () Bool)

(assert (=> b!584569 (= e!334648 e!334650)))

(declare-fun res!372525 () Bool)

(assert (=> b!584569 (=> (not res!372525) (not e!334650))))

(assert (=> b!584569 (= res!372525 (and (bvsge lt!265614 #b00000000000000000000000000000000) (bvslt lt!265614 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584569 (= lt!265614 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584570 () Bool)

(declare-fun res!372533 () Bool)

(assert (=> b!584570 (=> (not res!372533) (not e!334649))))

(assert (=> b!584570 (= res!372533 (validKeyInArray!0 (select (arr!17536 a!2986) j!136)))))

(assert (= (and start!53676 res!372535) b!584560))

(assert (= (and b!584560 res!372532) b!584570))

(assert (= (and b!584570 res!372533) b!584564))

(assert (= (and b!584564 res!372534) b!584561))

(assert (= (and b!584561 res!372529) b!584567))

(assert (= (and b!584567 res!372536) b!584559))

(assert (= (and b!584559 res!372531) b!584568))

(assert (= (and b!584568 res!372528) b!584566))

(assert (= (and b!584566 res!372527) b!584565))

(assert (= (and b!584565 res!372526) b!584563))

(assert (= (and b!584563 res!372530) b!584569))

(assert (= (and b!584569 res!372525) b!584562))

(declare-fun m!562929 () Bool)

(assert (=> b!584559 m!562929))

(declare-fun m!562931 () Bool)

(assert (=> b!584566 m!562931))

(declare-fun m!562933 () Bool)

(assert (=> b!584566 m!562933))

(declare-fun m!562935 () Bool)

(assert (=> b!584566 m!562935))

(declare-fun m!562937 () Bool)

(assert (=> b!584569 m!562937))

(declare-fun m!562939 () Bool)

(assert (=> b!584561 m!562939))

(declare-fun m!562941 () Bool)

(assert (=> b!584562 m!562941))

(assert (=> b!584562 m!562941))

(declare-fun m!562943 () Bool)

(assert (=> b!584562 m!562943))

(assert (=> b!584570 m!562941))

(assert (=> b!584570 m!562941))

(declare-fun m!562945 () Bool)

(assert (=> b!584570 m!562945))

(assert (=> b!584565 m!562941))

(assert (=> b!584565 m!562941))

(declare-fun m!562947 () Bool)

(assert (=> b!584565 m!562947))

(declare-fun m!562949 () Bool)

(assert (=> start!53676 m!562949))

(declare-fun m!562951 () Bool)

(assert (=> start!53676 m!562951))

(declare-fun m!562953 () Bool)

(assert (=> b!584568 m!562953))

(declare-fun m!562955 () Bool)

(assert (=> b!584567 m!562955))

(declare-fun m!562957 () Bool)

(assert (=> b!584563 m!562957))

(assert (=> b!584563 m!562941))

(declare-fun m!562959 () Bool)

(assert (=> b!584564 m!562959))

(check-sat (not start!53676) (not b!584562) (not b!584568) (not b!584559) (not b!584565) (not b!584570) (not b!584564) (not b!584561) (not b!584569) (not b!584567))
(check-sat)
