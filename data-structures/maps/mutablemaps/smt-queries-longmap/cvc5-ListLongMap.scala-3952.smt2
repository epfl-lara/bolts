; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53740 () Bool)

(assert start!53740)

(declare-fun b!585682 () Bool)

(declare-fun res!373658 () Bool)

(declare-fun e!335005 () Bool)

(assert (=> b!585682 (=> (not res!373658) (not e!335005))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585682 (= res!373658 (validKeyInArray!0 k!1786))))

(declare-fun b!585683 () Bool)

(declare-fun e!335003 () Bool)

(assert (=> b!585683 (= e!335003 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36595 0))(
  ( (array!36596 (arr!17568 (Array (_ BitVec 32) (_ BitVec 64))) (size!17932 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36595)

(declare-fun lt!265903 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6015 0))(
  ( (MissingZero!6015 (index!26287 (_ BitVec 32))) (Found!6015 (index!26288 (_ BitVec 32))) (Intermediate!6015 (undefined!6827 Bool) (index!26289 (_ BitVec 32)) (x!55135 (_ BitVec 32))) (Undefined!6015) (MissingVacant!6015 (index!26290 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36595 (_ BitVec 32)) SeekEntryResult!6015)

(assert (=> b!585683 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265903 vacantSpotIndex!68 (select (arr!17568 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265903 vacantSpotIndex!68 (select (store (arr!17568 a!2986) i!1108 k!1786) j!136) (array!36596 (store (arr!17568 a!2986) i!1108 k!1786) (size!17932 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18154 0))(
  ( (Unit!18155) )
))
(declare-fun lt!265902 () Unit!18154)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18154)

(assert (=> b!585683 (= lt!265902 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265903 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585683 (= lt!265903 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585684 () Bool)

(declare-fun res!373657 () Bool)

(assert (=> b!585684 (=> (not res!373657) (not e!335005))))

(assert (=> b!585684 (= res!373657 (validKeyInArray!0 (select (arr!17568 a!2986) j!136)))))

(declare-fun b!585685 () Bool)

(declare-fun res!373651 () Bool)

(assert (=> b!585685 (=> (not res!373651) (not e!335003))))

(assert (=> b!585685 (= res!373651 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17568 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17568 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585686 () Bool)

(declare-fun res!373653 () Bool)

(assert (=> b!585686 (=> (not res!373653) (not e!335003))))

(declare-datatypes ((List!11662 0))(
  ( (Nil!11659) (Cons!11658 (h!12703 (_ BitVec 64)) (t!17898 List!11662)) )
))
(declare-fun arrayNoDuplicates!0 (array!36595 (_ BitVec 32) List!11662) Bool)

(assert (=> b!585686 (= res!373653 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11659))))

(declare-fun b!585687 () Bool)

(declare-fun res!373648 () Bool)

(assert (=> b!585687 (=> (not res!373648) (not e!335003))))

(assert (=> b!585687 (= res!373648 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17568 a!2986) index!984) (select (arr!17568 a!2986) j!136))) (not (= (select (arr!17568 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!373655 () Bool)

(assert (=> start!53740 (=> (not res!373655) (not e!335005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53740 (= res!373655 (validMask!0 mask!3053))))

(assert (=> start!53740 e!335005))

(assert (=> start!53740 true))

(declare-fun array_inv!13342 (array!36595) Bool)

(assert (=> start!53740 (array_inv!13342 a!2986)))

(declare-fun b!585688 () Bool)

(declare-fun res!373654 () Bool)

(assert (=> b!585688 (=> (not res!373654) (not e!335003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36595 (_ BitVec 32)) Bool)

(assert (=> b!585688 (= res!373654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585689 () Bool)

(declare-fun res!373649 () Bool)

(assert (=> b!585689 (=> (not res!373649) (not e!335005))))

(assert (=> b!585689 (= res!373649 (and (= (size!17932 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17932 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17932 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585690 () Bool)

(declare-fun res!373652 () Bool)

(assert (=> b!585690 (=> (not res!373652) (not e!335003))))

(assert (=> b!585690 (= res!373652 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17568 a!2986) j!136) a!2986 mask!3053) (Found!6015 j!136)))))

(declare-fun b!585691 () Bool)

(declare-fun res!373650 () Bool)

(assert (=> b!585691 (=> (not res!373650) (not e!335005))))

(declare-fun arrayContainsKey!0 (array!36595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585691 (= res!373650 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585692 () Bool)

(assert (=> b!585692 (= e!335005 e!335003)))

(declare-fun res!373656 () Bool)

(assert (=> b!585692 (=> (not res!373656) (not e!335003))))

(declare-fun lt!265904 () SeekEntryResult!6015)

(assert (=> b!585692 (= res!373656 (or (= lt!265904 (MissingZero!6015 i!1108)) (= lt!265904 (MissingVacant!6015 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36595 (_ BitVec 32)) SeekEntryResult!6015)

(assert (=> b!585692 (= lt!265904 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53740 res!373655) b!585689))

(assert (= (and b!585689 res!373649) b!585684))

(assert (= (and b!585684 res!373657) b!585682))

(assert (= (and b!585682 res!373658) b!585691))

(assert (= (and b!585691 res!373650) b!585692))

(assert (= (and b!585692 res!373656) b!585688))

(assert (= (and b!585688 res!373654) b!585686))

(assert (= (and b!585686 res!373653) b!585685))

(assert (= (and b!585685 res!373651) b!585690))

(assert (= (and b!585690 res!373652) b!585687))

(assert (= (and b!585687 res!373648) b!585683))

(declare-fun m!564007 () Bool)

(assert (=> b!585691 m!564007))

(declare-fun m!564009 () Bool)

(assert (=> b!585684 m!564009))

(assert (=> b!585684 m!564009))

(declare-fun m!564011 () Bool)

(assert (=> b!585684 m!564011))

(declare-fun m!564013 () Bool)

(assert (=> b!585683 m!564013))

(declare-fun m!564015 () Bool)

(assert (=> b!585683 m!564015))

(assert (=> b!585683 m!564009))

(assert (=> b!585683 m!564015))

(declare-fun m!564017 () Bool)

(assert (=> b!585683 m!564017))

(declare-fun m!564019 () Bool)

(assert (=> b!585683 m!564019))

(assert (=> b!585683 m!564009))

(declare-fun m!564021 () Bool)

(assert (=> b!585683 m!564021))

(declare-fun m!564023 () Bool)

(assert (=> b!585683 m!564023))

(declare-fun m!564025 () Bool)

(assert (=> b!585687 m!564025))

(assert (=> b!585687 m!564009))

(declare-fun m!564027 () Bool)

(assert (=> b!585686 m!564027))

(declare-fun m!564029 () Bool)

(assert (=> b!585685 m!564029))

(assert (=> b!585685 m!564023))

(declare-fun m!564031 () Bool)

(assert (=> b!585685 m!564031))

(assert (=> b!585690 m!564009))

(assert (=> b!585690 m!564009))

(declare-fun m!564033 () Bool)

(assert (=> b!585690 m!564033))

(declare-fun m!564035 () Bool)

(assert (=> b!585688 m!564035))

(declare-fun m!564037 () Bool)

(assert (=> start!53740 m!564037))

(declare-fun m!564039 () Bool)

(assert (=> start!53740 m!564039))

(declare-fun m!564041 () Bool)

(assert (=> b!585692 m!564041))

(declare-fun m!564043 () Bool)

(assert (=> b!585682 m!564043))

(push 1)

