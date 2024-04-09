; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53744 () Bool)

(assert start!53744)

(declare-fun b!585748 () Bool)

(declare-fun res!373718 () Bool)

(declare-fun e!335021 () Bool)

(assert (=> b!585748 (=> (not res!373718) (not e!335021))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36599 0))(
  ( (array!36600 (arr!17570 (Array (_ BitVec 32) (_ BitVec 64))) (size!17934 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36599)

(assert (=> b!585748 (= res!373718 (and (= (size!17934 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17934 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17934 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585749 () Bool)

(declare-fun res!373720 () Bool)

(assert (=> b!585749 (=> (not res!373720) (not e!335021))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585749 (= res!373720 (validKeyInArray!0 k!1786))))

(declare-fun b!585750 () Bool)

(declare-fun res!373719 () Bool)

(declare-fun e!335023 () Bool)

(assert (=> b!585750 (=> (not res!373719) (not e!335023))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585750 (= res!373719 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17570 a!2986) index!984) (select (arr!17570 a!2986) j!136))) (not (= (select (arr!17570 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585751 () Bool)

(assert (=> b!585751 (= e!335023 (not true))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265920 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6017 0))(
  ( (MissingZero!6017 (index!26295 (_ BitVec 32))) (Found!6017 (index!26296 (_ BitVec 32))) (Intermediate!6017 (undefined!6829 Bool) (index!26297 (_ BitVec 32)) (x!55137 (_ BitVec 32))) (Undefined!6017) (MissingVacant!6017 (index!26298 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36599 (_ BitVec 32)) SeekEntryResult!6017)

(assert (=> b!585751 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265920 vacantSpotIndex!68 (select (arr!17570 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265920 vacantSpotIndex!68 (select (store (arr!17570 a!2986) i!1108 k!1786) j!136) (array!36600 (store (arr!17570 a!2986) i!1108 k!1786) (size!17934 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18158 0))(
  ( (Unit!18159) )
))
(declare-fun lt!265922 () Unit!18158)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36599 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18158)

(assert (=> b!585751 (= lt!265922 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265920 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585751 (= lt!265920 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585752 () Bool)

(declare-fun res!373715 () Bool)

(assert (=> b!585752 (=> (not res!373715) (not e!335023))))

(assert (=> b!585752 (= res!373715 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17570 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17570 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585753 () Bool)

(declare-fun res!373723 () Bool)

(assert (=> b!585753 (=> (not res!373723) (not e!335023))))

(assert (=> b!585753 (= res!373723 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17570 a!2986) j!136) a!2986 mask!3053) (Found!6017 j!136)))))

(declare-fun b!585754 () Bool)

(declare-fun res!373717 () Bool)

(assert (=> b!585754 (=> (not res!373717) (not e!335021))))

(declare-fun arrayContainsKey!0 (array!36599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585754 (= res!373717 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!373724 () Bool)

(assert (=> start!53744 (=> (not res!373724) (not e!335021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53744 (= res!373724 (validMask!0 mask!3053))))

(assert (=> start!53744 e!335021))

(assert (=> start!53744 true))

(declare-fun array_inv!13344 (array!36599) Bool)

(assert (=> start!53744 (array_inv!13344 a!2986)))

(declare-fun b!585755 () Bool)

(assert (=> b!585755 (= e!335021 e!335023)))

(declare-fun res!373722 () Bool)

(assert (=> b!585755 (=> (not res!373722) (not e!335023))))

(declare-fun lt!265921 () SeekEntryResult!6017)

(assert (=> b!585755 (= res!373722 (or (= lt!265921 (MissingZero!6017 i!1108)) (= lt!265921 (MissingVacant!6017 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36599 (_ BitVec 32)) SeekEntryResult!6017)

(assert (=> b!585755 (= lt!265921 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585756 () Bool)

(declare-fun res!373714 () Bool)

(assert (=> b!585756 (=> (not res!373714) (not e!335023))))

(declare-datatypes ((List!11664 0))(
  ( (Nil!11661) (Cons!11660 (h!12705 (_ BitVec 64)) (t!17900 List!11664)) )
))
(declare-fun arrayNoDuplicates!0 (array!36599 (_ BitVec 32) List!11664) Bool)

(assert (=> b!585756 (= res!373714 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11661))))

(declare-fun b!585757 () Bool)

(declare-fun res!373716 () Bool)

(assert (=> b!585757 (=> (not res!373716) (not e!335023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36599 (_ BitVec 32)) Bool)

(assert (=> b!585757 (= res!373716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585758 () Bool)

(declare-fun res!373721 () Bool)

(assert (=> b!585758 (=> (not res!373721) (not e!335021))))

(assert (=> b!585758 (= res!373721 (validKeyInArray!0 (select (arr!17570 a!2986) j!136)))))

(assert (= (and start!53744 res!373724) b!585748))

(assert (= (and b!585748 res!373718) b!585758))

(assert (= (and b!585758 res!373721) b!585749))

(assert (= (and b!585749 res!373720) b!585754))

(assert (= (and b!585754 res!373717) b!585755))

(assert (= (and b!585755 res!373722) b!585757))

(assert (= (and b!585757 res!373716) b!585756))

(assert (= (and b!585756 res!373714) b!585752))

(assert (= (and b!585752 res!373715) b!585753))

(assert (= (and b!585753 res!373723) b!585750))

(assert (= (and b!585750 res!373719) b!585751))

(declare-fun m!564083 () Bool)

(assert (=> b!585755 m!564083))

(declare-fun m!564085 () Bool)

(assert (=> b!585757 m!564085))

(declare-fun m!564087 () Bool)

(assert (=> b!585754 m!564087))

(declare-fun m!564089 () Bool)

(assert (=> b!585749 m!564089))

(declare-fun m!564091 () Bool)

(assert (=> start!53744 m!564091))

(declare-fun m!564093 () Bool)

(assert (=> start!53744 m!564093))

(declare-fun m!564095 () Bool)

(assert (=> b!585751 m!564095))

(declare-fun m!564097 () Bool)

(assert (=> b!585751 m!564097))

(declare-fun m!564099 () Bool)

(assert (=> b!585751 m!564099))

(declare-fun m!564101 () Bool)

(assert (=> b!585751 m!564101))

(assert (=> b!585751 m!564097))

(declare-fun m!564103 () Bool)

(assert (=> b!585751 m!564103))

(declare-fun m!564105 () Bool)

(assert (=> b!585751 m!564105))

(declare-fun m!564107 () Bool)

(assert (=> b!585751 m!564107))

(assert (=> b!585751 m!564105))

(assert (=> b!585758 m!564097))

(assert (=> b!585758 m!564097))

(declare-fun m!564109 () Bool)

(assert (=> b!585758 m!564109))

(assert (=> b!585753 m!564097))

(assert (=> b!585753 m!564097))

(declare-fun m!564111 () Bool)

(assert (=> b!585753 m!564111))

(declare-fun m!564113 () Bool)

(assert (=> b!585756 m!564113))

(declare-fun m!564115 () Bool)

(assert (=> b!585750 m!564115))

(assert (=> b!585750 m!564097))

(declare-fun m!564117 () Bool)

(assert (=> b!585752 m!564117))

(assert (=> b!585752 m!564099))

(declare-fun m!564119 () Bool)

(assert (=> b!585752 m!564119))

(push 1)

