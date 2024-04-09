; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58138 () Bool)

(assert start!58138)

(declare-fun b!641955 () Bool)

(declare-fun e!367641 () Bool)

(declare-fun e!367640 () Bool)

(assert (=> b!641955 (= e!367641 e!367640)))

(declare-fun res!415874 () Bool)

(assert (=> b!641955 (=> (not res!415874) (not e!367640))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38353 0))(
  ( (array!38354 (arr!18389 (Array (_ BitVec 32) (_ BitVec 64))) (size!18753 (_ BitVec 32))) )
))
(declare-fun lt!297287 () array!38353)

(declare-fun a!2986 () array!38353)

(declare-fun arrayContainsKey!0 (array!38353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!641955 (= res!415874 (arrayContainsKey!0 lt!297287 (select (arr!18389 a!2986) j!136) j!136))))

(declare-fun b!641956 () Bool)

(declare-fun e!367645 () Bool)

(declare-fun e!367643 () Bool)

(assert (=> b!641956 (= e!367645 e!367643)))

(declare-fun res!415889 () Bool)

(assert (=> b!641956 (=> res!415889 e!367643)))

(assert (=> b!641956 (= res!415889 (or (bvsge (size!18753 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18753 a!2986))))))

(declare-datatypes ((List!12483 0))(
  ( (Nil!12480) (Cons!12479 (h!13524 (_ BitVec 64)) (t!18719 List!12483)) )
))
(declare-fun arrayNoDuplicates!0 (array!38353 (_ BitVec 32) List!12483) Bool)

(assert (=> b!641956 (arrayNoDuplicates!0 lt!297287 j!136 Nil!12480)))

(declare-datatypes ((Unit!21702 0))(
  ( (Unit!21703) )
))
(declare-fun lt!297279 () Unit!21702)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38353 (_ BitVec 32) (_ BitVec 32)) Unit!21702)

