; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56108 () Bool)

(assert start!56108)

(declare-fun b!618839 () Bool)

(declare-fun e!354909 () Bool)

(declare-datatypes ((SeekEntryResult!6460 0))(
  ( (MissingZero!6460 (index!28123 (_ BitVec 32))) (Found!6460 (index!28124 (_ BitVec 32))) (Intermediate!6460 (undefined!7272 Bool) (index!28125 (_ BitVec 32)) (x!56933 (_ BitVec 32))) (Undefined!6460) (MissingVacant!6460 (index!28126 (_ BitVec 32))) )
))
(declare-fun lt!285574 () SeekEntryResult!6460)

(declare-fun lt!285573 () SeekEntryResult!6460)

(assert (=> b!618839 (= e!354909 (= lt!285574 lt!285573))))

(declare-fun b!618840 () Bool)

(declare-fun res!398837 () Bool)

(declare-fun e!354912 () Bool)

(assert (=> b!618840 (=> (not res!398837) (not e!354912))))

(declare-datatypes ((array!37541 0))(
  ( (array!37542 (arr!18013 (Array (_ BitVec 32) (_ BitVec 64))) (size!18377 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37541)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37541 (_ BitVec 32)) Bool)

(assert (=> b!618840 (= res!398837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618841 () Bool)

(declare-datatypes ((Unit!20420 0))(
  ( (Unit!20421) )
))
(declare-fun e!354907 () Unit!20420)

(declare-fun Unit!20422 () Unit!20420)

(assert (=> b!618841 (= e!354907 Unit!20422)))

(declare-fun res!398830 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618841 (= res!398830 (= (select (store (arr!18013 a!2986) i!1108 k0!1786) index!984) (select (arr!18013 a!2986) j!136)))))

(declare-fun e!354906 () Bool)

(assert (=> b!618841 (=> (not res!398830) (not e!354906))))

(assert (=> b!618841 e!354906))

(declare-fun c!70377 () Bool)

(assert (=> b!618841 (= c!70377 (bvslt j!136 index!984))))

(declare-fun lt!285564 () Unit!20420)

(declare-fun e!354911 () Unit!20420)

(assert (=> b!618841 (= lt!285564 e!354911)))

(declare-fun c!70376 () Bool)

(assert (=> b!618841 (= c!70376 (bvslt index!984 j!136))))

(declare-fun lt!285568 () Unit!20420)

(declare-fun e!354902 () Unit!20420)

(assert (=> b!618841 (= lt!285568 e!354902)))

(assert (=> b!618841 false))

(declare-fun b!618842 () Bool)

(declare-fun e!354913 () Bool)

(assert (=> b!618842 (= e!354913 true)))

(assert (=> b!618842 (= (select (store (arr!18013 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618843 () Bool)

(declare-fun res!398825 () Bool)

(assert (=> b!618843 (= res!398825 (bvsge j!136 index!984))))

(declare-fun e!354904 () Bool)

(assert (=> b!618843 (=> res!398825 e!354904)))

(assert (=> b!618843 (= e!354906 e!354904)))

(declare-fun b!618844 () Bool)

(declare-fun e!354910 () Bool)

(assert (=> b!618844 (= e!354910 e!354912)))

(declare-fun res!398829 () Bool)

(assert (=> b!618844 (=> (not res!398829) (not e!354912))))

(declare-fun lt!285560 () SeekEntryResult!6460)

(assert (=> b!618844 (= res!398829 (or (= lt!285560 (MissingZero!6460 i!1108)) (= lt!285560 (MissingVacant!6460 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37541 (_ BitVec 32)) SeekEntryResult!6460)

(assert (=> b!618844 (= lt!285560 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!618845 () Bool)

(declare-fun res!398821 () Bool)

(assert (=> b!618845 (=> (not res!398821) (not e!354912))))

(declare-datatypes ((List!12107 0))(
  ( (Nil!12104) (Cons!12103 (h!13148 (_ BitVec 64)) (t!18343 List!12107)) )
))
(declare-fun arrayNoDuplicates!0 (array!37541 (_ BitVec 32) List!12107) Bool)

(assert (=> b!618845 (= res!398821 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12104))))

(declare-fun lt!285570 () array!37541)

(declare-fun res!398834 () Bool)

(declare-fun b!618846 () Bool)

(declare-fun arrayContainsKey!0 (array!37541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618846 (= res!398834 (arrayContainsKey!0 lt!285570 (select (arr!18013 a!2986) j!136) j!136))))

(declare-fun e!354915 () Bool)

(assert (=> b!618846 (=> (not res!398834) (not e!354915))))

(assert (=> b!618846 (= e!354904 e!354915)))

(declare-fun b!618847 () Bool)

(declare-fun Unit!20423 () Unit!20420)

(assert (=> b!618847 (= e!354902 Unit!20423)))

(declare-fun b!618848 () Bool)

(declare-fun res!398836 () Bool)

(assert (=> b!618848 (=> (not res!398836) (not e!354910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618848 (= res!398836 (validKeyInArray!0 k0!1786))))

(declare-fun b!618849 () Bool)

(declare-fun e!354916 () Bool)

(assert (=> b!618849 (= e!354912 e!354916)))

(declare-fun res!398831 () Bool)

(assert (=> b!618849 (=> (not res!398831) (not e!354916))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!618849 (= res!398831 (= (select (store (arr!18013 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618849 (= lt!285570 (array!37542 (store (arr!18013 a!2986) i!1108 k0!1786) (size!18377 a!2986)))))

(declare-fun b!618850 () Bool)

(declare-fun e!354905 () Unit!20420)

(declare-fun Unit!20424 () Unit!20420)

(assert (=> b!618850 (= e!354905 Unit!20424)))

(declare-fun e!354914 () Bool)

(declare-fun b!618851 () Bool)

(assert (=> b!618851 (= e!354914 (arrayContainsKey!0 lt!285570 (select (arr!18013 a!2986) j!136) index!984))))

(declare-fun res!398822 () Bool)

(assert (=> start!56108 (=> (not res!398822) (not e!354910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56108 (= res!398822 (validMask!0 mask!3053))))

(assert (=> start!56108 e!354910))

(assert (=> start!56108 true))

(declare-fun array_inv!13787 (array!37541) Bool)

(assert (=> start!56108 (array_inv!13787 a!2986)))

(declare-fun b!618852 () Bool)

(assert (=> b!618852 (= e!354915 (arrayContainsKey!0 lt!285570 (select (arr!18013 a!2986) j!136) index!984))))

(declare-fun b!618853 () Bool)

(declare-fun e!354903 () Bool)

(assert (=> b!618853 (= e!354916 e!354903)))

(declare-fun res!398828 () Bool)

(assert (=> b!618853 (=> (not res!398828) (not e!354903))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!618853 (= res!398828 (and (= lt!285574 (Found!6460 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18013 a!2986) index!984) (select (arr!18013 a!2986) j!136))) (not (= (select (arr!18013 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37541 (_ BitVec 32)) SeekEntryResult!6460)

(assert (=> b!618853 (= lt!285574 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18013 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618854 () Bool)

(declare-fun Unit!20425 () Unit!20420)

(assert (=> b!618854 (= e!354907 Unit!20425)))

(declare-fun b!618855 () Bool)

(declare-fun res!398833 () Bool)

(assert (=> b!618855 (=> (not res!398833) (not e!354912))))

(assert (=> b!618855 (= res!398833 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18013 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618856 () Bool)

(declare-fun res!398827 () Bool)

(assert (=> b!618856 (=> (not res!398827) (not e!354910))))

(assert (=> b!618856 (= res!398827 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618857 () Bool)

(assert (=> b!618857 false))

(declare-fun lt!285559 () Unit!20420)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37541 (_ BitVec 64) (_ BitVec 32) List!12107) Unit!20420)

(assert (=> b!618857 (= lt!285559 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285570 (select (arr!18013 a!2986) j!136) j!136 Nil!12104))))

(assert (=> b!618857 (arrayNoDuplicates!0 lt!285570 j!136 Nil!12104)))

(declare-fun lt!285563 () Unit!20420)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37541 (_ BitVec 32) (_ BitVec 32)) Unit!20420)

(assert (=> b!618857 (= lt!285563 (lemmaNoDuplicateFromThenFromBigger!0 lt!285570 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618857 (arrayNoDuplicates!0 lt!285570 #b00000000000000000000000000000000 Nil!12104)))

(declare-fun lt!285569 () Unit!20420)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37541 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12107) Unit!20420)

(assert (=> b!618857 (= lt!285569 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12104))))

(assert (=> b!618857 (arrayContainsKey!0 lt!285570 (select (arr!18013 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285558 () Unit!20420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37541 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20420)

(assert (=> b!618857 (= lt!285558 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285570 (select (arr!18013 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20426 () Unit!20420)

(assert (=> b!618857 (= e!354911 Unit!20426)))

(declare-fun b!618858 () Bool)

(declare-fun res!398832 () Bool)

(assert (=> b!618858 (=> (not res!398832) (not e!354910))))

(assert (=> b!618858 (= res!398832 (validKeyInArray!0 (select (arr!18013 a!2986) j!136)))))

(declare-fun b!618859 () Bool)

(assert (=> b!618859 (= e!354903 (not e!354913))))

(declare-fun res!398826 () Bool)

(assert (=> b!618859 (=> res!398826 e!354913)))

(declare-fun lt!285571 () SeekEntryResult!6460)

(assert (=> b!618859 (= res!398826 (not (= lt!285571 (MissingVacant!6460 vacantSpotIndex!68))))))

(declare-fun lt!285557 () Unit!20420)

(assert (=> b!618859 (= lt!285557 e!354907)))

(declare-fun c!70379 () Bool)

(assert (=> b!618859 (= c!70379 (= lt!285571 (Found!6460 index!984)))))

(declare-fun lt!285561 () Unit!20420)

(assert (=> b!618859 (= lt!285561 e!354905)))

(declare-fun c!70378 () Bool)

(assert (=> b!618859 (= c!70378 (= lt!285571 Undefined!6460))))

(declare-fun lt!285567 () (_ BitVec 64))

(assert (=> b!618859 (= lt!285571 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285567 lt!285570 mask!3053))))

(assert (=> b!618859 e!354909))

(declare-fun res!398835 () Bool)

(assert (=> b!618859 (=> (not res!398835) (not e!354909))))

(declare-fun lt!285575 () (_ BitVec 32))

(assert (=> b!618859 (= res!398835 (= lt!285573 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285575 vacantSpotIndex!68 lt!285567 lt!285570 mask!3053)))))

(assert (=> b!618859 (= lt!285573 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285575 vacantSpotIndex!68 (select (arr!18013 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618859 (= lt!285567 (select (store (arr!18013 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!285566 () Unit!20420)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37541 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20420)

(assert (=> b!618859 (= lt!285566 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285575 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618859 (= lt!285575 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618860 () Bool)

(assert (=> b!618860 false))

(declare-fun lt!285565 () Unit!20420)

(assert (=> b!618860 (= lt!285565 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285570 (select (arr!18013 a!2986) j!136) index!984 Nil!12104))))

(assert (=> b!618860 (arrayNoDuplicates!0 lt!285570 index!984 Nil!12104)))

(declare-fun lt!285576 () Unit!20420)

(assert (=> b!618860 (= lt!285576 (lemmaNoDuplicateFromThenFromBigger!0 lt!285570 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618860 (arrayNoDuplicates!0 lt!285570 #b00000000000000000000000000000000 Nil!12104)))

(declare-fun lt!285572 () Unit!20420)

(assert (=> b!618860 (= lt!285572 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12104))))

(assert (=> b!618860 (arrayContainsKey!0 lt!285570 (select (arr!18013 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285562 () Unit!20420)

(assert (=> b!618860 (= lt!285562 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285570 (select (arr!18013 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618860 e!354914))

(declare-fun res!398824 () Bool)

(assert (=> b!618860 (=> (not res!398824) (not e!354914))))

(assert (=> b!618860 (= res!398824 (arrayContainsKey!0 lt!285570 (select (arr!18013 a!2986) j!136) j!136))))

(declare-fun Unit!20427 () Unit!20420)

(assert (=> b!618860 (= e!354902 Unit!20427)))

(declare-fun b!618861 () Bool)

(declare-fun Unit!20428 () Unit!20420)

(assert (=> b!618861 (= e!354905 Unit!20428)))

(assert (=> b!618861 false))

(declare-fun b!618862 () Bool)

(declare-fun res!398823 () Bool)

(assert (=> b!618862 (=> (not res!398823) (not e!354910))))

(assert (=> b!618862 (= res!398823 (and (= (size!18377 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18377 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18377 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618863 () Bool)

(declare-fun Unit!20429 () Unit!20420)

(assert (=> b!618863 (= e!354911 Unit!20429)))

(assert (= (and start!56108 res!398822) b!618862))

(assert (= (and b!618862 res!398823) b!618858))

(assert (= (and b!618858 res!398832) b!618848))

(assert (= (and b!618848 res!398836) b!618856))

(assert (= (and b!618856 res!398827) b!618844))

(assert (= (and b!618844 res!398829) b!618840))

(assert (= (and b!618840 res!398837) b!618845))

(assert (= (and b!618845 res!398821) b!618855))

(assert (= (and b!618855 res!398833) b!618849))

(assert (= (and b!618849 res!398831) b!618853))

(assert (= (and b!618853 res!398828) b!618859))

(assert (= (and b!618859 res!398835) b!618839))

(assert (= (and b!618859 c!70378) b!618861))

(assert (= (and b!618859 (not c!70378)) b!618850))

(assert (= (and b!618859 c!70379) b!618841))

(assert (= (and b!618859 (not c!70379)) b!618854))

(assert (= (and b!618841 res!398830) b!618843))

(assert (= (and b!618843 (not res!398825)) b!618846))

(assert (= (and b!618846 res!398834) b!618852))

(assert (= (and b!618841 c!70377) b!618857))

(assert (= (and b!618841 (not c!70377)) b!618863))

(assert (= (and b!618841 c!70376) b!618860))

(assert (= (and b!618841 (not c!70376)) b!618847))

(assert (= (and b!618860 res!398824) b!618851))

(assert (= (and b!618859 (not res!398826)) b!618842))

(declare-fun m!594889 () Bool)

(assert (=> b!618845 m!594889))

(declare-fun m!594891 () Bool)

(assert (=> b!618856 m!594891))

(declare-fun m!594893 () Bool)

(assert (=> b!618857 m!594893))

(declare-fun m!594895 () Bool)

(assert (=> b!618857 m!594895))

(assert (=> b!618857 m!594895))

(declare-fun m!594897 () Bool)

(assert (=> b!618857 m!594897))

(assert (=> b!618857 m!594895))

(declare-fun m!594899 () Bool)

(assert (=> b!618857 m!594899))

(assert (=> b!618857 m!594895))

(declare-fun m!594901 () Bool)

(assert (=> b!618857 m!594901))

(declare-fun m!594903 () Bool)

(assert (=> b!618857 m!594903))

(declare-fun m!594905 () Bool)

(assert (=> b!618857 m!594905))

(declare-fun m!594907 () Bool)

(assert (=> b!618857 m!594907))

(declare-fun m!594909 () Bool)

(assert (=> b!618860 m!594909))

(assert (=> b!618860 m!594895))

(declare-fun m!594911 () Bool)

(assert (=> b!618860 m!594911))

(declare-fun m!594913 () Bool)

(assert (=> b!618860 m!594913))

(assert (=> b!618860 m!594905))

(assert (=> b!618860 m!594903))

(assert (=> b!618860 m!594895))

(assert (=> b!618860 m!594895))

(declare-fun m!594915 () Bool)

(assert (=> b!618860 m!594915))

(assert (=> b!618860 m!594895))

(declare-fun m!594917 () Bool)

(assert (=> b!618860 m!594917))

(assert (=> b!618860 m!594895))

(declare-fun m!594919 () Bool)

(assert (=> b!618860 m!594919))

(declare-fun m!594921 () Bool)

(assert (=> b!618842 m!594921))

(declare-fun m!594923 () Bool)

(assert (=> b!618842 m!594923))

(declare-fun m!594925 () Bool)

(assert (=> b!618855 m!594925))

(declare-fun m!594927 () Bool)

(assert (=> b!618848 m!594927))

(assert (=> b!618846 m!594895))

(assert (=> b!618846 m!594895))

(assert (=> b!618846 m!594919))

(declare-fun m!594929 () Bool)

(assert (=> b!618840 m!594929))

(assert (=> b!618852 m!594895))

(assert (=> b!618852 m!594895))

(declare-fun m!594931 () Bool)

(assert (=> b!618852 m!594931))

(assert (=> b!618858 m!594895))

(assert (=> b!618858 m!594895))

(declare-fun m!594933 () Bool)

(assert (=> b!618858 m!594933))

(declare-fun m!594935 () Bool)

(assert (=> start!56108 m!594935))

(declare-fun m!594937 () Bool)

(assert (=> start!56108 m!594937))

(assert (=> b!618849 m!594921))

(declare-fun m!594939 () Bool)

(assert (=> b!618849 m!594939))

(declare-fun m!594941 () Bool)

(assert (=> b!618859 m!594941))

(declare-fun m!594943 () Bool)

(assert (=> b!618859 m!594943))

(assert (=> b!618859 m!594895))

(assert (=> b!618859 m!594921))

(declare-fun m!594945 () Bool)

(assert (=> b!618859 m!594945))

(assert (=> b!618859 m!594895))

(declare-fun m!594947 () Bool)

(assert (=> b!618859 m!594947))

(declare-fun m!594949 () Bool)

(assert (=> b!618859 m!594949))

(declare-fun m!594951 () Bool)

(assert (=> b!618859 m!594951))

(assert (=> b!618841 m!594921))

(assert (=> b!618841 m!594923))

(assert (=> b!618841 m!594895))

(declare-fun m!594953 () Bool)

(assert (=> b!618844 m!594953))

(declare-fun m!594955 () Bool)

(assert (=> b!618853 m!594955))

(assert (=> b!618853 m!594895))

(assert (=> b!618853 m!594895))

(declare-fun m!594957 () Bool)

(assert (=> b!618853 m!594957))

(assert (=> b!618851 m!594895))

(assert (=> b!618851 m!594895))

(assert (=> b!618851 m!594931))

(check-sat (not b!618853) (not b!618840) (not b!618858) (not b!618846) (not b!618848) (not b!618852) (not b!618844) (not b!618851) (not b!618860) (not start!56108) (not b!618859) (not b!618845) (not b!618857) (not b!618856))
(check-sat)
