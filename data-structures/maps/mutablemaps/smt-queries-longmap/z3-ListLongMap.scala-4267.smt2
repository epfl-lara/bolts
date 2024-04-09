; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59360 () Bool)

(assert start!59360)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!654738 () Bool)

(declare-datatypes ((array!38636 0))(
  ( (array!38637 (arr!18514 (Array (_ BitVec 32) (_ BitVec 64))) (size!18878 (_ BitVec 32))) )
))
(declare-fun lt!305237 () array!38636)

(declare-fun a!2986 () array!38636)

(declare-fun res!424808 () Bool)

(declare-fun arrayContainsKey!0 (array!38636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654738 (= res!424808 (arrayContainsKey!0 lt!305237 (select (arr!18514 a!2986) j!136) j!136))))

(declare-fun e!376015 () Bool)

(assert (=> b!654738 (=> (not res!424808) (not e!376015))))

(declare-fun e!376011 () Bool)

(assert (=> b!654738 (= e!376011 e!376015)))

(declare-fun b!654739 () Bool)

(declare-datatypes ((Unit!22454 0))(
  ( (Unit!22455) )
))
(declare-fun e!376016 () Unit!22454)

(declare-fun Unit!22456 () Unit!22454)

(assert (=> b!654739 (= e!376016 Unit!22456)))

(declare-fun b!654740 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!654740 (= e!376015 (arrayContainsKey!0 lt!305237 (select (arr!18514 a!2986) j!136) index!984))))

(declare-fun b!654741 () Bool)

(declare-fun res!424809 () Bool)

(declare-fun e!376018 () Bool)