(assert (=> b!641956 (= lt!297279 (lemmaNoDuplicateFromThenFromBigger!0 lt!297287 #b00000000000000000000000000000000 j!136))))

(assert (=> b!641956 (arrayNoDuplicates!0 lt!297287 #b00000000000000000000000000000000 Nil!12480)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!297288 () Unit!21702)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38353 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12483) Unit!21702)

(assert (=> b!641956 (= lt!297288 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12480))))

(assert (=> b!641956 (arrayContainsKey!0 lt!297287 (select (arr!18389 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297282 () Unit!21702)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38353 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21702)

(assert (=> b!641956 (= lt!297282 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297287 (select (arr!18389 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!641957 () Bool)

(declare-fun e!367639 () Bool)

(declare-fun e!367638 () Bool)

(assert (=> b!641957 (= e!367639 e!367638)))

(declare-fun res!415876 () Bool)

(assert (=> b!641957 (=> (not res!415876) (not e!367638))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!641957 (= res!415876 (= (select (store (arr!18389 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641957 (= lt!297287 (array!38354 (store (arr!18389 a!2986) i!1108 k!1786) (size!18753 a!2986)))))

(declare-fun b!641958 () Bool)

(declare-fun e!367642 () Bool)

(assert (=> b!641958 (= e!367642 e!367645)))

(declare-fun res!415870 () Bool)

(assert (=> b!641958 (=> res!415870 e!367645)))

(declare-fun lt!297291 () (_ BitVec 64))

(declare-fun lt!297281 () (_ BitVec 64))

(assert (=> b!641958 (= res!415870 (or (not (= (select (arr!18389 a!2986) j!136) lt!297291)) (not (= (select (arr!18389 a!2986) j!136) lt!297281)) (bvsge j!136 index!984)))))

(declare-fun e!367633 () Bool)

(assert (=> b!641958 e!367633))

(declare-fun res!415875 () Bool)

(assert (=> b!641958 (=> (not res!415875) (not e!367633))))

(assert (=> b!641958 (= res!415875 (= lt!297281 (select (arr!18389 a!2986) j!136)))))

(assert (=> b!641958 (= lt!297281 (select (store (arr!18389 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!641959 () Bool)

(declare-fun e!367634 () Unit!21702)

(declare-fun Unit!21704 () Unit!21702)

(assert (=> b!641959 (= e!367634 Unit!21704)))

(assert (=> b!641959 false))

(declare-fun b!641960 () Bool)

(declare-fun res!415880 () Bool)

(assert (=> b!641960 (=> res!415880 e!367643)))

(declare-fun contains!3137 (List!12483 (_ BitVec 64)) Bool)

(assert (=> b!641960 (= res!415880 (contains!3137 Nil!12480 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641961 () Bool)

(declare-fun res!415888 () Bool)

(assert (=> b!641961 (=> (not res!415888) (not e!367639))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!641961 (= res!415888 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18389 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641962 () Bool)

(declare-fun e!367636 () Bool)

(assert (=> b!641962 (= e!367636 (not e!367642))))

(declare-fun res!415886 () Bool)

(assert (=> b!641962 (=> res!415886 e!367642)))

(declare-datatypes ((SeekEntryResult!6836 0))(
  ( (MissingZero!6836 (index!29669 (_ BitVec 32))) (Found!6836 (index!29670 (_ BitVec 32))) (Intermediate!6836 (undefined!7648 Bool) (index!29671 (_ BitVec 32)) (x!58459 (_ BitVec 32))) (Undefined!6836) (MissingVacant!6836 (index!29672 (_ BitVec 32))) )
))
(declare-fun lt!297286 () SeekEntryResult!6836)

(assert (=> b!641962 (= res!415886 (not (= lt!297286 (Found!6836 index!984))))))

(declare-fun lt!297285 () Unit!21702)

(assert (=> b!641962 (= lt!297285 e!367634)))

(declare-fun c!73409 () Bool)

(assert (=> b!641962 (= c!73409 (= lt!297286 Undefined!6836))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38353 (_ BitVec 32)) SeekEntryResult!6836)

(assert (=> b!641962 (= lt!297286 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297291 lt!297287 mask!3053))))

(declare-fun e!367635 () Bool)

(assert (=> b!641962 e!367635))

(declare-fun res!415883 () Bool)

(assert (=> b!641962 (=> (not res!415883) (not e!367635))))

(declare-fun lt!297278 () SeekEntryResult!6836)

(declare-fun lt!297290 () (_ BitVec 32))

(assert (=> b!641962 (= res!415883 (= lt!297278 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297290 vacantSpotIndex!68 lt!297291 lt!297287 mask!3053)))))

(assert (=> b!641962 (= lt!297278 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297290 vacantSpotIndex!68 (select (arr!18389 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!641962 (= lt!297291 (select (store (arr!18389 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297284 () Unit!21702)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21702)

(assert (=> b!641962 (= lt!297284 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297290 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!641962 (= lt!297290 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!641963 () Bool)

(declare-fun res!415878 () Bool)

(declare-fun e!367637 () Bool)

(assert (=> b!641963 (=> (not res!415878) (not e!367637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!641963 (= res!415878 (validKeyInArray!0 (select (arr!18389 a!2986) j!136)))))

(declare-fun b!641964 () Bool)

(declare-fun Unit!21705 () Unit!21702)

(assert (=> b!641964 (= e!367634 Unit!21705)))

(declare-fun b!641965 () Bool)

(declare-fun res!415882 () Bool)

(assert (=> b!641965 (=> (not res!415882) (not e!367639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38353 (_ BitVec 32)) Bool)

(assert (=> b!641965 (= res!415882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!641966 () Bool)

(assert (=> b!641966 (= e!367637 e!367639)))

(declare-fun res!415873 () Bool)

(assert (=> b!641966 (=> (not res!415873) (not e!367639))))

(declare-fun lt!297280 () SeekEntryResult!6836)

(assert (=> b!641966 (= res!415873 (or (= lt!297280 (MissingZero!6836 i!1108)) (= lt!297280 (MissingVacant!6836 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38353 (_ BitVec 32)) SeekEntryResult!6836)

(assert (=> b!641966 (= lt!297280 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!641967 () Bool)

(assert (=> b!641967 (= e!367638 e!367636)))

(declare-fun res!415871 () Bool)

(assert (=> b!641967 (=> (not res!415871) (not e!367636))))

(declare-fun lt!297283 () SeekEntryResult!6836)

(assert (=> b!641967 (= res!415871 (and (= lt!297283 (Found!6836 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18389 a!2986) index!984) (select (arr!18389 a!2986) j!136))) (not (= (select (arr!18389 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!641967 (= lt!297283 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18389 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641968 () Bool)

(assert (=> b!641968 (= e!367643 true)))

(declare-fun lt!297289 () Bool)

(assert (=> b!641968 (= lt!297289 (contains!3137 Nil!12480 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641954 () Bool)

(declare-fun res!415887 () Bool)

(assert (=> b!641954 (=> (not res!415887) (not e!367637))))

(assert (=> b!641954 (= res!415887 (validKeyInArray!0 k!1786))))

(declare-fun res!415884 () Bool)

(assert (=> start!58138 (=> (not res!415884) (not e!367637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58138 (= res!415884 (validMask!0 mask!3053))))

(assert (=> start!58138 e!367637))

(assert (=> start!58138 true))

(declare-fun array_inv!14163 (array!38353) Bool)

(assert (=> start!58138 (array_inv!14163 a!2986)))

(declare-fun b!641969 () Bool)

(assert (=> b!641969 (= e!367633 e!367641)))

(declare-fun res!415885 () Bool)

(assert (=> b!641969 (=> res!415885 e!367641)))

(assert (=> b!641969 (= res!415885 (or (not (= (select (arr!18389 a!2986) j!136) lt!297291)) (not (= (select (arr!18389 a!2986) j!136) lt!297281)) (bvsge j!136 index!984)))))

(declare-fun b!641970 () Bool)

(declare-fun res!415879 () Bool)

(assert (=> b!641970 (=> res!415879 e!367643)))

(declare-fun noDuplicate!408 (List!12483) Bool)

(assert (=> b!641970 (= res!415879 (not (noDuplicate!408 Nil!12480)))))

(declare-fun b!641971 () Bool)

(declare-fun res!415877 () Bool)

(assert (=> b!641971 (=> (not res!415877) (not e!367639))))

(assert (=> b!641971 (= res!415877 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12480))))

(declare-fun b!641972 () Bool)

(declare-fun res!415872 () Bool)

(assert (=> b!641972 (=> (not res!415872) (not e!367637))))

(assert (=> b!641972 (= res!415872 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!641973 () Bool)

(declare-fun res!415881 () Bool)

(assert (=> b!641973 (=> (not res!415881) (not e!367637))))

(assert (=> b!641973 (= res!415881 (and (= (size!18753 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18753 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18753 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!641974 () Bool)

(assert (=> b!641974 (= e!367640 (arrayContainsKey!0 lt!297287 (select (arr!18389 a!2986) j!136) index!984))))

(declare-fun b!641975 () Bool)

(assert (=> b!641975 (= e!367635 (= lt!297283 lt!297278))))

(assert (= (and start!58138 res!415884) b!641973))

(assert (= (and b!641973 res!415881) b!641963))

(assert (= (and b!641963 res!415878) b!641954))

(assert (= (and b!641954 res!415887) b!641972))

(assert (= (and b!641972 res!415872) b!641966))

(assert (= (and b!641966 res!415873) b!641965))

(assert (= (and b!641965 res!415882) b!641971))

(assert (= (and b!641971 res!415877) b!641961))

(assert (= (and b!641961 res!415888) b!641957))

(assert (= (and b!641957 res!415876) b!641967))

(assert (= (and b!641967 res!415871) b!641962))

(assert (= (and b!641962 res!415883) b!641975))

(assert (= (and b!641962 c!73409) b!641959))

(assert (= (and b!641962 (not c!73409)) b!641964))

(assert (= (and b!641962 (not res!415886)) b!641958))

(assert (= (and b!641958 res!415875) b!641969))

(assert (= (and b!641969 (not res!415885)) b!641955))

(assert (= (and b!641955 res!415874) b!641974))

(assert (= (and b!641958 (not res!415870)) b!641956))

(assert (= (and b!641956 (not res!415889)) b!641970))

(assert (= (and b!641970 (not res!415879)) b!641960))

(assert (= (and b!641960 (not res!415880)) b!641968))

(declare-fun m!615803 () Bool)

(assert (=> start!58138 m!615803))

(declare-fun m!615805 () Bool)

(assert (=> start!58138 m!615805))

(declare-fun m!615807 () Bool)

(assert (=> b!641960 m!615807))

(declare-fun m!615809 () Bool)

(assert (=> b!641961 m!615809))

(declare-fun m!615811 () Bool)

(assert (=> b!641957 m!615811))

(declare-fun m!615813 () Bool)

(assert (=> b!641957 m!615813))

(declare-fun m!615815 () Bool)

(assert (=> b!641972 m!615815))

(declare-fun m!615817 () Bool)

(assert (=> b!641955 m!615817))

(assert (=> b!641955 m!615817))

(declare-fun m!615819 () Bool)

(assert (=> b!641955 m!615819))

(declare-fun m!615821 () Bool)

(assert (=> b!641954 m!615821))

(declare-fun m!615823 () Bool)

(assert (=> b!641967 m!615823))

(assert (=> b!641967 m!615817))

(assert (=> b!641967 m!615817))

(declare-fun m!615825 () Bool)

(assert (=> b!641967 m!615825))

(assert (=> b!641963 m!615817))

(assert (=> b!641963 m!615817))

(declare-fun m!615827 () Bool)

(assert (=> b!641963 m!615827))

(declare-fun m!615829 () Bool)

(assert (=> b!641966 m!615829))

(declare-fun m!615831 () Bool)

(assert (=> b!641970 m!615831))

(declare-fun m!615833 () Bool)

(assert (=> b!641968 m!615833))

(assert (=> b!641958 m!615817))

(assert (=> b!641958 m!615811))

(declare-fun m!615835 () Bool)

(assert (=> b!641958 m!615835))

(declare-fun m!615837 () Bool)

(assert (=> b!641965 m!615837))

(declare-fun m!615839 () Bool)

(assert (=> b!641971 m!615839))

(assert (=> b!641956 m!615817))

(declare-fun m!615841 () Bool)

(assert (=> b!641956 m!615841))

(declare-fun m!615843 () Bool)

(assert (=> b!641956 m!615843))

(assert (=> b!641956 m!615817))

(declare-fun m!615845 () Bool)

(assert (=> b!641956 m!615845))

(declare-fun m!615847 () Bool)

(assert (=> b!641956 m!615847))

(assert (=> b!641956 m!615817))

(declare-fun m!615849 () Bool)

(assert (=> b!641956 m!615849))

(declare-fun m!615851 () Bool)

(assert (=> b!641956 m!615851))

(assert (=> b!641969 m!615817))

(assert (=> b!641974 m!615817))

(assert (=> b!641974 m!615817))

(declare-fun m!615853 () Bool)

(assert (=> b!641974 m!615853))

(declare-fun m!615855 () Bool)

(assert (=> b!641962 m!615855))

(declare-fun m!615857 () Bool)

(assert (=> b!641962 m!615857))

(assert (=> b!641962 m!615817))

(assert (=> b!641962 m!615811))

(declare-fun m!615859 () Bool)

(assert (=> b!641962 m!615859))

(declare-fun m!615861 () Bool)

(assert (=> b!641962 m!615861))

(declare-fun m!615863 () Bool)

(assert (=> b!641962 m!615863))

(assert (=> b!641962 m!615817))

(declare-fun m!615865 () Bool)

(assert (=> b!641962 m!615865))

(push 1)

