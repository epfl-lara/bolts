; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57826 () Bool)

(assert start!57826)

(declare-fun b!639143 () Bool)

(declare-fun e!365795 () Bool)

(declare-fun e!365799 () Bool)

(assert (=> b!639143 (= e!365795 e!365799)))

(declare-fun res!413879 () Bool)

(assert (=> b!639143 (=> (not res!413879) (not e!365799))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38284 0))(
  ( (array!38285 (arr!18359 (Array (_ BitVec 32) (_ BitVec 64))) (size!18723 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38284)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!639143 (= res!413879 (= (select (store (arr!18359 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!295702 () array!38284)

(assert (=> b!639143 (= lt!295702 (array!38285 (store (arr!18359 a!2986) i!1108 k!1786) (size!18723 a!2986)))))

(declare-fun b!639144 () Bool)

(declare-fun e!365793 () Bool)

(assert (=> b!639144 (= e!365793 (or (bvsge (size!18723 a!2986) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!18723 a!2986))))))

(declare-datatypes ((List!12453 0))(
  ( (Nil!12450) (Cons!12449 (h!13494 (_ BitVec 64)) (t!18689 List!12453)) )
))
(declare-fun arrayNoDuplicates!0 (array!38284 (_ BitVec 32) List!12453) Bool)

(assert (=> b!639144 (arrayNoDuplicates!0 lt!295702 #b00000000000000000000000000000000 Nil!12450)))

(declare-datatypes ((Unit!21582 0))(
  ( (Unit!21583) )
))
(declare-fun lt!295708 () Unit!21582)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38284 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12453) Unit!21582)

(assert (=> b!639144 (= lt!295708 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12450))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639144 (arrayContainsKey!0 lt!295702 (select (arr!18359 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295710 () Unit!21582)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38284 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21582)

(assert (=> b!639144 (= lt!295710 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295702 (select (arr!18359 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639145 () Bool)

(declare-fun e!365797 () Bool)

(declare-fun e!365796 () Bool)

(assert (=> b!639145 (= e!365797 (not e!365796))))

(declare-fun res!413875 () Bool)

(assert (=> b!639145 (=> res!413875 e!365796)))

(declare-datatypes ((SeekEntryResult!6806 0))(
  ( (MissingZero!6806 (index!29540 (_ BitVec 32))) (Found!6806 (index!29541 (_ BitVec 32))) (Intermediate!6806 (undefined!7618 Bool) (index!29542 (_ BitVec 32)) (x!58322 (_ BitVec 32))) (Undefined!6806) (MissingVacant!6806 (index!29543 (_ BitVec 32))) )
))
(declare-fun lt!295711 () SeekEntryResult!6806)

(assert (=> b!639145 (= res!413875 (not (= lt!295711 (Found!6806 index!984))))))

(declare-fun lt!295705 () Unit!21582)

(declare-fun e!365792 () Unit!21582)

(assert (=> b!639145 (= lt!295705 e!365792)))

(declare-fun c!73004 () Bool)

(assert (=> b!639145 (= c!73004 (= lt!295711 Undefined!6806))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!295713 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38284 (_ BitVec 32)) SeekEntryResult!6806)

(assert (=> b!639145 (= lt!295711 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295713 lt!295702 mask!3053))))

(declare-fun e!365801 () Bool)

(assert (=> b!639145 e!365801))

(declare-fun res!413877 () Bool)

(assert (=> b!639145 (=> (not res!413877) (not e!365801))))

(declare-fun lt!295707 () SeekEntryResult!6806)

(declare-fun lt!295706 () (_ BitVec 32))

(assert (=> b!639145 (= res!413877 (= lt!295707 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295706 vacantSpotIndex!68 lt!295713 lt!295702 mask!3053)))))

(assert (=> b!639145 (= lt!295707 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295706 vacantSpotIndex!68 (select (arr!18359 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639145 (= lt!295713 (select (store (arr!18359 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295712 () Unit!21582)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38284 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21582)

(assert (=> b!639145 (= lt!295712 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295706 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639145 (= lt!295706 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639146 () Bool)

(declare-fun res!413878 () Bool)

(assert (=> b!639146 (=> (not res!413878) (not e!365795))))

(assert (=> b!639146 (= res!413878 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18359 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639147 () Bool)

(declare-fun res!413876 () Bool)

(assert (=> b!639147 (=> (not res!413876) (not e!365795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38284 (_ BitVec 32)) Bool)

(assert (=> b!639147 (= res!413876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639148 () Bool)

(declare-fun res!413870 () Bool)

(declare-fun e!365794 () Bool)

(assert (=> b!639148 (=> (not res!413870) (not e!365794))))

(assert (=> b!639148 (= res!413870 (and (= (size!18723 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18723 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18723 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639149 () Bool)

(declare-fun res!413884 () Bool)

(assert (=> b!639149 (=> (not res!413884) (not e!365794))))

(assert (=> b!639149 (= res!413884 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639150 () Bool)

(declare-fun Unit!21584 () Unit!21582)

(assert (=> b!639150 (= e!365792 Unit!21584)))

(assert (=> b!639150 false))

(declare-fun b!639151 () Bool)

(declare-fun e!365798 () Bool)

(assert (=> b!639151 (= e!365798 (arrayContainsKey!0 lt!295702 (select (arr!18359 a!2986) j!136) index!984))))

(declare-fun b!639152 () Bool)

(declare-fun e!365803 () Bool)

(declare-fun e!365800 () Bool)

(assert (=> b!639152 (= e!365803 e!365800)))

(declare-fun res!413869 () Bool)

(assert (=> b!639152 (=> res!413869 e!365800)))

(declare-fun lt!295709 () (_ BitVec 64))

(assert (=> b!639152 (= res!413869 (or (not (= (select (arr!18359 a!2986) j!136) lt!295713)) (not (= (select (arr!18359 a!2986) j!136) lt!295709)) (bvsge j!136 index!984)))))

(declare-fun b!639153 () Bool)

(declare-fun res!413871 () Bool)

(assert (=> b!639153 (=> (not res!413871) (not e!365794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639153 (= res!413871 (validKeyInArray!0 k!1786))))

(declare-fun b!639155 () Bool)

(declare-fun res!413873 () Bool)

(assert (=> b!639155 (=> (not res!413873) (not e!365794))))

(assert (=> b!639155 (= res!413873 (validKeyInArray!0 (select (arr!18359 a!2986) j!136)))))

(declare-fun b!639156 () Bool)

(assert (=> b!639156 (= e!365799 e!365797)))

(declare-fun res!413880 () Bool)

(assert (=> b!639156 (=> (not res!413880) (not e!365797))))

(declare-fun lt!295704 () SeekEntryResult!6806)

(assert (=> b!639156 (= res!413880 (and (= lt!295704 (Found!6806 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18359 a!2986) index!984) (select (arr!18359 a!2986) j!136))) (not (= (select (arr!18359 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!639156 (= lt!295704 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18359 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639157 () Bool)

(declare-fun Unit!21585 () Unit!21582)

(assert (=> b!639157 (= e!365792 Unit!21585)))

(declare-fun b!639158 () Bool)

(assert (=> b!639158 (= e!365796 e!365793)))

(declare-fun res!413872 () Bool)

(assert (=> b!639158 (=> res!413872 e!365793)))

(assert (=> b!639158 (= res!413872 (or (not (= (select (arr!18359 a!2986) j!136) lt!295713)) (not (= (select (arr!18359 a!2986) j!136) lt!295709)) (bvsge j!136 index!984)))))

(assert (=> b!639158 e!365803))

(declare-fun res!413882 () Bool)

(assert (=> b!639158 (=> (not res!413882) (not e!365803))))

(assert (=> b!639158 (= res!413882 (= lt!295709 (select (arr!18359 a!2986) j!136)))))

(assert (=> b!639158 (= lt!295709 (select (store (arr!18359 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639159 () Bool)

(assert (=> b!639159 (= e!365800 e!365798)))

(declare-fun res!413881 () Bool)

(assert (=> b!639159 (=> (not res!413881) (not e!365798))))

(assert (=> b!639159 (= res!413881 (arrayContainsKey!0 lt!295702 (select (arr!18359 a!2986) j!136) j!136))))

(declare-fun b!639160 () Bool)

(declare-fun res!413885 () Bool)

(assert (=> b!639160 (=> (not res!413885) (not e!365795))))

(assert (=> b!639160 (= res!413885 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12450))))

(declare-fun b!639161 () Bool)

(assert (=> b!639161 (= e!365801 (= lt!295704 lt!295707))))

(declare-fun res!413874 () Bool)

(assert (=> start!57826 (=> (not res!413874) (not e!365794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57826 (= res!413874 (validMask!0 mask!3053))))

(assert (=> start!57826 e!365794))

(assert (=> start!57826 true))

(declare-fun array_inv!14133 (array!38284) Bool)

(assert (=> start!57826 (array_inv!14133 a!2986)))

(declare-fun b!639154 () Bool)

(assert (=> b!639154 (= e!365794 e!365795)))

(declare-fun res!413883 () Bool)

(assert (=> b!639154 (=> (not res!413883) (not e!365795))))

(declare-fun lt!295703 () SeekEntryResult!6806)

(assert (=> b!639154 (= res!413883 (or (= lt!295703 (MissingZero!6806 i!1108)) (= lt!295703 (MissingVacant!6806 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38284 (_ BitVec 32)) SeekEntryResult!6806)

(assert (=> b!639154 (= lt!295703 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!57826 res!413874) b!639148))

(assert (= (and b!639148 res!413870) b!639155))

(assert (= (and b!639155 res!413873) b!639153))

(assert (= (and b!639153 res!413871) b!639149))

(assert (= (and b!639149 res!413884) b!639154))

(assert (= (and b!639154 res!413883) b!639147))

(assert (= (and b!639147 res!413876) b!639160))

(assert (= (and b!639160 res!413885) b!639146))

(assert (= (and b!639146 res!413878) b!639143))

(assert (= (and b!639143 res!413879) b!639156))

(assert (= (and b!639156 res!413880) b!639145))

(assert (= (and b!639145 res!413877) b!639161))

(assert (= (and b!639145 c!73004) b!639150))

(assert (= (and b!639145 (not c!73004)) b!639157))

(assert (= (and b!639145 (not res!413875)) b!639158))

(assert (= (and b!639158 res!413882) b!639152))

(assert (= (and b!639152 (not res!413869)) b!639159))

(assert (= (and b!639159 res!413881) b!639151))

(assert (= (and b!639158 (not res!413872)) b!639144))

(declare-fun m!613083 () Bool)

(assert (=> b!639159 m!613083))

(assert (=> b!639159 m!613083))

(declare-fun m!613085 () Bool)

(assert (=> b!639159 m!613085))

(declare-fun m!613087 () Bool)

(assert (=> b!639144 m!613087))

(assert (=> b!639144 m!613083))

(assert (=> b!639144 m!613083))

(declare-fun m!613089 () Bool)

(assert (=> b!639144 m!613089))

(assert (=> b!639144 m!613083))

(declare-fun m!613091 () Bool)

(assert (=> b!639144 m!613091))

(declare-fun m!613093 () Bool)

(assert (=> b!639144 m!613093))

(declare-fun m!613095 () Bool)

(assert (=> b!639156 m!613095))

(assert (=> b!639156 m!613083))

(assert (=> b!639156 m!613083))

(declare-fun m!613097 () Bool)

(assert (=> b!639156 m!613097))

(declare-fun m!613099 () Bool)

(assert (=> start!57826 m!613099))

(declare-fun m!613101 () Bool)

(assert (=> start!57826 m!613101))

(declare-fun m!613103 () Bool)

(assert (=> b!639154 m!613103))

(assert (=> b!639152 m!613083))

(declare-fun m!613105 () Bool)

(assert (=> b!639145 m!613105))

(declare-fun m!613107 () Bool)

(assert (=> b!639145 m!613107))

(declare-fun m!613109 () Bool)

(assert (=> b!639145 m!613109))

(assert (=> b!639145 m!613083))

(declare-fun m!613111 () Bool)

(assert (=> b!639145 m!613111))

(declare-fun m!613113 () Bool)

(assert (=> b!639145 m!613113))

(declare-fun m!613115 () Bool)

(assert (=> b!639145 m!613115))

(assert (=> b!639145 m!613083))

(declare-fun m!613117 () Bool)

(assert (=> b!639145 m!613117))

(declare-fun m!613119 () Bool)

(assert (=> b!639149 m!613119))

(declare-fun m!613121 () Bool)

(assert (=> b!639147 m!613121))

(declare-fun m!613123 () Bool)

(assert (=> b!639160 m!613123))

(assert (=> b!639151 m!613083))

(assert (=> b!639151 m!613083))

(declare-fun m!613125 () Bool)

(assert (=> b!639151 m!613125))

(declare-fun m!613127 () Bool)

(assert (=> b!639146 m!613127))

(assert (=> b!639158 m!613083))

(assert (=> b!639158 m!613111))

(declare-fun m!613129 () Bool)

(assert (=> b!639158 m!613129))

(declare-fun m!613131 () Bool)

(assert (=> b!639153 m!613131))

(assert (=> b!639143 m!613111))

(declare-fun m!613133 () Bool)

(assert (=> b!639143 m!613133))

(assert (=> b!639155 m!613083))

(assert (=> b!639155 m!613083))

(declare-fun m!613135 () Bool)

(assert (=> b!639155 m!613135))

(push 1)

