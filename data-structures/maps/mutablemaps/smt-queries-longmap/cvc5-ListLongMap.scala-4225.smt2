; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58134 () Bool)

(assert start!58134)

(declare-fun b!641822 () Bool)

(declare-fun e!367564 () Bool)

(declare-fun e!367567 () Bool)

(assert (=> b!641822 (= e!367564 e!367567)))

(declare-fun res!415753 () Bool)

(assert (=> b!641822 (=> res!415753 e!367567)))

(declare-datatypes ((array!38349 0))(
  ( (array!38350 (arr!18387 (Array (_ BitVec 32) (_ BitVec 64))) (size!18751 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38349)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!641822 (= res!415753 (or (bvsge (size!18751 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18751 a!2986))))))

(declare-fun lt!297204 () array!38349)

(declare-datatypes ((List!12481 0))(
  ( (Nil!12478) (Cons!12477 (h!13522 (_ BitVec 64)) (t!18717 List!12481)) )
))
(declare-fun arrayNoDuplicates!0 (array!38349 (_ BitVec 32) List!12481) Bool)

(assert (=> b!641822 (arrayNoDuplicates!0 lt!297204 j!136 Nil!12478)))

(declare-datatypes ((Unit!21694 0))(
  ( (Unit!21695) )
))
(declare-fun lt!297205 () Unit!21694)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38349 (_ BitVec 32) (_ BitVec 32)) Unit!21694)

