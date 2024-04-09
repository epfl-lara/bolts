; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58880 () Bool)

(assert start!58880)

(declare-fun b!648753 () Bool)

(declare-fun res!420507 () Bool)

(declare-fun e!372114 () Bool)

(assert (=> b!648753 (=> (not res!420507) (not e!372114))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38498 0))(
  ( (array!38499 (arr!18451 (Array (_ BitVec 32) (_ BitVec 64))) (size!18815 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38498)

(assert (=> b!648753 (= res!420507 (and (= (size!18815 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18815 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18815 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648754 () Bool)

(declare-fun e!372104 () Bool)

(declare-datatypes ((SeekEntryResult!6898 0))(
  ( (MissingZero!6898 (index!29938 (_ BitVec 32))) (Found!6898 (index!29939 (_ BitVec 32))) (Intermediate!6898 (undefined!7710 Bool) (index!29940 (_ BitVec 32)) (x!58752 (_ BitVec 32))) (Undefined!6898) (MissingVacant!6898 (index!29941 (_ BitVec 32))) )
))
(declare-fun lt!301214 () SeekEntryResult!6898)

(declare-fun lt!301226 () SeekEntryResult!6898)

(assert (=> b!648754 (= e!372104 (= lt!301214 lt!301226))))

(declare-fun b!648755 () Bool)

(declare-fun res!420508 () Bool)

(assert (=> b!648755 (=> (not res!420508) (not e!372114))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648755 (= res!420508 (validKeyInArray!0 k0!1786))))

(declare-fun b!648756 () Bool)

(declare-fun res!420505 () Bool)

(declare-fun e!372111 () Bool)

(assert (=> b!648756 (=> (not res!420505) (not e!372111))))

(declare-datatypes ((List!12545 0))(
  ( (Nil!12542) (Cons!12541 (h!13586 (_ BitVec 64)) (t!18781 List!12545)) )
))
(declare-fun arrayNoDuplicates!0 (array!38498 (_ BitVec 32) List!12545) Bool)

(assert (=> b!648756 (= res!420505 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12542))))

(declare-fun b!648757 () Bool)

(declare-datatypes ((Unit!22060 0))(
  ( (Unit!22061) )
))
(declare-fun e!372108 () Unit!22060)

(declare-fun Unit!22062 () Unit!22060)

(assert (=> b!648757 (= e!372108 Unit!22062)))

(declare-fun b!648758 () Bool)

(declare-fun Unit!22063 () Unit!22060)

(assert (=> b!648758 (= e!372108 Unit!22063)))

(assert (=> b!648758 false))

(declare-fun b!648759 () Bool)

(assert (=> b!648759 (= e!372114 e!372111)))

(declare-fun res!420493 () Bool)

(assert (=> b!648759 (=> (not res!420493) (not e!372111))))

(declare-fun lt!301220 () SeekEntryResult!6898)

(assert (=> b!648759 (= res!420493 (or (= lt!301220 (MissingZero!6898 i!1108)) (= lt!301220 (MissingVacant!6898 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38498 (_ BitVec 32)) SeekEntryResult!6898)

(assert (=> b!648759 (= lt!301220 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!648760 () Bool)

(declare-fun e!372103 () Bool)

(declare-fun e!372113 () Bool)

(assert (=> b!648760 (= e!372103 e!372113)))

(declare-fun res!420509 () Bool)

(assert (=> b!648760 (=> res!420509 e!372113)))

(declare-fun lt!301216 () (_ BitVec 64))

(declare-fun lt!301222 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!648760 (= res!420509 (or (not (= (select (arr!18451 a!2986) j!136) lt!301222)) (not (= (select (arr!18451 a!2986) j!136) lt!301216)) (bvsge j!136 index!984)))))

(declare-fun b!648762 () Bool)

(declare-fun e!372115 () Unit!22060)

(declare-fun Unit!22064 () Unit!22060)

(assert (=> b!648762 (= e!372115 Unit!22064)))

(declare-fun b!648763 () Bool)

(declare-fun e!372107 () Bool)

(declare-fun e!372116 () Bool)

(assert (=> b!648763 (= e!372107 e!372116)))

(declare-fun res!420494 () Bool)

(assert (=> b!648763 (=> (not res!420494) (not e!372116))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!648763 (= res!420494 (and (= lt!301214 (Found!6898 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18451 a!2986) index!984) (select (arr!18451 a!2986) j!136))) (not (= (select (arr!18451 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38498 (_ BitVec 32)) SeekEntryResult!6898)

(assert (=> b!648763 (= lt!301214 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18451 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648764 () Bool)

(declare-fun e!372112 () Bool)

(declare-fun e!372105 () Bool)

(assert (=> b!648764 (= e!372112 e!372105)))

(declare-fun res!420501 () Bool)

(assert (=> b!648764 (=> res!420501 e!372105)))

(assert (=> b!648764 (= res!420501 (bvsge index!984 j!136))))

(declare-fun lt!301219 () Unit!22060)

(assert (=> b!648764 (= lt!301219 e!372115)))

(declare-fun c!74498 () Bool)

(assert (=> b!648764 (= c!74498 (bvslt j!136 index!984))))

(declare-fun b!648765 () Bool)

(declare-fun Unit!22065 () Unit!22060)

(assert (=> b!648765 (= e!372115 Unit!22065)))

(declare-fun lt!301218 () Unit!22060)

(declare-fun lt!301229 () array!38498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38498 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22060)

(assert (=> b!648765 (= lt!301218 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301229 (select (arr!18451 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648765 (arrayContainsKey!0 lt!301229 (select (arr!18451 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301227 () Unit!22060)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38498 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12545) Unit!22060)

(assert (=> b!648765 (= lt!301227 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12542))))

(assert (=> b!648765 (arrayNoDuplicates!0 lt!301229 #b00000000000000000000000000000000 Nil!12542)))

(declare-fun lt!301228 () Unit!22060)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38498 (_ BitVec 32) (_ BitVec 32)) Unit!22060)

(assert (=> b!648765 (= lt!301228 (lemmaNoDuplicateFromThenFromBigger!0 lt!301229 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648765 (arrayNoDuplicates!0 lt!301229 j!136 Nil!12542)))

(declare-fun lt!301221 () Unit!22060)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38498 (_ BitVec 64) (_ BitVec 32) List!12545) Unit!22060)

(assert (=> b!648765 (= lt!301221 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301229 (select (arr!18451 a!2986) j!136) j!136 Nil!12542))))

(assert (=> b!648765 false))

(declare-fun b!648766 () Bool)

(declare-fun res!420502 () Bool)

(declare-fun e!372117 () Bool)

(assert (=> b!648766 (=> res!420502 e!372117)))

(declare-fun contains!3168 (List!12545 (_ BitVec 64)) Bool)

(assert (=> b!648766 (= res!420502 (contains!3168 Nil!12542 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648767 () Bool)

(declare-fun res!420499 () Bool)

(assert (=> b!648767 (=> res!420499 e!372117)))

(declare-fun noDuplicate!428 (List!12545) Bool)

(assert (=> b!648767 (= res!420499 (not (noDuplicate!428 Nil!12542)))))

(declare-fun b!648768 () Bool)

(declare-fun res!420495 () Bool)

(assert (=> b!648768 (=> (not res!420495) (not e!372114))))

(assert (=> b!648768 (= res!420495 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648769 () Bool)

(declare-fun res!420504 () Bool)

(assert (=> b!648769 (=> (not res!420504) (not e!372111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38498 (_ BitVec 32)) Bool)

(assert (=> b!648769 (= res!420504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648770 () Bool)

(assert (=> b!648770 (= e!372111 e!372107)))

(declare-fun res!420510 () Bool)

(assert (=> b!648770 (=> (not res!420510) (not e!372107))))

(assert (=> b!648770 (= res!420510 (= (select (store (arr!18451 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648770 (= lt!301229 (array!38499 (store (arr!18451 a!2986) i!1108 k0!1786) (size!18815 a!2986)))))

(declare-fun b!648771 () Bool)

(declare-fun res!420506 () Bool)

(assert (=> b!648771 (=> (not res!420506) (not e!372114))))

(assert (=> b!648771 (= res!420506 (validKeyInArray!0 (select (arr!18451 a!2986) j!136)))))

(declare-fun b!648772 () Bool)

(declare-fun e!372109 () Bool)

(assert (=> b!648772 (= e!372109 (arrayContainsKey!0 lt!301229 (select (arr!18451 a!2986) j!136) index!984))))

(declare-fun b!648773 () Bool)

(declare-fun e!372118 () Bool)

(assert (=> b!648773 (= e!372116 (not e!372118))))

(declare-fun res!420498 () Bool)

(assert (=> b!648773 (=> res!420498 e!372118)))

(declare-fun lt!301230 () SeekEntryResult!6898)

(assert (=> b!648773 (= res!420498 (not (= lt!301230 (Found!6898 index!984))))))

(declare-fun lt!301223 () Unit!22060)

(assert (=> b!648773 (= lt!301223 e!372108)))

(declare-fun c!74497 () Bool)

(assert (=> b!648773 (= c!74497 (= lt!301230 Undefined!6898))))

(assert (=> b!648773 (= lt!301230 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301222 lt!301229 mask!3053))))

(assert (=> b!648773 e!372104))

(declare-fun res!420511 () Bool)

(assert (=> b!648773 (=> (not res!420511) (not e!372104))))

(declare-fun lt!301224 () (_ BitVec 32))

(assert (=> b!648773 (= res!420511 (= lt!301226 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301224 vacantSpotIndex!68 lt!301222 lt!301229 mask!3053)))))

(assert (=> b!648773 (= lt!301226 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301224 vacantSpotIndex!68 (select (arr!18451 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648773 (= lt!301222 (select (store (arr!18451 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!301215 () Unit!22060)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38498 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22060)

(assert (=> b!648773 (= lt!301215 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301224 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648773 (= lt!301224 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648774 () Bool)

(assert (=> b!648774 (= e!372118 e!372112)))

(declare-fun res!420512 () Bool)

(assert (=> b!648774 (=> res!420512 e!372112)))

(assert (=> b!648774 (= res!420512 (or (not (= (select (arr!18451 a!2986) j!136) lt!301222)) (not (= (select (arr!18451 a!2986) j!136) lt!301216))))))

(assert (=> b!648774 e!372103))

(declare-fun res!420497 () Bool)

(assert (=> b!648774 (=> (not res!420497) (not e!372103))))

(assert (=> b!648774 (= res!420497 (= lt!301216 (select (arr!18451 a!2986) j!136)))))

(assert (=> b!648774 (= lt!301216 (select (store (arr!18451 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!648761 () Bool)

(declare-fun e!372106 () Bool)

(assert (=> b!648761 (= e!372113 e!372106)))

(declare-fun res!420513 () Bool)

(assert (=> b!648761 (=> (not res!420513) (not e!372106))))

(assert (=> b!648761 (= res!420513 (arrayContainsKey!0 lt!301229 (select (arr!18451 a!2986) j!136) j!136))))

(declare-fun res!420514 () Bool)

(assert (=> start!58880 (=> (not res!420514) (not e!372114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58880 (= res!420514 (validMask!0 mask!3053))))

(assert (=> start!58880 e!372114))

(assert (=> start!58880 true))

(declare-fun array_inv!14225 (array!38498) Bool)

(assert (=> start!58880 (array_inv!14225 a!2986)))

(declare-fun b!648775 () Bool)

(declare-fun res!420515 () Bool)

(assert (=> b!648775 (=> (not res!420515) (not e!372111))))

(assert (=> b!648775 (= res!420515 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18451 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648776 () Bool)

(assert (=> b!648776 (= e!372106 (arrayContainsKey!0 lt!301229 (select (arr!18451 a!2986) j!136) index!984))))

(declare-fun b!648777 () Bool)

(assert (=> b!648777 (= e!372117 true)))

(declare-fun lt!301225 () Bool)

(assert (=> b!648777 (= lt!301225 (contains!3168 Nil!12542 k0!1786))))

(declare-fun b!648778 () Bool)

(declare-fun res!420503 () Bool)

(assert (=> b!648778 (=> res!420503 e!372117)))

(assert (=> b!648778 (= res!420503 (contains!3168 Nil!12542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648779 () Bool)

(assert (=> b!648779 (= e!372105 e!372117)))

(declare-fun res!420496 () Bool)

(assert (=> b!648779 (=> res!420496 e!372117)))

(assert (=> b!648779 (= res!420496 (or (bvsge (size!18815 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18815 a!2986))))))

(assert (=> b!648779 (arrayContainsKey!0 lt!301229 (select (arr!18451 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301217 () Unit!22060)

(assert (=> b!648779 (= lt!301217 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301229 (select (arr!18451 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!648779 e!372109))

(declare-fun res!420500 () Bool)

(assert (=> b!648779 (=> (not res!420500) (not e!372109))))

(assert (=> b!648779 (= res!420500 (arrayContainsKey!0 lt!301229 (select (arr!18451 a!2986) j!136) j!136))))

(assert (= (and start!58880 res!420514) b!648753))

(assert (= (and b!648753 res!420507) b!648771))

(assert (= (and b!648771 res!420506) b!648755))

(assert (= (and b!648755 res!420508) b!648768))

(assert (= (and b!648768 res!420495) b!648759))

(assert (= (and b!648759 res!420493) b!648769))

(assert (= (and b!648769 res!420504) b!648756))

(assert (= (and b!648756 res!420505) b!648775))

(assert (= (and b!648775 res!420515) b!648770))

(assert (= (and b!648770 res!420510) b!648763))

(assert (= (and b!648763 res!420494) b!648773))

(assert (= (and b!648773 res!420511) b!648754))

(assert (= (and b!648773 c!74497) b!648758))

(assert (= (and b!648773 (not c!74497)) b!648757))

(assert (= (and b!648773 (not res!420498)) b!648774))

(assert (= (and b!648774 res!420497) b!648760))

(assert (= (and b!648760 (not res!420509)) b!648761))

(assert (= (and b!648761 res!420513) b!648776))

(assert (= (and b!648774 (not res!420512)) b!648764))

(assert (= (and b!648764 c!74498) b!648765))

(assert (= (and b!648764 (not c!74498)) b!648762))

(assert (= (and b!648764 (not res!420501)) b!648779))

(assert (= (and b!648779 res!420500) b!648772))

(assert (= (and b!648779 (not res!420496)) b!648767))

(assert (= (and b!648767 (not res!420499)) b!648766))

(assert (= (and b!648766 (not res!420502)) b!648778))

(assert (= (and b!648778 (not res!420503)) b!648777))

(declare-fun m!622131 () Bool)

(assert (=> b!648771 m!622131))

(assert (=> b!648771 m!622131))

(declare-fun m!622133 () Bool)

(assert (=> b!648771 m!622133))

(declare-fun m!622135 () Bool)

(assert (=> b!648766 m!622135))

(declare-fun m!622137 () Bool)

(assert (=> b!648778 m!622137))

(declare-fun m!622139 () Bool)

(assert (=> b!648755 m!622139))

(assert (=> b!648765 m!622131))

(declare-fun m!622141 () Bool)

(assert (=> b!648765 m!622141))

(declare-fun m!622143 () Bool)

(assert (=> b!648765 m!622143))

(assert (=> b!648765 m!622131))

(declare-fun m!622145 () Bool)

(assert (=> b!648765 m!622145))

(assert (=> b!648765 m!622131))

(declare-fun m!622147 () Bool)

(assert (=> b!648765 m!622147))

(assert (=> b!648765 m!622131))

(declare-fun m!622149 () Bool)

(assert (=> b!648765 m!622149))

(declare-fun m!622151 () Bool)

(assert (=> b!648765 m!622151))

(declare-fun m!622153 () Bool)

(assert (=> b!648765 m!622153))

(declare-fun m!622155 () Bool)

(assert (=> b!648770 m!622155))

(declare-fun m!622157 () Bool)

(assert (=> b!648770 m!622157))

(declare-fun m!622159 () Bool)

(assert (=> b!648756 m!622159))

(declare-fun m!622161 () Bool)

(assert (=> b!648775 m!622161))

(declare-fun m!622163 () Bool)

(assert (=> b!648759 m!622163))

(assert (=> b!648776 m!622131))

(assert (=> b!648776 m!622131))

(declare-fun m!622165 () Bool)

(assert (=> b!648776 m!622165))

(declare-fun m!622167 () Bool)

(assert (=> b!648767 m!622167))

(declare-fun m!622169 () Bool)

(assert (=> start!58880 m!622169))

(declare-fun m!622171 () Bool)

(assert (=> start!58880 m!622171))

(assert (=> b!648761 m!622131))

(assert (=> b!648761 m!622131))

(declare-fun m!622173 () Bool)

(assert (=> b!648761 m!622173))

(declare-fun m!622175 () Bool)

(assert (=> b!648777 m!622175))

(declare-fun m!622177 () Bool)

(assert (=> b!648763 m!622177))

(assert (=> b!648763 m!622131))

(assert (=> b!648763 m!622131))

(declare-fun m!622179 () Bool)

(assert (=> b!648763 m!622179))

(assert (=> b!648760 m!622131))

(declare-fun m!622181 () Bool)

(assert (=> b!648773 m!622181))

(declare-fun m!622183 () Bool)

(assert (=> b!648773 m!622183))

(assert (=> b!648773 m!622131))

(declare-fun m!622185 () Bool)

(assert (=> b!648773 m!622185))

(assert (=> b!648773 m!622155))

(declare-fun m!622187 () Bool)

(assert (=> b!648773 m!622187))

(declare-fun m!622189 () Bool)

(assert (=> b!648773 m!622189))

(assert (=> b!648773 m!622131))

(declare-fun m!622191 () Bool)

(assert (=> b!648773 m!622191))

(declare-fun m!622193 () Bool)

(assert (=> b!648769 m!622193))

(assert (=> b!648779 m!622131))

(assert (=> b!648779 m!622131))

(declare-fun m!622195 () Bool)

(assert (=> b!648779 m!622195))

(assert (=> b!648779 m!622131))

(declare-fun m!622197 () Bool)

(assert (=> b!648779 m!622197))

(assert (=> b!648779 m!622131))

(assert (=> b!648779 m!622173))

(assert (=> b!648774 m!622131))

(assert (=> b!648774 m!622155))

(declare-fun m!622199 () Bool)

(assert (=> b!648774 m!622199))

(assert (=> b!648772 m!622131))

(assert (=> b!648772 m!622131))

(assert (=> b!648772 m!622165))

(declare-fun m!622201 () Bool)

(assert (=> b!648768 m!622201))

(check-sat (not b!648765) (not b!648767) (not b!648761) (not start!58880) (not b!648772) (not b!648771) (not b!648779) (not b!648773) (not b!648778) (not b!648756) (not b!648777) (not b!648768) (not b!648759) (not b!648776) (not b!648766) (not b!648755) (not b!648763) (not b!648769))
(check-sat)
