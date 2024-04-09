; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54522 () Bool)

(assert start!54522)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!36945 0))(
  ( (array!36946 (arr!17733 (Array (_ BitVec 32) (_ BitVec 64))) (size!18097 (_ BitVec 32))) )
))
(declare-fun lt!270137 () array!36945)

(declare-fun e!339882 () Bool)

(declare-fun b!594868 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!36945)

(declare-fun arrayContainsKey!0 (array!36945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594868 (= e!339882 (arrayContainsKey!0 lt!270137 (select (arr!17733 a!2986) j!136) index!984))))

(declare-fun b!594869 () Bool)

(declare-fun e!339891 () Bool)

(declare-fun e!339887 () Bool)

(assert (=> b!594869 (= e!339891 e!339887)))

(declare-fun res!380970 () Bool)

(assert (=> b!594869 (=> (not res!380970) (not e!339887))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6180 0))(
  ( (MissingZero!6180 (index!26967 (_ BitVec 32))) (Found!6180 (index!26968 (_ BitVec 32))) (Intermediate!6180 (undefined!6992 Bool) (index!26969 (_ BitVec 32)) (x!55801 (_ BitVec 32))) (Undefined!6180) (MissingVacant!6180 (index!26970 (_ BitVec 32))) )
))
(declare-fun lt!270142 () SeekEntryResult!6180)

