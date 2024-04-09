; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56218 () Bool)

(assert start!56218)

(declare-fun b!622839 () Bool)

(declare-fun e!357260 () Bool)

(assert (=> b!622839 (= e!357260 (not true))))

(declare-datatypes ((Unit!20970 0))(
  ( (Unit!20971) )
))
(declare-fun lt!288863 () Unit!20970)

(declare-fun e!357252 () Unit!20970)

(assert (=> b!622839 (= lt!288863 e!357252)))

(declare-fun c!71039 () Bool)

(declare-datatypes ((SeekEntryResult!6515 0))(
  ( (MissingZero!6515 (index!28343 (_ BitVec 32))) (Found!6515 (index!28344 (_ BitVec 32))) (Intermediate!6515 (undefined!7327 Bool) (index!28345 (_ BitVec 32)) (x!57132 (_ BitVec 32))) (Undefined!6515) (MissingVacant!6515 (index!28346 (_ BitVec 32))) )
))
(declare-fun lt!288869 () SeekEntryResult!6515)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!622839 (= c!71039 (= lt!288869 (Found!6515 index!984)))))

(declare-fun lt!288872 () Unit!20970)

(declare-fun e!357262 () Unit!20970)

(assert (=> b!622839 (= lt!288872 e!357262)))

(declare-fun c!71036 () Bool)

(assert (=> b!622839 (= c!71036 (= lt!288869 Undefined!6515))))

(declare-datatypes ((array!37651 0))(
  ( (array!37652 (arr!18068 (Array (_ BitVec 32) (_ BitVec 64))) (size!18432 (_ BitVec 32))) )
))
(declare-fun lt!288857 () array!37651)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!288876 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37651 (_ BitVec 32)) SeekEntryResult!6515)

(assert (=> b!622839 (= lt!288869 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288876 lt!288857 mask!3053))))

(declare-fun e!357258 () Bool)

(assert (=> b!622839 e!357258))

(declare-fun res!401516 () Bool)

(assert (=> b!622839 (=> (not res!401516) (not e!357258))))

(declare-fun lt!288874 () (_ BitVec 32))

(declare-fun lt!288867 () SeekEntryResult!6515)

