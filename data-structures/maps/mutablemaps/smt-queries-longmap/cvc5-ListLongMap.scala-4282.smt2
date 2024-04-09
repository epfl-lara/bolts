; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59616 () Bool)

(assert start!59616)

(declare-fun b!658656 () Bool)

(declare-fun res!427253 () Bool)

(declare-fun e!378391 () Bool)

(assert (=> b!658656 (=> (not res!427253) (not e!378391))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38730 0))(
  ( (array!38731 (arr!18558 (Array (_ BitVec 32) (_ BitVec 64))) (size!18922 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38730)

(assert (=> b!658656 (= res!427253 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18558 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658657 () Bool)

(declare-fun res!427252 () Bool)

(assert (=> b!658657 (=> (not res!427252) (not e!378391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38730 (_ BitVec 32)) Bool)

(assert (=> b!658657 (= res!427252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658658 () Bool)

(declare-fun res!427247 () Bool)

(declare-fun e!378400 () Bool)

(assert (=> b!658658 (=> (not res!427247) (not e!378400))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658658 (= res!427247 (validKeyInArray!0 k!1786))))

(declare-fun b!658659 () Bool)

(assert (=> b!658659 (= e!378400 e!378391)))

(declare-fun res!427242 () Bool)

(assert (=> b!658659 (=> (not res!427242) (not e!378391))))

(declare-datatypes ((SeekEntryResult!7005 0))(
  ( (MissingZero!7005 (index!30384 (_ BitVec 32))) (Found!7005 (index!30385 (_ BitVec 32))) (Intermediate!7005 (undefined!7817 Bool) (index!30386 (_ BitVec 32)) (x!59201 (_ BitVec 32))) (Undefined!7005) (MissingVacant!7005 (index!30387 (_ BitVec 32))) )
))
(declare-fun lt!308182 () SeekEntryResult!7005)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!658659 (= res!427242 (or (= lt!308182 (MissingZero!7005 i!1108)) (= lt!308182 (MissingVacant!7005 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38730 (_ BitVec 32)) SeekEntryResult!7005)

(assert (=> b!658659 (= lt!308182 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658660 () Bool)

(declare-fun res!427250 () Bool)

(assert (=> b!658660 (=> (not res!427250) (not e!378391))))

(declare-datatypes ((List!12652 0))(
  ( (Nil!12649) (Cons!12648 (h!13693 (_ BitVec 64)) (t!18888 List!12652)) )
))
(declare-fun arrayNoDuplicates!0 (array!38730 (_ BitVec 32) List!12652) Bool)

(assert (=> b!658660 (= res!427250 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12649))))

(declare-fun b!658661 () Bool)

(declare-datatypes ((Unit!22894 0))(
  ( (Unit!22895) )
))
(declare-fun e!378397 () Unit!22894)

(declare-fun Unit!22896 () Unit!22894)

(assert (=> b!658661 (= e!378397 Unit!22896)))

(declare-fun b!658662 () Bool)

(declare-fun e!378390 () Unit!22894)

(declare-fun Unit!22897 () Unit!22894)

(assert (=> b!658662 (= e!378390 Unit!22897)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!427248 () Bool)

(assert (=> b!658662 (= res!427248 (= (select (store (arr!18558 a!2986) i!1108 k!1786) index!984) (select (arr!18558 a!2986) j!136)))))

(declare-fun e!378392 () Bool)

(assert (=> b!658662 (=> (not res!427248) (not e!378392))))

(assert (=> b!658662 e!378392))

(declare-fun c!76079 () Bool)

(assert (=> b!658662 (= c!76079 (bvslt j!136 index!984))))

(declare-fun lt!308186 () Unit!22894)

(declare-fun e!378395 () Unit!22894)

(assert (=> b!658662 (= lt!308186 e!378395)))

(declare-fun c!76076 () Bool)

(assert (=> b!658662 (= c!76076 (bvslt index!984 j!136))))

(declare-fun lt!308175 () Unit!22894)

(declare-fun e!378399 () Unit!22894)

(assert (=> b!658662 (= lt!308175 e!378399)))

(assert (=> b!658662 false))

(declare-fun b!658663 () Bool)

(declare-fun res!427244 () Bool)

(assert (=> b!658663 (=> (not res!427244) (not e!378400))))

(declare-fun arrayContainsKey!0 (array!38730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658663 (= res!427244 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658664 () Bool)

(declare-fun e!378398 () Bool)

(declare-fun lt!308181 () SeekEntryResult!7005)

(declare-fun lt!308168 () SeekEntryResult!7005)

(assert (=> b!658664 (= e!378398 (= lt!308181 lt!308168))))

(declare-fun b!658665 () Bool)

(declare-fun Unit!22898 () Unit!22894)

(assert (=> b!658665 (= e!378390 Unit!22898)))

(declare-fun b!658666 () Bool)

(assert (=> b!658666 false))

(declare-fun lt!308180 () Unit!22894)

(declare-fun lt!308173 () array!38730)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38730 (_ BitVec 64) (_ BitVec 32) List!12652) Unit!22894)

(assert (=> b!658666 (= lt!308180 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308173 (select (arr!18558 a!2986) j!136) index!984 Nil!12649))))

(assert (=> b!658666 (arrayNoDuplicates!0 lt!308173 index!984 Nil!12649)))

(declare-fun lt!308170 () Unit!22894)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38730 (_ BitVec 32) (_ BitVec 32)) Unit!22894)

(assert (=> b!658666 (= lt!308170 (lemmaNoDuplicateFromThenFromBigger!0 lt!308173 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658666 (arrayNoDuplicates!0 lt!308173 #b00000000000000000000000000000000 Nil!12649)))

(declare-fun lt!308184 () Unit!22894)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38730 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12652) Unit!22894)

(assert (=> b!658666 (= lt!308184 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12649))))

(assert (=> b!658666 (arrayContainsKey!0 lt!308173 (select (arr!18558 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308179 () Unit!22894)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38730 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22894)

(assert (=> b!658666 (= lt!308179 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308173 (select (arr!18558 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378402 () Bool)

(assert (=> b!658666 e!378402))

(declare-fun res!427243 () Bool)

(assert (=> b!658666 (=> (not res!427243) (not e!378402))))

(assert (=> b!658666 (= res!427243 (arrayContainsKey!0 lt!308173 (select (arr!18558 a!2986) j!136) j!136))))

(declare-fun Unit!22899 () Unit!22894)

(assert (=> b!658666 (= e!378399 Unit!22899)))

(declare-fun e!378394 () Bool)

(declare-fun b!658668 () Bool)

(assert (=> b!658668 (= e!378394 (arrayContainsKey!0 lt!308173 (select (arr!18558 a!2986) j!136) index!984))))

(declare-fun b!658669 () Bool)

(declare-fun Unit!22900 () Unit!22894)

(assert (=> b!658669 (= e!378399 Unit!22900)))

(declare-fun b!658670 () Bool)

(declare-fun Unit!22901 () Unit!22894)

(assert (=> b!658670 (= e!378395 Unit!22901)))

(declare-fun b!658671 () Bool)

(declare-fun res!427241 () Bool)

(assert (=> b!658671 (=> (not res!427241) (not e!378400))))

(assert (=> b!658671 (= res!427241 (and (= (size!18922 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18922 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18922 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658672 () Bool)

(declare-fun res!427246 () Bool)

(assert (=> b!658672 (= res!427246 (bvsge j!136 index!984))))

(declare-fun e!378401 () Bool)

(assert (=> b!658672 (=> res!427246 e!378401)))

(assert (=> b!658672 (= e!378392 e!378401)))

(declare-fun b!658673 () Bool)

(declare-fun e!378403 () Bool)

(assert (=> b!658673 (= e!378391 e!378403)))

(declare-fun res!427249 () Bool)

(assert (=> b!658673 (=> (not res!427249) (not e!378403))))

(assert (=> b!658673 (= res!427249 (= (select (store (arr!18558 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658673 (= lt!308173 (array!38731 (store (arr!18558 a!2986) i!1108 k!1786) (size!18922 a!2986)))))

(declare-fun b!658674 () Bool)

(assert (=> b!658674 false))

(declare-fun lt!308187 () Unit!22894)

(assert (=> b!658674 (= lt!308187 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308173 (select (arr!18558 a!2986) j!136) j!136 Nil!12649))))

(assert (=> b!658674 (arrayNoDuplicates!0 lt!308173 j!136 Nil!12649)))

(declare-fun lt!308172 () Unit!22894)

(assert (=> b!658674 (= lt!308172 (lemmaNoDuplicateFromThenFromBigger!0 lt!308173 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658674 (arrayNoDuplicates!0 lt!308173 #b00000000000000000000000000000000 Nil!12649)))

(declare-fun lt!308185 () Unit!22894)

(assert (=> b!658674 (= lt!308185 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12649))))

(assert (=> b!658674 (arrayContainsKey!0 lt!308173 (select (arr!18558 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308176 () Unit!22894)

(assert (=> b!658674 (= lt!308176 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308173 (select (arr!18558 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22902 () Unit!22894)

(assert (=> b!658674 (= e!378395 Unit!22902)))

(declare-fun b!658675 () Bool)

(assert (=> b!658675 (= e!378402 (arrayContainsKey!0 lt!308173 (select (arr!18558 a!2986) j!136) index!984))))

(declare-fun b!658676 () Bool)

(declare-fun e!378396 () Bool)

(assert (=> b!658676 (= e!378403 e!378396)))

(declare-fun res!427240 () Bool)

(assert (=> b!658676 (=> (not res!427240) (not e!378396))))

(assert (=> b!658676 (= res!427240 (and (= lt!308181 (Found!7005 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18558 a!2986) index!984) (select (arr!18558 a!2986) j!136))) (not (= (select (arr!18558 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38730 (_ BitVec 32)) SeekEntryResult!7005)

(assert (=> b!658676 (= lt!308181 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18558 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658677 () Bool)

(declare-fun res!427238 () Bool)

(assert (=> b!658677 (=> (not res!427238) (not e!378400))))

(assert (=> b!658677 (= res!427238 (validKeyInArray!0 (select (arr!18558 a!2986) j!136)))))

(declare-fun res!427251 () Bool)

(assert (=> start!59616 (=> (not res!427251) (not e!378400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59616 (= res!427251 (validMask!0 mask!3053))))

(assert (=> start!59616 e!378400))

(assert (=> start!59616 true))

(declare-fun array_inv!14332 (array!38730) Bool)

(assert (=> start!59616 (array_inv!14332 a!2986)))

(declare-fun b!658667 () Bool)

(assert (=> b!658667 (= e!378396 (not true))))

(declare-fun lt!308183 () Unit!22894)

(assert (=> b!658667 (= lt!308183 e!378390)))

(declare-fun c!76078 () Bool)

(declare-fun lt!308171 () SeekEntryResult!7005)

(assert (=> b!658667 (= c!76078 (= lt!308171 (Found!7005 index!984)))))

(declare-fun lt!308174 () Unit!22894)

(assert (=> b!658667 (= lt!308174 e!378397)))

(declare-fun c!76077 () Bool)

(assert (=> b!658667 (= c!76077 (= lt!308171 Undefined!7005))))

(declare-fun lt!308177 () (_ BitVec 64))

(assert (=> b!658667 (= lt!308171 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308177 lt!308173 mask!3053))))

(assert (=> b!658667 e!378398))

(declare-fun res!427245 () Bool)

(assert (=> b!658667 (=> (not res!427245) (not e!378398))))

(declare-fun lt!308169 () (_ BitVec 32))

(assert (=> b!658667 (= res!427245 (= lt!308168 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308169 vacantSpotIndex!68 lt!308177 lt!308173 mask!3053)))))

(assert (=> b!658667 (= lt!308168 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308169 vacantSpotIndex!68 (select (arr!18558 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658667 (= lt!308177 (select (store (arr!18558 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!308178 () Unit!22894)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38730 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22894)

(assert (=> b!658667 (= lt!308178 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308169 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658667 (= lt!308169 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658678 () Bool)

(declare-fun Unit!22903 () Unit!22894)

(assert (=> b!658678 (= e!378397 Unit!22903)))

(assert (=> b!658678 false))

(declare-fun b!658679 () Bool)

(declare-fun res!427239 () Bool)

(assert (=> b!658679 (= res!427239 (arrayContainsKey!0 lt!308173 (select (arr!18558 a!2986) j!136) j!136))))

(assert (=> b!658679 (=> (not res!427239) (not e!378394))))

(assert (=> b!658679 (= e!378401 e!378394)))

(assert (= (and start!59616 res!427251) b!658671))

(assert (= (and b!658671 res!427241) b!658677))

(assert (= (and b!658677 res!427238) b!658658))

(assert (= (and b!658658 res!427247) b!658663))

(assert (= (and b!658663 res!427244) b!658659))

(assert (= (and b!658659 res!427242) b!658657))

(assert (= (and b!658657 res!427252) b!658660))

(assert (= (and b!658660 res!427250) b!658656))

(assert (= (and b!658656 res!427253) b!658673))

(assert (= (and b!658673 res!427249) b!658676))

(assert (= (and b!658676 res!427240) b!658667))

(assert (= (and b!658667 res!427245) b!658664))

(assert (= (and b!658667 c!76077) b!658678))

(assert (= (and b!658667 (not c!76077)) b!658661))

(assert (= (and b!658667 c!76078) b!658662))

(assert (= (and b!658667 (not c!76078)) b!658665))

(assert (= (and b!658662 res!427248) b!658672))

(assert (= (and b!658672 (not res!427246)) b!658679))

(assert (= (and b!658679 res!427239) b!658668))

(assert (= (and b!658662 c!76079) b!658674))

(assert (= (and b!658662 (not c!76079)) b!658670))

(assert (= (and b!658662 c!76076) b!658666))

(assert (= (and b!658662 (not c!76076)) b!658669))

(assert (= (and b!658666 res!427243) b!658675))

(declare-fun m!631701 () Bool)

(assert (=> b!658662 m!631701))

(declare-fun m!631703 () Bool)

(assert (=> b!658662 m!631703))

(declare-fun m!631705 () Bool)

(assert (=> b!658662 m!631705))

(declare-fun m!631707 () Bool)

(assert (=> b!658657 m!631707))

(declare-fun m!631709 () Bool)

(assert (=> b!658674 m!631709))

(assert (=> b!658674 m!631705))

(assert (=> b!658674 m!631705))

(declare-fun m!631711 () Bool)

(assert (=> b!658674 m!631711))

(declare-fun m!631713 () Bool)

(assert (=> b!658674 m!631713))

(assert (=> b!658674 m!631705))

(declare-fun m!631715 () Bool)

(assert (=> b!658674 m!631715))

(declare-fun m!631717 () Bool)

(assert (=> b!658674 m!631717))

(assert (=> b!658674 m!631705))

(declare-fun m!631719 () Bool)

(assert (=> b!658674 m!631719))

(declare-fun m!631721 () Bool)

(assert (=> b!658674 m!631721))

(assert (=> b!658666 m!631705))

(assert (=> b!658666 m!631705))

(declare-fun m!631723 () Bool)

(assert (=> b!658666 m!631723))

(assert (=> b!658666 m!631713))

(assert (=> b!658666 m!631705))

(declare-fun m!631725 () Bool)

(assert (=> b!658666 m!631725))

(declare-fun m!631727 () Bool)

(assert (=> b!658666 m!631727))

(assert (=> b!658666 m!631705))

(declare-fun m!631729 () Bool)

(assert (=> b!658666 m!631729))

(declare-fun m!631731 () Bool)

(assert (=> b!658666 m!631731))

(assert (=> b!658666 m!631717))

(assert (=> b!658666 m!631705))

(declare-fun m!631733 () Bool)

(assert (=> b!658666 m!631733))

(declare-fun m!631735 () Bool)

(assert (=> b!658660 m!631735))

(declare-fun m!631737 () Bool)

(assert (=> start!59616 m!631737))

(declare-fun m!631739 () Bool)

(assert (=> start!59616 m!631739))

(declare-fun m!631741 () Bool)

(assert (=> b!658663 m!631741))

(assert (=> b!658675 m!631705))

(assert (=> b!658675 m!631705))

(declare-fun m!631743 () Bool)

(assert (=> b!658675 m!631743))

(assert (=> b!658677 m!631705))

(assert (=> b!658677 m!631705))

(declare-fun m!631745 () Bool)

(assert (=> b!658677 m!631745))

(declare-fun m!631747 () Bool)

(assert (=> b!658656 m!631747))

(declare-fun m!631749 () Bool)

(assert (=> b!658667 m!631749))

(declare-fun m!631751 () Bool)

(assert (=> b!658667 m!631751))

(assert (=> b!658667 m!631701))

(declare-fun m!631753 () Bool)

(assert (=> b!658667 m!631753))

(declare-fun m!631755 () Bool)

(assert (=> b!658667 m!631755))

(declare-fun m!631757 () Bool)

(assert (=> b!658667 m!631757))

(assert (=> b!658667 m!631705))

(assert (=> b!658667 m!631705))

(declare-fun m!631759 () Bool)

(assert (=> b!658667 m!631759))

(assert (=> b!658668 m!631705))

(assert (=> b!658668 m!631705))

(assert (=> b!658668 m!631743))

(declare-fun m!631761 () Bool)

(assert (=> b!658658 m!631761))

(assert (=> b!658679 m!631705))

(assert (=> b!658679 m!631705))

(assert (=> b!658679 m!631723))

(declare-fun m!631763 () Bool)

(assert (=> b!658659 m!631763))

(declare-fun m!631765 () Bool)

(assert (=> b!658676 m!631765))

(assert (=> b!658676 m!631705))

(assert (=> b!658676 m!631705))

(declare-fun m!631767 () Bool)

(assert (=> b!658676 m!631767))

(assert (=> b!658673 m!631701))

(declare-fun m!631769 () Bool)

(assert (=> b!658673 m!631769))

(push 1)

