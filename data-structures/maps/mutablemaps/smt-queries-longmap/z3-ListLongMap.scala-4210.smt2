; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57722 () Bool)

(assert start!57722)

(declare-fun b!637867 () Bool)

(declare-fun e!365003 () Bool)

(declare-fun e!364996 () Bool)

(assert (=> b!637867 (= e!365003 e!364996)))

(declare-fun res!412905 () Bool)

(assert (=> b!637867 (=> (not res!412905) (not e!364996))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38249 0))(
  ( (array!38250 (arr!18343 (Array (_ BitVec 32) (_ BitVec 64))) (size!18707 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38249)

(assert (=> b!637867 (= res!412905 (= (select (store (arr!18343 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!295006 () array!38249)

(assert (=> b!637867 (= lt!295006 (array!38250 (store (arr!18343 a!2986) i!1108 k0!1786) (size!18707 a!2986)))))

(declare-fun b!637868 () Bool)

(declare-fun e!365005 () Bool)

(declare-fun e!365004 () Bool)

(assert (=> b!637868 (= e!365005 e!365004)))

(declare-fun res!412903 () Bool)

(assert (=> b!637868 (=> res!412903 e!365004)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!295010 () (_ BitVec 64))

(declare-fun lt!295002 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!637868 (= res!412903 (or (not (= (select (arr!18343 a!2986) j!136) lt!295002)) (not (= (select (arr!18343 a!2986) j!136) lt!295010)) (bvsge j!136 index!984)))))

(declare-fun b!637869 () Bool)

(declare-fun res!412913 () Bool)

(declare-fun e!364994 () Bool)

(assert (=> b!637869 (=> (not res!412913) (not e!364994))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!637869 (= res!412913 (and (= (size!18707 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18707 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18707 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637870 () Bool)

(declare-fun e!364997 () Bool)

(declare-datatypes ((SeekEntryResult!6790 0))(
  ( (MissingZero!6790 (index!29473 (_ BitVec 32))) (Found!6790 (index!29474 (_ BitVec 32))) (Intermediate!6790 (undefined!7602 Bool) (index!29475 (_ BitVec 32)) (x!58257 (_ BitVec 32))) (Undefined!6790) (MissingVacant!6790 (index!29476 (_ BitVec 32))) )
))
(declare-fun lt!295008 () SeekEntryResult!6790)

(declare-fun lt!295007 () SeekEntryResult!6790)

(assert (=> b!637870 (= e!364997 (= lt!295008 lt!295007))))

(declare-fun b!637871 () Bool)

(declare-fun res!412898 () Bool)

(assert (=> b!637871 (=> (not res!412898) (not e!364994))))

(declare-fun arrayContainsKey!0 (array!38249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637871 (= res!412898 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637872 () Bool)

(declare-fun e!364999 () Bool)

(assert (=> b!637872 (= e!364996 e!364999)))

(declare-fun res!412901 () Bool)

(assert (=> b!637872 (=> (not res!412901) (not e!364999))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!637872 (= res!412901 (and (= lt!295008 (Found!6790 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18343 a!2986) index!984) (select (arr!18343 a!2986) j!136))) (not (= (select (arr!18343 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38249 (_ BitVec 32)) SeekEntryResult!6790)

(assert (=> b!637872 (= lt!295008 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18343 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637873 () Bool)

(declare-fun res!412912 () Bool)

(assert (=> b!637873 (=> (not res!412912) (not e!365003))))

(assert (=> b!637873 (= res!412912 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18343 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637874 () Bool)

(declare-fun e!365002 () Bool)

(assert (=> b!637874 (= e!365004 e!365002)))

(declare-fun res!412907 () Bool)

(assert (=> b!637874 (=> (not res!412907) (not e!365002))))

(assert (=> b!637874 (= res!412907 (arrayContainsKey!0 lt!295006 (select (arr!18343 a!2986) j!136) j!136))))

(declare-fun b!637875 () Bool)

(declare-fun e!365001 () Bool)

(declare-fun e!364995 () Bool)

(assert (=> b!637875 (= e!365001 e!364995)))

(declare-fun res!412897 () Bool)

(assert (=> b!637875 (=> res!412897 e!364995)))

(assert (=> b!637875 (= res!412897 (or (not (= (select (arr!18343 a!2986) j!136) lt!295002)) (not (= (select (arr!18343 a!2986) j!136) lt!295010)) (bvsge j!136 index!984)))))

(assert (=> b!637875 e!365005))

(declare-fun res!412899 () Bool)

(assert (=> b!637875 (=> (not res!412899) (not e!365005))))

(assert (=> b!637875 (= res!412899 (= lt!295010 (select (arr!18343 a!2986) j!136)))))

(assert (=> b!637875 (= lt!295010 (select (store (arr!18343 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!637876 () Bool)

(declare-fun res!412910 () Bool)

(declare-fun e!365000 () Bool)

(assert (=> b!637876 (=> res!412910 e!365000)))

(declare-datatypes ((List!12437 0))(
  ( (Nil!12434) (Cons!12433 (h!13478 (_ BitVec 64)) (t!18673 List!12437)) )
))
(declare-fun noDuplicate!395 (List!12437) Bool)

(assert (=> b!637876 (= res!412910 (not (noDuplicate!395 Nil!12434)))))

(declare-fun b!637877 () Bool)

(assert (=> b!637877 (= e!364995 e!365000)))

(declare-fun res!412911 () Bool)

(assert (=> b!637877 (=> res!412911 e!365000)))

(assert (=> b!637877 (= res!412911 (or (bvsge (size!18707 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18707 a!2986))))))

(assert (=> b!637877 (arrayContainsKey!0 lt!295006 (select (arr!18343 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21518 0))(
  ( (Unit!21519) )
))
(declare-fun lt!295003 () Unit!21518)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38249 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21518)

(assert (=> b!637877 (= lt!295003 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295006 (select (arr!18343 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun res!412896 () Bool)

(assert (=> start!57722 (=> (not res!412896) (not e!364994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57722 (= res!412896 (validMask!0 mask!3053))))

(assert (=> start!57722 e!364994))

(assert (=> start!57722 true))

(declare-fun array_inv!14117 (array!38249) Bool)

(assert (=> start!57722 (array_inv!14117 a!2986)))

(declare-fun b!637878 () Bool)

(declare-fun res!412906 () Bool)

(assert (=> b!637878 (=> (not res!412906) (not e!364994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637878 (= res!412906 (validKeyInArray!0 k0!1786))))

(declare-fun b!637879 () Bool)

(assert (=> b!637879 (= e!365000 true)))

(declare-fun lt!295009 () Bool)

(declare-fun contains!3120 (List!12437 (_ BitVec 64)) Bool)

(assert (=> b!637879 (= lt!295009 (contains!3120 Nil!12434 k0!1786))))

(declare-fun b!637880 () Bool)

(declare-fun res!412902 () Bool)

(assert (=> b!637880 (=> res!412902 e!365000)))

(assert (=> b!637880 (= res!412902 (contains!3120 Nil!12434 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637881 () Bool)

(assert (=> b!637881 (= e!365002 (arrayContainsKey!0 lt!295006 (select (arr!18343 a!2986) j!136) index!984))))

(declare-fun b!637882 () Bool)

(declare-fun res!412904 () Bool)

(assert (=> b!637882 (=> res!412904 e!365000)))

(assert (=> b!637882 (= res!412904 (contains!3120 Nil!12434 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637883 () Bool)

(declare-fun res!412893 () Bool)

(assert (=> b!637883 (=> (not res!412893) (not e!365003))))

(declare-fun arrayNoDuplicates!0 (array!38249 (_ BitVec 32) List!12437) Bool)

(assert (=> b!637883 (= res!412893 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12434))))

(declare-fun b!637884 () Bool)

(declare-fun res!412895 () Bool)

(assert (=> b!637884 (=> (not res!412895) (not e!364994))))

(assert (=> b!637884 (= res!412895 (validKeyInArray!0 (select (arr!18343 a!2986) j!136)))))

(declare-fun b!637885 () Bool)

(declare-fun e!364993 () Unit!21518)

(declare-fun Unit!21520 () Unit!21518)

(assert (=> b!637885 (= e!364993 Unit!21520)))

(declare-fun b!637886 () Bool)

(assert (=> b!637886 (= e!364994 e!365003)))

(declare-fun res!412909 () Bool)

(assert (=> b!637886 (=> (not res!412909) (not e!365003))))

(declare-fun lt!295004 () SeekEntryResult!6790)

(assert (=> b!637886 (= res!412909 (or (= lt!295004 (MissingZero!6790 i!1108)) (= lt!295004 (MissingVacant!6790 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38249 (_ BitVec 32)) SeekEntryResult!6790)

(assert (=> b!637886 (= lt!295004 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!637887 () Bool)

(assert (=> b!637887 (= e!364999 (not e!365001))))

(declare-fun res!412894 () Bool)

(assert (=> b!637887 (=> res!412894 e!365001)))

(declare-fun lt!295005 () SeekEntryResult!6790)

(assert (=> b!637887 (= res!412894 (not (= lt!295005 (Found!6790 index!984))))))

(declare-fun lt!295011 () Unit!21518)

(assert (=> b!637887 (= lt!295011 e!364993)))

(declare-fun c!72854 () Bool)

(assert (=> b!637887 (= c!72854 (= lt!295005 Undefined!6790))))

(assert (=> b!637887 (= lt!295005 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295002 lt!295006 mask!3053))))

(assert (=> b!637887 e!364997))

(declare-fun res!412900 () Bool)

(assert (=> b!637887 (=> (not res!412900) (not e!364997))))

(declare-fun lt!295001 () (_ BitVec 32))

(assert (=> b!637887 (= res!412900 (= lt!295007 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295001 vacantSpotIndex!68 lt!295002 lt!295006 mask!3053)))))

(assert (=> b!637887 (= lt!295007 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295001 vacantSpotIndex!68 (select (arr!18343 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637887 (= lt!295002 (select (store (arr!18343 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295000 () Unit!21518)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38249 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21518)

(assert (=> b!637887 (= lt!295000 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295001 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637887 (= lt!295001 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637888 () Bool)

(declare-fun res!412908 () Bool)

(assert (=> b!637888 (=> (not res!412908) (not e!365003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38249 (_ BitVec 32)) Bool)

(assert (=> b!637888 (= res!412908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637889 () Bool)

(declare-fun Unit!21521 () Unit!21518)

(assert (=> b!637889 (= e!364993 Unit!21521)))

(assert (=> b!637889 false))

(assert (= (and start!57722 res!412896) b!637869))

(assert (= (and b!637869 res!412913) b!637884))

(assert (= (and b!637884 res!412895) b!637878))

(assert (= (and b!637878 res!412906) b!637871))

(assert (= (and b!637871 res!412898) b!637886))

(assert (= (and b!637886 res!412909) b!637888))

(assert (= (and b!637888 res!412908) b!637883))

(assert (= (and b!637883 res!412893) b!637873))

(assert (= (and b!637873 res!412912) b!637867))

(assert (= (and b!637867 res!412905) b!637872))

(assert (= (and b!637872 res!412901) b!637887))

(assert (= (and b!637887 res!412900) b!637870))

(assert (= (and b!637887 c!72854) b!637889))

(assert (= (and b!637887 (not c!72854)) b!637885))

(assert (= (and b!637887 (not res!412894)) b!637875))

(assert (= (and b!637875 res!412899) b!637868))

(assert (= (and b!637868 (not res!412903)) b!637874))

(assert (= (and b!637874 res!412907) b!637881))

(assert (= (and b!637875 (not res!412897)) b!637877))

(assert (= (and b!637877 (not res!412911)) b!637876))

(assert (= (and b!637876 (not res!412910)) b!637882))

(assert (= (and b!637882 (not res!412904)) b!637880))

(assert (= (and b!637880 (not res!412902)) b!637879))

(declare-fun m!611917 () Bool)

(assert (=> b!637874 m!611917))

(assert (=> b!637874 m!611917))

(declare-fun m!611919 () Bool)

(assert (=> b!637874 m!611919))

(declare-fun m!611921 () Bool)

(assert (=> b!637880 m!611921))

(assert (=> b!637881 m!611917))

(assert (=> b!637881 m!611917))

(declare-fun m!611923 () Bool)

(assert (=> b!637881 m!611923))

(declare-fun m!611925 () Bool)

(assert (=> start!57722 m!611925))

(declare-fun m!611927 () Bool)

(assert (=> start!57722 m!611927))

(assert (=> b!637877 m!611917))

(assert (=> b!637877 m!611917))

(declare-fun m!611929 () Bool)

(assert (=> b!637877 m!611929))

(assert (=> b!637877 m!611917))

(declare-fun m!611931 () Bool)

(assert (=> b!637877 m!611931))

(declare-fun m!611933 () Bool)

(assert (=> b!637871 m!611933))

(declare-fun m!611935 () Bool)

(assert (=> b!637882 m!611935))

(declare-fun m!611937 () Bool)

(assert (=> b!637873 m!611937))

(declare-fun m!611939 () Bool)

(assert (=> b!637888 m!611939))

(declare-fun m!611941 () Bool)

(assert (=> b!637886 m!611941))

(declare-fun m!611943 () Bool)

(assert (=> b!637878 m!611943))

(assert (=> b!637875 m!611917))

(declare-fun m!611945 () Bool)

(assert (=> b!637875 m!611945))

(declare-fun m!611947 () Bool)

(assert (=> b!637875 m!611947))

(declare-fun m!611949 () Bool)

(assert (=> b!637887 m!611949))

(declare-fun m!611951 () Bool)

(assert (=> b!637887 m!611951))

(assert (=> b!637887 m!611917))

(declare-fun m!611953 () Bool)

(assert (=> b!637887 m!611953))

(assert (=> b!637887 m!611945))

(declare-fun m!611955 () Bool)

(assert (=> b!637887 m!611955))

(declare-fun m!611957 () Bool)

(assert (=> b!637887 m!611957))

(assert (=> b!637887 m!611917))

(declare-fun m!611959 () Bool)

(assert (=> b!637887 m!611959))

(assert (=> b!637867 m!611945))

(declare-fun m!611961 () Bool)

(assert (=> b!637867 m!611961))

(declare-fun m!611963 () Bool)

(assert (=> b!637872 m!611963))

(assert (=> b!637872 m!611917))

(assert (=> b!637872 m!611917))

(declare-fun m!611965 () Bool)

(assert (=> b!637872 m!611965))

(declare-fun m!611967 () Bool)

(assert (=> b!637883 m!611967))

(assert (=> b!637868 m!611917))

(declare-fun m!611969 () Bool)

(assert (=> b!637879 m!611969))

(assert (=> b!637884 m!611917))

(assert (=> b!637884 m!611917))

(declare-fun m!611971 () Bool)

(assert (=> b!637884 m!611971))

(declare-fun m!611973 () Bool)

(assert (=> b!637876 m!611973))

(check-sat (not b!637886) (not b!637880) (not b!637878) (not b!637879) (not b!637871) (not start!57722) (not b!637881) (not b!637883) (not b!637874) (not b!637877) (not b!637882) (not b!637887) (not b!637876) (not b!637884) (not b!637872) (not b!637888))
(check-sat)
