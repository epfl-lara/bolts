; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59614 () Bool)

(assert start!59614)

(declare-fun b!658585 () Bool)

(declare-fun res!427198 () Bool)

(declare-fun e!378357 () Bool)

(assert (=> b!658585 (=> (not res!427198) (not e!378357))))

(declare-datatypes ((array!38728 0))(
  ( (array!38729 (arr!18557 (Array (_ BitVec 32) (_ BitVec 64))) (size!18921 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38728)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658585 (= res!427198 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658586 () Bool)

(declare-fun e!378356 () Bool)

(declare-fun e!378360 () Bool)

(assert (=> b!658586 (= e!378356 e!378360)))

(declare-fun res!427196 () Bool)

(assert (=> b!658586 (=> (not res!427196) (not e!378360))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!658586 (= res!427196 (= (select (store (arr!18557 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!308117 () array!38728)

(assert (=> b!658586 (= lt!308117 (array!38729 (store (arr!18557 a!2986) i!1108 k!1786) (size!18921 a!2986)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!658587 () Bool)

(declare-fun e!378351 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!658587 (= e!378351 (arrayContainsKey!0 lt!308117 (select (arr!18557 a!2986) j!136) index!984))))

(declare-fun b!658588 () Bool)

(declare-datatypes ((Unit!22884 0))(
  ( (Unit!22885) )
))
(declare-fun e!378359 () Unit!22884)

(declare-fun Unit!22886 () Unit!22884)

(assert (=> b!658588 (= e!378359 Unit!22886)))

(assert (=> b!658588 false))

(declare-fun b!658589 () Bool)

(declare-fun e!378349 () Bool)

(assert (=> b!658589 (= e!378360 e!378349)))

(declare-fun res!427199 () Bool)

(assert (=> b!658589 (=> (not res!427199) (not e!378349))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7004 0))(
  ( (MissingZero!7004 (index!30380 (_ BitVec 32))) (Found!7004 (index!30381 (_ BitVec 32))) (Intermediate!7004 (undefined!7816 Bool) (index!30382 (_ BitVec 32)) (x!59192 (_ BitVec 32))) (Undefined!7004) (MissingVacant!7004 (index!30383 (_ BitVec 32))) )
))
(declare-fun lt!308119 () SeekEntryResult!7004)

(assert (=> b!658589 (= res!427199 (and (= lt!308119 (Found!7004 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18557 a!2986) index!984) (select (arr!18557 a!2986) j!136))) (not (= (select (arr!18557 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38728 (_ BitVec 32)) SeekEntryResult!7004)

(assert (=> b!658589 (= lt!308119 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18557 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658590 () Bool)

(declare-fun res!427197 () Bool)

(assert (=> b!658590 (=> (not res!427197) (not e!378357))))

(assert (=> b!658590 (= res!427197 (and (= (size!18921 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18921 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18921 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658591 () Bool)

(declare-fun e!378353 () Unit!22884)

(declare-fun Unit!22887 () Unit!22884)

(assert (=> b!658591 (= e!378353 Unit!22887)))

(declare-fun res!427205 () Bool)

(assert (=> start!59614 (=> (not res!427205) (not e!378357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59614 (= res!427205 (validMask!0 mask!3053))))

(assert (=> start!59614 e!378357))

(assert (=> start!59614 true))

(declare-fun array_inv!14331 (array!38728) Bool)

(assert (=> start!59614 (array_inv!14331 a!2986)))

(declare-fun b!658584 () Bool)

(declare-fun e!378348 () Unit!22884)

(declare-fun Unit!22888 () Unit!22884)

(assert (=> b!658584 (= e!378348 Unit!22888)))

(declare-fun b!658592 () Bool)

(assert (=> b!658592 (= e!378357 e!378356)))

(declare-fun res!427203 () Bool)

(assert (=> b!658592 (=> (not res!427203) (not e!378356))))

(declare-fun lt!308108 () SeekEntryResult!7004)

(assert (=> b!658592 (= res!427203 (or (= lt!308108 (MissingZero!7004 i!1108)) (= lt!308108 (MissingVacant!7004 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38728 (_ BitVec 32)) SeekEntryResult!7004)

(assert (=> b!658592 (= lt!308108 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658593 () Bool)

(declare-fun res!427190 () Bool)

(assert (=> b!658593 (=> (not res!427190) (not e!378357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658593 (= res!427190 (validKeyInArray!0 (select (arr!18557 a!2986) j!136)))))

(declare-fun b!658594 () Bool)

(declare-fun e!378361 () Unit!22884)

(declare-fun Unit!22889 () Unit!22884)

(assert (=> b!658594 (= e!378361 Unit!22889)))

(declare-fun res!427202 () Bool)

(assert (=> b!658594 (= res!427202 (= (select (store (arr!18557 a!2986) i!1108 k!1786) index!984) (select (arr!18557 a!2986) j!136)))))

(declare-fun e!378350 () Bool)

(assert (=> b!658594 (=> (not res!427202) (not e!378350))))

(assert (=> b!658594 e!378350))

(declare-fun c!76066 () Bool)

(assert (=> b!658594 (= c!76066 (bvslt j!136 index!984))))

(declare-fun lt!308127 () Unit!22884)

(assert (=> b!658594 (= lt!308127 e!378348)))

(declare-fun c!76064 () Bool)

(assert (=> b!658594 (= c!76064 (bvslt index!984 j!136))))

(declare-fun lt!308111 () Unit!22884)

(assert (=> b!658594 (= lt!308111 e!378353)))

(assert (=> b!658594 false))

(declare-fun b!658595 () Bool)

(declare-fun res!427201 () Bool)

(assert (=> b!658595 (=> (not res!427201) (not e!378356))))

(declare-datatypes ((List!12651 0))(
  ( (Nil!12648) (Cons!12647 (h!13692 (_ BitVec 64)) (t!18887 List!12651)) )
))
(declare-fun arrayNoDuplicates!0 (array!38728 (_ BitVec 32) List!12651) Bool)

(assert (=> b!658595 (= res!427201 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12648))))

(declare-fun e!378354 () Bool)

(declare-fun b!658596 () Bool)

(assert (=> b!658596 (= e!378354 (arrayContainsKey!0 lt!308117 (select (arr!18557 a!2986) j!136) index!984))))

(declare-fun b!658597 () Bool)

(declare-fun res!427193 () Bool)

(assert (=> b!658597 (=> (not res!427193) (not e!378357))))

(assert (=> b!658597 (= res!427193 (validKeyInArray!0 k!1786))))

(declare-fun b!658598 () Bool)

(declare-fun Unit!22890 () Unit!22884)

(assert (=> b!658598 (= e!378361 Unit!22890)))

(declare-fun b!658599 () Bool)

(assert (=> b!658599 false))

(declare-fun lt!308116 () Unit!22884)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38728 (_ BitVec 64) (_ BitVec 32) List!12651) Unit!22884)

(assert (=> b!658599 (= lt!308116 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308117 (select (arr!18557 a!2986) j!136) j!136 Nil!12648))))

(assert (=> b!658599 (arrayNoDuplicates!0 lt!308117 j!136 Nil!12648)))

(declare-fun lt!308126 () Unit!22884)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38728 (_ BitVec 32) (_ BitVec 32)) Unit!22884)

(assert (=> b!658599 (= lt!308126 (lemmaNoDuplicateFromThenFromBigger!0 lt!308117 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658599 (arrayNoDuplicates!0 lt!308117 #b00000000000000000000000000000000 Nil!12648)))

(declare-fun lt!308110 () Unit!22884)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38728 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12651) Unit!22884)

(assert (=> b!658599 (= lt!308110 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12648))))

(assert (=> b!658599 (arrayContainsKey!0 lt!308117 (select (arr!18557 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308120 () Unit!22884)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38728 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22884)

(assert (=> b!658599 (= lt!308120 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308117 (select (arr!18557 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22891 () Unit!22884)

(assert (=> b!658599 (= e!378348 Unit!22891)))

(declare-fun b!658600 () Bool)

(declare-fun res!427192 () Bool)

(assert (=> b!658600 (= res!427192 (bvsge j!136 index!984))))

(declare-fun e!378355 () Bool)

(assert (=> b!658600 (=> res!427192 e!378355)))

(assert (=> b!658600 (= e!378350 e!378355)))

(declare-fun b!658601 () Bool)

(declare-fun res!427195 () Bool)

(assert (=> b!658601 (=> (not res!427195) (not e!378356))))

(assert (=> b!658601 (= res!427195 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18557 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658602 () Bool)

(declare-fun res!427191 () Bool)

(assert (=> b!658602 (=> (not res!427191) (not e!378356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38728 (_ BitVec 32)) Bool)

(assert (=> b!658602 (= res!427191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658603 () Bool)

(assert (=> b!658603 false))

(declare-fun lt!308121 () Unit!22884)

(assert (=> b!658603 (= lt!308121 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308117 (select (arr!18557 a!2986) j!136) index!984 Nil!12648))))

(assert (=> b!658603 (arrayNoDuplicates!0 lt!308117 index!984 Nil!12648)))

(declare-fun lt!308115 () Unit!22884)

(assert (=> b!658603 (= lt!308115 (lemmaNoDuplicateFromThenFromBigger!0 lt!308117 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658603 (arrayNoDuplicates!0 lt!308117 #b00000000000000000000000000000000 Nil!12648)))

(declare-fun lt!308123 () Unit!22884)

(assert (=> b!658603 (= lt!308123 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12648))))

(assert (=> b!658603 (arrayContainsKey!0 lt!308117 (select (arr!18557 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308112 () Unit!22884)

(assert (=> b!658603 (= lt!308112 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308117 (select (arr!18557 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!658603 e!378351))

(declare-fun res!427204 () Bool)

(assert (=> b!658603 (=> (not res!427204) (not e!378351))))

(assert (=> b!658603 (= res!427204 (arrayContainsKey!0 lt!308117 (select (arr!18557 a!2986) j!136) j!136))))

(declare-fun Unit!22892 () Unit!22884)

(assert (=> b!658603 (= e!378353 Unit!22892)))

(declare-fun b!658604 () Bool)

(declare-fun Unit!22893 () Unit!22884)

(assert (=> b!658604 (= e!378359 Unit!22893)))

(declare-fun b!658605 () Bool)

(declare-fun e!378352 () Bool)

(declare-fun lt!308122 () SeekEntryResult!7004)

(assert (=> b!658605 (= e!378352 (= lt!308119 lt!308122))))

(declare-fun b!658606 () Bool)

(declare-fun res!427194 () Bool)

(assert (=> b!658606 (= res!427194 (arrayContainsKey!0 lt!308117 (select (arr!18557 a!2986) j!136) j!136))))

(assert (=> b!658606 (=> (not res!427194) (not e!378354))))

(assert (=> b!658606 (= e!378355 e!378354)))

(declare-fun b!658607 () Bool)

(assert (=> b!658607 (= e!378349 (not true))))

(declare-fun lt!308124 () Unit!22884)

(assert (=> b!658607 (= lt!308124 e!378361)))

(declare-fun c!76065 () Bool)

(declare-fun lt!308113 () SeekEntryResult!7004)

(assert (=> b!658607 (= c!76065 (= lt!308113 (Found!7004 index!984)))))

(declare-fun lt!308114 () Unit!22884)

(assert (=> b!658607 (= lt!308114 e!378359)))

(declare-fun c!76067 () Bool)

(assert (=> b!658607 (= c!76067 (= lt!308113 Undefined!7004))))

(declare-fun lt!308118 () (_ BitVec 64))

(assert (=> b!658607 (= lt!308113 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308118 lt!308117 mask!3053))))

(assert (=> b!658607 e!378352))

(declare-fun res!427200 () Bool)

(assert (=> b!658607 (=> (not res!427200) (not e!378352))))

(declare-fun lt!308109 () (_ BitVec 32))

(assert (=> b!658607 (= res!427200 (= lt!308122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308109 vacantSpotIndex!68 lt!308118 lt!308117 mask!3053)))))

(assert (=> b!658607 (= lt!308122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308109 vacantSpotIndex!68 (select (arr!18557 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658607 (= lt!308118 (select (store (arr!18557 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!308125 () Unit!22884)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38728 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22884)

(assert (=> b!658607 (= lt!308125 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308109 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658607 (= lt!308109 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!59614 res!427205) b!658590))

(assert (= (and b!658590 res!427197) b!658593))

(assert (= (and b!658593 res!427190) b!658597))

(assert (= (and b!658597 res!427193) b!658585))

(assert (= (and b!658585 res!427198) b!658592))

(assert (= (and b!658592 res!427203) b!658602))

(assert (= (and b!658602 res!427191) b!658595))

(assert (= (and b!658595 res!427201) b!658601))

(assert (= (and b!658601 res!427195) b!658586))

(assert (= (and b!658586 res!427196) b!658589))

(assert (= (and b!658589 res!427199) b!658607))

(assert (= (and b!658607 res!427200) b!658605))

(assert (= (and b!658607 c!76067) b!658588))

(assert (= (and b!658607 (not c!76067)) b!658604))

(assert (= (and b!658607 c!76065) b!658594))

(assert (= (and b!658607 (not c!76065)) b!658598))

(assert (= (and b!658594 res!427202) b!658600))

(assert (= (and b!658600 (not res!427192)) b!658606))

(assert (= (and b!658606 res!427194) b!658596))

(assert (= (and b!658594 c!76066) b!658599))

(assert (= (and b!658594 (not c!76066)) b!658584))

(assert (= (and b!658594 c!76064) b!658603))

(assert (= (and b!658594 (not c!76064)) b!658591))

(assert (= (and b!658603 res!427204) b!658587))

(declare-fun m!631631 () Bool)

(assert (=> start!59614 m!631631))

(declare-fun m!631633 () Bool)

(assert (=> start!59614 m!631633))

(declare-fun m!631635 () Bool)

(assert (=> b!658606 m!631635))

(assert (=> b!658606 m!631635))

(declare-fun m!631637 () Bool)

(assert (=> b!658606 m!631637))

(declare-fun m!631639 () Bool)

(assert (=> b!658592 m!631639))

(declare-fun m!631641 () Bool)

(assert (=> b!658603 m!631641))

(declare-fun m!631643 () Bool)

(assert (=> b!658603 m!631643))

(assert (=> b!658603 m!631635))

(assert (=> b!658603 m!631635))

(declare-fun m!631645 () Bool)

(assert (=> b!658603 m!631645))

(assert (=> b!658603 m!631635))

(declare-fun m!631647 () Bool)

(assert (=> b!658603 m!631647))

(assert (=> b!658603 m!631635))

(assert (=> b!658603 m!631637))

(assert (=> b!658603 m!631635))

(declare-fun m!631649 () Bool)

(assert (=> b!658603 m!631649))

(declare-fun m!631651 () Bool)

(assert (=> b!658603 m!631651))

(declare-fun m!631653 () Bool)

(assert (=> b!658603 m!631653))

(declare-fun m!631655 () Bool)

(assert (=> b!658601 m!631655))

(declare-fun m!631657 () Bool)

(assert (=> b!658597 m!631657))

(assert (=> b!658593 m!631635))

(assert (=> b!658593 m!631635))

(declare-fun m!631659 () Bool)

(assert (=> b!658593 m!631659))

(declare-fun m!631661 () Bool)

(assert (=> b!658607 m!631661))

(declare-fun m!631663 () Bool)

(assert (=> b!658607 m!631663))

(declare-fun m!631665 () Bool)

(assert (=> b!658607 m!631665))

(assert (=> b!658607 m!631635))

(declare-fun m!631667 () Bool)

(assert (=> b!658607 m!631667))

(declare-fun m!631669 () Bool)

(assert (=> b!658607 m!631669))

(declare-fun m!631671 () Bool)

(assert (=> b!658607 m!631671))

(assert (=> b!658607 m!631635))

(declare-fun m!631673 () Bool)

(assert (=> b!658607 m!631673))

(declare-fun m!631675 () Bool)

(assert (=> b!658585 m!631675))

(assert (=> b!658587 m!631635))

(assert (=> b!658587 m!631635))

(declare-fun m!631677 () Bool)

(assert (=> b!658587 m!631677))

(declare-fun m!631679 () Bool)

(assert (=> b!658595 m!631679))

(assert (=> b!658596 m!631635))

(assert (=> b!658596 m!631635))

(assert (=> b!658596 m!631677))

(declare-fun m!631681 () Bool)

(assert (=> b!658589 m!631681))

(assert (=> b!658589 m!631635))

(assert (=> b!658589 m!631635))

(declare-fun m!631683 () Bool)

(assert (=> b!658589 m!631683))

(assert (=> b!658586 m!631667))

(declare-fun m!631685 () Bool)

(assert (=> b!658586 m!631685))

(assert (=> b!658599 m!631641))

(declare-fun m!631687 () Bool)

(assert (=> b!658599 m!631687))

(declare-fun m!631689 () Bool)

(assert (=> b!658599 m!631689))

(assert (=> b!658599 m!631653))

(assert (=> b!658599 m!631635))

(assert (=> b!658599 m!631635))

(declare-fun m!631691 () Bool)

(assert (=> b!658599 m!631691))

(assert (=> b!658599 m!631635))

(declare-fun m!631693 () Bool)

(assert (=> b!658599 m!631693))

(assert (=> b!658599 m!631635))

(declare-fun m!631695 () Bool)

(assert (=> b!658599 m!631695))

(declare-fun m!631697 () Bool)

(assert (=> b!658602 m!631697))

(assert (=> b!658594 m!631667))

(declare-fun m!631699 () Bool)

(assert (=> b!658594 m!631699))

(assert (=> b!658594 m!631635))

(push 1)

