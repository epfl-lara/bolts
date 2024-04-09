; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53892 () Bool)

(assert start!53892)

(declare-fun b!587452 () Bool)

(declare-fun res!375239 () Bool)

(declare-fun e!335580 () Bool)

(assert (=> b!587452 (=> (not res!375239) (not e!335580))))

(declare-datatypes ((array!36690 0))(
  ( (array!36691 (arr!17614 (Array (_ BitVec 32) (_ BitVec 64))) (size!17978 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36690)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587452 (= res!375239 (validKeyInArray!0 (select (arr!17614 a!2986) j!136)))))

(declare-fun b!587453 () Bool)

(declare-fun e!335579 () Bool)

(assert (=> b!587453 (= e!335580 e!335579)))

(declare-fun res!375248 () Bool)

(assert (=> b!587453 (=> (not res!375248) (not e!335579))))

(declare-datatypes ((SeekEntryResult!6061 0))(
  ( (MissingZero!6061 (index!26474 (_ BitVec 32))) (Found!6061 (index!26475 (_ BitVec 32))) (Intermediate!6061 (undefined!6873 Bool) (index!26476 (_ BitVec 32)) (x!55310 (_ BitVec 32))) (Undefined!6061) (MissingVacant!6061 (index!26477 (_ BitVec 32))) )
))
(declare-fun lt!266420 () SeekEntryResult!6061)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!587453 (= res!375248 (or (= lt!266420 (MissingZero!6061 i!1108)) (= lt!266420 (MissingVacant!6061 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36690 (_ BitVec 32)) SeekEntryResult!6061)

(assert (=> b!587453 (= lt!266420 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!587454 () Bool)

(declare-fun res!375238 () Bool)

(assert (=> b!587454 (=> (not res!375238) (not e!335580))))

(declare-fun arrayContainsKey!0 (array!36690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587454 (= res!375238 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587455 () Bool)

(declare-fun res!375247 () Bool)

(assert (=> b!587455 (=> (not res!375247) (not e!335579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36690 (_ BitVec 32)) Bool)

(assert (=> b!587455 (= res!375247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587456 () Bool)

(declare-fun res!375246 () Bool)

(assert (=> b!587456 (=> (not res!375246) (not e!335580))))

(assert (=> b!587456 (= res!375246 (validKeyInArray!0 k0!1786))))

(declare-fun b!587457 () Bool)

(declare-fun res!375241 () Bool)

(assert (=> b!587457 (=> (not res!375241) (not e!335579))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587457 (= res!375241 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17614 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17614 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587458 () Bool)

(declare-fun res!375244 () Bool)

(assert (=> b!587458 (=> (not res!375244) (not e!335579))))

(assert (=> b!587458 (= res!375244 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17614 a!2986) index!984) (select (arr!17614 a!2986) j!136))) (not (= (select (arr!17614 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587459 () Bool)

(declare-fun res!375240 () Bool)

(assert (=> b!587459 (=> (not res!375240) (not e!335579))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36690 (_ BitVec 32)) SeekEntryResult!6061)

(assert (=> b!587459 (= res!375240 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17614 a!2986) j!136) a!2986 mask!3053) (Found!6061 j!136)))))

(declare-fun res!375243 () Bool)

(assert (=> start!53892 (=> (not res!375243) (not e!335580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53892 (= res!375243 (validMask!0 mask!3053))))

(assert (=> start!53892 e!335580))

(assert (=> start!53892 true))

(declare-fun array_inv!13388 (array!36690) Bool)

(assert (=> start!53892 (array_inv!13388 a!2986)))

(declare-fun b!587460 () Bool)

(assert (=> b!587460 (= e!335579 (not true))))

(declare-fun lt!266419 () (_ BitVec 32))

(assert (=> b!587460 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266419 vacantSpotIndex!68 (select (arr!17614 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266419 vacantSpotIndex!68 (select (store (arr!17614 a!2986) i!1108 k0!1786) j!136) (array!36691 (store (arr!17614 a!2986) i!1108 k0!1786) (size!17978 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18246 0))(
  ( (Unit!18247) )
))
(declare-fun lt!266418 () Unit!18246)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36690 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18246)

(assert (=> b!587460 (= lt!266418 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266419 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587460 (= lt!266419 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587461 () Bool)

(declare-fun res!375245 () Bool)

(assert (=> b!587461 (=> (not res!375245) (not e!335579))))

(declare-datatypes ((List!11708 0))(
  ( (Nil!11705) (Cons!11704 (h!12749 (_ BitVec 64)) (t!17944 List!11708)) )
))
(declare-fun arrayNoDuplicates!0 (array!36690 (_ BitVec 32) List!11708) Bool)

(assert (=> b!587461 (= res!375245 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11705))))

(declare-fun b!587462 () Bool)

(declare-fun res!375242 () Bool)

(assert (=> b!587462 (=> (not res!375242) (not e!335580))))

(assert (=> b!587462 (= res!375242 (and (= (size!17978 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17978 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17978 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53892 res!375243) b!587462))

(assert (= (and b!587462 res!375242) b!587452))

(assert (= (and b!587452 res!375239) b!587456))

(assert (= (and b!587456 res!375246) b!587454))

(assert (= (and b!587454 res!375238) b!587453))

(assert (= (and b!587453 res!375248) b!587455))

(assert (= (and b!587455 res!375247) b!587461))

(assert (= (and b!587461 res!375245) b!587457))

(assert (= (and b!587457 res!375241) b!587459))

(assert (= (and b!587459 res!375240) b!587458))

(assert (= (and b!587458 res!375244) b!587460))

(declare-fun m!565935 () Bool)

(assert (=> b!587461 m!565935))

(declare-fun m!565937 () Bool)

(assert (=> b!587456 m!565937))

(declare-fun m!565939 () Bool)

(assert (=> start!53892 m!565939))

(declare-fun m!565941 () Bool)

(assert (=> start!53892 m!565941))

(declare-fun m!565943 () Bool)

(assert (=> b!587452 m!565943))

(assert (=> b!587452 m!565943))

(declare-fun m!565945 () Bool)

(assert (=> b!587452 m!565945))

(declare-fun m!565947 () Bool)

(assert (=> b!587453 m!565947))

(declare-fun m!565949 () Bool)

(assert (=> b!587458 m!565949))

(assert (=> b!587458 m!565943))

(assert (=> b!587459 m!565943))

(assert (=> b!587459 m!565943))

(declare-fun m!565951 () Bool)

(assert (=> b!587459 m!565951))

(declare-fun m!565953 () Bool)

(assert (=> b!587455 m!565953))

(declare-fun m!565955 () Bool)

(assert (=> b!587460 m!565955))

(declare-fun m!565957 () Bool)

(assert (=> b!587460 m!565957))

(assert (=> b!587460 m!565943))

(assert (=> b!587460 m!565943))

(declare-fun m!565959 () Bool)

(assert (=> b!587460 m!565959))

(declare-fun m!565961 () Bool)

(assert (=> b!587460 m!565961))

(declare-fun m!565963 () Bool)

(assert (=> b!587460 m!565963))

(assert (=> b!587460 m!565957))

(declare-fun m!565965 () Bool)

(assert (=> b!587460 m!565965))

(declare-fun m!565967 () Bool)

(assert (=> b!587454 m!565967))

(declare-fun m!565969 () Bool)

(assert (=> b!587457 m!565969))

(assert (=> b!587457 m!565961))

(declare-fun m!565971 () Bool)

(assert (=> b!587457 m!565971))

(check-sat (not b!587456) (not b!587453) (not b!587452) (not b!587461) (not b!587454) (not b!587460) (not b!587455) (not start!53892) (not b!587459))
(check-sat)
