; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57948 () Bool)

(assert start!57948)

(declare-fun b!640726 () Bool)

(declare-fun e!366809 () Bool)

(declare-fun e!366818 () Bool)

(assert (=> b!640726 (= e!366809 e!366818)))

(declare-fun res!415122 () Bool)

(assert (=> b!640726 (=> (not res!415122) (not e!366818))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38331 0))(
  ( (array!38332 (arr!18381 (Array (_ BitVec 32) (_ BitVec 64))) (size!18745 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38331)

(declare-fun lt!296685 () array!38331)

(declare-fun arrayContainsKey!0 (array!38331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640726 (= res!415122 (arrayContainsKey!0 lt!296685 (select (arr!18381 a!2986) j!136) j!136))))

(declare-fun b!640727 () Bool)

(declare-fun e!366815 () Bool)

(declare-fun e!366820 () Bool)

(assert (=> b!640727 (= e!366815 e!366820)))

(declare-fun res!415119 () Bool)

(assert (=> b!640727 (=> res!415119 e!366820)))

(declare-fun lt!296684 () (_ BitVec 64))

(declare-fun lt!296686 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640727 (= res!415119 (or (not (= (select (arr!18381 a!2986) j!136) lt!296686)) (not (= (select (arr!18381 a!2986) j!136) lt!296684)) (bvsge j!136 index!984)))))

(declare-fun e!366814 () Bool)

(assert (=> b!640727 e!366814))

(declare-fun res!415117 () Bool)

(assert (=> b!640727 (=> (not res!415117) (not e!366814))))

(assert (=> b!640727 (= res!415117 (= lt!296684 (select (arr!18381 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!640727 (= lt!296684 (select (store (arr!18381 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640729 () Bool)

(declare-fun res!415120 () Bool)

(declare-fun e!366813 () Bool)

(assert (=> b!640729 (=> (not res!415120) (not e!366813))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38331 (_ BitVec 32)) Bool)

(assert (=> b!640729 (= res!415120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640730 () Bool)

(declare-datatypes ((Unit!21670 0))(
  ( (Unit!21671) )
))
(declare-fun e!366817 () Unit!21670)

(declare-fun Unit!21672 () Unit!21670)

(assert (=> b!640730 (= e!366817 Unit!21672)))

(declare-fun b!640731 () Bool)

(declare-fun res!415111 () Bool)

(assert (=> b!640731 (=> (not res!415111) (not e!366813))))

(declare-datatypes ((List!12475 0))(
  ( (Nil!12472) (Cons!12471 (h!13516 (_ BitVec 64)) (t!18711 List!12475)) )
))
(declare-fun arrayNoDuplicates!0 (array!38331 (_ BitVec 32) List!12475) Bool)

(assert (=> b!640731 (= res!415111 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12472))))

(declare-fun b!640732 () Bool)

(declare-fun e!366816 () Bool)

(assert (=> b!640732 (= e!366820 e!366816)))

(declare-fun res!415124 () Bool)

(assert (=> b!640732 (=> res!415124 e!366816)))

(assert (=> b!640732 (= res!415124 (or (bvsge (size!18745 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18745 a!2986))))))

(assert (=> b!640732 (arrayNoDuplicates!0 lt!296685 j!136 Nil!12472)))

(declare-fun lt!296687 () Unit!21670)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38331 (_ BitVec 32) (_ BitVec 32)) Unit!21670)

(assert (=> b!640732 (= lt!296687 (lemmaNoDuplicateFromThenFromBigger!0 lt!296685 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640732 (arrayNoDuplicates!0 lt!296685 #b00000000000000000000000000000000 Nil!12472)))

(declare-fun lt!296688 () Unit!21670)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38331 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12475) Unit!21670)

(assert (=> b!640732 (= lt!296688 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12472))))

(assert (=> b!640732 (arrayContainsKey!0 lt!296685 (select (arr!18381 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296681 () Unit!21670)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38331 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21670)

(assert (=> b!640732 (= lt!296681 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296685 (select (arr!18381 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640733 () Bool)

(assert (=> b!640733 (= e!366814 e!366809)))

(declare-fun res!415123 () Bool)

(assert (=> b!640733 (=> res!415123 e!366809)))

(assert (=> b!640733 (= res!415123 (or (not (= (select (arr!18381 a!2986) j!136) lt!296686)) (not (= (select (arr!18381 a!2986) j!136) lt!296684)) (bvsge j!136 index!984)))))

(declare-fun b!640734 () Bool)

(declare-fun e!366808 () Bool)

(declare-datatypes ((SeekEntryResult!6828 0))(
  ( (MissingZero!6828 (index!29631 (_ BitVec 32))) (Found!6828 (index!29632 (_ BitVec 32))) (Intermediate!6828 (undefined!7640 Bool) (index!29633 (_ BitVec 32)) (x!58417 (_ BitVec 32))) (Undefined!6828) (MissingVacant!6828 (index!29634 (_ BitVec 32))) )
))
(declare-fun lt!296683 () SeekEntryResult!6828)

(declare-fun lt!296678 () SeekEntryResult!6828)

(assert (=> b!640734 (= e!366808 (= lt!296683 lt!296678))))

(declare-fun b!640735 () Bool)

(declare-fun res!415115 () Bool)

(assert (=> b!640735 (=> (not res!415115) (not e!366813))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!640735 (= res!415115 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18381 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640736 () Bool)

(declare-fun res!415125 () Bool)

(declare-fun e!366811 () Bool)

(assert (=> b!640736 (=> (not res!415125) (not e!366811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640736 (= res!415125 (validKeyInArray!0 k!1786))))

(declare-fun b!640737 () Bool)

(assert (=> b!640737 (= e!366818 (arrayContainsKey!0 lt!296685 (select (arr!18381 a!2986) j!136) index!984))))

(declare-fun b!640738 () Bool)

(declare-fun e!366819 () Bool)

(declare-fun e!366812 () Bool)

(assert (=> b!640738 (= e!366819 e!366812)))

(declare-fun res!415113 () Bool)

(assert (=> b!640738 (=> (not res!415113) (not e!366812))))

(assert (=> b!640738 (= res!415113 (and (= lt!296683 (Found!6828 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18381 a!2986) index!984) (select (arr!18381 a!2986) j!136))) (not (= (select (arr!18381 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38331 (_ BitVec 32)) SeekEntryResult!6828)

(assert (=> b!640738 (= lt!296683 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18381 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640739 () Bool)

(declare-fun noDuplicate!400 (List!12475) Bool)

(assert (=> b!640739 (= e!366816 (noDuplicate!400 Nil!12472))))

(declare-fun b!640740 () Bool)

(declare-fun res!415114 () Bool)

(assert (=> b!640740 (=> (not res!415114) (not e!366811))))

(assert (=> b!640740 (= res!415114 (validKeyInArray!0 (select (arr!18381 a!2986) j!136)))))

(declare-fun b!640741 () Bool)

(declare-fun res!415126 () Bool)

(assert (=> b!640741 (=> (not res!415126) (not e!366811))))

(assert (=> b!640741 (= res!415126 (and (= (size!18745 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18745 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18745 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640742 () Bool)

(declare-fun res!415112 () Bool)

(assert (=> b!640742 (=> (not res!415112) (not e!366811))))

(assert (=> b!640742 (= res!415112 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640743 () Bool)

(declare-fun Unit!21673 () Unit!21670)

(assert (=> b!640743 (= e!366817 Unit!21673)))

(assert (=> b!640743 false))

(declare-fun b!640744 () Bool)

(assert (=> b!640744 (= e!366811 e!366813)))

(declare-fun res!415110 () Bool)

(assert (=> b!640744 (=> (not res!415110) (not e!366813))))

(declare-fun lt!296682 () SeekEntryResult!6828)

(assert (=> b!640744 (= res!415110 (or (= lt!296682 (MissingZero!6828 i!1108)) (= lt!296682 (MissingVacant!6828 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38331 (_ BitVec 32)) SeekEntryResult!6828)

(assert (=> b!640744 (= lt!296682 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640745 () Bool)

(assert (=> b!640745 (= e!366813 e!366819)))

(declare-fun res!415127 () Bool)

(assert (=> b!640745 (=> (not res!415127) (not e!366819))))

(assert (=> b!640745 (= res!415127 (= (select (store (arr!18381 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640745 (= lt!296685 (array!38332 (store (arr!18381 a!2986) i!1108 k!1786) (size!18745 a!2986)))))

(declare-fun b!640728 () Bool)

(assert (=> b!640728 (= e!366812 (not e!366815))))

(declare-fun res!415116 () Bool)

(assert (=> b!640728 (=> res!415116 e!366815)))

(declare-fun lt!296677 () SeekEntryResult!6828)

(assert (=> b!640728 (= res!415116 (not (= lt!296677 (Found!6828 index!984))))))

(declare-fun lt!296676 () Unit!21670)

(assert (=> b!640728 (= lt!296676 e!366817)))

(declare-fun c!73175 () Bool)

(assert (=> b!640728 (= c!73175 (= lt!296677 Undefined!6828))))

(assert (=> b!640728 (= lt!296677 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296686 lt!296685 mask!3053))))

(assert (=> b!640728 e!366808))

(declare-fun res!415118 () Bool)

(assert (=> b!640728 (=> (not res!415118) (not e!366808))))

(declare-fun lt!296679 () (_ BitVec 32))

(assert (=> b!640728 (= res!415118 (= lt!296678 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 lt!296686 lt!296685 mask!3053)))))

(assert (=> b!640728 (= lt!296678 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 (select (arr!18381 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640728 (= lt!296686 (select (store (arr!18381 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296680 () Unit!21670)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21670)

(assert (=> b!640728 (= lt!296680 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640728 (= lt!296679 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!415121 () Bool)

(assert (=> start!57948 (=> (not res!415121) (not e!366811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57948 (= res!415121 (validMask!0 mask!3053))))

(assert (=> start!57948 e!366811))

(assert (=> start!57948 true))

(declare-fun array_inv!14155 (array!38331) Bool)

(assert (=> start!57948 (array_inv!14155 a!2986)))

(assert (= (and start!57948 res!415121) b!640741))

(assert (= (and b!640741 res!415126) b!640740))

(assert (= (and b!640740 res!415114) b!640736))

(assert (= (and b!640736 res!415125) b!640742))

(assert (= (and b!640742 res!415112) b!640744))

(assert (= (and b!640744 res!415110) b!640729))

(assert (= (and b!640729 res!415120) b!640731))

(assert (= (and b!640731 res!415111) b!640735))

(assert (= (and b!640735 res!415115) b!640745))

(assert (= (and b!640745 res!415127) b!640738))

(assert (= (and b!640738 res!415113) b!640728))

(assert (= (and b!640728 res!415118) b!640734))

(assert (= (and b!640728 c!73175) b!640743))

(assert (= (and b!640728 (not c!73175)) b!640730))

(assert (= (and b!640728 (not res!415116)) b!640727))

(assert (= (and b!640727 res!415117) b!640733))

(assert (= (and b!640733 (not res!415123)) b!640726))

(assert (= (and b!640726 res!415122) b!640737))

(assert (= (and b!640727 (not res!415119)) b!640732))

(assert (= (and b!640732 (not res!415124)) b!640739))

(declare-fun m!614637 () Bool)

(assert (=> b!640745 m!614637))

(declare-fun m!614639 () Bool)

(assert (=> b!640745 m!614639))

(declare-fun m!614641 () Bool)

(assert (=> b!640735 m!614641))

(declare-fun m!614643 () Bool)

(assert (=> b!640742 m!614643))

(declare-fun m!614645 () Bool)

(assert (=> b!640744 m!614645))

(declare-fun m!614647 () Bool)

(assert (=> b!640739 m!614647))

(declare-fun m!614649 () Bool)

(assert (=> b!640737 m!614649))

(assert (=> b!640737 m!614649))

(declare-fun m!614651 () Bool)

(assert (=> b!640737 m!614651))

(declare-fun m!614653 () Bool)

(assert (=> b!640732 m!614653))

(assert (=> b!640732 m!614649))

(declare-fun m!614655 () Bool)

(assert (=> b!640732 m!614655))

(declare-fun m!614657 () Bool)

(assert (=> b!640732 m!614657))

(assert (=> b!640732 m!614649))

(declare-fun m!614659 () Bool)

(assert (=> b!640732 m!614659))

(declare-fun m!614661 () Bool)

(assert (=> b!640732 m!614661))

(assert (=> b!640732 m!614649))

(declare-fun m!614663 () Bool)

(assert (=> b!640732 m!614663))

(declare-fun m!614665 () Bool)

(assert (=> b!640731 m!614665))

(declare-fun m!614667 () Bool)

(assert (=> b!640736 m!614667))

(assert (=> b!640727 m!614649))

(assert (=> b!640727 m!614637))

(declare-fun m!614669 () Bool)

(assert (=> b!640727 m!614669))

(declare-fun m!614671 () Bool)

(assert (=> b!640728 m!614671))

(declare-fun m!614673 () Bool)

(assert (=> b!640728 m!614673))

(assert (=> b!640728 m!614649))

(assert (=> b!640728 m!614637))

(declare-fun m!614675 () Bool)

(assert (=> b!640728 m!614675))

(declare-fun m!614677 () Bool)

(assert (=> b!640728 m!614677))

(declare-fun m!614679 () Bool)

(assert (=> b!640728 m!614679))

(assert (=> b!640728 m!614649))

(declare-fun m!614681 () Bool)

(assert (=> b!640728 m!614681))

(declare-fun m!614683 () Bool)

(assert (=> b!640738 m!614683))

(assert (=> b!640738 m!614649))

(assert (=> b!640738 m!614649))

(declare-fun m!614685 () Bool)

(assert (=> b!640738 m!614685))

(declare-fun m!614687 () Bool)

(assert (=> start!57948 m!614687))

(declare-fun m!614689 () Bool)

(assert (=> start!57948 m!614689))

(assert (=> b!640726 m!614649))

(assert (=> b!640726 m!614649))

(declare-fun m!614691 () Bool)

(assert (=> b!640726 m!614691))

(assert (=> b!640733 m!614649))

(assert (=> b!640740 m!614649))

(assert (=> b!640740 m!614649))

(declare-fun m!614693 () Bool)

(assert (=> b!640740 m!614693))

(declare-fun m!614695 () Bool)

(assert (=> b!640729 m!614695))

(push 1)

(assert (not b!640742))

(assert (not b!640739))

(assert (not b!640728))

(assert (not b!640744))

(assert (not b!640738))

(assert (not b!640729))

(assert (not b!640731))

(assert (not start!57948))

(assert (not b!640737))

(assert (not b!640740))

(assert (not b!640726))

(assert (not b!640736))

(assert (not b!640732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!90377 () Bool)

(assert (=> d!90377 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!640736 d!90377))

(declare-fun b!640955 () Bool)

(declare-fun c!73210 () Bool)

(declare-fun lt!296803 () (_ BitVec 64))

(assert (=> b!640955 (= c!73210 (= lt!296803 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!366962 () SeekEntryResult!6828)

(declare-fun e!366960 () SeekEntryResult!6828)

(assert (=> b!640955 (= e!366962 e!366960)))

(declare-fun b!640956 () Bool)

(assert (=> b!640956 (= e!366960 (MissingVacant!6828 vacantSpotIndex!68))))

(declare-fun b!640957 () Bool)

(assert (=> b!640957 (= e!366960 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296679 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!296686 lt!296685 mask!3053))))

(declare-fun b!640958 () Bool)

(assert (=> b!640958 (= e!366962 (Found!6828 lt!296679))))

(declare-fun lt!296802 () SeekEntryResult!6828)

(declare-fun d!90379 () Bool)

(assert (=> d!90379 (and (or (is-Undefined!6828 lt!296802) (not (is-Found!6828 lt!296802)) (and (bvsge (index!29632 lt!296802) #b00000000000000000000000000000000) (bvslt (index!29632 lt!296802) (size!18745 lt!296685)))) (or (is-Undefined!6828 lt!296802) (is-Found!6828 lt!296802) (not (is-MissingVacant!6828 lt!296802)) (not (= (index!29634 lt!296802) vacantSpotIndex!68)) (and (bvsge (index!29634 lt!296802) #b00000000000000000000000000000000) (bvslt (index!29634 lt!296802) (size!18745 lt!296685)))) (or (is-Undefined!6828 lt!296802) (ite (is-Found!6828 lt!296802) (= (select (arr!18381 lt!296685) (index!29632 lt!296802)) lt!296686) (and (is-MissingVacant!6828 lt!296802) (= (index!29634 lt!296802) vacantSpotIndex!68) (= (select (arr!18381 lt!296685) (index!29634 lt!296802)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!366961 () SeekEntryResult!6828)

(assert (=> d!90379 (= lt!296802 e!366961)))

(declare-fun c!73212 () Bool)

(assert (=> d!90379 (= c!73212 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90379 (= lt!296803 (select (arr!18381 lt!296685) lt!296679))))

(assert (=> d!90379 (validMask!0 mask!3053)))

(assert (=> d!90379 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 lt!296686 lt!296685 mask!3053) lt!296802)))

(declare-fun b!640959 () Bool)

(assert (=> b!640959 (= e!366961 Undefined!6828)))

(declare-fun b!640960 () Bool)

(assert (=> b!640960 (= e!366961 e!366962)))

(declare-fun c!73211 () Bool)

(assert (=> b!640960 (= c!73211 (= lt!296803 lt!296686))))

(assert (= (and d!90379 c!73212) b!640959))

(assert (= (and d!90379 (not c!73212)) b!640960))

(assert (= (and b!640960 c!73211) b!640958))

(assert (= (and b!640960 (not c!73211)) b!640955))

(assert (= (and b!640955 c!73210) b!640956))

(assert (= (and b!640955 (not c!73210)) b!640957))

(declare-fun m!614875 () Bool)

(assert (=> b!640957 m!614875))

(assert (=> b!640957 m!614875))

(declare-fun m!614877 () Bool)

(assert (=> b!640957 m!614877))

(declare-fun m!614879 () Bool)

(assert (=> d!90379 m!614879))

(declare-fun m!614881 () Bool)

(assert (=> d!90379 m!614881))

(declare-fun m!614883 () Bool)

(assert (=> d!90379 m!614883))

(assert (=> d!90379 m!614687))

(assert (=> b!640728 d!90379))

(declare-fun b!640961 () Bool)

(declare-fun c!73213 () Bool)

(declare-fun lt!296805 () (_ BitVec 64))

(assert (=> b!640961 (= c!73213 (= lt!296805 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!366965 () SeekEntryResult!6828)

(declare-fun e!366963 () SeekEntryResult!6828)

(assert (=> b!640961 (= e!366965 e!366963)))

(declare-fun b!640962 () Bool)

(assert (=> b!640962 (= e!366963 (MissingVacant!6828 vacantSpotIndex!68))))

(declare-fun b!640963 () Bool)

(assert (=> b!640963 (= e!366963 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296679 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18381 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640964 () Bool)

(assert (=> b!640964 (= e!366965 (Found!6828 lt!296679))))

(declare-fun lt!296804 () SeekEntryResult!6828)

(declare-fun d!90389 () Bool)

(assert (=> d!90389 (and (or (is-Undefined!6828 lt!296804) (not (is-Found!6828 lt!296804)) (and (bvsge (index!29632 lt!296804) #b00000000000000000000000000000000) (bvslt (index!29632 lt!296804) (size!18745 a!2986)))) (or (is-Undefined!6828 lt!296804) (is-Found!6828 lt!296804) (not (is-MissingVacant!6828 lt!296804)) (not (= (index!29634 lt!296804) vacantSpotIndex!68)) (and (bvsge (index!29634 lt!296804) #b00000000000000000000000000000000) (bvslt (index!29634 lt!296804) (size!18745 a!2986)))) (or (is-Undefined!6828 lt!296804) (ite (is-Found!6828 lt!296804) (= (select (arr!18381 a!2986) (index!29632 lt!296804)) (select (arr!18381 a!2986) j!136)) (and (is-MissingVacant!6828 lt!296804) (= (index!29634 lt!296804) vacantSpotIndex!68) (= (select (arr!18381 a!2986) (index!29634 lt!296804)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!366964 () SeekEntryResult!6828)

(assert (=> d!90389 (= lt!296804 e!366964)))

(declare-fun c!73215 () Bool)

(assert (=> d!90389 (= c!73215 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90389 (= lt!296805 (select (arr!18381 a!2986) lt!296679))))

(assert (=> d!90389 (validMask!0 mask!3053)))

(assert (=> d!90389 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 (select (arr!18381 a!2986) j!136) a!2986 mask!3053) lt!296804)))

(declare-fun b!640965 () Bool)

(assert (=> b!640965 (= e!366964 Undefined!6828)))

(declare-fun b!640966 () Bool)

(assert (=> b!640966 (= e!366964 e!366965)))

(declare-fun c!73214 () Bool)

(assert (=> b!640966 (= c!73214 (= lt!296805 (select (arr!18381 a!2986) j!136)))))

(assert (= (and d!90389 c!73215) b!640965))

(assert (= (and d!90389 (not c!73215)) b!640966))

(assert (= (and b!640966 c!73214) b!640964))

(assert (= (and b!640966 (not c!73214)) b!640961))

(assert (= (and b!640961 c!73213) b!640962))

(assert (= (and b!640961 (not c!73213)) b!640963))

(assert (=> b!640963 m!614875))

(assert (=> b!640963 m!614875))

(assert (=> b!640963 m!614649))

(declare-fun m!614885 () Bool)

(assert (=> b!640963 m!614885))

(declare-fun m!614887 () Bool)

(assert (=> d!90389 m!614887))

(declare-fun m!614891 () Bool)

(assert (=> d!90389 m!614891))

(declare-fun m!614893 () Bool)

(assert (=> d!90389 m!614893))

(assert (=> d!90389 m!614687))

(assert (=> b!640728 d!90389))

(declare-fun d!90391 () Bool)

(declare-fun lt!296810 () (_ BitVec 32))

(assert (=> d!90391 (and (bvsge lt!296810 #b00000000000000000000000000000000) (bvslt lt!296810 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90391 (= lt!296810 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90391 (validMask!0 mask!3053)))

(assert (=> d!90391 (= (nextIndex!0 index!984 x!910 mask!3053) lt!296810)))

(declare-fun bs!19192 () Bool)

(assert (= bs!19192 d!90391))

(declare-fun m!614899 () Bool)

(assert (=> bs!19192 m!614899))

(assert (=> bs!19192 m!614687))

(assert (=> b!640728 d!90391))

(declare-fun d!90399 () Bool)

(declare-fun e!367005 () Bool)

(assert (=> d!90399 e!367005))

(declare-fun res!415300 () Bool)

(assert (=> d!90399 (=> (not res!415300) (not e!367005))))

(assert (=> d!90399 (= res!415300 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18745 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18745 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18745 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18745 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18745 a!2986))))))

(declare-fun lt!296818 () Unit!21670)

(declare-fun choose!9 (array!38331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21670)

(assert (=> d!90399 (= lt!296818 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90399 (validMask!0 mask!3053)))

(assert (=> d!90399 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 mask!3053) lt!296818)))

(declare-fun b!641014 () Bool)

(assert (=> b!641014 (= e!367005 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 (select (arr!18381 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296679 vacantSpotIndex!68 (select (store (arr!18381 a!2986) i!1108 k!1786) j!136) (array!38332 (store (arr!18381 a!2986) i!1108 k!1786) (size!18745 a!2986)) mask!3053)))))

(assert (= (and d!90399 res!415300) b!641014))

(declare-fun m!614935 () Bool)

(assert (=> d!90399 m!614935))

(assert (=> d!90399 m!614687))

(assert (=> b!641014 m!614673))

(declare-fun m!614939 () Bool)

(assert (=> b!641014 m!614939))

(assert (=> b!641014 m!614673))

(assert (=> b!641014 m!614637))

(assert (=> b!641014 m!614649))

(assert (=> b!641014 m!614649))

(assert (=> b!641014 m!614681))

(assert (=> b!640728 d!90399))

(declare-fun b!641024 () Bool)

(declare-fun c!73227 () Bool)

(declare-fun lt!296823 () (_ BitVec 64))

(assert (=> b!641024 (= c!73227 (= lt!296823 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367014 () SeekEntryResult!6828)

(declare-fun e!367012 () SeekEntryResult!6828)

(assert (=> b!641024 (= e!367014 e!367012)))

(declare-fun b!641025 () Bool)

(assert (=> b!641025 (= e!367012 (MissingVacant!6828 vacantSpotIndex!68))))

(declare-fun b!641026 () Bool)

(assert (=> b!641026 (= e!367012 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!296686 lt!296685 mask!3053))))

(declare-fun b!641027 () Bool)

(assert (=> b!641027 (= e!367014 (Found!6828 index!984))))

(declare-fun d!90427 () Bool)

(declare-fun lt!296822 () SeekEntryResult!6828)

(assert (=> d!90427 (and (or (is-Undefined!6828 lt!296822) (not (is-Found!6828 lt!296822)) (and (bvsge (index!29632 lt!296822) #b00000000000000000000000000000000) (bvslt (index!29632 lt!296822) (size!18745 lt!296685)))) (or (is-Undefined!6828 lt!296822) (is-Found!6828 lt!296822) (not (is-MissingVacant!6828 lt!296822)) (not (= (index!29634 lt!296822) vacantSpotIndex!68)) (and (bvsge (index!29634 lt!296822) #b00000000000000000000000000000000) (bvslt (index!29634 lt!296822) (size!18745 lt!296685)))) (or (is-Undefined!6828 lt!296822) (ite (is-Found!6828 lt!296822) (= (select (arr!18381 lt!296685) (index!29632 lt!296822)) lt!296686) (and (is-MissingVacant!6828 lt!296822) (= (index!29634 lt!296822) vacantSpotIndex!68) (= (select (arr!18381 lt!296685) (index!29634 lt!296822)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!367013 () SeekEntryResult!6828)

(assert (=> d!90427 (= lt!296822 e!367013)))

(declare-fun c!73229 () Bool)

(assert (=> d!90427 (= c!73229 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90427 (= lt!296823 (select (arr!18381 lt!296685) index!984))))

(assert (=> d!90427 (validMask!0 mask!3053)))

(assert (=> d!90427 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296686 lt!296685 mask!3053) lt!296822)))

(declare-fun b!641028 () Bool)

(assert (=> b!641028 (= e!367013 Undefined!6828)))

(declare-fun b!641029 () Bool)

(assert (=> b!641029 (= e!367013 e!367014)))

(declare-fun c!73228 () Bool)

(assert (=> b!641029 (= c!73228 (= lt!296823 lt!296686))))

(assert (= (and d!90427 c!73229) b!641028))

(assert (= (and d!90427 (not c!73229)) b!641029))

(assert (= (and b!641029 c!73228) b!641027))

(assert (= (and b!641029 (not c!73228)) b!641024))

(assert (= (and b!641024 c!73227) b!641025))

(assert (= (and b!641024 (not c!73227)) b!641026))

(assert (=> b!641026 m!614671))

(assert (=> b!641026 m!614671))

(declare-fun m!614953 () Bool)

(assert (=> b!641026 m!614953))

(declare-fun m!614955 () Bool)

(assert (=> d!90427 m!614955))

(declare-fun m!614957 () Bool)

(assert (=> d!90427 m!614957))

(declare-fun m!614959 () Bool)

(assert (=> d!90427 m!614959))

(assert (=> d!90427 m!614687))

(assert (=> b!640728 d!90427))

(declare-fun b!641030 () Bool)

(declare-fun c!73230 () Bool)

(declare-fun lt!296825 () (_ BitVec 64))

(assert (=> b!641030 (= c!73230 (= lt!296825 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367017 () SeekEntryResult!6828)

(declare-fun e!367015 () SeekEntryResult!6828)

(assert (=> b!641030 (= e!367017 e!367015)))

(declare-fun b!641031 () Bool)

(assert (=> b!641031 (= e!367015 (MissingVacant!6828 vacantSpotIndex!68))))

(declare-fun b!641032 () Bool)

(assert (=> b!641032 (= e!367015 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18381 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641033 () Bool)

(assert (=> b!641033 (= e!367017 (Found!6828 index!984))))

(declare-fun lt!296824 () SeekEntryResult!6828)

(declare-fun d!90433 () Bool)

(assert (=> d!90433 (and (or (is-Undefined!6828 lt!296824) (not (is-Found!6828 lt!296824)) (and (bvsge (index!29632 lt!296824) #b00000000000000000000000000000000) (bvslt (index!29632 lt!296824) (size!18745 a!2986)))) (or (is-Undefined!6828 lt!296824) (is-Found!6828 lt!296824) (not (is-MissingVacant!6828 lt!296824)) (not (= (index!29634 lt!296824) vacantSpotIndex!68)) (and (bvsge (index!29634 lt!296824) #b00000000000000000000000000000000) (bvslt (index!29634 lt!296824) (size!18745 a!2986)))) (or (is-Undefined!6828 lt!296824) (ite (is-Found!6828 lt!296824) (= (select (arr!18381 a!2986) (index!29632 lt!296824)) (select (arr!18381 a!2986) j!136)) (and (is-MissingVacant!6828 lt!296824) (= (index!29634 lt!296824) vacantSpotIndex!68) (= (select (arr!18381 a!2986) (index!29634 lt!296824)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!367016 () SeekEntryResult!6828)

(assert (=> d!90433 (= lt!296824 e!367016)))

(declare-fun c!73232 () Bool)

(assert (=> d!90433 (= c!73232 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90433 (= lt!296825 (select (arr!18381 a!2986) index!984))))

(assert (=> d!90433 (validMask!0 mask!3053)))

(assert (=> d!90433 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18381 a!2986) j!136) a!2986 mask!3053) lt!296824)))

(declare-fun b!641034 () Bool)

(assert (=> b!641034 (= e!367016 Undefined!6828)))

(declare-fun b!641035 () Bool)

(assert (=> b!641035 (= e!367016 e!367017)))

(declare-fun c!73231 () Bool)

(assert (=> b!641035 (= c!73231 (= lt!296825 (select (arr!18381 a!2986) j!136)))))

(assert (= (and d!90433 c!73232) b!641034))

(assert (= (and d!90433 (not c!73232)) b!641035))

(assert (= (and b!641035 c!73231) b!641033))

(assert (= (and b!641035 (not c!73231)) b!641030))

(assert (= (and b!641030 c!73230) b!641031))

(assert (= (and b!641030 (not c!73230)) b!641032))

(assert (=> b!641032 m!614671))

(assert (=> b!641032 m!614671))

(assert (=> b!641032 m!614649))

(declare-fun m!614961 () Bool)

(assert (=> b!641032 m!614961))

(declare-fun m!614963 () Bool)

(assert (=> d!90433 m!614963))

(declare-fun m!614965 () Bool)

(assert (=> d!90433 m!614965))

(assert (=> d!90433 m!614683))

(assert (=> d!90433 m!614687))

(assert (=> b!640738 d!90433))

(declare-fun d!90435 () Bool)

(declare-fun res!415312 () Bool)

(declare-fun e!367026 () Bool)

(assert (=> d!90435 (=> res!415312 e!367026)))

(assert (=> d!90435 (= res!415312 (= (select (arr!18381 lt!296685) index!984) (select (arr!18381 a!2986) j!136)))))

(assert (=> d!90435 (= (arrayContainsKey!0 lt!296685 (select (arr!18381 a!2986) j!136) index!984) e!367026)))

(declare-fun b!641044 () Bool)

(declare-fun e!367027 () Bool)

(assert (=> b!641044 (= e!367026 e!367027)))

(declare-fun res!415313 () Bool)

(assert (=> b!641044 (=> (not res!415313) (not e!367027))))

(assert (=> b!641044 (= res!415313 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18745 lt!296685)))))

(declare-fun b!641045 () Bool)

(assert (=> b!641045 (= e!367027 (arrayContainsKey!0 lt!296685 (select (arr!18381 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90435 (not res!415312)) b!641044))

(assert (= (and b!641044 res!415313) b!641045))

(assert (=> d!90435 m!614959))

(assert (=> b!641045 m!614649))

(declare-fun m!614969 () Bool)

(assert (=> b!641045 m!614969))

(assert (=> b!640737 d!90435))

(declare-fun d!90439 () Bool)

(declare-fun res!415314 () Bool)

(declare-fun e!367028 () Bool)

(assert (=> d!90439 (=> res!415314 e!367028)))

(assert (=> d!90439 (= res!415314 (= (select (arr!18381 lt!296685) j!136) (select (arr!18381 a!2986) j!136)))))

(assert (=> d!90439 (= (arrayContainsKey!0 lt!296685 (select (arr!18381 a!2986) j!136) j!136) e!367028)))

(declare-fun b!641046 () Bool)

(declare-fun e!367029 () Bool)

(assert (=> b!641046 (= e!367028 e!367029)))

(declare-fun res!415315 () Bool)

(assert (=> b!641046 (=> (not res!415315) (not e!367029))))

(assert (=> b!641046 (= res!415315 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18745 lt!296685)))))

(declare-fun b!641047 () Bool)

(assert (=> b!641047 (= e!367029 (arrayContainsKey!0 lt!296685 (select (arr!18381 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90439 (not res!415314)) b!641046))

(assert (= (and b!641046 res!415315) b!641047))

(declare-fun m!614971 () Bool)

(assert (=> d!90439 m!614971))

(assert (=> b!641047 m!614649))

(declare-fun m!614973 () Bool)

(assert (=> b!641047 m!614973))

(assert (=> b!640726 d!90439))

(declare-fun d!90441 () Bool)

(assert (=> d!90441 (= (validKeyInArray!0 (select (arr!18381 a!2986) j!136)) (and (not (= (select (arr!18381 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18381 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!640740 d!90441))

(declare-fun b!641069 () Bool)

(declare-fun e!367047 () Bool)

(declare-fun e!367048 () Bool)

(assert (=> b!641069 (= e!367047 e!367048)))

(declare-fun lt!296845 () (_ BitVec 64))

(assert (=> b!641069 (= lt!296845 (select (arr!18381 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!296846 () Unit!21670)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38331 (_ BitVec 64) (_ BitVec 32)) Unit!21670)

(assert (=> b!641069 (= lt!296846 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!296845 #b00000000000000000000000000000000))))

(assert (=> b!641069 (arrayContainsKey!0 a!2986 lt!296845 #b00000000000000000000000000000000)))

(declare-fun lt!296844 () Unit!21670)

(assert (=> b!641069 (= lt!296844 lt!296846)))

(declare-fun res!415330 () Bool)

(assert (=> b!641069 (= res!415330 (= (seekEntryOrOpen!0 (select (arr!18381 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6828 #b00000000000000000000000000000000)))))

(assert (=> b!641069 (=> (not res!415330) (not e!367048))))

(declare-fun b!641070 () Bool)

(declare-fun call!33526 () Bool)

(assert (=> b!641070 (= e!367048 call!33526)))

(declare-fun b!641071 () Bool)

(assert (=> b!641071 (= e!367047 call!33526)))

(declare-fun b!641072 () Bool)

(declare-fun e!367049 () Bool)

(assert (=> b!641072 (= e!367049 e!367047)))

(declare-fun c!73237 () Bool)

(assert (=> b!641072 (= c!73237 (validKeyInArray!0 (select (arr!18381 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90443 () Bool)

(declare-fun res!415329 () Bool)

(assert (=> d!90443 (=> res!415329 e!367049)))

(assert (=> d!90443 (= res!415329 (bvsge #b00000000000000000000000000000000 (size!18745 a!2986)))))

(assert (=> d!90443 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!367049)))

(declare-fun bm!33523 () Bool)

(assert (=> bm!33523 (= call!33526 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!90443 (not res!415329)) b!641072))

(assert (= (and b!641072 c!73237) b!641069))

(assert (= (and b!641072 (not c!73237)) b!641071))

(assert (= (and b!641069 res!415330) b!641070))

(assert (= (or b!641070 b!641071) bm!33523))

(declare-fun m!614981 () Bool)

(assert (=> b!641069 m!614981))

(declare-fun m!614983 () Bool)

(assert (=> b!641069 m!614983))

(declare-fun m!614985 () Bool)

(assert (=> b!641069 m!614985))

(assert (=> b!641069 m!614981))

(declare-fun m!614987 () Bool)

(assert (=> b!641069 m!614987))

(assert (=> b!641072 m!614981))

(assert (=> b!641072 m!614981))

(declare-fun m!614991 () Bool)

(assert (=> b!641072 m!614991))

(declare-fun m!614993 () Bool)

(assert (=> bm!33523 m!614993))

(assert (=> b!640729 d!90443))

(declare-fun d!90451 () Bool)

(declare-fun res!415339 () Bool)

(declare-fun e!367062 () Bool)

(assert (=> d!90451 (=> res!415339 e!367062)))

(assert (=> d!90451 (= res!415339 (is-Nil!12472 Nil!12472))))

(assert (=> d!90451 (= (noDuplicate!400 Nil!12472) e!367062)))

(declare-fun b!641089 () Bool)

(declare-fun e!367063 () Bool)

(assert (=> b!641089 (= e!367062 e!367063)))

(declare-fun res!415340 () Bool)

(assert (=> b!641089 (=> (not res!415340) (not e!367063))))

(declare-fun contains!3131 (List!12475 (_ BitVec 64)) Bool)

(assert (=> b!641089 (= res!415340 (not (contains!3131 (t!18711 Nil!12472) (h!13516 Nil!12472))))))

(declare-fun b!641090 () Bool)

(assert (=> b!641090 (= e!367063 (noDuplicate!400 (t!18711 Nil!12472)))))

(assert (= (and d!90451 (not res!415339)) b!641089))

(assert (= (and b!641089 res!415340) b!641090))

(declare-fun m!615019 () Bool)

(assert (=> b!641089 m!615019))

(declare-fun m!615021 () Bool)

(assert (=> b!641090 m!615021))

(assert (=> b!640739 d!90451))

(declare-fun e!367087 () SeekEntryResult!6828)

(declare-fun b!641133 () Bool)

(declare-fun lt!296876 () SeekEntryResult!6828)

(assert (=> b!641133 (= e!367087 (seekKeyOrZeroReturnVacant!0 (x!58417 lt!296876) (index!29633 lt!296876) (index!29633 lt!296876) k!1786 a!2986 mask!3053))))

(declare-fun b!641134 () Bool)

(declare-fun e!367086 () SeekEntryResult!6828)

(assert (=> b!641134 (= e!367086 Undefined!6828)))

(declare-fun d!90459 () Bool)

(declare-fun lt!296875 () SeekEntryResult!6828)

(assert (=> d!90459 (and (or (is-Undefined!6828 lt!296875) (not (is-Found!6828 lt!296875)) (and (bvsge (index!29632 lt!296875) #b00000000000000000000000000000000) (bvslt (index!29632 lt!296875) (size!18745 a!2986)))) (or (is-Undefined!6828 lt!296875) (is-Found!6828 lt!296875) (not (is-MissingZero!6828 lt!296875)) (and (bvsge (index!29631 lt!296875) #b00000000000000000000000000000000) (bvslt (index!29631 lt!296875) (size!18745 a!2986)))) (or (is-Undefined!6828 lt!296875) (is-Found!6828 lt!296875) (is-MissingZero!6828 lt!296875) (not (is-MissingVacant!6828 lt!296875)) (and (bvsge (index!29634 lt!296875) #b00000000000000000000000000000000) (bvslt (index!29634 lt!296875) (size!18745 a!2986)))) (or (is-Undefined!6828 lt!296875) (ite (is-Found!6828 lt!296875) (= (select (arr!18381 a!2986) (index!29632 lt!296875)) k!1786) (ite (is-MissingZero!6828 lt!296875) (= (select (arr!18381 a!2986) (index!29631 lt!296875)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6828 lt!296875) (= (select (arr!18381 a!2986) (index!29634 lt!296875)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

