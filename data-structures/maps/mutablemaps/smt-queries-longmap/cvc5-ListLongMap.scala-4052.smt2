; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55548 () Bool)

(assert start!55548)

(declare-fun b!606819 () Bool)

(declare-fun res!389878 () Bool)

(declare-fun e!347496 () Bool)

(assert (=> b!606819 (=> (not res!389878) (not e!347496))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!606819 (= res!389878 (validKeyInArray!0 k!1786))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!347498 () Bool)

(declare-fun b!606820 () Bool)

(declare-datatypes ((array!37242 0))(
  ( (array!37243 (arr!17868 (Array (_ BitVec 32) (_ BitVec 64))) (size!18232 (_ BitVec 32))) )
))
(declare-fun lt!277025 () array!37242)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37242)

(declare-fun arrayContainsKey!0 (array!37242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!606820 (= e!347498 (arrayContainsKey!0 lt!277025 (select (arr!17868 a!2986) j!136) index!984))))

(declare-fun b!606821 () Bool)

(declare-fun res!389896 () Bool)

(assert (=> b!606821 (=> (not res!389896) (not e!347496))))

(assert (=> b!606821 (= res!389896 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!389875 () Bool)

(assert (=> start!55548 (=> (not res!389875) (not e!347496))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55548 (= res!389875 (validMask!0 mask!3053))))

(assert (=> start!55548 e!347496))

(assert (=> start!55548 true))

(declare-fun array_inv!13642 (array!37242) Bool)

(assert (=> start!55548 (array_inv!13642 a!2986)))

(declare-fun b!606822 () Bool)

(declare-fun res!389885 () Bool)

(declare-fun e!347495 () Bool)

(assert (=> b!606822 (=> (not res!389885) (not e!347495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37242 (_ BitVec 32)) Bool)

(assert (=> b!606822 (= res!389885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!606823 () Bool)

(declare-datatypes ((Unit!19318 0))(
  ( (Unit!19319) )
))
(declare-fun e!347501 () Unit!19318)

(declare-fun Unit!19320 () Unit!19318)

(assert (=> b!606823 (= e!347501 Unit!19320)))

(assert (=> b!606823 false))

(declare-fun b!606824 () Bool)

(declare-fun res!389876 () Bool)

(declare-fun e!347493 () Bool)

(assert (=> b!606824 (=> res!389876 e!347493)))

(declare-datatypes ((List!11962 0))(
  ( (Nil!11959) (Cons!11958 (h!13003 (_ BitVec 64)) (t!18198 List!11962)) )
))
(declare-fun contains!3008 (List!11962 (_ BitVec 64)) Bool)

(assert (=> b!606824 (= res!389876 (contains!3008 Nil!11959 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606825 () Bool)

(declare-fun res!389890 () Bool)

(assert (=> b!606825 (=> (not res!389890) (not e!347496))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!606825 (= res!389890 (and (= (size!18232 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18232 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18232 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!606826 () Bool)

(declare-fun res!389893 () Bool)

(assert (=> b!606826 (=> (not res!389893) (not e!347496))))

(assert (=> b!606826 (= res!389893 (validKeyInArray!0 (select (arr!17868 a!2986) j!136)))))

(declare-fun b!606827 () Bool)

(declare-fun e!347505 () Bool)

(declare-fun e!347504 () Bool)

(assert (=> b!606827 (= e!347505 e!347504)))

(declare-fun res!389895 () Bool)

(assert (=> b!606827 (=> res!389895 e!347504)))

(assert (=> b!606827 (= res!389895 (bvsge index!984 j!136))))

(declare-fun lt!277033 () Unit!19318)

(declare-fun e!347494 () Unit!19318)

(assert (=> b!606827 (= lt!277033 e!347494)))

(declare-fun c!68840 () Bool)

(assert (=> b!606827 (= c!68840 (bvslt j!136 index!984))))

(declare-fun b!606828 () Bool)

(declare-fun res!389897 () Bool)

(assert (=> b!606828 (=> res!389897 e!347493)))

(declare-fun noDuplicate!310 (List!11962) Bool)

(assert (=> b!606828 (= res!389897 (not (noDuplicate!310 Nil!11959)))))

(declare-fun e!347492 () Bool)

(declare-fun b!606829 () Bool)

(assert (=> b!606829 (= e!347492 (arrayContainsKey!0 lt!277025 (select (arr!17868 a!2986) j!136) index!984))))

(declare-fun b!606830 () Bool)

(assert (=> b!606830 (= e!347493 true)))

(declare-fun lt!277031 () Bool)

(assert (=> b!606830 (= lt!277031 (contains!3008 Nil!11959 k!1786))))

(declare-fun b!606831 () Bool)

(declare-fun Unit!19321 () Unit!19318)

(assert (=> b!606831 (= e!347494 Unit!19321)))

(declare-fun lt!277032 () Unit!19318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37242 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19318)

(assert (=> b!606831 (= lt!277032 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277025 (select (arr!17868 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!606831 (arrayContainsKey!0 lt!277025 (select (arr!17868 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277028 () Unit!19318)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37242 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11962) Unit!19318)

(assert (=> b!606831 (= lt!277028 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11959))))

(declare-fun arrayNoDuplicates!0 (array!37242 (_ BitVec 32) List!11962) Bool)

(assert (=> b!606831 (arrayNoDuplicates!0 lt!277025 #b00000000000000000000000000000000 Nil!11959)))

(declare-fun lt!277030 () Unit!19318)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37242 (_ BitVec 32) (_ BitVec 32)) Unit!19318)

(assert (=> b!606831 (= lt!277030 (lemmaNoDuplicateFromThenFromBigger!0 lt!277025 #b00000000000000000000000000000000 j!136))))

(assert (=> b!606831 (arrayNoDuplicates!0 lt!277025 j!136 Nil!11959)))

(declare-fun lt!277022 () Unit!19318)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37242 (_ BitVec 64) (_ BitVec 32) List!11962) Unit!19318)

(assert (=> b!606831 (= lt!277022 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277025 (select (arr!17868 a!2986) j!136) j!136 Nil!11959))))

(assert (=> b!606831 false))

(declare-fun b!606832 () Bool)

(assert (=> b!606832 (= e!347504 e!347493)))

(declare-fun res!389884 () Bool)

(assert (=> b!606832 (=> res!389884 e!347493)))

(assert (=> b!606832 (= res!389884 (or (bvsge (size!18232 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18232 a!2986))))))

(assert (=> b!606832 (arrayContainsKey!0 lt!277025 (select (arr!17868 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277035 () Unit!19318)

(assert (=> b!606832 (= lt!277035 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277025 (select (arr!17868 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!606832 e!347498))

(declare-fun res!389880 () Bool)

(assert (=> b!606832 (=> (not res!389880) (not e!347498))))

(assert (=> b!606832 (= res!389880 (arrayContainsKey!0 lt!277025 (select (arr!17868 a!2986) j!136) j!136))))

(declare-fun b!606833 () Bool)

(declare-fun res!389889 () Bool)

(assert (=> b!606833 (=> (not res!389889) (not e!347495))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!606833 (= res!389889 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17868 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606834 () Bool)

(declare-fun e!347503 () Bool)

(assert (=> b!606834 (= e!347503 e!347492)))

(declare-fun res!389879 () Bool)

(assert (=> b!606834 (=> (not res!389879) (not e!347492))))

(assert (=> b!606834 (= res!389879 (arrayContainsKey!0 lt!277025 (select (arr!17868 a!2986) j!136) j!136))))

(declare-fun b!606835 () Bool)

(declare-fun res!389891 () Bool)

(assert (=> b!606835 (=> (not res!389891) (not e!347495))))

(assert (=> b!606835 (= res!389891 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11959))))

(declare-fun b!606836 () Bool)

(declare-fun e!347502 () Bool)

(assert (=> b!606836 (= e!347502 e!347505)))

(declare-fun res!389883 () Bool)

(assert (=> b!606836 (=> res!389883 e!347505)))

(declare-fun lt!277021 () (_ BitVec 64))

(declare-fun lt!277027 () (_ BitVec 64))

(assert (=> b!606836 (= res!389883 (or (not (= (select (arr!17868 a!2986) j!136) lt!277021)) (not (= (select (arr!17868 a!2986) j!136) lt!277027))))))

(declare-fun e!347500 () Bool)

(assert (=> b!606836 e!347500))

(declare-fun res!389877 () Bool)

(assert (=> b!606836 (=> (not res!389877) (not e!347500))))

(assert (=> b!606836 (= res!389877 (= lt!277027 (select (arr!17868 a!2986) j!136)))))

(assert (=> b!606836 (= lt!277027 (select (store (arr!17868 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!606837 () Bool)

(declare-fun e!347499 () Bool)

(assert (=> b!606837 (= e!347499 (not e!347502))))

(declare-fun res!389882 () Bool)

(assert (=> b!606837 (=> res!389882 e!347502)))

(declare-datatypes ((SeekEntryResult!6315 0))(
  ( (MissingZero!6315 (index!27534 (_ BitVec 32))) (Found!6315 (index!27535 (_ BitVec 32))) (Intermediate!6315 (undefined!7127 Bool) (index!27536 (_ BitVec 32)) (x!56377 (_ BitVec 32))) (Undefined!6315) (MissingVacant!6315 (index!27537 (_ BitVec 32))) )
))
(declare-fun lt!277019 () SeekEntryResult!6315)

(assert (=> b!606837 (= res!389882 (not (= lt!277019 (Found!6315 index!984))))))

(declare-fun lt!277023 () Unit!19318)

(assert (=> b!606837 (= lt!277023 e!347501)))

(declare-fun c!68839 () Bool)

(assert (=> b!606837 (= c!68839 (= lt!277019 Undefined!6315))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37242 (_ BitVec 32)) SeekEntryResult!6315)

(assert (=> b!606837 (= lt!277019 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277021 lt!277025 mask!3053))))

(declare-fun e!347497 () Bool)

(assert (=> b!606837 e!347497))

(declare-fun res!389888 () Bool)

(assert (=> b!606837 (=> (not res!389888) (not e!347497))))

(declare-fun lt!277026 () (_ BitVec 32))

(declare-fun lt!277034 () SeekEntryResult!6315)

(assert (=> b!606837 (= res!389888 (= lt!277034 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277026 vacantSpotIndex!68 lt!277021 lt!277025 mask!3053)))))

(assert (=> b!606837 (= lt!277034 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277026 vacantSpotIndex!68 (select (arr!17868 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!606837 (= lt!277021 (select (store (arr!17868 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277024 () Unit!19318)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37242 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19318)

(assert (=> b!606837 (= lt!277024 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277026 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!606837 (= lt!277026 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!606838 () Bool)

(declare-fun e!347506 () Bool)

(assert (=> b!606838 (= e!347506 e!347499)))

(declare-fun res!389894 () Bool)

(assert (=> b!606838 (=> (not res!389894) (not e!347499))))

(declare-fun lt!277029 () SeekEntryResult!6315)

(assert (=> b!606838 (= res!389894 (and (= lt!277029 (Found!6315 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17868 a!2986) index!984) (select (arr!17868 a!2986) j!136))) (not (= (select (arr!17868 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!606838 (= lt!277029 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17868 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606839 () Bool)

(assert (=> b!606839 (= e!347497 (= lt!277029 lt!277034))))

(declare-fun b!606840 () Bool)

(assert (=> b!606840 (= e!347500 e!347503)))

(declare-fun res!389887 () Bool)

(assert (=> b!606840 (=> res!389887 e!347503)))

(assert (=> b!606840 (= res!389887 (or (not (= (select (arr!17868 a!2986) j!136) lt!277021)) (not (= (select (arr!17868 a!2986) j!136) lt!277027)) (bvsge j!136 index!984)))))

(declare-fun b!606841 () Bool)

(declare-fun res!389886 () Bool)

(assert (=> b!606841 (=> res!389886 e!347493)))

(assert (=> b!606841 (= res!389886 (contains!3008 Nil!11959 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606842 () Bool)

(declare-fun Unit!19322 () Unit!19318)

(assert (=> b!606842 (= e!347494 Unit!19322)))

(declare-fun b!606843 () Bool)

(declare-fun Unit!19323 () Unit!19318)

(assert (=> b!606843 (= e!347501 Unit!19323)))

(declare-fun b!606844 () Bool)

(assert (=> b!606844 (= e!347495 e!347506)))

(declare-fun res!389881 () Bool)

(assert (=> b!606844 (=> (not res!389881) (not e!347506))))

(assert (=> b!606844 (= res!389881 (= (select (store (arr!17868 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606844 (= lt!277025 (array!37243 (store (arr!17868 a!2986) i!1108 k!1786) (size!18232 a!2986)))))

(declare-fun b!606845 () Bool)

(assert (=> b!606845 (= e!347496 e!347495)))

(declare-fun res!389892 () Bool)

(assert (=> b!606845 (=> (not res!389892) (not e!347495))))

(declare-fun lt!277020 () SeekEntryResult!6315)

(assert (=> b!606845 (= res!389892 (or (= lt!277020 (MissingZero!6315 i!1108)) (= lt!277020 (MissingVacant!6315 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37242 (_ BitVec 32)) SeekEntryResult!6315)

(assert (=> b!606845 (= lt!277020 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!55548 res!389875) b!606825))

(assert (= (and b!606825 res!389890) b!606826))

(assert (= (and b!606826 res!389893) b!606819))

(assert (= (and b!606819 res!389878) b!606821))

(assert (= (and b!606821 res!389896) b!606845))

(assert (= (and b!606845 res!389892) b!606822))

(assert (= (and b!606822 res!389885) b!606835))

(assert (= (and b!606835 res!389891) b!606833))

(assert (= (and b!606833 res!389889) b!606844))

(assert (= (and b!606844 res!389881) b!606838))

(assert (= (and b!606838 res!389894) b!606837))

(assert (= (and b!606837 res!389888) b!606839))

(assert (= (and b!606837 c!68839) b!606823))

(assert (= (and b!606837 (not c!68839)) b!606843))

(assert (= (and b!606837 (not res!389882)) b!606836))

(assert (= (and b!606836 res!389877) b!606840))

(assert (= (and b!606840 (not res!389887)) b!606834))

(assert (= (and b!606834 res!389879) b!606829))

(assert (= (and b!606836 (not res!389883)) b!606827))

(assert (= (and b!606827 c!68840) b!606831))

(assert (= (and b!606827 (not c!68840)) b!606842))

(assert (= (and b!606827 (not res!389895)) b!606832))

(assert (= (and b!606832 res!389880) b!606820))

(assert (= (and b!606832 (not res!389884)) b!606828))

(assert (= (and b!606828 (not res!389897)) b!606824))

(assert (= (and b!606824 (not res!389876)) b!606841))

(assert (= (and b!606841 (not res!389886)) b!606830))

(declare-fun m!583653 () Bool)

(assert (=> b!606836 m!583653))

(declare-fun m!583655 () Bool)

(assert (=> b!606836 m!583655))

(declare-fun m!583657 () Bool)

(assert (=> b!606836 m!583657))

(declare-fun m!583659 () Bool)

(assert (=> b!606841 m!583659))

(declare-fun m!583661 () Bool)

(assert (=> b!606838 m!583661))

(assert (=> b!606838 m!583653))

(assert (=> b!606838 m!583653))

(declare-fun m!583663 () Bool)

(assert (=> b!606838 m!583663))

(declare-fun m!583665 () Bool)

(assert (=> b!606822 m!583665))

(declare-fun m!583667 () Bool)

(assert (=> b!606835 m!583667))

(declare-fun m!583669 () Bool)

(assert (=> b!606828 m!583669))

(declare-fun m!583671 () Bool)

(assert (=> b!606833 m!583671))

(assert (=> b!606826 m!583653))

(assert (=> b!606826 m!583653))

(declare-fun m!583673 () Bool)

(assert (=> b!606826 m!583673))

(assert (=> b!606820 m!583653))

(assert (=> b!606820 m!583653))

(declare-fun m!583675 () Bool)

(assert (=> b!606820 m!583675))

(declare-fun m!583677 () Bool)

(assert (=> start!55548 m!583677))

(declare-fun m!583679 () Bool)

(assert (=> start!55548 m!583679))

(declare-fun m!583681 () Bool)

(assert (=> b!606830 m!583681))

(declare-fun m!583683 () Bool)

(assert (=> b!606831 m!583683))

(declare-fun m!583685 () Bool)

(assert (=> b!606831 m!583685))

(assert (=> b!606831 m!583653))

(assert (=> b!606831 m!583653))

(declare-fun m!583687 () Bool)

(assert (=> b!606831 m!583687))

(declare-fun m!583689 () Bool)

(assert (=> b!606831 m!583689))

(assert (=> b!606831 m!583653))

(declare-fun m!583691 () Bool)

(assert (=> b!606831 m!583691))

(assert (=> b!606831 m!583653))

(declare-fun m!583693 () Bool)

(assert (=> b!606831 m!583693))

(declare-fun m!583695 () Bool)

(assert (=> b!606831 m!583695))

(assert (=> b!606829 m!583653))

(assert (=> b!606829 m!583653))

(assert (=> b!606829 m!583675))

(assert (=> b!606832 m!583653))

(assert (=> b!606832 m!583653))

(declare-fun m!583697 () Bool)

(assert (=> b!606832 m!583697))

(assert (=> b!606832 m!583653))

(declare-fun m!583699 () Bool)

(assert (=> b!606832 m!583699))

(assert (=> b!606832 m!583653))

(declare-fun m!583701 () Bool)

(assert (=> b!606832 m!583701))

(assert (=> b!606834 m!583653))

(assert (=> b!606834 m!583653))

(assert (=> b!606834 m!583701))

(assert (=> b!606844 m!583655))

(declare-fun m!583703 () Bool)

(assert (=> b!606844 m!583703))

(declare-fun m!583705 () Bool)

(assert (=> b!606821 m!583705))

(declare-fun m!583707 () Bool)

(assert (=> b!606824 m!583707))

(declare-fun m!583709 () Bool)

(assert (=> b!606819 m!583709))

(assert (=> b!606840 m!583653))

(declare-fun m!583711 () Bool)

(assert (=> b!606837 m!583711))

(declare-fun m!583713 () Bool)

(assert (=> b!606837 m!583713))

(assert (=> b!606837 m!583653))

(assert (=> b!606837 m!583655))

(assert (=> b!606837 m!583653))

(declare-fun m!583715 () Bool)

(assert (=> b!606837 m!583715))

(declare-fun m!583717 () Bool)

(assert (=> b!606837 m!583717))

(declare-fun m!583719 () Bool)

(assert (=> b!606837 m!583719))

(declare-fun m!583721 () Bool)

(assert (=> b!606837 m!583721))

(declare-fun m!583723 () Bool)

(assert (=> b!606845 m!583723))

(push 1)

