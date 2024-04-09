; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55116 () Bool)

(assert start!55116)

(declare-fun b!602692 () Bool)

(declare-fun res!387071 () Bool)

(declare-fun e!344744 () Bool)

(assert (=> b!602692 (=> (not res!387071) (not e!344744))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602692 (= res!387071 (validKeyInArray!0 k!1786))))

(declare-fun b!602694 () Bool)

(declare-fun e!344740 () Bool)

(declare-fun e!344748 () Bool)

(assert (=> b!602694 (= e!344740 e!344748)))

(declare-fun res!387062 () Bool)

(assert (=> b!602694 (=> (not res!387062) (not e!344748))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6276 0))(
  ( (MissingZero!6276 (index!27366 (_ BitVec 32))) (Found!6276 (index!27367 (_ BitVec 32))) (Intermediate!6276 (undefined!7088 Bool) (index!27368 (_ BitVec 32)) (x!56198 (_ BitVec 32))) (Undefined!6276) (MissingVacant!6276 (index!27369 (_ BitVec 32))) )
))
(declare-fun lt!274604 () SeekEntryResult!6276)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37152 0))(
  ( (array!37153 (arr!17829 (Array (_ BitVec 32) (_ BitVec 64))) (size!18193 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37152)

(assert (=> b!602694 (= res!387062 (and (= lt!274604 (Found!6276 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17829 a!2986) index!984) (select (arr!17829 a!2986) j!136))) (not (= (select (arr!17829 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37152 (_ BitVec 32)) SeekEntryResult!6276)

(assert (=> b!602694 (= lt!274604 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17829 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602695 () Bool)

(declare-fun e!344741 () Bool)

(assert (=> b!602695 (= e!344741 e!344740)))

(declare-fun res!387057 () Bool)

(assert (=> b!602695 (=> (not res!387057) (not e!344740))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!602695 (= res!387057 (= (select (store (arr!17829 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!274606 () array!37152)

(assert (=> b!602695 (= lt!274606 (array!37153 (store (arr!17829 a!2986) i!1108 k!1786) (size!18193 a!2986)))))

(declare-fun b!602696 () Bool)

(declare-fun e!344743 () Bool)

(assert (=> b!602696 (= e!344748 (not e!344743))))

(declare-fun res!387072 () Bool)

(assert (=> b!602696 (=> res!387072 e!344743)))

(declare-fun lt!274598 () SeekEntryResult!6276)

(assert (=> b!602696 (= res!387072 (not (= lt!274598 (Found!6276 index!984))))))

(declare-datatypes ((Unit!19084 0))(
  ( (Unit!19085) )
))
(declare-fun lt!274610 () Unit!19084)

(declare-fun e!344738 () Unit!19084)

(assert (=> b!602696 (= lt!274610 e!344738)))

(declare-fun c!68186 () Bool)

(assert (=> b!602696 (= c!68186 (= lt!274598 Undefined!6276))))

(declare-fun lt!274608 () (_ BitVec 64))

(assert (=> b!602696 (= lt!274598 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274608 lt!274606 mask!3053))))

(declare-fun e!344736 () Bool)

(assert (=> b!602696 e!344736))

(declare-fun res!387070 () Bool)

(assert (=> b!602696 (=> (not res!387070) (not e!344736))))

(declare-fun lt!274602 () SeekEntryResult!6276)

(declare-fun lt!274600 () (_ BitVec 32))

(assert (=> b!602696 (= res!387070 (= lt!274602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274600 vacantSpotIndex!68 lt!274608 lt!274606 mask!3053)))))

(assert (=> b!602696 (= lt!274602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274600 vacantSpotIndex!68 (select (arr!17829 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602696 (= lt!274608 (select (store (arr!17829 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274601 () Unit!19084)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37152 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19084)

(assert (=> b!602696 (= lt!274601 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274600 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602696 (= lt!274600 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602697 () Bool)

(declare-fun res!387065 () Bool)

(assert (=> b!602697 (=> (not res!387065) (not e!344741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37152 (_ BitVec 32)) Bool)

(assert (=> b!602697 (= res!387065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602698 () Bool)

(declare-fun e!344749 () Bool)

(assert (=> b!602698 (= e!344749 true)))

(declare-fun e!344746 () Bool)

(assert (=> b!602698 e!344746))

(declare-fun res!387066 () Bool)

(assert (=> b!602698 (=> (not res!387066) (not e!344746))))

(declare-fun arrayContainsKey!0 (array!37152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602698 (= res!387066 (arrayContainsKey!0 lt!274606 (select (arr!17829 a!2986) j!136) j!136))))

(declare-fun e!344747 () Bool)

(declare-fun b!602699 () Bool)

(assert (=> b!602699 (= e!344747 (arrayContainsKey!0 lt!274606 (select (arr!17829 a!2986) j!136) index!984))))

(declare-fun b!602700 () Bool)

(declare-fun res!387074 () Bool)

(assert (=> b!602700 (=> (not res!387074) (not e!344744))))

(assert (=> b!602700 (= res!387074 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!387059 () Bool)

(assert (=> start!55116 (=> (not res!387059) (not e!344744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55116 (= res!387059 (validMask!0 mask!3053))))

(assert (=> start!55116 e!344744))

(assert (=> start!55116 true))

(declare-fun array_inv!13603 (array!37152) Bool)

(assert (=> start!55116 (array_inv!13603 a!2986)))

(declare-fun b!602693 () Bool)

(declare-fun res!387073 () Bool)

(assert (=> b!602693 (=> (not res!387073) (not e!344741))))

(assert (=> b!602693 (= res!387073 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17829 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602701 () Bool)

(declare-fun e!344737 () Bool)

(assert (=> b!602701 (= e!344737 e!344749)))

(declare-fun res!387069 () Bool)

(assert (=> b!602701 (=> res!387069 e!344749)))

(assert (=> b!602701 (= res!387069 (bvsge index!984 j!136))))

(declare-fun lt!274603 () Unit!19084)

(declare-fun e!344742 () Unit!19084)

(assert (=> b!602701 (= lt!274603 e!344742)))

(declare-fun c!68185 () Bool)

(assert (=> b!602701 (= c!68185 (bvslt j!136 index!984))))

(declare-fun b!602702 () Bool)

(declare-fun res!387058 () Bool)

(assert (=> b!602702 (=> (not res!387058) (not e!344744))))

(assert (=> b!602702 (= res!387058 (and (= (size!18193 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18193 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18193 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602703 () Bool)

(assert (=> b!602703 (= e!344743 e!344737)))

(declare-fun res!387067 () Bool)

(assert (=> b!602703 (=> res!387067 e!344737)))

(declare-fun lt!274599 () (_ BitVec 64))

(assert (=> b!602703 (= res!387067 (or (not (= (select (arr!17829 a!2986) j!136) lt!274608)) (not (= (select (arr!17829 a!2986) j!136) lt!274599))))))

(declare-fun e!344745 () Bool)

(assert (=> b!602703 e!344745))

(declare-fun res!387060 () Bool)

(assert (=> b!602703 (=> (not res!387060) (not e!344745))))

(assert (=> b!602703 (= res!387060 (= lt!274599 (select (arr!17829 a!2986) j!136)))))

(assert (=> b!602703 (= lt!274599 (select (store (arr!17829 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!602704 () Bool)

(declare-fun Unit!19086 () Unit!19084)

(assert (=> b!602704 (= e!344742 Unit!19086)))

(declare-fun lt!274605 () Unit!19084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37152 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19084)

(assert (=> b!602704 (= lt!274605 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274606 (select (arr!17829 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602704 (arrayContainsKey!0 lt!274606 (select (arr!17829 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274597 () Unit!19084)

(declare-datatypes ((List!11923 0))(
  ( (Nil!11920) (Cons!11919 (h!12964 (_ BitVec 64)) (t!18159 List!11923)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37152 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11923) Unit!19084)

(assert (=> b!602704 (= lt!274597 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11920))))

(declare-fun arrayNoDuplicates!0 (array!37152 (_ BitVec 32) List!11923) Bool)

(assert (=> b!602704 (arrayNoDuplicates!0 lt!274606 #b00000000000000000000000000000000 Nil!11920)))

(declare-fun lt!274607 () Unit!19084)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37152 (_ BitVec 32) (_ BitVec 32)) Unit!19084)

(assert (=> b!602704 (= lt!274607 (lemmaNoDuplicateFromThenFromBigger!0 lt!274606 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602704 (arrayNoDuplicates!0 lt!274606 j!136 Nil!11920)))

(declare-fun lt!274609 () Unit!19084)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37152 (_ BitVec 64) (_ BitVec 32) List!11923) Unit!19084)

(assert (=> b!602704 (= lt!274609 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274606 (select (arr!17829 a!2986) j!136) j!136 Nil!11920))))

(assert (=> b!602704 false))

(declare-fun b!602705 () Bool)

(assert (=> b!602705 (= e!344746 (arrayContainsKey!0 lt!274606 (select (arr!17829 a!2986) j!136) index!984))))

(declare-fun b!602706 () Bool)

(declare-fun Unit!19087 () Unit!19084)

(assert (=> b!602706 (= e!344742 Unit!19087)))

(declare-fun b!602707 () Bool)

(declare-fun res!387068 () Bool)

(assert (=> b!602707 (=> (not res!387068) (not e!344744))))

(assert (=> b!602707 (= res!387068 (validKeyInArray!0 (select (arr!17829 a!2986) j!136)))))

(declare-fun b!602708 () Bool)

(declare-fun e!344739 () Bool)

(assert (=> b!602708 (= e!344745 e!344739)))

(declare-fun res!387061 () Bool)

(assert (=> b!602708 (=> res!387061 e!344739)))

(assert (=> b!602708 (= res!387061 (or (not (= (select (arr!17829 a!2986) j!136) lt!274608)) (not (= (select (arr!17829 a!2986) j!136) lt!274599)) (bvsge j!136 index!984)))))

(declare-fun b!602709 () Bool)

(assert (=> b!602709 (= e!344736 (= lt!274604 lt!274602))))

(declare-fun b!602710 () Bool)

(declare-fun res!387056 () Bool)

(assert (=> b!602710 (=> (not res!387056) (not e!344741))))

(assert (=> b!602710 (= res!387056 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11920))))

(declare-fun b!602711 () Bool)

(assert (=> b!602711 (= e!344744 e!344741)))

(declare-fun res!387064 () Bool)

(assert (=> b!602711 (=> (not res!387064) (not e!344741))))

(declare-fun lt!274611 () SeekEntryResult!6276)

(assert (=> b!602711 (= res!387064 (or (= lt!274611 (MissingZero!6276 i!1108)) (= lt!274611 (MissingVacant!6276 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37152 (_ BitVec 32)) SeekEntryResult!6276)

(assert (=> b!602711 (= lt!274611 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!602712 () Bool)

(assert (=> b!602712 (= e!344739 e!344747)))

(declare-fun res!387063 () Bool)

(assert (=> b!602712 (=> (not res!387063) (not e!344747))))

(assert (=> b!602712 (= res!387063 (arrayContainsKey!0 lt!274606 (select (arr!17829 a!2986) j!136) j!136))))

(declare-fun b!602713 () Bool)

(declare-fun Unit!19088 () Unit!19084)

(assert (=> b!602713 (= e!344738 Unit!19088)))

(declare-fun b!602714 () Bool)

(declare-fun Unit!19089 () Unit!19084)

(assert (=> b!602714 (= e!344738 Unit!19089)))

(assert (=> b!602714 false))

(assert (= (and start!55116 res!387059) b!602702))

(assert (= (and b!602702 res!387058) b!602707))

(assert (= (and b!602707 res!387068) b!602692))

(assert (= (and b!602692 res!387071) b!602700))

(assert (= (and b!602700 res!387074) b!602711))

(assert (= (and b!602711 res!387064) b!602697))

(assert (= (and b!602697 res!387065) b!602710))

(assert (= (and b!602710 res!387056) b!602693))

(assert (= (and b!602693 res!387073) b!602695))

(assert (= (and b!602695 res!387057) b!602694))

(assert (= (and b!602694 res!387062) b!602696))

(assert (= (and b!602696 res!387070) b!602709))

(assert (= (and b!602696 c!68186) b!602714))

(assert (= (and b!602696 (not c!68186)) b!602713))

(assert (= (and b!602696 (not res!387072)) b!602703))

(assert (= (and b!602703 res!387060) b!602708))

(assert (= (and b!602708 (not res!387061)) b!602712))

(assert (= (and b!602712 res!387063) b!602699))

(assert (= (and b!602703 (not res!387067)) b!602701))

(assert (= (and b!602701 c!68185) b!602704))

(assert (= (and b!602701 (not c!68185)) b!602706))

(assert (= (and b!602701 (not res!387069)) b!602698))

(assert (= (and b!602698 res!387066) b!602705))

(declare-fun m!579831 () Bool)

(assert (=> b!602712 m!579831))

(assert (=> b!602712 m!579831))

(declare-fun m!579833 () Bool)

(assert (=> b!602712 m!579833))

(declare-fun m!579835 () Bool)

(assert (=> start!55116 m!579835))

(declare-fun m!579837 () Bool)

(assert (=> start!55116 m!579837))

(declare-fun m!579839 () Bool)

(assert (=> b!602694 m!579839))

(assert (=> b!602694 m!579831))

(assert (=> b!602694 m!579831))

(declare-fun m!579841 () Bool)

(assert (=> b!602694 m!579841))

(declare-fun m!579843 () Bool)

(assert (=> b!602704 m!579843))

(assert (=> b!602704 m!579831))

(declare-fun m!579845 () Bool)

(assert (=> b!602704 m!579845))

(assert (=> b!602704 m!579831))

(declare-fun m!579847 () Bool)

(assert (=> b!602704 m!579847))

(assert (=> b!602704 m!579831))

(declare-fun m!579849 () Bool)

(assert (=> b!602704 m!579849))

(assert (=> b!602704 m!579831))

(declare-fun m!579851 () Bool)

(assert (=> b!602704 m!579851))

(declare-fun m!579853 () Bool)

(assert (=> b!602704 m!579853))

(declare-fun m!579855 () Bool)

(assert (=> b!602704 m!579855))

(declare-fun m!579857 () Bool)

(assert (=> b!602710 m!579857))

(assert (=> b!602699 m!579831))

(assert (=> b!602699 m!579831))

(declare-fun m!579859 () Bool)

(assert (=> b!602699 m!579859))

(declare-fun m!579861 () Bool)

(assert (=> b!602697 m!579861))

(assert (=> b!602705 m!579831))

(assert (=> b!602705 m!579831))

(assert (=> b!602705 m!579859))

(declare-fun m!579863 () Bool)

(assert (=> b!602693 m!579863))

(assert (=> b!602703 m!579831))

(declare-fun m!579865 () Bool)

(assert (=> b!602703 m!579865))

(declare-fun m!579867 () Bool)

(assert (=> b!602703 m!579867))

(declare-fun m!579869 () Bool)

(assert (=> b!602692 m!579869))

(declare-fun m!579871 () Bool)

(assert (=> b!602696 m!579871))

(declare-fun m!579873 () Bool)

(assert (=> b!602696 m!579873))

(assert (=> b!602696 m!579865))

(declare-fun m!579875 () Bool)

(assert (=> b!602696 m!579875))

(assert (=> b!602696 m!579831))

(assert (=> b!602696 m!579831))

(declare-fun m!579877 () Bool)

(assert (=> b!602696 m!579877))

(declare-fun m!579879 () Bool)

(assert (=> b!602696 m!579879))

(declare-fun m!579881 () Bool)

(assert (=> b!602696 m!579881))

(assert (=> b!602698 m!579831))

(assert (=> b!602698 m!579831))

(assert (=> b!602698 m!579833))

(assert (=> b!602695 m!579865))

(declare-fun m!579883 () Bool)

(assert (=> b!602695 m!579883))

(assert (=> b!602707 m!579831))

(assert (=> b!602707 m!579831))

(declare-fun m!579885 () Bool)

(assert (=> b!602707 m!579885))

(assert (=> b!602708 m!579831))

(declare-fun m!579887 () Bool)

(assert (=> b!602711 m!579887))

(declare-fun m!579889 () Bool)

(assert (=> b!602700 m!579889))

(push 1)