(assert (=> b!594869 (= res!380970 (and (= lt!270142 (Found!6180 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17733 a!2986) index!984) (select (arr!17733 a!2986) j!136))) (not (= (select (arr!17733 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36945 (_ BitVec 32)) SeekEntryResult!6180)

(assert (=> b!594869 (= lt!270142 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17733 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594871 () Bool)

(declare-fun res!380961 () Bool)

(declare-fun e!339889 () Bool)

(assert (=> b!594871 (=> res!380961 e!339889)))

(declare-datatypes ((List!11827 0))(
  ( (Nil!11824) (Cons!11823 (h!12868 (_ BitVec 64)) (t!18063 List!11827)) )
))
(declare-fun noDuplicate!247 (List!11827) Bool)

(assert (=> b!594871 (= res!380961 (not (noDuplicate!247 Nil!11824)))))

(declare-fun b!594872 () Bool)

(assert (=> b!594872 (= e!339889 true)))

(declare-fun lt!270143 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun contains!2931 (List!11827 (_ BitVec 64)) Bool)

(assert (=> b!594872 (= lt!270143 (contains!2931 Nil!11824 k!1786))))

(declare-fun b!594873 () Bool)

(declare-datatypes ((Unit!18664 0))(
  ( (Unit!18665) )
))
(declare-fun e!339892 () Unit!18664)

(declare-fun Unit!18666 () Unit!18664)

(assert (=> b!594873 (= e!339892 Unit!18666)))

(declare-fun b!594874 () Bool)

(declare-fun res!380960 () Bool)

(declare-fun e!339885 () Bool)

(assert (=> b!594874 (=> (not res!380960) (not e!339885))))

(assert (=> b!594874 (= res!380960 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594875 () Bool)

(declare-fun e!339890 () Bool)

(assert (=> b!594875 (= e!339890 e!339882)))

(declare-fun res!380952 () Bool)

(assert (=> b!594875 (=> (not res!380952) (not e!339882))))

(assert (=> b!594875 (= res!380952 (arrayContainsKey!0 lt!270137 (select (arr!17733 a!2986) j!136) j!136))))

(declare-fun b!594876 () Bool)

(declare-fun res!380971 () Bool)

(assert (=> b!594876 (=> res!380971 e!339889)))

(assert (=> b!594876 (= res!380971 (contains!2931 Nil!11824 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594877 () Bool)

(declare-fun res!380953 () Bool)

(declare-fun e!339886 () Bool)

(assert (=> b!594877 (=> (not res!380953) (not e!339886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36945 (_ BitVec 32)) Bool)

(assert (=> b!594877 (= res!380953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594878 () Bool)

(declare-fun e!339888 () Bool)

(assert (=> b!594878 (= e!339887 (not e!339888))))

(declare-fun res!380958 () Bool)

(assert (=> b!594878 (=> res!380958 e!339888)))

(declare-fun lt!270141 () SeekEntryResult!6180)

(assert (=> b!594878 (= res!380958 (not (= lt!270141 (Found!6180 index!984))))))

(declare-fun lt!270136 () Unit!18664)

(assert (=> b!594878 (= lt!270136 e!339892)))

(declare-fun c!67325 () Bool)

(assert (=> b!594878 (= c!67325 (= lt!270141 Undefined!6180))))

(declare-fun lt!270140 () (_ BitVec 64))

(assert (=> b!594878 (= lt!270141 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270140 lt!270137 mask!3053))))

(declare-fun e!339883 () Bool)

(assert (=> b!594878 e!339883))

(declare-fun res!380955 () Bool)

(assert (=> b!594878 (=> (not res!380955) (not e!339883))))

(declare-fun lt!270138 () SeekEntryResult!6180)

(declare-fun lt!270135 () (_ BitVec 32))

(assert (=> b!594878 (= res!380955 (= lt!270138 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270135 vacantSpotIndex!68 lt!270140 lt!270137 mask!3053)))))

(assert (=> b!594878 (= lt!270138 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270135 vacantSpotIndex!68 (select (arr!17733 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594878 (= lt!270140 (select (store (arr!17733 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270133 () Unit!18664)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36945 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18664)

(assert (=> b!594878 (= lt!270133 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270135 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594878 (= lt!270135 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594879 () Bool)

(declare-fun e!339884 () Bool)

(assert (=> b!594879 (= e!339888 e!339884)))

(declare-fun res!380966 () Bool)

(assert (=> b!594879 (=> res!380966 e!339884)))

(declare-fun lt!270139 () (_ BitVec 64))

(assert (=> b!594879 (= res!380966 (or (not (= (select (arr!17733 a!2986) j!136) lt!270140)) (not (= (select (arr!17733 a!2986) j!136) lt!270139)) (bvsge j!136 index!984)))))

(declare-fun e!339881 () Bool)

(assert (=> b!594879 e!339881))

(declare-fun res!380964 () Bool)

(assert (=> b!594879 (=> (not res!380964) (not e!339881))))

(assert (=> b!594879 (= res!380964 (= lt!270139 (select (arr!17733 a!2986) j!136)))))

(assert (=> b!594879 (= lt!270139 (select (store (arr!17733 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!594880 () Bool)

(declare-fun res!380957 () Bool)

(assert (=> b!594880 (=> (not res!380957) (not e!339885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594880 (= res!380957 (validKeyInArray!0 k!1786))))

(declare-fun b!594881 () Bool)

(declare-fun Unit!18667 () Unit!18664)

(assert (=> b!594881 (= e!339892 Unit!18667)))

(assert (=> b!594881 false))

(declare-fun b!594882 () Bool)

(assert (=> b!594882 (= e!339886 e!339891)))

(declare-fun res!380969 () Bool)

(assert (=> b!594882 (=> (not res!380969) (not e!339891))))

(assert (=> b!594882 (= res!380969 (= (select (store (arr!17733 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594882 (= lt!270137 (array!36946 (store (arr!17733 a!2986) i!1108 k!1786) (size!18097 a!2986)))))

(declare-fun b!594883 () Bool)

(assert (=> b!594883 (= e!339884 e!339889)))

(declare-fun res!380956 () Bool)

(assert (=> b!594883 (=> res!380956 e!339889)))

(assert (=> b!594883 (= res!380956 (or (bvsge (size!18097 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18097 a!2986))))))

(assert (=> b!594883 (arrayContainsKey!0 lt!270137 (select (arr!17733 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270144 () Unit!18664)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36945 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18664)

(assert (=> b!594883 (= lt!270144 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270137 (select (arr!17733 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594884 () Bool)

(assert (=> b!594884 (= e!339885 e!339886)))

(declare-fun res!380967 () Bool)

(assert (=> b!594884 (=> (not res!380967) (not e!339886))))

(declare-fun lt!270134 () SeekEntryResult!6180)

(assert (=> b!594884 (= res!380967 (or (= lt!270134 (MissingZero!6180 i!1108)) (= lt!270134 (MissingVacant!6180 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36945 (_ BitVec 32)) SeekEntryResult!6180)

(assert (=> b!594884 (= lt!270134 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!594885 () Bool)

(declare-fun res!380968 () Bool)

(assert (=> b!594885 (=> (not res!380968) (not e!339886))))

(assert (=> b!594885 (= res!380968 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17733 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594886 () Bool)

(assert (=> b!594886 (= e!339883 (= lt!270142 lt!270138))))

(declare-fun b!594887 () Bool)

(declare-fun res!380954 () Bool)

(assert (=> b!594887 (=> res!380954 e!339889)))

(assert (=> b!594887 (= res!380954 (contains!2931 Nil!11824 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594888 () Bool)

(declare-fun res!380972 () Bool)

(assert (=> b!594888 (=> (not res!380972) (not e!339886))))

(declare-fun arrayNoDuplicates!0 (array!36945 (_ BitVec 32) List!11827) Bool)

(assert (=> b!594888 (= res!380972 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11824))))

(declare-fun res!380959 () Bool)

(assert (=> start!54522 (=> (not res!380959) (not e!339885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54522 (= res!380959 (validMask!0 mask!3053))))

(assert (=> start!54522 e!339885))

(assert (=> start!54522 true))

(declare-fun array_inv!13507 (array!36945) Bool)

(assert (=> start!54522 (array_inv!13507 a!2986)))

(declare-fun b!594870 () Bool)

(assert (=> b!594870 (= e!339881 e!339890)))

(declare-fun res!380965 () Bool)

(assert (=> b!594870 (=> res!380965 e!339890)))

(assert (=> b!594870 (= res!380965 (or (not (= (select (arr!17733 a!2986) j!136) lt!270140)) (not (= (select (arr!17733 a!2986) j!136) lt!270139)) (bvsge j!136 index!984)))))

(declare-fun b!594889 () Bool)

(declare-fun res!380962 () Bool)

(assert (=> b!594889 (=> (not res!380962) (not e!339885))))

(assert (=> b!594889 (= res!380962 (and (= (size!18097 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18097 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18097 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594890 () Bool)

(declare-fun res!380963 () Bool)

(assert (=> b!594890 (=> (not res!380963) (not e!339885))))

(assert (=> b!594890 (= res!380963 (validKeyInArray!0 (select (arr!17733 a!2986) j!136)))))

(assert (= (and start!54522 res!380959) b!594889))

(assert (= (and b!594889 res!380962) b!594890))

(assert (= (and b!594890 res!380963) b!594880))

(assert (= (and b!594880 res!380957) b!594874))

(assert (= (and b!594874 res!380960) b!594884))

(assert (= (and b!594884 res!380967) b!594877))

(assert (= (and b!594877 res!380953) b!594888))

(assert (= (and b!594888 res!380972) b!594885))

(assert (= (and b!594885 res!380968) b!594882))

(assert (= (and b!594882 res!380969) b!594869))

(assert (= (and b!594869 res!380970) b!594878))

(assert (= (and b!594878 res!380955) b!594886))

(assert (= (and b!594878 c!67325) b!594881))

(assert (= (and b!594878 (not c!67325)) b!594873))

(assert (= (and b!594878 (not res!380958)) b!594879))

(assert (= (and b!594879 res!380964) b!594870))

(assert (= (and b!594870 (not res!380965)) b!594875))

(assert (= (and b!594875 res!380952) b!594868))

(assert (= (and b!594879 (not res!380966)) b!594883))

(assert (= (and b!594883 (not res!380956)) b!594871))

(assert (= (and b!594871 (not res!380961)) b!594887))

(assert (= (and b!594887 (not res!380954)) b!594876))

(assert (= (and b!594876 (not res!380971)) b!594872))

(declare-fun m!572625 () Bool)

(assert (=> b!594869 m!572625))

(declare-fun m!572627 () Bool)

(assert (=> b!594869 m!572627))

(assert (=> b!594869 m!572627))

(declare-fun m!572629 () Bool)

(assert (=> b!594869 m!572629))

(assert (=> b!594890 m!572627))

(assert (=> b!594890 m!572627))

(declare-fun m!572631 () Bool)

(assert (=> b!594890 m!572631))

(declare-fun m!572633 () Bool)

(assert (=> b!594887 m!572633))

(assert (=> b!594870 m!572627))

(declare-fun m!572635 () Bool)

(assert (=> b!594884 m!572635))

(declare-fun m!572637 () Bool)

(assert (=> b!594878 m!572637))

(declare-fun m!572639 () Bool)

(assert (=> b!594878 m!572639))

(declare-fun m!572641 () Bool)

(assert (=> b!594878 m!572641))

(declare-fun m!572643 () Bool)

(assert (=> b!594878 m!572643))

(assert (=> b!594878 m!572627))

(declare-fun m!572645 () Bool)

(assert (=> b!594878 m!572645))

(assert (=> b!594878 m!572627))

(declare-fun m!572647 () Bool)

(assert (=> b!594878 m!572647))

(declare-fun m!572649 () Bool)

(assert (=> b!594878 m!572649))

(declare-fun m!572651 () Bool)

(assert (=> b!594874 m!572651))

(assert (=> b!594868 m!572627))

(assert (=> b!594868 m!572627))

(declare-fun m!572653 () Bool)

(assert (=> b!594868 m!572653))

(declare-fun m!572655 () Bool)

(assert (=> b!594885 m!572655))

(assert (=> b!594883 m!572627))

(assert (=> b!594883 m!572627))

(declare-fun m!572657 () Bool)

(assert (=> b!594883 m!572657))

(assert (=> b!594883 m!572627))

(declare-fun m!572659 () Bool)

(assert (=> b!594883 m!572659))

(declare-fun m!572661 () Bool)

(assert (=> b!594871 m!572661))

(declare-fun m!572663 () Bool)

(assert (=> b!594872 m!572663))

(assert (=> b!594882 m!572641))

(declare-fun m!572665 () Bool)

(assert (=> b!594882 m!572665))

(assert (=> b!594879 m!572627))

(assert (=> b!594879 m!572641))

(declare-fun m!572667 () Bool)

(assert (=> b!594879 m!572667))

(declare-fun m!572669 () Bool)

(assert (=> b!594877 m!572669))

(declare-fun m!572671 () Bool)

(assert (=> b!594880 m!572671))

(assert (=> b!594875 m!572627))

(assert (=> b!594875 m!572627))

(declare-fun m!572673 () Bool)

(assert (=> b!594875 m!572673))

(declare-fun m!572675 () Bool)

(assert (=> b!594876 m!572675))

(declare-fun m!572677 () Bool)

(assert (=> b!594888 m!572677))

(declare-fun m!572679 () Bool)

(assert (=> start!54522 m!572679))

(declare-fun m!572681 () Bool)

(assert (=> start!54522 m!572681))

(push 1)

