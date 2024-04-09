; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56158 () Bool)

(assert start!56158)

(declare-fun b!620679 () Bool)

(declare-fun e!356000 () Bool)

(declare-datatypes ((SeekEntryResult!6485 0))(
  ( (MissingZero!6485 (index!28223 (_ BitVec 32))) (Found!6485 (index!28224 (_ BitVec 32))) (Intermediate!6485 (undefined!7297 Bool) (index!28225 (_ BitVec 32)) (x!57022 (_ BitVec 32))) (Undefined!6485) (MissingVacant!6485 (index!28226 (_ BitVec 32))) )
))
(declare-fun lt!287060 () SeekEntryResult!6485)

(declare-fun lt!287066 () SeekEntryResult!6485)

(assert (=> b!620679 (= e!356000 (= lt!287060 lt!287066))))

(declare-fun b!620681 () Bool)

(assert (=> b!620681 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37591 0))(
  ( (array!37592 (arr!18038 (Array (_ BitVec 32) (_ BitVec 64))) (size!18402 (_ BitVec 32))) )
))
(declare-fun lt!287075 () array!37591)

(declare-datatypes ((Unit!20670 0))(
  ( (Unit!20671) )
))
(declare-fun lt!287074 () Unit!20670)

(declare-fun a!2986 () array!37591)

(declare-datatypes ((List!12132 0))(
  ( (Nil!12129) (Cons!12128 (h!13173 (_ BitVec 64)) (t!18368 List!12132)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37591 (_ BitVec 64) (_ BitVec 32) List!12132) Unit!20670)

(assert (=> b!620681 (= lt!287074 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287075 (select (arr!18038 a!2986) j!136) j!136 Nil!12129))))

(declare-fun arrayNoDuplicates!0 (array!37591 (_ BitVec 32) List!12132) Bool)

(assert (=> b!620681 (arrayNoDuplicates!0 lt!287075 j!136 Nil!12129)))

(declare-fun lt!287072 () Unit!20670)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37591 (_ BitVec 32) (_ BitVec 32)) Unit!20670)

