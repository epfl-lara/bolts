; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53726 () Bool)

(assert start!53726)

(declare-fun b!585451 () Bool)

(declare-fun res!373418 () Bool)

(declare-fun e!334940 () Bool)

(assert (=> b!585451 (=> (not res!373418) (not e!334940))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36581 0))(
  ( (array!36582 (arr!17561 (Array (_ BitVec 32) (_ BitVec 64))) (size!17925 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36581)

(declare-datatypes ((SeekEntryResult!6008 0))(
  ( (MissingZero!6008 (index!26259 (_ BitVec 32))) (Found!6008 (index!26260 (_ BitVec 32))) (Intermediate!6008 (undefined!6820 Bool) (index!26261 (_ BitVec 32)) (x!55104 (_ BitVec 32))) (Undefined!6008) (MissingVacant!6008 (index!26262 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36581 (_ BitVec 32)) SeekEntryResult!6008)

(assert (=> b!585451 (= res!373418 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17561 a!2986) j!136) a!2986 mask!3053) (Found!6008 j!136)))))

(declare-fun b!585452 () Bool)

(declare-fun res!373424 () Bool)

(assert (=> b!585452 (=> (not res!373424) (not e!334940))))

(assert (=> b!585452 (= res!373424 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17561 a!2986) index!984) (select (arr!17561 a!2986) j!136))) (not (= (select (arr!17561 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585453 () Bool)

(declare-fun res!373417 () Bool)

(assert (=> b!585453 (=> (not res!373417) (not e!334940))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!585453 (= res!373417 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17561 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17561 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!373423 () Bool)

(declare-fun e!334942 () Bool)

(assert (=> start!53726 (=> (not res!373423) (not e!334942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53726 (= res!373423 (validMask!0 mask!3053))))

(assert (=> start!53726 e!334942))

(assert (=> start!53726 true))

(declare-fun array_inv!13335 (array!36581) Bool)

(assert (=> start!53726 (array_inv!13335 a!2986)))

(declare-fun b!585454 () Bool)

(declare-fun res!373426 () Bool)

(assert (=> b!585454 (=> (not res!373426) (not e!334942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585454 (= res!373426 (validKeyInArray!0 (select (arr!17561 a!2986) j!136)))))

(declare-fun b!585455 () Bool)

(assert (=> b!585455 (= e!334940 (not true))))

(declare-fun lt!265841 () (_ BitVec 32))

(assert (=> b!585455 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265841 vacantSpotIndex!68 (select (arr!17561 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265841 vacantSpotIndex!68 (select (store (arr!17561 a!2986) i!1108 k!1786) j!136) (array!36582 (store (arr!17561 a!2986) i!1108 k!1786) (size!17925 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18140 0))(
  ( (Unit!18141) )
))
(declare-fun lt!265840 () Unit!18140)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36581 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18140)

(assert (=> b!585455 (= lt!265840 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265841 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585455 (= lt!265841 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585456 () Bool)

(declare-fun res!373422 () Bool)

(assert (=> b!585456 (=> (not res!373422) (not e!334942))))

(declare-fun arrayContainsKey!0 (array!36581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585456 (= res!373422 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585457 () Bool)

(declare-fun res!373425 () Bool)

(assert (=> b!585457 (=> (not res!373425) (not e!334940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36581 (_ BitVec 32)) Bool)

(assert (=> b!585457 (= res!373425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585458 () Bool)

(declare-fun res!373420 () Bool)

(assert (=> b!585458 (=> (not res!373420) (not e!334940))))

(declare-datatypes ((List!11655 0))(
  ( (Nil!11652) (Cons!11651 (h!12696 (_ BitVec 64)) (t!17891 List!11655)) )
))
(declare-fun arrayNoDuplicates!0 (array!36581 (_ BitVec 32) List!11655) Bool)

(assert (=> b!585458 (= res!373420 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11652))))

(declare-fun b!585459 () Bool)

(assert (=> b!585459 (= e!334942 e!334940)))

(declare-fun res!373421 () Bool)

(assert (=> b!585459 (=> (not res!373421) (not e!334940))))

(declare-fun lt!265839 () SeekEntryResult!6008)

(assert (=> b!585459 (= res!373421 (or (= lt!265839 (MissingZero!6008 i!1108)) (= lt!265839 (MissingVacant!6008 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36581 (_ BitVec 32)) SeekEntryResult!6008)

(assert (=> b!585459 (= lt!265839 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585460 () Bool)

(declare-fun res!373419 () Bool)

(assert (=> b!585460 (=> (not res!373419) (not e!334942))))

(assert (=> b!585460 (= res!373419 (and (= (size!17925 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17925 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17925 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585461 () Bool)

(declare-fun res!373427 () Bool)

(assert (=> b!585461 (=> (not res!373427) (not e!334942))))

(assert (=> b!585461 (= res!373427 (validKeyInArray!0 k!1786))))

(assert (= (and start!53726 res!373423) b!585460))

(assert (= (and b!585460 res!373419) b!585454))

(assert (= (and b!585454 res!373426) b!585461))

(assert (= (and b!585461 res!373427) b!585456))

(assert (= (and b!585456 res!373422) b!585459))

(assert (= (and b!585459 res!373421) b!585457))

(assert (= (and b!585457 res!373425) b!585458))

(assert (= (and b!585458 res!373420) b!585453))

(assert (= (and b!585453 res!373417) b!585451))

(assert (= (and b!585451 res!373418) b!585452))

(assert (= (and b!585452 res!373424) b!585455))

(declare-fun m!563741 () Bool)

(assert (=> b!585456 m!563741))

(declare-fun m!563743 () Bool)

(assert (=> b!585461 m!563743))

(declare-fun m!563745 () Bool)

(assert (=> b!585459 m!563745))

(declare-fun m!563747 () Bool)

(assert (=> b!585453 m!563747))

(declare-fun m!563749 () Bool)

(assert (=> b!585453 m!563749))

(declare-fun m!563751 () Bool)

(assert (=> b!585453 m!563751))

(declare-fun m!563753 () Bool)

(assert (=> b!585451 m!563753))

(assert (=> b!585451 m!563753))

(declare-fun m!563755 () Bool)

(assert (=> b!585451 m!563755))

(declare-fun m!563757 () Bool)

(assert (=> b!585458 m!563757))

(declare-fun m!563759 () Bool)

(assert (=> b!585452 m!563759))

(assert (=> b!585452 m!563753))

(declare-fun m!563761 () Bool)

(assert (=> b!585455 m!563761))

(declare-fun m!563763 () Bool)

(assert (=> b!585455 m!563763))

(assert (=> b!585455 m!563753))

(assert (=> b!585455 m!563749))

(declare-fun m!563765 () Bool)

(assert (=> b!585455 m!563765))

(assert (=> b!585455 m!563753))

(declare-fun m!563767 () Bool)

(assert (=> b!585455 m!563767))

(assert (=> b!585455 m!563763))

(declare-fun m!563769 () Bool)

(assert (=> b!585455 m!563769))

(declare-fun m!563771 () Bool)

(assert (=> start!53726 m!563771))

(declare-fun m!563773 () Bool)

(assert (=> start!53726 m!563773))

(declare-fun m!563775 () Bool)

(assert (=> b!585457 m!563775))

(assert (=> b!585454 m!563753))

(assert (=> b!585454 m!563753))

(declare-fun m!563777 () Bool)

(assert (=> b!585454 m!563777))

(push 1)

