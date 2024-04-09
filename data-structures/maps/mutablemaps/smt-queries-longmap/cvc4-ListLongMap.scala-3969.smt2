; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53906 () Bool)

(assert start!53906)

(declare-fun b!587683 () Bool)

(declare-fun res!375474 () Bool)

(declare-fun e!335662 () Bool)

(assert (=> b!587683 (=> (not res!375474) (not e!335662))))

(declare-datatypes ((array!36704 0))(
  ( (array!36705 (arr!17621 (Array (_ BitVec 32) (_ BitVec 64))) (size!17985 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36704)

(declare-datatypes ((List!11715 0))(
  ( (Nil!11712) (Cons!11711 (h!12756 (_ BitVec 64)) (t!17951 List!11715)) )
))
(declare-fun arrayNoDuplicates!0 (array!36704 (_ BitVec 32) List!11715) Bool)

(assert (=> b!587683 (= res!375474 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11712))))

(declare-fun b!587684 () Bool)

(declare-fun e!335658 () Bool)

(declare-datatypes ((SeekEntryResult!6068 0))(
  ( (MissingZero!6068 (index!26502 (_ BitVec 32))) (Found!6068 (index!26503 (_ BitVec 32))) (Intermediate!6068 (undefined!6880 Bool) (index!26504 (_ BitVec 32)) (x!55333 (_ BitVec 32))) (Undefined!6068) (MissingVacant!6068 (index!26505 (_ BitVec 32))) )
))
(declare-fun lt!266497 () SeekEntryResult!6068)

(declare-fun lt!266501 () SeekEntryResult!6068)

(assert (=> b!587684 (= e!335658 (= lt!266497 lt!266501))))

(declare-fun b!587685 () Bool)

(declare-fun res!375476 () Bool)

(declare-fun e!335661 () Bool)

(assert (=> b!587685 (=> (not res!375476) (not e!335661))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587685 (= res!375476 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!375472 () Bool)

(assert (=> start!53906 (=> (not res!375472) (not e!335661))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53906 (= res!375472 (validMask!0 mask!3053))))

(assert (=> start!53906 e!335661))

(assert (=> start!53906 true))

(declare-fun array_inv!13395 (array!36704) Bool)

(assert (=> start!53906 (array_inv!13395 a!2986)))

(declare-fun b!587686 () Bool)

(assert (=> b!587686 (= e!335661 e!335662)))

(declare-fun res!375477 () Bool)

(assert (=> b!587686 (=> (not res!375477) (not e!335662))))

(declare-fun lt!266498 () SeekEntryResult!6068)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!587686 (= res!375477 (or (= lt!266498 (MissingZero!6068 i!1108)) (= lt!266498 (MissingVacant!6068 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36704 (_ BitVec 32)) SeekEntryResult!6068)

(assert (=> b!587686 (= lt!266498 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587687 () Bool)

(declare-fun res!375475 () Bool)

(assert (=> b!587687 (=> (not res!375475) (not e!335661))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587687 (= res!375475 (validKeyInArray!0 (select (arr!17621 a!2986) j!136)))))

(declare-fun b!587688 () Bool)

(declare-fun res!375479 () Bool)

(assert (=> b!587688 (=> (not res!375479) (not e!335661))))

(assert (=> b!587688 (= res!375479 (validKeyInArray!0 k!1786))))

(declare-fun b!587689 () Bool)

(declare-fun res!375473 () Bool)

(assert (=> b!587689 (=> (not res!375473) (not e!335662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36704 (_ BitVec 32)) Bool)

(assert (=> b!587689 (= res!375473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587690 () Bool)

(declare-fun e!335659 () Bool)

(assert (=> b!587690 (= e!335659 (not true))))

(assert (=> b!587690 e!335658))

(declare-fun res!375470 () Bool)

(assert (=> b!587690 (=> (not res!375470) (not e!335658))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266499 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36704 (_ BitVec 32)) SeekEntryResult!6068)

(assert (=> b!587690 (= res!375470 (= lt!266501 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266499 vacantSpotIndex!68 (select (store (arr!17621 a!2986) i!1108 k!1786) j!136) (array!36705 (store (arr!17621 a!2986) i!1108 k!1786) (size!17985 a!2986)) mask!3053)))))

(assert (=> b!587690 (= lt!266501 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266499 vacantSpotIndex!68 (select (arr!17621 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18260 0))(
  ( (Unit!18261) )
))
(declare-fun lt!266500 () Unit!18260)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36704 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18260)

(assert (=> b!587690 (= lt!266500 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266499 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587690 (= lt!266499 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587691 () Bool)

(assert (=> b!587691 (= e!335662 e!335659)))

(declare-fun res!375478 () Bool)

(assert (=> b!587691 (=> (not res!375478) (not e!335659))))

(assert (=> b!587691 (= res!375478 (and (= lt!266497 (Found!6068 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17621 a!2986) index!984) (select (arr!17621 a!2986) j!136))) (not (= (select (arr!17621 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587691 (= lt!266497 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17621 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587692 () Bool)

(declare-fun res!375469 () Bool)

(assert (=> b!587692 (=> (not res!375469) (not e!335661))))

(assert (=> b!587692 (= res!375469 (and (= (size!17985 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17985 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17985 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587693 () Bool)

(declare-fun res!375471 () Bool)

(assert (=> b!587693 (=> (not res!375471) (not e!335662))))

(assert (=> b!587693 (= res!375471 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17621 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17621 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53906 res!375472) b!587692))

(assert (= (and b!587692 res!375469) b!587687))

(assert (= (and b!587687 res!375475) b!587688))

(assert (= (and b!587688 res!375479) b!587685))

(assert (= (and b!587685 res!375476) b!587686))

(assert (= (and b!587686 res!375477) b!587689))

(assert (= (and b!587689 res!375473) b!587683))

(assert (= (and b!587683 res!375474) b!587693))

(assert (= (and b!587693 res!375471) b!587691))

(assert (= (and b!587691 res!375478) b!587690))

(assert (= (and b!587690 res!375470) b!587684))

(declare-fun m!566201 () Bool)

(assert (=> b!587688 m!566201))

(declare-fun m!566203 () Bool)

(assert (=> b!587691 m!566203))

(declare-fun m!566205 () Bool)

(assert (=> b!587691 m!566205))

(assert (=> b!587691 m!566205))

(declare-fun m!566207 () Bool)

(assert (=> b!587691 m!566207))

(declare-fun m!566209 () Bool)

(assert (=> b!587683 m!566209))

(declare-fun m!566211 () Bool)

(assert (=> b!587690 m!566211))

(declare-fun m!566213 () Bool)

(assert (=> b!587690 m!566213))

(assert (=> b!587690 m!566205))

(declare-fun m!566215 () Bool)

(assert (=> b!587690 m!566215))

(assert (=> b!587690 m!566205))

(declare-fun m!566217 () Bool)

(assert (=> b!587690 m!566217))

(declare-fun m!566219 () Bool)

(assert (=> b!587690 m!566219))

(assert (=> b!587690 m!566213))

(declare-fun m!566221 () Bool)

(assert (=> b!587690 m!566221))

(declare-fun m!566223 () Bool)

(assert (=> b!587689 m!566223))

(declare-fun m!566225 () Bool)

(assert (=> start!53906 m!566225))

(declare-fun m!566227 () Bool)

(assert (=> start!53906 m!566227))

(declare-fun m!566229 () Bool)

(assert (=> b!587685 m!566229))

(declare-fun m!566231 () Bool)

(assert (=> b!587693 m!566231))

(assert (=> b!587693 m!566215))

(declare-fun m!566233 () Bool)

(assert (=> b!587693 m!566233))

(assert (=> b!587687 m!566205))

(assert (=> b!587687 m!566205))

(declare-fun m!566235 () Bool)

(assert (=> b!587687 m!566235))

(declare-fun m!566237 () Bool)

(assert (=> b!587686 m!566237))

(push 1)

(assert (not b!587683))