(assert (=> b!620681 (= lt!287072 (lemmaNoDuplicateFromThenFromBigger!0 lt!287075 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620681 (arrayNoDuplicates!0 lt!287075 #b00000000000000000000000000000000 Nil!12129)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!287058 () Unit!20670)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37591 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12132) Unit!20670)

(assert (=> b!620681 (= lt!287058 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12129))))

(declare-fun arrayContainsKey!0 (array!37591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620681 (arrayContainsKey!0 lt!287075 (select (arr!18038 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287065 () Unit!20670)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37591 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20670)

(assert (=> b!620681 (= lt!287065 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287075 (select (arr!18038 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355992 () Unit!20670)

(declare-fun Unit!20672 () Unit!20670)

(assert (=> b!620681 (= e!355992 Unit!20672)))

(declare-fun b!620682 () Bool)

(declare-fun e!356004 () Unit!20670)

(declare-fun Unit!20673 () Unit!20670)

(assert (=> b!620682 (= e!356004 Unit!20673)))

(declare-fun b!620683 () Bool)

(declare-fun res!400061 () Bool)

(declare-fun e!355999 () Bool)

(assert (=> b!620683 (=> (not res!400061) (not e!355999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620683 (= res!400061 (validKeyInArray!0 (select (arr!18038 a!2986) j!136)))))

(declare-fun b!620684 () Bool)

(declare-fun res!400071 () Bool)

(assert (=> b!620684 (=> (not res!400071) (not e!355999))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!620684 (= res!400071 (and (= (size!18402 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18402 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18402 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620685 () Bool)

(declare-fun e!356002 () Bool)

(declare-fun e!356001 () Bool)

(assert (=> b!620685 (= e!356002 e!356001)))

(declare-fun res!400070 () Bool)

(assert (=> b!620685 (=> (not res!400070) (not e!356001))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620685 (= res!400070 (and (= lt!287060 (Found!6485 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18038 a!2986) index!984) (select (arr!18038 a!2986) j!136))) (not (= (select (arr!18038 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37591 (_ BitVec 32)) SeekEntryResult!6485)

(assert (=> b!620685 (= lt!287060 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18038 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620686 () Bool)

(declare-fun e!355994 () Unit!20670)

(declare-fun Unit!20674 () Unit!20670)

(assert (=> b!620686 (= e!355994 Unit!20674)))

(declare-fun res!400064 () Bool)

(declare-fun b!620687 () Bool)

(assert (=> b!620687 (= res!400064 (arrayContainsKey!0 lt!287075 (select (arr!18038 a!2986) j!136) j!136))))

(declare-fun e!356005 () Bool)

(assert (=> b!620687 (=> (not res!400064) (not e!356005))))

(declare-fun e!355995 () Bool)

(assert (=> b!620687 (= e!355995 e!356005)))

(declare-fun b!620688 () Bool)

(declare-fun e!355996 () Unit!20670)

(declare-fun Unit!20675 () Unit!20670)

(assert (=> b!620688 (= e!355996 Unit!20675)))

(declare-fun e!356003 () Bool)

(declare-fun b!620689 () Bool)

(assert (=> b!620689 (= e!356003 (arrayContainsKey!0 lt!287075 (select (arr!18038 a!2986) j!136) index!984))))

(declare-fun b!620690 () Bool)

(declare-fun res!400074 () Bool)

(declare-fun e!355997 () Bool)

(assert (=> b!620690 (=> (not res!400074) (not e!355997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37591 (_ BitVec 32)) Bool)

(assert (=> b!620690 (= res!400074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620691 () Bool)

(assert (=> b!620691 (= e!356005 (arrayContainsKey!0 lt!287075 (select (arr!18038 a!2986) j!136) index!984))))

(declare-fun b!620692 () Bool)

(assert (=> b!620692 (= e!356001 (not true))))

(declare-fun lt!287063 () Unit!20670)

(assert (=> b!620692 (= lt!287063 e!356004)))

(declare-fun c!70677 () Bool)

(declare-fun lt!287061 () SeekEntryResult!6485)

(assert (=> b!620692 (= c!70677 (= lt!287061 (Found!6485 index!984)))))

(declare-fun lt!287062 () Unit!20670)

(assert (=> b!620692 (= lt!287062 e!355996)))

(declare-fun c!70676 () Bool)

(assert (=> b!620692 (= c!70676 (= lt!287061 Undefined!6485))))

(declare-fun lt!287076 () (_ BitVec 64))

(assert (=> b!620692 (= lt!287061 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287076 lt!287075 mask!3053))))

(assert (=> b!620692 e!356000))

(declare-fun res!400073 () Bool)

(assert (=> b!620692 (=> (not res!400073) (not e!356000))))

(declare-fun lt!287067 () (_ BitVec 32))

(assert (=> b!620692 (= res!400073 (= lt!287066 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287067 vacantSpotIndex!68 lt!287076 lt!287075 mask!3053)))))

(assert (=> b!620692 (= lt!287066 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287067 vacantSpotIndex!68 (select (arr!18038 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620692 (= lt!287076 (select (store (arr!18038 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287059 () Unit!20670)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37591 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20670)

(assert (=> b!620692 (= lt!287059 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287067 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620692 (= lt!287067 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!400063 () Bool)

(assert (=> start!56158 (=> (not res!400063) (not e!355999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56158 (= res!400063 (validMask!0 mask!3053))))

(assert (=> start!56158 e!355999))

(assert (=> start!56158 true))

(declare-fun array_inv!13812 (array!37591) Bool)

(assert (=> start!56158 (array_inv!13812 a!2986)))

(declare-fun b!620680 () Bool)

(declare-fun res!400076 () Bool)

(assert (=> b!620680 (=> (not res!400076) (not e!355999))))

(assert (=> b!620680 (= res!400076 (validKeyInArray!0 k!1786))))

(declare-fun b!620693 () Bool)

(declare-fun Unit!20676 () Unit!20670)

(assert (=> b!620693 (= e!355992 Unit!20676)))

(declare-fun b!620694 () Bool)

(declare-fun res!400072 () Bool)

(assert (=> b!620694 (=> (not res!400072) (not e!355997))))

(assert (=> b!620694 (= res!400072 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12129))))

(declare-fun b!620695 () Bool)

(assert (=> b!620695 (= e!355997 e!356002)))

(declare-fun res!400062 () Bool)

(assert (=> b!620695 (=> (not res!400062) (not e!356002))))

(assert (=> b!620695 (= res!400062 (= (select (store (arr!18038 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620695 (= lt!287075 (array!37592 (store (arr!18038 a!2986) i!1108 k!1786) (size!18402 a!2986)))))

(declare-fun b!620696 () Bool)

(declare-fun res!400075 () Bool)

(assert (=> b!620696 (=> (not res!400075) (not e!355999))))

(assert (=> b!620696 (= res!400075 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620697 () Bool)

(assert (=> b!620697 false))

(declare-fun lt!287071 () Unit!20670)

(assert (=> b!620697 (= lt!287071 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287075 (select (arr!18038 a!2986) j!136) index!984 Nil!12129))))

(assert (=> b!620697 (arrayNoDuplicates!0 lt!287075 index!984 Nil!12129)))

(declare-fun lt!287057 () Unit!20670)

(assert (=> b!620697 (= lt!287057 (lemmaNoDuplicateFromThenFromBigger!0 lt!287075 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620697 (arrayNoDuplicates!0 lt!287075 #b00000000000000000000000000000000 Nil!12129)))

(declare-fun lt!287069 () Unit!20670)

(assert (=> b!620697 (= lt!287069 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12129))))

(assert (=> b!620697 (arrayContainsKey!0 lt!287075 (select (arr!18038 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287068 () Unit!20670)

(assert (=> b!620697 (= lt!287068 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287075 (select (arr!18038 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!620697 e!356003))

(declare-fun res!400069 () Bool)

(assert (=> b!620697 (=> (not res!400069) (not e!356003))))

(assert (=> b!620697 (= res!400069 (arrayContainsKey!0 lt!287075 (select (arr!18038 a!2986) j!136) j!136))))

(declare-fun Unit!20677 () Unit!20670)

(assert (=> b!620697 (= e!355994 Unit!20677)))

(declare-fun b!620698 () Bool)

(assert (=> b!620698 (= e!355999 e!355997)))

(declare-fun res!400068 () Bool)

(assert (=> b!620698 (=> (not res!400068) (not e!355997))))

(declare-fun lt!287064 () SeekEntryResult!6485)

(assert (=> b!620698 (= res!400068 (or (= lt!287064 (MissingZero!6485 i!1108)) (= lt!287064 (MissingVacant!6485 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37591 (_ BitVec 32)) SeekEntryResult!6485)

(assert (=> b!620698 (= lt!287064 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620699 () Bool)

(declare-fun res!400066 () Bool)

(assert (=> b!620699 (=> (not res!400066) (not e!355997))))

(assert (=> b!620699 (= res!400066 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18038 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620700 () Bool)

(declare-fun res!400065 () Bool)

(assert (=> b!620700 (= res!400065 (bvsge j!136 index!984))))

(assert (=> b!620700 (=> res!400065 e!355995)))

(declare-fun e!355998 () Bool)

(assert (=> b!620700 (= e!355998 e!355995)))

(declare-fun b!620701 () Bool)

(declare-fun Unit!20678 () Unit!20670)

(assert (=> b!620701 (= e!355996 Unit!20678)))

(assert (=> b!620701 false))

(declare-fun b!620702 () Bool)

(declare-fun Unit!20679 () Unit!20670)

(assert (=> b!620702 (= e!356004 Unit!20679)))

(declare-fun res!400067 () Bool)

(assert (=> b!620702 (= res!400067 (= (select (store (arr!18038 a!2986) i!1108 k!1786) index!984) (select (arr!18038 a!2986) j!136)))))

(assert (=> b!620702 (=> (not res!400067) (not e!355998))))

(assert (=> b!620702 e!355998))

(declare-fun c!70679 () Bool)

(assert (=> b!620702 (= c!70679 (bvslt j!136 index!984))))

(declare-fun lt!287070 () Unit!20670)

(assert (=> b!620702 (= lt!287070 e!355992)))

(declare-fun c!70678 () Bool)

(assert (=> b!620702 (= c!70678 (bvslt index!984 j!136))))

(declare-fun lt!287073 () Unit!20670)

(assert (=> b!620702 (= lt!287073 e!355994)))

(assert (=> b!620702 false))

(assert (= (and start!56158 res!400063) b!620684))

(assert (= (and b!620684 res!400071) b!620683))

(assert (= (and b!620683 res!400061) b!620680))

(assert (= (and b!620680 res!400076) b!620696))

(assert (= (and b!620696 res!400075) b!620698))

(assert (= (and b!620698 res!400068) b!620690))

(assert (= (and b!620690 res!400074) b!620694))

(assert (= (and b!620694 res!400072) b!620699))

(assert (= (and b!620699 res!400066) b!620695))

(assert (= (and b!620695 res!400062) b!620685))

(assert (= (and b!620685 res!400070) b!620692))

(assert (= (and b!620692 res!400073) b!620679))

(assert (= (and b!620692 c!70676) b!620701))

(assert (= (and b!620692 (not c!70676)) b!620688))

(assert (= (and b!620692 c!70677) b!620702))

(assert (= (and b!620692 (not c!70677)) b!620682))

(assert (= (and b!620702 res!400067) b!620700))

(assert (= (and b!620700 (not res!400065)) b!620687))

(assert (= (and b!620687 res!400064) b!620691))

(assert (= (and b!620702 c!70679) b!620681))

(assert (= (and b!620702 (not c!70679)) b!620693))

(assert (= (and b!620702 c!70678) b!620697))

(assert (= (and b!620702 (not c!70678)) b!620686))

(assert (= (and b!620697 res!400069) b!620689))

(declare-fun m!596639 () Bool)

(assert (=> b!620698 m!596639))

(declare-fun m!596641 () Bool)

(assert (=> b!620690 m!596641))

(declare-fun m!596643 () Bool)

(assert (=> b!620689 m!596643))

(assert (=> b!620689 m!596643))

(declare-fun m!596645 () Bool)

(assert (=> b!620689 m!596645))

(declare-fun m!596647 () Bool)

(assert (=> b!620681 m!596647))

(assert (=> b!620681 m!596643))

(declare-fun m!596649 () Bool)

(assert (=> b!620681 m!596649))

(assert (=> b!620681 m!596643))

(declare-fun m!596651 () Bool)

(assert (=> b!620681 m!596651))

(assert (=> b!620681 m!596643))

(declare-fun m!596653 () Bool)

(assert (=> b!620681 m!596653))

(declare-fun m!596655 () Bool)

(assert (=> b!620681 m!596655))

(declare-fun m!596657 () Bool)

(assert (=> b!620681 m!596657))

(declare-fun m!596659 () Bool)

(assert (=> b!620681 m!596659))

(assert (=> b!620681 m!596643))

(assert (=> b!620687 m!596643))

(assert (=> b!620687 m!596643))

(declare-fun m!596661 () Bool)

(assert (=> b!620687 m!596661))

(declare-fun m!596663 () Bool)

(assert (=> b!620696 m!596663))

(declare-fun m!596665 () Bool)

(assert (=> b!620685 m!596665))

(assert (=> b!620685 m!596643))

(assert (=> b!620685 m!596643))

(declare-fun m!596667 () Bool)

(assert (=> b!620685 m!596667))

(assert (=> b!620691 m!596643))

(assert (=> b!620691 m!596643))

(assert (=> b!620691 m!596645))

(assert (=> b!620683 m!596643))

(assert (=> b!620683 m!596643))

(declare-fun m!596669 () Bool)

(assert (=> b!620683 m!596669))

(declare-fun m!596671 () Bool)

(assert (=> b!620692 m!596671))

(declare-fun m!596673 () Bool)

(assert (=> b!620692 m!596673))

(declare-fun m!596675 () Bool)

(assert (=> b!620692 m!596675))

(assert (=> b!620692 m!596643))

(declare-fun m!596677 () Bool)

(assert (=> b!620692 m!596677))

(declare-fun m!596679 () Bool)

(assert (=> b!620692 m!596679))

(assert (=> b!620692 m!596643))

(declare-fun m!596681 () Bool)

(assert (=> b!620692 m!596681))

(declare-fun m!596683 () Bool)

(assert (=> b!620692 m!596683))

(declare-fun m!596685 () Bool)

(assert (=> b!620694 m!596685))

(assert (=> b!620695 m!596679))

(declare-fun m!596687 () Bool)

(assert (=> b!620695 m!596687))

(assert (=> b!620702 m!596679))

(declare-fun m!596689 () Bool)

(assert (=> b!620702 m!596689))

(assert (=> b!620702 m!596643))

(declare-fun m!596691 () Bool)

(assert (=> start!56158 m!596691))

(declare-fun m!596693 () Bool)

(assert (=> start!56158 m!596693))

(declare-fun m!596695 () Bool)

(assert (=> b!620680 m!596695))

(declare-fun m!596697 () Bool)

(assert (=> b!620699 m!596697))

(declare-fun m!596699 () Bool)

(assert (=> b!620697 m!596699))

(assert (=> b!620697 m!596643))

(assert (=> b!620697 m!596643))

(declare-fun m!596701 () Bool)

(assert (=> b!620697 m!596701))

(assert (=> b!620697 m!596643))

(declare-fun m!596703 () Bool)

(assert (=> b!620697 m!596703))

(assert (=> b!620697 m!596655))

(assert (=> b!620697 m!596643))

(assert (=> b!620697 m!596661))

(assert (=> b!620697 m!596643))

(declare-fun m!596705 () Bool)

(assert (=> b!620697 m!596705))

(declare-fun m!596707 () Bool)

(assert (=> b!620697 m!596707))

(assert (=> b!620697 m!596657))

(push 1)

