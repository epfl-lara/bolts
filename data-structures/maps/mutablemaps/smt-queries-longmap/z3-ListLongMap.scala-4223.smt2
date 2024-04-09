; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57950 () Bool)

(assert start!57950)

(declare-fun b!640786 () Bool)

(declare-datatypes ((Unit!21674 0))(
  ( (Unit!21675) )
))
(declare-fun e!366855 () Unit!21674)

(declare-fun Unit!21676 () Unit!21674)

(assert (=> b!640786 (= e!366855 Unit!21676)))

(assert (=> b!640786 false))

(declare-fun b!640787 () Bool)

(declare-fun res!415167 () Bool)

(declare-fun e!366859 () Bool)

(assert (=> b!640787 (=> (not res!415167) (not e!366859))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38333 0))(
  ( (array!38334 (arr!18382 (Array (_ BitVec 32) (_ BitVec 64))) (size!18746 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38333)

(assert (=> b!640787 (= res!415167 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18382 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640788 () Bool)

(declare-fun Unit!21677 () Unit!21674)

(assert (=> b!640788 (= e!366855 Unit!21677)))

(declare-fun b!640789 () Bool)

(declare-fun res!415175 () Bool)

(assert (=> b!640789 (=> (not res!415175) (not e!366859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38333 (_ BitVec 32)) Bool)

(assert (=> b!640789 (= res!415175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640790 () Bool)

(declare-fun res!415181 () Bool)

(declare-fun e!366851 () Bool)

(assert (=> b!640790 (=> (not res!415181) (not e!366851))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640790 (= res!415181 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640791 () Bool)

(declare-fun res!415173 () Bool)

(assert (=> b!640791 (=> (not res!415173) (not e!366851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640791 (= res!415173 (validKeyInArray!0 k0!1786))))

(declare-fun b!640792 () Bool)

(declare-fun e!366853 () Bool)

(declare-fun e!366852 () Bool)

(assert (=> b!640792 (= e!366853 e!366852)))

(declare-fun res!415178 () Bool)

(assert (=> b!640792 (=> res!415178 e!366852)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!296727 () (_ BitVec 64))

(declare-fun lt!296722 () (_ BitVec 64))

(assert (=> b!640792 (= res!415178 (or (not (= (select (arr!18382 a!2986) j!136) lt!296722)) (not (= (select (arr!18382 a!2986) j!136) lt!296727)) (bvsge j!136 index!984)))))

(declare-fun e!366847 () Bool)

(assert (=> b!640792 e!366847))

(declare-fun res!415176 () Bool)

(assert (=> b!640792 (=> (not res!415176) (not e!366847))))

(assert (=> b!640792 (= res!415176 (= lt!296727 (select (arr!18382 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!640792 (= lt!296727 (select (store (arr!18382 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!640793 () Bool)

(declare-fun res!415171 () Bool)

(assert (=> b!640793 (=> (not res!415171) (not e!366851))))

(assert (=> b!640793 (= res!415171 (validKeyInArray!0 (select (arr!18382 a!2986) j!136)))))

(declare-fun b!640794 () Bool)

(declare-fun e!366849 () Bool)

(declare-fun e!366858 () Bool)

(assert (=> b!640794 (= e!366849 e!366858)))

(declare-fun res!415166 () Bool)

(assert (=> b!640794 (=> (not res!415166) (not e!366858))))

(declare-fun lt!296717 () array!38333)

(assert (=> b!640794 (= res!415166 (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) j!136))))

(declare-fun b!640795 () Bool)

(declare-fun e!366850 () Bool)

(assert (=> b!640795 (= e!366850 (not e!366853))))

(declare-fun res!415164 () Bool)

(assert (=> b!640795 (=> res!415164 e!366853)))

(declare-datatypes ((SeekEntryResult!6829 0))(
  ( (MissingZero!6829 (index!29635 (_ BitVec 32))) (Found!6829 (index!29636 (_ BitVec 32))) (Intermediate!6829 (undefined!7641 Bool) (index!29637 (_ BitVec 32)) (x!58418 (_ BitVec 32))) (Undefined!6829) (MissingVacant!6829 (index!29638 (_ BitVec 32))) )
))
(declare-fun lt!296720 () SeekEntryResult!6829)

(assert (=> b!640795 (= res!415164 (not (= lt!296720 (Found!6829 index!984))))))

(declare-fun lt!296715 () Unit!21674)

(assert (=> b!640795 (= lt!296715 e!366855)))

(declare-fun c!73178 () Bool)

(assert (=> b!640795 (= c!73178 (= lt!296720 Undefined!6829))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38333 (_ BitVec 32)) SeekEntryResult!6829)

(assert (=> b!640795 (= lt!296720 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296722 lt!296717 mask!3053))))

(declare-fun e!366857 () Bool)

(assert (=> b!640795 e!366857))

(declare-fun res!415179 () Bool)

(assert (=> b!640795 (=> (not res!415179) (not e!366857))))

(declare-fun lt!296721 () (_ BitVec 32))

(declare-fun lt!296724 () SeekEntryResult!6829)

(assert (=> b!640795 (= res!415179 (= lt!296724 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 lt!296722 lt!296717 mask!3053)))))

(assert (=> b!640795 (= lt!296724 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 (select (arr!18382 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640795 (= lt!296722 (select (store (arr!18382 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!296716 () Unit!21674)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38333 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21674)

(assert (=> b!640795 (= lt!296716 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640795 (= lt!296721 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640796 () Bool)

(assert (=> b!640796 (= e!366858 (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) index!984))))

(declare-fun res!415168 () Bool)

(assert (=> start!57950 (=> (not res!415168) (not e!366851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57950 (= res!415168 (validMask!0 mask!3053))))

(assert (=> start!57950 e!366851))

(assert (=> start!57950 true))

(declare-fun array_inv!14156 (array!38333) Bool)

(assert (=> start!57950 (array_inv!14156 a!2986)))

(declare-fun b!640797 () Bool)

(assert (=> b!640797 (= e!366847 e!366849)))

(declare-fun res!415180 () Bool)

(assert (=> b!640797 (=> res!415180 e!366849)))

(assert (=> b!640797 (= res!415180 (or (not (= (select (arr!18382 a!2986) j!136) lt!296722)) (not (= (select (arr!18382 a!2986) j!136) lt!296727)) (bvsge j!136 index!984)))))

(declare-fun b!640798 () Bool)

(declare-fun e!366856 () Bool)

(assert (=> b!640798 (= e!366852 e!366856)))

(declare-fun res!415170 () Bool)

(assert (=> b!640798 (=> res!415170 e!366856)))

(assert (=> b!640798 (= res!415170 (or (bvsge (size!18746 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18746 a!2986))))))

(declare-datatypes ((List!12476 0))(
  ( (Nil!12473) (Cons!12472 (h!13517 (_ BitVec 64)) (t!18712 List!12476)) )
))
(declare-fun arrayNoDuplicates!0 (array!38333 (_ BitVec 32) List!12476) Bool)

(assert (=> b!640798 (arrayNoDuplicates!0 lt!296717 j!136 Nil!12473)))

(declare-fun lt!296719 () Unit!21674)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38333 (_ BitVec 32) (_ BitVec 32)) Unit!21674)

(assert (=> b!640798 (= lt!296719 (lemmaNoDuplicateFromThenFromBigger!0 lt!296717 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640798 (arrayNoDuplicates!0 lt!296717 #b00000000000000000000000000000000 Nil!12473)))

(declare-fun lt!296726 () Unit!21674)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38333 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12476) Unit!21674)

(assert (=> b!640798 (= lt!296726 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12473))))

(assert (=> b!640798 (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296725 () Unit!21674)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38333 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21674)

(assert (=> b!640798 (= lt!296725 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296717 (select (arr!18382 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640799 () Bool)

(declare-fun res!415177 () Bool)

(assert (=> b!640799 (=> (not res!415177) (not e!366851))))

(assert (=> b!640799 (= res!415177 (and (= (size!18746 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18746 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18746 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640800 () Bool)

(assert (=> b!640800 (= e!366851 e!366859)))

(declare-fun res!415165 () Bool)

(assert (=> b!640800 (=> (not res!415165) (not e!366859))))

(declare-fun lt!296723 () SeekEntryResult!6829)

(assert (=> b!640800 (= res!415165 (or (= lt!296723 (MissingZero!6829 i!1108)) (= lt!296723 (MissingVacant!6829 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38333 (_ BitVec 32)) SeekEntryResult!6829)

(assert (=> b!640800 (= lt!296723 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!640801 () Bool)

(declare-fun res!415174 () Bool)

(assert (=> b!640801 (=> (not res!415174) (not e!366859))))

(assert (=> b!640801 (= res!415174 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12473))))

(declare-fun b!640802 () Bool)

(declare-fun e!366848 () Bool)

(assert (=> b!640802 (= e!366848 e!366850)))

(declare-fun res!415169 () Bool)

(assert (=> b!640802 (=> (not res!415169) (not e!366850))))

(declare-fun lt!296718 () SeekEntryResult!6829)

(assert (=> b!640802 (= res!415169 (and (= lt!296718 (Found!6829 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18382 a!2986) index!984) (select (arr!18382 a!2986) j!136))) (not (= (select (arr!18382 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!640802 (= lt!296718 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18382 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640803 () Bool)

(assert (=> b!640803 (= e!366859 e!366848)))

(declare-fun res!415172 () Bool)

(assert (=> b!640803 (=> (not res!415172) (not e!366848))))

(assert (=> b!640803 (= res!415172 (= (select (store (arr!18382 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640803 (= lt!296717 (array!38334 (store (arr!18382 a!2986) i!1108 k0!1786) (size!18746 a!2986)))))

(declare-fun b!640804 () Bool)

(declare-fun noDuplicate!401 (List!12476) Bool)

(assert (=> b!640804 (= e!366856 (noDuplicate!401 Nil!12473))))

(declare-fun b!640805 () Bool)

(assert (=> b!640805 (= e!366857 (= lt!296718 lt!296724))))

(assert (= (and start!57950 res!415168) b!640799))

(assert (= (and b!640799 res!415177) b!640793))

(assert (= (and b!640793 res!415171) b!640791))

(assert (= (and b!640791 res!415173) b!640790))

(assert (= (and b!640790 res!415181) b!640800))

(assert (= (and b!640800 res!415165) b!640789))

(assert (= (and b!640789 res!415175) b!640801))

(assert (= (and b!640801 res!415174) b!640787))

(assert (= (and b!640787 res!415167) b!640803))

(assert (= (and b!640803 res!415172) b!640802))

(assert (= (and b!640802 res!415169) b!640795))

(assert (= (and b!640795 res!415179) b!640805))

(assert (= (and b!640795 c!73178) b!640786))

(assert (= (and b!640795 (not c!73178)) b!640788))

(assert (= (and b!640795 (not res!415164)) b!640792))

(assert (= (and b!640792 res!415176) b!640797))

(assert (= (and b!640797 (not res!415180)) b!640794))

(assert (= (and b!640794 res!415166) b!640796))

(assert (= (and b!640792 (not res!415178)) b!640798))

(assert (= (and b!640798 (not res!415170)) b!640804))

(declare-fun m!614697 () Bool)

(assert (=> b!640791 m!614697))

(declare-fun m!614699 () Bool)

(assert (=> b!640800 m!614699))

(declare-fun m!614701 () Bool)

(assert (=> b!640793 m!614701))

(assert (=> b!640793 m!614701))

(declare-fun m!614703 () Bool)

(assert (=> b!640793 m!614703))

(declare-fun m!614705 () Bool)

(assert (=> b!640789 m!614705))

(declare-fun m!614707 () Bool)

(assert (=> b!640787 m!614707))

(assert (=> b!640797 m!614701))

(declare-fun m!614709 () Bool)

(assert (=> b!640802 m!614709))

(assert (=> b!640802 m!614701))

(assert (=> b!640802 m!614701))

(declare-fun m!614711 () Bool)

(assert (=> b!640802 m!614711))

(assert (=> b!640792 m!614701))

(declare-fun m!614713 () Bool)

(assert (=> b!640792 m!614713))

(declare-fun m!614715 () Bool)

(assert (=> b!640792 m!614715))

(declare-fun m!614717 () Bool)

(assert (=> b!640801 m!614717))

(assert (=> b!640794 m!614701))

(assert (=> b!640794 m!614701))

(declare-fun m!614719 () Bool)

(assert (=> b!640794 m!614719))

(assert (=> b!640803 m!614713))

(declare-fun m!614721 () Bool)

(assert (=> b!640803 m!614721))

(declare-fun m!614723 () Bool)

(assert (=> b!640795 m!614723))

(assert (=> b!640795 m!614701))

(assert (=> b!640795 m!614713))

(declare-fun m!614725 () Bool)

(assert (=> b!640795 m!614725))

(assert (=> b!640795 m!614701))

(declare-fun m!614727 () Bool)

(assert (=> b!640795 m!614727))

(declare-fun m!614729 () Bool)

(assert (=> b!640795 m!614729))

(declare-fun m!614731 () Bool)

(assert (=> b!640795 m!614731))

(declare-fun m!614733 () Bool)

(assert (=> b!640795 m!614733))

(assert (=> b!640798 m!614701))

(declare-fun m!614735 () Bool)

(assert (=> b!640798 m!614735))

(declare-fun m!614737 () Bool)

(assert (=> b!640798 m!614737))

(assert (=> b!640798 m!614701))

(declare-fun m!614739 () Bool)

(assert (=> b!640798 m!614739))

(declare-fun m!614741 () Bool)

(assert (=> b!640798 m!614741))

(assert (=> b!640798 m!614701))

(declare-fun m!614743 () Bool)

(assert (=> b!640798 m!614743))

(declare-fun m!614745 () Bool)

(assert (=> b!640798 m!614745))

(declare-fun m!614747 () Bool)

(assert (=> b!640804 m!614747))

(declare-fun m!614749 () Bool)

(assert (=> start!57950 m!614749))

(declare-fun m!614751 () Bool)

(assert (=> start!57950 m!614751))

(declare-fun m!614753 () Bool)

(assert (=> b!640790 m!614753))

(assert (=> b!640796 m!614701))

(assert (=> b!640796 m!614701))

(declare-fun m!614755 () Bool)

(assert (=> b!640796 m!614755))

(check-sat (not b!640804) (not b!640798) (not b!640802) (not b!640793) (not b!640796) (not b!640791) (not b!640795) (not start!57950) (not b!640800) (not b!640794) (not b!640801) (not b!640789) (not b!640790))
(check-sat)
(get-model)

(declare-fun b!640878 () Bool)

(declare-fun e!366907 () SeekEntryResult!6829)

(assert (=> b!640878 (= e!366907 Undefined!6829)))

(declare-fun d!90361 () Bool)

(declare-fun lt!296775 () SeekEntryResult!6829)

(get-info :version)

(assert (=> d!90361 (and (or ((_ is Undefined!6829) lt!296775) (not ((_ is Found!6829) lt!296775)) (and (bvsge (index!29636 lt!296775) #b00000000000000000000000000000000) (bvslt (index!29636 lt!296775) (size!18746 a!2986)))) (or ((_ is Undefined!6829) lt!296775) ((_ is Found!6829) lt!296775) (not ((_ is MissingZero!6829) lt!296775)) (and (bvsge (index!29635 lt!296775) #b00000000000000000000000000000000) (bvslt (index!29635 lt!296775) (size!18746 a!2986)))) (or ((_ is Undefined!6829) lt!296775) ((_ is Found!6829) lt!296775) ((_ is MissingZero!6829) lt!296775) (not ((_ is MissingVacant!6829) lt!296775)) (and (bvsge (index!29638 lt!296775) #b00000000000000000000000000000000) (bvslt (index!29638 lt!296775) (size!18746 a!2986)))) (or ((_ is Undefined!6829) lt!296775) (ite ((_ is Found!6829) lt!296775) (= (select (arr!18382 a!2986) (index!29636 lt!296775)) k0!1786) (ite ((_ is MissingZero!6829) lt!296775) (= (select (arr!18382 a!2986) (index!29635 lt!296775)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6829) lt!296775) (= (select (arr!18382 a!2986) (index!29638 lt!296775)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90361 (= lt!296775 e!366907)))

(declare-fun c!73189 () Bool)

(declare-fun lt!296773 () SeekEntryResult!6829)

(assert (=> d!90361 (= c!73189 (and ((_ is Intermediate!6829) lt!296773) (undefined!7641 lt!296773)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38333 (_ BitVec 32)) SeekEntryResult!6829)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90361 (= lt!296773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!90361 (validMask!0 mask!3053)))

(assert (=> d!90361 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!296775)))

(declare-fun b!640879 () Bool)

(declare-fun e!366905 () SeekEntryResult!6829)

(assert (=> b!640879 (= e!366907 e!366905)))

(declare-fun lt!296774 () (_ BitVec 64))

(assert (=> b!640879 (= lt!296774 (select (arr!18382 a!2986) (index!29637 lt!296773)))))

(declare-fun c!73190 () Bool)

(assert (=> b!640879 (= c!73190 (= lt!296774 k0!1786))))

(declare-fun b!640880 () Bool)

(declare-fun e!366906 () SeekEntryResult!6829)

(assert (=> b!640880 (= e!366906 (MissingZero!6829 (index!29637 lt!296773)))))

(declare-fun b!640881 () Bool)

(assert (=> b!640881 (= e!366906 (seekKeyOrZeroReturnVacant!0 (x!58418 lt!296773) (index!29637 lt!296773) (index!29637 lt!296773) k0!1786 a!2986 mask!3053))))

(declare-fun b!640882 () Bool)

(declare-fun c!73188 () Bool)

(assert (=> b!640882 (= c!73188 (= lt!296774 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640882 (= e!366905 e!366906)))

(declare-fun b!640883 () Bool)

(assert (=> b!640883 (= e!366905 (Found!6829 (index!29637 lt!296773)))))

(assert (= (and d!90361 c!73189) b!640878))

(assert (= (and d!90361 (not c!73189)) b!640879))

(assert (= (and b!640879 c!73190) b!640883))

(assert (= (and b!640879 (not c!73190)) b!640882))

(assert (= (and b!640882 c!73188) b!640880))

(assert (= (and b!640882 (not c!73188)) b!640881))

(declare-fun m!614817 () Bool)

(assert (=> d!90361 m!614817))

(assert (=> d!90361 m!614749))

(declare-fun m!614819 () Bool)

(assert (=> d!90361 m!614819))

(declare-fun m!614821 () Bool)

(assert (=> d!90361 m!614821))

(declare-fun m!614823 () Bool)

(assert (=> d!90361 m!614823))

(assert (=> d!90361 m!614821))

(declare-fun m!614825 () Bool)

(assert (=> d!90361 m!614825))

(declare-fun m!614827 () Bool)

(assert (=> b!640879 m!614827))

(declare-fun m!614829 () Bool)

(assert (=> b!640881 m!614829))

(assert (=> b!640800 d!90361))

(declare-fun b!640892 () Bool)

(declare-fun e!366916 () Bool)

(declare-fun call!33512 () Bool)

(assert (=> b!640892 (= e!366916 call!33512)))

(declare-fun b!640893 () Bool)

(declare-fun e!366915 () Bool)

(assert (=> b!640893 (= e!366916 e!366915)))

(declare-fun lt!296782 () (_ BitVec 64))

(assert (=> b!640893 (= lt!296782 (select (arr!18382 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!296784 () Unit!21674)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38333 (_ BitVec 64) (_ BitVec 32)) Unit!21674)

(assert (=> b!640893 (= lt!296784 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!296782 #b00000000000000000000000000000000))))

(assert (=> b!640893 (arrayContainsKey!0 a!2986 lt!296782 #b00000000000000000000000000000000)))

(declare-fun lt!296783 () Unit!21674)

(assert (=> b!640893 (= lt!296783 lt!296784)))

(declare-fun res!415240 () Bool)

(assert (=> b!640893 (= res!415240 (= (seekEntryOrOpen!0 (select (arr!18382 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6829 #b00000000000000000000000000000000)))))

(assert (=> b!640893 (=> (not res!415240) (not e!366915))))

(declare-fun bm!33509 () Bool)

(assert (=> bm!33509 (= call!33512 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!640894 () Bool)

(declare-fun e!366914 () Bool)

(assert (=> b!640894 (= e!366914 e!366916)))

(declare-fun c!73193 () Bool)

(assert (=> b!640894 (= c!73193 (validKeyInArray!0 (select (arr!18382 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90363 () Bool)

(declare-fun res!415241 () Bool)

(assert (=> d!90363 (=> res!415241 e!366914)))

(assert (=> d!90363 (= res!415241 (bvsge #b00000000000000000000000000000000 (size!18746 a!2986)))))

(assert (=> d!90363 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!366914)))

(declare-fun b!640895 () Bool)

(assert (=> b!640895 (= e!366915 call!33512)))

(assert (= (and d!90363 (not res!415241)) b!640894))

(assert (= (and b!640894 c!73193) b!640893))

(assert (= (and b!640894 (not c!73193)) b!640892))

(assert (= (and b!640893 res!415240) b!640895))

(assert (= (or b!640895 b!640892) bm!33509))

(declare-fun m!614831 () Bool)

(assert (=> b!640893 m!614831))

(declare-fun m!614833 () Bool)

(assert (=> b!640893 m!614833))

(declare-fun m!614835 () Bool)

(assert (=> b!640893 m!614835))

(assert (=> b!640893 m!614831))

(declare-fun m!614837 () Bool)

(assert (=> b!640893 m!614837))

(declare-fun m!614839 () Bool)

(assert (=> bm!33509 m!614839))

(assert (=> b!640894 m!614831))

(assert (=> b!640894 m!614831))

(declare-fun m!614841 () Bool)

(assert (=> b!640894 m!614841))

(assert (=> b!640789 d!90363))

(declare-fun b!640906 () Bool)

(declare-fun e!366925 () Bool)

(declare-fun e!366926 () Bool)

(assert (=> b!640906 (= e!366925 e!366926)))

(declare-fun c!73196 () Bool)

(assert (=> b!640906 (= c!73196 (validKeyInArray!0 (select (arr!18382 lt!296717) j!136)))))

(declare-fun d!90365 () Bool)

(declare-fun res!415248 () Bool)

(declare-fun e!366927 () Bool)

(assert (=> d!90365 (=> res!415248 e!366927)))

(assert (=> d!90365 (= res!415248 (bvsge j!136 (size!18746 lt!296717)))))

(assert (=> d!90365 (= (arrayNoDuplicates!0 lt!296717 j!136 Nil!12473) e!366927)))

(declare-fun bm!33512 () Bool)

(declare-fun call!33515 () Bool)

(assert (=> bm!33512 (= call!33515 (arrayNoDuplicates!0 lt!296717 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73196 (Cons!12472 (select (arr!18382 lt!296717) j!136) Nil!12473) Nil!12473)))))

(declare-fun b!640907 () Bool)

(declare-fun e!366928 () Bool)

(declare-fun contains!3129 (List!12476 (_ BitVec 64)) Bool)

(assert (=> b!640907 (= e!366928 (contains!3129 Nil!12473 (select (arr!18382 lt!296717) j!136)))))

(declare-fun b!640908 () Bool)

(assert (=> b!640908 (= e!366926 call!33515)))

(declare-fun b!640909 () Bool)

(assert (=> b!640909 (= e!366926 call!33515)))

(declare-fun b!640910 () Bool)

(assert (=> b!640910 (= e!366927 e!366925)))

(declare-fun res!415250 () Bool)

(assert (=> b!640910 (=> (not res!415250) (not e!366925))))

(assert (=> b!640910 (= res!415250 (not e!366928))))

(declare-fun res!415249 () Bool)

(assert (=> b!640910 (=> (not res!415249) (not e!366928))))

(assert (=> b!640910 (= res!415249 (validKeyInArray!0 (select (arr!18382 lt!296717) j!136)))))

(assert (= (and d!90365 (not res!415248)) b!640910))

(assert (= (and b!640910 res!415249) b!640907))

(assert (= (and b!640910 res!415250) b!640906))

(assert (= (and b!640906 c!73196) b!640908))

(assert (= (and b!640906 (not c!73196)) b!640909))

(assert (= (or b!640908 b!640909) bm!33512))

(declare-fun m!614843 () Bool)

(assert (=> b!640906 m!614843))

(assert (=> b!640906 m!614843))

(declare-fun m!614845 () Bool)

(assert (=> b!640906 m!614845))

(assert (=> bm!33512 m!614843))

(declare-fun m!614847 () Bool)

(assert (=> bm!33512 m!614847))

(assert (=> b!640907 m!614843))

(assert (=> b!640907 m!614843))

(declare-fun m!614849 () Bool)

(assert (=> b!640907 m!614849))

(assert (=> b!640910 m!614843))

(assert (=> b!640910 m!614843))

(assert (=> b!640910 m!614845))

(assert (=> b!640798 d!90365))

(declare-fun d!90367 () Bool)

(assert (=> d!90367 (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296787 () Unit!21674)

(declare-fun choose!114 (array!38333 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21674)

(assert (=> d!90367 (= lt!296787 (choose!114 lt!296717 (select (arr!18382 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90367 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90367 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296717 (select (arr!18382 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!296787)))

(declare-fun bs!19190 () Bool)

(assert (= bs!19190 d!90367))

(assert (=> bs!19190 m!614701))

(assert (=> bs!19190 m!614743))

(assert (=> bs!19190 m!614701))

(declare-fun m!614851 () Bool)

(assert (=> bs!19190 m!614851))

(assert (=> b!640798 d!90367))

(declare-fun d!90369 () Bool)

(assert (=> d!90369 (arrayNoDuplicates!0 lt!296717 j!136 Nil!12473)))

(declare-fun lt!296790 () Unit!21674)

(declare-fun choose!39 (array!38333 (_ BitVec 32) (_ BitVec 32)) Unit!21674)

(assert (=> d!90369 (= lt!296790 (choose!39 lt!296717 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90369 (bvslt (size!18746 lt!296717) #b01111111111111111111111111111111)))

(assert (=> d!90369 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!296717 #b00000000000000000000000000000000 j!136) lt!296790)))

(declare-fun bs!19191 () Bool)

(assert (= bs!19191 d!90369))

(assert (=> bs!19191 m!614735))

(declare-fun m!614853 () Bool)

(assert (=> bs!19191 m!614853))

(assert (=> b!640798 d!90369))

(declare-fun d!90371 () Bool)

(declare-fun res!415255 () Bool)

(declare-fun e!366933 () Bool)

(assert (=> d!90371 (=> res!415255 e!366933)))

(assert (=> d!90371 (= res!415255 (= (select (arr!18382 lt!296717) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18382 a!2986) j!136)))))

(assert (=> d!90371 (= (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!366933)))

(declare-fun b!640915 () Bool)

(declare-fun e!366934 () Bool)

(assert (=> b!640915 (= e!366933 e!366934)))

(declare-fun res!415256 () Bool)

(assert (=> b!640915 (=> (not res!415256) (not e!366934))))

(assert (=> b!640915 (= res!415256 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18746 lt!296717)))))

(declare-fun b!640916 () Bool)

(assert (=> b!640916 (= e!366934 (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90371 (not res!415255)) b!640915))

(assert (= (and b!640915 res!415256) b!640916))

(declare-fun m!614855 () Bool)

(assert (=> d!90371 m!614855))

(assert (=> b!640916 m!614701))

(declare-fun m!614857 () Bool)

(assert (=> b!640916 m!614857))

(assert (=> b!640798 d!90371))

(declare-fun b!640917 () Bool)

(declare-fun e!366935 () Bool)

(declare-fun e!366936 () Bool)

(assert (=> b!640917 (= e!366935 e!366936)))

(declare-fun c!73197 () Bool)

(assert (=> b!640917 (= c!73197 (validKeyInArray!0 (select (arr!18382 lt!296717) #b00000000000000000000000000000000)))))

(declare-fun d!90373 () Bool)

(declare-fun res!415257 () Bool)

(declare-fun e!366937 () Bool)

(assert (=> d!90373 (=> res!415257 e!366937)))

(assert (=> d!90373 (= res!415257 (bvsge #b00000000000000000000000000000000 (size!18746 lt!296717)))))

(assert (=> d!90373 (= (arrayNoDuplicates!0 lt!296717 #b00000000000000000000000000000000 Nil!12473) e!366937)))

(declare-fun bm!33513 () Bool)

(declare-fun call!33516 () Bool)

(assert (=> bm!33513 (= call!33516 (arrayNoDuplicates!0 lt!296717 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73197 (Cons!12472 (select (arr!18382 lt!296717) #b00000000000000000000000000000000) Nil!12473) Nil!12473)))))

(declare-fun b!640918 () Bool)

(declare-fun e!366938 () Bool)

(assert (=> b!640918 (= e!366938 (contains!3129 Nil!12473 (select (arr!18382 lt!296717) #b00000000000000000000000000000000)))))

(declare-fun b!640919 () Bool)

(assert (=> b!640919 (= e!366936 call!33516)))

(declare-fun b!640920 () Bool)

(assert (=> b!640920 (= e!366936 call!33516)))

(declare-fun b!640921 () Bool)

(assert (=> b!640921 (= e!366937 e!366935)))

(declare-fun res!415259 () Bool)

(assert (=> b!640921 (=> (not res!415259) (not e!366935))))

(assert (=> b!640921 (= res!415259 (not e!366938))))

(declare-fun res!415258 () Bool)

(assert (=> b!640921 (=> (not res!415258) (not e!366938))))

(assert (=> b!640921 (= res!415258 (validKeyInArray!0 (select (arr!18382 lt!296717) #b00000000000000000000000000000000)))))

(assert (= (and d!90373 (not res!415257)) b!640921))

(assert (= (and b!640921 res!415258) b!640918))

(assert (= (and b!640921 res!415259) b!640917))

(assert (= (and b!640917 c!73197) b!640919))

(assert (= (and b!640917 (not c!73197)) b!640920))

(assert (= (or b!640919 b!640920) bm!33513))

(declare-fun m!614859 () Bool)

(assert (=> b!640917 m!614859))

(assert (=> b!640917 m!614859))

(declare-fun m!614861 () Bool)

(assert (=> b!640917 m!614861))

(assert (=> bm!33513 m!614859))

(declare-fun m!614863 () Bool)

(assert (=> bm!33513 m!614863))

(assert (=> b!640918 m!614859))

(assert (=> b!640918 m!614859))

(declare-fun m!614865 () Bool)

(assert (=> b!640918 m!614865))

(assert (=> b!640921 m!614859))

(assert (=> b!640921 m!614859))

(assert (=> b!640921 m!614861))

(assert (=> b!640798 d!90373))

(declare-fun d!90375 () Bool)

(declare-fun e!366941 () Bool)

(assert (=> d!90375 e!366941))

(declare-fun res!415262 () Bool)

(assert (=> d!90375 (=> (not res!415262) (not e!366941))))

(assert (=> d!90375 (= res!415262 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18746 a!2986))))))

(declare-fun lt!296793 () Unit!21674)

(declare-fun choose!41 (array!38333 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12476) Unit!21674)

(assert (=> d!90375 (= lt!296793 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12473))))

(assert (=> d!90375 (bvslt (size!18746 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90375 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12473) lt!296793)))

(declare-fun b!640924 () Bool)

(assert (=> b!640924 (= e!366941 (arrayNoDuplicates!0 (array!38334 (store (arr!18382 a!2986) i!1108 k0!1786) (size!18746 a!2986)) #b00000000000000000000000000000000 Nil!12473))))

(assert (= (and d!90375 res!415262) b!640924))

(declare-fun m!614867 () Bool)

(assert (=> d!90375 m!614867))

(assert (=> b!640924 m!614713))

(declare-fun m!614869 () Bool)

(assert (=> b!640924 m!614869))

(assert (=> b!640798 d!90375))

(declare-fun b!640967 () Bool)

(declare-fun e!366966 () SeekEntryResult!6829)

(assert (=> b!640967 (= e!366966 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18382 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640968 () Bool)

(declare-fun c!73217 () Bool)

(declare-fun lt!296807 () (_ BitVec 64))

(assert (=> b!640968 (= c!73217 (= lt!296807 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!366967 () SeekEntryResult!6829)

(assert (=> b!640968 (= e!366967 e!366966)))

(declare-fun b!640969 () Bool)

(declare-fun e!366968 () SeekEntryResult!6829)

(assert (=> b!640969 (= e!366968 Undefined!6829)))

(declare-fun b!640970 () Bool)

(assert (=> b!640970 (= e!366966 (MissingVacant!6829 vacantSpotIndex!68))))

(declare-fun b!640972 () Bool)

(assert (=> b!640972 (= e!366967 (Found!6829 index!984))))

(declare-fun b!640971 () Bool)

(assert (=> b!640971 (= e!366968 e!366967)))

(declare-fun c!73216 () Bool)

(assert (=> b!640971 (= c!73216 (= lt!296807 (select (arr!18382 a!2986) j!136)))))

(declare-fun d!90381 () Bool)

(declare-fun lt!296806 () SeekEntryResult!6829)

(assert (=> d!90381 (and (or ((_ is Undefined!6829) lt!296806) (not ((_ is Found!6829) lt!296806)) (and (bvsge (index!29636 lt!296806) #b00000000000000000000000000000000) (bvslt (index!29636 lt!296806) (size!18746 a!2986)))) (or ((_ is Undefined!6829) lt!296806) ((_ is Found!6829) lt!296806) (not ((_ is MissingVacant!6829) lt!296806)) (not (= (index!29638 lt!296806) vacantSpotIndex!68)) (and (bvsge (index!29638 lt!296806) #b00000000000000000000000000000000) (bvslt (index!29638 lt!296806) (size!18746 a!2986)))) (or ((_ is Undefined!6829) lt!296806) (ite ((_ is Found!6829) lt!296806) (= (select (arr!18382 a!2986) (index!29636 lt!296806)) (select (arr!18382 a!2986) j!136)) (and ((_ is MissingVacant!6829) lt!296806) (= (index!29638 lt!296806) vacantSpotIndex!68) (= (select (arr!18382 a!2986) (index!29638 lt!296806)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90381 (= lt!296806 e!366968)))

(declare-fun c!73218 () Bool)

(assert (=> d!90381 (= c!73218 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90381 (= lt!296807 (select (arr!18382 a!2986) index!984))))

(assert (=> d!90381 (validMask!0 mask!3053)))

(assert (=> d!90381 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18382 a!2986) j!136) a!2986 mask!3053) lt!296806)))

(assert (= (and d!90381 c!73218) b!640969))

(assert (= (and d!90381 (not c!73218)) b!640971))

(assert (= (and b!640971 c!73216) b!640972))

(assert (= (and b!640971 (not c!73216)) b!640968))

(assert (= (and b!640968 c!73217) b!640970))

(assert (= (and b!640968 (not c!73217)) b!640967))

(assert (=> b!640967 m!614731))

(assert (=> b!640967 m!614731))

(assert (=> b!640967 m!614701))

(declare-fun m!614889 () Bool)

(assert (=> b!640967 m!614889))

(declare-fun m!614895 () Bool)

(assert (=> d!90381 m!614895))

(declare-fun m!614897 () Bool)

(assert (=> d!90381 m!614897))

(assert (=> d!90381 m!614709))

(assert (=> d!90381 m!614749))

(assert (=> b!640802 d!90381))

(declare-fun d!90393 () Bool)

(assert (=> d!90393 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57950 d!90393))

(declare-fun d!90407 () Bool)

(assert (=> d!90407 (= (array_inv!14156 a!2986) (bvsge (size!18746 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57950 d!90407))

(declare-fun d!90409 () Bool)

(assert (=> d!90409 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!640791 d!90409))

(declare-fun b!640995 () Bool)

(declare-fun e!366987 () Bool)

(declare-fun e!366988 () Bool)

(assert (=> b!640995 (= e!366987 e!366988)))

(declare-fun c!73223 () Bool)

(assert (=> b!640995 (= c!73223 (validKeyInArray!0 (select (arr!18382 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90411 () Bool)

(declare-fun res!415283 () Bool)

(declare-fun e!366989 () Bool)

(assert (=> d!90411 (=> res!415283 e!366989)))

(assert (=> d!90411 (= res!415283 (bvsge #b00000000000000000000000000000000 (size!18746 a!2986)))))

(assert (=> d!90411 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12473) e!366989)))

(declare-fun bm!33518 () Bool)

(declare-fun call!33521 () Bool)

(assert (=> bm!33518 (= call!33521 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73223 (Cons!12472 (select (arr!18382 a!2986) #b00000000000000000000000000000000) Nil!12473) Nil!12473)))))

(declare-fun b!640996 () Bool)

(declare-fun e!366990 () Bool)

(assert (=> b!640996 (= e!366990 (contains!3129 Nil!12473 (select (arr!18382 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!640997 () Bool)

(assert (=> b!640997 (= e!366988 call!33521)))

(declare-fun b!640998 () Bool)

(assert (=> b!640998 (= e!366988 call!33521)))

(declare-fun b!640999 () Bool)

(assert (=> b!640999 (= e!366989 e!366987)))

(declare-fun res!415285 () Bool)

(assert (=> b!640999 (=> (not res!415285) (not e!366987))))

(assert (=> b!640999 (= res!415285 (not e!366990))))

(declare-fun res!415284 () Bool)

(assert (=> b!640999 (=> (not res!415284) (not e!366990))))

(assert (=> b!640999 (= res!415284 (validKeyInArray!0 (select (arr!18382 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90411 (not res!415283)) b!640999))

(assert (= (and b!640999 res!415284) b!640996))

(assert (= (and b!640999 res!415285) b!640995))

(assert (= (and b!640995 c!73223) b!640997))

(assert (= (and b!640995 (not c!73223)) b!640998))

(assert (= (or b!640997 b!640998) bm!33518))

(assert (=> b!640995 m!614831))

(assert (=> b!640995 m!614831))

(assert (=> b!640995 m!614841))

(assert (=> bm!33518 m!614831))

(declare-fun m!614923 () Bool)

(assert (=> bm!33518 m!614923))

(assert (=> b!640996 m!614831))

(assert (=> b!640996 m!614831))

(declare-fun m!614925 () Bool)

(assert (=> b!640996 m!614925))

(assert (=> b!640999 m!614831))

(assert (=> b!640999 m!614831))

(assert (=> b!640999 m!614841))

(assert (=> b!640801 d!90411))

(declare-fun d!90415 () Bool)

(declare-fun res!415286 () Bool)

(declare-fun e!366991 () Bool)

(assert (=> d!90415 (=> res!415286 e!366991)))

(assert (=> d!90415 (= res!415286 (= (select (arr!18382 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!90415 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!366991)))

(declare-fun b!641000 () Bool)

(declare-fun e!366992 () Bool)

(assert (=> b!641000 (= e!366991 e!366992)))

(declare-fun res!415287 () Bool)

(assert (=> b!641000 (=> (not res!415287) (not e!366992))))

(assert (=> b!641000 (= res!415287 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18746 a!2986)))))

(declare-fun b!641001 () Bool)

(assert (=> b!641001 (= e!366992 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90415 (not res!415286)) b!641000))

(assert (= (and b!641000 res!415287) b!641001))

(assert (=> d!90415 m!614831))

(declare-fun m!614927 () Bool)

(assert (=> b!641001 m!614927))

(assert (=> b!640790 d!90415))

(declare-fun d!90417 () Bool)

(declare-fun res!415288 () Bool)

(declare-fun e!366993 () Bool)

(assert (=> d!90417 (=> res!415288 e!366993)))

(assert (=> d!90417 (= res!415288 (= (select (arr!18382 lt!296717) j!136) (select (arr!18382 a!2986) j!136)))))

(assert (=> d!90417 (= (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) j!136) e!366993)))

(declare-fun b!641002 () Bool)

(declare-fun e!366994 () Bool)

(assert (=> b!641002 (= e!366993 e!366994)))

(declare-fun res!415289 () Bool)

(assert (=> b!641002 (=> (not res!415289) (not e!366994))))

(assert (=> b!641002 (= res!415289 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18746 lt!296717)))))

(declare-fun b!641003 () Bool)

(assert (=> b!641003 (= e!366994 (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90417 (not res!415288)) b!641002))

(assert (= (and b!641002 res!415289) b!641003))

(assert (=> d!90417 m!614843))

(assert (=> b!641003 m!614701))

(declare-fun m!614929 () Bool)

(assert (=> b!641003 m!614929))

(assert (=> b!640794 d!90417))

(declare-fun d!90419 () Bool)

(declare-fun res!415298 () Bool)

(declare-fun e!367003 () Bool)

(assert (=> d!90419 (=> res!415298 e!367003)))

(assert (=> d!90419 (= res!415298 ((_ is Nil!12473) Nil!12473))))

(assert (=> d!90419 (= (noDuplicate!401 Nil!12473) e!367003)))

(declare-fun b!641012 () Bool)

(declare-fun e!367004 () Bool)

(assert (=> b!641012 (= e!367003 e!367004)))

(declare-fun res!415299 () Bool)

(assert (=> b!641012 (=> (not res!415299) (not e!367004))))

(assert (=> b!641012 (= res!415299 (not (contains!3129 (t!18712 Nil!12473) (h!13517 Nil!12473))))))

(declare-fun b!641013 () Bool)

(assert (=> b!641013 (= e!367004 (noDuplicate!401 (t!18712 Nil!12473)))))

(assert (= (and d!90419 (not res!415298)) b!641012))

(assert (= (and b!641012 res!415299) b!641013))

(declare-fun m!614931 () Bool)

(assert (=> b!641012 m!614931))

(declare-fun m!614933 () Bool)

(assert (=> b!641013 m!614933))

(assert (=> b!640804 d!90419))

(declare-fun d!90421 () Bool)

(assert (=> d!90421 (= (validKeyInArray!0 (select (arr!18382 a!2986) j!136)) (and (not (= (select (arr!18382 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18382 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!640793 d!90421))

(declare-fun d!90423 () Bool)

(declare-fun res!415301 () Bool)

(declare-fun e!367006 () Bool)

(assert (=> d!90423 (=> res!415301 e!367006)))

(assert (=> d!90423 (= res!415301 (= (select (arr!18382 lt!296717) index!984) (select (arr!18382 a!2986) j!136)))))

(assert (=> d!90423 (= (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) index!984) e!367006)))

(declare-fun b!641015 () Bool)

(declare-fun e!367007 () Bool)

(assert (=> b!641015 (= e!367006 e!367007)))

(declare-fun res!415302 () Bool)

(assert (=> b!641015 (=> (not res!415302) (not e!367007))))

(assert (=> b!641015 (= res!415302 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18746 lt!296717)))))

(declare-fun b!641016 () Bool)

(assert (=> b!641016 (= e!367007 (arrayContainsKey!0 lt!296717 (select (arr!18382 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90423 (not res!415301)) b!641015))

(assert (= (and b!641015 res!415302) b!641016))

(declare-fun m!614937 () Bool)

(assert (=> d!90423 m!614937))

(assert (=> b!641016 m!614701))

(declare-fun m!614941 () Bool)

(assert (=> b!641016 m!614941))

(assert (=> b!640796 d!90423))

(declare-fun b!641018 () Bool)

(declare-fun e!367009 () SeekEntryResult!6829)

(assert (=> b!641018 (= e!367009 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!296722 lt!296717 mask!3053))))

(declare-fun b!641019 () Bool)

(declare-fun c!73225 () Bool)

(declare-fun lt!296821 () (_ BitVec 64))

(assert (=> b!641019 (= c!73225 (= lt!296821 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367010 () SeekEntryResult!6829)

(assert (=> b!641019 (= e!367010 e!367009)))

(declare-fun b!641020 () Bool)

(declare-fun e!367011 () SeekEntryResult!6829)

(assert (=> b!641020 (= e!367011 Undefined!6829)))

(declare-fun b!641021 () Bool)

(assert (=> b!641021 (= e!367009 (MissingVacant!6829 vacantSpotIndex!68))))

(declare-fun b!641023 () Bool)

(assert (=> b!641023 (= e!367010 (Found!6829 index!984))))

(declare-fun b!641022 () Bool)

(assert (=> b!641022 (= e!367011 e!367010)))

(declare-fun c!73224 () Bool)

(assert (=> b!641022 (= c!73224 (= lt!296821 lt!296722))))

(declare-fun lt!296820 () SeekEntryResult!6829)

(declare-fun d!90425 () Bool)

(assert (=> d!90425 (and (or ((_ is Undefined!6829) lt!296820) (not ((_ is Found!6829) lt!296820)) (and (bvsge (index!29636 lt!296820) #b00000000000000000000000000000000) (bvslt (index!29636 lt!296820) (size!18746 lt!296717)))) (or ((_ is Undefined!6829) lt!296820) ((_ is Found!6829) lt!296820) (not ((_ is MissingVacant!6829) lt!296820)) (not (= (index!29638 lt!296820) vacantSpotIndex!68)) (and (bvsge (index!29638 lt!296820) #b00000000000000000000000000000000) (bvslt (index!29638 lt!296820) (size!18746 lt!296717)))) (or ((_ is Undefined!6829) lt!296820) (ite ((_ is Found!6829) lt!296820) (= (select (arr!18382 lt!296717) (index!29636 lt!296820)) lt!296722) (and ((_ is MissingVacant!6829) lt!296820) (= (index!29638 lt!296820) vacantSpotIndex!68) (= (select (arr!18382 lt!296717) (index!29638 lt!296820)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90425 (= lt!296820 e!367011)))

(declare-fun c!73226 () Bool)

(assert (=> d!90425 (= c!73226 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90425 (= lt!296821 (select (arr!18382 lt!296717) index!984))))

(assert (=> d!90425 (validMask!0 mask!3053)))

(assert (=> d!90425 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296722 lt!296717 mask!3053) lt!296820)))

(assert (= (and d!90425 c!73226) b!641020))

(assert (= (and d!90425 (not c!73226)) b!641022))

(assert (= (and b!641022 c!73224) b!641023))

(assert (= (and b!641022 (not c!73224)) b!641019))

(assert (= (and b!641019 c!73225) b!641021))

(assert (= (and b!641019 (not c!73225)) b!641018))

(assert (=> b!641018 m!614731))

(assert (=> b!641018 m!614731))

(declare-fun m!614947 () Bool)

(assert (=> b!641018 m!614947))

(declare-fun m!614949 () Bool)

(assert (=> d!90425 m!614949))

(declare-fun m!614951 () Bool)

(assert (=> d!90425 m!614951))

(assert (=> d!90425 m!614937))

(assert (=> d!90425 m!614749))

(assert (=> b!640795 d!90425))

(declare-fun d!90431 () Bool)

(declare-fun e!367046 () Bool)

(assert (=> d!90431 e!367046))

(declare-fun res!415328 () Bool)

(assert (=> d!90431 (=> (not res!415328) (not e!367046))))

(assert (=> d!90431 (= res!415328 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18746 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18746 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18746 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18746 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18746 a!2986))))))

(declare-fun lt!296843 () Unit!21674)

(declare-fun choose!9 (array!38333 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21674)

(assert (=> d!90431 (= lt!296843 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90431 (validMask!0 mask!3053)))

(assert (=> d!90431 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 mask!3053) lt!296843)))

(declare-fun b!641068 () Bool)

(assert (=> b!641068 (= e!367046 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 (select (arr!18382 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 (select (store (arr!18382 a!2986) i!1108 k0!1786) j!136) (array!38334 (store (arr!18382 a!2986) i!1108 k0!1786) (size!18746 a!2986)) mask!3053)))))

(assert (= (and d!90431 res!415328) b!641068))

(declare-fun m!614979 () Bool)

(assert (=> d!90431 m!614979))

(assert (=> d!90431 m!614749))

(assert (=> b!641068 m!614701))

(assert (=> b!641068 m!614727))

(assert (=> b!641068 m!614723))

(assert (=> b!641068 m!614723))

(declare-fun m!614989 () Bool)

(assert (=> b!641068 m!614989))

(assert (=> b!641068 m!614701))

(assert (=> b!641068 m!614713))

(assert (=> b!640795 d!90431))

(declare-fun b!641077 () Bool)

(declare-fun e!367053 () SeekEntryResult!6829)

(assert (=> b!641077 (= e!367053 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296721 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18382 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641078 () Bool)

(declare-fun c!73240 () Bool)

(declare-fun lt!296851 () (_ BitVec 64))

(assert (=> b!641078 (= c!73240 (= lt!296851 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367054 () SeekEntryResult!6829)

(assert (=> b!641078 (= e!367054 e!367053)))

(declare-fun b!641079 () Bool)

(declare-fun e!367055 () SeekEntryResult!6829)

(assert (=> b!641079 (= e!367055 Undefined!6829)))

(declare-fun b!641080 () Bool)

(assert (=> b!641080 (= e!367053 (MissingVacant!6829 vacantSpotIndex!68))))

(declare-fun b!641082 () Bool)

(assert (=> b!641082 (= e!367054 (Found!6829 lt!296721))))

(declare-fun b!641081 () Bool)

(assert (=> b!641081 (= e!367055 e!367054)))

(declare-fun c!73239 () Bool)

(assert (=> b!641081 (= c!73239 (= lt!296851 (select (arr!18382 a!2986) j!136)))))

(declare-fun d!90449 () Bool)

(declare-fun lt!296850 () SeekEntryResult!6829)

(assert (=> d!90449 (and (or ((_ is Undefined!6829) lt!296850) (not ((_ is Found!6829) lt!296850)) (and (bvsge (index!29636 lt!296850) #b00000000000000000000000000000000) (bvslt (index!29636 lt!296850) (size!18746 a!2986)))) (or ((_ is Undefined!6829) lt!296850) ((_ is Found!6829) lt!296850) (not ((_ is MissingVacant!6829) lt!296850)) (not (= (index!29638 lt!296850) vacantSpotIndex!68)) (and (bvsge (index!29638 lt!296850) #b00000000000000000000000000000000) (bvslt (index!29638 lt!296850) (size!18746 a!2986)))) (or ((_ is Undefined!6829) lt!296850) (ite ((_ is Found!6829) lt!296850) (= (select (arr!18382 a!2986) (index!29636 lt!296850)) (select (arr!18382 a!2986) j!136)) (and ((_ is MissingVacant!6829) lt!296850) (= (index!29638 lt!296850) vacantSpotIndex!68) (= (select (arr!18382 a!2986) (index!29638 lt!296850)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90449 (= lt!296850 e!367055)))

(declare-fun c!73241 () Bool)

(assert (=> d!90449 (= c!73241 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90449 (= lt!296851 (select (arr!18382 a!2986) lt!296721))))

(assert (=> d!90449 (validMask!0 mask!3053)))

(assert (=> d!90449 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 (select (arr!18382 a!2986) j!136) a!2986 mask!3053) lt!296850)))

(assert (= (and d!90449 c!73241) b!641079))

(assert (= (and d!90449 (not c!73241)) b!641081))

(assert (= (and b!641081 c!73239) b!641082))

(assert (= (and b!641081 (not c!73239)) b!641078))

(assert (= (and b!641078 c!73240) b!641080))

(assert (= (and b!641078 (not c!73240)) b!641077))

(declare-fun m!615007 () Bool)

(assert (=> b!641077 m!615007))

(assert (=> b!641077 m!615007))

(assert (=> b!641077 m!614701))

(declare-fun m!615011 () Bool)

(assert (=> b!641077 m!615011))

(declare-fun m!615013 () Bool)

(assert (=> d!90449 m!615013))

(declare-fun m!615015 () Bool)

(assert (=> d!90449 m!615015))

(declare-fun m!615017 () Bool)

(assert (=> d!90449 m!615017))

(assert (=> d!90449 m!614749))

(assert (=> b!640795 d!90449))

(declare-fun d!90457 () Bool)

(declare-fun lt!296854 () (_ BitVec 32))

(assert (=> d!90457 (and (bvsge lt!296854 #b00000000000000000000000000000000) (bvslt lt!296854 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90457 (= lt!296854 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90457 (validMask!0 mask!3053)))

(assert (=> d!90457 (= (nextIndex!0 index!984 x!910 mask!3053) lt!296854)))

(declare-fun bs!19195 () Bool)

(assert (= bs!19195 d!90457))

(declare-fun m!615023 () Bool)

(assert (=> bs!19195 m!615023))

(assert (=> bs!19195 m!614749))

(assert (=> b!640795 d!90457))

(declare-fun e!367064 () SeekEntryResult!6829)

(declare-fun b!641091 () Bool)

(assert (=> b!641091 (= e!367064 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296721 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!296722 lt!296717 mask!3053))))

(declare-fun b!641092 () Bool)

(declare-fun c!73243 () Bool)

(declare-fun lt!296856 () (_ BitVec 64))

(assert (=> b!641092 (= c!73243 (= lt!296856 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367065 () SeekEntryResult!6829)

(assert (=> b!641092 (= e!367065 e!367064)))

(declare-fun b!641093 () Bool)

(declare-fun e!367066 () SeekEntryResult!6829)

(assert (=> b!641093 (= e!367066 Undefined!6829)))

(declare-fun b!641094 () Bool)

(assert (=> b!641094 (= e!367064 (MissingVacant!6829 vacantSpotIndex!68))))

(declare-fun b!641096 () Bool)

(assert (=> b!641096 (= e!367065 (Found!6829 lt!296721))))

(declare-fun b!641095 () Bool)

(assert (=> b!641095 (= e!367066 e!367065)))

(declare-fun c!73242 () Bool)

(assert (=> b!641095 (= c!73242 (= lt!296856 lt!296722))))

(declare-fun d!90461 () Bool)

(declare-fun lt!296855 () SeekEntryResult!6829)

(assert (=> d!90461 (and (or ((_ is Undefined!6829) lt!296855) (not ((_ is Found!6829) lt!296855)) (and (bvsge (index!29636 lt!296855) #b00000000000000000000000000000000) (bvslt (index!29636 lt!296855) (size!18746 lt!296717)))) (or ((_ is Undefined!6829) lt!296855) ((_ is Found!6829) lt!296855) (not ((_ is MissingVacant!6829) lt!296855)) (not (= (index!29638 lt!296855) vacantSpotIndex!68)) (and (bvsge (index!29638 lt!296855) #b00000000000000000000000000000000) (bvslt (index!29638 lt!296855) (size!18746 lt!296717)))) (or ((_ is Undefined!6829) lt!296855) (ite ((_ is Found!6829) lt!296855) (= (select (arr!18382 lt!296717) (index!29636 lt!296855)) lt!296722) (and ((_ is MissingVacant!6829) lt!296855) (= (index!29638 lt!296855) vacantSpotIndex!68) (= (select (arr!18382 lt!296717) (index!29638 lt!296855)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90461 (= lt!296855 e!367066)))

(declare-fun c!73244 () Bool)

(assert (=> d!90461 (= c!73244 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90461 (= lt!296856 (select (arr!18382 lt!296717) lt!296721))))

(assert (=> d!90461 (validMask!0 mask!3053)))

(assert (=> d!90461 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296721 vacantSpotIndex!68 lt!296722 lt!296717 mask!3053) lt!296855)))

(assert (= (and d!90461 c!73244) b!641093))

(assert (= (and d!90461 (not c!73244)) b!641095))

(assert (= (and b!641095 c!73242) b!641096))

(assert (= (and b!641095 (not c!73242)) b!641092))

(assert (= (and b!641092 c!73243) b!641094))

(assert (= (and b!641092 (not c!73243)) b!641091))

(assert (=> b!641091 m!615007))

(assert (=> b!641091 m!615007))

(declare-fun m!615025 () Bool)

(assert (=> b!641091 m!615025))

(declare-fun m!615027 () Bool)

(assert (=> d!90461 m!615027))

(declare-fun m!615029 () Bool)

(assert (=> d!90461 m!615029))

(declare-fun m!615031 () Bool)

(assert (=> d!90461 m!615031))

(assert (=> d!90461 m!614749))

(assert (=> b!640795 d!90461))

(check-sat (not d!90369) (not b!641091) (not b!641077) (not d!90457) (not b!640910) (not bm!33509) (not d!90449) (not b!640967) (not b!640924) (not d!90381) (not b!640893) (not d!90361) (not b!641003) (not b!641068) (not d!90425) (not b!640916) (not b!641001) (not b!640918) (not bm!33513) (not b!640999) (not d!90431) (not bm!33518) (not b!640921) (not b!640894) (not d!90375) (not b!641018) (not bm!33512) (not d!90461) (not b!641013) (not b!640995) (not b!640881) (not b!640906) (not b!641016) (not b!640996) (not b!641012) (not d!90367) (not b!640907) (not b!640917))
(check-sat)
