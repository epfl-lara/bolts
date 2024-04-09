; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54558 () Bool)

(assert start!54558)

(declare-fun b!596111 () Bool)

(declare-fun e!340590 () Bool)

(declare-fun e!340594 () Bool)

(assert (=> b!596111 (= e!340590 (not e!340594))))

(declare-fun res!382089 () Bool)

(assert (=> b!596111 (=> res!382089 e!340594)))

(declare-datatypes ((SeekEntryResult!6198 0))(
  ( (MissingZero!6198 (index!27039 (_ BitVec 32))) (Found!6198 (index!27040 (_ BitVec 32))) (Intermediate!6198 (undefined!7010 Bool) (index!27041 (_ BitVec 32)) (x!55867 (_ BitVec 32))) (Undefined!6198) (MissingVacant!6198 (index!27042 (_ BitVec 32))) )
))
(declare-fun lt!270789 () SeekEntryResult!6198)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!596111 (= res!382089 (not (= lt!270789 (Found!6198 index!984))))))

(declare-datatypes ((Unit!18736 0))(
  ( (Unit!18737) )
))
(declare-fun lt!270782 () Unit!18736)

(declare-fun e!340583 () Unit!18736)

(assert (=> b!596111 (= lt!270782 e!340583)))

(declare-fun c!67379 () Bool)

(assert (=> b!596111 (= c!67379 (= lt!270789 Undefined!6198))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!270788 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36981 0))(
  ( (array!36982 (arr!17751 (Array (_ BitVec 32) (_ BitVec 64))) (size!18115 (_ BitVec 32))) )
))
(declare-fun lt!270792 () array!36981)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36981 (_ BitVec 32)) SeekEntryResult!6198)

(assert (=> b!596111 (= lt!270789 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270788 lt!270792 mask!3053))))

(declare-fun e!340585 () Bool)

(assert (=> b!596111 e!340585))

(declare-fun res!382095 () Bool)

(assert (=> b!596111 (=> (not res!382095) (not e!340585))))

(declare-fun lt!270786 () (_ BitVec 32))

(declare-fun lt!270785 () SeekEntryResult!6198)

