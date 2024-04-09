; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54176 () Bool)

(assert start!54176)

(declare-fun b!591684 () Bool)

(declare-fun res!378763 () Bool)

(declare-fun e!337868 () Bool)

(assert (=> b!591684 (=> (not res!378763) (not e!337868))))

(declare-datatypes ((array!36869 0))(
  ( (array!36870 (arr!17701 (Array (_ BitVec 32) (_ BitVec 64))) (size!18065 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36869)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591684 (= res!378763 (validKeyInArray!0 (select (arr!17701 a!2986) j!136)))))

(declare-fun b!591685 () Bool)

(declare-fun res!378767 () Bool)

(declare-fun e!337864 () Bool)

(assert (=> b!591685 (=> (not res!378767) (not e!337864))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36869 (_ BitVec 32)) Bool)

(assert (=> b!591685 (= res!378767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591686 () Bool)

(declare-fun res!378765 () Bool)

(assert (=> b!591686 (=> (not res!378765) (not e!337868))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591686 (= res!378765 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591687 () Bool)

(declare-fun res!378756 () Bool)

(assert (=> b!591687 (=> (not res!378756) (not e!337868))))

(assert (=> b!591687 (= res!378756 (validKeyInArray!0 k0!1786))))

(declare-fun b!591688 () Bool)

(declare-fun e!337865 () Bool)

(assert (=> b!591688 (= e!337865 true)))

(declare-fun e!337870 () Bool)

(assert (=> b!591688 e!337870))

(declare-fun res!378753 () Bool)

(assert (=> b!591688 (=> (not res!378753) (not e!337870))))

(declare-fun lt!268573 () (_ BitVec 64))

(assert (=> b!591688 (= res!378753 (= lt!268573 (select (arr!17701 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591688 (= lt!268573 (select (store (arr!17701 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!591689 () Bool)

(declare-fun e!337862 () Bool)

(assert (=> b!591689 (= e!337862 (not e!337865))))

(declare-fun res!378755 () Bool)

(assert (=> b!591689 (=> res!378755 e!337865)))

(declare-datatypes ((SeekEntryResult!6148 0))(
  ( (MissingZero!6148 (index!26827 (_ BitVec 32))) (Found!6148 (index!26828 (_ BitVec 32))) (Intermediate!6148 (undefined!6960 Bool) (index!26829 (_ BitVec 32)) (x!55645 (_ BitVec 32))) (Undefined!6148) (MissingVacant!6148 (index!26830 (_ BitVec 32))) )
))
(declare-fun lt!268577 () SeekEntryResult!6148)

(assert (=> b!591689 (= res!378755 (not (= lt!268577 (Found!6148 index!984))))))

(declare-datatypes ((Unit!18536 0))(
  ( (Unit!18537) )
))
(declare-fun lt!268575 () Unit!18536)

(declare-fun e!337860 () Unit!18536)

(assert (=> b!591689 (= lt!268575 e!337860)))

(declare-fun c!66833 () Bool)

(assert (=> b!591689 (= c!66833 (= lt!268577 Undefined!6148))))

(declare-fun lt!268581 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!268572 () array!36869)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36869 (_ BitVec 32)) SeekEntryResult!6148)

(assert (=> b!591689 (= lt!268577 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268581 lt!268572 mask!3053))))

(declare-fun e!337863 () Bool)

(assert (=> b!591689 e!337863))

(declare-fun res!378759 () Bool)

(assert (=> b!591689 (=> (not res!378759) (not e!337863))))

(declare-fun lt!268576 () (_ BitVec 32))

(declare-fun lt!268578 () SeekEntryResult!6148)

(assert (=> b!591689 (= res!378759 (= lt!268578 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268576 vacantSpotIndex!68 lt!268581 lt!268572 mask!3053)))))

(assert (=> b!591689 (= lt!268578 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268576 vacantSpotIndex!68 (select (arr!17701 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591689 (= lt!268581 (select (store (arr!17701 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268574 () Unit!18536)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36869 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18536)

(assert (=> b!591689 (= lt!268574 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268576 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591689 (= lt!268576 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591690 () Bool)

(declare-fun res!378761 () Bool)

(assert (=> b!591690 (=> (not res!378761) (not e!337868))))

(assert (=> b!591690 (= res!378761 (and (= (size!18065 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18065 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18065 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591691 () Bool)

(declare-fun res!378752 () Bool)

(assert (=> b!591691 (=> (not res!378752) (not e!337864))))

(assert (=> b!591691 (= res!378752 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17701 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!378758 () Bool)

(assert (=> start!54176 (=> (not res!378758) (not e!337868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54176 (= res!378758 (validMask!0 mask!3053))))

(assert (=> start!54176 e!337868))

(assert (=> start!54176 true))

(declare-fun array_inv!13475 (array!36869) Bool)

(assert (=> start!54176 (array_inv!13475 a!2986)))

(declare-fun b!591692 () Bool)

(declare-fun Unit!18538 () Unit!18536)

(assert (=> b!591692 (= e!337860 Unit!18538)))

(declare-fun b!591693 () Bool)

(declare-fun e!337867 () Bool)

(declare-fun e!337866 () Bool)

(assert (=> b!591693 (= e!337867 e!337866)))

(declare-fun res!378764 () Bool)

(assert (=> b!591693 (=> (not res!378764) (not e!337866))))

(assert (=> b!591693 (= res!378764 (arrayContainsKey!0 lt!268572 (select (arr!17701 a!2986) j!136) j!136))))

(declare-fun b!591694 () Bool)

(declare-fun e!337861 () Bool)

(assert (=> b!591694 (= e!337861 e!337862)))

(declare-fun res!378766 () Bool)

(assert (=> b!591694 (=> (not res!378766) (not e!337862))))

(declare-fun lt!268579 () SeekEntryResult!6148)

(assert (=> b!591694 (= res!378766 (and (= lt!268579 (Found!6148 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17701 a!2986) index!984) (select (arr!17701 a!2986) j!136))) (not (= (select (arr!17701 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!591694 (= lt!268579 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17701 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591695 () Bool)

(declare-fun res!378760 () Bool)

(assert (=> b!591695 (=> (not res!378760) (not e!337864))))

(declare-datatypes ((List!11795 0))(
  ( (Nil!11792) (Cons!11791 (h!12836 (_ BitVec 64)) (t!18031 List!11795)) )
))
(declare-fun arrayNoDuplicates!0 (array!36869 (_ BitVec 32) List!11795) Bool)

(assert (=> b!591695 (= res!378760 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11792))))

(declare-fun b!591696 () Bool)

(assert (=> b!591696 (= e!337864 e!337861)))

(declare-fun res!378762 () Bool)

(assert (=> b!591696 (=> (not res!378762) (not e!337861))))

(assert (=> b!591696 (= res!378762 (= (select (store (arr!17701 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591696 (= lt!268572 (array!36870 (store (arr!17701 a!2986) i!1108 k0!1786) (size!18065 a!2986)))))

(declare-fun b!591697 () Bool)

(assert (=> b!591697 (= e!337870 e!337867)))

(declare-fun res!378757 () Bool)

(assert (=> b!591697 (=> res!378757 e!337867)))

(assert (=> b!591697 (= res!378757 (or (not (= (select (arr!17701 a!2986) j!136) lt!268581)) (not (= (select (arr!17701 a!2986) j!136) lt!268573)) (bvsge j!136 index!984)))))

(declare-fun b!591698 () Bool)

(assert (=> b!591698 (= e!337866 (arrayContainsKey!0 lt!268572 (select (arr!17701 a!2986) j!136) index!984))))

(declare-fun b!591699 () Bool)

(assert (=> b!591699 (= e!337863 (= lt!268579 lt!268578))))

(declare-fun b!591700 () Bool)

(assert (=> b!591700 (= e!337868 e!337864)))

(declare-fun res!378754 () Bool)

(assert (=> b!591700 (=> (not res!378754) (not e!337864))))

(declare-fun lt!268580 () SeekEntryResult!6148)

(assert (=> b!591700 (= res!378754 (or (= lt!268580 (MissingZero!6148 i!1108)) (= lt!268580 (MissingVacant!6148 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36869 (_ BitVec 32)) SeekEntryResult!6148)

(assert (=> b!591700 (= lt!268580 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!591701 () Bool)

(declare-fun Unit!18539 () Unit!18536)

(assert (=> b!591701 (= e!337860 Unit!18539)))

(assert (=> b!591701 false))

(assert (= (and start!54176 res!378758) b!591690))

(assert (= (and b!591690 res!378761) b!591684))

(assert (= (and b!591684 res!378763) b!591687))

(assert (= (and b!591687 res!378756) b!591686))

(assert (= (and b!591686 res!378765) b!591700))

(assert (= (and b!591700 res!378754) b!591685))

(assert (= (and b!591685 res!378767) b!591695))

(assert (= (and b!591695 res!378760) b!591691))

(assert (= (and b!591691 res!378752) b!591696))

(assert (= (and b!591696 res!378762) b!591694))

(assert (= (and b!591694 res!378766) b!591689))

(assert (= (and b!591689 res!378759) b!591699))

(assert (= (and b!591689 c!66833) b!591701))

(assert (= (and b!591689 (not c!66833)) b!591692))

(assert (= (and b!591689 (not res!378755)) b!591688))

(assert (= (and b!591688 res!378753) b!591697))

(assert (= (and b!591697 (not res!378757)) b!591693))

(assert (= (and b!591693 res!378764) b!591698))

(declare-fun m!569899 () Bool)

(assert (=> b!591695 m!569899))

(declare-fun m!569901 () Bool)

(assert (=> b!591684 m!569901))

(assert (=> b!591684 m!569901))

(declare-fun m!569903 () Bool)

(assert (=> b!591684 m!569903))

(declare-fun m!569905 () Bool)

(assert (=> b!591694 m!569905))

(assert (=> b!591694 m!569901))

(assert (=> b!591694 m!569901))

(declare-fun m!569907 () Bool)

(assert (=> b!591694 m!569907))

(declare-fun m!569909 () Bool)

(assert (=> b!591689 m!569909))

(declare-fun m!569911 () Bool)

(assert (=> b!591689 m!569911))

(assert (=> b!591689 m!569901))

(declare-fun m!569913 () Bool)

(assert (=> b!591689 m!569913))

(declare-fun m!569915 () Bool)

(assert (=> b!591689 m!569915))

(declare-fun m!569917 () Bool)

(assert (=> b!591689 m!569917))

(declare-fun m!569919 () Bool)

(assert (=> b!591689 m!569919))

(assert (=> b!591689 m!569901))

(declare-fun m!569921 () Bool)

(assert (=> b!591689 m!569921))

(declare-fun m!569923 () Bool)

(assert (=> b!591686 m!569923))

(declare-fun m!569925 () Bool)

(assert (=> b!591687 m!569925))

(assert (=> b!591688 m!569901))

(assert (=> b!591688 m!569915))

(declare-fun m!569927 () Bool)

(assert (=> b!591688 m!569927))

(declare-fun m!569929 () Bool)

(assert (=> b!591700 m!569929))

(assert (=> b!591697 m!569901))

(declare-fun m!569931 () Bool)

(assert (=> b!591691 m!569931))

(assert (=> b!591693 m!569901))

(assert (=> b!591693 m!569901))

(declare-fun m!569933 () Bool)

(assert (=> b!591693 m!569933))

(assert (=> b!591698 m!569901))

(assert (=> b!591698 m!569901))

(declare-fun m!569935 () Bool)

(assert (=> b!591698 m!569935))

(declare-fun m!569937 () Bool)

(assert (=> start!54176 m!569937))

(declare-fun m!569939 () Bool)

(assert (=> start!54176 m!569939))

(assert (=> b!591696 m!569915))

(declare-fun m!569941 () Bool)

(assert (=> b!591696 m!569941))

(declare-fun m!569943 () Bool)

(assert (=> b!591685 m!569943))

(check-sat (not b!591685) (not b!591694) (not b!591693) (not b!591698) (not b!591686) (not b!591684) (not b!591700) (not b!591687) (not start!54176) (not b!591689) (not b!591695))
(check-sat)
