; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56142 () Bool)

(assert start!56142)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!399689 () Bool)

(declare-fun b!620103 () Bool)

(declare-datatypes ((array!37575 0))(
  ( (array!37576 (arr!18030 (Array (_ BitVec 32) (_ BitVec 64))) (size!18394 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37575)

(declare-fun lt!286582 () array!37575)

(declare-fun arrayContainsKey!0 (array!37575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620103 (= res!399689 (arrayContainsKey!0 lt!286582 (select (arr!18030 a!2986) j!136) j!136))))

(declare-fun e!355664 () Bool)

(assert (=> b!620103 (=> (not res!399689) (not e!355664))))

(declare-fun e!355665 () Bool)

(assert (=> b!620103 (= e!355665 e!355664)))

(declare-fun b!620104 () Bool)

(declare-datatypes ((Unit!20590 0))(
  ( (Unit!20591) )
))
(declare-fun e!355658 () Unit!20590)

(declare-fun Unit!20592 () Unit!20590)

(assert (=> b!620104 (= e!355658 Unit!20592)))

(declare-fun res!399678 () Bool)

(declare-fun e!355660 () Bool)

(assert (=> start!56142 (=> (not res!399678) (not e!355660))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56142 (= res!399678 (validMask!0 mask!3053))))

(assert (=> start!56142 e!355660))

(assert (=> start!56142 true))

(declare-fun array_inv!13804 (array!37575) Bool)

(assert (=> start!56142 (array_inv!13804 a!2986)))

(declare-fun b!620105 () Bool)

(assert (=> b!620105 false))

(declare-fun lt!286592 () Unit!20590)

(declare-datatypes ((List!12124 0))(
  ( (Nil!12121) (Cons!12120 (h!13165 (_ BitVec 64)) (t!18360 List!12124)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37575 (_ BitVec 64) (_ BitVec 32) List!12124) Unit!20590)

(assert (=> b!620105 (= lt!286592 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286582 (select (arr!18030 a!2986) j!136) j!136 Nil!12121))))

(declare-fun arrayNoDuplicates!0 (array!37575 (_ BitVec 32) List!12124) Bool)

(assert (=> b!620105 (arrayNoDuplicates!0 lt!286582 j!136 Nil!12121)))

(declare-fun lt!286589 () Unit!20590)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37575 (_ BitVec 32) (_ BitVec 32)) Unit!20590)

(assert (=> b!620105 (= lt!286589 (lemmaNoDuplicateFromThenFromBigger!0 lt!286582 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620105 (arrayNoDuplicates!0 lt!286582 #b00000000000000000000000000000000 Nil!12121)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!286588 () Unit!20590)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37575 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12124) Unit!20590)

(assert (=> b!620105 (= lt!286588 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12121))))

(assert (=> b!620105 (arrayContainsKey!0 lt!286582 (select (arr!18030 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286591 () Unit!20590)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37575 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20590)

(assert (=> b!620105 (= lt!286591 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286582 (select (arr!18030 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355659 () Unit!20590)

(declare-fun Unit!20593 () Unit!20590)

(assert (=> b!620105 (= e!355659 Unit!20593)))

(declare-fun b!620106 () Bool)

(declare-fun res!399683 () Bool)

(declare-fun e!355669 () Bool)

(assert (=> b!620106 (=> (not res!399683) (not e!355669))))

(assert (=> b!620106 (= res!399683 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12121))))

(declare-fun b!620107 () Bool)

(declare-fun res!399685 () Bool)

(assert (=> b!620107 (=> (not res!399685) (not e!355669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37575 (_ BitVec 32)) Bool)

(assert (=> b!620107 (= res!399685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620108 () Bool)

(assert (=> b!620108 (= e!355664 (arrayContainsKey!0 lt!286582 (select (arr!18030 a!2986) j!136) index!984))))

(declare-fun b!620109 () Bool)

(declare-fun res!399679 () Bool)

(assert (=> b!620109 (=> (not res!399679) (not e!355660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620109 (= res!399679 (validKeyInArray!0 (select (arr!18030 a!2986) j!136)))))

(declare-fun b!620110 () Bool)

(declare-fun res!399691 () Bool)

(assert (=> b!620110 (=> (not res!399691) (not e!355669))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620110 (= res!399691 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18030 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!355666 () Bool)

(declare-datatypes ((SeekEntryResult!6477 0))(
  ( (MissingZero!6477 (index!28191 (_ BitVec 32))) (Found!6477 (index!28192 (_ BitVec 32))) (Intermediate!6477 (undefined!7289 Bool) (index!28193 (_ BitVec 32)) (x!56998 (_ BitVec 32))) (Undefined!6477) (MissingVacant!6477 (index!28194 (_ BitVec 32))) )
))
(declare-fun lt!286577 () SeekEntryResult!6477)

(declare-fun b!620111 () Bool)

(assert (=> b!620111 (= e!355666 (not (or (= lt!286577 (MissingVacant!6477 vacantSpotIndex!68)) (bvsge mask!3053 #b00000000000000000000000000000000))))))

(declare-fun lt!286578 () Unit!20590)

(assert (=> b!620111 (= lt!286578 e!355658)))

(declare-fun c!70583 () Bool)

(assert (=> b!620111 (= c!70583 (= lt!286577 (Found!6477 index!984)))))

(declare-fun lt!286594 () Unit!20590)

(declare-fun e!355661 () Unit!20590)

(assert (=> b!620111 (= lt!286594 e!355661)))

(declare-fun c!70580 () Bool)

(assert (=> b!620111 (= c!70580 (= lt!286577 Undefined!6477))))

(declare-fun lt!286590 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37575 (_ BitVec 32)) SeekEntryResult!6477)

(assert (=> b!620111 (= lt!286577 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286590 lt!286582 mask!3053))))

(declare-fun e!355662 () Bool)

(assert (=> b!620111 e!355662))

(declare-fun res!399690 () Bool)

(assert (=> b!620111 (=> (not res!399690) (not e!355662))))

(declare-fun lt!286581 () (_ BitVec 32))

(declare-fun lt!286586 () SeekEntryResult!6477)

(assert (=> b!620111 (= res!399690 (= lt!286586 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286581 vacantSpotIndex!68 lt!286590 lt!286582 mask!3053)))))

(assert (=> b!620111 (= lt!286586 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286581 vacantSpotIndex!68 (select (arr!18030 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620111 (= lt!286590 (select (store (arr!18030 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286587 () Unit!20590)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37575 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20590)

(assert (=> b!620111 (= lt!286587 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286581 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620111 (= lt!286581 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620112 () Bool)

(declare-fun res!399686 () Bool)

(assert (=> b!620112 (=> (not res!399686) (not e!355660))))

(assert (=> b!620112 (= res!399686 (and (= (size!18394 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18394 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18394 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!355667 () Bool)

(declare-fun b!620113 () Bool)

(assert (=> b!620113 (= e!355667 (arrayContainsKey!0 lt!286582 (select (arr!18030 a!2986) j!136) index!984))))

(declare-fun b!620114 () Bool)

(declare-fun lt!286580 () SeekEntryResult!6477)

(assert (=> b!620114 (= e!355662 (= lt!286580 lt!286586))))

(declare-fun b!620115 () Bool)

(declare-fun res!399682 () Bool)

(assert (=> b!620115 (=> (not res!399682) (not e!355660))))

(assert (=> b!620115 (= res!399682 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620116 () Bool)

(declare-fun e!355668 () Unit!20590)

(declare-fun Unit!20594 () Unit!20590)

(assert (=> b!620116 (= e!355668 Unit!20594)))

(declare-fun b!620117 () Bool)

(declare-fun e!355657 () Bool)

(assert (=> b!620117 (= e!355657 e!355666)))

(declare-fun res!399688 () Bool)

(assert (=> b!620117 (=> (not res!399688) (not e!355666))))

(assert (=> b!620117 (= res!399688 (and (= lt!286580 (Found!6477 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18030 a!2986) index!984) (select (arr!18030 a!2986) j!136))) (not (= (select (arr!18030 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!620117 (= lt!286580 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18030 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620118 () Bool)

(declare-fun res!399684 () Bool)

(assert (=> b!620118 (=> (not res!399684) (not e!355660))))

(assert (=> b!620118 (= res!399684 (validKeyInArray!0 k!1786))))

(declare-fun b!620119 () Bool)

(declare-fun Unit!20595 () Unit!20590)

(assert (=> b!620119 (= e!355661 Unit!20595)))

(assert (=> b!620119 false))

(declare-fun b!620120 () Bool)

(declare-fun res!399681 () Bool)

(assert (=> b!620120 (= res!399681 (bvsge j!136 index!984))))

(assert (=> b!620120 (=> res!399681 e!355665)))

(declare-fun e!355663 () Bool)

(assert (=> b!620120 (= e!355663 e!355665)))

(declare-fun b!620121 () Bool)

(declare-fun Unit!20596 () Unit!20590)

(assert (=> b!620121 (= e!355661 Unit!20596)))

(declare-fun b!620122 () Bool)

(assert (=> b!620122 (= e!355669 e!355657)))

(declare-fun res!399680 () Bool)

(assert (=> b!620122 (=> (not res!399680) (not e!355657))))

(assert (=> b!620122 (= res!399680 (= (select (store (arr!18030 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620122 (= lt!286582 (array!37576 (store (arr!18030 a!2986) i!1108 k!1786) (size!18394 a!2986)))))

(declare-fun b!620123 () Bool)

(declare-fun Unit!20597 () Unit!20590)

(assert (=> b!620123 (= e!355659 Unit!20597)))

(declare-fun b!620124 () Bool)

(assert (=> b!620124 false))

(declare-fun lt!286595 () Unit!20590)

(assert (=> b!620124 (= lt!286595 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286582 (select (arr!18030 a!2986) j!136) index!984 Nil!12121))))

(assert (=> b!620124 (arrayNoDuplicates!0 lt!286582 index!984 Nil!12121)))

(declare-fun lt!286583 () Unit!20590)

(assert (=> b!620124 (= lt!286583 (lemmaNoDuplicateFromThenFromBigger!0 lt!286582 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620124 (arrayNoDuplicates!0 lt!286582 #b00000000000000000000000000000000 Nil!12121)))

(declare-fun lt!286579 () Unit!20590)

(assert (=> b!620124 (= lt!286579 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12121))))

(assert (=> b!620124 (arrayContainsKey!0 lt!286582 (select (arr!18030 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286585 () Unit!20590)

(assert (=> b!620124 (= lt!286585 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286582 (select (arr!18030 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!620124 e!355667))

(declare-fun res!399692 () Bool)

(assert (=> b!620124 (=> (not res!399692) (not e!355667))))

(assert (=> b!620124 (= res!399692 (arrayContainsKey!0 lt!286582 (select (arr!18030 a!2986) j!136) j!136))))

(declare-fun Unit!20598 () Unit!20590)

(assert (=> b!620124 (= e!355668 Unit!20598)))

(declare-fun b!620125 () Bool)

(declare-fun Unit!20599 () Unit!20590)

(assert (=> b!620125 (= e!355658 Unit!20599)))

(declare-fun res!399687 () Bool)

(assert (=> b!620125 (= res!399687 (= (select (store (arr!18030 a!2986) i!1108 k!1786) index!984) (select (arr!18030 a!2986) j!136)))))

(assert (=> b!620125 (=> (not res!399687) (not e!355663))))

(assert (=> b!620125 e!355663))

(declare-fun c!70582 () Bool)

(assert (=> b!620125 (= c!70582 (bvslt j!136 index!984))))

(declare-fun lt!286584 () Unit!20590)

(assert (=> b!620125 (= lt!286584 e!355659)))

(declare-fun c!70581 () Bool)

(assert (=> b!620125 (= c!70581 (bvslt index!984 j!136))))

(declare-fun lt!286596 () Unit!20590)

(assert (=> b!620125 (= lt!286596 e!355668)))

(assert (=> b!620125 false))

(declare-fun b!620126 () Bool)

(assert (=> b!620126 (= e!355660 e!355669)))

(declare-fun res!399677 () Bool)

(assert (=> b!620126 (=> (not res!399677) (not e!355669))))

(declare-fun lt!286593 () SeekEntryResult!6477)

(assert (=> b!620126 (= res!399677 (or (= lt!286593 (MissingZero!6477 i!1108)) (= lt!286593 (MissingVacant!6477 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37575 (_ BitVec 32)) SeekEntryResult!6477)

(assert (=> b!620126 (= lt!286593 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56142 res!399678) b!620112))

(assert (= (and b!620112 res!399686) b!620109))

(assert (= (and b!620109 res!399679) b!620118))

(assert (= (and b!620118 res!399684) b!620115))

(assert (= (and b!620115 res!399682) b!620126))

(assert (= (and b!620126 res!399677) b!620107))

(assert (= (and b!620107 res!399685) b!620106))

(assert (= (and b!620106 res!399683) b!620110))

(assert (= (and b!620110 res!399691) b!620122))

(assert (= (and b!620122 res!399680) b!620117))

(assert (= (and b!620117 res!399688) b!620111))

(assert (= (and b!620111 res!399690) b!620114))

(assert (= (and b!620111 c!70580) b!620119))

(assert (= (and b!620111 (not c!70580)) b!620121))

(assert (= (and b!620111 c!70583) b!620125))

(assert (= (and b!620111 (not c!70583)) b!620104))

(assert (= (and b!620125 res!399687) b!620120))

(assert (= (and b!620120 (not res!399681)) b!620103))

(assert (= (and b!620103 res!399689) b!620108))

(assert (= (and b!620125 c!70582) b!620105))

(assert (= (and b!620125 (not c!70582)) b!620123))

(assert (= (and b!620125 c!70581) b!620124))

(assert (= (and b!620125 (not c!70581)) b!620116))

(assert (= (and b!620124 res!399692) b!620113))

(declare-fun m!596079 () Bool)

(assert (=> b!620115 m!596079))

(declare-fun m!596081 () Bool)

(assert (=> b!620118 m!596081))

(declare-fun m!596083 () Bool)

(assert (=> b!620106 m!596083))

(declare-fun m!596085 () Bool)

(assert (=> b!620113 m!596085))

(assert (=> b!620113 m!596085))

(declare-fun m!596087 () Bool)

(assert (=> b!620113 m!596087))

(declare-fun m!596089 () Bool)

(assert (=> b!620122 m!596089))

(declare-fun m!596091 () Bool)

(assert (=> b!620122 m!596091))

(assert (=> b!620109 m!596085))

(assert (=> b!620109 m!596085))

(declare-fun m!596093 () Bool)

(assert (=> b!620109 m!596093))

(declare-fun m!596095 () Bool)

(assert (=> b!620110 m!596095))

(declare-fun m!596097 () Bool)

(assert (=> b!620111 m!596097))

(declare-fun m!596099 () Bool)

(assert (=> b!620111 m!596099))

(assert (=> b!620111 m!596085))

(assert (=> b!620111 m!596089))

(assert (=> b!620111 m!596085))

(declare-fun m!596101 () Bool)

(assert (=> b!620111 m!596101))

(declare-fun m!596103 () Bool)

(assert (=> b!620111 m!596103))

(declare-fun m!596105 () Bool)

(assert (=> b!620111 m!596105))

(declare-fun m!596107 () Bool)

(assert (=> b!620111 m!596107))

(assert (=> b!620108 m!596085))

(assert (=> b!620108 m!596085))

(assert (=> b!620108 m!596087))

(declare-fun m!596109 () Bool)

(assert (=> b!620117 m!596109))

(assert (=> b!620117 m!596085))

(assert (=> b!620117 m!596085))

(declare-fun m!596111 () Bool)

(assert (=> b!620117 m!596111))

(assert (=> b!620125 m!596089))

(declare-fun m!596113 () Bool)

(assert (=> b!620125 m!596113))

(assert (=> b!620125 m!596085))

(declare-fun m!596115 () Bool)

(assert (=> b!620107 m!596115))

(declare-fun m!596117 () Bool)

(assert (=> b!620126 m!596117))

(assert (=> b!620124 m!596085))

(declare-fun m!596119 () Bool)

(assert (=> b!620124 m!596119))

(assert (=> b!620124 m!596085))

(assert (=> b!620124 m!596085))

(declare-fun m!596121 () Bool)

(assert (=> b!620124 m!596121))

(declare-fun m!596123 () Bool)

(assert (=> b!620124 m!596123))

(declare-fun m!596125 () Bool)

(assert (=> b!620124 m!596125))

(assert (=> b!620124 m!596085))

(declare-fun m!596127 () Bool)

(assert (=> b!620124 m!596127))

(declare-fun m!596129 () Bool)

(assert (=> b!620124 m!596129))

(declare-fun m!596131 () Bool)

(assert (=> b!620124 m!596131))

(assert (=> b!620124 m!596085))

(declare-fun m!596133 () Bool)

(assert (=> b!620124 m!596133))

(declare-fun m!596135 () Bool)

(assert (=> start!56142 m!596135))

(declare-fun m!596137 () Bool)

(assert (=> start!56142 m!596137))

(declare-fun m!596139 () Bool)

(assert (=> b!620105 m!596139))

(declare-fun m!596141 () Bool)

(assert (=> b!620105 m!596141))

(assert (=> b!620105 m!596085))

(assert (=> b!620105 m!596085))

(declare-fun m!596143 () Bool)

(assert (=> b!620105 m!596143))

(assert (=> b!620105 m!596085))

(declare-fun m!596145 () Bool)

(assert (=> b!620105 m!596145))

(assert (=> b!620105 m!596085))

(declare-fun m!596147 () Bool)

(assert (=> b!620105 m!596147))

(assert (=> b!620105 m!596131))

(assert (=> b!620105 m!596125))

(assert (=> b!620103 m!596085))

(assert (=> b!620103 m!596085))

(assert (=> b!620103 m!596127))

(push 1)