(assert (=> b!596111 (= res!382095 (= lt!270785 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270786 vacantSpotIndex!68 lt!270788 lt!270792 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!36981)

(assert (=> b!596111 (= lt!270785 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270786 vacantSpotIndex!68 (select (arr!17751 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!596111 (= lt!270788 (select (store (arr!17751 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270784 () Unit!18736)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36981 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18736)

(assert (=> b!596111 (= lt!270784 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270786 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596111 (= lt!270786 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596112 () Bool)

(declare-fun e!340588 () Bool)

(declare-fun e!340587 () Bool)

(assert (=> b!596112 (= e!340588 e!340587)))

(declare-fun res!382099 () Bool)

(assert (=> b!596112 (=> (not res!382099) (not e!340587))))

(declare-fun lt!270790 () SeekEntryResult!6198)

(assert (=> b!596112 (= res!382099 (or (= lt!270790 (MissingZero!6198 i!1108)) (= lt!270790 (MissingVacant!6198 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36981 (_ BitVec 32)) SeekEntryResult!6198)

(assert (=> b!596112 (= lt!270790 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!596113 () Bool)

(declare-fun res!382086 () Bool)

(assert (=> b!596113 (=> (not res!382086) (not e!340588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596113 (= res!382086 (validKeyInArray!0 (select (arr!17751 a!2986) j!136)))))

(declare-fun b!596114 () Bool)

(declare-fun e!340591 () Bool)

(assert (=> b!596114 (= e!340587 e!340591)))

(declare-fun res!382105 () Bool)

(assert (=> b!596114 (=> (not res!382105) (not e!340591))))

(assert (=> b!596114 (= res!382105 (= (select (store (arr!17751 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596114 (= lt!270792 (array!36982 (store (arr!17751 a!2986) i!1108 k!1786) (size!18115 a!2986)))))

(declare-fun b!596115 () Bool)

(declare-fun res!382088 () Bool)

(assert (=> b!596115 (=> (not res!382088) (not e!340588))))

(assert (=> b!596115 (= res!382088 (validKeyInArray!0 k!1786))))

(declare-fun b!596116 () Bool)

(declare-fun e!340586 () Bool)

(declare-fun e!340582 () Bool)

(assert (=> b!596116 (= e!340586 e!340582)))

(declare-fun res!382104 () Bool)

(assert (=> b!596116 (=> res!382104 e!340582)))

(assert (=> b!596116 (= res!382104 (or (bvsge (size!18115 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18115 a!2986))))))

(declare-fun arrayContainsKey!0 (array!36981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596116 (arrayContainsKey!0 lt!270792 (select (arr!17751 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270783 () Unit!18736)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36981 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18736)

(assert (=> b!596116 (= lt!270783 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270792 (select (arr!17751 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596117 () Bool)

(assert (=> b!596117 (= e!340594 e!340586)))

(declare-fun res!382101 () Bool)

(assert (=> b!596117 (=> res!382101 e!340586)))

(declare-fun lt!270791 () (_ BitVec 64))

(assert (=> b!596117 (= res!382101 (or (not (= (select (arr!17751 a!2986) j!136) lt!270788)) (not (= (select (arr!17751 a!2986) j!136) lt!270791)) (bvsge j!136 index!984)))))

(declare-fun e!340584 () Bool)

(assert (=> b!596117 e!340584))

(declare-fun res!382100 () Bool)

(assert (=> b!596117 (=> (not res!382100) (not e!340584))))

(assert (=> b!596117 (= res!382100 (= lt!270791 (select (arr!17751 a!2986) j!136)))))

(assert (=> b!596117 (= lt!270791 (select (store (arr!17751 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596118 () Bool)

(declare-fun Unit!18738 () Unit!18736)

(assert (=> b!596118 (= e!340583 Unit!18738)))

(assert (=> b!596118 false))

(declare-fun b!596119 () Bool)

(declare-fun res!382103 () Bool)

(assert (=> b!596119 (=> (not res!382103) (not e!340588))))

(assert (=> b!596119 (= res!382103 (and (= (size!18115 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18115 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18115 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596120 () Bool)

(declare-fun res!382091 () Bool)

(assert (=> b!596120 (=> res!382091 e!340582)))

(declare-datatypes ((List!11845 0))(
  ( (Nil!11842) (Cons!11841 (h!12886 (_ BitVec 64)) (t!18081 List!11845)) )
))
(declare-fun contains!2949 (List!11845 (_ BitVec 64)) Bool)

(assert (=> b!596120 (= res!382091 (contains!2949 Nil!11842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596121 () Bool)

(declare-fun e!340593 () Bool)

(declare-fun e!340589 () Bool)

(assert (=> b!596121 (= e!340593 e!340589)))

(declare-fun res!382097 () Bool)

(assert (=> b!596121 (=> (not res!382097) (not e!340589))))

(assert (=> b!596121 (= res!382097 (arrayContainsKey!0 lt!270792 (select (arr!17751 a!2986) j!136) j!136))))

(declare-fun b!596122 () Bool)

(assert (=> b!596122 (= e!340589 (arrayContainsKey!0 lt!270792 (select (arr!17751 a!2986) j!136) index!984))))

(declare-fun b!596123 () Bool)

(assert (=> b!596123 (= e!340591 e!340590)))

(declare-fun res!382092 () Bool)

(assert (=> b!596123 (=> (not res!382092) (not e!340590))))

(declare-fun lt!270787 () SeekEntryResult!6198)

(assert (=> b!596123 (= res!382092 (and (= lt!270787 (Found!6198 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17751 a!2986) index!984) (select (arr!17751 a!2986) j!136))) (not (= (select (arr!17751 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!596123 (= lt!270787 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17751 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596124 () Bool)

(declare-fun res!382090 () Bool)

(assert (=> b!596124 (=> res!382090 e!340582)))

(assert (=> b!596124 (= res!382090 (contains!2949 Nil!11842 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596125 () Bool)

(declare-fun res!382106 () Bool)

(assert (=> b!596125 (=> res!382106 e!340582)))

(declare-fun noDuplicate!265 (List!11845) Bool)

(assert (=> b!596125 (= res!382106 (not (noDuplicate!265 Nil!11842)))))

(declare-fun b!596126 () Bool)

(assert (=> b!596126 (= e!340585 (= lt!270787 lt!270785))))

(declare-fun res!382094 () Bool)

(assert (=> start!54558 (=> (not res!382094) (not e!340588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54558 (= res!382094 (validMask!0 mask!3053))))

(assert (=> start!54558 e!340588))

(assert (=> start!54558 true))

(declare-fun array_inv!13525 (array!36981) Bool)

(assert (=> start!54558 (array_inv!13525 a!2986)))

(declare-fun b!596110 () Bool)

(declare-fun res!382098 () Bool)

(assert (=> b!596110 (=> (not res!382098) (not e!340587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36981 (_ BitVec 32)) Bool)

(assert (=> b!596110 (= res!382098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596127 () Bool)

(assert (=> b!596127 (= e!340582 true)))

(declare-fun lt!270781 () Bool)

(assert (=> b!596127 (= lt!270781 (contains!2949 Nil!11842 k!1786))))

(declare-fun b!596128 () Bool)

(declare-fun res!382102 () Bool)

(assert (=> b!596128 (=> (not res!382102) (not e!340587))))

(assert (=> b!596128 (= res!382102 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17751 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596129 () Bool)

(declare-fun res!382087 () Bool)

(assert (=> b!596129 (=> (not res!382087) (not e!340587))))

(declare-fun arrayNoDuplicates!0 (array!36981 (_ BitVec 32) List!11845) Bool)

(assert (=> b!596129 (= res!382087 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11842))))

(declare-fun b!596130 () Bool)

(declare-fun res!382096 () Bool)

(assert (=> b!596130 (=> (not res!382096) (not e!340588))))

(assert (=> b!596130 (= res!382096 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596131 () Bool)

(assert (=> b!596131 (= e!340584 e!340593)))

(declare-fun res!382093 () Bool)

(assert (=> b!596131 (=> res!382093 e!340593)))

(assert (=> b!596131 (= res!382093 (or (not (= (select (arr!17751 a!2986) j!136) lt!270788)) (not (= (select (arr!17751 a!2986) j!136) lt!270791)) (bvsge j!136 index!984)))))

(declare-fun b!596132 () Bool)

(declare-fun Unit!18739 () Unit!18736)

(assert (=> b!596132 (= e!340583 Unit!18739)))

(assert (= (and start!54558 res!382094) b!596119))

(assert (= (and b!596119 res!382103) b!596113))

(assert (= (and b!596113 res!382086) b!596115))

(assert (= (and b!596115 res!382088) b!596130))

(assert (= (and b!596130 res!382096) b!596112))

(assert (= (and b!596112 res!382099) b!596110))

(assert (= (and b!596110 res!382098) b!596129))

(assert (= (and b!596129 res!382087) b!596128))

(assert (= (and b!596128 res!382102) b!596114))

(assert (= (and b!596114 res!382105) b!596123))

(assert (= (and b!596123 res!382092) b!596111))

(assert (= (and b!596111 res!382095) b!596126))

(assert (= (and b!596111 c!67379) b!596118))

(assert (= (and b!596111 (not c!67379)) b!596132))

(assert (= (and b!596111 (not res!382089)) b!596117))

(assert (= (and b!596117 res!382100) b!596131))

(assert (= (and b!596131 (not res!382093)) b!596121))

(assert (= (and b!596121 res!382097) b!596122))

(assert (= (and b!596117 (not res!382101)) b!596116))

(assert (= (and b!596116 (not res!382104)) b!596125))

(assert (= (and b!596125 (not res!382106)) b!596120))

(assert (= (and b!596120 (not res!382091)) b!596124))

(assert (= (and b!596124 (not res!382090)) b!596127))

(declare-fun m!573669 () Bool)

(assert (=> b!596112 m!573669))

(declare-fun m!573671 () Bool)

(assert (=> b!596120 m!573671))

(declare-fun m!573673 () Bool)

(assert (=> b!596111 m!573673))

(declare-fun m!573675 () Bool)

(assert (=> b!596111 m!573675))

(declare-fun m!573677 () Bool)

(assert (=> b!596111 m!573677))

(declare-fun m!573679 () Bool)

(assert (=> b!596111 m!573679))

(declare-fun m!573681 () Bool)

(assert (=> b!596111 m!573681))

(declare-fun m!573683 () Bool)

(assert (=> b!596111 m!573683))

(declare-fun m!573685 () Bool)

(assert (=> b!596111 m!573685))

(assert (=> b!596111 m!573675))

(declare-fun m!573687 () Bool)

(assert (=> b!596111 m!573687))

(declare-fun m!573689 () Bool)

(assert (=> b!596123 m!573689))

(assert (=> b!596123 m!573675))

(assert (=> b!596123 m!573675))

(declare-fun m!573691 () Bool)

(assert (=> b!596123 m!573691))

(assert (=> b!596122 m!573675))

(assert (=> b!596122 m!573675))

(declare-fun m!573693 () Bool)

(assert (=> b!596122 m!573693))

(assert (=> b!596114 m!573677))

(declare-fun m!573695 () Bool)

(assert (=> b!596114 m!573695))

(declare-fun m!573697 () Bool)

(assert (=> b!596129 m!573697))

(declare-fun m!573699 () Bool)

(assert (=> b!596127 m!573699))

(assert (=> b!596131 m!573675))

(assert (=> b!596121 m!573675))

(assert (=> b!596121 m!573675))

(declare-fun m!573701 () Bool)

(assert (=> b!596121 m!573701))

(declare-fun m!573703 () Bool)

(assert (=> b!596125 m!573703))

(declare-fun m!573705 () Bool)

(assert (=> start!54558 m!573705))

(declare-fun m!573707 () Bool)

(assert (=> start!54558 m!573707))

(assert (=> b!596113 m!573675))

(assert (=> b!596113 m!573675))

(declare-fun m!573709 () Bool)

(assert (=> b!596113 m!573709))

(declare-fun m!573711 () Bool)

(assert (=> b!596128 m!573711))

(assert (=> b!596117 m!573675))

(assert (=> b!596117 m!573677))

(declare-fun m!573713 () Bool)

(assert (=> b!596117 m!573713))

(declare-fun m!573715 () Bool)

(assert (=> b!596110 m!573715))

(assert (=> b!596116 m!573675))

(assert (=> b!596116 m!573675))

(declare-fun m!573717 () Bool)

(assert (=> b!596116 m!573717))

(assert (=> b!596116 m!573675))

(declare-fun m!573719 () Bool)

(assert (=> b!596116 m!573719))

(declare-fun m!573721 () Bool)

(assert (=> b!596130 m!573721))

(declare-fun m!573723 () Bool)

(assert (=> b!596115 m!573723))

(declare-fun m!573725 () Bool)

(assert (=> b!596124 m!573725))

(push 1)

