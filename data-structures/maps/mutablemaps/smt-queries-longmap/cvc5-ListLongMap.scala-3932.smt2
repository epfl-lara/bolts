; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53620 () Bool)

(assert start!53620)

(declare-fun b!583551 () Bool)

(declare-fun e!334315 () Bool)

(declare-fun e!334312 () Bool)

(assert (=> b!583551 (= e!334315 e!334312)))

(declare-fun res!371528 () Bool)

(assert (=> b!583551 (=> (not res!371528) (not e!334312))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!265362 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!583551 (= res!371528 (and (bvsge lt!265362 #b00000000000000000000000000000000) (bvslt lt!265362 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583551 (= lt!265362 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583552 () Bool)

(declare-fun res!371526 () Bool)

(declare-fun e!334314 () Bool)

(assert (=> b!583552 (=> (not res!371526) (not e!334314))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583552 (= res!371526 (validKeyInArray!0 k!1786))))

(declare-fun b!583554 () Bool)

(declare-fun res!371523 () Bool)

(assert (=> b!583554 (=> (not res!371523) (not e!334315))))

(declare-datatypes ((array!36475 0))(
  ( (array!36476 (arr!17508 (Array (_ BitVec 32) (_ BitVec 64))) (size!17872 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36475)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36475 (_ BitVec 32)) Bool)

(assert (=> b!583554 (= res!371523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583555 () Bool)

(declare-fun res!371518 () Bool)

(assert (=> b!583555 (=> (not res!371518) (not e!334315))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5955 0))(
  ( (MissingZero!5955 (index!26047 (_ BitVec 32))) (Found!5955 (index!26048 (_ BitVec 32))) (Intermediate!5955 (undefined!6767 Bool) (index!26049 (_ BitVec 32)) (x!54915 (_ BitVec 32))) (Undefined!5955) (MissingVacant!5955 (index!26050 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36475 (_ BitVec 32)) SeekEntryResult!5955)

(assert (=> b!583555 (= res!371518 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17508 a!2986) j!136) a!2986 mask!3053) (Found!5955 j!136)))))

(declare-fun b!583556 () Bool)

(declare-fun res!371522 () Bool)

(assert (=> b!583556 (=> (not res!371522) (not e!334314))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583556 (= res!371522 (and (= (size!17872 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17872 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17872 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583557 () Bool)

(assert (=> b!583557 (= e!334314 e!334315)))

(declare-fun res!371525 () Bool)

(assert (=> b!583557 (=> (not res!371525) (not e!334315))))

(declare-fun lt!265363 () SeekEntryResult!5955)

(assert (=> b!583557 (= res!371525 (or (= lt!265363 (MissingZero!5955 i!1108)) (= lt!265363 (MissingVacant!5955 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36475 (_ BitVec 32)) SeekEntryResult!5955)

(assert (=> b!583557 (= lt!265363 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583558 () Bool)

(declare-fun res!371521 () Bool)

(assert (=> b!583558 (=> (not res!371521) (not e!334315))))

(assert (=> b!583558 (= res!371521 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17508 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17508 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583553 () Bool)

(declare-fun res!371517 () Bool)

(assert (=> b!583553 (=> (not res!371517) (not e!334314))))

(declare-fun arrayContainsKey!0 (array!36475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583553 (= res!371517 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!371519 () Bool)

(assert (=> start!53620 (=> (not res!371519) (not e!334314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53620 (= res!371519 (validMask!0 mask!3053))))

(assert (=> start!53620 e!334314))

(assert (=> start!53620 true))

(declare-fun array_inv!13282 (array!36475) Bool)

(assert (=> start!53620 (array_inv!13282 a!2986)))

(declare-fun b!583559 () Bool)

(declare-fun res!371527 () Bool)

(assert (=> b!583559 (=> (not res!371527) (not e!334315))))

(assert (=> b!583559 (= res!371527 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17508 a!2986) index!984) (select (arr!17508 a!2986) j!136))) (not (= (select (arr!17508 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583560 () Bool)

(declare-fun res!371520 () Bool)

(assert (=> b!583560 (=> (not res!371520) (not e!334315))))

(declare-datatypes ((List!11602 0))(
  ( (Nil!11599) (Cons!11598 (h!12643 (_ BitVec 64)) (t!17838 List!11602)) )
))
(declare-fun arrayNoDuplicates!0 (array!36475 (_ BitVec 32) List!11602) Bool)

(assert (=> b!583560 (= res!371520 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11599))))

(declare-fun b!583561 () Bool)

(declare-fun res!371524 () Bool)

(assert (=> b!583561 (=> (not res!371524) (not e!334314))))

(assert (=> b!583561 (= res!371524 (validKeyInArray!0 (select (arr!17508 a!2986) j!136)))))

(declare-fun b!583562 () Bool)

(assert (=> b!583562 (= e!334312 false)))

(declare-fun lt!265364 () SeekEntryResult!5955)

(assert (=> b!583562 (= lt!265364 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265362 vacantSpotIndex!68 (select (arr!17508 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53620 res!371519) b!583556))

(assert (= (and b!583556 res!371522) b!583561))

(assert (= (and b!583561 res!371524) b!583552))

(assert (= (and b!583552 res!371526) b!583553))

(assert (= (and b!583553 res!371517) b!583557))

(assert (= (and b!583557 res!371525) b!583554))

(assert (= (and b!583554 res!371523) b!583560))

(assert (= (and b!583560 res!371520) b!583558))

(assert (= (and b!583558 res!371521) b!583555))

(assert (= (and b!583555 res!371518) b!583559))

(assert (= (and b!583559 res!371527) b!583551))

(assert (= (and b!583551 res!371528) b!583562))

(declare-fun m!562033 () Bool)

(assert (=> b!583561 m!562033))

(assert (=> b!583561 m!562033))

(declare-fun m!562035 () Bool)

(assert (=> b!583561 m!562035))

(declare-fun m!562037 () Bool)

(assert (=> b!583552 m!562037))

(declare-fun m!562039 () Bool)

(assert (=> b!583559 m!562039))

(assert (=> b!583559 m!562033))

(declare-fun m!562041 () Bool)

(assert (=> start!53620 m!562041))

(declare-fun m!562043 () Bool)

(assert (=> start!53620 m!562043))

(declare-fun m!562045 () Bool)

(assert (=> b!583558 m!562045))

(declare-fun m!562047 () Bool)

(assert (=> b!583558 m!562047))

(declare-fun m!562049 () Bool)

(assert (=> b!583558 m!562049))

(declare-fun m!562051 () Bool)

(assert (=> b!583553 m!562051))

(assert (=> b!583555 m!562033))

(assert (=> b!583555 m!562033))

(declare-fun m!562053 () Bool)

(assert (=> b!583555 m!562053))

(assert (=> b!583562 m!562033))

(assert (=> b!583562 m!562033))

(declare-fun m!562055 () Bool)

(assert (=> b!583562 m!562055))

(declare-fun m!562057 () Bool)

(assert (=> b!583554 m!562057))

(declare-fun m!562059 () Bool)

(assert (=> b!583560 m!562059))

(declare-fun m!562061 () Bool)

(assert (=> b!583551 m!562061))

(declare-fun m!562063 () Bool)

(assert (=> b!583557 m!562063))

(push 1)

