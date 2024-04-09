; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58560 () Bool)

(assert start!58560)

(declare-fun b!646171 () Bool)

(declare-datatypes ((Unit!21946 0))(
  ( (Unit!21947) )
))
(declare-fun e!370398 () Unit!21946)

(declare-fun Unit!21948 () Unit!21946)

(assert (=> b!646171 (= e!370398 Unit!21948)))

(declare-fun e!370400 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38451 0))(
  ( (array!38452 (arr!18432 (Array (_ BitVec 32) (_ BitVec 64))) (size!18796 (_ BitVec 32))) )
))
(declare-fun lt!299818 () array!38451)

(declare-fun b!646172 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38451)

(declare-fun arrayContainsKey!0 (array!38451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646172 (= e!370400 (arrayContainsKey!0 lt!299818 (select (arr!18432 a!2986) j!136) index!984))))

(declare-fun b!646173 () Bool)

(declare-fun res!418771 () Bool)

(declare-fun e!370403 () Bool)

(assert (=> b!646173 (=> (not res!418771) (not e!370403))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646173 (= res!418771 (validKeyInArray!0 (select (arr!18432 a!2986) j!136)))))

(declare-fun b!646174 () Bool)

(declare-fun e!370405 () Bool)

(declare-fun e!370409 () Bool)

(assert (=> b!646174 (= e!370405 e!370409)))

(declare-fun res!418781 () Bool)

(assert (=> b!646174 (=> res!418781 e!370409)))

(declare-fun lt!299823 () (_ BitVec 64))

(declare-fun lt!299814 () (_ BitVec 64))

(assert (=> b!646174 (= res!418781 (or (not (= (select (arr!18432 a!2986) j!136) lt!299814)) (not (= (select (arr!18432 a!2986) j!136) lt!299823)) (bvsge j!136 index!984)))))

(declare-fun b!646175 () Bool)

(declare-fun e!370397 () Bool)

(assert (=> b!646175 (= e!370409 e!370397)))

(declare-fun res!418779 () Bool)

(assert (=> b!646175 (=> (not res!418779) (not e!370397))))

(assert (=> b!646175 (= res!418779 (arrayContainsKey!0 lt!299818 (select (arr!18432 a!2986) j!136) j!136))))

(declare-fun b!646176 () Bool)

(declare-fun res!418769 () Bool)

(declare-fun e!370404 () Bool)

