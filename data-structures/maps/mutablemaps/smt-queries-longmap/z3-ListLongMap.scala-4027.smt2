; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54878 () Bool)

(assert start!54878)

(declare-fun b!599753 () Bool)

(declare-fun res!384872 () Bool)

(declare-fun e!342898 () Bool)

(assert (=> b!599753 (=> (not res!384872) (not e!342898))))

(declare-datatypes ((array!37076 0))(
  ( (array!37077 (arr!17794 (Array (_ BitVec 32) (_ BitVec 64))) (size!18158 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37076)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599753 (= res!384872 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599754 () Bool)

(declare-fun res!384873 () Bool)

(declare-fun e!342902 () Bool)

(assert (=> b!599754 (=> res!384873 e!342902)))

(declare-datatypes ((List!11888 0))(
  ( (Nil!11885) (Cons!11884 (h!12929 (_ BitVec 64)) (t!18124 List!11888)) )
))
(declare-fun noDuplicate!287 (List!11888) Bool)

(assert (=> b!599754 (= res!384873 (not (noDuplicate!287 Nil!11885)))))

(declare-fun b!599755 () Bool)

(assert (=> b!599755 (= e!342902 true)))

(declare-fun lt!272785 () Bool)

(declare-fun contains!2973 (List!11888 (_ BitVec 64)) Bool)

(assert (=> b!599755 (= lt!272785 (contains!2973 Nil!11885 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599756 () Bool)

(declare-fun res!384877 () Bool)

(assert (=> b!599756 (=> res!384877 e!342902)))

(assert (=> b!599756 (= res!384877 (contains!2973 Nil!11885 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599757 () Bool)

(declare-datatypes ((Unit!18908 0))(
  ( (Unit!18909) )
))
(declare-fun e!342896 () Unit!18908)

(declare-fun Unit!18910 () Unit!18908)

(assert (=> b!599757 (= e!342896 Unit!18910)))

(assert (=> b!599757 false))

(declare-fun b!599758 () Bool)

(declare-fun e!342904 () Bool)

(assert (=> b!599758 (= e!342904 e!342902)))

(declare-fun res!384871 () Bool)

(assert (=> b!599758 (=> res!384871 e!342902)))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!599758 (= res!384871 (or (bvsge (size!18158 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18158 a!2986))))))

(declare-fun lt!272787 () array!37076)

(declare-fun arrayNoDuplicates!0 (array!37076 (_ BitVec 32) List!11888) Bool)

(assert (=> b!599758 (arrayNoDuplicates!0 lt!272787 j!136 Nil!11885)))

(declare-fun lt!272791 () Unit!18908)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37076 (_ BitVec 32) (_ BitVec 32)) Unit!18908)

(assert (=> b!599758 (= lt!272791 (lemmaNoDuplicateFromThenFromBigger!0 lt!272787 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599758 (arrayNoDuplicates!0 lt!272787 #b00000000000000000000000000000000 Nil!11885)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!272783 () Unit!18908)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37076 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11888) Unit!18908)

(assert (=> b!599758 (= lt!272783 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11885))))

(assert (=> b!599758 (arrayContainsKey!0 lt!272787 (select (arr!17794 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272784 () Unit!18908)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37076 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18908)

(assert (=> b!599758 (= lt!272784 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272787 (select (arr!17794 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599759 () Bool)

(declare-fun e!342900 () Bool)

(declare-fun e!342895 () Bool)

(assert (=> b!599759 (= e!342900 (not e!342895))))

(declare-fun res!384868 () Bool)

(assert (=> b!599759 (=> res!384868 e!342895)))

(declare-datatypes ((SeekEntryResult!6241 0))(
  ( (MissingZero!6241 (index!27220 (_ BitVec 32))) (Found!6241 (index!27221 (_ BitVec 32))) (Intermediate!6241 (undefined!7053 Bool) (index!27222 (_ BitVec 32)) (x!56049 (_ BitVec 32))) (Undefined!6241) (MissingVacant!6241 (index!27223 (_ BitVec 32))) )
))
(declare-fun lt!272792 () SeekEntryResult!6241)

(assert (=> b!599759 (= res!384868 (not (= lt!272792 (Found!6241 index!984))))))

(declare-fun lt!272795 () Unit!18908)

(assert (=> b!599759 (= lt!272795 e!342896)))

(declare-fun c!67814 () Bool)

(assert (=> b!599759 (= c!67814 (= lt!272792 Undefined!6241))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!272789 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37076 (_ BitVec 32)) SeekEntryResult!6241)

(assert (=> b!599759 (= lt!272792 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272789 lt!272787 mask!3053))))

(declare-fun e!342899 () Bool)

(assert (=> b!599759 e!342899))

(declare-fun res!384860 () Bool)

(assert (=> b!599759 (=> (not res!384860) (not e!342899))))

(declare-fun lt!272796 () (_ BitVec 32))

(declare-fun lt!272793 () SeekEntryResult!6241)

(assert (=> b!599759 (= res!384860 (= lt!272793 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272796 vacantSpotIndex!68 lt!272789 lt!272787 mask!3053)))))

(assert (=> b!599759 (= lt!272793 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272796 vacantSpotIndex!68 (select (arr!17794 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599759 (= lt!272789 (select (store (arr!17794 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272790 () Unit!18908)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37076 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18908)

(assert (=> b!599759 (= lt!272790 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272796 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599759 (= lt!272796 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599760 () Bool)

(declare-fun e!342905 () Bool)

(declare-fun e!342901 () Bool)

(assert (=> b!599760 (= e!342905 e!342901)))

(declare-fun res!384863 () Bool)

(assert (=> b!599760 (=> (not res!384863) (not e!342901))))

(assert (=> b!599760 (= res!384863 (arrayContainsKey!0 lt!272787 (select (arr!17794 a!2986) j!136) j!136))))

(declare-fun b!599761 () Bool)

(declare-fun e!342906 () Bool)

(assert (=> b!599761 (= e!342906 e!342900)))

(declare-fun res!384876 () Bool)

(assert (=> b!599761 (=> (not res!384876) (not e!342900))))

(declare-fun lt!272788 () SeekEntryResult!6241)

(assert (=> b!599761 (= res!384876 (and (= lt!272788 (Found!6241 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17794 a!2986) index!984) (select (arr!17794 a!2986) j!136))) (not (= (select (arr!17794 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599761 (= lt!272788 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17794 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599762 () Bool)

(declare-fun res!384874 () Bool)

(declare-fun e!342897 () Bool)

(assert (=> b!599762 (=> (not res!384874) (not e!342897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37076 (_ BitVec 32)) Bool)

(assert (=> b!599762 (= res!384874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599763 () Bool)

(assert (=> b!599763 (= e!342901 (arrayContainsKey!0 lt!272787 (select (arr!17794 a!2986) j!136) index!984))))

(declare-fun b!599764 () Bool)

(assert (=> b!599764 (= e!342898 e!342897)))

(declare-fun res!384869 () Bool)

(assert (=> b!599764 (=> (not res!384869) (not e!342897))))

(declare-fun lt!272786 () SeekEntryResult!6241)

(assert (=> b!599764 (= res!384869 (or (= lt!272786 (MissingZero!6241 i!1108)) (= lt!272786 (MissingVacant!6241 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37076 (_ BitVec 32)) SeekEntryResult!6241)

(assert (=> b!599764 (= lt!272786 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!599765 () Bool)

(declare-fun res!384862 () Bool)

(assert (=> b!599765 (=> (not res!384862) (not e!342897))))

(assert (=> b!599765 (= res!384862 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17794 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599766 () Bool)

(declare-fun e!342903 () Bool)

(assert (=> b!599766 (= e!342903 e!342905)))

(declare-fun res!384864 () Bool)

(assert (=> b!599766 (=> res!384864 e!342905)))

(declare-fun lt!272794 () (_ BitVec 64))

(assert (=> b!599766 (= res!384864 (or (not (= (select (arr!17794 a!2986) j!136) lt!272789)) (not (= (select (arr!17794 a!2986) j!136) lt!272794)) (bvsge j!136 index!984)))))

(declare-fun res!384867 () Bool)

(assert (=> start!54878 (=> (not res!384867) (not e!342898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54878 (= res!384867 (validMask!0 mask!3053))))

(assert (=> start!54878 e!342898))

(assert (=> start!54878 true))

(declare-fun array_inv!13568 (array!37076) Bool)

(assert (=> start!54878 (array_inv!13568 a!2986)))

(declare-fun b!599767 () Bool)

(declare-fun res!384878 () Bool)

(assert (=> b!599767 (=> (not res!384878) (not e!342898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599767 (= res!384878 (validKeyInArray!0 (select (arr!17794 a!2986) j!136)))))

(declare-fun b!599768 () Bool)

(declare-fun Unit!18911 () Unit!18908)

(assert (=> b!599768 (= e!342896 Unit!18911)))

(declare-fun b!599769 () Bool)

(assert (=> b!599769 (= e!342899 (= lt!272788 lt!272793))))

(declare-fun b!599770 () Bool)

(assert (=> b!599770 (= e!342895 e!342904)))

(declare-fun res!384870 () Bool)

(assert (=> b!599770 (=> res!384870 e!342904)))

(assert (=> b!599770 (= res!384870 (or (not (= (select (arr!17794 a!2986) j!136) lt!272789)) (not (= (select (arr!17794 a!2986) j!136) lt!272794)) (bvsge j!136 index!984)))))

(assert (=> b!599770 e!342903))

(declare-fun res!384865 () Bool)

(assert (=> b!599770 (=> (not res!384865) (not e!342903))))

(assert (=> b!599770 (= res!384865 (= lt!272794 (select (arr!17794 a!2986) j!136)))))

(assert (=> b!599770 (= lt!272794 (select (store (arr!17794 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!599771 () Bool)

(assert (=> b!599771 (= e!342897 e!342906)))

(declare-fun res!384875 () Bool)

(assert (=> b!599771 (=> (not res!384875) (not e!342906))))

(assert (=> b!599771 (= res!384875 (= (select (store (arr!17794 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599771 (= lt!272787 (array!37077 (store (arr!17794 a!2986) i!1108 k0!1786) (size!18158 a!2986)))))

(declare-fun b!599772 () Bool)

(declare-fun res!384861 () Bool)

(assert (=> b!599772 (=> (not res!384861) (not e!342898))))

(assert (=> b!599772 (= res!384861 (validKeyInArray!0 k0!1786))))

(declare-fun b!599773 () Bool)

(declare-fun res!384866 () Bool)

(assert (=> b!599773 (=> (not res!384866) (not e!342897))))

(assert (=> b!599773 (= res!384866 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11885))))

(declare-fun b!599774 () Bool)

(declare-fun res!384859 () Bool)

(assert (=> b!599774 (=> (not res!384859) (not e!342898))))

(assert (=> b!599774 (= res!384859 (and (= (size!18158 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18158 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18158 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!54878 res!384867) b!599774))

(assert (= (and b!599774 res!384859) b!599767))

(assert (= (and b!599767 res!384878) b!599772))

(assert (= (and b!599772 res!384861) b!599753))

(assert (= (and b!599753 res!384872) b!599764))

(assert (= (and b!599764 res!384869) b!599762))

(assert (= (and b!599762 res!384874) b!599773))

(assert (= (and b!599773 res!384866) b!599765))

(assert (= (and b!599765 res!384862) b!599771))

(assert (= (and b!599771 res!384875) b!599761))

(assert (= (and b!599761 res!384876) b!599759))

(assert (= (and b!599759 res!384860) b!599769))

(assert (= (and b!599759 c!67814) b!599757))

(assert (= (and b!599759 (not c!67814)) b!599768))

(assert (= (and b!599759 (not res!384868)) b!599770))

(assert (= (and b!599770 res!384865) b!599766))

(assert (= (and b!599766 (not res!384864)) b!599760))

(assert (= (and b!599760 res!384863) b!599763))

(assert (= (and b!599770 (not res!384870)) b!599758))

(assert (= (and b!599758 (not res!384871)) b!599754))

(assert (= (and b!599754 (not res!384873)) b!599756))

(assert (= (and b!599756 (not res!384877)) b!599755))

(declare-fun m!577039 () Bool)

(assert (=> start!54878 m!577039))

(declare-fun m!577041 () Bool)

(assert (=> start!54878 m!577041))

(declare-fun m!577043 () Bool)

(assert (=> b!599770 m!577043))

(declare-fun m!577045 () Bool)

(assert (=> b!599770 m!577045))

(declare-fun m!577047 () Bool)

(assert (=> b!599770 m!577047))

(assert (=> b!599763 m!577043))

(assert (=> b!599763 m!577043))

(declare-fun m!577049 () Bool)

(assert (=> b!599763 m!577049))

(assert (=> b!599771 m!577045))

(declare-fun m!577051 () Bool)

(assert (=> b!599771 m!577051))

(declare-fun m!577053 () Bool)

(assert (=> b!599755 m!577053))

(declare-fun m!577055 () Bool)

(assert (=> b!599764 m!577055))

(declare-fun m!577057 () Bool)

(assert (=> b!599754 m!577057))

(declare-fun m!577059 () Bool)

(assert (=> b!599765 m!577059))

(declare-fun m!577061 () Bool)

(assert (=> b!599756 m!577061))

(assert (=> b!599766 m!577043))

(declare-fun m!577063 () Bool)

(assert (=> b!599772 m!577063))

(declare-fun m!577065 () Bool)

(assert (=> b!599753 m!577065))

(declare-fun m!577067 () Bool)

(assert (=> b!599762 m!577067))

(assert (=> b!599758 m!577043))

(assert (=> b!599758 m!577043))

(declare-fun m!577069 () Bool)

(assert (=> b!599758 m!577069))

(declare-fun m!577071 () Bool)

(assert (=> b!599758 m!577071))

(declare-fun m!577073 () Bool)

(assert (=> b!599758 m!577073))

(declare-fun m!577075 () Bool)

(assert (=> b!599758 m!577075))

(assert (=> b!599758 m!577043))

(declare-fun m!577077 () Bool)

(assert (=> b!599758 m!577077))

(declare-fun m!577079 () Bool)

(assert (=> b!599758 m!577079))

(assert (=> b!599767 m!577043))

(assert (=> b!599767 m!577043))

(declare-fun m!577081 () Bool)

(assert (=> b!599767 m!577081))

(declare-fun m!577083 () Bool)

(assert (=> b!599773 m!577083))

(declare-fun m!577085 () Bool)

(assert (=> b!599761 m!577085))

(assert (=> b!599761 m!577043))

(assert (=> b!599761 m!577043))

(declare-fun m!577087 () Bool)

(assert (=> b!599761 m!577087))

(assert (=> b!599760 m!577043))

(assert (=> b!599760 m!577043))

(declare-fun m!577089 () Bool)

(assert (=> b!599760 m!577089))

(declare-fun m!577091 () Bool)

(assert (=> b!599759 m!577091))

(declare-fun m!577093 () Bool)

(assert (=> b!599759 m!577093))

(declare-fun m!577095 () Bool)

(assert (=> b!599759 m!577095))

(assert (=> b!599759 m!577043))

(declare-fun m!577097 () Bool)

(assert (=> b!599759 m!577097))

(assert (=> b!599759 m!577043))

(assert (=> b!599759 m!577045))

(declare-fun m!577099 () Bool)

(assert (=> b!599759 m!577099))

(declare-fun m!577101 () Bool)

(assert (=> b!599759 m!577101))

(check-sat (not b!599773) (not b!599763) (not b!599759) (not b!599754) (not b!599753) (not b!599756) (not b!599758) (not b!599772) (not b!599767) (not b!599761) (not b!599764) (not b!599762) (not b!599760) (not b!599755) (not start!54878))
(check-sat)
