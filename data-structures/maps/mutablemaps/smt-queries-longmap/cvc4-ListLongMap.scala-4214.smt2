; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57820 () Bool)

(assert start!57820)

(declare-fun res!413728 () Bool)

(declare-fun e!365694 () Bool)

(assert (=> start!57820 (=> (not res!413728) (not e!365694))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57820 (= res!413728 (validMask!0 mask!3053))))

(assert (=> start!57820 e!365694))

(assert (=> start!57820 true))

(declare-datatypes ((array!38278 0))(
  ( (array!38279 (arr!18356 (Array (_ BitVec 32) (_ BitVec 64))) (size!18720 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38278)

(declare-fun array_inv!14130 (array!38278) Bool)

(assert (=> start!57820 (array_inv!14130 a!2986)))

(declare-fun b!638972 () Bool)

(declare-fun res!413729 () Bool)

(assert (=> b!638972 (=> (not res!413729) (not e!365694))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638972 (= res!413729 (validKeyInArray!0 k!1786))))

(declare-fun b!638973 () Bool)

(declare-datatypes ((Unit!21570 0))(
  ( (Unit!21571) )
))
(declare-fun e!365687 () Unit!21570)

(declare-fun Unit!21572 () Unit!21570)

(assert (=> b!638973 (= e!365687 Unit!21572)))

(assert (=> b!638973 false))

(declare-fun b!638974 () Bool)

(declare-fun res!413731 () Bool)

(declare-fun e!365688 () Bool)

(assert (=> b!638974 (=> (not res!413731) (not e!365688))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!638974 (= res!413731 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18356 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638975 () Bool)

(declare-fun e!365684 () Bool)

(declare-fun e!365695 () Bool)

(assert (=> b!638975 (= e!365684 e!365695)))

(declare-fun res!413719 () Bool)

(assert (=> b!638975 (=> (not res!413719) (not e!365695))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6803 0))(
  ( (MissingZero!6803 (index!29528 (_ BitVec 32))) (Found!6803 (index!29529 (_ BitVec 32))) (Intermediate!6803 (undefined!7615 Bool) (index!29530 (_ BitVec 32)) (x!58311 (_ BitVec 32))) (Undefined!6803) (MissingVacant!6803 (index!29531 (_ BitVec 32))) )
))
(declare-fun lt!295599 () SeekEntryResult!6803)

(assert (=> b!638975 (= res!413719 (and (= lt!295599 (Found!6803 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18356 a!2986) index!984) (select (arr!18356 a!2986) j!136))) (not (= (select (arr!18356 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38278 (_ BitVec 32)) SeekEntryResult!6803)

(assert (=> b!638975 (= lt!295599 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18356 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638976 () Bool)

(declare-fun Unit!21573 () Unit!21570)

(assert (=> b!638976 (= e!365687 Unit!21573)))

(declare-fun b!638977 () Bool)

(declare-fun e!365689 () Bool)

(declare-fun lt!295595 () SeekEntryResult!6803)

(assert (=> b!638977 (= e!365689 (= lt!295599 lt!295595))))

(declare-fun b!638978 () Bool)

(declare-fun e!365686 () Bool)

(assert (=> b!638978 (= e!365686 true)))

(declare-fun lt!295597 () array!38278)

(declare-datatypes ((List!12450 0))(
  ( (Nil!12447) (Cons!12446 (h!13491 (_ BitVec 64)) (t!18686 List!12450)) )
))
(declare-fun arrayNoDuplicates!0 (array!38278 (_ BitVec 32) List!12450) Bool)

(assert (=> b!638978 (arrayNoDuplicates!0 lt!295597 #b00000000000000000000000000000000 Nil!12447)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!295600 () Unit!21570)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38278 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12450) Unit!21570)

(assert (=> b!638978 (= lt!295600 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12447))))

(declare-fun arrayContainsKey!0 (array!38278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638978 (arrayContainsKey!0 lt!295597 (select (arr!18356 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295602 () Unit!21570)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38278 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21570)

(assert (=> b!638978 (= lt!295602 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295597 (select (arr!18356 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638979 () Bool)

(declare-fun e!365691 () Bool)

(assert (=> b!638979 (= e!365695 (not e!365691))))

(declare-fun res!413720 () Bool)

(assert (=> b!638979 (=> res!413720 e!365691)))

(declare-fun lt!295598 () SeekEntryResult!6803)

(assert (=> b!638979 (= res!413720 (not (= lt!295598 (Found!6803 index!984))))))

(declare-fun lt!295594 () Unit!21570)

(assert (=> b!638979 (= lt!295594 e!365687)))

(declare-fun c!72995 () Bool)

(assert (=> b!638979 (= c!72995 (= lt!295598 Undefined!6803))))

(declare-fun lt!295603 () (_ BitVec 64))

(assert (=> b!638979 (= lt!295598 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295603 lt!295597 mask!3053))))

(assert (=> b!638979 e!365689))

(declare-fun res!413722 () Bool)

(assert (=> b!638979 (=> (not res!413722) (not e!365689))))

(declare-fun lt!295596 () (_ BitVec 32))

(assert (=> b!638979 (= res!413722 (= lt!295595 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295596 vacantSpotIndex!68 lt!295603 lt!295597 mask!3053)))))

(assert (=> b!638979 (= lt!295595 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295596 vacantSpotIndex!68 (select (arr!18356 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638979 (= lt!295603 (select (store (arr!18356 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295604 () Unit!21570)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38278 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21570)

(assert (=> b!638979 (= lt!295604 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295596 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638979 (= lt!295596 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638980 () Bool)

(declare-fun e!365685 () Bool)

(declare-fun e!365693 () Bool)

(assert (=> b!638980 (= e!365685 e!365693)))

(declare-fun res!413717 () Bool)

(assert (=> b!638980 (=> (not res!413717) (not e!365693))))

(assert (=> b!638980 (= res!413717 (arrayContainsKey!0 lt!295597 (select (arr!18356 a!2986) j!136) j!136))))

(declare-fun b!638981 () Bool)

(declare-fun res!413726 () Bool)

(assert (=> b!638981 (=> (not res!413726) (not e!365694))))

(assert (=> b!638981 (= res!413726 (and (= (size!18720 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18720 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18720 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638982 () Bool)

(declare-fun e!365692 () Bool)

(assert (=> b!638982 (= e!365692 e!365685)))

(declare-fun res!413723 () Bool)

(assert (=> b!638982 (=> res!413723 e!365685)))

(declare-fun lt!295605 () (_ BitVec 64))

(assert (=> b!638982 (= res!413723 (or (not (= (select (arr!18356 a!2986) j!136) lt!295603)) (not (= (select (arr!18356 a!2986) j!136) lt!295605)) (bvsge j!136 index!984)))))

(declare-fun b!638983 () Bool)

(assert (=> b!638983 (= e!365694 e!365688)))

(declare-fun res!413718 () Bool)

(assert (=> b!638983 (=> (not res!413718) (not e!365688))))

(declare-fun lt!295601 () SeekEntryResult!6803)

(assert (=> b!638983 (= res!413718 (or (= lt!295601 (MissingZero!6803 i!1108)) (= lt!295601 (MissingVacant!6803 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38278 (_ BitVec 32)) SeekEntryResult!6803)

(assert (=> b!638983 (= lt!295601 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!638984 () Bool)

(assert (=> b!638984 (= e!365693 (arrayContainsKey!0 lt!295597 (select (arr!18356 a!2986) j!136) index!984))))

(declare-fun b!638985 () Bool)

(declare-fun res!413725 () Bool)

(assert (=> b!638985 (=> (not res!413725) (not e!365694))))

(assert (=> b!638985 (= res!413725 (validKeyInArray!0 (select (arr!18356 a!2986) j!136)))))

(declare-fun b!638986 () Bool)

(declare-fun res!413724 () Bool)

(assert (=> b!638986 (=> (not res!413724) (not e!365688))))

(assert (=> b!638986 (= res!413724 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12447))))

(declare-fun b!638987 () Bool)

(declare-fun res!413727 () Bool)

(assert (=> b!638987 (=> (not res!413727) (not e!365694))))

(assert (=> b!638987 (= res!413727 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638988 () Bool)

(assert (=> b!638988 (= e!365691 e!365686)))

(declare-fun res!413721 () Bool)

(assert (=> b!638988 (=> res!413721 e!365686)))

(assert (=> b!638988 (= res!413721 (or (not (= (select (arr!18356 a!2986) j!136) lt!295603)) (not (= (select (arr!18356 a!2986) j!136) lt!295605)) (bvsge j!136 index!984)))))

(assert (=> b!638988 e!365692))

(declare-fun res!413716 () Bool)

(assert (=> b!638988 (=> (not res!413716) (not e!365692))))

(assert (=> b!638988 (= res!413716 (= lt!295605 (select (arr!18356 a!2986) j!136)))))

(assert (=> b!638988 (= lt!295605 (select (store (arr!18356 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!638989 () Bool)

(declare-fun res!413732 () Bool)

(assert (=> b!638989 (=> (not res!413732) (not e!365688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38278 (_ BitVec 32)) Bool)

(assert (=> b!638989 (= res!413732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638990 () Bool)

(assert (=> b!638990 (= e!365688 e!365684)))

(declare-fun res!413730 () Bool)

(assert (=> b!638990 (=> (not res!413730) (not e!365684))))

(assert (=> b!638990 (= res!413730 (= (select (store (arr!18356 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638990 (= lt!295597 (array!38279 (store (arr!18356 a!2986) i!1108 k!1786) (size!18720 a!2986)))))

(assert (= (and start!57820 res!413728) b!638981))

(assert (= (and b!638981 res!413726) b!638985))

(assert (= (and b!638985 res!413725) b!638972))

(assert (= (and b!638972 res!413729) b!638987))

(assert (= (and b!638987 res!413727) b!638983))

(assert (= (and b!638983 res!413718) b!638989))

(assert (= (and b!638989 res!413732) b!638986))

(assert (= (and b!638986 res!413724) b!638974))

(assert (= (and b!638974 res!413731) b!638990))

(assert (= (and b!638990 res!413730) b!638975))

(assert (= (and b!638975 res!413719) b!638979))

(assert (= (and b!638979 res!413722) b!638977))

(assert (= (and b!638979 c!72995) b!638973))

(assert (= (and b!638979 (not c!72995)) b!638976))

(assert (= (and b!638979 (not res!413720)) b!638988))

(assert (= (and b!638988 res!413716) b!638982))

(assert (= (and b!638982 (not res!413723)) b!638980))

(assert (= (and b!638980 res!413717) b!638984))

(assert (= (and b!638988 (not res!413721)) b!638978))

(declare-fun m!612921 () Bool)

(assert (=> b!638983 m!612921))

(declare-fun m!612923 () Bool)

(assert (=> b!638974 m!612923))

(declare-fun m!612925 () Bool)

(assert (=> b!638985 m!612925))

(assert (=> b!638985 m!612925))

(declare-fun m!612927 () Bool)

(assert (=> b!638985 m!612927))

(declare-fun m!612929 () Bool)

(assert (=> b!638989 m!612929))

(declare-fun m!612931 () Bool)

(assert (=> b!638979 m!612931))

(declare-fun m!612933 () Bool)

(assert (=> b!638979 m!612933))

(assert (=> b!638979 m!612925))

(declare-fun m!612935 () Bool)

(assert (=> b!638979 m!612935))

(declare-fun m!612937 () Bool)

(assert (=> b!638979 m!612937))

(assert (=> b!638979 m!612925))

(declare-fun m!612939 () Bool)

(assert (=> b!638979 m!612939))

(declare-fun m!612941 () Bool)

(assert (=> b!638979 m!612941))

(declare-fun m!612943 () Bool)

(assert (=> b!638979 m!612943))

(declare-fun m!612945 () Bool)

(assert (=> b!638987 m!612945))

(assert (=> b!638990 m!612935))

(declare-fun m!612947 () Bool)

(assert (=> b!638990 m!612947))

(assert (=> b!638982 m!612925))

(declare-fun m!612949 () Bool)

(assert (=> b!638975 m!612949))

(assert (=> b!638975 m!612925))

(assert (=> b!638975 m!612925))

(declare-fun m!612951 () Bool)

(assert (=> b!638975 m!612951))

(declare-fun m!612953 () Bool)

(assert (=> b!638972 m!612953))

(assert (=> b!638978 m!612925))

(assert (=> b!638978 m!612925))

(declare-fun m!612955 () Bool)

(assert (=> b!638978 m!612955))

(assert (=> b!638978 m!612925))

(declare-fun m!612957 () Bool)

(assert (=> b!638978 m!612957))

(declare-fun m!612959 () Bool)

(assert (=> b!638978 m!612959))

(declare-fun m!612961 () Bool)

(assert (=> b!638978 m!612961))

(assert (=> b!638984 m!612925))

(assert (=> b!638984 m!612925))

(declare-fun m!612963 () Bool)

(assert (=> b!638984 m!612963))

(assert (=> b!638988 m!612925))

(assert (=> b!638988 m!612935))

(declare-fun m!612965 () Bool)

(assert (=> b!638988 m!612965))

(declare-fun m!612967 () Bool)

(assert (=> b!638986 m!612967))

(assert (=> b!638980 m!612925))

(assert (=> b!638980 m!612925))

(declare-fun m!612969 () Bool)

(assert (=> b!638980 m!612969))

(declare-fun m!612971 () Bool)

(assert (=> start!57820 m!612971))

(declare-fun m!612973 () Bool)

(assert (=> start!57820 m!612973))

(push 1)

