; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58906 () Bool)

(assert start!58906)

(declare-fun b!649738 () Bool)

(declare-fun res!421323 () Bool)

(declare-fun e!372717 () Bool)

(assert (=> b!649738 (=> (not res!421323) (not e!372717))))

(declare-datatypes ((array!38524 0))(
  ( (array!38525 (arr!18464 (Array (_ BitVec 32) (_ BitVec 64))) (size!18828 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38524)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38524 (_ BitVec 32)) Bool)

(assert (=> b!649738 (= res!421323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649740 () Bool)

(declare-fun e!372711 () Bool)

(declare-fun e!372715 () Bool)

(assert (=> b!649740 (= e!372711 e!372715)))

(declare-fun res!421336 () Bool)

(assert (=> b!649740 (=> res!421336 e!372715)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!649740 (= res!421336 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22138 0))(
  ( (Unit!22139) )
))
(declare-fun lt!301877 () Unit!22138)

(declare-fun e!372714 () Unit!22138)

(assert (=> b!649740 (= lt!301877 e!372714)))

(declare-fun c!74576 () Bool)

(assert (=> b!649740 (= c!74576 (bvslt j!136 index!984))))

(declare-fun b!649741 () Bool)

(declare-fun e!372718 () Bool)

(assert (=> b!649741 (= e!372717 e!372718)))

(declare-fun res!421333 () Bool)

(assert (=> b!649741 (=> (not res!421333) (not e!372718))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!649741 (= res!421333 (= (select (store (arr!18464 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!301886 () array!38524)

(assert (=> b!649741 (= lt!301886 (array!38525 (store (arr!18464 a!2986) i!1108 k!1786) (size!18828 a!2986)))))

(declare-fun b!649742 () Bool)

(declare-fun res!421337 () Bool)

(assert (=> b!649742 (=> (not res!421337) (not e!372717))))

(declare-datatypes ((List!12558 0))(
  ( (Nil!12555) (Cons!12554 (h!13599 (_ BitVec 64)) (t!18794 List!12558)) )
))
(declare-fun arrayNoDuplicates!0 (array!38524 (_ BitVec 32) List!12558) Bool)

(assert (=> b!649742 (= res!421337 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12555))))

(declare-fun b!649743 () Bool)

(declare-fun e!372720 () Bool)

(assert (=> b!649743 (= e!372720 e!372717)))

(declare-fun res!421326 () Bool)

(assert (=> b!649743 (=> (not res!421326) (not e!372717))))

(declare-datatypes ((SeekEntryResult!6911 0))(
  ( (MissingZero!6911 (index!29990 (_ BitVec 32))) (Found!6911 (index!29991 (_ BitVec 32))) (Intermediate!6911 (undefined!7723 Bool) (index!29992 (_ BitVec 32)) (x!58797 (_ BitVec 32))) (Undefined!6911) (MissingVacant!6911 (index!29993 (_ BitVec 32))) )
))
(declare-fun lt!301890 () SeekEntryResult!6911)

(assert (=> b!649743 (= res!421326 (or (= lt!301890 (MissingZero!6911 i!1108)) (= lt!301890 (MissingVacant!6911 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38524 (_ BitVec 32)) SeekEntryResult!6911)

(assert (=> b!649743 (= lt!301890 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!649744 () Bool)

(declare-fun e!372722 () Bool)

(declare-fun arrayContainsKey!0 (array!38524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649744 (= e!372722 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) index!984))))

(declare-fun b!649745 () Bool)

(assert (=> b!649745 (= e!372715 (bvslt (size!18828 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!649745 (arrayNoDuplicates!0 lt!301886 #b00000000000000000000000000000000 Nil!12555)))

(declare-fun lt!301885 () Unit!22138)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38524 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12558) Unit!22138)

(assert (=> b!649745 (= lt!301885 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12555))))

(assert (=> b!649745 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301892 () Unit!22138)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38524 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22138)

(assert (=> b!649745 (= lt!301892 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301886 (select (arr!18464 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372723 () Bool)

(assert (=> b!649745 e!372723))

(declare-fun res!421334 () Bool)

(assert (=> b!649745 (=> (not res!421334) (not e!372723))))

(assert (=> b!649745 (= res!421334 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) j!136))))

(declare-fun b!649746 () Bool)

(declare-fun e!372724 () Bool)

(assert (=> b!649746 (= e!372718 e!372724)))

(declare-fun res!421328 () Bool)

(assert (=> b!649746 (=> (not res!421328) (not e!372724))))

(declare-fun lt!301891 () SeekEntryResult!6911)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!649746 (= res!421328 (and (= lt!301891 (Found!6911 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18464 a!2986) index!984) (select (arr!18464 a!2986) j!136))) (not (= (select (arr!18464 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38524 (_ BitVec 32)) SeekEntryResult!6911)

(assert (=> b!649746 (= lt!301891 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18464 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649747 () Bool)

(declare-fun res!421325 () Bool)

(assert (=> b!649747 (=> (not res!421325) (not e!372717))))

(assert (=> b!649747 (= res!421325 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18464 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649748 () Bool)

(declare-fun res!421322 () Bool)

(assert (=> b!649748 (=> (not res!421322) (not e!372720))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649748 (= res!421322 (validKeyInArray!0 k!1786))))

(declare-fun b!649749 () Bool)

(declare-fun e!372710 () Bool)

(declare-fun e!372713 () Bool)

(assert (=> b!649749 (= e!372710 e!372713)))

(declare-fun res!421324 () Bool)

(assert (=> b!649749 (=> res!421324 e!372713)))

(declare-fun lt!301888 () (_ BitVec 64))

(declare-fun lt!301881 () (_ BitVec 64))

(assert (=> b!649749 (= res!421324 (or (not (= (select (arr!18464 a!2986) j!136) lt!301888)) (not (= (select (arr!18464 a!2986) j!136) lt!301881)) (bvsge j!136 index!984)))))

(declare-fun b!649750 () Bool)

(declare-fun res!421332 () Bool)

(assert (=> b!649750 (=> (not res!421332) (not e!372720))))

(assert (=> b!649750 (= res!421332 (validKeyInArray!0 (select (arr!18464 a!2986) j!136)))))

(declare-fun b!649739 () Bool)

(declare-fun e!372719 () Bool)

(declare-fun lt!301879 () SeekEntryResult!6911)

(assert (=> b!649739 (= e!372719 (= lt!301891 lt!301879))))

(declare-fun res!421331 () Bool)

(assert (=> start!58906 (=> (not res!421331) (not e!372720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58906 (= res!421331 (validMask!0 mask!3053))))

(assert (=> start!58906 e!372720))

(assert (=> start!58906 true))

(declare-fun array_inv!14238 (array!38524) Bool)

(assert (=> start!58906 (array_inv!14238 a!2986)))

(declare-fun b!649751 () Bool)

(declare-fun res!421335 () Bool)

(assert (=> b!649751 (=> (not res!421335) (not e!372720))))

(assert (=> b!649751 (= res!421335 (and (= (size!18828 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18828 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18828 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649752 () Bool)

(declare-fun Unit!22140 () Unit!22138)

(assert (=> b!649752 (= e!372714 Unit!22140)))

(declare-fun lt!301887 () Unit!22138)

(assert (=> b!649752 (= lt!301887 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301886 (select (arr!18464 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!649752 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301893 () Unit!22138)

(assert (=> b!649752 (= lt!301893 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12555))))

(assert (=> b!649752 (arrayNoDuplicates!0 lt!301886 #b00000000000000000000000000000000 Nil!12555)))

(declare-fun lt!301889 () Unit!22138)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38524 (_ BitVec 32) (_ BitVec 32)) Unit!22138)

(assert (=> b!649752 (= lt!301889 (lemmaNoDuplicateFromThenFromBigger!0 lt!301886 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649752 (arrayNoDuplicates!0 lt!301886 j!136 Nil!12555)))

(declare-fun lt!301884 () Unit!22138)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38524 (_ BitVec 64) (_ BitVec 32) List!12558) Unit!22138)

(assert (=> b!649752 (= lt!301884 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301886 (select (arr!18464 a!2986) j!136) j!136 Nil!12555))))

(assert (=> b!649752 false))

(declare-fun b!649753 () Bool)

(assert (=> b!649753 (= e!372713 e!372722)))

(declare-fun res!421339 () Bool)

(assert (=> b!649753 (=> (not res!421339) (not e!372722))))

(assert (=> b!649753 (= res!421339 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) j!136))))

(declare-fun b!649754 () Bool)

(declare-fun e!372716 () Unit!22138)

(declare-fun Unit!22141 () Unit!22138)

(assert (=> b!649754 (= e!372716 Unit!22141)))

(declare-fun b!649755 () Bool)

(declare-fun Unit!22142 () Unit!22138)

(assert (=> b!649755 (= e!372716 Unit!22142)))

(assert (=> b!649755 false))

(declare-fun b!649756 () Bool)

(declare-fun Unit!22143 () Unit!22138)

(assert (=> b!649756 (= e!372714 Unit!22143)))

(declare-fun b!649757 () Bool)

(declare-fun e!372712 () Bool)

(assert (=> b!649757 (= e!372724 (not e!372712))))

(declare-fun res!421327 () Bool)

(assert (=> b!649757 (=> res!421327 e!372712)))

(declare-fun lt!301883 () SeekEntryResult!6911)

(assert (=> b!649757 (= res!421327 (not (= lt!301883 (Found!6911 index!984))))))

(declare-fun lt!301880 () Unit!22138)

(assert (=> b!649757 (= lt!301880 e!372716)))

(declare-fun c!74575 () Bool)

(assert (=> b!649757 (= c!74575 (= lt!301883 Undefined!6911))))

(assert (=> b!649757 (= lt!301883 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301888 lt!301886 mask!3053))))

(assert (=> b!649757 e!372719))

(declare-fun res!421329 () Bool)

(assert (=> b!649757 (=> (not res!421329) (not e!372719))))

(declare-fun lt!301878 () (_ BitVec 32))

(assert (=> b!649757 (= res!421329 (= lt!301879 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301878 vacantSpotIndex!68 lt!301888 lt!301886 mask!3053)))))

(assert (=> b!649757 (= lt!301879 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301878 vacantSpotIndex!68 (select (arr!18464 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649757 (= lt!301888 (select (store (arr!18464 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301882 () Unit!22138)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38524 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22138)

(assert (=> b!649757 (= lt!301882 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301878 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649757 (= lt!301878 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649758 () Bool)

(declare-fun res!421330 () Bool)

(assert (=> b!649758 (=> (not res!421330) (not e!372720))))

(assert (=> b!649758 (= res!421330 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649759 () Bool)

(assert (=> b!649759 (= e!372712 e!372711)))

(declare-fun res!421338 () Bool)

(assert (=> b!649759 (=> res!421338 e!372711)))

(assert (=> b!649759 (= res!421338 (or (not (= (select (arr!18464 a!2986) j!136) lt!301888)) (not (= (select (arr!18464 a!2986) j!136) lt!301881))))))

(assert (=> b!649759 e!372710))

(declare-fun res!421340 () Bool)

(assert (=> b!649759 (=> (not res!421340) (not e!372710))))

(assert (=> b!649759 (= res!421340 (= lt!301881 (select (arr!18464 a!2986) j!136)))))

(assert (=> b!649759 (= lt!301881 (select (store (arr!18464 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!649760 () Bool)

(assert (=> b!649760 (= e!372723 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) index!984))))

(assert (= (and start!58906 res!421331) b!649751))

(assert (= (and b!649751 res!421335) b!649750))

(assert (= (and b!649750 res!421332) b!649748))

(assert (= (and b!649748 res!421322) b!649758))

(assert (= (and b!649758 res!421330) b!649743))

(assert (= (and b!649743 res!421326) b!649738))

(assert (= (and b!649738 res!421323) b!649742))

(assert (= (and b!649742 res!421337) b!649747))

(assert (= (and b!649747 res!421325) b!649741))

(assert (= (and b!649741 res!421333) b!649746))

(assert (= (and b!649746 res!421328) b!649757))

(assert (= (and b!649757 res!421329) b!649739))

(assert (= (and b!649757 c!74575) b!649755))

(assert (= (and b!649757 (not c!74575)) b!649754))

(assert (= (and b!649757 (not res!421327)) b!649759))

(assert (= (and b!649759 res!421340) b!649749))

(assert (= (and b!649749 (not res!421324)) b!649753))

(assert (= (and b!649753 res!421339) b!649744))

(assert (= (and b!649759 (not res!421338)) b!649740))

(assert (= (and b!649740 c!74576) b!649752))

(assert (= (and b!649740 (not c!74576)) b!649756))

(assert (= (and b!649740 (not res!421336)) b!649745))

(assert (= (and b!649745 res!421334) b!649760))

(declare-fun m!623027 () Bool)

(assert (=> b!649749 m!623027))

(declare-fun m!623029 () Bool)

(assert (=> start!58906 m!623029))

(declare-fun m!623031 () Bool)

(assert (=> start!58906 m!623031))

(assert (=> b!649752 m!623027))

(declare-fun m!623033 () Bool)

(assert (=> b!649752 m!623033))

(assert (=> b!649752 m!623027))

(declare-fun m!623035 () Bool)

(assert (=> b!649752 m!623035))

(assert (=> b!649752 m!623027))

(declare-fun m!623037 () Bool)

(assert (=> b!649752 m!623037))

(declare-fun m!623039 () Bool)

(assert (=> b!649752 m!623039))

(declare-fun m!623041 () Bool)

(assert (=> b!649752 m!623041))

(assert (=> b!649752 m!623027))

(declare-fun m!623043 () Bool)

(assert (=> b!649752 m!623043))

(declare-fun m!623045 () Bool)

(assert (=> b!649752 m!623045))

(assert (=> b!649759 m!623027))

(declare-fun m!623047 () Bool)

(assert (=> b!649759 m!623047))

(declare-fun m!623049 () Bool)

(assert (=> b!649759 m!623049))

(assert (=> b!649760 m!623027))

(assert (=> b!649760 m!623027))

(declare-fun m!623051 () Bool)

(assert (=> b!649760 m!623051))

(declare-fun m!623053 () Bool)

(assert (=> b!649742 m!623053))

(declare-fun m!623055 () Bool)

(assert (=> b!649747 m!623055))

(declare-fun m!623057 () Bool)

(assert (=> b!649757 m!623057))

(declare-fun m!623059 () Bool)

(assert (=> b!649757 m!623059))

(assert (=> b!649757 m!623027))

(assert (=> b!649757 m!623047))

(declare-fun m!623061 () Bool)

(assert (=> b!649757 m!623061))

(declare-fun m!623063 () Bool)

(assert (=> b!649757 m!623063))

(declare-fun m!623065 () Bool)

(assert (=> b!649757 m!623065))

(assert (=> b!649757 m!623027))

(declare-fun m!623067 () Bool)

(assert (=> b!649757 m!623067))

(assert (=> b!649750 m!623027))

(assert (=> b!649750 m!623027))

(declare-fun m!623069 () Bool)

(assert (=> b!649750 m!623069))

(assert (=> b!649753 m!623027))

(assert (=> b!649753 m!623027))

(declare-fun m!623071 () Bool)

(assert (=> b!649753 m!623071))

(declare-fun m!623073 () Bool)

(assert (=> b!649743 m!623073))

(declare-fun m!623075 () Bool)

(assert (=> b!649748 m!623075))

(assert (=> b!649741 m!623047))

(declare-fun m!623077 () Bool)

(assert (=> b!649741 m!623077))

(declare-fun m!623079 () Bool)

(assert (=> b!649746 m!623079))

(assert (=> b!649746 m!623027))

(assert (=> b!649746 m!623027))

(declare-fun m!623081 () Bool)

(assert (=> b!649746 m!623081))

(declare-fun m!623083 () Bool)

(assert (=> b!649738 m!623083))

(assert (=> b!649745 m!623027))

(declare-fun m!623085 () Bool)

(assert (=> b!649745 m!623085))

(assert (=> b!649745 m!623027))

(declare-fun m!623087 () Bool)

(assert (=> b!649745 m!623087))

(assert (=> b!649745 m!623027))

(assert (=> b!649745 m!623027))

(assert (=> b!649745 m!623071))

(assert (=> b!649745 m!623039))

(assert (=> b!649745 m!623045))

(assert (=> b!649744 m!623027))

(assert (=> b!649744 m!623027))

(assert (=> b!649744 m!623051))

(declare-fun m!623089 () Bool)

(assert (=> b!649758 m!623089))

(push 1)

(assert (not b!649750))

(assert (not b!649738))

(assert (not b!649757))

(assert (not b!649745))

(assert (not b!649760))

(assert (not b!649748))

(assert (not b!649758))

(assert (not b!649746))

(assert (not b!649752))

(assert (not b!649743))

(assert (not start!58906))

(assert (not b!649744))

(assert (not b!649742))

(assert (not b!649753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!372778 () SeekEntryResult!6911)

(declare-fun lt!301914 () SeekEntryResult!6911)

(declare-fun b!649834 () Bool)

(assert (=> b!649834 (= e!372778 (seekKeyOrZeroReturnVacant!0 (x!58797 lt!301914) (index!29992 lt!301914) (index!29992 lt!301914) k!1786 a!2986 mask!3053))))

(declare-fun b!649836 () Bool)

(assert (=> b!649836 (= e!372778 (MissingZero!6911 (index!29992 lt!301914)))))

(declare-fun b!649837 () Bool)

(declare-fun e!372779 () SeekEntryResult!6911)

(declare-fun e!372777 () SeekEntryResult!6911)

(assert (=> b!649837 (= e!372779 e!372777)))

(declare-fun lt!301912 () (_ BitVec 64))

(assert (=> b!649837 (= lt!301912 (select (arr!18464 a!2986) (index!29992 lt!301914)))))

(declare-fun c!74598 () Bool)

(assert (=> b!649837 (= c!74598 (= lt!301912 k!1786))))

(declare-fun b!649838 () Bool)

(declare-fun c!74600 () Bool)

(assert (=> b!649838 (= c!74600 (= lt!301912 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649838 (= e!372777 e!372778)))

(declare-fun b!649839 () Bool)

(assert (=> b!649839 (= e!372779 Undefined!6911)))

(declare-fun b!649835 () Bool)

(assert (=> b!649835 (= e!372777 (Found!6911 (index!29992 lt!301914)))))

(declare-fun d!91775 () Bool)

(declare-fun lt!301913 () SeekEntryResult!6911)

(assert (=> d!91775 (and (or (is-Undefined!6911 lt!301913) (not (is-Found!6911 lt!301913)) (and (bvsge (index!29991 lt!301913) #b00000000000000000000000000000000) (bvslt (index!29991 lt!301913) (size!18828 a!2986)))) (or (is-Undefined!6911 lt!301913) (is-Found!6911 lt!301913) (not (is-MissingZero!6911 lt!301913)) (and (bvsge (index!29990 lt!301913) #b00000000000000000000000000000000) (bvslt (index!29990 lt!301913) (size!18828 a!2986)))) (or (is-Undefined!6911 lt!301913) (is-Found!6911 lt!301913) (is-MissingZero!6911 lt!301913) (not (is-MissingVacant!6911 lt!301913)) (and (bvsge (index!29993 lt!301913) #b00000000000000000000000000000000) (bvslt (index!29993 lt!301913) (size!18828 a!2986)))) (or (is-Undefined!6911 lt!301913) (ite (is-Found!6911 lt!301913) (= (select (arr!18464 a!2986) (index!29991 lt!301913)) k!1786) (ite (is-MissingZero!6911 lt!301913) (= (select (arr!18464 a!2986) (index!29990 lt!301913)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6911 lt!301913) (= (select (arr!18464 a!2986) (index!29993 lt!301913)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91775 (= lt!301913 e!372779)))

(declare-fun c!74599 () Bool)

(assert (=> d!91775 (= c!74599 (and (is-Intermediate!6911 lt!301914) (undefined!7723 lt!301914)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38524 (_ BitVec 32)) SeekEntryResult!6911)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91775 (= lt!301914 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91775 (validMask!0 mask!3053)))

(assert (=> d!91775 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!301913)))

(assert (= (and d!91775 c!74599) b!649839))

(assert (= (and d!91775 (not c!74599)) b!649837))

(assert (= (and b!649837 c!74598) b!649835))

(assert (= (and b!649837 (not c!74598)) b!649838))

(assert (= (and b!649838 c!74600) b!649836))

(assert (= (and b!649838 (not c!74600)) b!649834))

(declare-fun m!623131 () Bool)

(assert (=> b!649834 m!623131))

(declare-fun m!623133 () Bool)

(assert (=> b!649837 m!623133))

(declare-fun m!623135 () Bool)

(assert (=> d!91775 m!623135))

(declare-fun m!623137 () Bool)

(assert (=> d!91775 m!623137))

(declare-fun m!623139 () Bool)

(assert (=> d!91775 m!623139))

(assert (=> d!91775 m!623137))

(declare-fun m!623141 () Bool)

(assert (=> d!91775 m!623141))

(declare-fun m!623143 () Bool)

(assert (=> d!91775 m!623143))

(assert (=> d!91775 m!623029))

(assert (=> b!649743 d!91775))

(declare-fun d!91787 () Bool)

(declare-fun res!421376 () Bool)

(declare-fun e!372784 () Bool)

(assert (=> d!91787 (=> res!421376 e!372784)))

(assert (=> d!91787 (= res!421376 (= (select (arr!18464 lt!301886) j!136) (select (arr!18464 a!2986) j!136)))))

(assert (=> d!91787 (= (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) j!136) e!372784)))

(declare-fun b!649844 () Bool)

(declare-fun e!372785 () Bool)

(assert (=> b!649844 (= e!372784 e!372785)))

(declare-fun res!421377 () Bool)

(assert (=> b!649844 (=> (not res!421377) (not e!372785))))

(assert (=> b!649844 (= res!421377 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18828 lt!301886)))))

(declare-fun b!649845 () Bool)

(assert (=> b!649845 (= e!372785 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91787 (not res!421376)) b!649844))

(assert (= (and b!649844 res!421377) b!649845))

(declare-fun m!623145 () Bool)

(assert (=> d!91787 m!623145))

(assert (=> b!649845 m!623027))

(declare-fun m!623147 () Bool)

(assert (=> b!649845 m!623147))

(assert (=> b!649753 d!91787))

(declare-fun d!91789 () Bool)

(declare-fun res!421378 () Bool)

(declare-fun e!372786 () Bool)

(assert (=> d!91789 (=> res!421378 e!372786)))

(assert (=> d!91789 (= res!421378 (= (select (arr!18464 lt!301886) index!984) (select (arr!18464 a!2986) j!136)))))

(assert (=> d!91789 (= (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) index!984) e!372786)))

(declare-fun b!649846 () Bool)

(declare-fun e!372787 () Bool)

(assert (=> b!649846 (= e!372786 e!372787)))

(declare-fun res!421379 () Bool)

(assert (=> b!649846 (=> (not res!421379) (not e!372787))))

(assert (=> b!649846 (= res!421379 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18828 lt!301886)))))

(declare-fun b!649847 () Bool)

(assert (=> b!649847 (= e!372787 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91789 (not res!421378)) b!649846))

(assert (= (and b!649846 res!421379) b!649847))

(declare-fun m!623149 () Bool)

(assert (=> d!91789 m!623149))

(assert (=> b!649847 m!623027))

(declare-fun m!623151 () Bool)

(assert (=> b!649847 m!623151))

(assert (=> b!649744 d!91789))

(declare-fun b!649858 () Bool)

(declare-fun e!372799 () Bool)

(declare-fun contains!3178 (List!12558 (_ BitVec 64)) Bool)

(assert (=> b!649858 (= e!372799 (contains!3178 Nil!12555 (select (arr!18464 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!649859 () Bool)

(declare-fun e!372798 () Bool)

(declare-fun e!372796 () Bool)

(assert (=> b!649859 (= e!372798 e!372796)))

(declare-fun res!421387 () Bool)

(assert (=> b!649859 (=> (not res!421387) (not e!372796))))

(assert (=> b!649859 (= res!421387 (not e!372799))))

(declare-fun res!421386 () Bool)

(assert (=> b!649859 (=> (not res!421386) (not e!372799))))

(assert (=> b!649859 (= res!421386 (validKeyInArray!0 (select (arr!18464 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!649860 () Bool)

(declare-fun e!372797 () Bool)

(declare-fun call!33734 () Bool)

(assert (=> b!649860 (= e!372797 call!33734)))

(declare-fun bm!33731 () Bool)

(declare-fun c!74603 () Bool)

(assert (=> bm!33731 (= call!33734 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74603 (Cons!12554 (select (arr!18464 a!2986) #b00000000000000000000000000000000) Nil!12555) Nil!12555)))))

(declare-fun b!649861 () Bool)

(assert (=> b!649861 (= e!372796 e!372797)))

(assert (=> b!649861 (= c!74603 (validKeyInArray!0 (select (arr!18464 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!649862 () Bool)

(assert (=> b!649862 (= e!372797 call!33734)))

(declare-fun d!91791 () Bool)

(declare-fun res!421388 () Bool)

(assert (=> d!91791 (=> res!421388 e!372798)))

(assert (=> d!91791 (= res!421388 (bvsge #b00000000000000000000000000000000 (size!18828 a!2986)))))

(assert (=> d!91791 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12555) e!372798)))

(assert (= (and d!91791 (not res!421388)) b!649859))

(assert (= (and b!649859 res!421386) b!649858))

(assert (= (and b!649859 res!421387) b!649861))

(assert (= (and b!649861 c!74603) b!649862))

(assert (= (and b!649861 (not c!74603)) b!649860))

(assert (= (or b!649862 b!649860) bm!33731))

(declare-fun m!623153 () Bool)

(assert (=> b!649858 m!623153))

(assert (=> b!649858 m!623153))

(declare-fun m!623155 () Bool)

(assert (=> b!649858 m!623155))

(assert (=> b!649859 m!623153))

(assert (=> b!649859 m!623153))

(declare-fun m!623157 () Bool)

(assert (=> b!649859 m!623157))

(assert (=> bm!33731 m!623153))

(declare-fun m!623159 () Bool)

(assert (=> bm!33731 m!623159))

(assert (=> b!649861 m!623153))

(assert (=> b!649861 m!623153))

(assert (=> b!649861 m!623157))

(assert (=> b!649742 d!91791))

(declare-fun b!649869 () Bool)

(declare-fun e!372805 () Bool)

(assert (=> b!649869 (= e!372805 (contains!3178 Nil!12555 (select (arr!18464 lt!301886) #b00000000000000000000000000000000)))))

(declare-fun b!649870 () Bool)

(declare-fun e!372804 () Bool)

(declare-fun e!372802 () Bool)

(assert (=> b!649870 (= e!372804 e!372802)))

(declare-fun res!421390 () Bool)

(assert (=> b!649870 (=> (not res!421390) (not e!372802))))

(assert (=> b!649870 (= res!421390 (not e!372805))))

(declare-fun res!421389 () Bool)

(assert (=> b!649870 (=> (not res!421389) (not e!372805))))

(assert (=> b!649870 (= res!421389 (validKeyInArray!0 (select (arr!18464 lt!301886) #b00000000000000000000000000000000)))))

(declare-fun b!649872 () Bool)

(declare-fun e!372803 () Bool)

(declare-fun call!33735 () Bool)

(assert (=> b!649872 (= e!372803 call!33735)))

(declare-fun bm!33732 () Bool)

(declare-fun c!74606 () Bool)

(assert (=> bm!33732 (= call!33735 (arrayNoDuplicates!0 lt!301886 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74606 (Cons!12554 (select (arr!18464 lt!301886) #b00000000000000000000000000000000) Nil!12555) Nil!12555)))))

(declare-fun b!649874 () Bool)

(assert (=> b!649874 (= e!372802 e!372803)))

(assert (=> b!649874 (= c!74606 (validKeyInArray!0 (select (arr!18464 lt!301886) #b00000000000000000000000000000000)))))

(declare-fun b!649875 () Bool)

(assert (=> b!649875 (= e!372803 call!33735)))

(declare-fun d!91799 () Bool)

(declare-fun res!421391 () Bool)

(assert (=> d!91799 (=> res!421391 e!372804)))

(assert (=> d!91799 (= res!421391 (bvsge #b00000000000000000000000000000000 (size!18828 lt!301886)))))

(assert (=> d!91799 (= (arrayNoDuplicates!0 lt!301886 #b00000000000000000000000000000000 Nil!12555) e!372804)))

(assert (= (and d!91799 (not res!421391)) b!649870))

(assert (= (and b!649870 res!421389) b!649869))

(assert (= (and b!649870 res!421390) b!649874))

(assert (= (and b!649874 c!74606) b!649875))

(assert (= (and b!649874 (not c!74606)) b!649872))

(assert (= (or b!649875 b!649872) bm!33732))

(declare-fun m!623161 () Bool)

(assert (=> b!649869 m!623161))

(assert (=> b!649869 m!623161))

(declare-fun m!623163 () Bool)

(assert (=> b!649869 m!623163))

(assert (=> b!649870 m!623161))

(assert (=> b!649870 m!623161))

(declare-fun m!623165 () Bool)

(assert (=> b!649870 m!623165))

(assert (=> bm!33732 m!623161))

(declare-fun m!623167 () Bool)

(assert (=> bm!33732 m!623167))

(assert (=> b!649874 m!623161))

(assert (=> b!649874 m!623161))

(assert (=> b!649874 m!623165))

(assert (=> b!649752 d!91799))

(declare-fun b!649880 () Bool)

(declare-fun e!372813 () Bool)

(assert (=> b!649880 (= e!372813 (contains!3178 Nil!12555 (select (arr!18464 lt!301886) j!136)))))

(declare-fun b!649881 () Bool)

(declare-fun e!372812 () Bool)

(declare-fun e!372810 () Bool)

(assert (=> b!649881 (= e!372812 e!372810)))

(declare-fun res!421393 () Bool)

(assert (=> b!649881 (=> (not res!421393) (not e!372810))))

(assert (=> b!649881 (= res!421393 (not e!372813))))

(declare-fun res!421392 () Bool)

(assert (=> b!649881 (=> (not res!421392) (not e!372813))))

(assert (=> b!649881 (= res!421392 (validKeyInArray!0 (select (arr!18464 lt!301886) j!136)))))

(declare-fun b!649882 () Bool)

(declare-fun e!372811 () Bool)

(declare-fun call!33736 () Bool)

(assert (=> b!649882 (= e!372811 call!33736)))

(declare-fun bm!33733 () Bool)

(declare-fun c!74611 () Bool)

(assert (=> bm!33733 (= call!33736 (arrayNoDuplicates!0 lt!301886 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74611 (Cons!12554 (select (arr!18464 lt!301886) j!136) Nil!12555) Nil!12555)))))

(declare-fun b!649883 () Bool)

(assert (=> b!649883 (= e!372810 e!372811)))

(assert (=> b!649883 (= c!74611 (validKeyInArray!0 (select (arr!18464 lt!301886) j!136)))))

(declare-fun b!649884 () Bool)

(assert (=> b!649884 (= e!372811 call!33736)))

(declare-fun d!91801 () Bool)

(declare-fun res!421394 () Bool)

(assert (=> d!91801 (=> res!421394 e!372812)))

(assert (=> d!91801 (= res!421394 (bvsge j!136 (size!18828 lt!301886)))))

(assert (=> d!91801 (= (arrayNoDuplicates!0 lt!301886 j!136 Nil!12555) e!372812)))

(assert (= (and d!91801 (not res!421394)) b!649881))

(assert (= (and b!649881 res!421392) b!649880))

(assert (= (and b!649881 res!421393) b!649883))

(assert (= (and b!649883 c!74611) b!649884))

(assert (= (and b!649883 (not c!74611)) b!649882))

(assert (= (or b!649884 b!649882) bm!33733))

(assert (=> b!649880 m!623145))

(assert (=> b!649880 m!623145))

(declare-fun m!623169 () Bool)

(assert (=> b!649880 m!623169))

(assert (=> b!649881 m!623145))

(assert (=> b!649881 m!623145))

(declare-fun m!623171 () Bool)

(assert (=> b!649881 m!623171))

(assert (=> bm!33733 m!623145))

(declare-fun m!623173 () Bool)

(assert (=> bm!33733 m!623173))

(assert (=> b!649883 m!623145))

(assert (=> b!649883 m!623145))

(assert (=> b!649883 m!623171))

(assert (=> b!649752 d!91801))

(declare-fun d!91803 () Bool)

(assert (=> d!91803 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301923 () Unit!22138)

(declare-fun choose!114 (array!38524 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22138)

(assert (=> d!91803 (= lt!301923 (choose!114 lt!301886 (select (arr!18464 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91803 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91803 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301886 (select (arr!18464 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!301923)))

(declare-fun bs!19386 () Bool)

(assert (= bs!19386 d!91803))

(assert (=> bs!19386 m!623027))

(assert (=> bs!19386 m!623037))

(assert (=> bs!19386 m!623027))

(declare-fun m!623175 () Bool)

(assert (=> bs!19386 m!623175))

(assert (=> b!649752 d!91803))

(declare-fun d!91805 () Bool)

(assert (=> d!91805 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18828 lt!301886)) (not (= (select (arr!18464 lt!301886) j!136) (select (arr!18464 a!2986) j!136))))))

(declare-fun lt!301926 () Unit!22138)

(declare-fun choose!21 (array!38524 (_ BitVec 64) (_ BitVec 32) List!12558) Unit!22138)

(assert (=> d!91805 (= lt!301926 (choose!21 lt!301886 (select (arr!18464 a!2986) j!136) j!136 Nil!12555))))

(assert (=> d!91805 (bvslt (size!18828 lt!301886) #b01111111111111111111111111111111)))

(assert (=> d!91805 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301886 (select (arr!18464 a!2986) j!136) j!136 Nil!12555) lt!301926)))

(declare-fun bs!19387 () Bool)

(assert (= bs!19387 d!91805))

(assert (=> bs!19387 m!623145))

(assert (=> bs!19387 m!623027))

(declare-fun m!623183 () Bool)

(assert (=> bs!19387 m!623183))

(assert (=> b!649752 d!91805))

(declare-fun d!91811 () Bool)

(declare-fun res!421395 () Bool)

(declare-fun e!372817 () Bool)

(assert (=> d!91811 (=> res!421395 e!372817)))

(assert (=> d!91811 (= res!421395 (= (select (arr!18464 lt!301886) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18464 a!2986) j!136)))))

(assert (=> d!91811 (= (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!372817)))

(declare-fun b!649891 () Bool)

(declare-fun e!372818 () Bool)

(assert (=> b!649891 (= e!372817 e!372818)))

(declare-fun res!421396 () Bool)

(assert (=> b!649891 (=> (not res!421396) (not e!372818))))

(assert (=> b!649891 (= res!421396 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18828 lt!301886)))))

(declare-fun b!649892 () Bool)

(assert (=> b!649892 (= e!372818 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91811 (not res!421395)) b!649891))

(assert (= (and b!649891 res!421396) b!649892))

(declare-fun m!623185 () Bool)

(assert (=> d!91811 m!623185))

(assert (=> b!649892 m!623027))

(declare-fun m!623187 () Bool)

(assert (=> b!649892 m!623187))

(assert (=> b!649752 d!91811))

(declare-fun d!91813 () Bool)

(assert (=> d!91813 (arrayNoDuplicates!0 lt!301886 j!136 Nil!12555)))

(declare-fun lt!301929 () Unit!22138)

(declare-fun choose!39 (array!38524 (_ BitVec 32) (_ BitVec 32)) Unit!22138)

(assert (=> d!91813 (= lt!301929 (choose!39 lt!301886 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91813 (bvslt (size!18828 lt!301886) #b01111111111111111111111111111111)))

(assert (=> d!91813 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!301886 #b00000000000000000000000000000000 j!136) lt!301929)))

(declare-fun bs!19388 () Bool)

(assert (= bs!19388 d!91813))

(assert (=> bs!19388 m!623041))

(declare-fun m!623189 () Bool)

(assert (=> bs!19388 m!623189))

(assert (=> b!649752 d!91813))

(declare-fun d!91815 () Bool)

(declare-fun e!372821 () Bool)

(assert (=> d!91815 e!372821))

(declare-fun res!421399 () Bool)

(assert (=> d!91815 (=> (not res!421399) (not e!372821))))

(assert (=> d!91815 (= res!421399 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18828 a!2986))))))

(declare-fun lt!301936 () Unit!22138)

(declare-fun choose!41 (array!38524 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12558) Unit!22138)

(assert (=> d!91815 (= lt!301936 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12555))))

(assert (=> d!91815 (bvslt (size!18828 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91815 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12555) lt!301936)))

(declare-fun b!649897 () Bool)

(assert (=> b!649897 (= e!372821 (arrayNoDuplicates!0 (array!38525 (store (arr!18464 a!2986) i!1108 k!1786) (size!18828 a!2986)) #b00000000000000000000000000000000 Nil!12555))))

(assert (= (and d!91815 res!421399) b!649897))

(declare-fun m!623191 () Bool)

(assert (=> d!91815 m!623191))

(assert (=> b!649897 m!623047))

(declare-fun m!623193 () Bool)

(assert (=> b!649897 m!623193))

(assert (=> b!649752 d!91815))

(declare-fun d!91817 () Bool)

(declare-fun res!421410 () Bool)

(declare-fun e!372846 () Bool)

(assert (=> d!91817 (=> res!421410 e!372846)))

(assert (=> d!91817 (= res!421410 (bvsge #b00000000000000000000000000000000 (size!18828 a!2986)))))

(assert (=> d!91817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!372846)))

(declare-fun b!649934 () Bool)

(declare-fun e!372848 () Bool)

(declare-fun call!33739 () Bool)

(assert (=> b!649934 (= e!372848 call!33739)))

(declare-fun b!649935 () Bool)

(declare-fun e!372847 () Bool)

(assert (=> b!649935 (= e!372847 call!33739)))

(declare-fun bm!33736 () Bool)

(assert (=> bm!33736 (= call!33739 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!649936 () Bool)

(assert (=> b!649936 (= e!372848 e!372847)))

(declare-fun lt!301950 () (_ BitVec 64))

(assert (=> b!649936 (= lt!301950 (select (arr!18464 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!301952 () Unit!22138)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38524 (_ BitVec 64) (_ BitVec 32)) Unit!22138)

(assert (=> b!649936 (= lt!301952 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!301950 #b00000000000000000000000000000000))))

(assert (=> b!649936 (arrayContainsKey!0 a!2986 lt!301950 #b00000000000000000000000000000000)))

(declare-fun lt!301951 () Unit!22138)

(assert (=> b!649936 (= lt!301951 lt!301952)))

(declare-fun res!421411 () Bool)

(assert (=> b!649936 (= res!421411 (= (seekEntryOrOpen!0 (select (arr!18464 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6911 #b00000000000000000000000000000000)))))

(assert (=> b!649936 (=> (not res!421411) (not e!372847))))

(declare-fun b!649937 () Bool)

(assert (=> b!649937 (= e!372846 e!372848)))

(declare-fun c!74629 () Bool)

(assert (=> b!649937 (= c!74629 (validKeyInArray!0 (select (arr!18464 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91817 (not res!421410)) b!649937))

(assert (= (and b!649937 c!74629) b!649936))

(assert (= (and b!649937 (not c!74629)) b!649934))

(assert (= (and b!649936 res!421411) b!649935))

(assert (= (or b!649935 b!649934) bm!33736))

(declare-fun m!623223 () Bool)

(assert (=> bm!33736 m!623223))

(assert (=> b!649936 m!623153))

(declare-fun m!623225 () Bool)

(assert (=> b!649936 m!623225))

(declare-fun m!623227 () Bool)

(assert (=> b!649936 m!623227))

(assert (=> b!649936 m!623153))

(declare-fun m!623229 () Bool)

(assert (=> b!649936 m!623229))

(assert (=> b!649937 m!623153))

(assert (=> b!649937 m!623153))

(assert (=> b!649937 m!623157))

(assert (=> b!649738 d!91817))

(declare-fun d!91831 () Bool)

(assert (=> d!91831 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!649748 d!91831))

(declare-fun d!91833 () Bool)

(assert (=> d!91833 (= (validKeyInArray!0 (select (arr!18464 a!2986) j!136)) (and (not (= (select (arr!18464 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18464 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!649750 d!91833))

(assert (=> b!649760 d!91789))

(declare-fun b!649976 () Bool)

(declare-fun c!74642 () Bool)

(declare-fun lt!301977 () (_ BitVec 64))

(assert (=> b!649976 (= c!74642 (= lt!301977 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!372878 () SeekEntryResult!6911)

(declare-fun e!372879 () SeekEntryResult!6911)

(assert (=> b!649976 (= e!372878 e!372879)))

(declare-fun b!649977 () Bool)

(assert (=> b!649977 (= e!372879 (MissingVacant!6911 vacantSpotIndex!68))))

(declare-fun b!649978 () Bool)

(assert (=> b!649978 (= e!372878 (Found!6911 index!984))))

(declare-fun b!649979 () Bool)

(declare-fun e!372877 () SeekEntryResult!6911)

(assert (=> b!649979 (= e!372877 e!372878)))

(declare-fun c!74641 () Bool)

(assert (=> b!649979 (= c!74641 (= lt!301977 (select (arr!18464 a!2986) j!136)))))

(declare-fun b!649980 () Bool)

(assert (=> b!649980 (= e!372877 Undefined!6911)))

(declare-fun lt!301978 () SeekEntryResult!6911)

(declare-fun d!91835 () Bool)

(assert (=> d!91835 (and (or (is-Undefined!6911 lt!301978) (not (is-Found!6911 lt!301978)) (and (bvsge (index!29991 lt!301978) #b00000000000000000000000000000000) (bvslt (index!29991 lt!301978) (size!18828 a!2986)))) (or (is-Undefined!6911 lt!301978) (is-Found!6911 lt!301978) (not (is-MissingVacant!6911 lt!301978)) (not (= (index!29993 lt!301978) vacantSpotIndex!68)) (and (bvsge (index!29993 lt!301978) #b00000000000000000000000000000000) (bvslt (index!29993 lt!301978) (size!18828 a!2986)))) (or (is-Undefined!6911 lt!301978) (ite (is-Found!6911 lt!301978) (= (select (arr!18464 a!2986) (index!29991 lt!301978)) (select (arr!18464 a!2986) j!136)) (and (is-MissingVacant!6911 lt!301978) (= (index!29993 lt!301978) vacantSpotIndex!68) (= (select (arr!18464 a!2986) (index!29993 lt!301978)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91835 (= lt!301978 e!372877)))

(declare-fun c!74640 () Bool)

(assert (=> d!91835 (= c!74640 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91835 (= lt!301977 (select (arr!18464 a!2986) index!984))))

(assert (=> d!91835 (validMask!0 mask!3053)))

(assert (=> d!91835 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18464 a!2986) j!136) a!2986 mask!3053) lt!301978)))

(declare-fun b!649981 () Bool)

(assert (=> b!649981 (= e!372879 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18464 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!91835 c!74640) b!649980))

(assert (= (and d!91835 (not c!74640)) b!649979))

(assert (= (and b!649979 c!74641) b!649978))

(assert (= (and b!649979 (not c!74641)) b!649976))

(assert (= (and b!649976 c!74642) b!649977))

(assert (= (and b!649976 (not c!74642)) b!649981))

(declare-fun m!623263 () Bool)

(assert (=> d!91835 m!623263))

(declare-fun m!623265 () Bool)

(assert (=> d!91835 m!623265))

(assert (=> d!91835 m!623079))

(assert (=> d!91835 m!623029))

(assert (=> b!649981 m!623057))

(assert (=> b!649981 m!623057))

(assert (=> b!649981 m!623027))

(declare-fun m!623267 () Bool)

(assert (=> b!649981 m!623267))

(assert (=> b!649746 d!91835))

(declare-fun d!91853 () Bool)

(assert (=> d!91853 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58906 d!91853))

(declare-fun d!91863 () Bool)

(assert (=> d!91863 (= (array_inv!14238 a!2986) (bvsge (size!18828 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58906 d!91863))

(assert (=> b!649745 d!91799))

(declare-fun d!91865 () Bool)

(assert (=> d!91865 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301984 () Unit!22138)

(assert (=> d!91865 (= lt!301984 (choose!114 lt!301886 (select (arr!18464 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91865 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91865 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301886 (select (arr!18464 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!301984)))

(declare-fun bs!19391 () Bool)

(assert (= bs!19391 d!91865))

(assert (=> bs!19391 m!623027))

(assert (=> bs!19391 m!623087))

(assert (=> bs!19391 m!623027))

(declare-fun m!623291 () Bool)

(assert (=> bs!19391 m!623291))

(assert (=> b!649745 d!91865))

(assert (=> b!649745 d!91787))

(declare-fun d!91867 () Bool)

(declare-fun res!421433 () Bool)

(declare-fun e!372889 () Bool)

(assert (=> d!91867 (=> res!421433 e!372889)))

(assert (=> d!91867 (= res!421433 (= (select (arr!18464 lt!301886) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18464 a!2986) j!136)))))

(assert (=> d!91867 (= (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!372889)))

(declare-fun b!649997 () Bool)

(declare-fun e!372890 () Bool)

(assert (=> b!649997 (= e!372889 e!372890)))

(declare-fun res!421434 () Bool)

(assert (=> b!649997 (=> (not res!421434) (not e!372890))))

(assert (=> b!649997 (= res!421434 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18828 lt!301886)))))

(declare-fun b!649998 () Bool)

(assert (=> b!649998 (= e!372890 (arrayContainsKey!0 lt!301886 (select (arr!18464 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91867 (not res!421433)) b!649997))

(assert (= (and b!649997 res!421434) b!649998))

(declare-fun m!623293 () Bool)

(assert (=> d!91867 m!623293))

(assert (=> b!649998 m!623027))

(declare-fun m!623295 () Bool)

(assert (=> b!649998 m!623295))

(assert (=> b!649745 d!91867))

(assert (=> b!649745 d!91815))

(declare-fun d!91869 () Bool)

(declare-fun res!421437 () Bool)

(declare-fun e!372893 () Bool)

(assert (=> d!91869 (=> res!421437 e!372893)))

(assert (=> d!91869 (= res!421437 (= (select (arr!18464 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!91869 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!372893)))

(declare-fun b!649999 () Bool)

(declare-fun e!372894 () Bool)

(assert (=> b!649999 (= e!372893 e!372894)))

(declare-fun res!421438 () Bool)

(assert (=> b!649999 (=> (not res!421438) (not e!372894))))

(assert (=> b!649999 (= res!421438 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18828 a!2986)))))

(declare-fun b!650000 () Bool)

(assert (=> b!650000 (= e!372894 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91869 (not res!421437)) b!649999))

(assert (= (and b!649999 res!421438) b!650000))

(assert (=> d!91869 m!623153))

(declare-fun m!623297 () Bool)

(assert (=> b!650000 m!623297))

(assert (=> b!649758 d!91869))

(declare-fun b!650011 () Bool)

(declare-fun c!74655 () Bool)

(declare-fun lt!301997 () (_ BitVec 64))

(assert (=> b!650011 (= c!74655 (= lt!301997 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!372900 () SeekEntryResult!6911)

(declare-fun e!372901 () SeekEntryResult!6911)

(assert (=> b!650011 (= e!372900 e!372901)))