(assert (=> b!622839 (= res!401516 (= lt!288867 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288874 vacantSpotIndex!68 lt!288876 lt!288857 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37651)

(assert (=> b!622839 (= lt!288867 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288874 vacantSpotIndex!68 (select (arr!18068 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!622839 (= lt!288876 (select (store (arr!18068 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288870 () Unit!20970)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20970)

(assert (=> b!622839 (= lt!288870 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288874 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622839 (= lt!288874 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622840 () Bool)

(assert (=> b!622840 false))

(declare-fun lt!288858 () Unit!20970)

(declare-datatypes ((List!12162 0))(
  ( (Nil!12159) (Cons!12158 (h!13203 (_ BitVec 64)) (t!18398 List!12162)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37651 (_ BitVec 64) (_ BitVec 32) List!12162) Unit!20970)

(assert (=> b!622840 (= lt!288858 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288857 (select (arr!18068 a!2986) j!136) index!984 Nil!12159))))

(declare-fun arrayNoDuplicates!0 (array!37651 (_ BitVec 32) List!12162) Bool)

(assert (=> b!622840 (arrayNoDuplicates!0 lt!288857 index!984 Nil!12159)))

(declare-fun lt!288873 () Unit!20970)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37651 (_ BitVec 32) (_ BitVec 32)) Unit!20970)

(assert (=> b!622840 (= lt!288873 (lemmaNoDuplicateFromThenFromBigger!0 lt!288857 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622840 (arrayNoDuplicates!0 lt!288857 #b00000000000000000000000000000000 Nil!12159)))

(declare-fun lt!288871 () Unit!20970)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37651 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12162) Unit!20970)

(assert (=> b!622840 (= lt!288871 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12159))))

(declare-fun arrayContainsKey!0 (array!37651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622840 (arrayContainsKey!0 lt!288857 (select (arr!18068 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288866 () Unit!20970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37651 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20970)

(assert (=> b!622840 (= lt!288866 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288857 (select (arr!18068 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!357256 () Bool)

(assert (=> b!622840 e!357256))

(declare-fun res!401510 () Bool)

(assert (=> b!622840 (=> (not res!401510) (not e!357256))))

(assert (=> b!622840 (= res!401510 (arrayContainsKey!0 lt!288857 (select (arr!18068 a!2986) j!136) j!136))))

(declare-fun e!357264 () Unit!20970)

(declare-fun Unit!20972 () Unit!20970)

(assert (=> b!622840 (= e!357264 Unit!20972)))

(declare-fun b!622841 () Bool)

(declare-fun res!401515 () Bool)

(declare-fun e!357263 () Bool)

(assert (=> b!622841 (=> (not res!401515) (not e!357263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622841 (= res!401515 (validKeyInArray!0 (select (arr!18068 a!2986) j!136)))))

(declare-fun b!622842 () Bool)

(declare-fun res!401501 () Bool)

(assert (=> b!622842 (= res!401501 (bvsge j!136 index!984))))

(declare-fun e!357253 () Bool)

(assert (=> b!622842 (=> res!401501 e!357253)))

(declare-fun e!357255 () Bool)

(assert (=> b!622842 (= e!357255 e!357253)))

(declare-fun res!401513 () Bool)

(assert (=> start!56218 (=> (not res!401513) (not e!357263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56218 (= res!401513 (validMask!0 mask!3053))))

(assert (=> start!56218 e!357263))

(assert (=> start!56218 true))

(declare-fun array_inv!13842 (array!37651) Bool)

(assert (=> start!56218 (array_inv!13842 a!2986)))

(declare-fun b!622843 () Bool)

(declare-fun res!401507 () Bool)

(assert (=> b!622843 (=> (not res!401507) (not e!357263))))

(assert (=> b!622843 (= res!401507 (validKeyInArray!0 k!1786))))

(declare-fun b!622844 () Bool)

(declare-fun res!401503 () Bool)

(assert (=> b!622844 (=> (not res!401503) (not e!357263))))

(assert (=> b!622844 (= res!401503 (and (= (size!18432 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18432 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18432 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622845 () Bool)

(declare-fun Unit!20973 () Unit!20970)

(assert (=> b!622845 (= e!357262 Unit!20973)))

(assert (=> b!622845 false))

(declare-fun b!622846 () Bool)

(declare-fun e!357261 () Bool)

(assert (=> b!622846 (= e!357263 e!357261)))

(declare-fun res!401512 () Bool)

(assert (=> b!622846 (=> (not res!401512) (not e!357261))))

(declare-fun lt!288859 () SeekEntryResult!6515)

(assert (=> b!622846 (= res!401512 (or (= lt!288859 (MissingZero!6515 i!1108)) (= lt!288859 (MissingVacant!6515 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37651 (_ BitVec 32)) SeekEntryResult!6515)

(assert (=> b!622846 (= lt!288859 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!622847 () Bool)

(declare-fun res!401504 () Bool)

(assert (=> b!622847 (=> (not res!401504) (not e!357261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37651 (_ BitVec 32)) Bool)

(assert (=> b!622847 (= res!401504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622848 () Bool)

(declare-fun e!357254 () Bool)

(assert (=> b!622848 (= e!357254 e!357260)))

(declare-fun res!401511 () Bool)

(assert (=> b!622848 (=> (not res!401511) (not e!357260))))

(declare-fun lt!288862 () SeekEntryResult!6515)

(assert (=> b!622848 (= res!401511 (and (= lt!288862 (Found!6515 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18068 a!2986) index!984) (select (arr!18068 a!2986) j!136))) (not (= (select (arr!18068 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!622848 (= lt!288862 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18068 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622849 () Bool)

(assert (=> b!622849 (= e!357258 (= lt!288862 lt!288867))))

(declare-fun b!622850 () Bool)

(declare-fun Unit!20974 () Unit!20970)

(assert (=> b!622850 (= e!357252 Unit!20974)))

(declare-fun res!401502 () Bool)

(assert (=> b!622850 (= res!401502 (= (select (store (arr!18068 a!2986) i!1108 k!1786) index!984) (select (arr!18068 a!2986) j!136)))))

(assert (=> b!622850 (=> (not res!401502) (not e!357255))))

(assert (=> b!622850 e!357255))

(declare-fun c!71037 () Bool)

(assert (=> b!622850 (= c!71037 (bvslt j!136 index!984))))

(declare-fun lt!288861 () Unit!20970)

(declare-fun e!357257 () Unit!20970)

(assert (=> b!622850 (= lt!288861 e!357257)))

(declare-fun c!71038 () Bool)

(assert (=> b!622850 (= c!71038 (bvslt index!984 j!136))))

(declare-fun lt!288864 () Unit!20970)

(assert (=> b!622850 (= lt!288864 e!357264)))

(assert (=> b!622850 false))

(declare-fun b!622851 () Bool)

(declare-fun Unit!20975 () Unit!20970)

(assert (=> b!622851 (= e!357264 Unit!20975)))

(declare-fun b!622852 () Bool)

(declare-fun res!401508 () Bool)

(assert (=> b!622852 (= res!401508 (arrayContainsKey!0 lt!288857 (select (arr!18068 a!2986) j!136) j!136))))

(declare-fun e!357259 () Bool)

(assert (=> b!622852 (=> (not res!401508) (not e!357259))))

(assert (=> b!622852 (= e!357253 e!357259)))

(declare-fun b!622853 () Bool)

(assert (=> b!622853 (= e!357261 e!357254)))

(declare-fun res!401514 () Bool)

(assert (=> b!622853 (=> (not res!401514) (not e!357254))))

(assert (=> b!622853 (= res!401514 (= (select (store (arr!18068 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622853 (= lt!288857 (array!37652 (store (arr!18068 a!2986) i!1108 k!1786) (size!18432 a!2986)))))

(declare-fun b!622854 () Bool)

(assert (=> b!622854 (= e!357256 (arrayContainsKey!0 lt!288857 (select (arr!18068 a!2986) j!136) index!984))))

(declare-fun b!622855 () Bool)

(declare-fun res!401506 () Bool)

(assert (=> b!622855 (=> (not res!401506) (not e!357261))))

(assert (=> b!622855 (= res!401506 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12159))))

(declare-fun b!622856 () Bool)

(assert (=> b!622856 (= e!357259 (arrayContainsKey!0 lt!288857 (select (arr!18068 a!2986) j!136) index!984))))

(declare-fun b!622857 () Bool)

(declare-fun Unit!20976 () Unit!20970)

(assert (=> b!622857 (= e!357252 Unit!20976)))

(declare-fun b!622858 () Bool)

(assert (=> b!622858 false))

(declare-fun lt!288875 () Unit!20970)

(assert (=> b!622858 (= lt!288875 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288857 (select (arr!18068 a!2986) j!136) j!136 Nil!12159))))

(assert (=> b!622858 (arrayNoDuplicates!0 lt!288857 j!136 Nil!12159)))

(declare-fun lt!288868 () Unit!20970)

(assert (=> b!622858 (= lt!288868 (lemmaNoDuplicateFromThenFromBigger!0 lt!288857 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622858 (arrayNoDuplicates!0 lt!288857 #b00000000000000000000000000000000 Nil!12159)))

(declare-fun lt!288865 () Unit!20970)

(assert (=> b!622858 (= lt!288865 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12159))))

(assert (=> b!622858 (arrayContainsKey!0 lt!288857 (select (arr!18068 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288860 () Unit!20970)

(assert (=> b!622858 (= lt!288860 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288857 (select (arr!18068 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20977 () Unit!20970)

(assert (=> b!622858 (= e!357257 Unit!20977)))

(declare-fun b!622859 () Bool)

(declare-fun res!401509 () Bool)

(assert (=> b!622859 (=> (not res!401509) (not e!357263))))

(assert (=> b!622859 (= res!401509 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622860 () Bool)

(declare-fun Unit!20978 () Unit!20970)

(assert (=> b!622860 (= e!357262 Unit!20978)))

(declare-fun b!622861 () Bool)

(declare-fun res!401505 () Bool)

(assert (=> b!622861 (=> (not res!401505) (not e!357261))))

(assert (=> b!622861 (= res!401505 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18068 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622862 () Bool)

(declare-fun Unit!20979 () Unit!20970)

(assert (=> b!622862 (= e!357257 Unit!20979)))

(assert (= (and start!56218 res!401513) b!622844))

(assert (= (and b!622844 res!401503) b!622841))

(assert (= (and b!622841 res!401515) b!622843))

(assert (= (and b!622843 res!401507) b!622859))

(assert (= (and b!622859 res!401509) b!622846))

(assert (= (and b!622846 res!401512) b!622847))

(assert (= (and b!622847 res!401504) b!622855))

(assert (= (and b!622855 res!401506) b!622861))

(assert (= (and b!622861 res!401505) b!622853))

(assert (= (and b!622853 res!401514) b!622848))

(assert (= (and b!622848 res!401511) b!622839))

(assert (= (and b!622839 res!401516) b!622849))

(assert (= (and b!622839 c!71036) b!622845))

(assert (= (and b!622839 (not c!71036)) b!622860))

(assert (= (and b!622839 c!71039) b!622850))

(assert (= (and b!622839 (not c!71039)) b!622857))

(assert (= (and b!622850 res!401502) b!622842))

(assert (= (and b!622842 (not res!401501)) b!622852))

(assert (= (and b!622852 res!401508) b!622856))

(assert (= (and b!622850 c!71037) b!622858))

(assert (= (and b!622850 (not c!71037)) b!622862))

(assert (= (and b!622850 c!71038) b!622840))

(assert (= (and b!622850 (not c!71038)) b!622851))

(assert (= (and b!622840 res!401510) b!622854))

(declare-fun m!598739 () Bool)

(assert (=> b!622839 m!598739))

(declare-fun m!598741 () Bool)

(assert (=> b!622839 m!598741))

(declare-fun m!598743 () Bool)

(assert (=> b!622839 m!598743))

(declare-fun m!598745 () Bool)

(assert (=> b!622839 m!598745))

(declare-fun m!598747 () Bool)

(assert (=> b!622839 m!598747))

(declare-fun m!598749 () Bool)

(assert (=> b!622839 m!598749))

(declare-fun m!598751 () Bool)

(assert (=> b!622839 m!598751))

(assert (=> b!622839 m!598741))

(declare-fun m!598753 () Bool)

(assert (=> b!622839 m!598753))

(declare-fun m!598755 () Bool)

(assert (=> b!622855 m!598755))

(declare-fun m!598757 () Bool)

(assert (=> b!622840 m!598757))

(assert (=> b!622840 m!598741))

(declare-fun m!598759 () Bool)

(assert (=> b!622840 m!598759))

(assert (=> b!622840 m!598741))

(declare-fun m!598761 () Bool)

(assert (=> b!622840 m!598761))

(assert (=> b!622840 m!598741))

(declare-fun m!598763 () Bool)

(assert (=> b!622840 m!598763))

(declare-fun m!598765 () Bool)

(assert (=> b!622840 m!598765))

(assert (=> b!622840 m!598741))

(declare-fun m!598767 () Bool)

(assert (=> b!622840 m!598767))

(assert (=> b!622840 m!598741))

(declare-fun m!598769 () Bool)

(assert (=> b!622840 m!598769))

(declare-fun m!598771 () Bool)

(assert (=> b!622840 m!598771))

(declare-fun m!598773 () Bool)

(assert (=> b!622859 m!598773))

(assert (=> b!622853 m!598751))

(declare-fun m!598775 () Bool)

(assert (=> b!622853 m!598775))

(declare-fun m!598777 () Bool)

(assert (=> b!622848 m!598777))

(assert (=> b!622848 m!598741))

(assert (=> b!622848 m!598741))

(declare-fun m!598779 () Bool)

(assert (=> b!622848 m!598779))

(assert (=> b!622852 m!598741))

(assert (=> b!622852 m!598741))

(assert (=> b!622852 m!598761))

(assert (=> b!622858 m!598741))

(declare-fun m!598781 () Bool)

(assert (=> b!622858 m!598781))

(assert (=> b!622858 m!598741))

(declare-fun m!598783 () Bool)

(assert (=> b!622858 m!598783))

(declare-fun m!598785 () Bool)

(assert (=> b!622858 m!598785))

(assert (=> b!622858 m!598771))

(declare-fun m!598787 () Bool)

(assert (=> b!622858 m!598787))

(assert (=> b!622858 m!598765))

(assert (=> b!622858 m!598741))

(declare-fun m!598789 () Bool)

(assert (=> b!622858 m!598789))

(assert (=> b!622858 m!598741))

(declare-fun m!598791 () Bool)

(assert (=> start!56218 m!598791))

(declare-fun m!598793 () Bool)

(assert (=> start!56218 m!598793))

(assert (=> b!622841 m!598741))

(assert (=> b!622841 m!598741))

(declare-fun m!598795 () Bool)

(assert (=> b!622841 m!598795))

(declare-fun m!598797 () Bool)

(assert (=> b!622847 m!598797))

(assert (=> b!622854 m!598741))

(assert (=> b!622854 m!598741))

(declare-fun m!598799 () Bool)

(assert (=> b!622854 m!598799))

(declare-fun m!598801 () Bool)

(assert (=> b!622846 m!598801))

(assert (=> b!622856 m!598741))

(assert (=> b!622856 m!598741))

(assert (=> b!622856 m!598799))

(assert (=> b!622850 m!598751))

(declare-fun m!598803 () Bool)

(assert (=> b!622850 m!598803))

(assert (=> b!622850 m!598741))

(declare-fun m!598805 () Bool)

(assert (=> b!622861 m!598805))

(declare-fun m!598807 () Bool)

(assert (=> b!622843 m!598807))

(push 1)

