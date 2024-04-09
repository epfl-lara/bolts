; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55574 () Bool)

(assert start!55574)

(declare-fun b!607872 () Bool)

(declare-fun e!348115 () Bool)

(declare-fun e!348129 () Bool)

(assert (=> b!607872 (= e!348115 e!348129)))

(declare-fun res!390778 () Bool)

(assert (=> b!607872 (=> res!390778 e!348129)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!277697 () (_ BitVec 64))

(declare-datatypes ((array!37268 0))(
  ( (array!37269 (arr!17881 (Array (_ BitVec 32) (_ BitVec 64))) (size!18245 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37268)

(declare-fun lt!277695 () (_ BitVec 64))

(assert (=> b!607872 (= res!390778 (or (not (= (select (arr!17881 a!2986) j!136) lt!277695)) (not (= (select (arr!17881 a!2986) j!136) lt!277697))))))

(declare-fun e!348118 () Bool)

(assert (=> b!607872 e!348118))

(declare-fun res!390775 () Bool)

(assert (=> b!607872 (=> (not res!390775) (not e!348118))))

(assert (=> b!607872 (= res!390775 (= lt!277697 (select (arr!17881 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!607872 (= lt!277697 (select (store (arr!17881 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!607874 () Bool)

(declare-fun e!348126 () Bool)

(declare-fun lt!277693 () array!37268)

(declare-fun arrayContainsKey!0 (array!37268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607874 (= e!348126 (arrayContainsKey!0 lt!277693 (select (arr!17881 a!2986) j!136) index!984))))

(declare-fun b!607875 () Bool)

(declare-datatypes ((Unit!19396 0))(
  ( (Unit!19397) )
))
(declare-fun e!348127 () Unit!19396)

(declare-fun Unit!19398 () Unit!19396)

(assert (=> b!607875 (= e!348127 Unit!19398)))

(declare-fun b!607876 () Bool)

(declare-fun res!390784 () Bool)

(declare-fun e!348120 () Bool)

(assert (=> b!607876 (=> (not res!390784) (not e!348120))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!607876 (= res!390784 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17881 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607877 () Bool)

(declare-fun e!348124 () Unit!19396)

(declare-fun Unit!19399 () Unit!19396)

(assert (=> b!607877 (= e!348124 Unit!19399)))

(assert (=> b!607877 false))

(declare-fun b!607878 () Bool)

(declare-fun res!390792 () Bool)

(declare-fun e!348125 () Bool)

(assert (=> b!607878 (=> res!390792 e!348125)))

(declare-datatypes ((List!11975 0))(
  ( (Nil!11972) (Cons!11971 (h!13016 (_ BitVec 64)) (t!18211 List!11975)) )
))
(declare-fun contains!3021 (List!11975 (_ BitVec 64)) Bool)

(assert (=> b!607878 (= res!390792 (contains!3021 Nil!11972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607879 () Bool)

(declare-fun Unit!19400 () Unit!19396)

(assert (=> b!607879 (= e!348127 Unit!19400)))

(declare-fun lt!277690 () Unit!19396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37268 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19396)

(assert (=> b!607879 (= lt!277690 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277693 (select (arr!17881 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607879 (arrayContainsKey!0 lt!277693 (select (arr!17881 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277683 () Unit!19396)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37268 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11975) Unit!19396)

(assert (=> b!607879 (= lt!277683 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11972))))

(declare-fun arrayNoDuplicates!0 (array!37268 (_ BitVec 32) List!11975) Bool)

(assert (=> b!607879 (arrayNoDuplicates!0 lt!277693 #b00000000000000000000000000000000 Nil!11972)))

(declare-fun lt!277689 () Unit!19396)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37268 (_ BitVec 32) (_ BitVec 32)) Unit!19396)

(assert (=> b!607879 (= lt!277689 (lemmaNoDuplicateFromThenFromBigger!0 lt!277693 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607879 (arrayNoDuplicates!0 lt!277693 j!136 Nil!11972)))

(declare-fun lt!277692 () Unit!19396)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37268 (_ BitVec 64) (_ BitVec 32) List!11975) Unit!19396)

(assert (=> b!607879 (= lt!277692 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277693 (select (arr!17881 a!2986) j!136) j!136 Nil!11972))))

(assert (=> b!607879 false))

(declare-fun b!607880 () Bool)

(declare-fun e!348121 () Bool)

(assert (=> b!607880 (= e!348129 e!348121)))

(declare-fun res!390779 () Bool)

(assert (=> b!607880 (=> res!390779 e!348121)))

(assert (=> b!607880 (= res!390779 (bvsge index!984 j!136))))

(declare-fun lt!277682 () Unit!19396)

(assert (=> b!607880 (= lt!277682 e!348127)))

(declare-fun c!68918 () Bool)

(assert (=> b!607880 (= c!68918 (bvslt j!136 index!984))))

(declare-fun b!607881 () Bool)

(declare-fun res!390782 () Bool)

(declare-fun e!348117 () Bool)

(assert (=> b!607881 (=> (not res!390782) (not e!348117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607881 (= res!390782 (validKeyInArray!0 k0!1786))))

(declare-fun b!607882 () Bool)

(declare-fun res!390780 () Bool)

(assert (=> b!607882 (=> (not res!390780) (not e!348117))))

(assert (=> b!607882 (= res!390780 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607883 () Bool)

(declare-fun res!390794 () Bool)

(assert (=> b!607883 (=> (not res!390794) (not e!348117))))

(assert (=> b!607883 (= res!390794 (and (= (size!18245 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18245 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18245 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607884 () Bool)

(declare-fun e!348130 () Bool)

(assert (=> b!607884 (= e!348120 e!348130)))

(declare-fun res!390785 () Bool)

(assert (=> b!607884 (=> (not res!390785) (not e!348130))))

(assert (=> b!607884 (= res!390785 (= (select (store (arr!17881 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607884 (= lt!277693 (array!37269 (store (arr!17881 a!2986) i!1108 k0!1786) (size!18245 a!2986)))))

(declare-fun b!607885 () Bool)

(declare-fun e!348119 () Bool)

(assert (=> b!607885 (= e!348118 e!348119)))

(declare-fun res!390793 () Bool)

(assert (=> b!607885 (=> res!390793 e!348119)))

(assert (=> b!607885 (= res!390793 (or (not (= (select (arr!17881 a!2986) j!136) lt!277695)) (not (= (select (arr!17881 a!2986) j!136) lt!277697)) (bvsge j!136 index!984)))))

(declare-fun b!607886 () Bool)

(assert (=> b!607886 (= e!348117 e!348120)))

(declare-fun res!390783 () Bool)

(assert (=> b!607886 (=> (not res!390783) (not e!348120))))

(declare-datatypes ((SeekEntryResult!6328 0))(
  ( (MissingZero!6328 (index!27586 (_ BitVec 32))) (Found!6328 (index!27587 (_ BitVec 32))) (Intermediate!6328 (undefined!7140 Bool) (index!27588 (_ BitVec 32)) (x!56422 (_ BitVec 32))) (Undefined!6328) (MissingVacant!6328 (index!27589 (_ BitVec 32))) )
))
(declare-fun lt!277688 () SeekEntryResult!6328)

(assert (=> b!607886 (= res!390783 (or (= lt!277688 (MissingZero!6328 i!1108)) (= lt!277688 (MissingVacant!6328 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37268 (_ BitVec 32)) SeekEntryResult!6328)

(assert (=> b!607886 (= lt!277688 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!607873 () Bool)

(declare-fun res!390773 () Bool)

(assert (=> b!607873 (=> (not res!390773) (not e!348117))))

(assert (=> b!607873 (= res!390773 (validKeyInArray!0 (select (arr!17881 a!2986) j!136)))))

(declare-fun res!390786 () Bool)

(assert (=> start!55574 (=> (not res!390786) (not e!348117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55574 (= res!390786 (validMask!0 mask!3053))))

(assert (=> start!55574 e!348117))

(assert (=> start!55574 true))

(declare-fun array_inv!13655 (array!37268) Bool)

(assert (=> start!55574 (array_inv!13655 a!2986)))

(declare-fun b!607887 () Bool)

(assert (=> b!607887 (= e!348121 e!348125)))

(declare-fun res!390777 () Bool)

(assert (=> b!607887 (=> res!390777 e!348125)))

(assert (=> b!607887 (= res!390777 (or (bvsge (size!18245 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18245 a!2986))))))

(assert (=> b!607887 (arrayContainsKey!0 lt!277693 (select (arr!17881 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277684 () Unit!19396)

(assert (=> b!607887 (= lt!277684 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277693 (select (arr!17881 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607887 e!348126))

(declare-fun res!390788 () Bool)

(assert (=> b!607887 (=> (not res!390788) (not e!348126))))

(assert (=> b!607887 (= res!390788 (arrayContainsKey!0 lt!277693 (select (arr!17881 a!2986) j!136) j!136))))

(declare-fun b!607888 () Bool)

(declare-fun e!348116 () Bool)

(declare-fun lt!277686 () SeekEntryResult!6328)

(declare-fun lt!277691 () SeekEntryResult!6328)

(assert (=> b!607888 (= e!348116 (= lt!277686 lt!277691))))

(declare-fun b!607889 () Bool)

(declare-fun res!390787 () Bool)

(assert (=> b!607889 (=> res!390787 e!348125)))

(assert (=> b!607889 (= res!390787 (contains!3021 Nil!11972 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607890 () Bool)

(declare-fun e!348122 () Bool)

(assert (=> b!607890 (= e!348119 e!348122)))

(declare-fun res!390772 () Bool)

(assert (=> b!607890 (=> (not res!390772) (not e!348122))))

(assert (=> b!607890 (= res!390772 (arrayContainsKey!0 lt!277693 (select (arr!17881 a!2986) j!136) j!136))))

(declare-fun b!607891 () Bool)

(declare-fun res!390774 () Bool)

(assert (=> b!607891 (=> res!390774 e!348125)))

(declare-fun noDuplicate!323 (List!11975) Bool)

(assert (=> b!607891 (= res!390774 (not (noDuplicate!323 Nil!11972)))))

(declare-fun b!607892 () Bool)

(declare-fun res!390781 () Bool)

(assert (=> b!607892 (=> (not res!390781) (not e!348120))))

(assert (=> b!607892 (= res!390781 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11972))))

(declare-fun b!607893 () Bool)

(declare-fun res!390791 () Bool)

(assert (=> b!607893 (=> (not res!390791) (not e!348120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37268 (_ BitVec 32)) Bool)

(assert (=> b!607893 (= res!390791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607894 () Bool)

(declare-fun Unit!19401 () Unit!19396)

(assert (=> b!607894 (= e!348124 Unit!19401)))

(declare-fun b!607895 () Bool)

(assert (=> b!607895 (= e!348122 (arrayContainsKey!0 lt!277693 (select (arr!17881 a!2986) j!136) index!984))))

(declare-fun b!607896 () Bool)

(declare-fun e!348128 () Bool)

(assert (=> b!607896 (= e!348130 e!348128)))

(declare-fun res!390789 () Bool)

(assert (=> b!607896 (=> (not res!390789) (not e!348128))))

(assert (=> b!607896 (= res!390789 (and (= lt!277686 (Found!6328 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17881 a!2986) index!984) (select (arr!17881 a!2986) j!136))) (not (= (select (arr!17881 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37268 (_ BitVec 32)) SeekEntryResult!6328)

(assert (=> b!607896 (= lt!277686 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17881 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607897 () Bool)

(assert (=> b!607897 (= e!348125 true)))

(declare-fun lt!277696 () Bool)

(assert (=> b!607897 (= lt!277696 (contains!3021 Nil!11972 k0!1786))))

(declare-fun b!607898 () Bool)

(assert (=> b!607898 (= e!348128 (not e!348115))))

(declare-fun res!390776 () Bool)

(assert (=> b!607898 (=> res!390776 e!348115)))

(declare-fun lt!277698 () SeekEntryResult!6328)

(assert (=> b!607898 (= res!390776 (not (= lt!277698 (Found!6328 index!984))))))

(declare-fun lt!277687 () Unit!19396)

(assert (=> b!607898 (= lt!277687 e!348124)))

(declare-fun c!68917 () Bool)

(assert (=> b!607898 (= c!68917 (= lt!277698 Undefined!6328))))

(assert (=> b!607898 (= lt!277698 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277695 lt!277693 mask!3053))))

(assert (=> b!607898 e!348116))

(declare-fun res!390790 () Bool)

(assert (=> b!607898 (=> (not res!390790) (not e!348116))))

(declare-fun lt!277685 () (_ BitVec 32))

(assert (=> b!607898 (= res!390790 (= lt!277691 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277685 vacantSpotIndex!68 lt!277695 lt!277693 mask!3053)))))

(assert (=> b!607898 (= lt!277691 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277685 vacantSpotIndex!68 (select (arr!17881 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!607898 (= lt!277695 (select (store (arr!17881 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!277694 () Unit!19396)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37268 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19396)

(assert (=> b!607898 (= lt!277694 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277685 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607898 (= lt!277685 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!55574 res!390786) b!607883))

(assert (= (and b!607883 res!390794) b!607873))

(assert (= (and b!607873 res!390773) b!607881))

(assert (= (and b!607881 res!390782) b!607882))

(assert (= (and b!607882 res!390780) b!607886))

(assert (= (and b!607886 res!390783) b!607893))

(assert (= (and b!607893 res!390791) b!607892))

(assert (= (and b!607892 res!390781) b!607876))

(assert (= (and b!607876 res!390784) b!607884))

(assert (= (and b!607884 res!390785) b!607896))

(assert (= (and b!607896 res!390789) b!607898))

(assert (= (and b!607898 res!390790) b!607888))

(assert (= (and b!607898 c!68917) b!607877))

(assert (= (and b!607898 (not c!68917)) b!607894))

(assert (= (and b!607898 (not res!390776)) b!607872))

(assert (= (and b!607872 res!390775) b!607885))

(assert (= (and b!607885 (not res!390793)) b!607890))

(assert (= (and b!607890 res!390772) b!607895))

(assert (= (and b!607872 (not res!390778)) b!607880))

(assert (= (and b!607880 c!68918) b!607879))

(assert (= (and b!607880 (not c!68918)) b!607875))

(assert (= (and b!607880 (not res!390779)) b!607887))

(assert (= (and b!607887 res!390788) b!607874))

(assert (= (and b!607887 (not res!390777)) b!607891))

(assert (= (and b!607891 (not res!390774)) b!607878))

(assert (= (and b!607878 (not res!390792)) b!607889))

(assert (= (and b!607889 (not res!390787)) b!607897))

(declare-fun m!584589 () Bool)

(assert (=> b!607893 m!584589))

(declare-fun m!584591 () Bool)

(assert (=> b!607878 m!584591))

(declare-fun m!584593 () Bool)

(assert (=> b!607881 m!584593))

(declare-fun m!584595 () Bool)

(assert (=> b!607882 m!584595))

(declare-fun m!584597 () Bool)

(assert (=> b!607886 m!584597))

(declare-fun m!584599 () Bool)

(assert (=> b!607891 m!584599))

(declare-fun m!584601 () Bool)

(assert (=> b!607884 m!584601))

(declare-fun m!584603 () Bool)

(assert (=> b!607884 m!584603))

(declare-fun m!584605 () Bool)

(assert (=> b!607890 m!584605))

(assert (=> b!607890 m!584605))

(declare-fun m!584607 () Bool)

(assert (=> b!607890 m!584607))

(declare-fun m!584609 () Bool)

(assert (=> b!607896 m!584609))

(assert (=> b!607896 m!584605))

(assert (=> b!607896 m!584605))

(declare-fun m!584611 () Bool)

(assert (=> b!607896 m!584611))

(declare-fun m!584613 () Bool)

(assert (=> b!607892 m!584613))

(assert (=> b!607873 m!584605))

(assert (=> b!607873 m!584605))

(declare-fun m!584615 () Bool)

(assert (=> b!607873 m!584615))

(declare-fun m!584617 () Bool)

(assert (=> start!55574 m!584617))

(declare-fun m!584619 () Bool)

(assert (=> start!55574 m!584619))

(declare-fun m!584621 () Bool)

(assert (=> b!607889 m!584621))

(declare-fun m!584623 () Bool)

(assert (=> b!607876 m!584623))

(assert (=> b!607885 m!584605))

(assert (=> b!607874 m!584605))

(assert (=> b!607874 m!584605))

(declare-fun m!584625 () Bool)

(assert (=> b!607874 m!584625))

(declare-fun m!584627 () Bool)

(assert (=> b!607897 m!584627))

(declare-fun m!584629 () Bool)

(assert (=> b!607879 m!584629))

(assert (=> b!607879 m!584605))

(assert (=> b!607879 m!584605))

(declare-fun m!584631 () Bool)

(assert (=> b!607879 m!584631))

(declare-fun m!584633 () Bool)

(assert (=> b!607879 m!584633))

(declare-fun m!584635 () Bool)

(assert (=> b!607879 m!584635))

(assert (=> b!607879 m!584605))

(declare-fun m!584637 () Bool)

(assert (=> b!607879 m!584637))

(assert (=> b!607879 m!584605))

(declare-fun m!584639 () Bool)

(assert (=> b!607879 m!584639))

(declare-fun m!584641 () Bool)

(assert (=> b!607879 m!584641))

(declare-fun m!584643 () Bool)

(assert (=> b!607898 m!584643))

(declare-fun m!584645 () Bool)

(assert (=> b!607898 m!584645))

(assert (=> b!607898 m!584605))

(declare-fun m!584647 () Bool)

(assert (=> b!607898 m!584647))

(assert (=> b!607898 m!584601))

(assert (=> b!607898 m!584605))

(declare-fun m!584649 () Bool)

(assert (=> b!607898 m!584649))

(declare-fun m!584651 () Bool)

(assert (=> b!607898 m!584651))

(declare-fun m!584653 () Bool)

(assert (=> b!607898 m!584653))

(assert (=> b!607872 m!584605))

(assert (=> b!607872 m!584601))

(declare-fun m!584655 () Bool)

(assert (=> b!607872 m!584655))

(assert (=> b!607887 m!584605))

(assert (=> b!607887 m!584605))

(declare-fun m!584657 () Bool)

(assert (=> b!607887 m!584657))

(assert (=> b!607887 m!584605))

(declare-fun m!584659 () Bool)

(assert (=> b!607887 m!584659))

(assert (=> b!607887 m!584605))

(assert (=> b!607887 m!584607))

(assert (=> b!607895 m!584605))

(assert (=> b!607895 m!584605))

(assert (=> b!607895 m!584625))

(check-sat (not b!607878) (not b!607881) (not b!607895) (not b!607893) (not b!607879) (not b!607882) (not b!607889) (not b!607898) (not b!607892) (not b!607890) (not b!607897) (not b!607874) (not start!55574) (not b!607896) (not b!607891) (not b!607873) (not b!607886) (not b!607887))
(check-sat)
