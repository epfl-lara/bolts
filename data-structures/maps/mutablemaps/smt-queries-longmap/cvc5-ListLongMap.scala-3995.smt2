; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54168 () Bool)

(assert start!54168)

(declare-fun b!591468 () Bool)

(declare-fun e!337729 () Bool)

(assert (=> b!591468 (= e!337729 true)))

(declare-fun e!337735 () Bool)

(assert (=> b!591468 e!337735))

(declare-fun res!378563 () Bool)

(assert (=> b!591468 (=> (not res!378563) (not e!337735))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268458 () (_ BitVec 64))

(declare-datatypes ((array!36861 0))(
  ( (array!36862 (arr!17697 (Array (_ BitVec 32) (_ BitVec 64))) (size!18061 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36861)

(assert (=> b!591468 (= res!378563 (= lt!268458 (select (arr!17697 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591468 (= lt!268458 (select (store (arr!17697 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591469 () Bool)

(declare-fun e!337734 () Bool)

(assert (=> b!591469 (= e!337734 (not e!337729))))

(declare-fun res!378560 () Bool)

(assert (=> b!591469 (=> res!378560 e!337729)))

(declare-datatypes ((SeekEntryResult!6144 0))(
  ( (MissingZero!6144 (index!26811 (_ BitVec 32))) (Found!6144 (index!26812 (_ BitVec 32))) (Intermediate!6144 (undefined!6956 Bool) (index!26813 (_ BitVec 32)) (x!55633 (_ BitVec 32))) (Undefined!6144) (MissingVacant!6144 (index!26814 (_ BitVec 32))) )
))
(declare-fun lt!268452 () SeekEntryResult!6144)

(assert (=> b!591469 (= res!378560 (not (= lt!268452 (Found!6144 index!984))))))

(declare-datatypes ((Unit!18520 0))(
  ( (Unit!18521) )
))
(declare-fun lt!268461 () Unit!18520)

(declare-fun e!337737 () Unit!18520)

(assert (=> b!591469 (= lt!268461 e!337737)))

(declare-fun c!66821 () Bool)

(assert (=> b!591469 (= c!66821 (= lt!268452 Undefined!6144))))

(declare-fun lt!268456 () array!36861)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!268460 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36861 (_ BitVec 32)) SeekEntryResult!6144)

(assert (=> b!591469 (= lt!268452 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268460 lt!268456 mask!3053))))

(declare-fun e!337736 () Bool)

(assert (=> b!591469 e!337736))

(declare-fun res!378564 () Bool)

(assert (=> b!591469 (=> (not res!378564) (not e!337736))))

(declare-fun lt!268457 () (_ BitVec 32))

(declare-fun lt!268455 () SeekEntryResult!6144)

(assert (=> b!591469 (= res!378564 (= lt!268455 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268457 vacantSpotIndex!68 lt!268460 lt!268456 mask!3053)))))

(assert (=> b!591469 (= lt!268455 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268457 vacantSpotIndex!68 (select (arr!17697 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591469 (= lt!268460 (select (store (arr!17697 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268453 () Unit!18520)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36861 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18520)

(assert (=> b!591469 (= lt!268453 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268457 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591469 (= lt!268457 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591470 () Bool)

(declare-fun res!378565 () Bool)

(declare-fun e!337730 () Bool)

(assert (=> b!591470 (=> (not res!378565) (not e!337730))))

(declare-datatypes ((List!11791 0))(
  ( (Nil!11788) (Cons!11787 (h!12832 (_ BitVec 64)) (t!18027 List!11791)) )
))
(declare-fun arrayNoDuplicates!0 (array!36861 (_ BitVec 32) List!11791) Bool)

(assert (=> b!591470 (= res!378565 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11788))))

(declare-fun b!591471 () Bool)

(declare-fun e!337738 () Bool)

(declare-fun arrayContainsKey!0 (array!36861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591471 (= e!337738 (arrayContainsKey!0 lt!268456 (select (arr!17697 a!2986) j!136) index!984))))

(declare-fun b!591472 () Bool)

(declare-fun e!337728 () Bool)

(assert (=> b!591472 (= e!337735 e!337728)))

(declare-fun res!378571 () Bool)

(assert (=> b!591472 (=> res!378571 e!337728)))

(assert (=> b!591472 (= res!378571 (or (not (= (select (arr!17697 a!2986) j!136) lt!268460)) (not (= (select (arr!17697 a!2986) j!136) lt!268458)) (bvsge j!136 index!984)))))

(declare-fun b!591473 () Bool)

(declare-fun e!337733 () Bool)

(assert (=> b!591473 (= e!337733 e!337730)))

(declare-fun res!378573 () Bool)

(assert (=> b!591473 (=> (not res!378573) (not e!337730))))

(declare-fun lt!268454 () SeekEntryResult!6144)

(assert (=> b!591473 (= res!378573 (or (= lt!268454 (MissingZero!6144 i!1108)) (= lt!268454 (MissingVacant!6144 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36861 (_ BitVec 32)) SeekEntryResult!6144)

(assert (=> b!591473 (= lt!268454 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591474 () Bool)

(declare-fun e!337732 () Bool)

(assert (=> b!591474 (= e!337732 e!337734)))

(declare-fun res!378570 () Bool)

(assert (=> b!591474 (=> (not res!378570) (not e!337734))))

(declare-fun lt!268459 () SeekEntryResult!6144)

(assert (=> b!591474 (= res!378570 (and (= lt!268459 (Found!6144 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17697 a!2986) index!984) (select (arr!17697 a!2986) j!136))) (not (= (select (arr!17697 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!591474 (= lt!268459 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17697 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591475 () Bool)

(assert (=> b!591475 (= e!337728 e!337738)))

(declare-fun res!378572 () Bool)

(assert (=> b!591475 (=> (not res!378572) (not e!337738))))

(assert (=> b!591475 (= res!378572 (arrayContainsKey!0 lt!268456 (select (arr!17697 a!2986) j!136) j!136))))

(declare-fun b!591476 () Bool)

(declare-fun res!378561 () Bool)

(assert (=> b!591476 (=> (not res!378561) (not e!337733))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591476 (= res!378561 (validKeyInArray!0 k!1786))))

(declare-fun b!591477 () Bool)

(declare-fun res!378569 () Bool)

(assert (=> b!591477 (=> (not res!378569) (not e!337733))))

(assert (=> b!591477 (= res!378569 (validKeyInArray!0 (select (arr!17697 a!2986) j!136)))))

(declare-fun b!591478 () Bool)

(declare-fun Unit!18522 () Unit!18520)

(assert (=> b!591478 (= e!337737 Unit!18522)))

(declare-fun b!591479 () Bool)

(declare-fun res!378574 () Bool)

(assert (=> b!591479 (=> (not res!378574) (not e!337730))))

(assert (=> b!591479 (= res!378574 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17697 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591480 () Bool)

(declare-fun Unit!18523 () Unit!18520)

(assert (=> b!591480 (= e!337737 Unit!18523)))

(assert (=> b!591480 false))

(declare-fun res!378566 () Bool)

(assert (=> start!54168 (=> (not res!378566) (not e!337733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54168 (= res!378566 (validMask!0 mask!3053))))

(assert (=> start!54168 e!337733))

(assert (=> start!54168 true))

(declare-fun array_inv!13471 (array!36861) Bool)

(assert (=> start!54168 (array_inv!13471 a!2986)))

(declare-fun b!591481 () Bool)

(assert (=> b!591481 (= e!337730 e!337732)))

(declare-fun res!378567 () Bool)

(assert (=> b!591481 (=> (not res!378567) (not e!337732))))

(assert (=> b!591481 (= res!378567 (= (select (store (arr!17697 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591481 (= lt!268456 (array!36862 (store (arr!17697 a!2986) i!1108 k!1786) (size!18061 a!2986)))))

(declare-fun b!591482 () Bool)

(declare-fun res!378568 () Bool)

(assert (=> b!591482 (=> (not res!378568) (not e!337730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36861 (_ BitVec 32)) Bool)

(assert (=> b!591482 (= res!378568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591483 () Bool)

(declare-fun res!378575 () Bool)

(assert (=> b!591483 (=> (not res!378575) (not e!337733))))

(assert (=> b!591483 (= res!378575 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591484 () Bool)

(assert (=> b!591484 (= e!337736 (= lt!268459 lt!268455))))

(declare-fun b!591485 () Bool)

(declare-fun res!378562 () Bool)

(assert (=> b!591485 (=> (not res!378562) (not e!337733))))

(assert (=> b!591485 (= res!378562 (and (= (size!18061 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18061 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18061 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!54168 res!378566) b!591485))

(assert (= (and b!591485 res!378562) b!591477))

(assert (= (and b!591477 res!378569) b!591476))

(assert (= (and b!591476 res!378561) b!591483))

(assert (= (and b!591483 res!378575) b!591473))

(assert (= (and b!591473 res!378573) b!591482))

(assert (= (and b!591482 res!378568) b!591470))

(assert (= (and b!591470 res!378565) b!591479))

(assert (= (and b!591479 res!378574) b!591481))

(assert (= (and b!591481 res!378567) b!591474))

(assert (= (and b!591474 res!378570) b!591469))

(assert (= (and b!591469 res!378564) b!591484))

(assert (= (and b!591469 c!66821) b!591480))

(assert (= (and b!591469 (not c!66821)) b!591478))

(assert (= (and b!591469 (not res!378560)) b!591468))

(assert (= (and b!591468 res!378563) b!591472))

(assert (= (and b!591472 (not res!378571)) b!591475))

(assert (= (and b!591475 res!378572) b!591471))

(declare-fun m!569715 () Bool)

(assert (=> b!591476 m!569715))

(declare-fun m!569717 () Bool)

(assert (=> b!591471 m!569717))

(assert (=> b!591471 m!569717))

(declare-fun m!569719 () Bool)

(assert (=> b!591471 m!569719))

(assert (=> b!591477 m!569717))

(assert (=> b!591477 m!569717))

(declare-fun m!569721 () Bool)

(assert (=> b!591477 m!569721))

(declare-fun m!569723 () Bool)

(assert (=> b!591474 m!569723))

(assert (=> b!591474 m!569717))

(assert (=> b!591474 m!569717))

(declare-fun m!569725 () Bool)

(assert (=> b!591474 m!569725))

(declare-fun m!569727 () Bool)

(assert (=> b!591473 m!569727))

(assert (=> b!591475 m!569717))

(assert (=> b!591475 m!569717))

(declare-fun m!569729 () Bool)

(assert (=> b!591475 m!569729))

(declare-fun m!569731 () Bool)

(assert (=> b!591470 m!569731))

(declare-fun m!569733 () Bool)

(assert (=> b!591482 m!569733))

(declare-fun m!569735 () Bool)

(assert (=> start!54168 m!569735))

(declare-fun m!569737 () Bool)

(assert (=> start!54168 m!569737))

(assert (=> b!591468 m!569717))

(declare-fun m!569739 () Bool)

(assert (=> b!591468 m!569739))

(declare-fun m!569741 () Bool)

(assert (=> b!591468 m!569741))

(assert (=> b!591472 m!569717))

(declare-fun m!569743 () Bool)

(assert (=> b!591479 m!569743))

(assert (=> b!591481 m!569739))

(declare-fun m!569745 () Bool)

(assert (=> b!591481 m!569745))

(declare-fun m!569747 () Bool)

(assert (=> b!591469 m!569747))

(declare-fun m!569749 () Bool)

(assert (=> b!591469 m!569749))

(declare-fun m!569751 () Bool)

(assert (=> b!591469 m!569751))

(assert (=> b!591469 m!569739))

(assert (=> b!591469 m!569717))

(declare-fun m!569753 () Bool)

(assert (=> b!591469 m!569753))

(declare-fun m!569755 () Bool)

(assert (=> b!591469 m!569755))

(assert (=> b!591469 m!569717))

(declare-fun m!569757 () Bool)

(assert (=> b!591469 m!569757))

(declare-fun m!569759 () Bool)

(assert (=> b!591483 m!569759))

(push 1)

