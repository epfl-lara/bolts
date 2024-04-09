; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53730 () Bool)

(assert start!53730)

(declare-fun b!585517 () Bool)

(declare-fun res!373493 () Bool)

(declare-fun e!334959 () Bool)

(assert (=> b!585517 (=> (not res!373493) (not e!334959))))

(declare-datatypes ((array!36585 0))(
  ( (array!36586 (arr!17563 (Array (_ BitVec 32) (_ BitVec 64))) (size!17927 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36585)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585517 (= res!373493 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585518 () Bool)

(declare-fun res!373483 () Bool)

(declare-fun e!334960 () Bool)

(assert (=> b!585518 (=> (not res!373483) (not e!334960))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585518 (= res!373483 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17563 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17563 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585519 () Bool)

(assert (=> b!585519 (= e!334960 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!265857 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6010 0))(
  ( (MissingZero!6010 (index!26267 (_ BitVec 32))) (Found!6010 (index!26268 (_ BitVec 32))) (Intermediate!6010 (undefined!6822 Bool) (index!26269 (_ BitVec 32)) (x!55114 (_ BitVec 32))) (Undefined!6010) (MissingVacant!6010 (index!26270 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36585 (_ BitVec 32)) SeekEntryResult!6010)

(assert (=> b!585519 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265857 vacantSpotIndex!68 (select (arr!17563 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265857 vacantSpotIndex!68 (select (store (arr!17563 a!2986) i!1108 k0!1786) j!136) (array!36586 (store (arr!17563 a!2986) i!1108 k0!1786) (size!17927 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18144 0))(
  ( (Unit!18145) )
))
(declare-fun lt!265858 () Unit!18144)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36585 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18144)

(assert (=> b!585519 (= lt!265858 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265857 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585519 (= lt!265857 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585520 () Bool)

(declare-fun res!373492 () Bool)

(assert (=> b!585520 (=> (not res!373492) (not e!334959))))

(assert (=> b!585520 (= res!373492 (and (= (size!17927 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17927 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17927 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585521 () Bool)

(declare-fun res!373486 () Bool)

(assert (=> b!585521 (=> (not res!373486) (not e!334960))))

(declare-datatypes ((List!11657 0))(
  ( (Nil!11654) (Cons!11653 (h!12698 (_ BitVec 64)) (t!17893 List!11657)) )
))
(declare-fun arrayNoDuplicates!0 (array!36585 (_ BitVec 32) List!11657) Bool)

(assert (=> b!585521 (= res!373486 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11654))))

(declare-fun b!585522 () Bool)

(assert (=> b!585522 (= e!334959 e!334960)))

(declare-fun res!373489 () Bool)

(assert (=> b!585522 (=> (not res!373489) (not e!334960))))

(declare-fun lt!265859 () SeekEntryResult!6010)

(assert (=> b!585522 (= res!373489 (or (= lt!265859 (MissingZero!6010 i!1108)) (= lt!265859 (MissingVacant!6010 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36585 (_ BitVec 32)) SeekEntryResult!6010)

(assert (=> b!585522 (= lt!265859 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585524 () Bool)

(declare-fun res!373491 () Bool)

(assert (=> b!585524 (=> (not res!373491) (not e!334960))))

(assert (=> b!585524 (= res!373491 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17563 a!2986) index!984) (select (arr!17563 a!2986) j!136))) (not (= (select (arr!17563 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585525 () Bool)

(declare-fun res!373485 () Bool)

(assert (=> b!585525 (=> (not res!373485) (not e!334960))))

(assert (=> b!585525 (= res!373485 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17563 a!2986) j!136) a!2986 mask!3053) (Found!6010 j!136)))))

(declare-fun b!585526 () Bool)

(declare-fun res!373488 () Bool)

(assert (=> b!585526 (=> (not res!373488) (not e!334959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585526 (= res!373488 (validKeyInArray!0 k0!1786))))

(declare-fun b!585527 () Bool)

(declare-fun res!373484 () Bool)

(assert (=> b!585527 (=> (not res!373484) (not e!334959))))

(assert (=> b!585527 (= res!373484 (validKeyInArray!0 (select (arr!17563 a!2986) j!136)))))

(declare-fun res!373487 () Bool)

(assert (=> start!53730 (=> (not res!373487) (not e!334959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53730 (= res!373487 (validMask!0 mask!3053))))

(assert (=> start!53730 e!334959))

(assert (=> start!53730 true))

(declare-fun array_inv!13337 (array!36585) Bool)

(assert (=> start!53730 (array_inv!13337 a!2986)))

(declare-fun b!585523 () Bool)

(declare-fun res!373490 () Bool)

(assert (=> b!585523 (=> (not res!373490) (not e!334960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36585 (_ BitVec 32)) Bool)

(assert (=> b!585523 (= res!373490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53730 res!373487) b!585520))

(assert (= (and b!585520 res!373492) b!585527))

(assert (= (and b!585527 res!373484) b!585526))

(assert (= (and b!585526 res!373488) b!585517))

(assert (= (and b!585517 res!373493) b!585522))

(assert (= (and b!585522 res!373489) b!585523))

(assert (= (and b!585523 res!373490) b!585521))

(assert (= (and b!585521 res!373486) b!585518))

(assert (= (and b!585518 res!373483) b!585525))

(assert (= (and b!585525 res!373485) b!585524))

(assert (= (and b!585524 res!373491) b!585519))

(declare-fun m!563817 () Bool)

(assert (=> b!585518 m!563817))

(declare-fun m!563819 () Bool)

(assert (=> b!585518 m!563819))

(declare-fun m!563821 () Bool)

(assert (=> b!585518 m!563821))

(declare-fun m!563823 () Bool)

(assert (=> b!585517 m!563823))

(declare-fun m!563825 () Bool)

(assert (=> b!585525 m!563825))

(assert (=> b!585525 m!563825))

(declare-fun m!563827 () Bool)

(assert (=> b!585525 m!563827))

(declare-fun m!563829 () Bool)

(assert (=> start!53730 m!563829))

(declare-fun m!563831 () Bool)

(assert (=> start!53730 m!563831))

(declare-fun m!563833 () Bool)

(assert (=> b!585521 m!563833))

(declare-fun m!563835 () Bool)

(assert (=> b!585522 m!563835))

(declare-fun m!563837 () Bool)

(assert (=> b!585519 m!563837))

(declare-fun m!563839 () Bool)

(assert (=> b!585519 m!563839))

(assert (=> b!585519 m!563825))

(declare-fun m!563841 () Bool)

(assert (=> b!585519 m!563841))

(assert (=> b!585519 m!563819))

(assert (=> b!585519 m!563839))

(declare-fun m!563843 () Bool)

(assert (=> b!585519 m!563843))

(assert (=> b!585519 m!563825))

(declare-fun m!563845 () Bool)

(assert (=> b!585519 m!563845))

(declare-fun m!563847 () Bool)

(assert (=> b!585526 m!563847))

(declare-fun m!563849 () Bool)

(assert (=> b!585523 m!563849))

(declare-fun m!563851 () Bool)

(assert (=> b!585524 m!563851))

(assert (=> b!585524 m!563825))

(assert (=> b!585527 m!563825))

(assert (=> b!585527 m!563825))

(declare-fun m!563853 () Bool)

(assert (=> b!585527 m!563853))

(check-sat (not b!585517) (not start!53730) (not b!585526) (not b!585525) (not b!585519) (not b!585521) (not b!585527) (not b!585523) (not b!585522))
(check-sat)
