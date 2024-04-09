; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55576 () Bool)

(assert start!55576)

(declare-fun b!607953 () Bool)

(declare-fun e!348175 () Bool)

(declare-fun e!348163 () Bool)

(assert (=> b!607953 (= e!348175 e!348163)))

(declare-fun res!390854 () Bool)

(assert (=> b!607953 (=> (not res!390854) (not e!348163))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6329 0))(
  ( (MissingZero!6329 (index!27590 (_ BitVec 32))) (Found!6329 (index!27591 (_ BitVec 32))) (Intermediate!6329 (undefined!7141 Bool) (index!27592 (_ BitVec 32)) (x!56423 (_ BitVec 32))) (Undefined!6329) (MissingVacant!6329 (index!27593 (_ BitVec 32))) )
))
(declare-fun lt!277742 () SeekEntryResult!6329)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37270 0))(
  ( (array!37271 (arr!17882 (Array (_ BitVec 32) (_ BitVec 64))) (size!18246 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37270)

(assert (=> b!607953 (= res!390854 (and (= lt!277742 (Found!6329 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17882 a!2986) index!984) (select (arr!17882 a!2986) j!136))) (not (= (select (arr!17882 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37270 (_ BitVec 32)) SeekEntryResult!6329)

(assert (=> b!607953 (= lt!277742 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17882 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607954 () Bool)

(declare-fun e!348170 () Bool)

(assert (=> b!607954 (= e!348163 (not e!348170))))

(declare-fun res!390845 () Bool)

(assert (=> b!607954 (=> res!390845 e!348170)))

(declare-fun lt!277749 () SeekEntryResult!6329)

(assert (=> b!607954 (= res!390845 (not (= lt!277749 (Found!6329 index!984))))))

(declare-datatypes ((Unit!19402 0))(
  ( (Unit!19403) )
))
(declare-fun lt!277737 () Unit!19402)

(declare-fun e!348168 () Unit!19402)

(assert (=> b!607954 (= lt!277737 e!348168)))

(declare-fun c!68923 () Bool)

(assert (=> b!607954 (= c!68923 (= lt!277749 Undefined!6329))))

(declare-fun lt!277740 () array!37270)

(declare-fun lt!277734 () (_ BitVec 64))

(assert (=> b!607954 (= lt!277749 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277734 lt!277740 mask!3053))))

(declare-fun e!348178 () Bool)

(assert (=> b!607954 e!348178))

(declare-fun res!390846 () Bool)

(assert (=> b!607954 (=> (not res!390846) (not e!348178))))

(declare-fun lt!277738 () (_ BitVec 32))

(declare-fun lt!277736 () SeekEntryResult!6329)

(assert (=> b!607954 (= res!390846 (= lt!277736 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277738 vacantSpotIndex!68 lt!277734 lt!277740 mask!3053)))))

(assert (=> b!607954 (= lt!277736 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277738 vacantSpotIndex!68 (select (arr!17882 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!607954 (= lt!277734 (select (store (arr!17882 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277739 () Unit!19402)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37270 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19402)

(assert (=> b!607954 (= lt!277739 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277738 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607954 (= lt!277738 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607955 () Bool)

(declare-fun res!390860 () Bool)

(declare-fun e!348167 () Bool)

(assert (=> b!607955 (=> (not res!390860) (not e!348167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37270 (_ BitVec 32)) Bool)

(assert (=> b!607955 (= res!390860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607956 () Bool)

(declare-fun res!390841 () Bool)

(declare-fun e!348171 () Bool)

(assert (=> b!607956 (=> res!390841 e!348171)))

(declare-datatypes ((List!11976 0))(
  ( (Nil!11973) (Cons!11972 (h!13017 (_ BitVec 64)) (t!18212 List!11976)) )
))
(declare-fun contains!3022 (List!11976 (_ BitVec 64)) Bool)

(assert (=> b!607956 (= res!390841 (contains!3022 Nil!11973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607957 () Bool)

(declare-fun e!348177 () Bool)

(declare-fun arrayContainsKey!0 (array!37270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607957 (= e!348177 (arrayContainsKey!0 lt!277740 (select (arr!17882 a!2986) j!136) index!984))))

(declare-fun b!607958 () Bool)

(declare-fun res!390855 () Bool)

(assert (=> b!607958 (=> (not res!390855) (not e!348167))))

(assert (=> b!607958 (= res!390855 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17882 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607959 () Bool)

(declare-fun res!390858 () Bool)

(assert (=> b!607959 (=> res!390858 e!348171)))

(assert (=> b!607959 (= res!390858 (contains!3022 Nil!11973 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607960 () Bool)

(declare-fun res!390842 () Bool)

(assert (=> b!607960 (=> res!390842 e!348171)))

(declare-fun noDuplicate!324 (List!11976) Bool)

(assert (=> b!607960 (= res!390842 (not (noDuplicate!324 Nil!11973)))))

(declare-fun b!607961 () Bool)

(declare-fun Unit!19404 () Unit!19402)

(assert (=> b!607961 (= e!348168 Unit!19404)))

(declare-fun b!607962 () Bool)

(declare-fun res!390862 () Bool)

(assert (=> b!607962 (=> (not res!390862) (not e!348167))))

(declare-fun arrayNoDuplicates!0 (array!37270 (_ BitVec 32) List!11976) Bool)

(assert (=> b!607962 (= res!390862 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11973))))

(declare-fun b!607963 () Bool)

(declare-fun res!390852 () Bool)

(declare-fun e!348173 () Bool)

(assert (=> b!607963 (=> (not res!390852) (not e!348173))))

(assert (=> b!607963 (= res!390852 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607964 () Bool)

(declare-fun e!348169 () Unit!19402)

(declare-fun Unit!19405 () Unit!19402)

(assert (=> b!607964 (= e!348169 Unit!19405)))

(declare-fun b!607965 () Bool)

(declare-fun Unit!19406 () Unit!19402)

(assert (=> b!607965 (= e!348168 Unit!19406)))

(assert (=> b!607965 false))

(declare-fun b!607967 () Bool)

(assert (=> b!607967 (= e!348173 e!348167)))

(declare-fun res!390851 () Bool)

(assert (=> b!607967 (=> (not res!390851) (not e!348167))))

(declare-fun lt!277733 () SeekEntryResult!6329)

(assert (=> b!607967 (= res!390851 (or (= lt!277733 (MissingZero!6329 i!1108)) (= lt!277733 (MissingVacant!6329 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37270 (_ BitVec 32)) SeekEntryResult!6329)

(assert (=> b!607967 (= lt!277733 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607968 () Bool)

(declare-fun e!348172 () Bool)

(declare-fun e!348176 () Bool)

(assert (=> b!607968 (= e!348172 e!348176)))

(declare-fun res!390861 () Bool)

(assert (=> b!607968 (=> res!390861 e!348176)))

(assert (=> b!607968 (= res!390861 (bvsge index!984 j!136))))

(declare-fun lt!277745 () Unit!19402)

(assert (=> b!607968 (= lt!277745 e!348169)))

(declare-fun c!68924 () Bool)

(assert (=> b!607968 (= c!68924 (bvslt j!136 index!984))))

(declare-fun b!607969 () Bool)

(declare-fun e!348165 () Bool)

(declare-fun e!348166 () Bool)

(assert (=> b!607969 (= e!348165 e!348166)))

(declare-fun res!390857 () Bool)

(assert (=> b!607969 (=> res!390857 e!348166)))

(declare-fun lt!277743 () (_ BitVec 64))

(assert (=> b!607969 (= res!390857 (or (not (= (select (arr!17882 a!2986) j!136) lt!277734)) (not (= (select (arr!17882 a!2986) j!136) lt!277743)) (bvsge j!136 index!984)))))

(declare-fun e!348174 () Bool)

(declare-fun b!607970 () Bool)

(assert (=> b!607970 (= e!348174 (arrayContainsKey!0 lt!277740 (select (arr!17882 a!2986) j!136) index!984))))

(declare-fun b!607971 () Bool)

(assert (=> b!607971 (= e!348170 e!348172)))

(declare-fun res!390849 () Bool)

(assert (=> b!607971 (=> res!390849 e!348172)))

(assert (=> b!607971 (= res!390849 (or (not (= (select (arr!17882 a!2986) j!136) lt!277734)) (not (= (select (arr!17882 a!2986) j!136) lt!277743))))))

(assert (=> b!607971 e!348165))

(declare-fun res!390859 () Bool)

(assert (=> b!607971 (=> (not res!390859) (not e!348165))))

(assert (=> b!607971 (= res!390859 (= lt!277743 (select (arr!17882 a!2986) j!136)))))

(assert (=> b!607971 (= lt!277743 (select (store (arr!17882 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!607972 () Bool)

(assert (=> b!607972 (= e!348167 e!348175)))

(declare-fun res!390847 () Bool)

(assert (=> b!607972 (=> (not res!390847) (not e!348175))))

(assert (=> b!607972 (= res!390847 (= (select (store (arr!17882 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607972 (= lt!277740 (array!37271 (store (arr!17882 a!2986) i!1108 k!1786) (size!18246 a!2986)))))

(declare-fun b!607973 () Bool)

(declare-fun Unit!19407 () Unit!19402)

(assert (=> b!607973 (= e!348169 Unit!19407)))

(declare-fun lt!277747 () Unit!19402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37270 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19402)

(assert (=> b!607973 (= lt!277747 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277740 (select (arr!17882 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607973 (arrayContainsKey!0 lt!277740 (select (arr!17882 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277748 () Unit!19402)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37270 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11976) Unit!19402)

(assert (=> b!607973 (= lt!277748 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11973))))

(assert (=> b!607973 (arrayNoDuplicates!0 lt!277740 #b00000000000000000000000000000000 Nil!11973)))

(declare-fun lt!277735 () Unit!19402)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37270 (_ BitVec 32) (_ BitVec 32)) Unit!19402)

(assert (=> b!607973 (= lt!277735 (lemmaNoDuplicateFromThenFromBigger!0 lt!277740 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607973 (arrayNoDuplicates!0 lt!277740 j!136 Nil!11973)))

(declare-fun lt!277746 () Unit!19402)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37270 (_ BitVec 64) (_ BitVec 32) List!11976) Unit!19402)

(assert (=> b!607973 (= lt!277746 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277740 (select (arr!17882 a!2986) j!136) j!136 Nil!11973))))

(assert (=> b!607973 false))

(declare-fun b!607974 () Bool)

(declare-fun res!390850 () Bool)

(assert (=> b!607974 (=> (not res!390850) (not e!348173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607974 (= res!390850 (validKeyInArray!0 (select (arr!17882 a!2986) j!136)))))

(declare-fun b!607975 () Bool)

(assert (=> b!607975 (= e!348166 e!348177)))

(declare-fun res!390853 () Bool)

(assert (=> b!607975 (=> (not res!390853) (not e!348177))))

(assert (=> b!607975 (= res!390853 (arrayContainsKey!0 lt!277740 (select (arr!17882 a!2986) j!136) j!136))))

(declare-fun b!607976 () Bool)

(assert (=> b!607976 (= e!348176 e!348171)))

(declare-fun res!390843 () Bool)

(assert (=> b!607976 (=> res!390843 e!348171)))

(assert (=> b!607976 (= res!390843 (or (bvsge (size!18246 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18246 a!2986))))))

(assert (=> b!607976 (arrayContainsKey!0 lt!277740 (select (arr!17882 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277744 () Unit!19402)

(assert (=> b!607976 (= lt!277744 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277740 (select (arr!17882 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607976 e!348174))

(declare-fun res!390856 () Bool)

(assert (=> b!607976 (=> (not res!390856) (not e!348174))))

(assert (=> b!607976 (= res!390856 (arrayContainsKey!0 lt!277740 (select (arr!17882 a!2986) j!136) j!136))))

(declare-fun b!607977 () Bool)

(assert (=> b!607977 (= e!348171 true)))

(declare-fun lt!277741 () Bool)

(assert (=> b!607977 (= lt!277741 (contains!3022 Nil!11973 k!1786))))

(declare-fun b!607978 () Bool)

(declare-fun res!390848 () Bool)

(assert (=> b!607978 (=> (not res!390848) (not e!348173))))

(assert (=> b!607978 (= res!390848 (and (= (size!18246 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18246 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18246 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607979 () Bool)

(assert (=> b!607979 (= e!348178 (= lt!277742 lt!277736))))

(declare-fun b!607966 () Bool)

(declare-fun res!390844 () Bool)

(assert (=> b!607966 (=> (not res!390844) (not e!348173))))

(assert (=> b!607966 (= res!390844 (validKeyInArray!0 k!1786))))

(declare-fun res!390863 () Bool)

(assert (=> start!55576 (=> (not res!390863) (not e!348173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55576 (= res!390863 (validMask!0 mask!3053))))

(assert (=> start!55576 e!348173))

(assert (=> start!55576 true))

(declare-fun array_inv!13656 (array!37270) Bool)

(assert (=> start!55576 (array_inv!13656 a!2986)))

(assert (= (and start!55576 res!390863) b!607978))

(assert (= (and b!607978 res!390848) b!607974))

(assert (= (and b!607974 res!390850) b!607966))

(assert (= (and b!607966 res!390844) b!607963))

(assert (= (and b!607963 res!390852) b!607967))

(assert (= (and b!607967 res!390851) b!607955))

(assert (= (and b!607955 res!390860) b!607962))

(assert (= (and b!607962 res!390862) b!607958))

(assert (= (and b!607958 res!390855) b!607972))

(assert (= (and b!607972 res!390847) b!607953))

(assert (= (and b!607953 res!390854) b!607954))

(assert (= (and b!607954 res!390846) b!607979))

(assert (= (and b!607954 c!68923) b!607965))

(assert (= (and b!607954 (not c!68923)) b!607961))

(assert (= (and b!607954 (not res!390845)) b!607971))

(assert (= (and b!607971 res!390859) b!607969))

(assert (= (and b!607969 (not res!390857)) b!607975))

(assert (= (and b!607975 res!390853) b!607957))

(assert (= (and b!607971 (not res!390849)) b!607968))

(assert (= (and b!607968 c!68924) b!607973))

(assert (= (and b!607968 (not c!68924)) b!607964))

(assert (= (and b!607968 (not res!390861)) b!607976))

(assert (= (and b!607976 res!390856) b!607970))

(assert (= (and b!607976 (not res!390843)) b!607960))

(assert (= (and b!607960 (not res!390842)) b!607956))

(assert (= (and b!607956 (not res!390841)) b!607959))

(assert (= (and b!607959 (not res!390858)) b!607977))

(declare-fun m!584661 () Bool)

(assert (=> b!607973 m!584661))

(declare-fun m!584663 () Bool)

(assert (=> b!607973 m!584663))

(declare-fun m!584665 () Bool)

(assert (=> b!607973 m!584665))

(assert (=> b!607973 m!584661))

(declare-fun m!584667 () Bool)

(assert (=> b!607973 m!584667))

(declare-fun m!584669 () Bool)

(assert (=> b!607973 m!584669))

(assert (=> b!607973 m!584661))

(declare-fun m!584671 () Bool)

(assert (=> b!607973 m!584671))

(declare-fun m!584673 () Bool)

(assert (=> b!607973 m!584673))

(assert (=> b!607973 m!584661))

(declare-fun m!584675 () Bool)

(assert (=> b!607973 m!584675))

(declare-fun m!584677 () Bool)

(assert (=> b!607960 m!584677))

(declare-fun m!584679 () Bool)

(assert (=> b!607954 m!584679))

(declare-fun m!584681 () Bool)

(assert (=> b!607954 m!584681))

(declare-fun m!584683 () Bool)

(assert (=> b!607954 m!584683))

(assert (=> b!607954 m!584661))

(declare-fun m!584685 () Bool)

(assert (=> b!607954 m!584685))

(declare-fun m!584687 () Bool)

(assert (=> b!607954 m!584687))

(declare-fun m!584689 () Bool)

(assert (=> b!607954 m!584689))

(assert (=> b!607954 m!584661))

(declare-fun m!584691 () Bool)

(assert (=> b!607954 m!584691))

(declare-fun m!584693 () Bool)

(assert (=> b!607956 m!584693))

(declare-fun m!584695 () Bool)

(assert (=> b!607959 m!584695))

(declare-fun m!584697 () Bool)

(assert (=> b!607953 m!584697))

(assert (=> b!607953 m!584661))

(assert (=> b!607953 m!584661))

(declare-fun m!584699 () Bool)

(assert (=> b!607953 m!584699))

(assert (=> b!607971 m!584661))

(assert (=> b!607971 m!584681))

(declare-fun m!584701 () Bool)

(assert (=> b!607971 m!584701))

(declare-fun m!584703 () Bool)

(assert (=> b!607962 m!584703))

(assert (=> b!607974 m!584661))

(assert (=> b!607974 m!584661))

(declare-fun m!584705 () Bool)

(assert (=> b!607974 m!584705))

(declare-fun m!584707 () Bool)

(assert (=> start!55576 m!584707))

(declare-fun m!584709 () Bool)

(assert (=> start!55576 m!584709))

(assert (=> b!607969 m!584661))

(declare-fun m!584711 () Bool)

(assert (=> b!607958 m!584711))

(assert (=> b!607970 m!584661))

(assert (=> b!607970 m!584661))

(declare-fun m!584713 () Bool)

(assert (=> b!607970 m!584713))

(declare-fun m!584715 () Bool)

(assert (=> b!607963 m!584715))

(assert (=> b!607957 m!584661))

(assert (=> b!607957 m!584661))

(assert (=> b!607957 m!584713))

(declare-fun m!584717 () Bool)

(assert (=> b!607977 m!584717))

(declare-fun m!584719 () Bool)

(assert (=> b!607967 m!584719))

(assert (=> b!607975 m!584661))

(assert (=> b!607975 m!584661))

(declare-fun m!584721 () Bool)

(assert (=> b!607975 m!584721))

(declare-fun m!584723 () Bool)

(assert (=> b!607955 m!584723))

(assert (=> b!607976 m!584661))

(assert (=> b!607976 m!584661))

(declare-fun m!584725 () Bool)

(assert (=> b!607976 m!584725))

(assert (=> b!607976 m!584661))

(declare-fun m!584727 () Bool)

(assert (=> b!607976 m!584727))

(assert (=> b!607976 m!584661))

(assert (=> b!607976 m!584721))

(declare-fun m!584729 () Bool)

(assert (=> b!607966 m!584729))

(assert (=> b!607972 m!584681))

(declare-fun m!584731 () Bool)

(assert (=> b!607972 m!584731))

(push 1)