(assert (=> b!641822 (= lt!297205 (lemmaNoDuplicateFromThenFromBigger!0 lt!297204 #b00000000000000000000000000000000 j!136))))

(assert (=> b!641822 (arrayNoDuplicates!0 lt!297204 #b00000000000000000000000000000000 Nil!12478)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!297207 () Unit!21694)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38349 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12481) Unit!21694)

(assert (=> b!641822 (= lt!297207 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12478))))

(declare-fun arrayContainsKey!0 (array!38349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!641822 (arrayContainsKey!0 lt!297204 (select (arr!18387 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297199 () Unit!21694)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38349 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21694)

(assert (=> b!641822 (= lt!297199 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297204 (select (arr!18387 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!641823 () Bool)

(declare-fun res!415757 () Bool)

(declare-fun e!367560 () Bool)

(assert (=> b!641823 (=> (not res!415757) (not e!367560))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38349 (_ BitVec 32)) Bool)

(assert (=> b!641823 (= res!415757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!641824 () Bool)

(declare-fun e!367557 () Bool)

(declare-fun e!367563 () Bool)

(assert (=> b!641824 (= e!367557 (not e!367563))))

(declare-fun res!415759 () Bool)

(assert (=> b!641824 (=> res!415759 e!367563)))

(declare-datatypes ((SeekEntryResult!6834 0))(
  ( (MissingZero!6834 (index!29661 (_ BitVec 32))) (Found!6834 (index!29662 (_ BitVec 32))) (Intermediate!6834 (undefined!7646 Bool) (index!29663 (_ BitVec 32)) (x!58457 (_ BitVec 32))) (Undefined!6834) (MissingVacant!6834 (index!29664 (_ BitVec 32))) )
))
(declare-fun lt!297195 () SeekEntryResult!6834)

(assert (=> b!641824 (= res!415759 (not (= lt!297195 (Found!6834 index!984))))))

(declare-fun lt!297206 () Unit!21694)

(declare-fun e!367558 () Unit!21694)

(assert (=> b!641824 (= lt!297206 e!367558)))

(declare-fun c!73403 () Bool)

(assert (=> b!641824 (= c!73403 (= lt!297195 Undefined!6834))))

(declare-fun lt!297197 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38349 (_ BitVec 32)) SeekEntryResult!6834)

(assert (=> b!641824 (= lt!297195 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297197 lt!297204 mask!3053))))

(declare-fun e!367559 () Bool)

(assert (=> b!641824 e!367559))

(declare-fun res!415761 () Bool)

(assert (=> b!641824 (=> (not res!415761) (not e!367559))))

(declare-fun lt!297200 () (_ BitVec 32))

(declare-fun lt!297202 () SeekEntryResult!6834)

(assert (=> b!641824 (= res!415761 (= lt!297202 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297200 vacantSpotIndex!68 lt!297197 lt!297204 mask!3053)))))

(assert (=> b!641824 (= lt!297202 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297200 vacantSpotIndex!68 (select (arr!18387 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!641824 (= lt!297197 (select (store (arr!18387 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297196 () Unit!21694)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38349 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21694)

(assert (=> b!641824 (= lt!297196 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297200 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!641824 (= lt!297200 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!641825 () Bool)

(declare-fun e!367556 () Bool)

(assert (=> b!641825 (= e!367556 e!367557)))

(declare-fun res!415764 () Bool)

(assert (=> b!641825 (=> (not res!415764) (not e!367557))))

(declare-fun lt!297203 () SeekEntryResult!6834)

(assert (=> b!641825 (= res!415764 (and (= lt!297203 (Found!6834 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18387 a!2986) index!984) (select (arr!18387 a!2986) j!136))) (not (= (select (arr!18387 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!641825 (= lt!297203 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18387 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641826 () Bool)

(assert (=> b!641826 (= e!367559 (= lt!297203 lt!297202))))

(declare-fun b!641827 () Bool)

(declare-fun res!415765 () Bool)

(assert (=> b!641827 (=> (not res!415765) (not e!367560))))

(assert (=> b!641827 (= res!415765 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12478))))

(declare-fun b!641828 () Bool)

(declare-fun e!367561 () Bool)

(assert (=> b!641828 (= e!367561 e!367560)))

(declare-fun res!415750 () Bool)

(assert (=> b!641828 (=> (not res!415750) (not e!367560))))

(declare-fun lt!297194 () SeekEntryResult!6834)

(assert (=> b!641828 (= res!415750 (or (= lt!297194 (MissingZero!6834 i!1108)) (= lt!297194 (MissingVacant!6834 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38349 (_ BitVec 32)) SeekEntryResult!6834)

(assert (=> b!641828 (= lt!297194 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!641829 () Bool)

(declare-fun res!415768 () Bool)

(assert (=> b!641829 (=> (not res!415768) (not e!367561))))

(assert (=> b!641829 (= res!415768 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!641830 () Bool)

(declare-fun e!367555 () Bool)

(assert (=> b!641830 (= e!367555 (arrayContainsKey!0 lt!297204 (select (arr!18387 a!2986) j!136) index!984))))

(declare-fun b!641831 () Bool)

(declare-fun res!415760 () Bool)

(assert (=> b!641831 (=> res!415760 e!367567)))

(declare-fun contains!3135 (List!12481 (_ BitVec 64)) Bool)

(assert (=> b!641831 (= res!415760 (contains!3135 Nil!12478 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641832 () Bool)

(declare-fun e!367562 () Bool)

(declare-fun e!367565 () Bool)

(assert (=> b!641832 (= e!367562 e!367565)))

(declare-fun res!415755 () Bool)

(assert (=> b!641832 (=> res!415755 e!367565)))

(declare-fun lt!297198 () (_ BitVec 64))

(assert (=> b!641832 (= res!415755 (or (not (= (select (arr!18387 a!2986) j!136) lt!297197)) (not (= (select (arr!18387 a!2986) j!136) lt!297198)) (bvsge j!136 index!984)))))

(declare-fun b!641833 () Bool)

(declare-fun res!415754 () Bool)

(assert (=> b!641833 (=> (not res!415754) (not e!367561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!641833 (= res!415754 (validKeyInArray!0 (select (arr!18387 a!2986) j!136)))))

(declare-fun b!641834 () Bool)

(assert (=> b!641834 (= e!367567 true)))

(declare-fun lt!297201 () Bool)

(assert (=> b!641834 (= lt!297201 (contains!3135 Nil!12478 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641835 () Bool)

(declare-fun res!415758 () Bool)

(assert (=> b!641835 (=> res!415758 e!367567)))

(declare-fun noDuplicate!406 (List!12481) Bool)

(assert (=> b!641835 (= res!415758 (not (noDuplicate!406 Nil!12478)))))

(declare-fun b!641836 () Bool)

(declare-fun res!415769 () Bool)

(assert (=> b!641836 (=> (not res!415769) (not e!367561))))

(assert (=> b!641836 (= res!415769 (and (= (size!18751 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18751 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18751 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!641837 () Bool)

(assert (=> b!641837 (= e!367565 e!367555)))

(declare-fun res!415766 () Bool)

(assert (=> b!641837 (=> (not res!415766) (not e!367555))))

(assert (=> b!641837 (= res!415766 (arrayContainsKey!0 lt!297204 (select (arr!18387 a!2986) j!136) j!136))))

(declare-fun b!641838 () Bool)

(declare-fun res!415751 () Bool)

(assert (=> b!641838 (=> (not res!415751) (not e!367561))))

(assert (=> b!641838 (= res!415751 (validKeyInArray!0 k!1786))))

(declare-fun b!641839 () Bool)

(assert (=> b!641839 (= e!367563 e!367564)))

(declare-fun res!415763 () Bool)

(assert (=> b!641839 (=> res!415763 e!367564)))

(assert (=> b!641839 (= res!415763 (or (not (= (select (arr!18387 a!2986) j!136) lt!297197)) (not (= (select (arr!18387 a!2986) j!136) lt!297198)) (bvsge j!136 index!984)))))

(assert (=> b!641839 e!367562))

(declare-fun res!415767 () Bool)

(assert (=> b!641839 (=> (not res!415767) (not e!367562))))

(assert (=> b!641839 (= res!415767 (= lt!297198 (select (arr!18387 a!2986) j!136)))))

(assert (=> b!641839 (= lt!297198 (select (store (arr!18387 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!415756 () Bool)

(assert (=> start!58134 (=> (not res!415756) (not e!367561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58134 (= res!415756 (validMask!0 mask!3053))))

(assert (=> start!58134 e!367561))

(assert (=> start!58134 true))

(declare-fun array_inv!14161 (array!38349) Bool)

(assert (=> start!58134 (array_inv!14161 a!2986)))

(declare-fun b!641840 () Bool)

(declare-fun Unit!21696 () Unit!21694)

(assert (=> b!641840 (= e!367558 Unit!21696)))

(declare-fun b!641841 () Bool)

(declare-fun Unit!21697 () Unit!21694)

(assert (=> b!641841 (= e!367558 Unit!21697)))

(assert (=> b!641841 false))

(declare-fun b!641842 () Bool)

(assert (=> b!641842 (= e!367560 e!367556)))

(declare-fun res!415762 () Bool)

(assert (=> b!641842 (=> (not res!415762) (not e!367556))))

(assert (=> b!641842 (= res!415762 (= (select (store (arr!18387 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641842 (= lt!297204 (array!38350 (store (arr!18387 a!2986) i!1108 k!1786) (size!18751 a!2986)))))

(declare-fun b!641843 () Bool)

(declare-fun res!415752 () Bool)

(assert (=> b!641843 (=> (not res!415752) (not e!367560))))

(assert (=> b!641843 (= res!415752 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18387 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!58134 res!415756) b!641836))

(assert (= (and b!641836 res!415769) b!641833))

(assert (= (and b!641833 res!415754) b!641838))

(assert (= (and b!641838 res!415751) b!641829))

(assert (= (and b!641829 res!415768) b!641828))

(assert (= (and b!641828 res!415750) b!641823))

(assert (= (and b!641823 res!415757) b!641827))

(assert (= (and b!641827 res!415765) b!641843))

(assert (= (and b!641843 res!415752) b!641842))

(assert (= (and b!641842 res!415762) b!641825))

(assert (= (and b!641825 res!415764) b!641824))

(assert (= (and b!641824 res!415761) b!641826))

(assert (= (and b!641824 c!73403) b!641841))

(assert (= (and b!641824 (not c!73403)) b!641840))

(assert (= (and b!641824 (not res!415759)) b!641839))

(assert (= (and b!641839 res!415767) b!641832))

(assert (= (and b!641832 (not res!415755)) b!641837))

(assert (= (and b!641837 res!415766) b!641830))

(assert (= (and b!641839 (not res!415763)) b!641822))

(assert (= (and b!641822 (not res!415753)) b!641835))

(assert (= (and b!641835 (not res!415758)) b!641831))

(assert (= (and b!641831 (not res!415760)) b!641834))

(declare-fun m!615675 () Bool)

(assert (=> b!641827 m!615675))

(declare-fun m!615677 () Bool)

(assert (=> b!641839 m!615677))

(declare-fun m!615679 () Bool)

(assert (=> b!641839 m!615679))

(declare-fun m!615681 () Bool)

(assert (=> b!641839 m!615681))

(assert (=> b!641833 m!615677))

(assert (=> b!641833 m!615677))

(declare-fun m!615683 () Bool)

(assert (=> b!641833 m!615683))

(declare-fun m!615685 () Bool)

(assert (=> b!641822 m!615685))

(declare-fun m!615687 () Bool)

(assert (=> b!641822 m!615687))

(assert (=> b!641822 m!615677))

(declare-fun m!615689 () Bool)

(assert (=> b!641822 m!615689))

(assert (=> b!641822 m!615677))

(declare-fun m!615691 () Bool)

(assert (=> b!641822 m!615691))

(assert (=> b!641822 m!615677))

(declare-fun m!615693 () Bool)

(assert (=> b!641822 m!615693))

(declare-fun m!615695 () Bool)

(assert (=> b!641822 m!615695))

(declare-fun m!615697 () Bool)

(assert (=> b!641829 m!615697))

(assert (=> b!641837 m!615677))

(assert (=> b!641837 m!615677))

(declare-fun m!615699 () Bool)

(assert (=> b!641837 m!615699))

(assert (=> b!641830 m!615677))

(assert (=> b!641830 m!615677))

(declare-fun m!615701 () Bool)

(assert (=> b!641830 m!615701))

(assert (=> b!641842 m!615679))

(declare-fun m!615703 () Bool)

(assert (=> b!641842 m!615703))

(declare-fun m!615705 () Bool)

(assert (=> b!641843 m!615705))

(declare-fun m!615707 () Bool)

(assert (=> b!641824 m!615707))

(declare-fun m!615709 () Bool)

(assert (=> b!641824 m!615709))

(assert (=> b!641824 m!615677))

(assert (=> b!641824 m!615679))

(declare-fun m!615711 () Bool)

(assert (=> b!641824 m!615711))

(declare-fun m!615713 () Bool)

(assert (=> b!641824 m!615713))

(declare-fun m!615715 () Bool)

(assert (=> b!641824 m!615715))

(assert (=> b!641824 m!615677))

(declare-fun m!615717 () Bool)

(assert (=> b!641824 m!615717))

(declare-fun m!615719 () Bool)

(assert (=> b!641838 m!615719))

(declare-fun m!615721 () Bool)

(assert (=> b!641823 m!615721))

(assert (=> b!641832 m!615677))

(declare-fun m!615723 () Bool)

(assert (=> b!641828 m!615723))

(declare-fun m!615725 () Bool)

(assert (=> start!58134 m!615725))

(declare-fun m!615727 () Bool)

(assert (=> start!58134 m!615727))

(declare-fun m!615729 () Bool)

(assert (=> b!641825 m!615729))

(assert (=> b!641825 m!615677))

(assert (=> b!641825 m!615677))

(declare-fun m!615731 () Bool)

(assert (=> b!641825 m!615731))

(declare-fun m!615733 () Bool)

(assert (=> b!641834 m!615733))

(declare-fun m!615735 () Bool)

(assert (=> b!641835 m!615735))

(declare-fun m!615737 () Bool)

(assert (=> b!641831 m!615737))

(push 1)

