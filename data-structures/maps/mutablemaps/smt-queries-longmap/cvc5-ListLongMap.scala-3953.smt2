; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53746 () Bool)

(assert start!53746)

(declare-fun b!585781 () Bool)

(declare-fun res!373752 () Bool)

(declare-fun e!335032 () Bool)

(assert (=> b!585781 (=> (not res!373752) (not e!335032))))

(declare-datatypes ((array!36601 0))(
  ( (array!36602 (arr!17571 (Array (_ BitVec 32) (_ BitVec 64))) (size!17935 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36601)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36601 (_ BitVec 32)) Bool)

(assert (=> b!585781 (= res!373752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585782 () Bool)

(declare-fun res!373749 () Bool)

(assert (=> b!585782 (=> (not res!373749) (not e!335032))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585782 (= res!373749 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17571 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17571 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585783 () Bool)

(declare-fun res!373755 () Bool)

(assert (=> b!585783 (=> (not res!373755) (not e!335032))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6018 0))(
  ( (MissingZero!6018 (index!26299 (_ BitVec 32))) (Found!6018 (index!26300 (_ BitVec 32))) (Intermediate!6018 (undefined!6830 Bool) (index!26301 (_ BitVec 32)) (x!55146 (_ BitVec 32))) (Undefined!6018) (MissingVacant!6018 (index!26302 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36601 (_ BitVec 32)) SeekEntryResult!6018)

(assert (=> b!585783 (= res!373755 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17571 a!2986) j!136) a!2986 mask!3053) (Found!6018 j!136)))))

(declare-fun b!585784 () Bool)

(declare-fun res!373753 () Bool)

(declare-fun e!335031 () Bool)

(assert (=> b!585784 (=> (not res!373753) (not e!335031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585784 (= res!373753 (validKeyInArray!0 (select (arr!17571 a!2986) j!136)))))

(declare-fun res!373750 () Bool)

(assert (=> start!53746 (=> (not res!373750) (not e!335031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53746 (= res!373750 (validMask!0 mask!3053))))

(assert (=> start!53746 e!335031))

(assert (=> start!53746 true))

(declare-fun array_inv!13345 (array!36601) Bool)

(assert (=> start!53746 (array_inv!13345 a!2986)))

(declare-fun b!585785 () Bool)

(declare-fun res!373754 () Bool)

(assert (=> b!585785 (=> (not res!373754) (not e!335032))))

(declare-datatypes ((List!11665 0))(
  ( (Nil!11662) (Cons!11661 (h!12706 (_ BitVec 64)) (t!17901 List!11665)) )
))
(declare-fun arrayNoDuplicates!0 (array!36601 (_ BitVec 32) List!11665) Bool)

(assert (=> b!585785 (= res!373754 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11662))))

(declare-fun b!585786 () Bool)

(declare-fun res!373751 () Bool)

(assert (=> b!585786 (=> (not res!373751) (not e!335032))))

(assert (=> b!585786 (= res!373751 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17571 a!2986) index!984) (select (arr!17571 a!2986) j!136))) (not (= (select (arr!17571 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585787 () Bool)

(declare-fun res!373756 () Bool)

(assert (=> b!585787 (=> (not res!373756) (not e!335031))))

(assert (=> b!585787 (= res!373756 (validKeyInArray!0 k!1786))))

(declare-fun b!585788 () Bool)

(declare-fun res!373747 () Bool)

(assert (=> b!585788 (=> (not res!373747) (not e!335031))))

(assert (=> b!585788 (= res!373747 (and (= (size!17935 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17935 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17935 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585789 () Bool)

(assert (=> b!585789 (= e!335032 (not true))))

(declare-fun lt!265931 () (_ BitVec 32))

(assert (=> b!585789 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265931 vacantSpotIndex!68 (select (arr!17571 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265931 vacantSpotIndex!68 (select (store (arr!17571 a!2986) i!1108 k!1786) j!136) (array!36602 (store (arr!17571 a!2986) i!1108 k!1786) (size!17935 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18160 0))(
  ( (Unit!18161) )
))
(declare-fun lt!265929 () Unit!18160)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36601 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18160)

(assert (=> b!585789 (= lt!265929 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265931 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585789 (= lt!265931 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585790 () Bool)

(assert (=> b!585790 (= e!335031 e!335032)))

(declare-fun res!373757 () Bool)

(assert (=> b!585790 (=> (not res!373757) (not e!335032))))

(declare-fun lt!265930 () SeekEntryResult!6018)

(assert (=> b!585790 (= res!373757 (or (= lt!265930 (MissingZero!6018 i!1108)) (= lt!265930 (MissingVacant!6018 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36601 (_ BitVec 32)) SeekEntryResult!6018)

(assert (=> b!585790 (= lt!265930 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585791 () Bool)

(declare-fun res!373748 () Bool)

(assert (=> b!585791 (=> (not res!373748) (not e!335031))))

(declare-fun arrayContainsKey!0 (array!36601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585791 (= res!373748 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53746 res!373750) b!585788))

(assert (= (and b!585788 res!373747) b!585784))

(assert (= (and b!585784 res!373753) b!585787))

(assert (= (and b!585787 res!373756) b!585791))

(assert (= (and b!585791 res!373748) b!585790))

(assert (= (and b!585790 res!373757) b!585781))

(assert (= (and b!585781 res!373752) b!585785))

(assert (= (and b!585785 res!373754) b!585782))

(assert (= (and b!585782 res!373749) b!585783))

(assert (= (and b!585783 res!373755) b!585786))

(assert (= (and b!585786 res!373751) b!585789))

(declare-fun m!564121 () Bool)

(assert (=> b!585791 m!564121))

(declare-fun m!564123 () Bool)

(assert (=> b!585782 m!564123))

(declare-fun m!564125 () Bool)

(assert (=> b!585782 m!564125))

(declare-fun m!564127 () Bool)

(assert (=> b!585782 m!564127))

(declare-fun m!564129 () Bool)

(assert (=> b!585781 m!564129))

(declare-fun m!564131 () Bool)

(assert (=> start!53746 m!564131))

(declare-fun m!564133 () Bool)

(assert (=> start!53746 m!564133))

(declare-fun m!564135 () Bool)

(assert (=> b!585784 m!564135))

(assert (=> b!585784 m!564135))

(declare-fun m!564137 () Bool)

(assert (=> b!585784 m!564137))

(declare-fun m!564139 () Bool)

(assert (=> b!585789 m!564139))

(declare-fun m!564141 () Bool)

(assert (=> b!585789 m!564141))

(assert (=> b!585789 m!564135))

(declare-fun m!564143 () Bool)

(assert (=> b!585789 m!564143))

(assert (=> b!585789 m!564125))

(assert (=> b!585789 m!564135))

(declare-fun m!564145 () Bool)

(assert (=> b!585789 m!564145))

(assert (=> b!585789 m!564141))

(declare-fun m!564147 () Bool)

(assert (=> b!585789 m!564147))

(declare-fun m!564149 () Bool)

(assert (=> b!585785 m!564149))

(assert (=> b!585783 m!564135))

(assert (=> b!585783 m!564135))

(declare-fun m!564151 () Bool)

(assert (=> b!585783 m!564151))

(declare-fun m!564153 () Bool)

(assert (=> b!585787 m!564153))

(declare-fun m!564155 () Bool)

(assert (=> b!585786 m!564155))

(assert (=> b!585786 m!564135))

(declare-fun m!564157 () Bool)

(assert (=> b!585790 m!564157))

(push 1)