(assert (=> b!646176 (=> (not res!418769) (not e!370404))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!646176 (= res!418769 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18432 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646177 () Bool)

(declare-fun res!418780 () Bool)

(assert (=> b!646177 (=> (not res!418780) (not e!370404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38451 (_ BitVec 32)) Bool)

(assert (=> b!646177 (= res!418780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!646178 () Bool)

(declare-fun res!418778 () Bool)

(assert (=> b!646178 (=> (not res!418778) (not e!370403))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!646178 (= res!418778 (validKeyInArray!0 k!1786))))

(declare-fun b!646179 () Bool)

(declare-fun Unit!21949 () Unit!21946)

(assert (=> b!646179 (= e!370398 Unit!21949)))

(declare-fun lt!299819 () Unit!21946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38451 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21946)

(assert (=> b!646179 (= lt!299819 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299818 (select (arr!18432 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!646179 (arrayContainsKey!0 lt!299818 (select (arr!18432 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!299813 () Unit!21946)

(declare-datatypes ((List!12526 0))(
  ( (Nil!12523) (Cons!12522 (h!13567 (_ BitVec 64)) (t!18762 List!12526)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38451 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12526) Unit!21946)

(assert (=> b!646179 (= lt!299813 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12523))))

(declare-fun arrayNoDuplicates!0 (array!38451 (_ BitVec 32) List!12526) Bool)

(assert (=> b!646179 (arrayNoDuplicates!0 lt!299818 #b00000000000000000000000000000000 Nil!12523)))

(declare-fun lt!299825 () Unit!21946)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38451 (_ BitVec 32) (_ BitVec 32)) Unit!21946)

(assert (=> b!646179 (= lt!299825 (lemmaNoDuplicateFromThenFromBigger!0 lt!299818 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646179 (arrayNoDuplicates!0 lt!299818 j!136 Nil!12523)))

(declare-fun lt!299817 () Unit!21946)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38451 (_ BitVec 64) (_ BitVec 32) List!12526) Unit!21946)

(assert (=> b!646179 (= lt!299817 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299818 (select (arr!18432 a!2986) j!136) j!136 Nil!12523))))

(assert (=> b!646179 false))

(declare-fun b!646180 () Bool)

(declare-fun e!370406 () Bool)

(declare-datatypes ((SeekEntryResult!6879 0))(
  ( (MissingZero!6879 (index!29853 (_ BitVec 32))) (Found!6879 (index!29854 (_ BitVec 32))) (Intermediate!6879 (undefined!7691 Bool) (index!29855 (_ BitVec 32)) (x!58658 (_ BitVec 32))) (Undefined!6879) (MissingVacant!6879 (index!29856 (_ BitVec 32))) )
))
(declare-fun lt!299826 () SeekEntryResult!6879)

(declare-fun lt!299816 () SeekEntryResult!6879)

(assert (=> b!646180 (= e!370406 (= lt!299826 lt!299816))))

(declare-fun b!646181 () Bool)

(declare-fun res!418770 () Bool)

(assert (=> b!646181 (=> (not res!418770) (not e!370403))))

(assert (=> b!646181 (= res!418770 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646182 () Bool)

(declare-fun e!370411 () Unit!21946)

(declare-fun Unit!21950 () Unit!21946)

(assert (=> b!646182 (= e!370411 Unit!21950)))

(assert (=> b!646182 false))

(declare-fun b!646183 () Bool)

(declare-fun e!370401 () Bool)

(assert (=> b!646183 (= e!370401 (or (bvsge (size!18796 a!2986) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!18796 a!2986))))))

(assert (=> b!646183 (arrayContainsKey!0 lt!299818 (select (arr!18432 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299822 () Unit!21946)

(assert (=> b!646183 (= lt!299822 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299818 (select (arr!18432 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!646183 e!370400))

(declare-fun res!418784 () Bool)

(assert (=> b!646183 (=> (not res!418784) (not e!370400))))

(assert (=> b!646183 (= res!418784 (arrayContainsKey!0 lt!299818 (select (arr!18432 a!2986) j!136) j!136))))

(declare-fun res!418786 () Bool)

(assert (=> start!58560 (=> (not res!418786) (not e!370403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58560 (= res!418786 (validMask!0 mask!3053))))

(assert (=> start!58560 e!370403))

(assert (=> start!58560 true))

(declare-fun array_inv!14206 (array!38451) Bool)

(assert (=> start!58560 (array_inv!14206 a!2986)))

(declare-fun b!646184 () Bool)

(declare-fun res!418777 () Bool)

(assert (=> b!646184 (=> (not res!418777) (not e!370403))))

(assert (=> b!646184 (= res!418777 (and (= (size!18796 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18796 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18796 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646185 () Bool)

(declare-fun Unit!21951 () Unit!21946)

(assert (=> b!646185 (= e!370411 Unit!21951)))

(declare-fun b!646186 () Bool)

(declare-fun e!370407 () Bool)

(assert (=> b!646186 (= e!370404 e!370407)))

(declare-fun res!418776 () Bool)

(assert (=> b!646186 (=> (not res!418776) (not e!370407))))

(assert (=> b!646186 (= res!418776 (= (select (store (arr!18432 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646186 (= lt!299818 (array!38452 (store (arr!18432 a!2986) i!1108 k!1786) (size!18796 a!2986)))))

(declare-fun b!646187 () Bool)

(declare-fun e!370410 () Bool)

(declare-fun e!370399 () Bool)

(assert (=> b!646187 (= e!370410 (not e!370399))))

(declare-fun res!418774 () Bool)

(assert (=> b!646187 (=> res!418774 e!370399)))

(declare-fun lt!299824 () SeekEntryResult!6879)

(assert (=> b!646187 (= res!418774 (not (= lt!299824 (Found!6879 index!984))))))

(declare-fun lt!299811 () Unit!21946)

(assert (=> b!646187 (= lt!299811 e!370411)))

(declare-fun c!74069 () Bool)

(assert (=> b!646187 (= c!74069 (= lt!299824 Undefined!6879))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38451 (_ BitVec 32)) SeekEntryResult!6879)

(assert (=> b!646187 (= lt!299824 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299814 lt!299818 mask!3053))))

(assert (=> b!646187 e!370406))

(declare-fun res!418782 () Bool)

(assert (=> b!646187 (=> (not res!418782) (not e!370406))))

(declare-fun lt!299820 () (_ BitVec 32))

(assert (=> b!646187 (= res!418782 (= lt!299816 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299820 vacantSpotIndex!68 lt!299814 lt!299818 mask!3053)))))

(assert (=> b!646187 (= lt!299816 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299820 vacantSpotIndex!68 (select (arr!18432 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!646187 (= lt!299814 (select (store (arr!18432 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299821 () Unit!21946)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38451 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21946)

(assert (=> b!646187 (= lt!299821 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299820 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646187 (= lt!299820 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646188 () Bool)

(declare-fun e!370408 () Bool)

(assert (=> b!646188 (= e!370399 e!370408)))

(declare-fun res!418787 () Bool)

(assert (=> b!646188 (=> res!418787 e!370408)))

(assert (=> b!646188 (= res!418787 (or (not (= (select (arr!18432 a!2986) j!136) lt!299814)) (not (= (select (arr!18432 a!2986) j!136) lt!299823))))))

(assert (=> b!646188 e!370405))

(declare-fun res!418773 () Bool)

(assert (=> b!646188 (=> (not res!418773) (not e!370405))))

(assert (=> b!646188 (= res!418773 (= lt!299823 (select (arr!18432 a!2986) j!136)))))

(assert (=> b!646188 (= lt!299823 (select (store (arr!18432 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!646189 () Bool)

(assert (=> b!646189 (= e!370403 e!370404)))

(declare-fun res!418785 () Bool)

(assert (=> b!646189 (=> (not res!418785) (not e!370404))))

(declare-fun lt!299812 () SeekEntryResult!6879)

(assert (=> b!646189 (= res!418785 (or (= lt!299812 (MissingZero!6879 i!1108)) (= lt!299812 (MissingVacant!6879 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38451 (_ BitVec 32)) SeekEntryResult!6879)

(assert (=> b!646189 (= lt!299812 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!646190 () Bool)

(assert (=> b!646190 (= e!370408 e!370401)))

(declare-fun res!418783 () Bool)

(assert (=> b!646190 (=> res!418783 e!370401)))

(assert (=> b!646190 (= res!418783 (bvsge index!984 j!136))))

(declare-fun lt!299815 () Unit!21946)

(assert (=> b!646190 (= lt!299815 e!370398)))

(declare-fun c!74068 () Bool)

(assert (=> b!646190 (= c!74068 (bvslt j!136 index!984))))

(declare-fun b!646191 () Bool)

(declare-fun res!418772 () Bool)

(assert (=> b!646191 (=> (not res!418772) (not e!370404))))

(assert (=> b!646191 (= res!418772 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12523))))

(declare-fun b!646192 () Bool)

(assert (=> b!646192 (= e!370397 (arrayContainsKey!0 lt!299818 (select (arr!18432 a!2986) j!136) index!984))))

(declare-fun b!646193 () Bool)

(assert (=> b!646193 (= e!370407 e!370410)))

(declare-fun res!418775 () Bool)

(assert (=> b!646193 (=> (not res!418775) (not e!370410))))

(assert (=> b!646193 (= res!418775 (and (= lt!299826 (Found!6879 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18432 a!2986) index!984) (select (arr!18432 a!2986) j!136))) (not (= (select (arr!18432 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!646193 (= lt!299826 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18432 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!58560 res!418786) b!646184))

(assert (= (and b!646184 res!418777) b!646173))

(assert (= (and b!646173 res!418771) b!646178))

(assert (= (and b!646178 res!418778) b!646181))

(assert (= (and b!646181 res!418770) b!646189))

(assert (= (and b!646189 res!418785) b!646177))

(assert (= (and b!646177 res!418780) b!646191))

(assert (= (and b!646191 res!418772) b!646176))

(assert (= (and b!646176 res!418769) b!646186))

(assert (= (and b!646186 res!418776) b!646193))

(assert (= (and b!646193 res!418775) b!646187))

(assert (= (and b!646187 res!418782) b!646180))

(assert (= (and b!646187 c!74069) b!646182))

(assert (= (and b!646187 (not c!74069)) b!646185))

(assert (= (and b!646187 (not res!418774)) b!646188))

(assert (= (and b!646188 res!418773) b!646174))

(assert (= (and b!646174 (not res!418781)) b!646175))

(assert (= (and b!646175 res!418779) b!646192))

(assert (= (and b!646188 (not res!418787)) b!646190))

(assert (= (and b!646190 c!74068) b!646179))

(assert (= (and b!646190 (not c!74068)) b!646171))

(assert (= (and b!646190 (not res!418783)) b!646183))

(assert (= (and b!646183 res!418784) b!646172))

(declare-fun m!619713 () Bool)

(assert (=> b!646187 m!619713))

(declare-fun m!619715 () Bool)

(assert (=> b!646187 m!619715))

(declare-fun m!619717 () Bool)

(assert (=> b!646187 m!619717))

(assert (=> b!646187 m!619717))

(declare-fun m!619719 () Bool)

(assert (=> b!646187 m!619719))

(declare-fun m!619721 () Bool)

(assert (=> b!646187 m!619721))

(declare-fun m!619723 () Bool)

(assert (=> b!646187 m!619723))

(declare-fun m!619725 () Bool)

(assert (=> b!646187 m!619725))

(declare-fun m!619727 () Bool)

(assert (=> b!646187 m!619727))

(declare-fun m!619729 () Bool)

(assert (=> b!646178 m!619729))

(declare-fun m!619731 () Bool)

(assert (=> b!646181 m!619731))

(declare-fun m!619733 () Bool)

(assert (=> b!646191 m!619733))

(assert (=> b!646192 m!619717))

(assert (=> b!646192 m!619717))

(declare-fun m!619735 () Bool)

(assert (=> b!646192 m!619735))

(assert (=> b!646179 m!619717))

(assert (=> b!646179 m!619717))

(declare-fun m!619737 () Bool)

(assert (=> b!646179 m!619737))

(declare-fun m!619739 () Bool)

(assert (=> b!646179 m!619739))

(assert (=> b!646179 m!619717))

(declare-fun m!619741 () Bool)

(assert (=> b!646179 m!619741))

(declare-fun m!619743 () Bool)

(assert (=> b!646179 m!619743))

(assert (=> b!646179 m!619717))

(declare-fun m!619745 () Bool)

(assert (=> b!646179 m!619745))

(declare-fun m!619747 () Bool)

(assert (=> b!646179 m!619747))

(declare-fun m!619749 () Bool)

(assert (=> b!646179 m!619749))

(declare-fun m!619751 () Bool)

(assert (=> start!58560 m!619751))

(declare-fun m!619753 () Bool)

(assert (=> start!58560 m!619753))

(assert (=> b!646172 m!619717))

(assert (=> b!646172 m!619717))

(assert (=> b!646172 m!619735))

(assert (=> b!646173 m!619717))

(assert (=> b!646173 m!619717))

(declare-fun m!619755 () Bool)

(assert (=> b!646173 m!619755))

(assert (=> b!646183 m!619717))

(assert (=> b!646183 m!619717))

(declare-fun m!619757 () Bool)

(assert (=> b!646183 m!619757))

(assert (=> b!646183 m!619717))

(declare-fun m!619759 () Bool)

(assert (=> b!646183 m!619759))

(assert (=> b!646183 m!619717))

(declare-fun m!619761 () Bool)

(assert (=> b!646183 m!619761))

(declare-fun m!619763 () Bool)

(assert (=> b!646176 m!619763))

(declare-fun m!619765 () Bool)

(assert (=> b!646189 m!619765))

(declare-fun m!619767 () Bool)

(assert (=> b!646193 m!619767))

(assert (=> b!646193 m!619717))

(assert (=> b!646193 m!619717))

(declare-fun m!619769 () Bool)

(assert (=> b!646193 m!619769))

(assert (=> b!646175 m!619717))

(assert (=> b!646175 m!619717))

(assert (=> b!646175 m!619761))

(declare-fun m!619771 () Bool)

(assert (=> b!646177 m!619771))

(assert (=> b!646186 m!619721))

(declare-fun m!619773 () Bool)

(assert (=> b!646186 m!619773))

(assert (=> b!646174 m!619717))

(assert (=> b!646188 m!619717))

(assert (=> b!646188 m!619721))

(declare-fun m!619775 () Bool)

(assert (=> b!646188 m!619775))

(push 1)

