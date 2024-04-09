; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57714 () Bool)

(assert start!57714)

(declare-fun b!637591 () Bool)

(declare-datatypes ((Unit!21502 0))(
  ( (Unit!21503) )
))
(declare-fun e!364848 () Unit!21502)

(declare-fun Unit!21504 () Unit!21502)

(assert (=> b!637591 (= e!364848 Unit!21504)))

(declare-fun b!637592 () Bool)

(declare-fun res!412641 () Bool)

(declare-fun e!364841 () Bool)

(assert (=> b!637592 (=> res!412641 e!364841)))

(declare-datatypes ((List!12433 0))(
  ( (Nil!12430) (Cons!12429 (h!13474 (_ BitVec 64)) (t!18669 List!12433)) )
))
(declare-fun contains!3116 (List!12433 (_ BitVec 64)) Bool)

(assert (=> b!637592 (= res!412641 (contains!3116 Nil!12430 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637593 () Bool)

(declare-fun res!412656 () Bool)

(declare-fun e!364839 () Bool)

(assert (=> b!637593 (=> (not res!412656) (not e!364839))))

(declare-datatypes ((array!38241 0))(
  ( (array!38242 (arr!18339 (Array (_ BitVec 32) (_ BitVec 64))) (size!18703 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38241)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38241 (_ BitVec 32)) Bool)

(assert (=> b!637593 (= res!412656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637594 () Bool)

(declare-fun res!412651 () Bool)

(assert (=> b!637594 (=> (not res!412651) (not e!364839))))

(declare-fun arrayNoDuplicates!0 (array!38241 (_ BitVec 32) List!12433) Bool)

(assert (=> b!637594 (= res!412651 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12430))))

(declare-fun b!637595 () Bool)

(declare-fun res!412657 () Bool)

(declare-fun e!364842 () Bool)

(assert (=> b!637595 (=> (not res!412657) (not e!364842))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637595 (= res!412657 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637596 () Bool)

(declare-fun e!364840 () Bool)

(assert (=> b!637596 (= e!364840 e!364841)))

(declare-fun res!412658 () Bool)

(assert (=> b!637596 (=> res!412658 e!364841)))

(assert (=> b!637596 (= res!412658 (or (bvsge (size!18703 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18703 a!2986))))))

(declare-fun lt!294864 () array!38241)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!637596 (arrayContainsKey!0 lt!294864 (select (arr!18339 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294862 () Unit!21502)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38241 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21502)

(assert (=> b!637596 (= lt!294862 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294864 (select (arr!18339 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637597 () Bool)

(assert (=> b!637597 (= e!364842 e!364839)))

(declare-fun res!412648 () Bool)

(assert (=> b!637597 (=> (not res!412648) (not e!364839))))

(declare-datatypes ((SeekEntryResult!6786 0))(
  ( (MissingZero!6786 (index!29457 (_ BitVec 32))) (Found!6786 (index!29458 (_ BitVec 32))) (Intermediate!6786 (undefined!7598 Bool) (index!29459 (_ BitVec 32)) (x!58245 (_ BitVec 32))) (Undefined!6786) (MissingVacant!6786 (index!29460 (_ BitVec 32))) )
))
(declare-fun lt!294859 () SeekEntryResult!6786)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637597 (= res!412648 (or (= lt!294859 (MissingZero!6786 i!1108)) (= lt!294859 (MissingVacant!6786 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38241 (_ BitVec 32)) SeekEntryResult!6786)

(assert (=> b!637597 (= lt!294859 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!637599 () Bool)

(declare-fun res!412653 () Bool)

(assert (=> b!637599 (=> res!412653 e!364841)))

(assert (=> b!637599 (= res!412653 (contains!3116 Nil!12430 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637600 () Bool)

(declare-fun e!364845 () Bool)

(declare-fun e!364846 () Bool)

(assert (=> b!637600 (= e!364845 e!364846)))

(declare-fun res!412659 () Bool)

(assert (=> b!637600 (=> res!412659 e!364846)))

(declare-fun lt!294866 () (_ BitVec 64))

(declare-fun lt!294860 () (_ BitVec 64))

(assert (=> b!637600 (= res!412659 (or (not (= (select (arr!18339 a!2986) j!136) lt!294866)) (not (= (select (arr!18339 a!2986) j!136) lt!294860)) (bvsge j!136 index!984)))))

(declare-fun b!637601 () Bool)

(declare-fun Unit!21505 () Unit!21502)

(assert (=> b!637601 (= e!364848 Unit!21505)))

(assert (=> b!637601 false))

(declare-fun b!637602 () Bool)

(declare-fun e!364849 () Bool)

(declare-fun lt!294861 () SeekEntryResult!6786)

(declare-fun lt!294863 () SeekEntryResult!6786)

(assert (=> b!637602 (= e!364849 (= lt!294861 lt!294863))))

(declare-fun b!637603 () Bool)

(declare-fun e!364847 () Bool)

(assert (=> b!637603 (= e!364847 e!364840)))

(declare-fun res!412655 () Bool)

(assert (=> b!637603 (=> res!412655 e!364840)))

(assert (=> b!637603 (= res!412655 (or (not (= (select (arr!18339 a!2986) j!136) lt!294866)) (not (= (select (arr!18339 a!2986) j!136) lt!294860)) (bvsge j!136 index!984)))))

(assert (=> b!637603 e!364845))

(declare-fun res!412654 () Bool)

(assert (=> b!637603 (=> (not res!412654) (not e!364845))))

(assert (=> b!637603 (= res!412654 (= lt!294860 (select (arr!18339 a!2986) j!136)))))

(assert (=> b!637603 (= lt!294860 (select (store (arr!18339 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637604 () Bool)

(declare-fun res!412661 () Bool)

(assert (=> b!637604 (=> (not res!412661) (not e!364839))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!637604 (= res!412661 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18339 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637605 () Bool)

(declare-fun e!364844 () Bool)

(assert (=> b!637605 (= e!364839 e!364844)))

(declare-fun res!412645 () Bool)

(assert (=> b!637605 (=> (not res!412645) (not e!364844))))

(assert (=> b!637605 (= res!412645 (= (select (store (arr!18339 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637605 (= lt!294864 (array!38242 (store (arr!18339 a!2986) i!1108 k!1786) (size!18703 a!2986)))))

(declare-fun b!637606 () Bool)

(declare-fun res!412652 () Bool)

(assert (=> b!637606 (=> (not res!412652) (not e!364842))))

(assert (=> b!637606 (= res!412652 (and (= (size!18703 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18703 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18703 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637607 () Bool)

(declare-fun res!412647 () Bool)

(assert (=> b!637607 (=> (not res!412647) (not e!364842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637607 (= res!412647 (validKeyInArray!0 (select (arr!18339 a!2986) j!136)))))

(declare-fun b!637608 () Bool)

(declare-fun e!364838 () Bool)

(assert (=> b!637608 (= e!364846 e!364838)))

(declare-fun res!412646 () Bool)

(assert (=> b!637608 (=> (not res!412646) (not e!364838))))

(assert (=> b!637608 (= res!412646 (arrayContainsKey!0 lt!294864 (select (arr!18339 a!2986) j!136) j!136))))

(declare-fun b!637609 () Bool)

(declare-fun res!412660 () Bool)

(assert (=> b!637609 (=> (not res!412660) (not e!364842))))

(assert (=> b!637609 (= res!412660 (validKeyInArray!0 k!1786))))

(declare-fun b!637610 () Bool)

(declare-fun e!364843 () Bool)

(assert (=> b!637610 (= e!364843 (not e!364847))))

(declare-fun res!412649 () Bool)

(assert (=> b!637610 (=> res!412649 e!364847)))

(declare-fun lt!294867 () SeekEntryResult!6786)

(assert (=> b!637610 (= res!412649 (not (= lt!294867 (Found!6786 index!984))))))

(declare-fun lt!294857 () Unit!21502)

(assert (=> b!637610 (= lt!294857 e!364848)))

(declare-fun c!72842 () Bool)

(assert (=> b!637610 (= c!72842 (= lt!294867 Undefined!6786))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38241 (_ BitVec 32)) SeekEntryResult!6786)

(assert (=> b!637610 (= lt!294867 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294866 lt!294864 mask!3053))))

(assert (=> b!637610 e!364849))

(declare-fun res!412650 () Bool)

(assert (=> b!637610 (=> (not res!412650) (not e!364849))))

(declare-fun lt!294856 () (_ BitVec 32))

(assert (=> b!637610 (= res!412650 (= lt!294863 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294856 vacantSpotIndex!68 lt!294866 lt!294864 mask!3053)))))

(assert (=> b!637610 (= lt!294863 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294856 vacantSpotIndex!68 (select (arr!18339 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637610 (= lt!294866 (select (store (arr!18339 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294865 () Unit!21502)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38241 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21502)

(assert (=> b!637610 (= lt!294865 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294856 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637610 (= lt!294856 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637611 () Bool)

(assert (=> b!637611 (= e!364838 (arrayContainsKey!0 lt!294864 (select (arr!18339 a!2986) j!136) index!984))))

(declare-fun res!412643 () Bool)

(assert (=> start!57714 (=> (not res!412643) (not e!364842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57714 (= res!412643 (validMask!0 mask!3053))))

(assert (=> start!57714 e!364842))

(assert (=> start!57714 true))

(declare-fun array_inv!14113 (array!38241) Bool)

(assert (=> start!57714 (array_inv!14113 a!2986)))

(declare-fun b!637598 () Bool)

(assert (=> b!637598 (= e!364844 e!364843)))

(declare-fun res!412644 () Bool)

(assert (=> b!637598 (=> (not res!412644) (not e!364843))))

(assert (=> b!637598 (= res!412644 (and (= lt!294861 (Found!6786 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18339 a!2986) index!984) (select (arr!18339 a!2986) j!136))) (not (= (select (arr!18339 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!637598 (= lt!294861 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18339 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637612 () Bool)

(assert (=> b!637612 (= e!364841 true)))

(declare-fun lt!294858 () Bool)

(assert (=> b!637612 (= lt!294858 (contains!3116 Nil!12430 k!1786))))

(declare-fun b!637613 () Bool)

(declare-fun res!412642 () Bool)

(assert (=> b!637613 (=> res!412642 e!364841)))

(declare-fun noDuplicate!391 (List!12433) Bool)

(assert (=> b!637613 (= res!412642 (not (noDuplicate!391 Nil!12430)))))

(assert (= (and start!57714 res!412643) b!637606))

(assert (= (and b!637606 res!412652) b!637607))

(assert (= (and b!637607 res!412647) b!637609))

(assert (= (and b!637609 res!412660) b!637595))

(assert (= (and b!637595 res!412657) b!637597))

(assert (= (and b!637597 res!412648) b!637593))

(assert (= (and b!637593 res!412656) b!637594))

(assert (= (and b!637594 res!412651) b!637604))

(assert (= (and b!637604 res!412661) b!637605))

(assert (= (and b!637605 res!412645) b!637598))

(assert (= (and b!637598 res!412644) b!637610))

(assert (= (and b!637610 res!412650) b!637602))

(assert (= (and b!637610 c!72842) b!637601))

(assert (= (and b!637610 (not c!72842)) b!637591))

(assert (= (and b!637610 (not res!412649)) b!637603))

(assert (= (and b!637603 res!412654) b!637600))

(assert (= (and b!637600 (not res!412659)) b!637608))

(assert (= (and b!637608 res!412646) b!637611))

(assert (= (and b!637603 (not res!412655)) b!637596))

(assert (= (and b!637596 (not res!412658)) b!637613))

(assert (= (and b!637613 (not res!412642)) b!637599))

(assert (= (and b!637599 (not res!412653)) b!637592))

(assert (= (and b!637592 (not res!412641)) b!637612))

(declare-fun m!611685 () Bool)

(assert (=> b!637597 m!611685))

(declare-fun m!611687 () Bool)

(assert (=> b!637598 m!611687))

(declare-fun m!611689 () Bool)

(assert (=> b!637598 m!611689))

(assert (=> b!637598 m!611689))

(declare-fun m!611691 () Bool)

(assert (=> b!637598 m!611691))

(declare-fun m!611693 () Bool)

(assert (=> b!637610 m!611693))

(declare-fun m!611695 () Bool)

(assert (=> b!637610 m!611695))

(assert (=> b!637610 m!611689))

(declare-fun m!611697 () Bool)

(assert (=> b!637610 m!611697))

(declare-fun m!611699 () Bool)

(assert (=> b!637610 m!611699))

(declare-fun m!611701 () Bool)

(assert (=> b!637610 m!611701))

(assert (=> b!637610 m!611689))

(declare-fun m!611703 () Bool)

(assert (=> b!637610 m!611703))

(declare-fun m!611705 () Bool)

(assert (=> b!637610 m!611705))

(assert (=> b!637600 m!611689))

(declare-fun m!611707 () Bool)

(assert (=> b!637595 m!611707))

(declare-fun m!611709 () Bool)

(assert (=> b!637604 m!611709))

(declare-fun m!611711 () Bool)

(assert (=> b!637599 m!611711))

(assert (=> b!637608 m!611689))

(assert (=> b!637608 m!611689))

(declare-fun m!611713 () Bool)

(assert (=> b!637608 m!611713))

(declare-fun m!611715 () Bool)

(assert (=> b!637592 m!611715))

(declare-fun m!611717 () Bool)

(assert (=> b!637594 m!611717))

(declare-fun m!611719 () Bool)

(assert (=> b!637593 m!611719))

(assert (=> b!637596 m!611689))

(assert (=> b!637596 m!611689))

(declare-fun m!611721 () Bool)

(assert (=> b!637596 m!611721))

(assert (=> b!637596 m!611689))

(declare-fun m!611723 () Bool)

(assert (=> b!637596 m!611723))

(assert (=> b!637611 m!611689))

(assert (=> b!637611 m!611689))

(declare-fun m!611725 () Bool)

(assert (=> b!637611 m!611725))

(declare-fun m!611727 () Bool)

(assert (=> start!57714 m!611727))

(declare-fun m!611729 () Bool)

(assert (=> start!57714 m!611729))

(declare-fun m!611731 () Bool)

(assert (=> b!637613 m!611731))

(assert (=> b!637607 m!611689))

(assert (=> b!637607 m!611689))

(declare-fun m!611733 () Bool)

(assert (=> b!637607 m!611733))

(declare-fun m!611735 () Bool)

(assert (=> b!637612 m!611735))

(assert (=> b!637605 m!611697))

(declare-fun m!611737 () Bool)

(assert (=> b!637605 m!611737))

(assert (=> b!637603 m!611689))

(assert (=> b!637603 m!611697))

(declare-fun m!611739 () Bool)

(assert (=> b!637603 m!611739))

(declare-fun m!611741 () Bool)

(assert (=> b!637609 m!611741))

(push 1)

