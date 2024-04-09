; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56214 () Bool)

(assert start!56214)

(declare-fun b!622695 () Bool)

(declare-fun e!357180 () Bool)

(declare-fun e!357171 () Bool)

(assert (=> b!622695 (= e!357180 e!357171)))

(declare-fun res!401409 () Bool)

(assert (=> b!622695 (=> (not res!401409) (not e!357171))))

(declare-datatypes ((SeekEntryResult!6513 0))(
  ( (MissingZero!6513 (index!28335 (_ BitVec 32))) (Found!6513 (index!28336 (_ BitVec 32))) (Intermediate!6513 (undefined!7325 Bool) (index!28337 (_ BitVec 32)) (x!57130 (_ BitVec 32))) (Undefined!6513) (MissingVacant!6513 (index!28338 (_ BitVec 32))) )
))
(declare-fun lt!288737 () SeekEntryResult!6513)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!622695 (= res!401409 (or (= lt!288737 (MissingZero!6513 i!1108)) (= lt!288737 (MissingVacant!6513 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37647 0))(
  ( (array!37648 (arr!18066 (Array (_ BitVec 32) (_ BitVec 64))) (size!18430 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37647)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37647 (_ BitVec 32)) SeekEntryResult!6513)

(assert (=> b!622695 (= lt!288737 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!622696 () Bool)

(declare-fun e!357174 () Bool)

(declare-fun lt!288744 () array!37647)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622696 (= e!357174 (arrayContainsKey!0 lt!288744 (select (arr!18066 a!2986) j!136) index!984))))

(declare-fun e!357179 () Bool)

(declare-fun b!622698 () Bool)

(assert (=> b!622698 (= e!357179 (arrayContainsKey!0 lt!288744 (select (arr!18066 a!2986) j!136) index!984))))

(declare-fun b!622699 () Bool)

(declare-fun e!357181 () Bool)

(assert (=> b!622699 (= e!357171 e!357181)))

(declare-fun res!401407 () Bool)

(assert (=> b!622699 (=> (not res!401407) (not e!357181))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!622699 (= res!401407 (= (select (store (arr!18066 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622699 (= lt!288744 (array!37648 (store (arr!18066 a!2986) i!1108 k!1786) (size!18430 a!2986)))))

(declare-fun b!622700 () Bool)

(assert (=> b!622700 false))

(declare-datatypes ((Unit!20950 0))(
  ( (Unit!20951) )
))
(declare-fun lt!288754 () Unit!20950)

(declare-datatypes ((List!12160 0))(
  ( (Nil!12157) (Cons!12156 (h!13201 (_ BitVec 64)) (t!18396 List!12160)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37647 (_ BitVec 64) (_ BitVec 32) List!12160) Unit!20950)

(assert (=> b!622700 (= lt!288754 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288744 (select (arr!18066 a!2986) j!136) index!984 Nil!12157))))

(declare-fun arrayNoDuplicates!0 (array!37647 (_ BitVec 32) List!12160) Bool)

(assert (=> b!622700 (arrayNoDuplicates!0 lt!288744 index!984 Nil!12157)))

(declare-fun lt!288749 () Unit!20950)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37647 (_ BitVec 32) (_ BitVec 32)) Unit!20950)

(assert (=> b!622700 (= lt!288749 (lemmaNoDuplicateFromThenFromBigger!0 lt!288744 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622700 (arrayNoDuplicates!0 lt!288744 #b00000000000000000000000000000000 Nil!12157)))

(declare-fun lt!288746 () Unit!20950)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37647 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12160) Unit!20950)

(assert (=> b!622700 (= lt!288746 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12157))))

(assert (=> b!622700 (arrayContainsKey!0 lt!288744 (select (arr!18066 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288756 () Unit!20950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37647 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20950)

(assert (=> b!622700 (= lt!288756 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288744 (select (arr!18066 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!622700 e!357174))

(declare-fun res!401410 () Bool)

(assert (=> b!622700 (=> (not res!401410) (not e!357174))))

(assert (=> b!622700 (= res!401410 (arrayContainsKey!0 lt!288744 (select (arr!18066 a!2986) j!136) j!136))))

(declare-fun e!357177 () Unit!20950)

(declare-fun Unit!20952 () Unit!20950)

(assert (=> b!622700 (= e!357177 Unit!20952)))

(declare-fun b!622701 () Bool)

(declare-fun e!357169 () Unit!20950)

(declare-fun Unit!20953 () Unit!20950)

(assert (=> b!622701 (= e!357169 Unit!20953)))

(declare-fun b!622702 () Bool)

(declare-fun res!401420 () Bool)

(assert (=> b!622702 (=> (not res!401420) (not e!357180))))

(assert (=> b!622702 (= res!401420 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622703 () Bool)

(declare-fun res!401405 () Bool)

(assert (=> b!622703 (=> (not res!401405) (not e!357180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622703 (= res!401405 (validKeyInArray!0 (select (arr!18066 a!2986) j!136)))))

(declare-fun b!622704 () Bool)

(declare-fun e!357168 () Bool)

(assert (=> b!622704 (= e!357181 e!357168)))

(declare-fun res!401418 () Bool)

(assert (=> b!622704 (=> (not res!401418) (not e!357168))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!288738 () SeekEntryResult!6513)

(assert (=> b!622704 (= res!401418 (and (= lt!288738 (Found!6513 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18066 a!2986) index!984) (select (arr!18066 a!2986) j!136))) (not (= (select (arr!18066 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37647 (_ BitVec 32)) SeekEntryResult!6513)

(assert (=> b!622704 (= lt!288738 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18066 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622705 () Bool)

(declare-fun Unit!20954 () Unit!20950)

(assert (=> b!622705 (= e!357177 Unit!20954)))

(declare-fun b!622706 () Bool)

(declare-fun e!357175 () Unit!20950)

(declare-fun Unit!20955 () Unit!20950)

(assert (=> b!622706 (= e!357175 Unit!20955)))

(declare-fun b!622707 () Bool)

(declare-fun res!401415 () Bool)

(assert (=> b!622707 (=> (not res!401415) (not e!357180))))

(assert (=> b!622707 (= res!401415 (and (= (size!18430 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18430 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18430 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622708 () Bool)

(assert (=> b!622708 (= e!357168 (not true))))

(declare-fun lt!288748 () Unit!20950)

(assert (=> b!622708 (= lt!288748 e!357175)))

(declare-fun c!71013 () Bool)

(declare-fun lt!288751 () SeekEntryResult!6513)

(assert (=> b!622708 (= c!71013 (= lt!288751 (Found!6513 index!984)))))

(declare-fun lt!288753 () Unit!20950)

(declare-fun e!357172 () Unit!20950)

(assert (=> b!622708 (= lt!288753 e!357172)))

(declare-fun c!71014 () Bool)

(assert (=> b!622708 (= c!71014 (= lt!288751 Undefined!6513))))

(declare-fun lt!288742 () (_ BitVec 64))

(assert (=> b!622708 (= lt!288751 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288742 lt!288744 mask!3053))))

(declare-fun e!357173 () Bool)

(assert (=> b!622708 e!357173))

(declare-fun res!401417 () Bool)

(assert (=> b!622708 (=> (not res!401417) (not e!357173))))

(declare-fun lt!288743 () SeekEntryResult!6513)

(declare-fun lt!288741 () (_ BitVec 32))

(assert (=> b!622708 (= res!401417 (= lt!288743 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288741 vacantSpotIndex!68 lt!288742 lt!288744 mask!3053)))))

(assert (=> b!622708 (= lt!288743 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288741 vacantSpotIndex!68 (select (arr!18066 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622708 (= lt!288742 (select (store (arr!18066 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288747 () Unit!20950)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37647 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20950)

(assert (=> b!622708 (= lt!288747 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288741 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622708 (= lt!288741 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622709 () Bool)

(declare-fun res!401408 () Bool)

(assert (=> b!622709 (=> (not res!401408) (not e!357171))))

(assert (=> b!622709 (= res!401408 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18066 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622710 () Bool)

(assert (=> b!622710 (= e!357173 (= lt!288738 lt!288743))))

(declare-fun res!401416 () Bool)

(assert (=> start!56214 (=> (not res!401416) (not e!357180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56214 (= res!401416 (validMask!0 mask!3053))))

(assert (=> start!56214 e!357180))

(assert (=> start!56214 true))

(declare-fun array_inv!13840 (array!37647) Bool)

(assert (=> start!56214 (array_inv!13840 a!2986)))

(declare-fun b!622697 () Bool)

(declare-fun res!401406 () Bool)

(assert (=> b!622697 (= res!401406 (bvsge j!136 index!984))))

(declare-fun e!357178 () Bool)

(assert (=> b!622697 (=> res!401406 e!357178)))

(declare-fun e!357176 () Bool)

(assert (=> b!622697 (= e!357176 e!357178)))

(declare-fun b!622711 () Bool)

(declare-fun res!401411 () Bool)

(assert (=> b!622711 (=> (not res!401411) (not e!357171))))

(assert (=> b!622711 (= res!401411 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12157))))

(declare-fun b!622712 () Bool)

(declare-fun res!401414 () Bool)

(assert (=> b!622712 (= res!401414 (arrayContainsKey!0 lt!288744 (select (arr!18066 a!2986) j!136) j!136))))

(assert (=> b!622712 (=> (not res!401414) (not e!357179))))

(assert (=> b!622712 (= e!357178 e!357179)))

(declare-fun b!622713 () Bool)

(declare-fun res!401419 () Bool)

(assert (=> b!622713 (=> (not res!401419) (not e!357180))))

(assert (=> b!622713 (= res!401419 (validKeyInArray!0 k!1786))))

(declare-fun b!622714 () Bool)

(assert (=> b!622714 false))

(declare-fun lt!288755 () Unit!20950)

(assert (=> b!622714 (= lt!288755 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288744 (select (arr!18066 a!2986) j!136) j!136 Nil!12157))))

(assert (=> b!622714 (arrayNoDuplicates!0 lt!288744 j!136 Nil!12157)))

(declare-fun lt!288740 () Unit!20950)

(assert (=> b!622714 (= lt!288740 (lemmaNoDuplicateFromThenFromBigger!0 lt!288744 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622714 (arrayNoDuplicates!0 lt!288744 #b00000000000000000000000000000000 Nil!12157)))

(declare-fun lt!288739 () Unit!20950)

(assert (=> b!622714 (= lt!288739 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12157))))

(assert (=> b!622714 (arrayContainsKey!0 lt!288744 (select (arr!18066 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288745 () Unit!20950)

(assert (=> b!622714 (= lt!288745 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288744 (select (arr!18066 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20956 () Unit!20950)

(assert (=> b!622714 (= e!357169 Unit!20956)))

(declare-fun b!622715 () Bool)

(declare-fun Unit!20957 () Unit!20950)

(assert (=> b!622715 (= e!357175 Unit!20957)))

(declare-fun res!401412 () Bool)

(assert (=> b!622715 (= res!401412 (= (select (store (arr!18066 a!2986) i!1108 k!1786) index!984) (select (arr!18066 a!2986) j!136)))))

(assert (=> b!622715 (=> (not res!401412) (not e!357176))))

(assert (=> b!622715 e!357176))

(declare-fun c!71012 () Bool)

(assert (=> b!622715 (= c!71012 (bvslt j!136 index!984))))

(declare-fun lt!288752 () Unit!20950)

(assert (=> b!622715 (= lt!288752 e!357169)))

(declare-fun c!71015 () Bool)

(assert (=> b!622715 (= c!71015 (bvslt index!984 j!136))))

(declare-fun lt!288750 () Unit!20950)

(assert (=> b!622715 (= lt!288750 e!357177)))

(assert (=> b!622715 false))

(declare-fun b!622716 () Bool)

(declare-fun Unit!20958 () Unit!20950)

(assert (=> b!622716 (= e!357172 Unit!20958)))

(declare-fun b!622717 () Bool)

(declare-fun Unit!20959 () Unit!20950)

(assert (=> b!622717 (= e!357172 Unit!20959)))

(assert (=> b!622717 false))

(declare-fun b!622718 () Bool)

(declare-fun res!401413 () Bool)

(assert (=> b!622718 (=> (not res!401413) (not e!357171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37647 (_ BitVec 32)) Bool)

(assert (=> b!622718 (= res!401413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56214 res!401416) b!622707))

(assert (= (and b!622707 res!401415) b!622703))

(assert (= (and b!622703 res!401405) b!622713))

(assert (= (and b!622713 res!401419) b!622702))

(assert (= (and b!622702 res!401420) b!622695))

(assert (= (and b!622695 res!401409) b!622718))

(assert (= (and b!622718 res!401413) b!622711))

(assert (= (and b!622711 res!401411) b!622709))

(assert (= (and b!622709 res!401408) b!622699))

(assert (= (and b!622699 res!401407) b!622704))

(assert (= (and b!622704 res!401418) b!622708))

(assert (= (and b!622708 res!401417) b!622710))

(assert (= (and b!622708 c!71014) b!622717))

(assert (= (and b!622708 (not c!71014)) b!622716))

(assert (= (and b!622708 c!71013) b!622715))

(assert (= (and b!622708 (not c!71013)) b!622706))

(assert (= (and b!622715 res!401412) b!622697))

(assert (= (and b!622697 (not res!401406)) b!622712))

(assert (= (and b!622712 res!401414) b!622698))

(assert (= (and b!622715 c!71012) b!622714))

(assert (= (and b!622715 (not c!71012)) b!622701))

(assert (= (and b!622715 c!71015) b!622700))

(assert (= (and b!622715 (not c!71015)) b!622705))

(assert (= (and b!622700 res!401410) b!622696))

(declare-fun m!598599 () Bool)

(assert (=> b!622703 m!598599))

(assert (=> b!622703 m!598599))

(declare-fun m!598601 () Bool)

(assert (=> b!622703 m!598601))

(declare-fun m!598603 () Bool)

(assert (=> b!622702 m!598603))

(declare-fun m!598605 () Bool)

(assert (=> b!622713 m!598605))

(assert (=> b!622714 m!598599))

(declare-fun m!598607 () Bool)

(assert (=> b!622714 m!598607))

(assert (=> b!622714 m!598599))

(assert (=> b!622714 m!598599))

(declare-fun m!598609 () Bool)

(assert (=> b!622714 m!598609))

(declare-fun m!598611 () Bool)

(assert (=> b!622714 m!598611))

(assert (=> b!622714 m!598599))

(declare-fun m!598613 () Bool)

(assert (=> b!622714 m!598613))

(declare-fun m!598615 () Bool)

(assert (=> b!622714 m!598615))

(declare-fun m!598617 () Bool)

(assert (=> b!622714 m!598617))

(declare-fun m!598619 () Bool)

(assert (=> b!622714 m!598619))

(declare-fun m!598621 () Bool)

(assert (=> start!56214 m!598621))

(declare-fun m!598623 () Bool)

(assert (=> start!56214 m!598623))

(assert (=> b!622698 m!598599))

(assert (=> b!622698 m!598599))

(declare-fun m!598625 () Bool)

(assert (=> b!622698 m!598625))

(declare-fun m!598627 () Bool)

(assert (=> b!622715 m!598627))

(declare-fun m!598629 () Bool)

(assert (=> b!622715 m!598629))

(assert (=> b!622715 m!598599))

(assert (=> b!622696 m!598599))

(assert (=> b!622696 m!598599))

(assert (=> b!622696 m!598625))

(assert (=> b!622700 m!598599))

(declare-fun m!598631 () Bool)

(assert (=> b!622700 m!598631))

(assert (=> b!622700 m!598599))

(assert (=> b!622700 m!598599))

(declare-fun m!598633 () Bool)

(assert (=> b!622700 m!598633))

(assert (=> b!622700 m!598615))

(assert (=> b!622700 m!598619))

(assert (=> b!622700 m!598599))

(declare-fun m!598635 () Bool)

(assert (=> b!622700 m!598635))

(assert (=> b!622700 m!598599))

(declare-fun m!598637 () Bool)

(assert (=> b!622700 m!598637))

(declare-fun m!598639 () Bool)

(assert (=> b!622700 m!598639))

(declare-fun m!598641 () Bool)

(assert (=> b!622700 m!598641))

(assert (=> b!622708 m!598599))

(declare-fun m!598643 () Bool)

(assert (=> b!622708 m!598643))

(declare-fun m!598645 () Bool)

(assert (=> b!622708 m!598645))

(assert (=> b!622708 m!598599))

(assert (=> b!622708 m!598627))

(declare-fun m!598647 () Bool)

(assert (=> b!622708 m!598647))

(declare-fun m!598649 () Bool)

(assert (=> b!622708 m!598649))

(declare-fun m!598651 () Bool)

(assert (=> b!622708 m!598651))

(declare-fun m!598653 () Bool)

(assert (=> b!622708 m!598653))

(declare-fun m!598655 () Bool)

(assert (=> b!622704 m!598655))

(assert (=> b!622704 m!598599))

(assert (=> b!622704 m!598599))

(declare-fun m!598657 () Bool)

(assert (=> b!622704 m!598657))

(assert (=> b!622712 m!598599))

(assert (=> b!622712 m!598599))

(assert (=> b!622712 m!598631))

(declare-fun m!598659 () Bool)

(assert (=> b!622709 m!598659))

(assert (=> b!622699 m!598627))

(declare-fun m!598661 () Bool)

(assert (=> b!622699 m!598661))

(declare-fun m!598663 () Bool)

(assert (=> b!622695 m!598663))

(declare-fun m!598665 () Bool)

(assert (=> b!622718 m!598665))

(declare-fun m!598667 () Bool)

(assert (=> b!622711 m!598667))

(push 1)

