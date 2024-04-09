; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58136 () Bool)

(assert start!58136)

(declare-fun b!641888 () Bool)

(declare-fun res!415825 () Bool)

(declare-fun e!367602 () Bool)

(assert (=> b!641888 (=> (not res!415825) (not e!367602))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38351 0))(
  ( (array!38352 (arr!18388 (Array (_ BitVec 32) (_ BitVec 64))) (size!18752 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38351)

(assert (=> b!641888 (= res!415825 (and (= (size!18752 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18752 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18752 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!641889 () Bool)

(declare-fun e!367599 () Bool)

(declare-fun e!367601 () Bool)

(assert (=> b!641889 (= e!367599 e!367601)))

(declare-fun res!415811 () Bool)

(assert (=> b!641889 (=> res!415811 e!367601)))

(assert (=> b!641889 (= res!415811 (or (bvsge (size!18752 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18752 a!2986))))))

(declare-fun lt!297248 () array!38351)

(declare-datatypes ((List!12482 0))(
  ( (Nil!12479) (Cons!12478 (h!13523 (_ BitVec 64)) (t!18718 List!12482)) )
))
(declare-fun arrayNoDuplicates!0 (array!38351 (_ BitVec 32) List!12482) Bool)

(assert (=> b!641889 (arrayNoDuplicates!0 lt!297248 j!136 Nil!12479)))

(declare-datatypes ((Unit!21698 0))(
  ( (Unit!21699) )
))
(declare-fun lt!297238 () Unit!21698)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38351 (_ BitVec 32) (_ BitVec 32)) Unit!21698)

(assert (=> b!641889 (= lt!297238 (lemmaNoDuplicateFromThenFromBigger!0 lt!297248 #b00000000000000000000000000000000 j!136))))

(assert (=> b!641889 (arrayNoDuplicates!0 lt!297248 #b00000000000000000000000000000000 Nil!12479)))

(declare-fun lt!297236 () Unit!21698)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38351 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12482) Unit!21698)

(assert (=> b!641889 (= lt!297236 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12479))))

(declare-fun arrayContainsKey!0 (array!38351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!641889 (arrayContainsKey!0 lt!297248 (select (arr!18388 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297243 () Unit!21698)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38351 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21698)

(assert (=> b!641889 (= lt!297243 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297248 (select (arr!18388 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!641890 () Bool)

(declare-fun res!415817 () Bool)

(declare-fun e!367595 () Bool)

(assert (=> b!641890 (=> (not res!415817) (not e!367595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38351 (_ BitVec 32)) Bool)

(assert (=> b!641890 (= res!415817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!641891 () Bool)

(declare-fun res!415822 () Bool)

(assert (=> b!641891 (=> res!415822 e!367601)))

(declare-fun noDuplicate!407 (List!12482) Bool)

(assert (=> b!641891 (= res!415822 (not (noDuplicate!407 Nil!12479)))))

(declare-fun b!641892 () Bool)

(declare-fun e!367597 () Bool)

(declare-fun e!367598 () Bool)

(assert (=> b!641892 (= e!367597 (not e!367598))))

(declare-fun res!415828 () Bool)

(assert (=> b!641892 (=> res!415828 e!367598)))

(declare-datatypes ((SeekEntryResult!6835 0))(
  ( (MissingZero!6835 (index!29665 (_ BitVec 32))) (Found!6835 (index!29666 (_ BitVec 32))) (Intermediate!6835 (undefined!7647 Bool) (index!29667 (_ BitVec 32)) (x!58458 (_ BitVec 32))) (Undefined!6835) (MissingVacant!6835 (index!29668 (_ BitVec 32))) )
))
(declare-fun lt!297249 () SeekEntryResult!6835)

(assert (=> b!641892 (= res!415828 (not (= lt!297249 (Found!6835 index!984))))))

(declare-fun lt!297246 () Unit!21698)

(declare-fun e!367603 () Unit!21698)

(assert (=> b!641892 (= lt!297246 e!367603)))

(declare-fun c!73406 () Bool)

(assert (=> b!641892 (= c!73406 (= lt!297249 Undefined!6835))))

(declare-fun lt!297239 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38351 (_ BitVec 32)) SeekEntryResult!6835)

(assert (=> b!641892 (= lt!297249 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297239 lt!297248 mask!3053))))

(declare-fun e!367594 () Bool)

(assert (=> b!641892 e!367594))

(declare-fun res!415818 () Bool)

(assert (=> b!641892 (=> (not res!415818) (not e!367594))))

(declare-fun lt!297240 () SeekEntryResult!6835)

(declare-fun lt!297241 () (_ BitVec 32))

(assert (=> b!641892 (= res!415818 (= lt!297240 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297241 vacantSpotIndex!68 lt!297239 lt!297248 mask!3053)))))

(assert (=> b!641892 (= lt!297240 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297241 vacantSpotIndex!68 (select (arr!18388 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!641892 (= lt!297239 (select (store (arr!18388 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!297244 () Unit!21698)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38351 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21698)

(assert (=> b!641892 (= lt!297244 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297241 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!641892 (= lt!297241 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!641894 () Bool)

(declare-fun lt!297237 () SeekEntryResult!6835)

(assert (=> b!641894 (= e!367594 (= lt!297237 lt!297240))))

(declare-fun b!641895 () Bool)

(declare-fun res!415826 () Bool)

(assert (=> b!641895 (=> (not res!415826) (not e!367595))))

(assert (=> b!641895 (= res!415826 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12479))))

(declare-fun b!641896 () Bool)

(assert (=> b!641896 (= e!367601 true)))

(declare-fun lt!297242 () Bool)

(declare-fun contains!3136 (List!12482 (_ BitVec 64)) Bool)

(assert (=> b!641896 (= lt!297242 (contains!3136 Nil!12479 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641897 () Bool)

(declare-fun e!367604 () Bool)

(assert (=> b!641897 (= e!367595 e!367604)))

(declare-fun res!415813 () Bool)

(assert (=> b!641897 (=> (not res!415813) (not e!367604))))

(assert (=> b!641897 (= res!415813 (= (select (store (arr!18388 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641897 (= lt!297248 (array!38352 (store (arr!18388 a!2986) i!1108 k0!1786) (size!18752 a!2986)))))

(declare-fun b!641898 () Bool)

(declare-fun res!415821 () Bool)

(assert (=> b!641898 (=> (not res!415821) (not e!367602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!641898 (= res!415821 (validKeyInArray!0 k0!1786))))

(declare-fun b!641899 () Bool)

(declare-fun res!415820 () Bool)

(assert (=> b!641899 (=> (not res!415820) (not e!367602))))

(assert (=> b!641899 (= res!415820 (validKeyInArray!0 (select (arr!18388 a!2986) j!136)))))

(declare-fun b!641900 () Bool)

(declare-fun res!415815 () Bool)

(assert (=> b!641900 (=> res!415815 e!367601)))

(assert (=> b!641900 (= res!415815 (contains!3136 Nil!12479 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641901 () Bool)

(declare-fun res!415814 () Bool)

(assert (=> b!641901 (=> (not res!415814) (not e!367595))))

(assert (=> b!641901 (= res!415814 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18388 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641902 () Bool)

(declare-fun e!367606 () Bool)

(declare-fun e!367605 () Bool)

(assert (=> b!641902 (= e!367606 e!367605)))

(declare-fun res!415829 () Bool)

(assert (=> b!641902 (=> (not res!415829) (not e!367605))))

(assert (=> b!641902 (= res!415829 (arrayContainsKey!0 lt!297248 (select (arr!18388 a!2986) j!136) j!136))))

(declare-fun res!415810 () Bool)

(assert (=> start!58136 (=> (not res!415810) (not e!367602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58136 (= res!415810 (validMask!0 mask!3053))))

(assert (=> start!58136 e!367602))

(assert (=> start!58136 true))

(declare-fun array_inv!14162 (array!38351) Bool)

(assert (=> start!58136 (array_inv!14162 a!2986)))

(declare-fun b!641893 () Bool)

(assert (=> b!641893 (= e!367604 e!367597)))

(declare-fun res!415823 () Bool)

(assert (=> b!641893 (=> (not res!415823) (not e!367597))))

(assert (=> b!641893 (= res!415823 (and (= lt!297237 (Found!6835 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18388 a!2986) index!984) (select (arr!18388 a!2986) j!136))) (not (= (select (arr!18388 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!641893 (= lt!297237 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18388 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641903 () Bool)

(declare-fun e!367600 () Bool)

(assert (=> b!641903 (= e!367600 e!367606)))

(declare-fun res!415812 () Bool)

(assert (=> b!641903 (=> res!415812 e!367606)))

(declare-fun lt!297247 () (_ BitVec 64))

(assert (=> b!641903 (= res!415812 (or (not (= (select (arr!18388 a!2986) j!136) lt!297239)) (not (= (select (arr!18388 a!2986) j!136) lt!297247)) (bvsge j!136 index!984)))))

(declare-fun b!641904 () Bool)

(assert (=> b!641904 (= e!367605 (arrayContainsKey!0 lt!297248 (select (arr!18388 a!2986) j!136) index!984))))

(declare-fun b!641905 () Bool)

(declare-fun Unit!21700 () Unit!21698)

(assert (=> b!641905 (= e!367603 Unit!21700)))

(declare-fun b!641906 () Bool)

(declare-fun Unit!21701 () Unit!21698)

(assert (=> b!641906 (= e!367603 Unit!21701)))

(assert (=> b!641906 false))

(declare-fun b!641907 () Bool)

(assert (=> b!641907 (= e!367598 e!367599)))

(declare-fun res!415819 () Bool)

(assert (=> b!641907 (=> res!415819 e!367599)))

(assert (=> b!641907 (= res!415819 (or (not (= (select (arr!18388 a!2986) j!136) lt!297239)) (not (= (select (arr!18388 a!2986) j!136) lt!297247)) (bvsge j!136 index!984)))))

(assert (=> b!641907 e!367600))

(declare-fun res!415827 () Bool)

(assert (=> b!641907 (=> (not res!415827) (not e!367600))))

(assert (=> b!641907 (= res!415827 (= lt!297247 (select (arr!18388 a!2986) j!136)))))

(assert (=> b!641907 (= lt!297247 (select (store (arr!18388 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!641908 () Bool)

(declare-fun res!415824 () Bool)

(assert (=> b!641908 (=> (not res!415824) (not e!367602))))

(assert (=> b!641908 (= res!415824 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!641909 () Bool)

(assert (=> b!641909 (= e!367602 e!367595)))

(declare-fun res!415816 () Bool)

(assert (=> b!641909 (=> (not res!415816) (not e!367595))))

(declare-fun lt!297245 () SeekEntryResult!6835)

(assert (=> b!641909 (= res!415816 (or (= lt!297245 (MissingZero!6835 i!1108)) (= lt!297245 (MissingVacant!6835 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38351 (_ BitVec 32)) SeekEntryResult!6835)

(assert (=> b!641909 (= lt!297245 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!58136 res!415810) b!641888))

(assert (= (and b!641888 res!415825) b!641899))

(assert (= (and b!641899 res!415820) b!641898))

(assert (= (and b!641898 res!415821) b!641908))

(assert (= (and b!641908 res!415824) b!641909))

(assert (= (and b!641909 res!415816) b!641890))

(assert (= (and b!641890 res!415817) b!641895))

(assert (= (and b!641895 res!415826) b!641901))

(assert (= (and b!641901 res!415814) b!641897))

(assert (= (and b!641897 res!415813) b!641893))

(assert (= (and b!641893 res!415823) b!641892))

(assert (= (and b!641892 res!415818) b!641894))

(assert (= (and b!641892 c!73406) b!641906))

(assert (= (and b!641892 (not c!73406)) b!641905))

(assert (= (and b!641892 (not res!415828)) b!641907))

(assert (= (and b!641907 res!415827) b!641903))

(assert (= (and b!641903 (not res!415812)) b!641902))

(assert (= (and b!641902 res!415829) b!641904))

(assert (= (and b!641907 (not res!415819)) b!641889))

(assert (= (and b!641889 (not res!415811)) b!641891))

(assert (= (and b!641891 (not res!415822)) b!641900))

(assert (= (and b!641900 (not res!415815)) b!641896))

(declare-fun m!615739 () Bool)

(assert (=> b!641898 m!615739))

(declare-fun m!615741 () Bool)

(assert (=> b!641903 m!615741))

(assert (=> b!641907 m!615741))

(declare-fun m!615743 () Bool)

(assert (=> b!641907 m!615743))

(declare-fun m!615745 () Bool)

(assert (=> b!641907 m!615745))

(declare-fun m!615747 () Bool)

(assert (=> b!641891 m!615747))

(declare-fun m!615749 () Bool)

(assert (=> b!641901 m!615749))

(assert (=> b!641904 m!615741))

(assert (=> b!641904 m!615741))

(declare-fun m!615751 () Bool)

(assert (=> b!641904 m!615751))

(assert (=> b!641889 m!615741))

(declare-fun m!615753 () Bool)

(assert (=> b!641889 m!615753))

(declare-fun m!615755 () Bool)

(assert (=> b!641889 m!615755))

(assert (=> b!641889 m!615741))

(declare-fun m!615757 () Bool)

(assert (=> b!641889 m!615757))

(declare-fun m!615759 () Bool)

(assert (=> b!641889 m!615759))

(assert (=> b!641889 m!615741))

(declare-fun m!615761 () Bool)

(assert (=> b!641889 m!615761))

(declare-fun m!615763 () Bool)

(assert (=> b!641889 m!615763))

(declare-fun m!615765 () Bool)

(assert (=> b!641909 m!615765))

(declare-fun m!615767 () Bool)

(assert (=> b!641893 m!615767))

(assert (=> b!641893 m!615741))

(assert (=> b!641893 m!615741))

(declare-fun m!615769 () Bool)

(assert (=> b!641893 m!615769))

(assert (=> b!641902 m!615741))

(assert (=> b!641902 m!615741))

(declare-fun m!615771 () Bool)

(assert (=> b!641902 m!615771))

(declare-fun m!615773 () Bool)

(assert (=> b!641895 m!615773))

(declare-fun m!615775 () Bool)

(assert (=> b!641900 m!615775))

(declare-fun m!615777 () Bool)

(assert (=> b!641890 m!615777))

(declare-fun m!615779 () Bool)

(assert (=> b!641892 m!615779))

(declare-fun m!615781 () Bool)

(assert (=> b!641892 m!615781))

(declare-fun m!615783 () Bool)

(assert (=> b!641892 m!615783))

(assert (=> b!641892 m!615743))

(assert (=> b!641892 m!615741))

(declare-fun m!615785 () Bool)

(assert (=> b!641892 m!615785))

(declare-fun m!615787 () Bool)

(assert (=> b!641892 m!615787))

(assert (=> b!641892 m!615741))

(declare-fun m!615789 () Bool)

(assert (=> b!641892 m!615789))

(declare-fun m!615791 () Bool)

(assert (=> b!641908 m!615791))

(assert (=> b!641899 m!615741))

(assert (=> b!641899 m!615741))

(declare-fun m!615793 () Bool)

(assert (=> b!641899 m!615793))

(assert (=> b!641897 m!615743))

(declare-fun m!615795 () Bool)

(assert (=> b!641897 m!615795))

(declare-fun m!615797 () Bool)

(assert (=> b!641896 m!615797))

(declare-fun m!615799 () Bool)

(assert (=> start!58136 m!615799))

(declare-fun m!615801 () Bool)

(assert (=> start!58136 m!615801))

(check-sat (not b!641908) (not b!641891) (not b!641895) (not b!641893) (not b!641909) (not b!641889) (not b!641896) (not b!641899) (not b!641892) (not b!641890) (not b!641898) (not start!58136) (not b!641902) (not b!641900) (not b!641904))
(check-sat)
