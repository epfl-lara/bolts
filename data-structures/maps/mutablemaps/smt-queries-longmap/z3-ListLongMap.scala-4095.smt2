; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56078 () Bool)

(assert start!56078)

(declare-fun b!617714 () Bool)

(declare-fun res!398071 () Bool)

(declare-fun e!354229 () Bool)

(assert (=> b!617714 (=> (not res!398071) (not e!354229))))

(declare-datatypes ((array!37511 0))(
  ( (array!37512 (arr!17998 (Array (_ BitVec 32) (_ BitVec 64))) (size!18362 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37511)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617714 (= res!398071 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!284666 () array!37511)

(declare-fun b!617716 () Bool)

(declare-fun res!398072 () Bool)

(assert (=> b!617716 (= res!398072 (arrayContainsKey!0 lt!284666 (select (arr!17998 a!2986) j!136) j!136))))

(declare-fun e!354230 () Bool)

(assert (=> b!617716 (=> (not res!398072) (not e!354230))))

(declare-fun e!354231 () Bool)

(assert (=> b!617716 (= e!354231 e!354230)))

(declare-fun b!617717 () Bool)

(declare-fun e!354227 () Bool)

(assert (=> b!617717 (= e!354229 e!354227)))

(declare-fun res!398056 () Bool)

(assert (=> b!617717 (=> (not res!398056) (not e!354227))))

(declare-datatypes ((SeekEntryResult!6445 0))(
  ( (MissingZero!6445 (index!28063 (_ BitVec 32))) (Found!6445 (index!28064 (_ BitVec 32))) (Intermediate!6445 (undefined!7257 Bool) (index!28065 (_ BitVec 32)) (x!56878 (_ BitVec 32))) (Undefined!6445) (MissingVacant!6445 (index!28066 (_ BitVec 32))) )
))
(declare-fun lt!284669 () SeekEntryResult!6445)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!617717 (= res!398056 (or (= lt!284669 (MissingZero!6445 i!1108)) (= lt!284669 (MissingVacant!6445 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37511 (_ BitVec 32)) SeekEntryResult!6445)

(assert (=> b!617717 (= lt!284669 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!617718 () Bool)

(declare-datatypes ((Unit!20270 0))(
  ( (Unit!20271) )
))
(declare-fun e!354233 () Unit!20270)

(declare-fun Unit!20272 () Unit!20270)

(assert (=> b!617718 (= e!354233 Unit!20272)))

(declare-fun b!617719 () Bool)

(declare-fun res!398062 () Bool)

(assert (=> b!617719 (=> (not res!398062) (not e!354229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617719 (= res!398062 (validKeyInArray!0 k0!1786))))

(declare-fun b!617720 () Bool)

(assert (=> b!617720 false))

(declare-fun lt!284668 () Unit!20270)

(declare-datatypes ((List!12092 0))(
  ( (Nil!12089) (Cons!12088 (h!13133 (_ BitVec 64)) (t!18328 List!12092)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37511 (_ BitVec 64) (_ BitVec 32) List!12092) Unit!20270)

(assert (=> b!617720 (= lt!284668 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284666 (select (arr!17998 a!2986) j!136) j!136 Nil!12089))))

(declare-fun arrayNoDuplicates!0 (array!37511 (_ BitVec 32) List!12092) Bool)

(assert (=> b!617720 (arrayNoDuplicates!0 lt!284666 j!136 Nil!12089)))

(declare-fun lt!284664 () Unit!20270)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37511 (_ BitVec 32) (_ BitVec 32)) Unit!20270)

(assert (=> b!617720 (= lt!284664 (lemmaNoDuplicateFromThenFromBigger!0 lt!284666 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617720 (arrayNoDuplicates!0 lt!284666 #b00000000000000000000000000000000 Nil!12089)))

(declare-fun lt!284665 () Unit!20270)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37511 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12092) Unit!20270)

(assert (=> b!617720 (= lt!284665 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12089))))

(assert (=> b!617720 (arrayContainsKey!0 lt!284666 (select (arr!17998 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284657 () Unit!20270)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37511 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20270)

(assert (=> b!617720 (= lt!284657 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284666 (select (arr!17998 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!354241 () Unit!20270)

(declare-fun Unit!20273 () Unit!20270)

(assert (=> b!617720 (= e!354241 Unit!20273)))

(declare-fun b!617721 () Bool)

(declare-fun e!354235 () Bool)

(assert (=> b!617721 (= e!354235 true)))

(assert (=> b!617721 (= (select (store (arr!17998 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617722 () Bool)

(declare-fun res!398064 () Bool)

(assert (=> b!617722 (=> (not res!398064) (not e!354227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37511 (_ BitVec 32)) Bool)

(assert (=> b!617722 (= res!398064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617723 () Bool)

(declare-fun e!354237 () Bool)

(assert (=> b!617723 (= e!354227 e!354237)))

(declare-fun res!398061 () Bool)

(assert (=> b!617723 (=> (not res!398061) (not e!354237))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!617723 (= res!398061 (= (select (store (arr!17998 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617723 (= lt!284666 (array!37512 (store (arr!17998 a!2986) i!1108 k0!1786) (size!18362 a!2986)))))

(declare-fun b!617724 () Bool)

(declare-fun res!398070 () Bool)

(assert (=> b!617724 (=> (not res!398070) (not e!354229))))

(assert (=> b!617724 (= res!398070 (validKeyInArray!0 (select (arr!17998 a!2986) j!136)))))

(declare-fun b!617725 () Bool)

(declare-fun res!398059 () Bool)

(assert (=> b!617725 (= res!398059 (bvsge j!136 index!984))))

(assert (=> b!617725 (=> res!398059 e!354231)))

(declare-fun e!354234 () Bool)

(assert (=> b!617725 (= e!354234 e!354231)))

(declare-fun b!617726 () Bool)

(assert (=> b!617726 false))

(declare-fun lt!284661 () Unit!20270)

(assert (=> b!617726 (= lt!284661 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284666 (select (arr!17998 a!2986) j!136) index!984 Nil!12089))))

(assert (=> b!617726 (arrayNoDuplicates!0 lt!284666 index!984 Nil!12089)))

(declare-fun lt!284663 () Unit!20270)

(assert (=> b!617726 (= lt!284663 (lemmaNoDuplicateFromThenFromBigger!0 lt!284666 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617726 (arrayNoDuplicates!0 lt!284666 #b00000000000000000000000000000000 Nil!12089)))

(declare-fun lt!284671 () Unit!20270)

(assert (=> b!617726 (= lt!284671 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12089))))

(assert (=> b!617726 (arrayContainsKey!0 lt!284666 (select (arr!17998 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284660 () Unit!20270)

(assert (=> b!617726 (= lt!284660 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284666 (select (arr!17998 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354239 () Bool)

(assert (=> b!617726 e!354239))

(declare-fun res!398063 () Bool)

(assert (=> b!617726 (=> (not res!398063) (not e!354239))))

(assert (=> b!617726 (= res!398063 (arrayContainsKey!0 lt!284666 (select (arr!17998 a!2986) j!136) j!136))))

(declare-fun e!354232 () Unit!20270)

(declare-fun Unit!20274 () Unit!20270)

(assert (=> b!617726 (= e!354232 Unit!20274)))

(declare-fun b!617727 () Bool)

(declare-fun e!354228 () Bool)

(declare-fun lt!284674 () SeekEntryResult!6445)

(declare-fun lt!284670 () SeekEntryResult!6445)

(assert (=> b!617727 (= e!354228 (= lt!284674 lt!284670))))

(declare-fun b!617728 () Bool)

(declare-fun res!398067 () Bool)

(assert (=> b!617728 (=> (not res!398067) (not e!354229))))

(assert (=> b!617728 (= res!398067 (and (= (size!18362 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18362 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18362 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617729 () Bool)

(declare-fun e!354236 () Unit!20270)

(declare-fun Unit!20275 () Unit!20270)

(assert (=> b!617729 (= e!354236 Unit!20275)))

(declare-fun b!617715 () Bool)

(declare-fun e!354238 () Bool)

(assert (=> b!617715 (= e!354237 e!354238)))

(declare-fun res!398060 () Bool)

(assert (=> b!617715 (=> (not res!398060) (not e!354238))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!617715 (= res!398060 (and (= lt!284674 (Found!6445 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17998 a!2986) index!984) (select (arr!17998 a!2986) j!136))) (not (= (select (arr!17998 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37511 (_ BitVec 32)) SeekEntryResult!6445)

(assert (=> b!617715 (= lt!284674 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17998 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!398069 () Bool)

(assert (=> start!56078 (=> (not res!398069) (not e!354229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56078 (= res!398069 (validMask!0 mask!3053))))

(assert (=> start!56078 e!354229))

(assert (=> start!56078 true))

(declare-fun array_inv!13772 (array!37511) Bool)

(assert (=> start!56078 (array_inv!13772 a!2986)))

(declare-fun b!617730 () Bool)

(declare-fun res!398065 () Bool)

(assert (=> b!617730 (=> (not res!398065) (not e!354227))))

(assert (=> b!617730 (= res!398065 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12089))))

(declare-fun b!617731 () Bool)

(declare-fun res!398066 () Bool)

(assert (=> b!617731 (=> (not res!398066) (not e!354227))))

(assert (=> b!617731 (= res!398066 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17998 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617732 () Bool)

(declare-fun Unit!20276 () Unit!20270)

(assert (=> b!617732 (= e!354241 Unit!20276)))

(declare-fun b!617733 () Bool)

(assert (=> b!617733 (= e!354239 (arrayContainsKey!0 lt!284666 (select (arr!17998 a!2986) j!136) index!984))))

(declare-fun b!617734 () Bool)

(declare-fun Unit!20277 () Unit!20270)

(assert (=> b!617734 (= e!354236 Unit!20277)))

(declare-fun res!398057 () Bool)

(assert (=> b!617734 (= res!398057 (= (select (store (arr!17998 a!2986) i!1108 k0!1786) index!984) (select (arr!17998 a!2986) j!136)))))

(assert (=> b!617734 (=> (not res!398057) (not e!354234))))

(assert (=> b!617734 e!354234))

(declare-fun c!70198 () Bool)

(assert (=> b!617734 (= c!70198 (bvslt j!136 index!984))))

(declare-fun lt!284659 () Unit!20270)

(assert (=> b!617734 (= lt!284659 e!354241)))

(declare-fun c!70196 () Bool)

(assert (=> b!617734 (= c!70196 (bvslt index!984 j!136))))

(declare-fun lt!284658 () Unit!20270)

(assert (=> b!617734 (= lt!284658 e!354232)))

(assert (=> b!617734 false))

(declare-fun b!617735 () Bool)

(assert (=> b!617735 (= e!354238 (not e!354235))))

(declare-fun res!398068 () Bool)

(assert (=> b!617735 (=> res!398068 e!354235)))

(declare-fun lt!284673 () SeekEntryResult!6445)

(assert (=> b!617735 (= res!398068 (not (= lt!284673 (MissingVacant!6445 vacantSpotIndex!68))))))

(declare-fun lt!284667 () Unit!20270)

(assert (=> b!617735 (= lt!284667 e!354236)))

(declare-fun c!70199 () Bool)

(assert (=> b!617735 (= c!70199 (= lt!284673 (Found!6445 index!984)))))

(declare-fun lt!284675 () Unit!20270)

(assert (=> b!617735 (= lt!284675 e!354233)))

(declare-fun c!70197 () Bool)

(assert (=> b!617735 (= c!70197 (= lt!284673 Undefined!6445))))

(declare-fun lt!284662 () (_ BitVec 64))

(assert (=> b!617735 (= lt!284673 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284662 lt!284666 mask!3053))))

(assert (=> b!617735 e!354228))

(declare-fun res!398058 () Bool)

(assert (=> b!617735 (=> (not res!398058) (not e!354228))))

(declare-fun lt!284676 () (_ BitVec 32))

(assert (=> b!617735 (= res!398058 (= lt!284670 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284676 vacantSpotIndex!68 lt!284662 lt!284666 mask!3053)))))

(assert (=> b!617735 (= lt!284670 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284676 vacantSpotIndex!68 (select (arr!17998 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617735 (= lt!284662 (select (store (arr!17998 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!284672 () Unit!20270)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37511 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20270)

(assert (=> b!617735 (= lt!284672 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284676 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617735 (= lt!284676 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617736 () Bool)

(assert (=> b!617736 (= e!354230 (arrayContainsKey!0 lt!284666 (select (arr!17998 a!2986) j!136) index!984))))

(declare-fun b!617737 () Bool)

(declare-fun Unit!20278 () Unit!20270)

(assert (=> b!617737 (= e!354232 Unit!20278)))

(declare-fun b!617738 () Bool)

(declare-fun Unit!20279 () Unit!20270)

(assert (=> b!617738 (= e!354233 Unit!20279)))

(assert (=> b!617738 false))

(assert (= (and start!56078 res!398069) b!617728))

(assert (= (and b!617728 res!398067) b!617724))

(assert (= (and b!617724 res!398070) b!617719))

(assert (= (and b!617719 res!398062) b!617714))

(assert (= (and b!617714 res!398071) b!617717))

(assert (= (and b!617717 res!398056) b!617722))

(assert (= (and b!617722 res!398064) b!617730))

(assert (= (and b!617730 res!398065) b!617731))

(assert (= (and b!617731 res!398066) b!617723))

(assert (= (and b!617723 res!398061) b!617715))

(assert (= (and b!617715 res!398060) b!617735))

(assert (= (and b!617735 res!398058) b!617727))

(assert (= (and b!617735 c!70197) b!617738))

(assert (= (and b!617735 (not c!70197)) b!617718))

(assert (= (and b!617735 c!70199) b!617734))

(assert (= (and b!617735 (not c!70199)) b!617729))

(assert (= (and b!617734 res!398057) b!617725))

(assert (= (and b!617725 (not res!398059)) b!617716))

(assert (= (and b!617716 res!398072) b!617736))

(assert (= (and b!617734 c!70198) b!617720))

(assert (= (and b!617734 (not c!70198)) b!617732))

(assert (= (and b!617734 c!70196) b!617726))

(assert (= (and b!617734 (not c!70196)) b!617737))

(assert (= (and b!617726 res!398063) b!617733))

(assert (= (and b!617735 (not res!398068)) b!617721))

(declare-fun m!593839 () Bool)

(assert (=> b!617735 m!593839))

(declare-fun m!593841 () Bool)

(assert (=> b!617735 m!593841))

(declare-fun m!593843 () Bool)

(assert (=> b!617735 m!593843))

(declare-fun m!593845 () Bool)

(assert (=> b!617735 m!593845))

(declare-fun m!593847 () Bool)

(assert (=> b!617735 m!593847))

(assert (=> b!617735 m!593843))

(declare-fun m!593849 () Bool)

(assert (=> b!617735 m!593849))

(declare-fun m!593851 () Bool)

(assert (=> b!617735 m!593851))

(declare-fun m!593853 () Bool)

(assert (=> b!617735 m!593853))

(assert (=> b!617734 m!593847))

(declare-fun m!593855 () Bool)

(assert (=> b!617734 m!593855))

(assert (=> b!617734 m!593843))

(declare-fun m!593857 () Bool)

(assert (=> b!617714 m!593857))

(declare-fun m!593859 () Bool)

(assert (=> b!617715 m!593859))

(assert (=> b!617715 m!593843))

(assert (=> b!617715 m!593843))

(declare-fun m!593861 () Bool)

(assert (=> b!617715 m!593861))

(assert (=> b!617723 m!593847))

(declare-fun m!593863 () Bool)

(assert (=> b!617723 m!593863))

(declare-fun m!593865 () Bool)

(assert (=> b!617730 m!593865))

(assert (=> b!617736 m!593843))

(assert (=> b!617736 m!593843))

(declare-fun m!593867 () Bool)

(assert (=> b!617736 m!593867))

(declare-fun m!593869 () Bool)

(assert (=> b!617731 m!593869))

(assert (=> b!617716 m!593843))

(assert (=> b!617716 m!593843))

(declare-fun m!593871 () Bool)

(assert (=> b!617716 m!593871))

(declare-fun m!593873 () Bool)

(assert (=> b!617717 m!593873))

(assert (=> b!617724 m!593843))

(assert (=> b!617724 m!593843))

(declare-fun m!593875 () Bool)

(assert (=> b!617724 m!593875))

(assert (=> b!617726 m!593843))

(declare-fun m!593877 () Bool)

(assert (=> b!617726 m!593877))

(declare-fun m!593879 () Bool)

(assert (=> b!617726 m!593879))

(assert (=> b!617726 m!593843))

(assert (=> b!617726 m!593843))

(declare-fun m!593881 () Bool)

(assert (=> b!617726 m!593881))

(declare-fun m!593883 () Bool)

(assert (=> b!617726 m!593883))

(assert (=> b!617726 m!593843))

(declare-fun m!593885 () Bool)

(assert (=> b!617726 m!593885))

(assert (=> b!617726 m!593843))

(assert (=> b!617726 m!593871))

(declare-fun m!593887 () Bool)

(assert (=> b!617726 m!593887))

(declare-fun m!593889 () Bool)

(assert (=> b!617726 m!593889))

(assert (=> b!617720 m!593843))

(assert (=> b!617720 m!593843))

(declare-fun m!593891 () Bool)

(assert (=> b!617720 m!593891))

(declare-fun m!593893 () Bool)

(assert (=> b!617720 m!593893))

(declare-fun m!593895 () Bool)

(assert (=> b!617720 m!593895))

(assert (=> b!617720 m!593843))

(declare-fun m!593897 () Bool)

(assert (=> b!617720 m!593897))

(assert (=> b!617720 m!593889))

(assert (=> b!617720 m!593843))

(declare-fun m!593899 () Bool)

(assert (=> b!617720 m!593899))

(assert (=> b!617720 m!593883))

(declare-fun m!593901 () Bool)

(assert (=> b!617719 m!593901))

(assert (=> b!617733 m!593843))

(assert (=> b!617733 m!593843))

(assert (=> b!617733 m!593867))

(declare-fun m!593903 () Bool)

(assert (=> b!617722 m!593903))

(declare-fun m!593905 () Bool)

(assert (=> start!56078 m!593905))

(declare-fun m!593907 () Bool)

(assert (=> start!56078 m!593907))

(assert (=> b!617721 m!593847))

(assert (=> b!617721 m!593855))

(check-sat (not b!617730) (not b!617717) (not b!617726) (not b!617716) (not start!56078) (not b!617722) (not b!617735) (not b!617724) (not b!617720) (not b!617714) (not b!617719) (not b!617736) (not b!617715) (not b!617733))
(check-sat)
