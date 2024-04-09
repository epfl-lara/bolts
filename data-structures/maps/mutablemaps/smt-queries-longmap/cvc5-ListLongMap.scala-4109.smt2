; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56160 () Bool)

(assert start!56160)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!620751 () Bool)

(declare-datatypes ((array!37593 0))(
  ( (array!37594 (arr!18039 (Array (_ BitVec 32) (_ BitVec 64))) (size!18403 (_ BitVec 32))) )
))
(declare-fun lt!287126 () array!37593)

(declare-fun e!356035 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37593)

(declare-fun arrayContainsKey!0 (array!37593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620751 (= e!356035 (arrayContainsKey!0 lt!287126 (select (arr!18039 a!2986) j!136) index!984))))

(declare-fun b!620752 () Bool)

(declare-fun res!400116 () Bool)

(declare-fun e!356040 () Bool)

(assert (=> b!620752 (=> (not res!400116) (not e!356040))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!620752 (= res!400116 (and (= (size!18403 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18403 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18403 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620753 () Bool)

(declare-datatypes ((Unit!20680 0))(
  ( (Unit!20681) )
))
(declare-fun e!356039 () Unit!20680)

(declare-fun Unit!20682 () Unit!20680)

(assert (=> b!620753 (= e!356039 Unit!20682)))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!400118 () Bool)

(assert (=> b!620753 (= res!400118 (= (select (store (arr!18039 a!2986) i!1108 k!1786) index!984) (select (arr!18039 a!2986) j!136)))))

(declare-fun e!356041 () Bool)

(assert (=> b!620753 (=> (not res!400118) (not e!356041))))

(assert (=> b!620753 e!356041))

(declare-fun c!70689 () Bool)

(assert (=> b!620753 (= c!70689 (bvslt j!136 index!984))))

(declare-fun lt!287128 () Unit!20680)

(declare-fun e!356034 () Unit!20680)

(assert (=> b!620753 (= lt!287128 e!356034)))

(declare-fun c!70688 () Bool)

(assert (=> b!620753 (= c!70688 (bvslt index!984 j!136))))

(declare-fun lt!287127 () Unit!20680)

(declare-fun e!356036 () Unit!20680)

(assert (=> b!620753 (= lt!287127 e!356036)))

(assert (=> b!620753 false))

(declare-fun b!620754 () Bool)

(declare-fun e!356037 () Unit!20680)

(declare-fun Unit!20683 () Unit!20680)

(assert (=> b!620754 (= e!356037 Unit!20683)))

(assert (=> b!620754 false))

(declare-fun b!620755 () Bool)

(declare-fun Unit!20684 () Unit!20680)

(assert (=> b!620755 (= e!356036 Unit!20684)))

(declare-fun b!620757 () Bool)

(assert (=> b!620757 false))

(declare-fun lt!287129 () Unit!20680)

(declare-datatypes ((List!12133 0))(
  ( (Nil!12130) (Cons!12129 (h!13174 (_ BitVec 64)) (t!18369 List!12133)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37593 (_ BitVec 64) (_ BitVec 32) List!12133) Unit!20680)

(assert (=> b!620757 (= lt!287129 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287126 (select (arr!18039 a!2986) j!136) index!984 Nil!12130))))

(declare-fun arrayNoDuplicates!0 (array!37593 (_ BitVec 32) List!12133) Bool)

(assert (=> b!620757 (arrayNoDuplicates!0 lt!287126 index!984 Nil!12130)))

(declare-fun lt!287125 () Unit!20680)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37593 (_ BitVec 32) (_ BitVec 32)) Unit!20680)

(assert (=> b!620757 (= lt!287125 (lemmaNoDuplicateFromThenFromBigger!0 lt!287126 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620757 (arrayNoDuplicates!0 lt!287126 #b00000000000000000000000000000000 Nil!12130)))

(declare-fun lt!287123 () Unit!20680)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37593 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12133) Unit!20680)

(assert (=> b!620757 (= lt!287123 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12130))))

(assert (=> b!620757 (arrayContainsKey!0 lt!287126 (select (arr!18039 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287124 () Unit!20680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37593 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20680)

(assert (=> b!620757 (= lt!287124 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287126 (select (arr!18039 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!620757 e!356035))

(declare-fun res!400124 () Bool)

(assert (=> b!620757 (=> (not res!400124) (not e!356035))))

(assert (=> b!620757 (= res!400124 (arrayContainsKey!0 lt!287126 (select (arr!18039 a!2986) j!136) j!136))))

(declare-fun Unit!20685 () Unit!20680)

(assert (=> b!620757 (= e!356036 Unit!20685)))

(declare-fun b!620758 () Bool)

(declare-fun res!400114 () Bool)

(assert (=> b!620758 (= res!400114 (bvsge j!136 index!984))))

(declare-fun e!356046 () Bool)

(assert (=> b!620758 (=> res!400114 e!356046)))

(assert (=> b!620758 (= e!356041 e!356046)))

(declare-fun b!620759 () Bool)

(declare-fun res!400115 () Bool)

(assert (=> b!620759 (=> (not res!400115) (not e!356040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620759 (= res!400115 (validKeyInArray!0 k!1786))))

(declare-fun b!620760 () Bool)

(declare-fun Unit!20686 () Unit!20680)

(assert (=> b!620760 (= e!356039 Unit!20686)))

(declare-fun b!620761 () Bool)

(declare-fun res!400112 () Bool)

(assert (=> b!620761 (=> (not res!400112) (not e!356040))))

(assert (=> b!620761 (= res!400112 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620762 () Bool)

(declare-fun e!356044 () Bool)

(assert (=> b!620762 (= e!356040 e!356044)))

(declare-fun res!400120 () Bool)

(assert (=> b!620762 (=> (not res!400120) (not e!356044))))

(declare-datatypes ((SeekEntryResult!6486 0))(
  ( (MissingZero!6486 (index!28227 (_ BitVec 32))) (Found!6486 (index!28228 (_ BitVec 32))) (Intermediate!6486 (undefined!7298 Bool) (index!28229 (_ BitVec 32)) (x!57031 (_ BitVec 32))) (Undefined!6486) (MissingVacant!6486 (index!28230 (_ BitVec 32))) )
))
(declare-fun lt!287132 () SeekEntryResult!6486)

(assert (=> b!620762 (= res!400120 (or (= lt!287132 (MissingZero!6486 i!1108)) (= lt!287132 (MissingVacant!6486 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37593 (_ BitVec 32)) SeekEntryResult!6486)

(assert (=> b!620762 (= lt!287132 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620763 () Bool)

(declare-fun res!400123 () Bool)

(assert (=> b!620763 (=> (not res!400123) (not e!356044))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620763 (= res!400123 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18039 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620764 () Bool)

(declare-fun Unit!20687 () Unit!20680)

(assert (=> b!620764 (= e!356034 Unit!20687)))

(declare-fun b!620765 () Bool)

(declare-fun res!400122 () Bool)

(assert (=> b!620765 (=> (not res!400122) (not e!356044))))

(assert (=> b!620765 (= res!400122 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12130))))

(declare-fun b!620766 () Bool)

(assert (=> b!620766 false))

(declare-fun lt!287119 () Unit!20680)

(assert (=> b!620766 (= lt!287119 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287126 (select (arr!18039 a!2986) j!136) j!136 Nil!12130))))

(assert (=> b!620766 (arrayNoDuplicates!0 lt!287126 j!136 Nil!12130)))

(declare-fun lt!287118 () Unit!20680)

(assert (=> b!620766 (= lt!287118 (lemmaNoDuplicateFromThenFromBigger!0 lt!287126 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620766 (arrayNoDuplicates!0 lt!287126 #b00000000000000000000000000000000 Nil!12130)))

(declare-fun lt!287135 () Unit!20680)

(assert (=> b!620766 (= lt!287135 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12130))))

(assert (=> b!620766 (arrayContainsKey!0 lt!287126 (select (arr!18039 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287134 () Unit!20680)

(assert (=> b!620766 (= lt!287134 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287126 (select (arr!18039 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20688 () Unit!20680)

(assert (=> b!620766 (= e!356034 Unit!20688)))

(declare-fun b!620767 () Bool)

(declare-fun res!400121 () Bool)

(assert (=> b!620767 (=> (not res!400121) (not e!356044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37593 (_ BitVec 32)) Bool)

(assert (=> b!620767 (= res!400121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!400117 () Bool)

(assert (=> start!56160 (=> (not res!400117) (not e!356040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56160 (= res!400117 (validMask!0 mask!3053))))

(assert (=> start!56160 e!356040))

(assert (=> start!56160 true))

(declare-fun array_inv!13813 (array!37593) Bool)

(assert (=> start!56160 (array_inv!13813 a!2986)))

(declare-fun b!620756 () Bool)

(declare-fun e!356038 () Bool)

(declare-fun lt!287117 () SeekEntryResult!6486)

(declare-fun lt!287122 () SeekEntryResult!6486)

(assert (=> b!620756 (= e!356038 (= lt!287117 lt!287122))))

(declare-fun b!620768 () Bool)

(declare-fun e!356042 () Bool)

(assert (=> b!620768 (= e!356044 e!356042)))

(declare-fun res!400119 () Bool)

(assert (=> b!620768 (=> (not res!400119) (not e!356042))))

(assert (=> b!620768 (= res!400119 (= (select (store (arr!18039 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620768 (= lt!287126 (array!37594 (store (arr!18039 a!2986) i!1108 k!1786) (size!18403 a!2986)))))

(declare-fun b!620769 () Bool)

(declare-fun e!356045 () Bool)

(assert (=> b!620769 (= e!356045 (not true))))

(declare-fun lt!287133 () Unit!20680)

(assert (=> b!620769 (= lt!287133 e!356039)))

(declare-fun c!70691 () Bool)

(declare-fun lt!287136 () SeekEntryResult!6486)

(assert (=> b!620769 (= c!70691 (= lt!287136 (Found!6486 index!984)))))

(declare-fun lt!287131 () Unit!20680)

(assert (=> b!620769 (= lt!287131 e!356037)))

(declare-fun c!70690 () Bool)

(assert (=> b!620769 (= c!70690 (= lt!287136 Undefined!6486))))

(declare-fun lt!287120 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37593 (_ BitVec 32)) SeekEntryResult!6486)

(assert (=> b!620769 (= lt!287136 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287120 lt!287126 mask!3053))))

(assert (=> b!620769 e!356038))

(declare-fun res!400111 () Bool)

(assert (=> b!620769 (=> (not res!400111) (not e!356038))))

(declare-fun lt!287130 () (_ BitVec 32))

(assert (=> b!620769 (= res!400111 (= lt!287122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287130 vacantSpotIndex!68 lt!287120 lt!287126 mask!3053)))))

(assert (=> b!620769 (= lt!287122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287130 vacantSpotIndex!68 (select (arr!18039 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620769 (= lt!287120 (select (store (arr!18039 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287121 () Unit!20680)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37593 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20680)

(assert (=> b!620769 (= lt!287121 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287130 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620769 (= lt!287130 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!356043 () Bool)

(declare-fun b!620770 () Bool)

(assert (=> b!620770 (= e!356043 (arrayContainsKey!0 lt!287126 (select (arr!18039 a!2986) j!136) index!984))))

(declare-fun res!400110 () Bool)

(declare-fun b!620771 () Bool)

(assert (=> b!620771 (= res!400110 (arrayContainsKey!0 lt!287126 (select (arr!18039 a!2986) j!136) j!136))))

(assert (=> b!620771 (=> (not res!400110) (not e!356043))))

(assert (=> b!620771 (= e!356046 e!356043)))

(declare-fun b!620772 () Bool)

(declare-fun Unit!20689 () Unit!20680)

(assert (=> b!620772 (= e!356037 Unit!20689)))

(declare-fun b!620773 () Bool)

(assert (=> b!620773 (= e!356042 e!356045)))

(declare-fun res!400109 () Bool)

(assert (=> b!620773 (=> (not res!400109) (not e!356045))))

(assert (=> b!620773 (= res!400109 (and (= lt!287117 (Found!6486 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18039 a!2986) index!984) (select (arr!18039 a!2986) j!136))) (not (= (select (arr!18039 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!620773 (= lt!287117 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18039 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620774 () Bool)

(declare-fun res!400113 () Bool)

(assert (=> b!620774 (=> (not res!400113) (not e!356040))))

(assert (=> b!620774 (= res!400113 (validKeyInArray!0 (select (arr!18039 a!2986) j!136)))))

(assert (= (and start!56160 res!400117) b!620752))

(assert (= (and b!620752 res!400116) b!620774))

(assert (= (and b!620774 res!400113) b!620759))

(assert (= (and b!620759 res!400115) b!620761))

(assert (= (and b!620761 res!400112) b!620762))

(assert (= (and b!620762 res!400120) b!620767))

(assert (= (and b!620767 res!400121) b!620765))

(assert (= (and b!620765 res!400122) b!620763))

(assert (= (and b!620763 res!400123) b!620768))

(assert (= (and b!620768 res!400119) b!620773))

(assert (= (and b!620773 res!400109) b!620769))

(assert (= (and b!620769 res!400111) b!620756))

(assert (= (and b!620769 c!70690) b!620754))

(assert (= (and b!620769 (not c!70690)) b!620772))

(assert (= (and b!620769 c!70691) b!620753))

(assert (= (and b!620769 (not c!70691)) b!620760))

(assert (= (and b!620753 res!400118) b!620758))

(assert (= (and b!620758 (not res!400114)) b!620771))

(assert (= (and b!620771 res!400110) b!620770))

(assert (= (and b!620753 c!70689) b!620766))

(assert (= (and b!620753 (not c!70689)) b!620764))

(assert (= (and b!620753 c!70688) b!620757))

(assert (= (and b!620753 (not c!70688)) b!620755))

(assert (= (and b!620757 res!400124) b!620751))

(declare-fun m!596709 () Bool)

(assert (=> b!620762 m!596709))

(declare-fun m!596711 () Bool)

(assert (=> b!620761 m!596711))

(declare-fun m!596713 () Bool)

(assert (=> b!620768 m!596713))

(declare-fun m!596715 () Bool)

(assert (=> b!620768 m!596715))

(declare-fun m!596717 () Bool)

(assert (=> b!620751 m!596717))

(assert (=> b!620751 m!596717))

(declare-fun m!596719 () Bool)

(assert (=> b!620751 m!596719))

(declare-fun m!596721 () Bool)

(assert (=> b!620757 m!596721))

(assert (=> b!620757 m!596717))

(assert (=> b!620757 m!596717))

(declare-fun m!596723 () Bool)

(assert (=> b!620757 m!596723))

(assert (=> b!620757 m!596717))

(declare-fun m!596725 () Bool)

(assert (=> b!620757 m!596725))

(declare-fun m!596727 () Bool)

(assert (=> b!620757 m!596727))

(assert (=> b!620757 m!596717))

(declare-fun m!596729 () Bool)

(assert (=> b!620757 m!596729))

(declare-fun m!596731 () Bool)

(assert (=> b!620757 m!596731))

(declare-fun m!596733 () Bool)

(assert (=> b!620757 m!596733))

(assert (=> b!620757 m!596717))

(declare-fun m!596735 () Bool)

(assert (=> b!620757 m!596735))

(assert (=> b!620774 m!596717))

(assert (=> b!620774 m!596717))

(declare-fun m!596737 () Bool)

(assert (=> b!620774 m!596737))

(assert (=> b!620770 m!596717))

(assert (=> b!620770 m!596717))

(assert (=> b!620770 m!596719))

(declare-fun m!596739 () Bool)

(assert (=> b!620763 m!596739))

(declare-fun m!596741 () Bool)

(assert (=> b!620769 m!596741))

(declare-fun m!596743 () Bool)

(assert (=> b!620769 m!596743))

(assert (=> b!620769 m!596717))

(assert (=> b!620769 m!596713))

(declare-fun m!596745 () Bool)

(assert (=> b!620769 m!596745))

(declare-fun m!596747 () Bool)

(assert (=> b!620769 m!596747))

(assert (=> b!620769 m!596717))

(declare-fun m!596749 () Bool)

(assert (=> b!620769 m!596749))

(declare-fun m!596751 () Bool)

(assert (=> b!620769 m!596751))

(declare-fun m!596753 () Bool)

(assert (=> b!620765 m!596753))

(declare-fun m!596755 () Bool)

(assert (=> b!620759 m!596755))

(assert (=> b!620771 m!596717))

(assert (=> b!620771 m!596717))

(assert (=> b!620771 m!596729))

(assert (=> b!620766 m!596717))

(declare-fun m!596757 () Bool)

(assert (=> b!620766 m!596757))

(assert (=> b!620766 m!596733))

(assert (=> b!620766 m!596717))

(declare-fun m!596759 () Bool)

(assert (=> b!620766 m!596759))

(assert (=> b!620766 m!596717))

(declare-fun m!596761 () Bool)

(assert (=> b!620766 m!596761))

(assert (=> b!620766 m!596731))

(assert (=> b!620766 m!596717))

(declare-fun m!596763 () Bool)

(assert (=> b!620766 m!596763))

(declare-fun m!596765 () Bool)

(assert (=> b!620766 m!596765))

(declare-fun m!596767 () Bool)

(assert (=> start!56160 m!596767))

(declare-fun m!596769 () Bool)

(assert (=> start!56160 m!596769))

(assert (=> b!620753 m!596713))

(declare-fun m!596771 () Bool)

(assert (=> b!620753 m!596771))

(assert (=> b!620753 m!596717))

(declare-fun m!596773 () Bool)

(assert (=> b!620767 m!596773))

(declare-fun m!596775 () Bool)

(assert (=> b!620773 m!596775))

(assert (=> b!620773 m!596717))

(assert (=> b!620773 m!596717))

(declare-fun m!596777 () Bool)

(assert (=> b!620773 m!596777))

(push 1)