(assert (=> b!654741 (=> (not res!424809) (not e!376018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654741 (= res!424809 (validKeyInArray!0 (select (arr!18514 a!2986) j!136)))))

(declare-fun res!424819 () Bool)

(assert (=> start!59360 (=> (not res!424819) (not e!376018))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59360 (= res!424819 (validMask!0 mask!3053))))

(assert (=> start!59360 e!376018))

(assert (=> start!59360 true))

(declare-fun array_inv!14288 (array!38636) Bool)

(assert (=> start!59360 (array_inv!14288 a!2986)))

(declare-fun b!654742 () Bool)

(declare-fun Unit!22457 () Unit!22454)

(assert (=> b!654742 (= e!376016 Unit!22457)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!424823 () Bool)

(assert (=> b!654742 (= res!424823 (= (select (store (arr!18514 a!2986) i!1108 k0!1786) index!984) (select (arr!18514 a!2986) j!136)))))

(declare-fun e!376017 () Bool)

(assert (=> b!654742 (=> (not res!424823) (not e!376017))))

(assert (=> b!654742 e!376017))

(declare-fun c!75335 () Bool)

(assert (=> b!654742 (= c!75335 (bvslt j!136 index!984))))

(declare-fun lt!305241 () Unit!22454)

(declare-fun e!376013 () Unit!22454)

(assert (=> b!654742 (= lt!305241 e!376013)))

(declare-fun c!75334 () Bool)

(assert (=> b!654742 (= c!75334 (bvslt index!984 j!136))))

(declare-fun lt!305225 () Unit!22454)

(declare-fun e!376009 () Unit!22454)

(assert (=> b!654742 (= lt!305225 e!376009)))

(assert (=> b!654742 false))

(declare-fun b!654743 () Bool)

(declare-fun res!424818 () Bool)

(assert (=> b!654743 (=> (not res!424818) (not e!376018))))

(assert (=> b!654743 (= res!424818 (and (= (size!18878 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18878 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18878 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654744 () Bool)

(declare-fun Unit!22458 () Unit!22454)

(assert (=> b!654744 (= e!376013 Unit!22458)))

(declare-fun b!654745 () Bool)

(declare-fun Unit!22459 () Unit!22454)

(assert (=> b!654745 (= e!376009 Unit!22459)))

(declare-fun b!654746 () Bool)

(declare-fun e!376021 () Bool)

(declare-fun e!376008 () Bool)

(assert (=> b!654746 (= e!376021 e!376008)))

(declare-fun res!424811 () Bool)

(assert (=> b!654746 (=> (not res!424811) (not e!376008))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!654746 (= res!424811 (= (select (store (arr!18514 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654746 (= lt!305237 (array!38637 (store (arr!18514 a!2986) i!1108 k0!1786) (size!18878 a!2986)))))

(declare-fun e!376020 () Bool)

(declare-fun b!654747 () Bool)

(assert (=> b!654747 (= e!376020 (arrayContainsKey!0 lt!305237 (select (arr!18514 a!2986) j!136) index!984))))

(declare-fun b!654748 () Bool)

(assert (=> b!654748 false))

(declare-fun lt!305223 () Unit!22454)

(declare-datatypes ((List!12608 0))(
  ( (Nil!12605) (Cons!12604 (h!13649 (_ BitVec 64)) (t!18844 List!12608)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38636 (_ BitVec 64) (_ BitVec 32) List!12608) Unit!22454)

(assert (=> b!654748 (= lt!305223 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305237 (select (arr!18514 a!2986) j!136) j!136 Nil!12605))))

(declare-fun arrayNoDuplicates!0 (array!38636 (_ BitVec 32) List!12608) Bool)

(assert (=> b!654748 (arrayNoDuplicates!0 lt!305237 j!136 Nil!12605)))

(declare-fun lt!305224 () Unit!22454)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38636 (_ BitVec 32) (_ BitVec 32)) Unit!22454)

(assert (=> b!654748 (= lt!305224 (lemmaNoDuplicateFromThenFromBigger!0 lt!305237 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654748 (arrayNoDuplicates!0 lt!305237 #b00000000000000000000000000000000 Nil!12605)))

(declare-fun lt!305232 () Unit!22454)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38636 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12608) Unit!22454)

(assert (=> b!654748 (= lt!305232 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12605))))

(assert (=> b!654748 (arrayContainsKey!0 lt!305237 (select (arr!18514 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305230 () Unit!22454)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38636 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22454)

(assert (=> b!654748 (= lt!305230 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305237 (select (arr!18514 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22460 () Unit!22454)

(assert (=> b!654748 (= e!376013 Unit!22460)))

(declare-fun b!654749 () Bool)

(declare-fun res!424822 () Bool)

(assert (=> b!654749 (=> (not res!424822) (not e!376021))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!654749 (= res!424822 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18514 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654750 () Bool)

(declare-fun res!424820 () Bool)

(assert (=> b!654750 (= res!424820 (bvsge j!136 index!984))))

(assert (=> b!654750 (=> res!424820 e!376011)))

(assert (=> b!654750 (= e!376017 e!376011)))

(declare-fun b!654751 () Bool)

(declare-fun e!376010 () Bool)

(assert (=> b!654751 (= e!376010 (not true))))

(declare-fun lt!305233 () Unit!22454)

(assert (=> b!654751 (= lt!305233 e!376016)))

(declare-fun c!75332 () Bool)

(declare-datatypes ((SeekEntryResult!6961 0))(
  ( (MissingZero!6961 (index!30202 (_ BitVec 32))) (Found!6961 (index!30203 (_ BitVec 32))) (Intermediate!6961 (undefined!7773 Bool) (index!30204 (_ BitVec 32)) (x!59019 (_ BitVec 32))) (Undefined!6961) (MissingVacant!6961 (index!30205 (_ BitVec 32))) )
))
(declare-fun lt!305226 () SeekEntryResult!6961)

(assert (=> b!654751 (= c!75332 (= lt!305226 (Found!6961 index!984)))))

(declare-fun lt!305231 () Unit!22454)

(declare-fun e!376012 () Unit!22454)

(assert (=> b!654751 (= lt!305231 e!376012)))

(declare-fun c!75333 () Bool)

(assert (=> b!654751 (= c!75333 (= lt!305226 Undefined!6961))))

(declare-fun lt!305234 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38636 (_ BitVec 32)) SeekEntryResult!6961)

(assert (=> b!654751 (= lt!305226 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305234 lt!305237 mask!3053))))

(declare-fun e!376019 () Bool)

(assert (=> b!654751 e!376019))

(declare-fun res!424815 () Bool)

(assert (=> b!654751 (=> (not res!424815) (not e!376019))))

(declare-fun lt!305238 () (_ BitVec 32))

(declare-fun lt!305229 () SeekEntryResult!6961)

(assert (=> b!654751 (= res!424815 (= lt!305229 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305238 vacantSpotIndex!68 lt!305234 lt!305237 mask!3053)))))

(assert (=> b!654751 (= lt!305229 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305238 vacantSpotIndex!68 (select (arr!18514 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654751 (= lt!305234 (select (store (arr!18514 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!305235 () Unit!22454)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38636 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22454)

(assert (=> b!654751 (= lt!305235 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305238 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654751 (= lt!305238 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654752 () Bool)

(declare-fun Unit!22461 () Unit!22454)

(assert (=> b!654752 (= e!376012 Unit!22461)))

(assert (=> b!654752 false))

(declare-fun b!654753 () Bool)

(declare-fun Unit!22462 () Unit!22454)

(assert (=> b!654753 (= e!376012 Unit!22462)))

(declare-fun b!654754 () Bool)

(declare-fun lt!305236 () SeekEntryResult!6961)

(assert (=> b!654754 (= e!376019 (= lt!305236 lt!305229))))

(declare-fun b!654755 () Bool)

(declare-fun res!424810 () Bool)

(assert (=> b!654755 (=> (not res!424810) (not e!376018))))

(assert (=> b!654755 (= res!424810 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654756 () Bool)

(assert (=> b!654756 (= e!376018 e!376021)))

(declare-fun res!424821 () Bool)

(assert (=> b!654756 (=> (not res!424821) (not e!376021))))

(declare-fun lt!305222 () SeekEntryResult!6961)

(assert (=> b!654756 (= res!424821 (or (= lt!305222 (MissingZero!6961 i!1108)) (= lt!305222 (MissingVacant!6961 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38636 (_ BitVec 32)) SeekEntryResult!6961)

(assert (=> b!654756 (= lt!305222 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!654757 () Bool)

(declare-fun res!424817 () Bool)

(assert (=> b!654757 (=> (not res!424817) (not e!376018))))

(assert (=> b!654757 (= res!424817 (validKeyInArray!0 k0!1786))))

(declare-fun b!654758 () Bool)

(declare-fun res!424816 () Bool)

(assert (=> b!654758 (=> (not res!424816) (not e!376021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38636 (_ BitVec 32)) Bool)

(assert (=> b!654758 (= res!424816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654759 () Bool)

(declare-fun res!424812 () Bool)

(assert (=> b!654759 (=> (not res!424812) (not e!376021))))

(assert (=> b!654759 (= res!424812 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12605))))

(declare-fun b!654760 () Bool)

(assert (=> b!654760 (= e!376008 e!376010)))

(declare-fun res!424814 () Bool)

(assert (=> b!654760 (=> (not res!424814) (not e!376010))))

(assert (=> b!654760 (= res!424814 (and (= lt!305236 (Found!6961 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18514 a!2986) index!984) (select (arr!18514 a!2986) j!136))) (not (= (select (arr!18514 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!654760 (= lt!305236 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18514 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654761 () Bool)

(assert (=> b!654761 false))

(declare-fun lt!305227 () Unit!22454)

(assert (=> b!654761 (= lt!305227 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305237 (select (arr!18514 a!2986) j!136) index!984 Nil!12605))))

(assert (=> b!654761 (arrayNoDuplicates!0 lt!305237 index!984 Nil!12605)))

(declare-fun lt!305240 () Unit!22454)

(assert (=> b!654761 (= lt!305240 (lemmaNoDuplicateFromThenFromBigger!0 lt!305237 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654761 (arrayNoDuplicates!0 lt!305237 #b00000000000000000000000000000000 Nil!12605)))

(declare-fun lt!305228 () Unit!22454)

(assert (=> b!654761 (= lt!305228 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12605))))

(assert (=> b!654761 (arrayContainsKey!0 lt!305237 (select (arr!18514 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305239 () Unit!22454)

(assert (=> b!654761 (= lt!305239 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305237 (select (arr!18514 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654761 e!376020))

(declare-fun res!424813 () Bool)

(assert (=> b!654761 (=> (not res!424813) (not e!376020))))

(assert (=> b!654761 (= res!424813 (arrayContainsKey!0 lt!305237 (select (arr!18514 a!2986) j!136) j!136))))

(declare-fun Unit!22463 () Unit!22454)

(assert (=> b!654761 (= e!376009 Unit!22463)))

(assert (= (and start!59360 res!424819) b!654743))

(assert (= (and b!654743 res!424818) b!654741))

(assert (= (and b!654741 res!424809) b!654757))

(assert (= (and b!654757 res!424817) b!654755))

(assert (= (and b!654755 res!424810) b!654756))

(assert (= (and b!654756 res!424821) b!654758))

(assert (= (and b!654758 res!424816) b!654759))

(assert (= (and b!654759 res!424812) b!654749))

(assert (= (and b!654749 res!424822) b!654746))

(assert (= (and b!654746 res!424811) b!654760))

(assert (= (and b!654760 res!424814) b!654751))

(assert (= (and b!654751 res!424815) b!654754))

(assert (= (and b!654751 c!75333) b!654752))

(assert (= (and b!654751 (not c!75333)) b!654753))

(assert (= (and b!654751 c!75332) b!654742))

(assert (= (and b!654751 (not c!75332)) b!654739))

(assert (= (and b!654742 res!424823) b!654750))

(assert (= (and b!654750 (not res!424820)) b!654738))

(assert (= (and b!654738 res!424808) b!654740))

(assert (= (and b!654742 c!75335) b!654748))

(assert (= (and b!654742 (not c!75335)) b!654744))

(assert (= (and b!654742 c!75334) b!654761))

(assert (= (and b!654742 (not c!75334)) b!654745))

(assert (= (and b!654761 res!424813) b!654747))

(declare-fun m!627901 () Bool)

(assert (=> b!654751 m!627901))

(declare-fun m!627903 () Bool)

(assert (=> b!654751 m!627903))

(declare-fun m!627905 () Bool)

(assert (=> b!654751 m!627905))

(declare-fun m!627907 () Bool)

(assert (=> b!654751 m!627907))

(declare-fun m!627909 () Bool)

(assert (=> b!654751 m!627909))

(declare-fun m!627911 () Bool)

(assert (=> b!654751 m!627911))

(declare-fun m!627913 () Bool)

(assert (=> b!654751 m!627913))

(declare-fun m!627915 () Bool)

(assert (=> b!654751 m!627915))

(assert (=> b!654751 m!627905))

(declare-fun m!627917 () Bool)

(assert (=> b!654761 m!627917))

(assert (=> b!654761 m!627905))

(declare-fun m!627919 () Bool)

(assert (=> b!654761 m!627919))

(assert (=> b!654761 m!627905))

(declare-fun m!627921 () Bool)

(assert (=> b!654761 m!627921))

(declare-fun m!627923 () Bool)

(assert (=> b!654761 m!627923))

(assert (=> b!654761 m!627905))

(declare-fun m!627925 () Bool)

(assert (=> b!654761 m!627925))

(assert (=> b!654761 m!627905))

(declare-fun m!627927 () Bool)

(assert (=> b!654761 m!627927))

(assert (=> b!654761 m!627905))

(declare-fun m!627929 () Bool)

(assert (=> b!654761 m!627929))

(declare-fun m!627931 () Bool)

(assert (=> b!654761 m!627931))

(assert (=> b!654747 m!627905))

(assert (=> b!654747 m!627905))

(declare-fun m!627933 () Bool)

(assert (=> b!654747 m!627933))

(declare-fun m!627935 () Bool)

(assert (=> b!654755 m!627935))

(declare-fun m!627937 () Bool)

(assert (=> b!654748 m!627937))

(assert (=> b!654748 m!627905))

(assert (=> b!654748 m!627905))

(declare-fun m!627939 () Bool)

(assert (=> b!654748 m!627939))

(assert (=> b!654748 m!627931))

(assert (=> b!654748 m!627905))

(declare-fun m!627941 () Bool)

(assert (=> b!654748 m!627941))

(assert (=> b!654748 m!627923))

(assert (=> b!654748 m!627905))

(declare-fun m!627943 () Bool)

(assert (=> b!654748 m!627943))

(declare-fun m!627945 () Bool)

(assert (=> b!654748 m!627945))

(assert (=> b!654740 m!627905))

(assert (=> b!654740 m!627905))

(assert (=> b!654740 m!627933))

(declare-fun m!627947 () Bool)

(assert (=> b!654756 m!627947))

(assert (=> b!654746 m!627909))

(declare-fun m!627949 () Bool)

(assert (=> b!654746 m!627949))

(assert (=> b!654742 m!627909))

(declare-fun m!627951 () Bool)

(assert (=> b!654742 m!627951))

(assert (=> b!654742 m!627905))

(declare-fun m!627953 () Bool)

(assert (=> b!654758 m!627953))

(assert (=> b!654741 m!627905))

(assert (=> b!654741 m!627905))

(declare-fun m!627955 () Bool)

(assert (=> b!654741 m!627955))

(declare-fun m!627957 () Bool)

(assert (=> b!654749 m!627957))

(assert (=> b!654738 m!627905))

(assert (=> b!654738 m!627905))

(assert (=> b!654738 m!627927))

(declare-fun m!627959 () Bool)

(assert (=> b!654757 m!627959))

(declare-fun m!627961 () Bool)

(assert (=> b!654760 m!627961))

(assert (=> b!654760 m!627905))

(assert (=> b!654760 m!627905))

(declare-fun m!627963 () Bool)

(assert (=> b!654760 m!627963))

(declare-fun m!627965 () Bool)

(assert (=> b!654759 m!627965))

(declare-fun m!627967 () Bool)

(assert (=> start!59360 m!627967))

(declare-fun m!627969 () Bool)

(assert (=> start!59360 m!627969))

(check-sat (not b!654741) (not b!654751) (not b!654758) (not b!654761) (not b!654747) (not b!654748) (not b!654757) (not b!654738) (not b!654760) (not b!654755) (not b!654740) (not b!654759) (not b!654756) (not start!59360))
(check-sat)
