; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57716 () Bool)

(assert start!57716)

(declare-fun b!637660 () Bool)

(declare-fun res!412722 () Bool)

(declare-fun e!364881 () Bool)

(assert (=> b!637660 (=> (not res!412722) (not e!364881))))

(declare-datatypes ((array!38243 0))(
  ( (array!38244 (arr!18340 (Array (_ BitVec 32) (_ BitVec 64))) (size!18704 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38243)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38243 (_ BitVec 32)) Bool)

(assert (=> b!637660 (= res!412722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637661 () Bool)

(declare-fun e!364887 () Bool)

(assert (=> b!637661 (= e!364887 e!364881)))

(declare-fun res!412716 () Bool)

(assert (=> b!637661 (=> (not res!412716) (not e!364881))))

(declare-datatypes ((SeekEntryResult!6787 0))(
  ( (MissingZero!6787 (index!29461 (_ BitVec 32))) (Found!6787 (index!29462 (_ BitVec 32))) (Intermediate!6787 (undefined!7599 Bool) (index!29463 (_ BitVec 32)) (x!58246 (_ BitVec 32))) (Undefined!6787) (MissingVacant!6787 (index!29464 (_ BitVec 32))) )
))
(declare-fun lt!294901 () SeekEntryResult!6787)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637661 (= res!412716 (or (= lt!294901 (MissingZero!6787 i!1108)) (= lt!294901 (MissingVacant!6787 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38243 (_ BitVec 32)) SeekEntryResult!6787)

(assert (=> b!637661 (= lt!294901 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!637662 () Bool)

(declare-fun res!412712 () Bool)

(assert (=> b!637662 (=> (not res!412712) (not e!364881))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!637662 (= res!412712 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18340 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637663 () Bool)

(declare-fun e!364884 () Bool)

(declare-fun lt!294898 () SeekEntryResult!6787)

(declare-fun lt!294903 () SeekEntryResult!6787)

(assert (=> b!637663 (= e!364884 (= lt!294898 lt!294903))))

(declare-fun b!637664 () Bool)

(declare-datatypes ((Unit!21506 0))(
  ( (Unit!21507) )
))
(declare-fun e!364885 () Unit!21506)

(declare-fun Unit!21508 () Unit!21506)

(assert (=> b!637664 (= e!364885 Unit!21508)))

(declare-fun b!637666 () Bool)

(declare-fun res!412705 () Bool)

(declare-fun e!364878 () Bool)

(assert (=> b!637666 (=> res!412705 e!364878)))

(declare-datatypes ((List!12434 0))(
  ( (Nil!12431) (Cons!12430 (h!13475 (_ BitVec 64)) (t!18670 List!12434)) )
))
(declare-fun noDuplicate!392 (List!12434) Bool)

(assert (=> b!637666 (= res!412705 (not (noDuplicate!392 Nil!12431)))))

(declare-fun b!637667 () Bool)

(declare-fun res!412717 () Bool)

(assert (=> b!637667 (=> (not res!412717) (not e!364887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637667 (= res!412717 (validKeyInArray!0 k0!1786))))

(declare-fun b!637668 () Bool)

(declare-fun res!412719 () Bool)

(assert (=> b!637668 (=> (not res!412719) (not e!364887))))

(declare-fun arrayContainsKey!0 (array!38243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637668 (= res!412719 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637669 () Bool)

(declare-fun e!364883 () Bool)

(assert (=> b!637669 (= e!364883 e!364878)))

(declare-fun res!412711 () Bool)

(assert (=> b!637669 (=> res!412711 e!364878)))

(assert (=> b!637669 (= res!412711 (or (bvsge (size!18704 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18704 a!2986))))))

(declare-fun lt!294902 () array!38243)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!637669 (arrayContainsKey!0 lt!294902 (select (arr!18340 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294895 () Unit!21506)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38243 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21506)

(assert (=> b!637669 (= lt!294895 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294902 (select (arr!18340 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637670 () Bool)

(declare-fun e!364888 () Bool)

(assert (=> b!637670 (= e!364881 e!364888)))

(declare-fun res!412709 () Bool)

(assert (=> b!637670 (=> (not res!412709) (not e!364888))))

(assert (=> b!637670 (= res!412709 (= (select (store (arr!18340 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637670 (= lt!294902 (array!38244 (store (arr!18340 a!2986) i!1108 k0!1786) (size!18704 a!2986)))))

(declare-fun b!637671 () Bool)

(assert (=> b!637671 (= e!364878 true)))

(declare-fun lt!294892 () Bool)

(declare-fun contains!3117 (List!12434 (_ BitVec 64)) Bool)

(assert (=> b!637671 (= lt!294892 (contains!3117 Nil!12431 k0!1786))))

(declare-fun b!637672 () Bool)

(declare-fun res!412724 () Bool)

(assert (=> b!637672 (=> (not res!412724) (not e!364881))))

(declare-fun arrayNoDuplicates!0 (array!38243 (_ BitVec 32) List!12434) Bool)

(assert (=> b!637672 (= res!412724 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12431))))

(declare-fun b!637673 () Bool)

(declare-fun e!364876 () Bool)

(assert (=> b!637673 (= e!364888 e!364876)))

(declare-fun res!412718 () Bool)

(assert (=> b!637673 (=> (not res!412718) (not e!364876))))

(assert (=> b!637673 (= res!412718 (and (= lt!294898 (Found!6787 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18340 a!2986) index!984) (select (arr!18340 a!2986) j!136))) (not (= (select (arr!18340 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38243 (_ BitVec 32)) SeekEntryResult!6787)

(assert (=> b!637673 (= lt!294898 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18340 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637674 () Bool)

(declare-fun e!364877 () Bool)

(assert (=> b!637674 (= e!364877 (arrayContainsKey!0 lt!294902 (select (arr!18340 a!2986) j!136) index!984))))

(declare-fun b!637675 () Bool)

(declare-fun e!364879 () Bool)

(declare-fun e!364886 () Bool)

(assert (=> b!637675 (= e!364879 e!364886)))

(declare-fun res!412720 () Bool)

(assert (=> b!637675 (=> res!412720 e!364886)))

(declare-fun lt!294896 () (_ BitVec 64))

(declare-fun lt!294899 () (_ BitVec 64))

(assert (=> b!637675 (= res!412720 (or (not (= (select (arr!18340 a!2986) j!136) lt!294896)) (not (= (select (arr!18340 a!2986) j!136) lt!294899)) (bvsge j!136 index!984)))))

(declare-fun b!637676 () Bool)

(declare-fun res!412707 () Bool)

(assert (=> b!637676 (=> res!412707 e!364878)))

(assert (=> b!637676 (= res!412707 (contains!3117 Nil!12431 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637665 () Bool)

(declare-fun res!412714 () Bool)

(assert (=> b!637665 (=> res!412714 e!364878)))

(assert (=> b!637665 (= res!412714 (contains!3117 Nil!12431 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!412713 () Bool)

(assert (=> start!57716 (=> (not res!412713) (not e!364887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57716 (= res!412713 (validMask!0 mask!3053))))

(assert (=> start!57716 e!364887))

(assert (=> start!57716 true))

(declare-fun array_inv!14114 (array!38243) Bool)

(assert (=> start!57716 (array_inv!14114 a!2986)))

(declare-fun b!637677 () Bool)

(declare-fun res!412706 () Bool)

(assert (=> b!637677 (=> (not res!412706) (not e!364887))))

(assert (=> b!637677 (= res!412706 (and (= (size!18704 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18704 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18704 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637678 () Bool)

(declare-fun Unit!21509 () Unit!21506)

(assert (=> b!637678 (= e!364885 Unit!21509)))

(assert (=> b!637678 false))

(declare-fun b!637679 () Bool)

(declare-fun e!364882 () Bool)

(assert (=> b!637679 (= e!364876 (not e!364882))))

(declare-fun res!412708 () Bool)

(assert (=> b!637679 (=> res!412708 e!364882)))

(declare-fun lt!294894 () SeekEntryResult!6787)

(assert (=> b!637679 (= res!412708 (not (= lt!294894 (Found!6787 index!984))))))

(declare-fun lt!294897 () Unit!21506)

(assert (=> b!637679 (= lt!294897 e!364885)))

(declare-fun c!72845 () Bool)

(assert (=> b!637679 (= c!72845 (= lt!294894 Undefined!6787))))

(assert (=> b!637679 (= lt!294894 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294896 lt!294902 mask!3053))))

(assert (=> b!637679 e!364884))

(declare-fun res!412715 () Bool)

(assert (=> b!637679 (=> (not res!412715) (not e!364884))))

(declare-fun lt!294900 () (_ BitVec 32))

(assert (=> b!637679 (= res!412715 (= lt!294903 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294900 vacantSpotIndex!68 lt!294896 lt!294902 mask!3053)))))

(assert (=> b!637679 (= lt!294903 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294900 vacantSpotIndex!68 (select (arr!18340 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637679 (= lt!294896 (select (store (arr!18340 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!294893 () Unit!21506)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38243 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21506)

(assert (=> b!637679 (= lt!294893 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294900 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637679 (= lt!294900 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637680 () Bool)

(assert (=> b!637680 (= e!364886 e!364877)))

(declare-fun res!412710 () Bool)

(assert (=> b!637680 (=> (not res!412710) (not e!364877))))

(assert (=> b!637680 (= res!412710 (arrayContainsKey!0 lt!294902 (select (arr!18340 a!2986) j!136) j!136))))

(declare-fun b!637681 () Bool)

(assert (=> b!637681 (= e!364882 e!364883)))

(declare-fun res!412704 () Bool)

(assert (=> b!637681 (=> res!412704 e!364883)))

(assert (=> b!637681 (= res!412704 (or (not (= (select (arr!18340 a!2986) j!136) lt!294896)) (not (= (select (arr!18340 a!2986) j!136) lt!294899)) (bvsge j!136 index!984)))))

(assert (=> b!637681 e!364879))

(declare-fun res!412721 () Bool)

(assert (=> b!637681 (=> (not res!412721) (not e!364879))))

(assert (=> b!637681 (= res!412721 (= lt!294899 (select (arr!18340 a!2986) j!136)))))

(assert (=> b!637681 (= lt!294899 (select (store (arr!18340 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!637682 () Bool)

(declare-fun res!412723 () Bool)

(assert (=> b!637682 (=> (not res!412723) (not e!364887))))

(assert (=> b!637682 (= res!412723 (validKeyInArray!0 (select (arr!18340 a!2986) j!136)))))

(assert (= (and start!57716 res!412713) b!637677))

(assert (= (and b!637677 res!412706) b!637682))

(assert (= (and b!637682 res!412723) b!637667))

(assert (= (and b!637667 res!412717) b!637668))

(assert (= (and b!637668 res!412719) b!637661))

(assert (= (and b!637661 res!412716) b!637660))

(assert (= (and b!637660 res!412722) b!637672))

(assert (= (and b!637672 res!412724) b!637662))

(assert (= (and b!637662 res!412712) b!637670))

(assert (= (and b!637670 res!412709) b!637673))

(assert (= (and b!637673 res!412718) b!637679))

(assert (= (and b!637679 res!412715) b!637663))

(assert (= (and b!637679 c!72845) b!637678))

(assert (= (and b!637679 (not c!72845)) b!637664))

(assert (= (and b!637679 (not res!412708)) b!637681))

(assert (= (and b!637681 res!412721) b!637675))

(assert (= (and b!637675 (not res!412720)) b!637680))

(assert (= (and b!637680 res!412710) b!637674))

(assert (= (and b!637681 (not res!412704)) b!637669))

(assert (= (and b!637669 (not res!412711)) b!637666))

(assert (= (and b!637666 (not res!412705)) b!637665))

(assert (= (and b!637665 (not res!412714)) b!637676))

(assert (= (and b!637676 (not res!412707)) b!637671))

(declare-fun m!611743 () Bool)

(assert (=> b!637681 m!611743))

(declare-fun m!611745 () Bool)

(assert (=> b!637681 m!611745))

(declare-fun m!611747 () Bool)

(assert (=> b!637681 m!611747))

(declare-fun m!611749 () Bool)

(assert (=> b!637676 m!611749))

(declare-fun m!611751 () Bool)

(assert (=> b!637671 m!611751))

(assert (=> b!637682 m!611743))

(assert (=> b!637682 m!611743))

(declare-fun m!611753 () Bool)

(assert (=> b!637682 m!611753))

(declare-fun m!611755 () Bool)

(assert (=> b!637660 m!611755))

(declare-fun m!611757 () Bool)

(assert (=> b!637662 m!611757))

(declare-fun m!611759 () Bool)

(assert (=> b!637666 m!611759))

(assert (=> b!637670 m!611745))

(declare-fun m!611761 () Bool)

(assert (=> b!637670 m!611761))

(assert (=> b!637669 m!611743))

(assert (=> b!637669 m!611743))

(declare-fun m!611763 () Bool)

(assert (=> b!637669 m!611763))

(assert (=> b!637669 m!611743))

(declare-fun m!611765 () Bool)

(assert (=> b!637669 m!611765))

(declare-fun m!611767 () Bool)

(assert (=> start!57716 m!611767))

(declare-fun m!611769 () Bool)

(assert (=> start!57716 m!611769))

(declare-fun m!611771 () Bool)

(assert (=> b!637679 m!611771))

(declare-fun m!611773 () Bool)

(assert (=> b!637679 m!611773))

(assert (=> b!637679 m!611743))

(assert (=> b!637679 m!611745))

(declare-fun m!611775 () Bool)

(assert (=> b!637679 m!611775))

(declare-fun m!611777 () Bool)

(assert (=> b!637679 m!611777))

(declare-fun m!611779 () Bool)

(assert (=> b!637679 m!611779))

(assert (=> b!637679 m!611743))

(declare-fun m!611781 () Bool)

(assert (=> b!637679 m!611781))

(declare-fun m!611783 () Bool)

(assert (=> b!637673 m!611783))

(assert (=> b!637673 m!611743))

(assert (=> b!637673 m!611743))

(declare-fun m!611785 () Bool)

(assert (=> b!637673 m!611785))

(assert (=> b!637680 m!611743))

(assert (=> b!637680 m!611743))

(declare-fun m!611787 () Bool)

(assert (=> b!637680 m!611787))

(declare-fun m!611789 () Bool)

(assert (=> b!637665 m!611789))

(assert (=> b!637675 m!611743))

(declare-fun m!611791 () Bool)

(assert (=> b!637668 m!611791))

(declare-fun m!611793 () Bool)

(assert (=> b!637672 m!611793))

(declare-fun m!611795 () Bool)

(assert (=> b!637661 m!611795))

(assert (=> b!637674 m!611743))

(assert (=> b!637674 m!611743))

(declare-fun m!611797 () Bool)

(assert (=> b!637674 m!611797))

(declare-fun m!611799 () Bool)

(assert (=> b!637667 m!611799))

(check-sat (not b!637667) (not b!637669) (not b!637672) (not b!637661) (not b!637671) (not b!637679) (not b!637668) (not b!637674) (not start!57716) (not b!637682) (not b!637676) (not b!637673) (not b!637680) (not b!637665) (not b!637666) (not b!637660))
(check-sat)
