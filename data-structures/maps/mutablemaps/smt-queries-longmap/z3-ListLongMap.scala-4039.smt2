; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55118 () Bool)

(assert start!55118)

(declare-fun res!387116 () Bool)

(declare-fun e!344791 () Bool)

(assert (=> start!55118 (=> (not res!387116) (not e!344791))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55118 (= res!387116 (validMask!0 mask!3053))))

(assert (=> start!55118 e!344791))

(assert (=> start!55118 true))

(declare-datatypes ((array!37154 0))(
  ( (array!37155 (arr!17830 (Array (_ BitVec 32) (_ BitVec 64))) (size!18194 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37154)

(declare-fun array_inv!13604 (array!37154) Bool)

(assert (=> start!55118 (array_inv!13604 a!2986)))

(declare-fun b!602761 () Bool)

(declare-fun e!344788 () Bool)

(declare-fun e!344785 () Bool)

(assert (=> b!602761 (= e!344788 e!344785)))

(declare-fun res!387125 () Bool)

(assert (=> b!602761 (=> (not res!387125) (not e!344785))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6277 0))(
  ( (MissingZero!6277 (index!27370 (_ BitVec 32))) (Found!6277 (index!27371 (_ BitVec 32))) (Intermediate!6277 (undefined!7089 Bool) (index!27372 (_ BitVec 32)) (x!56199 (_ BitVec 32))) (Undefined!6277) (MissingVacant!6277 (index!27373 (_ BitVec 32))) )
))
(declare-fun lt!274654 () SeekEntryResult!6277)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!602761 (= res!387125 (and (= lt!274654 (Found!6277 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17830 a!2986) index!984) (select (arr!17830 a!2986) j!136))) (not (= (select (arr!17830 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37154 (_ BitVec 32)) SeekEntryResult!6277)

(assert (=> b!602761 (= lt!274654 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17830 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602762 () Bool)

(declare-fun e!344782 () Bool)

(declare-fun e!344789 () Bool)

(assert (=> b!602762 (= e!344782 e!344789)))

(declare-fun res!387130 () Bool)

(assert (=> b!602762 (=> res!387130 e!344789)))

(declare-fun lt!274642 () (_ BitVec 64))

(declare-fun lt!274646 () (_ BitVec 64))

(assert (=> b!602762 (= res!387130 (or (not (= (select (arr!17830 a!2986) j!136) lt!274642)) (not (= (select (arr!17830 a!2986) j!136) lt!274646)) (bvsge j!136 index!984)))))

(declare-fun b!602763 () Bool)

(declare-fun res!387127 () Bool)

(assert (=> b!602763 (=> (not res!387127) (not e!344791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602763 (= res!387127 (validKeyInArray!0 (select (arr!17830 a!2986) j!136)))))

(declare-fun b!602764 () Bool)

(declare-datatypes ((Unit!19090 0))(
  ( (Unit!19091) )
))
(declare-fun e!344786 () Unit!19090)

(declare-fun Unit!19092 () Unit!19090)

(assert (=> b!602764 (= e!344786 Unit!19092)))

(assert (=> b!602764 false))

(declare-fun b!602765 () Bool)

(declare-fun res!387114 () Bool)

(assert (=> b!602765 (=> (not res!387114) (not e!344791))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!602765 (= res!387114 (validKeyInArray!0 k0!1786))))

(declare-fun b!602766 () Bool)

(declare-fun Unit!19093 () Unit!19090)

(assert (=> b!602766 (= e!344786 Unit!19093)))

(declare-fun b!602767 () Bool)

(declare-fun e!344784 () Bool)

(assert (=> b!602767 (= e!344784 e!344788)))

(declare-fun res!387131 () Bool)

(assert (=> b!602767 (=> (not res!387131) (not e!344788))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!602767 (= res!387131 (= (select (store (arr!17830 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!274651 () array!37154)

(assert (=> b!602767 (= lt!274651 (array!37155 (store (arr!17830 a!2986) i!1108 k0!1786) (size!18194 a!2986)))))

(declare-fun b!602768 () Bool)

(declare-fun res!387120 () Bool)

(assert (=> b!602768 (=> (not res!387120) (not e!344784))))

(declare-datatypes ((List!11924 0))(
  ( (Nil!11921) (Cons!11920 (h!12965 (_ BitVec 64)) (t!18160 List!11924)) )
))
(declare-fun arrayNoDuplicates!0 (array!37154 (_ BitVec 32) List!11924) Bool)

(assert (=> b!602768 (= res!387120 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11921))))

(declare-fun b!602769 () Bool)

(declare-fun e!344794 () Bool)

(assert (=> b!602769 (= e!344794 true)))

(declare-fun e!344790 () Bool)

(assert (=> b!602769 e!344790))

(declare-fun res!387129 () Bool)

(assert (=> b!602769 (=> (not res!387129) (not e!344790))))

(declare-fun arrayContainsKey!0 (array!37154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602769 (= res!387129 (arrayContainsKey!0 lt!274651 (select (arr!17830 a!2986) j!136) j!136))))

(declare-fun b!602770 () Bool)

(assert (=> b!602770 (= e!344790 (arrayContainsKey!0 lt!274651 (select (arr!17830 a!2986) j!136) index!984))))

(declare-fun b!602771 () Bool)

(declare-fun e!344780 () Bool)

(declare-fun e!344787 () Bool)

(assert (=> b!602771 (= e!344780 e!344787)))

(declare-fun res!387122 () Bool)

(assert (=> b!602771 (=> res!387122 e!344787)))

(assert (=> b!602771 (= res!387122 (or (not (= (select (arr!17830 a!2986) j!136) lt!274642)) (not (= (select (arr!17830 a!2986) j!136) lt!274646))))))

(assert (=> b!602771 e!344782))

(declare-fun res!387126 () Bool)

(assert (=> b!602771 (=> (not res!387126) (not e!344782))))

(assert (=> b!602771 (= res!387126 (= lt!274646 (select (arr!17830 a!2986) j!136)))))

(assert (=> b!602771 (= lt!274646 (select (store (arr!17830 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!602772 () Bool)

(declare-fun res!387119 () Bool)

(assert (=> b!602772 (=> (not res!387119) (not e!344791))))

(assert (=> b!602772 (= res!387119 (and (= (size!18194 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18194 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18194 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602773 () Bool)

(assert (=> b!602773 (= e!344787 e!344794)))

(declare-fun res!387118 () Bool)

(assert (=> b!602773 (=> res!387118 e!344794)))

(assert (=> b!602773 (= res!387118 (bvsge index!984 j!136))))

(declare-fun lt!274648 () Unit!19090)

(declare-fun e!344781 () Unit!19090)

(assert (=> b!602773 (= lt!274648 e!344781)))

(declare-fun c!68192 () Bool)

(assert (=> b!602773 (= c!68192 (bvslt j!136 index!984))))

(declare-fun b!602774 () Bool)

(declare-fun res!387113 () Bool)

(assert (=> b!602774 (=> (not res!387113) (not e!344784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37154 (_ BitVec 32)) Bool)

(assert (=> b!602774 (= res!387113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602775 () Bool)

(declare-fun res!387128 () Bool)

(assert (=> b!602775 (=> (not res!387128) (not e!344784))))

(assert (=> b!602775 (= res!387128 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17830 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602776 () Bool)

(assert (=> b!602776 (= e!344785 (not e!344780))))

(declare-fun res!387124 () Bool)

(assert (=> b!602776 (=> res!387124 e!344780)))

(declare-fun lt!274647 () SeekEntryResult!6277)

(assert (=> b!602776 (= res!387124 (not (= lt!274647 (Found!6277 index!984))))))

(declare-fun lt!274645 () Unit!19090)

(assert (=> b!602776 (= lt!274645 e!344786)))

(declare-fun c!68191 () Bool)

(assert (=> b!602776 (= c!68191 (= lt!274647 Undefined!6277))))

(assert (=> b!602776 (= lt!274647 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274642 lt!274651 mask!3053))))

(declare-fun e!344793 () Bool)

(assert (=> b!602776 e!344793))

(declare-fun res!387121 () Bool)

(assert (=> b!602776 (=> (not res!387121) (not e!344793))))

(declare-fun lt!274649 () (_ BitVec 32))

(declare-fun lt!274644 () SeekEntryResult!6277)

(assert (=> b!602776 (= res!387121 (= lt!274644 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274649 vacantSpotIndex!68 lt!274642 lt!274651 mask!3053)))))

(assert (=> b!602776 (= lt!274644 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274649 vacantSpotIndex!68 (select (arr!17830 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602776 (= lt!274642 (select (store (arr!17830 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!274655 () Unit!19090)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37154 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19090)

(assert (=> b!602776 (= lt!274655 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274649 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602776 (= lt!274649 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602777 () Bool)

(declare-fun Unit!19094 () Unit!19090)

(assert (=> b!602777 (= e!344781 Unit!19094)))

(declare-fun lt!274643 () Unit!19090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37154 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19090)

(assert (=> b!602777 (= lt!274643 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274651 (select (arr!17830 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602777 (arrayContainsKey!0 lt!274651 (select (arr!17830 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274653 () Unit!19090)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37154 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11924) Unit!19090)

(assert (=> b!602777 (= lt!274653 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11921))))

(assert (=> b!602777 (arrayNoDuplicates!0 lt!274651 #b00000000000000000000000000000000 Nil!11921)))

(declare-fun lt!274652 () Unit!19090)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37154 (_ BitVec 32) (_ BitVec 32)) Unit!19090)

(assert (=> b!602777 (= lt!274652 (lemmaNoDuplicateFromThenFromBigger!0 lt!274651 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602777 (arrayNoDuplicates!0 lt!274651 j!136 Nil!11921)))

(declare-fun lt!274650 () Unit!19090)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37154 (_ BitVec 64) (_ BitVec 32) List!11924) Unit!19090)

(assert (=> b!602777 (= lt!274650 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274651 (select (arr!17830 a!2986) j!136) j!136 Nil!11921))))

(assert (=> b!602777 false))

(declare-fun b!602778 () Bool)

(declare-fun Unit!19095 () Unit!19090)

(assert (=> b!602778 (= e!344781 Unit!19095)))

(declare-fun b!602779 () Bool)

(declare-fun e!344783 () Bool)

(assert (=> b!602779 (= e!344789 e!344783)))

(declare-fun res!387123 () Bool)

(assert (=> b!602779 (=> (not res!387123) (not e!344783))))

(assert (=> b!602779 (= res!387123 (arrayContainsKey!0 lt!274651 (select (arr!17830 a!2986) j!136) j!136))))

(declare-fun b!602780 () Bool)

(assert (=> b!602780 (= e!344791 e!344784)))

(declare-fun res!387117 () Bool)

(assert (=> b!602780 (=> (not res!387117) (not e!344784))))

(declare-fun lt!274656 () SeekEntryResult!6277)

(assert (=> b!602780 (= res!387117 (or (= lt!274656 (MissingZero!6277 i!1108)) (= lt!274656 (MissingVacant!6277 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37154 (_ BitVec 32)) SeekEntryResult!6277)

(assert (=> b!602780 (= lt!274656 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!602781 () Bool)

(assert (=> b!602781 (= e!344793 (= lt!274654 lt!274644))))

(declare-fun b!602782 () Bool)

(assert (=> b!602782 (= e!344783 (arrayContainsKey!0 lt!274651 (select (arr!17830 a!2986) j!136) index!984))))

(declare-fun b!602783 () Bool)

(declare-fun res!387115 () Bool)

(assert (=> b!602783 (=> (not res!387115) (not e!344791))))

(assert (=> b!602783 (= res!387115 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!55118 res!387116) b!602772))

(assert (= (and b!602772 res!387119) b!602763))

(assert (= (and b!602763 res!387127) b!602765))

(assert (= (and b!602765 res!387114) b!602783))

(assert (= (and b!602783 res!387115) b!602780))

(assert (= (and b!602780 res!387117) b!602774))

(assert (= (and b!602774 res!387113) b!602768))

(assert (= (and b!602768 res!387120) b!602775))

(assert (= (and b!602775 res!387128) b!602767))

(assert (= (and b!602767 res!387131) b!602761))

(assert (= (and b!602761 res!387125) b!602776))

(assert (= (and b!602776 res!387121) b!602781))

(assert (= (and b!602776 c!68191) b!602764))

(assert (= (and b!602776 (not c!68191)) b!602766))

(assert (= (and b!602776 (not res!387124)) b!602771))

(assert (= (and b!602771 res!387126) b!602762))

(assert (= (and b!602762 (not res!387130)) b!602779))

(assert (= (and b!602779 res!387123) b!602782))

(assert (= (and b!602771 (not res!387122)) b!602773))

(assert (= (and b!602773 c!68192) b!602777))

(assert (= (and b!602773 (not c!68192)) b!602778))

(assert (= (and b!602773 (not res!387118)) b!602769))

(assert (= (and b!602769 res!387129) b!602770))

(declare-fun m!579891 () Bool)

(assert (=> b!602783 m!579891))

(declare-fun m!579893 () Bool)

(assert (=> b!602763 m!579893))

(assert (=> b!602763 m!579893))

(declare-fun m!579895 () Bool)

(assert (=> b!602763 m!579895))

(declare-fun m!579897 () Bool)

(assert (=> b!602774 m!579897))

(assert (=> b!602770 m!579893))

(assert (=> b!602770 m!579893))

(declare-fun m!579899 () Bool)

(assert (=> b!602770 m!579899))

(assert (=> b!602771 m!579893))

(declare-fun m!579901 () Bool)

(assert (=> b!602771 m!579901))

(declare-fun m!579903 () Bool)

(assert (=> b!602771 m!579903))

(declare-fun m!579905 () Bool)

(assert (=> b!602776 m!579905))

(declare-fun m!579907 () Bool)

(assert (=> b!602776 m!579907))

(assert (=> b!602776 m!579893))

(declare-fun m!579909 () Bool)

(assert (=> b!602776 m!579909))

(declare-fun m!579911 () Bool)

(assert (=> b!602776 m!579911))

(assert (=> b!602776 m!579893))

(declare-fun m!579913 () Bool)

(assert (=> b!602776 m!579913))

(declare-fun m!579915 () Bool)

(assert (=> b!602776 m!579915))

(assert (=> b!602776 m!579901))

(declare-fun m!579917 () Bool)

(assert (=> b!602761 m!579917))

(assert (=> b!602761 m!579893))

(assert (=> b!602761 m!579893))

(declare-fun m!579919 () Bool)

(assert (=> b!602761 m!579919))

(assert (=> b!602782 m!579893))

(assert (=> b!602782 m!579893))

(assert (=> b!602782 m!579899))

(declare-fun m!579921 () Bool)

(assert (=> b!602765 m!579921))

(declare-fun m!579923 () Bool)

(assert (=> b!602768 m!579923))

(declare-fun m!579925 () Bool)

(assert (=> b!602780 m!579925))

(declare-fun m!579927 () Bool)

(assert (=> b!602775 m!579927))

(assert (=> b!602779 m!579893))

(assert (=> b!602779 m!579893))

(declare-fun m!579929 () Bool)

(assert (=> b!602779 m!579929))

(declare-fun m!579931 () Bool)

(assert (=> start!55118 m!579931))

(declare-fun m!579933 () Bool)

(assert (=> start!55118 m!579933))

(assert (=> b!602777 m!579893))

(declare-fun m!579935 () Bool)

(assert (=> b!602777 m!579935))

(assert (=> b!602777 m!579893))

(declare-fun m!579937 () Bool)

(assert (=> b!602777 m!579937))

(declare-fun m!579939 () Bool)

(assert (=> b!602777 m!579939))

(declare-fun m!579941 () Bool)

(assert (=> b!602777 m!579941))

(assert (=> b!602777 m!579893))

(declare-fun m!579943 () Bool)

(assert (=> b!602777 m!579943))

(declare-fun m!579945 () Bool)

(assert (=> b!602777 m!579945))

(declare-fun m!579947 () Bool)

(assert (=> b!602777 m!579947))

(assert (=> b!602777 m!579893))

(assert (=> b!602762 m!579893))

(assert (=> b!602769 m!579893))

(assert (=> b!602769 m!579893))

(assert (=> b!602769 m!579929))

(assert (=> b!602767 m!579901))

(declare-fun m!579949 () Bool)

(assert (=> b!602767 m!579949))

(check-sat (not b!602763) (not b!602768) (not b!602777) (not b!602770) (not b!602769) (not b!602783) (not b!602782) (not b!602765) (not b!602761) (not start!55118) (not b!602779) (not b!602776) (not b!602774) (not b!602780))
(check-sat)
