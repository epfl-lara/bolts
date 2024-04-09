; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53900 () Bool)

(assert start!53900)

(declare-fun b!587584 () Bool)

(declare-fun res!375380 () Bool)

(declare-fun e!335617 () Bool)

(assert (=> b!587584 (=> (not res!375380) (not e!335617))))

(declare-datatypes ((array!36698 0))(
  ( (array!36699 (arr!17618 (Array (_ BitVec 32) (_ BitVec 64))) (size!17982 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36698)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587584 (= res!375380 (validKeyInArray!0 (select (arr!17618 a!2986) j!136)))))

(declare-fun b!587585 () Bool)

(declare-fun res!375377 () Bool)

(assert (=> b!587585 (=> (not res!375377) (not e!335617))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!587585 (= res!375377 (validKeyInArray!0 k!1786))))

(declare-fun res!375374 () Bool)

(assert (=> start!53900 (=> (not res!375374) (not e!335617))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53900 (= res!375374 (validMask!0 mask!3053))))

(assert (=> start!53900 e!335617))

(assert (=> start!53900 true))

(declare-fun array_inv!13392 (array!36698) Bool)

(assert (=> start!53900 (array_inv!13392 a!2986)))

(declare-fun b!587586 () Bool)

(declare-fun res!375373 () Bool)

(declare-fun e!335615 () Bool)

(assert (=> b!587586 (=> (not res!375373) (not e!335615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36698 (_ BitVec 32)) Bool)

(assert (=> b!587586 (= res!375373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587587 () Bool)

(declare-fun res!375376 () Bool)

(assert (=> b!587587 (=> (not res!375376) (not e!335615))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587587 (= res!375376 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17618 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17618 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587588 () Bool)

(declare-fun res!375372 () Bool)

(assert (=> b!587588 (=> (not res!375372) (not e!335617))))

(assert (=> b!587588 (= res!375372 (and (= (size!17982 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17982 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17982 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587589 () Bool)

(assert (=> b!587589 (= e!335615 (not true))))

(declare-fun lt!266456 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6065 0))(
  ( (MissingZero!6065 (index!26490 (_ BitVec 32))) (Found!6065 (index!26491 (_ BitVec 32))) (Intermediate!6065 (undefined!6877 Bool) (index!26492 (_ BitVec 32)) (x!55322 (_ BitVec 32))) (Undefined!6065) (MissingVacant!6065 (index!26493 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36698 (_ BitVec 32)) SeekEntryResult!6065)

(assert (=> b!587589 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266456 vacantSpotIndex!68 (select (arr!17618 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266456 vacantSpotIndex!68 (select (store (arr!17618 a!2986) i!1108 k!1786) j!136) (array!36699 (store (arr!17618 a!2986) i!1108 k!1786) (size!17982 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18254 0))(
  ( (Unit!18255) )
))
(declare-fun lt!266454 () Unit!18254)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36698 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18254)

(assert (=> b!587589 (= lt!266454 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266456 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587589 (= lt!266456 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587590 () Bool)

(declare-fun res!375378 () Bool)

(assert (=> b!587590 (=> (not res!375378) (not e!335615))))

(assert (=> b!587590 (= res!375378 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17618 a!2986) j!136) a!2986 mask!3053) (Found!6065 j!136)))))

(declare-fun b!587591 () Bool)

(declare-fun res!375370 () Bool)

(assert (=> b!587591 (=> (not res!375370) (not e!335615))))

(assert (=> b!587591 (= res!375370 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17618 a!2986) index!984) (select (arr!17618 a!2986) j!136))) (not (= (select (arr!17618 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587592 () Bool)

(declare-fun res!375371 () Bool)

(assert (=> b!587592 (=> (not res!375371) (not e!335617))))

(declare-fun arrayContainsKey!0 (array!36698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587592 (= res!375371 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587593 () Bool)

(assert (=> b!587593 (= e!335617 e!335615)))

(declare-fun res!375375 () Bool)

(assert (=> b!587593 (=> (not res!375375) (not e!335615))))

(declare-fun lt!266455 () SeekEntryResult!6065)

(assert (=> b!587593 (= res!375375 (or (= lt!266455 (MissingZero!6065 i!1108)) (= lt!266455 (MissingVacant!6065 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36698 (_ BitVec 32)) SeekEntryResult!6065)

(assert (=> b!587593 (= lt!266455 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587594 () Bool)

(declare-fun res!375379 () Bool)

(assert (=> b!587594 (=> (not res!375379) (not e!335615))))

(declare-datatypes ((List!11712 0))(
  ( (Nil!11709) (Cons!11708 (h!12753 (_ BitVec 64)) (t!17948 List!11712)) )
))
(declare-fun arrayNoDuplicates!0 (array!36698 (_ BitVec 32) List!11712) Bool)

(assert (=> b!587594 (= res!375379 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11709))))

(assert (= (and start!53900 res!375374) b!587588))

(assert (= (and b!587588 res!375372) b!587584))

(assert (= (and b!587584 res!375380) b!587585))

(assert (= (and b!587585 res!375377) b!587592))

(assert (= (and b!587592 res!375371) b!587593))

(assert (= (and b!587593 res!375375) b!587586))

(assert (= (and b!587586 res!375373) b!587594))

(assert (= (and b!587594 res!375379) b!587587))

(assert (= (and b!587587 res!375376) b!587590))

(assert (= (and b!587590 res!375378) b!587591))

(assert (= (and b!587591 res!375370) b!587589))

(declare-fun m!566087 () Bool)

(assert (=> b!587589 m!566087))

(declare-fun m!566089 () Bool)

(assert (=> b!587589 m!566089))

(declare-fun m!566091 () Bool)

(assert (=> b!587589 m!566091))

(declare-fun m!566093 () Bool)

(assert (=> b!587589 m!566093))

(assert (=> b!587589 m!566091))

(declare-fun m!566095 () Bool)

(assert (=> b!587589 m!566095))

(declare-fun m!566097 () Bool)

(assert (=> b!587589 m!566097))

(assert (=> b!587589 m!566089))

(declare-fun m!566099 () Bool)

(assert (=> b!587589 m!566099))

(assert (=> b!587584 m!566091))

(assert (=> b!587584 m!566091))

(declare-fun m!566101 () Bool)

(assert (=> b!587584 m!566101))

(declare-fun m!566103 () Bool)

(assert (=> b!587592 m!566103))

(assert (=> b!587590 m!566091))

(assert (=> b!587590 m!566091))

(declare-fun m!566105 () Bool)

(assert (=> b!587590 m!566105))

(declare-fun m!566107 () Bool)

(assert (=> b!587591 m!566107))

(assert (=> b!587591 m!566091))

(declare-fun m!566109 () Bool)

(assert (=> b!587587 m!566109))

(assert (=> b!587587 m!566093))

(declare-fun m!566111 () Bool)

(assert (=> b!587587 m!566111))

(declare-fun m!566113 () Bool)

(assert (=> b!587585 m!566113))

(declare-fun m!566115 () Bool)

(assert (=> b!587586 m!566115))

(declare-fun m!566117 () Bool)

(assert (=> b!587593 m!566117))

(declare-fun m!566119 () Bool)

(assert (=> start!53900 m!566119))

(declare-fun m!566121 () Bool)

(assert (=> start!53900 m!566121))

(declare-fun m!566123 () Bool)

(assert (=> b!587594 m!566123))

(push 1)

(assert (not b!587594))

