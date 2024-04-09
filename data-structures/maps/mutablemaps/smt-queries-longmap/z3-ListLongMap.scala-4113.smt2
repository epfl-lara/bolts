; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56186 () Bool)

(assert start!56186)

(declare-fun b!621687 () Bool)

(declare-fun e!356584 () Bool)

(declare-fun e!356587 () Bool)

(assert (=> b!621687 (= e!356584 e!356587)))

(declare-fun res!400735 () Bool)

(assert (=> b!621687 (=> (not res!400735) (not e!356587))))

(declare-datatypes ((SeekEntryResult!6499 0))(
  ( (MissingZero!6499 (index!28279 (_ BitVec 32))) (Found!6499 (index!28280 (_ BitVec 32))) (Intermediate!6499 (undefined!7311 Bool) (index!28281 (_ BitVec 32)) (x!57076 (_ BitVec 32))) (Undefined!6499) (MissingVacant!6499 (index!28282 (_ BitVec 32))) )
))
(declare-fun lt!287909 () SeekEntryResult!6499)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!621687 (= res!400735 (or (= lt!287909 (MissingZero!6499 i!1108)) (= lt!287909 (MissingVacant!6499 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37619 0))(
  ( (array!37620 (arr!18052 (Array (_ BitVec 32) (_ BitVec 64))) (size!18416 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37619)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37619 (_ BitVec 32)) SeekEntryResult!6499)

(assert (=> b!621687 (= lt!287909 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!621688 () Bool)

(assert (=> b!621688 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((Unit!20810 0))(
  ( (Unit!20811) )
))
(declare-fun lt!287901 () Unit!20810)

(declare-fun lt!287916 () array!37619)

(declare-datatypes ((List!12146 0))(
  ( (Nil!12143) (Cons!12142 (h!13187 (_ BitVec 64)) (t!18382 List!12146)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37619 (_ BitVec 64) (_ BitVec 32) List!12146) Unit!20810)

(assert (=> b!621688 (= lt!287901 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287916 (select (arr!18052 a!2986) j!136) j!136 Nil!12143))))

(declare-fun arrayNoDuplicates!0 (array!37619 (_ BitVec 32) List!12146) Bool)

(assert (=> b!621688 (arrayNoDuplicates!0 lt!287916 j!136 Nil!12143)))

(declare-fun lt!287903 () Unit!20810)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37619 (_ BitVec 32) (_ BitVec 32)) Unit!20810)

(assert (=> b!621688 (= lt!287903 (lemmaNoDuplicateFromThenFromBigger!0 lt!287916 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621688 (arrayNoDuplicates!0 lt!287916 #b00000000000000000000000000000000 Nil!12143)))

(declare-fun lt!287913 () Unit!20810)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37619 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12146) Unit!20810)

(assert (=> b!621688 (= lt!287913 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12143))))

(declare-fun arrayContainsKey!0 (array!37619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621688 (arrayContainsKey!0 lt!287916 (select (arr!18052 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287904 () Unit!20810)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37619 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20810)

(assert (=> b!621688 (= lt!287904 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287916 (select (arr!18052 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!356589 () Unit!20810)

(declare-fun Unit!20812 () Unit!20810)

(assert (=> b!621688 (= e!356589 Unit!20812)))

(declare-fun b!621689 () Bool)

(declare-fun res!400740 () Bool)

(assert (=> b!621689 (=> (not res!400740) (not e!356584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621689 (= res!400740 (validKeyInArray!0 (select (arr!18052 a!2986) j!136)))))

(declare-fun b!621690 () Bool)

(declare-fun e!356586 () Unit!20810)

(declare-fun Unit!20813 () Unit!20810)

(assert (=> b!621690 (= e!356586 Unit!20813)))

(declare-fun b!621691 () Bool)

(declare-fun e!356588 () Unit!20810)

(declare-fun Unit!20814 () Unit!20810)

(assert (=> b!621691 (= e!356588 Unit!20814)))

(assert (=> b!621691 false))

(declare-fun b!621692 () Bool)

(declare-fun e!356583 () Bool)

(assert (=> b!621692 (= e!356587 e!356583)))

(declare-fun res!400734 () Bool)

(assert (=> b!621692 (=> (not res!400734) (not e!356583))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!621692 (= res!400734 (= (select (store (arr!18052 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621692 (= lt!287916 (array!37620 (store (arr!18052 a!2986) i!1108 k0!1786) (size!18416 a!2986)))))

(declare-fun b!621693 () Bool)

(declare-fun e!356592 () Bool)

(assert (=> b!621693 (= e!356583 e!356592)))

(declare-fun res!400737 () Bool)

(assert (=> b!621693 (=> (not res!400737) (not e!356592))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!287906 () SeekEntryResult!6499)

(assert (=> b!621693 (= res!400737 (and (= lt!287906 (Found!6499 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18052 a!2986) index!984) (select (arr!18052 a!2986) j!136))) (not (= (select (arr!18052 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37619 (_ BitVec 32)) SeekEntryResult!6499)

(assert (=> b!621693 (= lt!287906 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18052 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!356590 () Bool)

(declare-fun b!621694 () Bool)

(assert (=> b!621694 (= e!356590 (arrayContainsKey!0 lt!287916 (select (arr!18052 a!2986) j!136) index!984))))

(declare-fun b!621695 () Bool)

(assert (=> b!621695 (= e!356592 (not true))))

(declare-fun lt!287914 () Unit!20810)

(declare-fun e!356585 () Unit!20810)

(assert (=> b!621695 (= lt!287914 e!356585)))

(declare-fun c!70846 () Bool)

(declare-fun lt!287910 () SeekEntryResult!6499)

(assert (=> b!621695 (= c!70846 (= lt!287910 (Found!6499 index!984)))))

(declare-fun lt!287915 () Unit!20810)

(assert (=> b!621695 (= lt!287915 e!356588)))

(declare-fun c!70845 () Bool)

(assert (=> b!621695 (= c!70845 (= lt!287910 Undefined!6499))))

(declare-fun lt!287912 () (_ BitVec 64))

(assert (=> b!621695 (= lt!287910 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287912 lt!287916 mask!3053))))

(declare-fun e!356591 () Bool)

(assert (=> b!621695 e!356591))

(declare-fun res!400739 () Bool)

(assert (=> b!621695 (=> (not res!400739) (not e!356591))))

(declare-fun lt!287908 () SeekEntryResult!6499)

(declare-fun lt!287907 () (_ BitVec 32))

(assert (=> b!621695 (= res!400739 (= lt!287908 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287907 vacantSpotIndex!68 lt!287912 lt!287916 mask!3053)))))

(assert (=> b!621695 (= lt!287908 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287907 vacantSpotIndex!68 (select (arr!18052 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621695 (= lt!287912 (select (store (arr!18052 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!287898 () Unit!20810)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20810)

(assert (=> b!621695 (= lt!287898 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287907 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621695 (= lt!287907 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621696 () Bool)

(assert (=> b!621696 false))

(declare-fun lt!287899 () Unit!20810)

(assert (=> b!621696 (= lt!287899 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287916 (select (arr!18052 a!2986) j!136) index!984 Nil!12143))))

(assert (=> b!621696 (arrayNoDuplicates!0 lt!287916 index!984 Nil!12143)))

(declare-fun lt!287911 () Unit!20810)

(assert (=> b!621696 (= lt!287911 (lemmaNoDuplicateFromThenFromBigger!0 lt!287916 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621696 (arrayNoDuplicates!0 lt!287916 #b00000000000000000000000000000000 Nil!12143)))

(declare-fun lt!287902 () Unit!20810)

(assert (=> b!621696 (= lt!287902 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12143))))

(assert (=> b!621696 (arrayContainsKey!0 lt!287916 (select (arr!18052 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287900 () Unit!20810)

(assert (=> b!621696 (= lt!287900 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287916 (select (arr!18052 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356580 () Bool)

(assert (=> b!621696 e!356580))

(declare-fun res!400738 () Bool)

(assert (=> b!621696 (=> (not res!400738) (not e!356580))))

(assert (=> b!621696 (= res!400738 (arrayContainsKey!0 lt!287916 (select (arr!18052 a!2986) j!136) j!136))))

(declare-fun Unit!20815 () Unit!20810)

(assert (=> b!621696 (= e!356586 Unit!20815)))

(declare-fun b!621697 () Bool)

(assert (=> b!621697 (= e!356591 (= lt!287906 lt!287908))))

(declare-fun b!621698 () Bool)

(declare-fun res!400733 () Bool)

(assert (=> b!621698 (=> (not res!400733) (not e!356587))))

(assert (=> b!621698 (= res!400733 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12143))))

(declare-fun b!621699 () Bool)

(declare-fun Unit!20816 () Unit!20810)

(assert (=> b!621699 (= e!356585 Unit!20816)))

(declare-fun res!400746 () Bool)

(assert (=> b!621699 (= res!400746 (= (select (store (arr!18052 a!2986) i!1108 k0!1786) index!984) (select (arr!18052 a!2986) j!136)))))

(declare-fun e!356581 () Bool)

(assert (=> b!621699 (=> (not res!400746) (not e!356581))))

(assert (=> b!621699 e!356581))

(declare-fun c!70844 () Bool)

(assert (=> b!621699 (= c!70844 (bvslt j!136 index!984))))

(declare-fun lt!287905 () Unit!20810)

(assert (=> b!621699 (= lt!287905 e!356589)))

(declare-fun c!70847 () Bool)

(assert (=> b!621699 (= c!70847 (bvslt index!984 j!136))))

(declare-fun lt!287897 () Unit!20810)

(assert (=> b!621699 (= lt!287897 e!356586)))

(assert (=> b!621699 false))

(declare-fun b!621700 () Bool)

(declare-fun res!400743 () Bool)

(assert (=> b!621700 (=> (not res!400743) (not e!356584))))

(assert (=> b!621700 (= res!400743 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621701 () Bool)

(declare-fun Unit!20817 () Unit!20810)

(assert (=> b!621701 (= e!356585 Unit!20817)))

(declare-fun b!621702 () Bool)

(declare-fun Unit!20818 () Unit!20810)

(assert (=> b!621702 (= e!356588 Unit!20818)))

(declare-fun b!621703 () Bool)

(declare-fun res!400747 () Bool)

(assert (=> b!621703 (= res!400747 (bvsge j!136 index!984))))

(declare-fun e!356593 () Bool)

(assert (=> b!621703 (=> res!400747 e!356593)))

(assert (=> b!621703 (= e!356581 e!356593)))

(declare-fun b!621704 () Bool)

(declare-fun Unit!20819 () Unit!20810)

(assert (=> b!621704 (= e!356589 Unit!20819)))

(declare-fun res!400748 () Bool)

(declare-fun b!621705 () Bool)

(assert (=> b!621705 (= res!400748 (arrayContainsKey!0 lt!287916 (select (arr!18052 a!2986) j!136) j!136))))

(assert (=> b!621705 (=> (not res!400748) (not e!356590))))

(assert (=> b!621705 (= e!356593 e!356590)))

(declare-fun b!621706 () Bool)

(assert (=> b!621706 (= e!356580 (arrayContainsKey!0 lt!287916 (select (arr!18052 a!2986) j!136) index!984))))

(declare-fun b!621707 () Bool)

(declare-fun res!400741 () Bool)

(assert (=> b!621707 (=> (not res!400741) (not e!356584))))

(assert (=> b!621707 (= res!400741 (validKeyInArray!0 k0!1786))))

(declare-fun b!621708 () Bool)

(declare-fun res!400736 () Bool)

(assert (=> b!621708 (=> (not res!400736) (not e!356584))))

(assert (=> b!621708 (= res!400736 (and (= (size!18416 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18416 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18416 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621709 () Bool)

(declare-fun res!400744 () Bool)

(assert (=> b!621709 (=> (not res!400744) (not e!356587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37619 (_ BitVec 32)) Bool)

(assert (=> b!621709 (= res!400744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621710 () Bool)

(declare-fun res!400742 () Bool)

(assert (=> b!621710 (=> (not res!400742) (not e!356587))))

(assert (=> b!621710 (= res!400742 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18052 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!400745 () Bool)

(assert (=> start!56186 (=> (not res!400745) (not e!356584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56186 (= res!400745 (validMask!0 mask!3053))))

(assert (=> start!56186 e!356584))

(assert (=> start!56186 true))

(declare-fun array_inv!13826 (array!37619) Bool)

(assert (=> start!56186 (array_inv!13826 a!2986)))

(assert (= (and start!56186 res!400745) b!621708))

(assert (= (and b!621708 res!400736) b!621689))

(assert (= (and b!621689 res!400740) b!621707))

(assert (= (and b!621707 res!400741) b!621700))

(assert (= (and b!621700 res!400743) b!621687))

(assert (= (and b!621687 res!400735) b!621709))

(assert (= (and b!621709 res!400744) b!621698))

(assert (= (and b!621698 res!400733) b!621710))

(assert (= (and b!621710 res!400742) b!621692))

(assert (= (and b!621692 res!400734) b!621693))

(assert (= (and b!621693 res!400737) b!621695))

(assert (= (and b!621695 res!400739) b!621697))

(assert (= (and b!621695 c!70845) b!621691))

(assert (= (and b!621695 (not c!70845)) b!621702))

(assert (= (and b!621695 c!70846) b!621699))

(assert (= (and b!621695 (not c!70846)) b!621701))

(assert (= (and b!621699 res!400746) b!621703))

(assert (= (and b!621703 (not res!400747)) b!621705))

(assert (= (and b!621705 res!400748) b!621694))

(assert (= (and b!621699 c!70844) b!621688))

(assert (= (and b!621699 (not c!70844)) b!621704))

(assert (= (and b!621699 c!70847) b!621696))

(assert (= (and b!621699 (not c!70847)) b!621690))

(assert (= (and b!621696 res!400738) b!621706))

(declare-fun m!597619 () Bool)

(assert (=> b!621692 m!597619))

(declare-fun m!597621 () Bool)

(assert (=> b!621692 m!597621))

(declare-fun m!597623 () Bool)

(assert (=> b!621695 m!597623))

(declare-fun m!597625 () Bool)

(assert (=> b!621695 m!597625))

(assert (=> b!621695 m!597619))

(declare-fun m!597627 () Bool)

(assert (=> b!621695 m!597627))

(declare-fun m!597629 () Bool)

(assert (=> b!621695 m!597629))

(declare-fun m!597631 () Bool)

(assert (=> b!621695 m!597631))

(declare-fun m!597633 () Bool)

(assert (=> b!621695 m!597633))

(declare-fun m!597635 () Bool)

(assert (=> b!621695 m!597635))

(assert (=> b!621695 m!597631))

(declare-fun m!597637 () Bool)

(assert (=> b!621698 m!597637))

(assert (=> b!621694 m!597631))

(assert (=> b!621694 m!597631))

(declare-fun m!597639 () Bool)

(assert (=> b!621694 m!597639))

(declare-fun m!597641 () Bool)

(assert (=> b!621700 m!597641))

(assert (=> b!621705 m!597631))

(assert (=> b!621705 m!597631))

(declare-fun m!597643 () Bool)

(assert (=> b!621705 m!597643))

(declare-fun m!597645 () Bool)

(assert (=> b!621710 m!597645))

(declare-fun m!597647 () Bool)

(assert (=> b!621707 m!597647))

(declare-fun m!597649 () Bool)

(assert (=> start!56186 m!597649))

(declare-fun m!597651 () Bool)

(assert (=> start!56186 m!597651))

(assert (=> b!621699 m!597619))

(declare-fun m!597653 () Bool)

(assert (=> b!621699 m!597653))

(assert (=> b!621699 m!597631))

(assert (=> b!621688 m!597631))

(declare-fun m!597655 () Bool)

(assert (=> b!621688 m!597655))

(declare-fun m!597657 () Bool)

(assert (=> b!621688 m!597657))

(assert (=> b!621688 m!597631))

(declare-fun m!597659 () Bool)

(assert (=> b!621688 m!597659))

(assert (=> b!621688 m!597631))

(declare-fun m!597661 () Bool)

(assert (=> b!621688 m!597661))

(declare-fun m!597663 () Bool)

(assert (=> b!621688 m!597663))

(assert (=> b!621688 m!597631))

(declare-fun m!597665 () Bool)

(assert (=> b!621688 m!597665))

(declare-fun m!597667 () Bool)

(assert (=> b!621688 m!597667))

(declare-fun m!597669 () Bool)

(assert (=> b!621687 m!597669))

(declare-fun m!597671 () Bool)

(assert (=> b!621709 m!597671))

(declare-fun m!597673 () Bool)

(assert (=> b!621693 m!597673))

(assert (=> b!621693 m!597631))

(assert (=> b!621693 m!597631))

(declare-fun m!597675 () Bool)

(assert (=> b!621693 m!597675))

(assert (=> b!621696 m!597631))

(assert (=> b!621696 m!597631))

(declare-fun m!597677 () Bool)

(assert (=> b!621696 m!597677))

(assert (=> b!621696 m!597631))

(assert (=> b!621696 m!597643))

(declare-fun m!597679 () Bool)

(assert (=> b!621696 m!597679))

(declare-fun m!597681 () Bool)

(assert (=> b!621696 m!597681))

(assert (=> b!621696 m!597631))

(declare-fun m!597683 () Bool)

(assert (=> b!621696 m!597683))

(assert (=> b!621696 m!597663))

(assert (=> b!621696 m!597631))

(declare-fun m!597685 () Bool)

(assert (=> b!621696 m!597685))

(assert (=> b!621696 m!597667))

(assert (=> b!621706 m!597631))

(assert (=> b!621706 m!597631))

(assert (=> b!621706 m!597639))

(assert (=> b!621689 m!597631))

(assert (=> b!621689 m!597631))

(declare-fun m!597687 () Bool)

(assert (=> b!621689 m!597687))

(check-sat (not b!621694) (not b!621687) (not start!56186) (not b!621709) (not b!621700) (not b!621698) (not b!621695) (not b!621693) (not b!621688) (not b!621707) (not b!621706) (not b!621705) (not b!621696) (not b!621689))
(check-sat)
