; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58902 () Bool)

(assert start!58902)

(declare-fun b!649600 () Bool)

(declare-fun e!372626 () Bool)

(declare-fun e!372628 () Bool)

(assert (=> b!649600 (= e!372626 e!372628)))

(declare-fun res!421226 () Bool)

(assert (=> b!649600 (=> (not res!421226) (not e!372628))))

(declare-datatypes ((SeekEntryResult!6909 0))(
  ( (MissingZero!6909 (index!29982 (_ BitVec 32))) (Found!6909 (index!29983 (_ BitVec 32))) (Intermediate!6909 (undefined!7721 Bool) (index!29984 (_ BitVec 32)) (x!58795 (_ BitVec 32))) (Undefined!6909) (MissingVacant!6909 (index!29985 (_ BitVec 32))) )
))
(declare-fun lt!301783 () SeekEntryResult!6909)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38520 0))(
  ( (array!38521 (arr!18462 (Array (_ BitVec 32) (_ BitVec 64))) (size!18826 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38520)

(assert (=> b!649600 (= res!421226 (and (= lt!301783 (Found!6909 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18462 a!2986) index!984) (select (arr!18462 a!2986) j!136))) (not (= (select (arr!18462 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38520 (_ BitVec 32)) SeekEntryResult!6909)

(assert (=> b!649600 (= lt!301783 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18462 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649601 () Bool)

(declare-fun e!372629 () Bool)

(declare-fun lt!301780 () SeekEntryResult!6909)

(assert (=> b!649601 (= e!372629 (= lt!301783 lt!301780))))

(declare-fun b!649602 () Bool)

(declare-fun res!421221 () Bool)

(declare-fun e!372624 () Bool)

(assert (=> b!649602 (=> (not res!421221) (not e!372624))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!649602 (= res!421221 (and (= (size!18826 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18826 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18826 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649603 () Bool)

(declare-fun e!372627 () Bool)

(assert (=> b!649603 (= e!372624 e!372627)))

(declare-fun res!421208 () Bool)

(assert (=> b!649603 (=> (not res!421208) (not e!372627))))

(declare-fun lt!301776 () SeekEntryResult!6909)

(assert (=> b!649603 (= res!421208 (or (= lt!301776 (MissingZero!6909 i!1108)) (= lt!301776 (MissingVacant!6909 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38520 (_ BitVec 32)) SeekEntryResult!6909)

(assert (=> b!649603 (= lt!301776 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!649604 () Bool)

(declare-datatypes ((Unit!22126 0))(
  ( (Unit!22127) )
))
(declare-fun e!372622 () Unit!22126)

(declare-fun Unit!22128 () Unit!22126)

(assert (=> b!649604 (= e!372622 Unit!22128)))

(declare-fun lt!301786 () array!38520)

(declare-fun lt!301775 () Unit!22126)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22126)

(assert (=> b!649604 (= lt!301775 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301786 (select (arr!18462 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649604 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301779 () Unit!22126)

(declare-datatypes ((List!12556 0))(
  ( (Nil!12553) (Cons!12552 (h!13597 (_ BitVec 64)) (t!18792 List!12556)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12556) Unit!22126)

(assert (=> b!649604 (= lt!301779 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12553))))

(declare-fun arrayNoDuplicates!0 (array!38520 (_ BitVec 32) List!12556) Bool)

(assert (=> b!649604 (arrayNoDuplicates!0 lt!301786 #b00000000000000000000000000000000 Nil!12553)))

(declare-fun lt!301778 () Unit!22126)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38520 (_ BitVec 32) (_ BitVec 32)) Unit!22126)

(assert (=> b!649604 (= lt!301778 (lemmaNoDuplicateFromThenFromBigger!0 lt!301786 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649604 (arrayNoDuplicates!0 lt!301786 j!136 Nil!12553)))

(declare-fun lt!301781 () Unit!22126)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38520 (_ BitVec 64) (_ BitVec 32) List!12556) Unit!22126)

(assert (=> b!649604 (= lt!301781 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301786 (select (arr!18462 a!2986) j!136) j!136 Nil!12553))))

(assert (=> b!649604 false))

(declare-fun b!649605 () Bool)

(declare-fun e!372625 () Bool)

(assert (=> b!649605 (= e!372625 (bvslt (size!18826 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!649605 (arrayNoDuplicates!0 lt!301786 #b00000000000000000000000000000000 Nil!12553)))

(declare-fun lt!301785 () Unit!22126)

(assert (=> b!649605 (= lt!301785 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12553))))

(assert (=> b!649605 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301789 () Unit!22126)

(assert (=> b!649605 (= lt!301789 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301786 (select (arr!18462 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372633 () Bool)

(assert (=> b!649605 e!372633))

(declare-fun res!421213 () Bool)

(assert (=> b!649605 (=> (not res!421213) (not e!372633))))

(assert (=> b!649605 (= res!421213 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) j!136))))

(declare-fun b!649606 () Bool)

(declare-fun e!372634 () Bool)

(assert (=> b!649606 (= e!372634 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) index!984))))

(declare-fun b!649607 () Bool)

(declare-fun e!372631 () Bool)

(declare-fun e!372632 () Bool)

(assert (=> b!649607 (= e!372631 e!372632)))

(declare-fun res!421211 () Bool)

(assert (=> b!649607 (=> res!421211 e!372632)))

(declare-fun lt!301791 () (_ BitVec 64))

(declare-fun lt!301788 () (_ BitVec 64))

(assert (=> b!649607 (= res!421211 (or (not (= (select (arr!18462 a!2986) j!136) lt!301791)) (not (= (select (arr!18462 a!2986) j!136) lt!301788)) (bvsge j!136 index!984)))))

(declare-fun res!421210 () Bool)

(assert (=> start!58902 (=> (not res!421210) (not e!372624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58902 (= res!421210 (validMask!0 mask!3053))))

(assert (=> start!58902 e!372624))

(assert (=> start!58902 true))

(declare-fun array_inv!14236 (array!38520) Bool)

(assert (=> start!58902 (array_inv!14236 a!2986)))

(declare-fun b!649608 () Bool)

(assert (=> b!649608 (= e!372627 e!372626)))

(declare-fun res!421225 () Bool)

(assert (=> b!649608 (=> (not res!421225) (not e!372626))))

(assert (=> b!649608 (= res!421225 (= (select (store (arr!18462 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649608 (= lt!301786 (array!38521 (store (arr!18462 a!2986) i!1108 k!1786) (size!18826 a!2986)))))

(declare-fun b!649609 () Bool)

(declare-fun res!421224 () Bool)

(assert (=> b!649609 (=> (not res!421224) (not e!372627))))

(assert (=> b!649609 (= res!421224 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18462 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649610 () Bool)

(declare-fun res!421223 () Bool)

(assert (=> b!649610 (=> (not res!421223) (not e!372627))))

(assert (=> b!649610 (= res!421223 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12553))))

(declare-fun b!649611 () Bool)

(declare-fun Unit!22129 () Unit!22126)

(assert (=> b!649611 (= e!372622 Unit!22129)))

(declare-fun b!649612 () Bool)

(assert (=> b!649612 (= e!372632 e!372634)))

(declare-fun res!421217 () Bool)

(assert (=> b!649612 (=> (not res!421217) (not e!372634))))

(assert (=> b!649612 (= res!421217 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) j!136))))

(declare-fun b!649613 () Bool)

(declare-fun e!372620 () Unit!22126)

(declare-fun Unit!22130 () Unit!22126)

(assert (=> b!649613 (= e!372620 Unit!22130)))

(declare-fun b!649614 () Bool)

(declare-fun res!421222 () Bool)

(assert (=> b!649614 (=> (not res!421222) (not e!372624))))

(assert (=> b!649614 (= res!421222 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649615 () Bool)

(declare-fun res!421215 () Bool)

(assert (=> b!649615 (=> (not res!421215) (not e!372624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649615 (= res!421215 (validKeyInArray!0 k!1786))))

(declare-fun b!649616 () Bool)

(assert (=> b!649616 (= e!372633 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) index!984))))

(declare-fun b!649617 () Bool)

(declare-fun res!421220 () Bool)

(assert (=> b!649617 (=> (not res!421220) (not e!372627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38520 (_ BitVec 32)) Bool)

(assert (=> b!649617 (= res!421220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649618 () Bool)

(declare-fun e!372630 () Bool)

(declare-fun e!372623 () Bool)

(assert (=> b!649618 (= e!372630 e!372623)))

(declare-fun res!421212 () Bool)

(assert (=> b!649618 (=> res!421212 e!372623)))

(assert (=> b!649618 (= res!421212 (or (not (= (select (arr!18462 a!2986) j!136) lt!301791)) (not (= (select (arr!18462 a!2986) j!136) lt!301788))))))

(assert (=> b!649618 e!372631))

(declare-fun res!421214 () Bool)

(assert (=> b!649618 (=> (not res!421214) (not e!372631))))

(assert (=> b!649618 (= res!421214 (= lt!301788 (select (arr!18462 a!2986) j!136)))))

(assert (=> b!649618 (= lt!301788 (select (store (arr!18462 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!649619 () Bool)

(assert (=> b!649619 (= e!372623 e!372625)))

(declare-fun res!421209 () Bool)

(assert (=> b!649619 (=> res!421209 e!372625)))

(assert (=> b!649619 (= res!421209 (bvsge index!984 j!136))))

(declare-fun lt!301777 () Unit!22126)

(assert (=> b!649619 (= lt!301777 e!372622)))

(declare-fun c!74564 () Bool)

(assert (=> b!649619 (= c!74564 (bvslt j!136 index!984))))

(declare-fun b!649620 () Bool)

(declare-fun res!421218 () Bool)

(assert (=> b!649620 (=> (not res!421218) (not e!372624))))

(assert (=> b!649620 (= res!421218 (validKeyInArray!0 (select (arr!18462 a!2986) j!136)))))

(declare-fun b!649621 () Bool)

(declare-fun Unit!22131 () Unit!22126)

(assert (=> b!649621 (= e!372620 Unit!22131)))

(assert (=> b!649621 false))

(declare-fun b!649622 () Bool)

(assert (=> b!649622 (= e!372628 (not e!372630))))

(declare-fun res!421219 () Bool)

(assert (=> b!649622 (=> res!421219 e!372630)))

(declare-fun lt!301782 () SeekEntryResult!6909)

(assert (=> b!649622 (= res!421219 (not (= lt!301782 (Found!6909 index!984))))))

(declare-fun lt!301784 () Unit!22126)

(assert (=> b!649622 (= lt!301784 e!372620)))

(declare-fun c!74563 () Bool)

(assert (=> b!649622 (= c!74563 (= lt!301782 Undefined!6909))))

(assert (=> b!649622 (= lt!301782 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301791 lt!301786 mask!3053))))

(assert (=> b!649622 e!372629))

(declare-fun res!421216 () Bool)

(assert (=> b!649622 (=> (not res!421216) (not e!372629))))

(declare-fun lt!301790 () (_ BitVec 32))

(assert (=> b!649622 (= res!421216 (= lt!301780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 lt!301791 lt!301786 mask!3053)))))

(assert (=> b!649622 (= lt!301780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 (select (arr!18462 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649622 (= lt!301791 (select (store (arr!18462 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301787 () Unit!22126)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38520 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22126)

(assert (=> b!649622 (= lt!301787 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649622 (= lt!301790 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!58902 res!421210) b!649602))

(assert (= (and b!649602 res!421221) b!649620))

(assert (= (and b!649620 res!421218) b!649615))

(assert (= (and b!649615 res!421215) b!649614))

(assert (= (and b!649614 res!421222) b!649603))

(assert (= (and b!649603 res!421208) b!649617))

(assert (= (and b!649617 res!421220) b!649610))

(assert (= (and b!649610 res!421223) b!649609))

(assert (= (and b!649609 res!421224) b!649608))

(assert (= (and b!649608 res!421225) b!649600))

(assert (= (and b!649600 res!421226) b!649622))

(assert (= (and b!649622 res!421216) b!649601))

(assert (= (and b!649622 c!74563) b!649621))

(assert (= (and b!649622 (not c!74563)) b!649613))

(assert (= (and b!649622 (not res!421219)) b!649618))

(assert (= (and b!649618 res!421214) b!649607))

(assert (= (and b!649607 (not res!421211)) b!649612))

(assert (= (and b!649612 res!421217) b!649606))

(assert (= (and b!649618 (not res!421212)) b!649619))

(assert (= (and b!649619 c!74564) b!649604))

(assert (= (and b!649619 (not c!74564)) b!649611))

(assert (= (and b!649619 (not res!421209)) b!649605))

(assert (= (and b!649605 res!421213) b!649616))

(declare-fun m!622899 () Bool)

(assert (=> b!649620 m!622899))

(assert (=> b!649620 m!622899))

(declare-fun m!622901 () Bool)

(assert (=> b!649620 m!622901))

(declare-fun m!622903 () Bool)

(assert (=> b!649603 m!622903))

(assert (=> b!649607 m!622899))

(declare-fun m!622905 () Bool)

(assert (=> b!649608 m!622905))

(declare-fun m!622907 () Bool)

(assert (=> b!649608 m!622907))

(assert (=> b!649618 m!622899))

(assert (=> b!649618 m!622905))

(declare-fun m!622909 () Bool)

(assert (=> b!649618 m!622909))

(assert (=> b!649612 m!622899))

(assert (=> b!649612 m!622899))

(declare-fun m!622911 () Bool)

(assert (=> b!649612 m!622911))

(declare-fun m!622913 () Bool)

(assert (=> b!649604 m!622913))

(assert (=> b!649604 m!622899))

(declare-fun m!622915 () Bool)

(assert (=> b!649604 m!622915))

(declare-fun m!622917 () Bool)

(assert (=> b!649604 m!622917))

(assert (=> b!649604 m!622899))

(declare-fun m!622919 () Bool)

(assert (=> b!649604 m!622919))

(declare-fun m!622921 () Bool)

(assert (=> b!649604 m!622921))

(assert (=> b!649604 m!622899))

(declare-fun m!622923 () Bool)

(assert (=> b!649604 m!622923))

(assert (=> b!649604 m!622899))

(declare-fun m!622925 () Bool)

(assert (=> b!649604 m!622925))

(declare-fun m!622927 () Bool)

(assert (=> b!649614 m!622927))

(assert (=> b!649605 m!622899))

(declare-fun m!622929 () Bool)

(assert (=> b!649605 m!622929))

(assert (=> b!649605 m!622899))

(assert (=> b!649605 m!622911))

(assert (=> b!649605 m!622899))

(assert (=> b!649605 m!622915))

(assert (=> b!649605 m!622899))

(declare-fun m!622931 () Bool)

(assert (=> b!649605 m!622931))

(assert (=> b!649605 m!622921))

(declare-fun m!622933 () Bool)

(assert (=> b!649617 m!622933))

(declare-fun m!622935 () Bool)

(assert (=> start!58902 m!622935))

(declare-fun m!622937 () Bool)

(assert (=> start!58902 m!622937))

(assert (=> b!649616 m!622899))

(assert (=> b!649616 m!622899))

(declare-fun m!622939 () Bool)

(assert (=> b!649616 m!622939))

(declare-fun m!622941 () Bool)

(assert (=> b!649609 m!622941))

(declare-fun m!622943 () Bool)

(assert (=> b!649622 m!622943))

(declare-fun m!622945 () Bool)

(assert (=> b!649622 m!622945))

(assert (=> b!649622 m!622899))

(declare-fun m!622947 () Bool)

(assert (=> b!649622 m!622947))

(assert (=> b!649622 m!622899))

(assert (=> b!649622 m!622905))

(declare-fun m!622949 () Bool)

(assert (=> b!649622 m!622949))

(declare-fun m!622951 () Bool)

(assert (=> b!649622 m!622951))

(declare-fun m!622953 () Bool)

(assert (=> b!649622 m!622953))

(declare-fun m!622955 () Bool)

(assert (=> b!649615 m!622955))

(assert (=> b!649606 m!622899))

(assert (=> b!649606 m!622899))

(assert (=> b!649606 m!622939))

(declare-fun m!622957 () Bool)

(assert (=> b!649600 m!622957))

(assert (=> b!649600 m!622899))

(assert (=> b!649600 m!622899))

(declare-fun m!622959 () Bool)

(assert (=> b!649600 m!622959))

(declare-fun m!622961 () Bool)

(assert (=> b!649610 m!622961))

(push 1)

(assert (not b!649616))

(assert (not b!649622))

(assert (not b!649600))

(assert (not start!58902))

(assert (not b!649605))

(assert (not b!649620))

(assert (not b!649606))

(assert (not b!649604))

(assert (not b!649610))

(assert (not b!649615))

(assert (not b!649614))

(assert (not b!649612))

(assert (not b!649617))

(assert (not b!649603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!649829 () Bool)

(declare-fun e!372776 () Bool)

(declare-fun contains!3176 (List!12556 (_ BitVec 64)) Bool)

(assert (=> b!649829 (= e!372776 (contains!3176 Nil!12553 (select (arr!18462 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!649830 () Bool)

(declare-fun e!372774 () Bool)

(declare-fun call!33731 () Bool)

(assert (=> b!649830 (= e!372774 call!33731)))

(declare-fun d!91781 () Bool)

(declare-fun res!421370 () Bool)

(declare-fun e!372775 () Bool)

(assert (=> d!91781 (=> res!421370 e!372775)))

(assert (=> d!91781 (= res!421370 (bvsge #b00000000000000000000000000000000 (size!18826 a!2986)))))

(assert (=> d!91781 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12553) e!372775)))

(declare-fun bm!33728 () Bool)

(declare-fun c!74597 () Bool)

(assert (=> bm!33728 (= call!33731 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74597 (Cons!12552 (select (arr!18462 a!2986) #b00000000000000000000000000000000) Nil!12553) Nil!12553)))))

(declare-fun b!649831 () Bool)

(assert (=> b!649831 (= e!372774 call!33731)))

(declare-fun b!649832 () Bool)

(declare-fun e!372773 () Bool)

(assert (=> b!649832 (= e!372775 e!372773)))

(declare-fun res!421371 () Bool)

(assert (=> b!649832 (=> (not res!421371) (not e!372773))))

(assert (=> b!649832 (= res!421371 (not e!372776))))

(declare-fun res!421369 () Bool)

(assert (=> b!649832 (=> (not res!421369) (not e!372776))))

(assert (=> b!649832 (= res!421369 (validKeyInArray!0 (select (arr!18462 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!649833 () Bool)

(assert (=> b!649833 (= e!372773 e!372774)))

(assert (=> b!649833 (= c!74597 (validKeyInArray!0 (select (arr!18462 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91781 (not res!421370)) b!649832))

(assert (= (and b!649832 res!421369) b!649829))

(assert (= (and b!649832 res!421371) b!649833))

(assert (= (and b!649833 c!74597) b!649831))

(assert (= (and b!649833 (not c!74597)) b!649830))

(assert (= (or b!649831 b!649830) bm!33728))

(declare-fun m!623123 () Bool)

(assert (=> b!649829 m!623123))

(assert (=> b!649829 m!623123))

(declare-fun m!623125 () Bool)

(assert (=> b!649829 m!623125))

(assert (=> bm!33728 m!623123))

(declare-fun m!623127 () Bool)

(assert (=> bm!33728 m!623127))

(assert (=> b!649832 m!623123))

(assert (=> b!649832 m!623123))

(declare-fun m!623129 () Bool)

(assert (=> b!649832 m!623129))

(assert (=> b!649833 m!623123))

(assert (=> b!649833 m!623123))

(assert (=> b!649833 m!623129))

(assert (=> b!649610 d!91781))

(declare-fun b!649885 () Bool)

(declare-fun e!372815 () SeekEntryResult!6909)

(assert (=> b!649885 (= e!372815 Undefined!6909)))

(declare-fun b!649886 () Bool)

(declare-fun e!372814 () SeekEntryResult!6909)

(assert (=> b!649886 (= e!372814 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18462 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!91785 () Bool)

(declare-fun lt!301921 () SeekEntryResult!6909)

(assert (=> d!91785 (and (or (is-Undefined!6909 lt!301921) (not (is-Found!6909 lt!301921)) (and (bvsge (index!29983 lt!301921) #b00000000000000000000000000000000) (bvslt (index!29983 lt!301921) (size!18826 a!2986)))) (or (is-Undefined!6909 lt!301921) (is-Found!6909 lt!301921) (not (is-MissingVacant!6909 lt!301921)) (not (= (index!29985 lt!301921) vacantSpotIndex!68)) (and (bvsge (index!29985 lt!301921) #b00000000000000000000000000000000) (bvslt (index!29985 lt!301921) (size!18826 a!2986)))) (or (is-Undefined!6909 lt!301921) (ite (is-Found!6909 lt!301921) (= (select (arr!18462 a!2986) (index!29983 lt!301921)) (select (arr!18462 a!2986) j!136)) (and (is-MissingVacant!6909 lt!301921) (= (index!29985 lt!301921) vacantSpotIndex!68) (= (select (arr!18462 a!2986) (index!29985 lt!301921)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91785 (= lt!301921 e!372815)))

(declare-fun c!74612 () Bool)

(assert (=> d!91785 (= c!74612 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!301922 () (_ BitVec 64))

(assert (=> d!91785 (= lt!301922 (select (arr!18462 a!2986) index!984))))

(assert (=> d!91785 (validMask!0 mask!3053)))

(assert (=> d!91785 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18462 a!2986) j!136) a!2986 mask!3053) lt!301921)))

(declare-fun b!649887 () Bool)

(declare-fun e!372816 () SeekEntryResult!6909)

(assert (=> b!649887 (= e!372816 (Found!6909 index!984))))

(declare-fun b!649888 () Bool)

(assert (=> b!649888 (= e!372815 e!372816)))

(declare-fun c!74614 () Bool)

(assert (=> b!649888 (= c!74614 (= lt!301922 (select (arr!18462 a!2986) j!136)))))

(declare-fun b!649889 () Bool)

(declare-fun c!74613 () Bool)

(assert (=> b!649889 (= c!74613 (= lt!301922 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649889 (= e!372816 e!372814)))

(declare-fun b!649890 () Bool)

(assert (=> b!649890 (= e!372814 (MissingVacant!6909 vacantSpotIndex!68))))

(assert (= (and d!91785 c!74612) b!649885))

(assert (= (and d!91785 (not c!74612)) b!649888))

(assert (= (and b!649888 c!74614) b!649887))

(assert (= (and b!649888 (not c!74614)) b!649889))

(assert (= (and b!649889 c!74613) b!649890))

(assert (= (and b!649889 (not c!74613)) b!649886))

(assert (=> b!649886 m!622943))

(assert (=> b!649886 m!622943))

(assert (=> b!649886 m!622899))

(declare-fun m!623177 () Bool)

(assert (=> b!649886 m!623177))

(declare-fun m!623179 () Bool)

(assert (=> d!91785 m!623179))

(declare-fun m!623181 () Bool)

(assert (=> d!91785 m!623181))

(assert (=> d!91785 m!622957))

(assert (=> d!91785 m!622935))

(assert (=> b!649600 d!91785))

(declare-fun d!91807 () Bool)

(assert (=> d!91807 (= (validKeyInArray!0 (select (arr!18462 a!2986) j!136)) (and (not (= (select (arr!18462 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18462 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!649620 d!91807))

(declare-fun d!91809 () Bool)

(assert (=> d!91809 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58902 d!91809))

(declare-fun d!91819 () Bool)

(assert (=> d!91819 (= (array_inv!14236 a!2986) (bvsge (size!18826 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58902 d!91819))

(declare-fun d!91821 () Bool)

(declare-fun res!421404 () Bool)

(declare-fun e!372832 () Bool)

(assert (=> d!91821 (=> res!421404 e!372832)))

(assert (=> d!91821 (= res!421404 (= (select (arr!18462 lt!301786) index!984) (select (arr!18462 a!2986) j!136)))))

(assert (=> d!91821 (= (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) index!984) e!372832)))

(declare-fun b!649912 () Bool)

(declare-fun e!372833 () Bool)

(assert (=> b!649912 (= e!372832 e!372833)))

(declare-fun res!421405 () Bool)

(assert (=> b!649912 (=> (not res!421405) (not e!372833))))

(assert (=> b!649912 (= res!421405 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18826 lt!301786)))))

(declare-fun b!649913 () Bool)

(assert (=> b!649913 (= e!372833 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91821 (not res!421404)) b!649912))

(assert (= (and b!649912 res!421405) b!649913))

(declare-fun m!623195 () Bool)

(assert (=> d!91821 m!623195))

(assert (=> b!649913 m!622899))

(declare-fun m!623197 () Bool)

(assert (=> b!649913 m!623197))

(assert (=> b!649606 d!91821))

(declare-fun d!91823 () Bool)

(declare-fun res!421417 () Bool)

(declare-fun e!372856 () Bool)

(assert (=> d!91823 (=> res!421417 e!372856)))

(assert (=> d!91823 (= res!421417 (bvsge #b00000000000000000000000000000000 (size!18826 a!2986)))))

(assert (=> d!91823 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!372856)))

(declare-fun bm!33739 () Bool)

(declare-fun call!33742 () Bool)

(assert (=> bm!33739 (= call!33742 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!649946 () Bool)

(declare-fun e!372857 () Bool)

(assert (=> b!649946 (= e!372857 call!33742)))

(declare-fun b!649947 () Bool)

(declare-fun e!372855 () Bool)

(assert (=> b!649947 (= e!372855 e!372857)))

(declare-fun lt!301964 () (_ BitVec 64))

(assert (=> b!649947 (= lt!301964 (select (arr!18462 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!301963 () Unit!22126)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38520 (_ BitVec 64) (_ BitVec 32)) Unit!22126)

(assert (=> b!649947 (= lt!301963 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!301964 #b00000000000000000000000000000000))))

(assert (=> b!649947 (arrayContainsKey!0 a!2986 lt!301964 #b00000000000000000000000000000000)))

(declare-fun lt!301962 () Unit!22126)

(assert (=> b!649947 (= lt!301962 lt!301963)))

(declare-fun res!421416 () Bool)

(assert (=> b!649947 (= res!421416 (= (seekEntryOrOpen!0 (select (arr!18462 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6909 #b00000000000000000000000000000000)))))

(assert (=> b!649947 (=> (not res!421416) (not e!372857))))

(declare-fun b!649948 () Bool)

(assert (=> b!649948 (= e!372855 call!33742)))

(declare-fun b!649949 () Bool)

(assert (=> b!649949 (= e!372856 e!372855)))

(declare-fun c!74632 () Bool)

(assert (=> b!649949 (= c!74632 (validKeyInArray!0 (select (arr!18462 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91823 (not res!421417)) b!649949))

(assert (= (and b!649949 c!74632) b!649947))

(assert (= (and b!649949 (not c!74632)) b!649948))

(assert (= (and b!649947 res!421416) b!649946))

(assert (= (or b!649946 b!649948) bm!33739))

(declare-fun m!623233 () Bool)

(assert (=> bm!33739 m!623233))

(assert (=> b!649947 m!623123))

(declare-fun m!623235 () Bool)

(assert (=> b!649947 m!623235))

(declare-fun m!623237 () Bool)

(assert (=> b!649947 m!623237))

(assert (=> b!649947 m!623123))

(declare-fun m!623239 () Bool)

(assert (=> b!649947 m!623239))

(assert (=> b!649949 m!623123))

(assert (=> b!649949 m!623123))

(assert (=> b!649949 m!623129))

(assert (=> b!649617 d!91823))

(declare-fun d!91839 () Bool)

(assert (=> d!91839 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!649615 d!91839))

(declare-fun b!649950 () Bool)

(declare-fun e!372861 () Bool)

(assert (=> b!649950 (= e!372861 (contains!3176 Nil!12553 (select (arr!18462 lt!301786) #b00000000000000000000000000000000)))))

(declare-fun b!649951 () Bool)

(declare-fun e!372859 () Bool)

(declare-fun call!33743 () Bool)

(assert (=> b!649951 (= e!372859 call!33743)))

(declare-fun d!91841 () Bool)

(declare-fun res!421419 () Bool)

(declare-fun e!372860 () Bool)

(assert (=> d!91841 (=> res!421419 e!372860)))

(assert (=> d!91841 (= res!421419 (bvsge #b00000000000000000000000000000000 (size!18826 lt!301786)))))

(assert (=> d!91841 (= (arrayNoDuplicates!0 lt!301786 #b00000000000000000000000000000000 Nil!12553) e!372860)))

(declare-fun bm!33740 () Bool)

(declare-fun c!74633 () Bool)

(assert (=> bm!33740 (= call!33743 (arrayNoDuplicates!0 lt!301786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74633 (Cons!12552 (select (arr!18462 lt!301786) #b00000000000000000000000000000000) Nil!12553) Nil!12553)))))

(declare-fun b!649952 () Bool)

(assert (=> b!649952 (= e!372859 call!33743)))

(declare-fun b!649953 () Bool)

(declare-fun e!372858 () Bool)

(assert (=> b!649953 (= e!372860 e!372858)))

(declare-fun res!421420 () Bool)

(assert (=> b!649953 (=> (not res!421420) (not e!372858))))

(assert (=> b!649953 (= res!421420 (not e!372861))))

(declare-fun res!421418 () Bool)

(assert (=> b!649953 (=> (not res!421418) (not e!372861))))

(assert (=> b!649953 (= res!421418 (validKeyInArray!0 (select (arr!18462 lt!301786) #b00000000000000000000000000000000)))))

(declare-fun b!649954 () Bool)

(assert (=> b!649954 (= e!372858 e!372859)))

(assert (=> b!649954 (= c!74633 (validKeyInArray!0 (select (arr!18462 lt!301786) #b00000000000000000000000000000000)))))

(assert (= (and d!91841 (not res!421419)) b!649953))

(assert (= (and b!649953 res!421418) b!649950))

(assert (= (and b!649953 res!421420) b!649954))

(assert (= (and b!649954 c!74633) b!649952))

(assert (= (and b!649954 (not c!74633)) b!649951))

(assert (= (or b!649952 b!649951) bm!33740))

(declare-fun m!623241 () Bool)

(assert (=> b!649950 m!623241))

(assert (=> b!649950 m!623241))

(declare-fun m!623243 () Bool)

(assert (=> b!649950 m!623243))

(assert (=> bm!33740 m!623241))

(declare-fun m!623245 () Bool)

(assert (=> bm!33740 m!623245))

(assert (=> b!649953 m!623241))

(assert (=> b!649953 m!623241))

(declare-fun m!623247 () Bool)

(assert (=> b!649953 m!623247))

(assert (=> b!649954 m!623241))

(assert (=> b!649954 m!623241))

(assert (=> b!649954 m!623247))

(assert (=> b!649605 d!91841))

(declare-fun d!91843 () Bool)

(declare-fun res!421421 () Bool)

(declare-fun e!372862 () Bool)

(assert (=> d!91843 (=> res!421421 e!372862)))

(assert (=> d!91843 (= res!421421 (= (select (arr!18462 lt!301786) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18462 a!2986) j!136)))))

(assert (=> d!91843 (= (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!372862)))

(declare-fun b!649955 () Bool)

(declare-fun e!372863 () Bool)

(assert (=> b!649955 (= e!372862 e!372863)))

(declare-fun res!421422 () Bool)

(assert (=> b!649955 (=> (not res!421422) (not e!372863))))

(assert (=> b!649955 (= res!421422 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18826 lt!301786)))))

(declare-fun b!649956 () Bool)

(assert (=> b!649956 (= e!372863 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91843 (not res!421421)) b!649955))

(assert (= (and b!649955 res!421422) b!649956))

(declare-fun m!623249 () Bool)

(assert (=> d!91843 m!623249))

(assert (=> b!649956 m!622899))

(declare-fun m!623251 () Bool)

(assert (=> b!649956 m!623251))

(assert (=> b!649605 d!91843))

(declare-fun d!91845 () Bool)

(assert (=> d!91845 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301967 () Unit!22126)

(declare-fun choose!114 (array!38520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22126)

(assert (=> d!91845 (= lt!301967 (choose!114 lt!301786 (select (arr!18462 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91845 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91845 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301786 (select (arr!18462 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!301967)))

(declare-fun bs!19390 () Bool)

(assert (= bs!19390 d!91845))

(assert (=> bs!19390 m!622899))

(assert (=> bs!19390 m!622929))

(assert (=> bs!19390 m!622899))

(declare-fun m!623253 () Bool)

(assert (=> bs!19390 m!623253))

(assert (=> b!649605 d!91845))

(declare-fun d!91847 () Bool)

(declare-fun res!421423 () Bool)

(declare-fun e!372864 () Bool)

(assert (=> d!91847 (=> res!421423 e!372864)))

(assert (=> d!91847 (= res!421423 (= (select (arr!18462 lt!301786) j!136) (select (arr!18462 a!2986) j!136)))))

(assert (=> d!91847 (= (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) j!136) e!372864)))

(declare-fun b!649957 () Bool)

(declare-fun e!372865 () Bool)

(assert (=> b!649957 (= e!372864 e!372865)))

(declare-fun res!421424 () Bool)

(assert (=> b!649957 (=> (not res!421424) (not e!372865))))

(assert (=> b!649957 (= res!421424 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18826 lt!301786)))))

(declare-fun b!649958 () Bool)

(assert (=> b!649958 (= e!372865 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91847 (not res!421423)) b!649957))

(assert (= (and b!649957 res!421424) b!649958))

(declare-fun m!623255 () Bool)

(assert (=> d!91847 m!623255))

(assert (=> b!649958 m!622899))

(declare-fun m!623257 () Bool)

(assert (=> b!649958 m!623257))

(assert (=> b!649605 d!91847))

(declare-fun d!91849 () Bool)

(declare-fun e!372868 () Bool)

(assert (=> d!91849 e!372868))

(declare-fun res!421427 () Bool)

(assert (=> d!91849 (=> (not res!421427) (not e!372868))))

(assert (=> d!91849 (= res!421427 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18826 a!2986))))))

(declare-fun lt!301970 () Unit!22126)

(declare-fun choose!41 (array!38520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12556) Unit!22126)

(assert (=> d!91849 (= lt!301970 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12553))))

(assert (=> d!91849 (bvslt (size!18826 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91849 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12553) lt!301970)))

(declare-fun b!649961 () Bool)

(assert (=> b!649961 (= e!372868 (arrayNoDuplicates!0 (array!38521 (store (arr!18462 a!2986) i!1108 k!1786) (size!18826 a!2986)) #b00000000000000000000000000000000 Nil!12553))))

(assert (= (and d!91849 res!421427) b!649961))

(declare-fun m!623259 () Bool)

(assert (=> d!91849 m!623259))

(assert (=> b!649961 m!622905))

(declare-fun m!623261 () Bool)

(assert (=> b!649961 m!623261))

(assert (=> b!649605 d!91849))

(assert (=> b!649616 d!91821))

(declare-fun b!650037 () Bool)

(declare-fun e!372916 () SeekEntryResult!6909)

(assert (=> b!650037 (= e!372916 Undefined!6909)))

(declare-fun b!650039 () Bool)

(declare-fun c!74664 () Bool)

(declare-fun lt!302010 () (_ BitVec 64))

(assert (=> b!650039 (= c!74664 (= lt!302010 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!372919 () SeekEntryResult!6909)

(declare-fun e!372918 () SeekEntryResult!6909)

(assert (=> b!650039 (= e!372919 e!372918)))

(declare-fun b!650041 () Bool)

(declare-fun lt!302008 () SeekEntryResult!6909)

(assert (=> b!650041 (= e!372918 (MissingZero!6909 (index!29984 lt!302008)))))

(declare-fun b!650043 () Bool)

(assert (=> b!650043 (= e!372918 (seekKeyOrZeroReturnVacant!0 (x!58795 lt!302008) (index!29984 lt!302008) (index!29984 lt!302008) k!1786 a!2986 mask!3053))))

(declare-fun d!91851 () Bool)

(declare-fun lt!302007 () SeekEntryResult!6909)

(assert (=> d!91851 (and (or (is-Undefined!6909 lt!302007) (not (is-Found!6909 lt!302007)) (and (bvsge (index!29983 lt!302007) #b00000000000000000000000000000000) (bvslt (index!29983 lt!302007) (size!18826 a!2986)))) (or (is-Undefined!6909 lt!302007) (is-Found!6909 lt!302007) (not (is-MissingZero!6909 lt!302007)) (and (bvsge (index!29982 lt!302007) #b00000000000000000000000000000000) (bvslt (index!29982 lt!302007) (size!18826 a!2986)))) (or (is-Undefined!6909 lt!302007) (is-Found!6909 lt!302007) (is-MissingZero!6909 lt!302007) (not (is-MissingVacant!6909 lt!302007)) (and (bvsge (index!29985 lt!302007) #b00000000000000000000000000000000) (bvslt (index!29985 lt!302007) (size!18826 a!2986)))) (or (is-Undefined!6909 lt!302007) (ite (is-Found!6909 lt!302007) (= (select (arr!18462 a!2986) (index!29983 lt!302007)) k!1786) (ite (is-MissingZero!6909 lt!302007) (= (select (arr!18462 a!2986) (index!29982 lt!302007)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6909 lt!302007) (= (select (arr!18462 a!2986) (index!29985 lt!302007)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91851 (= lt!302007 e!372916)))

(declare-fun c!74665 () Bool)

(assert (=> d!91851 (= c!74665 (and (is-Intermediate!6909 lt!302008) (undefined!7721 lt!302008)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38520 (_ BitVec 32)) SeekEntryResult!6909)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91851 (= lt!302008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91851 (validMask!0 mask!3053)))

(assert (=> d!91851 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!302007)))

(declare-fun b!650045 () Bool)

(assert (=> b!650045 (= e!372919 (Found!6909 (index!29984 lt!302008)))))

(declare-fun b!650047 () Bool)

(assert (=> b!650047 (= e!372916 e!372919)))

(assert (=> b!650047 (= lt!302010 (select (arr!18462 a!2986) (index!29984 lt!302008)))))

(declare-fun c!74667 () Bool)

(assert (=> b!650047 (= c!74667 (= lt!302010 k!1786))))

(assert (= (and d!91851 c!74665) b!650037))

(assert (= (and d!91851 (not c!74665)) b!650047))

(assert (= (and b!650047 c!74667) b!650045))

(assert (= (and b!650047 (not c!74667)) b!650039))

(assert (= (and b!650039 c!74664) b!650041))

(assert (= (and b!650039 (not c!74664)) b!650043))

(declare-fun m!623333 () Bool)

(assert (=> b!650043 m!623333))

(assert (=> d!91851 m!622935))

(declare-fun m!623335 () Bool)

(assert (=> d!91851 m!623335))

(declare-fun m!623337 () Bool)

(assert (=> d!91851 m!623337))

(declare-fun m!623341 () Bool)

(assert (=> d!91851 m!623341))

(declare-fun m!623343 () Bool)

(assert (=> d!91851 m!623343))

(assert (=> d!91851 m!623343))

(declare-fun m!623345 () Bool)

(assert (=> d!91851 m!623345))

(declare-fun m!623347 () Bool)

(assert (=> b!650047 m!623347))

(assert (=> b!649603 d!91851))

(declare-fun d!91883 () Bool)

(declare-fun res!421446 () Bool)

(declare-fun e!372924 () Bool)

(assert (=> d!91883 (=> res!421446 e!372924)))

(assert (=> d!91883 (= res!421446 (= (select (arr!18462 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!91883 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!372924)))

(declare-fun b!650054 () Bool)

(declare-fun e!372925 () Bool)

(assert (=> b!650054 (= e!372924 e!372925)))

(declare-fun res!421447 () Bool)

(assert (=> b!650054 (=> (not res!421447) (not e!372925))))

(assert (=> b!650054 (= res!421447 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18826 a!2986)))))

(declare-fun b!650055 () Bool)

(assert (=> b!650055 (= e!372925 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91883 (not res!421446)) b!650054))

(assert (= (and b!650054 res!421447) b!650055))

(assert (=> d!91883 m!623123))

(declare-fun m!623353 () Bool)

(assert (=> b!650055 m!623353))

(assert (=> b!649614 d!91883))

(assert (=> b!649604 d!91841))

(declare-fun d!91885 () Bool)

(assert (=> d!91885 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302012 () Unit!22126)

(assert (=> d!91885 (= lt!302012 (choose!114 lt!301786 (select (arr!18462 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91885 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91885 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301786 (select (arr!18462 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!302012)))

(declare-fun bs!19393 () Bool)

(assert (= bs!19393 d!91885))

(assert (=> bs!19393 m!622899))

(assert (=> bs!19393 m!622925))

(assert (=> bs!19393 m!622899))

(declare-fun m!623355 () Bool)

(assert (=> bs!19393 m!623355))

(assert (=> b!649604 d!91885))

(declare-fun d!91889 () Bool)

(declare-fun res!421448 () Bool)

(declare-fun e!372926 () Bool)

(assert (=> d!91889 (=> res!421448 e!372926)))

(assert (=> d!91889 (= res!421448 (= (select (arr!18462 lt!301786) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18462 a!2986) j!136)))))

(assert (=> d!91889 (= (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!372926)))

(declare-fun b!650056 () Bool)

(declare-fun e!372927 () Bool)

(assert (=> b!650056 (= e!372926 e!372927)))

(declare-fun res!421449 () Bool)

(assert (=> b!650056 (=> (not res!421449) (not e!372927))))

(assert (=> b!650056 (= res!421449 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18826 lt!301786)))))

(declare-fun b!650057 () Bool)

(assert (=> b!650057 (= e!372927 (arrayContainsKey!0 lt!301786 (select (arr!18462 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91889 (not res!421448)) b!650056))

(assert (= (and b!650056 res!421449) b!650057))

(declare-fun m!623357 () Bool)

(assert (=> d!91889 m!623357))

(assert (=> b!650057 m!622899))

(declare-fun m!623359 () Bool)

(assert (=> b!650057 m!623359))

(assert (=> b!649604 d!91889))

(declare-fun d!91891 () Bool)

(assert (=> d!91891 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18826 lt!301786)) (not (= (select (arr!18462 lt!301786) j!136) (select (arr!18462 a!2986) j!136))))))

(declare-fun lt!302018 () Unit!22126)

(declare-fun choose!21 (array!38520 (_ BitVec 64) (_ BitVec 32) List!12556) Unit!22126)

(assert (=> d!91891 (= lt!302018 (choose!21 lt!301786 (select (arr!18462 a!2986) j!136) j!136 Nil!12553))))

(assert (=> d!91891 (bvslt (size!18826 lt!301786) #b01111111111111111111111111111111)))

(assert (=> d!91891 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301786 (select (arr!18462 a!2986) j!136) j!136 Nil!12553) lt!302018)))

(declare-fun bs!19395 () Bool)

(assert (= bs!19395 d!91891))

(assert (=> bs!19395 m!623255))

(assert (=> bs!19395 m!622899))

(declare-fun m!623363 () Bool)

(assert (=> bs!19395 m!623363))

(assert (=> b!649604 d!91891))

(assert (=> b!649604 d!91849))

(declare-fun b!650058 () Bool)

(declare-fun e!372931 () Bool)

(assert (=> b!650058 (= e!372931 (contains!3176 Nil!12553 (select (arr!18462 lt!301786) j!136)))))

(declare-fun b!650059 () Bool)

(declare-fun e!372929 () Bool)

(declare-fun call!33748 () Bool)

(assert (=> b!650059 (= e!372929 call!33748)))

(declare-fun d!91895 () Bool)

(declare-fun res!421451 () Bool)

(declare-fun e!372930 () Bool)

(assert (=> d!91895 (=> res!421451 e!372930)))

(assert (=> d!91895 (= res!421451 (bvsge j!136 (size!18826 lt!301786)))))

(assert (=> d!91895 (= (arrayNoDuplicates!0 lt!301786 j!136 Nil!12553) e!372930)))

(declare-fun c!74671 () Bool)

(declare-fun bm!33745 () Bool)

(assert (=> bm!33745 (= call!33748 (arrayNoDuplicates!0 lt!301786 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74671 (Cons!12552 (select (arr!18462 lt!301786) j!136) Nil!12553) Nil!12553)))))

(declare-fun b!650060 () Bool)

(assert (=> b!650060 (= e!372929 call!33748)))

(declare-fun b!650061 () Bool)

(declare-fun e!372928 () Bool)

(assert (=> b!650061 (= e!372930 e!372928)))

(declare-fun res!421452 () Bool)

(assert (=> b!650061 (=> (not res!421452) (not e!372928))))

(assert (=> b!650061 (= res!421452 (not e!372931))))

(declare-fun res!421450 () Bool)

(assert (=> b!650061 (=> (not res!421450) (not e!372931))))

(assert (=> b!650061 (= res!421450 (validKeyInArray!0 (select (arr!18462 lt!301786) j!136)))))

(declare-fun b!650062 () Bool)

(assert (=> b!650062 (= e!372928 e!372929)))

(assert (=> b!650062 (= c!74671 (validKeyInArray!0 (select (arr!18462 lt!301786) j!136)))))

(assert (= (and d!91895 (not res!421451)) b!650061))

(assert (= (and b!650061 res!421450) b!650058))

(assert (= (and b!650061 res!421452) b!650062))

(assert (= (and b!650062 c!74671) b!650060))

(assert (= (and b!650062 (not c!74671)) b!650059))

(assert (= (or b!650060 b!650059) bm!33745))

(assert (=> b!650058 m!623255))

(assert (=> b!650058 m!623255))

(declare-fun m!623365 () Bool)

(assert (=> b!650058 m!623365))

(assert (=> bm!33745 m!623255))

(declare-fun m!623367 () Bool)

(assert (=> bm!33745 m!623367))

(assert (=> b!650061 m!623255))

(assert (=> b!650061 m!623255))

(declare-fun m!623369 () Bool)

(assert (=> b!650061 m!623369))

(assert (=> b!650062 m!623255))

(assert (=> b!650062 m!623255))

(assert (=> b!650062 m!623369))

(assert (=> b!649604 d!91895))

(declare-fun d!91897 () Bool)

(assert (=> d!91897 (arrayNoDuplicates!0 lt!301786 j!136 Nil!12553)))

(declare-fun lt!302024 () Unit!22126)

(declare-fun choose!39 (array!38520 (_ BitVec 32) (_ BitVec 32)) Unit!22126)

(assert (=> d!91897 (= lt!302024 (choose!39 lt!301786 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91897 (bvslt (size!18826 lt!301786) #b01111111111111111111111111111111)))

(assert (=> d!91897 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!301786 #b00000000000000000000000000000000 j!136) lt!302024)))

(declare-fun bs!19397 () Bool)

(assert (= bs!19397 d!91897))

(assert (=> bs!19397 m!622913))

(declare-fun m!623373 () Bool)

(assert (=> bs!19397 m!623373))

(assert (=> b!649604 d!91897))

(declare-fun b!650068 () Bool)

(declare-fun e!372937 () SeekEntryResult!6909)

(assert (=> b!650068 (= e!372937 Undefined!6909)))

(declare-fun b!650069 () Bool)

(declare-fun e!372936 () SeekEntryResult!6909)

(assert (=> b!650069 (= e!372936 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!301790 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!301791 lt!301786 mask!3053))))

(declare-fun d!91901 () Bool)

(declare-fun lt!302025 () SeekEntryResult!6909)

(assert (=> d!91901 (and (or (is-Undefined!6909 lt!302025) (not (is-Found!6909 lt!302025)) (and (bvsge (index!29983 lt!302025) #b00000000000000000000000000000000) (bvslt (index!29983 lt!302025) (size!18826 lt!301786)))) (or (is-Undefined!6909 lt!302025) (is-Found!6909 lt!302025) (not (is-MissingVacant!6909 lt!302025)) (not (= (index!29985 lt!302025) vacantSpotIndex!68)) (and (bvsge (index!29985 lt!302025) #b00000000000000000000000000000000) (bvslt (index!29985 lt!302025) (size!18826 lt!301786)))) (or (is-Undefined!6909 lt!302025) (ite (is-Found!6909 lt!302025) (= (select (arr!18462 lt!301786) (index!29983 lt!302025)) lt!301791) (and (is-MissingVacant!6909 lt!302025) (= (index!29985 lt!302025) vacantSpotIndex!68) (= (select (arr!18462 lt!301786) (index!29985 lt!302025)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91901 (= lt!302025 e!372937)))

(declare-fun c!74673 () Bool)

(assert (=> d!91901 (= c!74673 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!302026 () (_ BitVec 64))

(assert (=> d!91901 (= lt!302026 (select (arr!18462 lt!301786) lt!301790))))

(assert (=> d!91901 (validMask!0 mask!3053)))

(assert (=> d!91901 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 lt!301791 lt!301786 mask!3053) lt!302025)))

(declare-fun b!650070 () Bool)

(declare-fun e!372938 () SeekEntryResult!6909)

(assert (=> b!650070 (= e!372938 (Found!6909 lt!301790))))

(declare-fun b!650071 () Bool)

(assert (=> b!650071 (= e!372937 e!372938)))

(declare-fun c!74675 () Bool)

(assert (=> b!650071 (= c!74675 (= lt!302026 lt!301791))))

(declare-fun b!650072 () Bool)

(declare-fun c!74674 () Bool)

(assert (=> b!650072 (= c!74674 (= lt!302026 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650072 (= e!372938 e!372936)))

(declare-fun b!650073 () Bool)

(assert (=> b!650073 (= e!372936 (MissingVacant!6909 vacantSpotIndex!68))))

(assert (= (and d!91901 c!74673) b!650068))

(assert (= (and d!91901 (not c!74673)) b!650071))

(assert (= (and b!650071 c!74675) b!650070))

(assert (= (and b!650071 (not c!74675)) b!650072))

(assert (= (and b!650072 c!74674) b!650073))

(assert (= (and b!650072 (not c!74674)) b!650069))

(declare-fun m!623379 () Bool)

(assert (=> b!650069 m!623379))

(assert (=> b!650069 m!623379))

(declare-fun m!623383 () Bool)

(assert (=> b!650069 m!623383))

(declare-fun m!623385 () Bool)

(assert (=> d!91901 m!623385))

(declare-fun m!623387 () Bool)

(assert (=> d!91901 m!623387))

(declare-fun m!623389 () Bool)

(assert (=> d!91901 m!623389))

(assert (=> d!91901 m!622935))

(assert (=> b!649622 d!91901))

(declare-fun d!91905 () Bool)

(declare-fun lt!302032 () (_ BitVec 32))

(assert (=> d!91905 (and (bvsge lt!302032 #b00000000000000000000000000000000) (bvslt lt!302032 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91905 (= lt!302032 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91905 (validMask!0 mask!3053)))

(assert (=> d!91905 (= (nextIndex!0 index!984 x!910 mask!3053) lt!302032)))

(declare-fun bs!19399 () Bool)

(assert (= bs!19399 d!91905))

(declare-fun m!623397 () Bool)

(assert (=> bs!19399 m!623397))

(assert (=> bs!19399 m!622935))

(assert (=> b!649622 d!91905))

(declare-fun d!91909 () Bool)

(declare-fun e!372946 () Bool)

(assert (=> d!91909 e!372946))

(declare-fun res!421463 () Bool)

(assert (=> d!91909 (=> (not res!421463) (not e!372946))))

(assert (=> d!91909 (= res!421463 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18826 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18826 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18826 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18826 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18826 a!2986))))))

(declare-fun lt!302036 () Unit!22126)

(declare-fun choose!9 (array!38520 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22126)

(assert (=> d!91909 (= lt!302036 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91909 (validMask!0 mask!3053)))

(assert (=> d!91909 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 mask!3053) lt!302036)))

(declare-fun b!650081 () Bool)

(assert (=> b!650081 (= e!372946 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 (select (arr!18462 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 (select (store (arr!18462 a!2986) i!1108 k!1786) j!136) (array!38521 (store (arr!18462 a!2986) i!1108 k!1786) (size!18826 a!2986)) mask!3053)))))

(assert (= (and d!91909 res!421463) b!650081))

(declare-fun m!623403 () Bool)

(assert (=> d!91909 m!623403))

(assert (=> d!91909 m!622935))

(assert (=> b!650081 m!622945))

(assert (=> b!650081 m!622899))

(assert (=> b!650081 m!622945))

(declare-fun m!623405 () Bool)

(assert (=> b!650081 m!623405))

(assert (=> b!650081 m!622905))

(assert (=> b!650081 m!622899))

(assert (=> b!650081 m!622947))

(assert (=> b!649622 d!91909))

(declare-fun b!650082 () Bool)

(declare-fun e!372948 () SeekEntryResult!6909)

(assert (=> b!650082 (= e!372948 Undefined!6909)))

(declare-fun e!372947 () SeekEntryResult!6909)

(declare-fun b!650083 () Bool)

(assert (=> b!650083 (= e!372947 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!301790 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18462 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!91911 () Bool)

(declare-fun lt!302037 () SeekEntryResult!6909)

(assert (=> d!91911 (and (or (is-Undefined!6909 lt!302037) (not (is-Found!6909 lt!302037)) (and (bvsge (index!29983 lt!302037) #b00000000000000000000000000000000) (bvslt (index!29983 lt!302037) (size!18826 a!2986)))) (or (is-Undefined!6909 lt!302037) (is-Found!6909 lt!302037) (not (is-MissingVacant!6909 lt!302037)) (not (= (index!29985 lt!302037) vacantSpotIndex!68)) (and (bvsge (index!29985 lt!302037) #b00000000000000000000000000000000) (bvslt (index!29985 lt!302037) (size!18826 a!2986)))) (or (is-Undefined!6909 lt!302037) (ite (is-Found!6909 lt!302037) (= (select (arr!18462 a!2986) (index!29983 lt!302037)) (select (arr!18462 a!2986) j!136)) (and (is-MissingVacant!6909 lt!302037) (= (index!29985 lt!302037) vacantSpotIndex!68) (= (select (arr!18462 a!2986) (index!29985 lt!302037)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91911 (= lt!302037 e!372948)))

(declare-fun c!74676 () Bool)

(assert (=> d!91911 (= c!74676 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!302038 () (_ BitVec 64))

(assert (=> d!91911 (= lt!302038 (select (arr!18462 a!2986) lt!301790))))

(assert (=> d!91911 (validMask!0 mask!3053)))

(assert (=> d!91911 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301790 vacantSpotIndex!68 (select (arr!18462 a!2986) j!136) a!2986 mask!3053) lt!302037)))

(declare-fun b!650084 () Bool)

(declare-fun e!372949 () SeekEntryResult!6909)

(assert (=> b!650084 (= e!372949 (Found!6909 lt!301790))))

(declare-fun b!650085 () Bool)

(assert (=> b!650085 (= e!372948 e!372949)))

(declare-fun c!74678 () Bool)

(assert (=> b!650085 (= c!74678 (= lt!302038 (select (arr!18462 a!2986) j!136)))))

(declare-fun b!650086 () Bool)

(declare-fun c!74677 () Bool)

(assert (=> b!650086 (= c!74677 (= lt!302038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650086 (= e!372949 e!372947)))

(declare-fun b!650087 () Bool)

(assert (=> b!650087 (= e!372947 (MissingVacant!6909 vacantSpotIndex!68))))

(assert (= (and d!91911 c!74676) b!650082))

(assert (= (and d!91911 (not c!74676)) b!650085))

(assert (= (and b!650085 c!74678) b!650084))

(assert (= (and b!650085 (not c!74678)) b!650086))

(assert (= (and b!650086 c!74677) b!650087))

(assert (= (and b!650086 (not c!74677)) b!650083))

(assert (=> b!650083 m!623379))

(assert (=> b!650083 m!623379))

(assert (=> b!650083 m!622899))

(declare-fun m!623407 () Bool)

(assert (=> b!650083 m!623407))

(declare-fun m!623409 () Bool)

(assert (=> d!91911 m!623409))

(declare-fun m!623411 () Bool)

(assert (=> d!91911 m!623411))

(declare-fun m!623413 () Bool)

(assert (=> d!91911 m!623413))

(assert (=> d!91911 m!622935))

(assert (=> b!649622 d!91911))

(declare-fun b!650088 () Bool)

(declare-fun e!372951 () SeekEntryResult!6909)

(assert (=> b!650088 (= e!372951 Undefined!6909)))

(declare-fun b!650089 () Bool)

(declare-fun e!372950 () SeekEntryResult!6909)

(assert (=> b!650089 (= e!372950 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!301791 lt!301786 mask!3053))))

(declare-fun d!91913 () Bool)

(declare-fun lt!302039 () SeekEntryResult!6909)

(assert (=> d!91913 (and (or (is-Undefined!6909 lt!302039) (not (is-Found!6909 lt!302039)) (and (bvsge (index!29983 lt!302039) #b00000000000000000000000000000000) (bvslt (index!29983 lt!302039) (size!18826 lt!301786)))) (or (is-Undefined!6909 lt!302039) (is-Found!6909 lt!302039) (not (is-MissingVacant!6909 lt!302039)) (not (= (index!29985 lt!302039) vacantSpotIndex!68)) (and (bvsge (index!29985 lt!302039) #b00000000000000000000000000000000) (bvslt (index!29985 lt!302039) (size!18826 lt!301786)))) (or (is-Undefined!6909 lt!302039) (ite (is-Found!6909 lt!302039) (= (select (arr!18462 lt!301786) (index!29983 lt!302039)) lt!301791) (and (is-MissingVacant!6909 lt!302039) (= (index!29985 lt!302039) vacantSpotIndex!68) (= (select (arr!18462 lt!301786) (index!29985 lt!302039)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91913 (= lt!302039 e!372951)))

(declare-fun c!74679 () Bool)

(assert (=> d!91913 (= c!74679 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!302040 () (_ BitVec 64))

(assert (=> d!91913 (= lt!302040 (select (arr!18462 lt!301786) index!984))))

(assert (=> d!91913 (validMask!0 mask!3053)))

(assert (=> d!91913 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301791 lt!301786 mask!3053) lt!302039)))

(declare-fun b!650090 () Bool)

(declare-fun e!372952 () SeekEntryResult!6909)

(assert (=> b!650090 (= e!372952 (Found!6909 index!984))))

(declare-fun b!650091 () Bool)

(assert (=> b!650091 (= e!372951 e!372952)))

(declare-fun c!74681 () Bool)

(assert (=> b!650091 (= c!74681 (= lt!302040 lt!301791))))

(declare-fun b!650092 () Bool)

(declare-fun c!74680 () Bool)

(assert (=> b!650092 (= c!74680 (= lt!302040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650092 (= e!372952 e!372950)))

(declare-fun b!650093 () Bool)

(assert (=> b!650093 (= e!372950 (MissingVacant!6909 vacantSpotIndex!68))))

(assert (= (and d!91913 c!74679) b!650088))

(assert (= (and d!91913 (not c!74679)) b!650091))

(assert (= (and b!650091 c!74681) b!650090))

(assert (= (and b!650091 (not c!74681)) b!650092))

(assert (= (and b!650092 c!74680) b!650093))

(assert (= (and b!650092 (not c!74680)) b!650089))

(assert (=> b!650089 m!622943))

(assert (=> b!650089 m!622943))

(declare-fun m!623415 () Bool)

(assert (=> b!650089 m!623415))

(declare-fun m!623417 () Bool)

(assert (=> d!91913 m!623417))

(declare-fun m!623419 () Bool)

(assert (=> d!91913 m!623419))

(assert (=> d!91913 m!623195))

(assert (=> d!91913 m!622935))

(assert (=> b!649622 d!91913))

(assert (=> b!649612 d!91847))

(push 1)

