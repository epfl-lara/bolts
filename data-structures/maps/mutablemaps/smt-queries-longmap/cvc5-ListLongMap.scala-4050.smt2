; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55350 () Bool)

(assert start!55350)

(declare-fun b!605637 () Bool)

(declare-fun res!389202 () Bool)

(declare-fun e!346680 () Bool)

(assert (=> b!605637 (=> (not res!389202) (not e!346680))))

(declare-datatypes ((array!37224 0))(
  ( (array!37225 (arr!17862 (Array (_ BitVec 32) (_ BitVec 64))) (size!18226 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37224)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!605637 (= res!389202 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!605638 () Bool)

(declare-fun e!346681 () Bool)

(declare-fun e!346691 () Bool)

(assert (=> b!605638 (= e!346681 e!346691)))

(declare-fun res!389186 () Bool)

(assert (=> b!605638 (=> res!389186 e!346691)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!276434 () (_ BitVec 64))

(declare-fun lt!276425 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!605638 (= res!389186 (or (not (= (select (arr!17862 a!2986) j!136) lt!276425)) (not (= (select (arr!17862 a!2986) j!136) lt!276434)) (bvsge j!136 index!984)))))

(declare-fun b!605639 () Bool)

(declare-fun e!346682 () Bool)

(declare-fun e!346688 () Bool)

(assert (=> b!605639 (= e!346682 e!346688)))

(declare-fun res!389194 () Bool)

(assert (=> b!605639 (=> res!389194 e!346688)))

(assert (=> b!605639 (= res!389194 (or (not (= (select (arr!17862 a!2986) j!136) lt!276425)) (not (= (select (arr!17862 a!2986) j!136) lt!276434))))))

(assert (=> b!605639 e!346681))

(declare-fun res!389203 () Bool)

(assert (=> b!605639 (=> (not res!389203) (not e!346681))))

(assert (=> b!605639 (= res!389203 (= lt!276434 (select (arr!17862 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!605639 (= lt!276434 (select (store (arr!17862 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!389204 () Bool)

(assert (=> start!55350 (=> (not res!389204) (not e!346680))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55350 (= res!389204 (validMask!0 mask!3053))))

(assert (=> start!55350 e!346680))

(assert (=> start!55350 true))

(declare-fun array_inv!13636 (array!37224) Bool)

(assert (=> start!55350 (array_inv!13636 a!2986)))

(declare-fun e!346685 () Bool)

(declare-fun lt!276428 () array!37224)

(declare-fun b!605640 () Bool)

(assert (=> b!605640 (= e!346685 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) index!984))))

(declare-fun b!605641 () Bool)

(declare-fun e!346692 () Bool)

(assert (=> b!605641 (= e!346692 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) index!984))))

(declare-fun b!605642 () Bool)

(declare-datatypes ((Unit!19282 0))(
  ( (Unit!19283) )
))
(declare-fun e!346693 () Unit!19282)

(declare-fun Unit!19284 () Unit!19282)

(assert (=> b!605642 (= e!346693 Unit!19284)))

(assert (=> b!605642 false))

(declare-fun b!605643 () Bool)

(assert (=> b!605643 (= e!346691 e!346692)))

(declare-fun res!389199 () Bool)

(assert (=> b!605643 (=> (not res!389199) (not e!346692))))

(assert (=> b!605643 (= res!389199 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) j!136))))

(declare-fun b!605644 () Bool)

(declare-fun e!346687 () Unit!19282)

(declare-fun Unit!19285 () Unit!19282)

(assert (=> b!605644 (= e!346687 Unit!19285)))

(declare-fun lt!276438 () Unit!19282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37224 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19282)

(assert (=> b!605644 (= lt!276438 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276428 (select (arr!17862 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!605644 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276433 () Unit!19282)

(declare-datatypes ((List!11956 0))(
  ( (Nil!11953) (Cons!11952 (h!12997 (_ BitVec 64)) (t!18192 List!11956)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37224 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11956) Unit!19282)

(assert (=> b!605644 (= lt!276433 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11953))))

(declare-fun arrayNoDuplicates!0 (array!37224 (_ BitVec 32) List!11956) Bool)

(assert (=> b!605644 (arrayNoDuplicates!0 lt!276428 #b00000000000000000000000000000000 Nil!11953)))

(declare-fun lt!276436 () Unit!19282)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37224 (_ BitVec 32) (_ BitVec 32)) Unit!19282)

(assert (=> b!605644 (= lt!276436 (lemmaNoDuplicateFromThenFromBigger!0 lt!276428 #b00000000000000000000000000000000 j!136))))

(assert (=> b!605644 (arrayNoDuplicates!0 lt!276428 j!136 Nil!11953)))

(declare-fun lt!276432 () Unit!19282)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37224 (_ BitVec 64) (_ BitVec 32) List!11956) Unit!19282)

(assert (=> b!605644 (= lt!276432 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276428 (select (arr!17862 a!2986) j!136) j!136 Nil!11953))))

(assert (=> b!605644 false))

(declare-fun b!605645 () Bool)

(declare-fun Unit!19286 () Unit!19282)

(assert (=> b!605645 (= e!346693 Unit!19286)))

(declare-fun b!605646 () Bool)

(declare-fun e!346690 () Bool)

(declare-fun e!346689 () Bool)

(assert (=> b!605646 (= e!346690 e!346689)))

(declare-fun res!389201 () Bool)

(assert (=> b!605646 (=> (not res!389201) (not e!346689))))

(declare-datatypes ((SeekEntryResult!6309 0))(
  ( (MissingZero!6309 (index!27504 (_ BitVec 32))) (Found!6309 (index!27505 (_ BitVec 32))) (Intermediate!6309 (undefined!7121 Bool) (index!27506 (_ BitVec 32)) (x!56337 (_ BitVec 32))) (Undefined!6309) (MissingVacant!6309 (index!27507 (_ BitVec 32))) )
))
(declare-fun lt!276427 () SeekEntryResult!6309)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!605646 (= res!389201 (and (= lt!276427 (Found!6309 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17862 a!2986) index!984) (select (arr!17862 a!2986) j!136))) (not (= (select (arr!17862 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37224 (_ BitVec 32)) SeekEntryResult!6309)

(assert (=> b!605646 (= lt!276427 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17862 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605647 () Bool)

(declare-fun e!346684 () Bool)

(assert (=> b!605647 (= e!346680 e!346684)))

(declare-fun res!389185 () Bool)

(assert (=> b!605647 (=> (not res!389185) (not e!346684))))

(declare-fun lt!276437 () SeekEntryResult!6309)

(assert (=> b!605647 (= res!389185 (or (= lt!276437 (MissingZero!6309 i!1108)) (= lt!276437 (MissingVacant!6309 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37224 (_ BitVec 32)) SeekEntryResult!6309)

(assert (=> b!605647 (= lt!276437 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!605648 () Bool)

(declare-fun e!346686 () Bool)

(declare-fun noDuplicate!304 (List!11956) Bool)

(assert (=> b!605648 (= e!346686 (noDuplicate!304 Nil!11953))))

(declare-fun b!605649 () Bool)

(declare-fun res!389200 () Bool)

(assert (=> b!605649 (=> (not res!389200) (not e!346680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!605649 (= res!389200 (validKeyInArray!0 (select (arr!17862 a!2986) j!136)))))

(declare-fun b!605650 () Bool)

(declare-fun res!389188 () Bool)

(assert (=> b!605650 (=> (not res!389188) (not e!346684))))

(assert (=> b!605650 (= res!389188 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17862 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!605651 () Bool)

(declare-fun e!346679 () Bool)

(assert (=> b!605651 (= e!346688 e!346679)))

(declare-fun res!389193 () Bool)

(assert (=> b!605651 (=> res!389193 e!346679)))

(assert (=> b!605651 (= res!389193 (bvsge index!984 j!136))))

(declare-fun lt!276435 () Unit!19282)

(assert (=> b!605651 (= lt!276435 e!346687)))

(declare-fun c!68594 () Bool)

(assert (=> b!605651 (= c!68594 (bvslt j!136 index!984))))

(declare-fun b!605652 () Bool)

(declare-fun Unit!19287 () Unit!19282)

(assert (=> b!605652 (= e!346687 Unit!19287)))

(declare-fun b!605653 () Bool)

(assert (=> b!605653 (= e!346684 e!346690)))

(declare-fun res!389197 () Bool)

(assert (=> b!605653 (=> (not res!389197) (not e!346690))))

(assert (=> b!605653 (= res!389197 (= (select (store (arr!17862 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605653 (= lt!276428 (array!37225 (store (arr!17862 a!2986) i!1108 k!1786) (size!18226 a!2986)))))

(declare-fun b!605654 () Bool)

(declare-fun res!389187 () Bool)

(assert (=> b!605654 (=> (not res!389187) (not e!346684))))

(assert (=> b!605654 (= res!389187 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11953))))

(declare-fun b!605655 () Bool)

(declare-fun res!389189 () Bool)

(assert (=> b!605655 (=> (not res!389189) (not e!346680))))

(assert (=> b!605655 (= res!389189 (and (= (size!18226 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18226 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18226 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!605656 () Bool)

(declare-fun e!346678 () Bool)

(declare-fun lt!276429 () SeekEntryResult!6309)

(assert (=> b!605656 (= e!346678 (= lt!276427 lt!276429))))

(declare-fun b!605657 () Bool)

(assert (=> b!605657 (= e!346689 (not e!346682))))

(declare-fun res!389191 () Bool)

(assert (=> b!605657 (=> res!389191 e!346682)))

(declare-fun lt!276431 () SeekEntryResult!6309)

(assert (=> b!605657 (= res!389191 (not (= lt!276431 (Found!6309 index!984))))))

(declare-fun lt!276430 () Unit!19282)

(assert (=> b!605657 (= lt!276430 e!346693)))

(declare-fun c!68593 () Bool)

(assert (=> b!605657 (= c!68593 (= lt!276431 Undefined!6309))))

(assert (=> b!605657 (= lt!276431 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276425 lt!276428 mask!3053))))

(assert (=> b!605657 e!346678))

(declare-fun res!389196 () Bool)

(assert (=> b!605657 (=> (not res!389196) (not e!346678))))

(declare-fun lt!276426 () (_ BitVec 32))

(assert (=> b!605657 (= res!389196 (= lt!276429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 lt!276425 lt!276428 mask!3053)))))

(assert (=> b!605657 (= lt!276429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 (select (arr!17862 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!605657 (= lt!276425 (select (store (arr!17862 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!276424 () Unit!19282)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37224 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19282)

(assert (=> b!605657 (= lt!276424 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!605657 (= lt!276426 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!605658 () Bool)

(assert (=> b!605658 (= e!346679 e!346686)))

(declare-fun res!389195 () Bool)

(assert (=> b!605658 (=> res!389195 e!346686)))

(assert (=> b!605658 (= res!389195 (or (bvsgt #b00000000000000000000000000000000 (size!18226 a!2986)) (bvsge (size!18226 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!605658 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276423 () Unit!19282)

(assert (=> b!605658 (= lt!276423 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276428 (select (arr!17862 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!605658 e!346685))

(declare-fun res!389192 () Bool)

(assert (=> b!605658 (=> (not res!389192) (not e!346685))))

(assert (=> b!605658 (= res!389192 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) j!136))))

(declare-fun b!605659 () Bool)

(declare-fun res!389190 () Bool)

(assert (=> b!605659 (=> (not res!389190) (not e!346684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37224 (_ BitVec 32)) Bool)

(assert (=> b!605659 (= res!389190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!605660 () Bool)

(declare-fun res!389198 () Bool)

(assert (=> b!605660 (=> (not res!389198) (not e!346680))))

(assert (=> b!605660 (= res!389198 (validKeyInArray!0 k!1786))))

(assert (= (and start!55350 res!389204) b!605655))

(assert (= (and b!605655 res!389189) b!605649))

(assert (= (and b!605649 res!389200) b!605660))

(assert (= (and b!605660 res!389198) b!605637))

(assert (= (and b!605637 res!389202) b!605647))

(assert (= (and b!605647 res!389185) b!605659))

(assert (= (and b!605659 res!389190) b!605654))

(assert (= (and b!605654 res!389187) b!605650))

(assert (= (and b!605650 res!389188) b!605653))

(assert (= (and b!605653 res!389197) b!605646))

(assert (= (and b!605646 res!389201) b!605657))

(assert (= (and b!605657 res!389196) b!605656))

(assert (= (and b!605657 c!68593) b!605642))

(assert (= (and b!605657 (not c!68593)) b!605645))

(assert (= (and b!605657 (not res!389191)) b!605639))

(assert (= (and b!605639 res!389203) b!605638))

(assert (= (and b!605638 (not res!389186)) b!605643))

(assert (= (and b!605643 res!389199) b!605641))

(assert (= (and b!605639 (not res!389194)) b!605651))

(assert (= (and b!605651 c!68594) b!605644))

(assert (= (and b!605651 (not c!68594)) b!605652))

(assert (= (and b!605651 (not res!389193)) b!605658))

(assert (= (and b!605658 res!389192) b!605640))

(assert (= (and b!605658 (not res!389195)) b!605648))

(declare-fun m!582531 () Bool)

(assert (=> b!605640 m!582531))

(assert (=> b!605640 m!582531))

(declare-fun m!582533 () Bool)

(assert (=> b!605640 m!582533))

(declare-fun m!582535 () Bool)

(assert (=> b!605654 m!582535))

(assert (=> b!605639 m!582531))

(declare-fun m!582537 () Bool)

(assert (=> b!605639 m!582537))

(declare-fun m!582539 () Bool)

(assert (=> b!605639 m!582539))

(assert (=> b!605658 m!582531))

(assert (=> b!605658 m!582531))

(declare-fun m!582541 () Bool)

(assert (=> b!605658 m!582541))

(assert (=> b!605658 m!582531))

(declare-fun m!582543 () Bool)

(assert (=> b!605658 m!582543))

(assert (=> b!605658 m!582531))

(declare-fun m!582545 () Bool)

(assert (=> b!605658 m!582545))

(assert (=> b!605644 m!582531))

(declare-fun m!582547 () Bool)

(assert (=> b!605644 m!582547))

(assert (=> b!605644 m!582531))

(declare-fun m!582549 () Bool)

(assert (=> b!605644 m!582549))

(assert (=> b!605644 m!582531))

(declare-fun m!582551 () Bool)

(assert (=> b!605644 m!582551))

(declare-fun m!582553 () Bool)

(assert (=> b!605644 m!582553))

(declare-fun m!582555 () Bool)

(assert (=> b!605644 m!582555))

(declare-fun m!582557 () Bool)

(assert (=> b!605644 m!582557))

(assert (=> b!605644 m!582531))

(declare-fun m!582559 () Bool)

(assert (=> b!605644 m!582559))

(assert (=> b!605638 m!582531))

(assert (=> b!605641 m!582531))

(assert (=> b!605641 m!582531))

(assert (=> b!605641 m!582533))

(declare-fun m!582561 () Bool)

(assert (=> b!605650 m!582561))

(declare-fun m!582563 () Bool)

(assert (=> b!605648 m!582563))

(assert (=> b!605643 m!582531))

(assert (=> b!605643 m!582531))

(assert (=> b!605643 m!582545))

(declare-fun m!582565 () Bool)

(assert (=> b!605646 m!582565))

(assert (=> b!605646 m!582531))

(assert (=> b!605646 m!582531))

(declare-fun m!582567 () Bool)

(assert (=> b!605646 m!582567))

(declare-fun m!582569 () Bool)

(assert (=> b!605637 m!582569))

(declare-fun m!582571 () Bool)

(assert (=> b!605647 m!582571))

(declare-fun m!582573 () Bool)

(assert (=> start!55350 m!582573))

(declare-fun m!582575 () Bool)

(assert (=> start!55350 m!582575))

(declare-fun m!582577 () Bool)

(assert (=> b!605660 m!582577))

(declare-fun m!582579 () Bool)

(assert (=> b!605657 m!582579))

(declare-fun m!582581 () Bool)

(assert (=> b!605657 m!582581))

(assert (=> b!605657 m!582531))

(assert (=> b!605657 m!582531))

(declare-fun m!582583 () Bool)

(assert (=> b!605657 m!582583))

(assert (=> b!605657 m!582537))

(declare-fun m!582585 () Bool)

(assert (=> b!605657 m!582585))

(declare-fun m!582587 () Bool)

(assert (=> b!605657 m!582587))

(declare-fun m!582589 () Bool)

(assert (=> b!605657 m!582589))

(assert (=> b!605653 m!582537))

(declare-fun m!582591 () Bool)

(assert (=> b!605653 m!582591))

(assert (=> b!605649 m!582531))

(assert (=> b!605649 m!582531))

(declare-fun m!582593 () Bool)

(assert (=> b!605649 m!582593))

(declare-fun m!582595 () Bool)

(assert (=> b!605659 m!582595))

(push 1)

(assert (not b!605641))

(assert (not start!55350))

(assert (not b!605659))

(assert (not b!605637))

(assert (not b!605649))

(assert (not b!605658))

(assert (not b!605643))

(assert (not b!605640))

(assert (not b!605644))

(assert (not b!605646))

(assert (not b!605654))

(assert (not b!605647))

(assert (not b!605648))

(assert (not b!605657))

(assert (not b!605660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!87627 () Bool)

(declare-fun res!389356 () Bool)

(declare-fun e!346827 () Bool)

(assert (=> d!87627 (=> res!389356 e!346827)))

(assert (=> d!87627 (= res!389356 (= (select (arr!17862 lt!276428) index!984) (select (arr!17862 a!2986) j!136)))))

(assert (=> d!87627 (= (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) index!984) e!346827)))

(declare-fun b!605848 () Bool)

(declare-fun e!346828 () Bool)

(assert (=> b!605848 (= e!346827 e!346828)))

(declare-fun res!389357 () Bool)

(assert (=> b!605848 (=> (not res!389357) (not e!346828))))

(assert (=> b!605848 (= res!389357 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18226 lt!276428)))))

(declare-fun b!605849 () Bool)

(assert (=> b!605849 (= e!346828 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87627 (not res!389356)) b!605848))

(assert (= (and b!605848 res!389357) b!605849))

(declare-fun m!582753 () Bool)

(assert (=> d!87627 m!582753))

(assert (=> b!605849 m!582531))

(declare-fun m!582755 () Bool)

(assert (=> b!605849 m!582755))

(assert (=> b!605641 d!87627))

(assert (=> b!605640 d!87627))

(declare-fun d!87629 () Bool)

(declare-fun res!389358 () Bool)

(declare-fun e!346829 () Bool)

(assert (=> d!87629 (=> res!389358 e!346829)))

(assert (=> d!87629 (= res!389358 (= (select (arr!17862 lt!276428) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17862 a!2986) j!136)))))

(assert (=> d!87629 (= (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346829)))

(declare-fun b!605850 () Bool)

(declare-fun e!346830 () Bool)

(assert (=> b!605850 (= e!346829 e!346830)))

(declare-fun res!389359 () Bool)

(assert (=> b!605850 (=> (not res!389359) (not e!346830))))

(assert (=> b!605850 (= res!389359 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18226 lt!276428)))))

(declare-fun b!605851 () Bool)

(assert (=> b!605851 (= e!346830 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87629 (not res!389358)) b!605850))

(assert (= (and b!605850 res!389359) b!605851))

(declare-fun m!582757 () Bool)

(assert (=> d!87629 m!582757))

(assert (=> b!605851 m!582531))

(declare-fun m!582759 () Bool)

(assert (=> b!605851 m!582759))

(assert (=> b!605644 d!87629))

(declare-fun d!87631 () Bool)

(assert (=> d!87631 (arrayNoDuplicates!0 lt!276428 j!136 Nil!11953)))

(declare-fun lt!276550 () Unit!19282)

(declare-fun choose!39 (array!37224 (_ BitVec 32) (_ BitVec 32)) Unit!19282)

(assert (=> d!87631 (= lt!276550 (choose!39 lt!276428 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87631 (bvslt (size!18226 lt!276428) #b01111111111111111111111111111111)))

(assert (=> d!87631 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276428 #b00000000000000000000000000000000 j!136) lt!276550)))

(declare-fun bs!18533 () Bool)

(assert (= bs!18533 d!87631))

(assert (=> bs!18533 m!582553))

(declare-fun m!582761 () Bool)

(assert (=> bs!18533 m!582761))

(assert (=> b!605644 d!87631))

(declare-fun b!605895 () Bool)

(declare-fun e!346860 () Bool)

(declare-fun contains!3003 (List!11956 (_ BitVec 64)) Bool)

(assert (=> b!605895 (= e!346860 (contains!3003 Nil!11953 (select (arr!17862 lt!276428) j!136)))))

(declare-fun b!605896 () Bool)

(declare-fun e!346857 () Bool)

(declare-fun call!33065 () Bool)

(assert (=> b!605896 (= e!346857 call!33065)))

(declare-fun b!605897 () Bool)

(assert (=> b!605897 (= e!346857 call!33065)))

(declare-fun b!605898 () Bool)

(declare-fun e!346858 () Bool)

(assert (=> b!605898 (= e!346858 e!346857)))

(declare-fun c!68630 () Bool)

(assert (=> b!605898 (= c!68630 (validKeyInArray!0 (select (arr!17862 lt!276428) j!136)))))

(declare-fun d!87633 () Bool)

(declare-fun res!389370 () Bool)

(declare-fun e!346859 () Bool)

(assert (=> d!87633 (=> res!389370 e!346859)))

(assert (=> d!87633 (= res!389370 (bvsge j!136 (size!18226 lt!276428)))))

(assert (=> d!87633 (= (arrayNoDuplicates!0 lt!276428 j!136 Nil!11953) e!346859)))

(declare-fun b!605899 () Bool)

(assert (=> b!605899 (= e!346859 e!346858)))

(declare-fun res!389371 () Bool)

(assert (=> b!605899 (=> (not res!389371) (not e!346858))))

(assert (=> b!605899 (= res!389371 (not e!346860))))

(declare-fun res!389369 () Bool)

(assert (=> b!605899 (=> (not res!389369) (not e!346860))))

(assert (=> b!605899 (= res!389369 (validKeyInArray!0 (select (arr!17862 lt!276428) j!136)))))

(declare-fun bm!33062 () Bool)

(assert (=> bm!33062 (= call!33065 (arrayNoDuplicates!0 lt!276428 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68630 (Cons!11952 (select (arr!17862 lt!276428) j!136) Nil!11953) Nil!11953)))))

(assert (= (and d!87633 (not res!389370)) b!605899))

(assert (= (and b!605899 res!389369) b!605895))

(assert (= (and b!605899 res!389371) b!605898))

(assert (= (and b!605898 c!68630) b!605896))

(assert (= (and b!605898 (not c!68630)) b!605897))

(assert (= (or b!605896 b!605897) bm!33062))

(declare-fun m!582793 () Bool)

(assert (=> b!605895 m!582793))

(assert (=> b!605895 m!582793))

(declare-fun m!582795 () Bool)

(assert (=> b!605895 m!582795))

(assert (=> b!605898 m!582793))

(assert (=> b!605898 m!582793))

(declare-fun m!582799 () Bool)

(assert (=> b!605898 m!582799))

(assert (=> b!605899 m!582793))

(assert (=> b!605899 m!582793))

(assert (=> b!605899 m!582799))

(assert (=> bm!33062 m!582793))

(declare-fun m!582801 () Bool)

(assert (=> bm!33062 m!582801))

(assert (=> b!605644 d!87633))

(declare-fun b!605900 () Bool)

(declare-fun e!346864 () Bool)

(assert (=> b!605900 (= e!346864 (contains!3003 Nil!11953 (select (arr!17862 lt!276428) #b00000000000000000000000000000000)))))

(declare-fun b!605901 () Bool)

(declare-fun e!346861 () Bool)

(declare-fun call!33066 () Bool)

(assert (=> b!605901 (= e!346861 call!33066)))

(declare-fun b!605902 () Bool)

(assert (=> b!605902 (= e!346861 call!33066)))

(declare-fun b!605903 () Bool)

(declare-fun e!346862 () Bool)

(assert (=> b!605903 (= e!346862 e!346861)))

(declare-fun c!68631 () Bool)

(assert (=> b!605903 (= c!68631 (validKeyInArray!0 (select (arr!17862 lt!276428) #b00000000000000000000000000000000)))))

(declare-fun d!87645 () Bool)

(declare-fun res!389373 () Bool)

(declare-fun e!346863 () Bool)

(assert (=> d!87645 (=> res!389373 e!346863)))

(assert (=> d!87645 (= res!389373 (bvsge #b00000000000000000000000000000000 (size!18226 lt!276428)))))

(assert (=> d!87645 (= (arrayNoDuplicates!0 lt!276428 #b00000000000000000000000000000000 Nil!11953) e!346863)))

(declare-fun b!605904 () Bool)

(assert (=> b!605904 (= e!346863 e!346862)))

(declare-fun res!389374 () Bool)

(assert (=> b!605904 (=> (not res!389374) (not e!346862))))

(assert (=> b!605904 (= res!389374 (not e!346864))))

(declare-fun res!389372 () Bool)

(assert (=> b!605904 (=> (not res!389372) (not e!346864))))

(assert (=> b!605904 (= res!389372 (validKeyInArray!0 (select (arr!17862 lt!276428) #b00000000000000000000000000000000)))))

(declare-fun bm!33063 () Bool)

(assert (=> bm!33063 (= call!33066 (arrayNoDuplicates!0 lt!276428 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68631 (Cons!11952 (select (arr!17862 lt!276428) #b00000000000000000000000000000000) Nil!11953) Nil!11953)))))

(assert (= (and d!87645 (not res!389373)) b!605904))

(assert (= (and b!605904 res!389372) b!605900))

(assert (= (and b!605904 res!389374) b!605903))

(assert (= (and b!605903 c!68631) b!605901))

(assert (= (and b!605903 (not c!68631)) b!605902))

(assert (= (or b!605901 b!605902) bm!33063))

(declare-fun m!582803 () Bool)

(assert (=> b!605900 m!582803))

(assert (=> b!605900 m!582803))

(declare-fun m!582805 () Bool)

(assert (=> b!605900 m!582805))

(assert (=> b!605903 m!582803))

(assert (=> b!605903 m!582803))

(declare-fun m!582807 () Bool)

(assert (=> b!605903 m!582807))

(assert (=> b!605904 m!582803))

(assert (=> b!605904 m!582803))

(assert (=> b!605904 m!582807))

(assert (=> bm!33063 m!582803))

(declare-fun m!582809 () Bool)

(assert (=> bm!33063 m!582809))

(assert (=> b!605644 d!87645))

(declare-fun d!87647 () Bool)

(assert (=> d!87647 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18226 lt!276428)) (not (= (select (arr!17862 lt!276428) j!136) (select (arr!17862 a!2986) j!136))))))

(declare-fun lt!276565 () Unit!19282)

(declare-fun choose!21 (array!37224 (_ BitVec 64) (_ BitVec 32) List!11956) Unit!19282)

(assert (=> d!87647 (= lt!276565 (choose!21 lt!276428 (select (arr!17862 a!2986) j!136) j!136 Nil!11953))))

(assert (=> d!87647 (bvslt (size!18226 lt!276428) #b01111111111111111111111111111111)))

(assert (=> d!87647 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276428 (select (arr!17862 a!2986) j!136) j!136 Nil!11953) lt!276565)))

(declare-fun bs!18535 () Bool)

(assert (= bs!18535 d!87647))

(assert (=> bs!18535 m!582793))

(assert (=> bs!18535 m!582531))

(declare-fun m!582811 () Bool)

(assert (=> bs!18535 m!582811))

(assert (=> b!605644 d!87647))

(declare-fun d!87649 () Bool)

(declare-fun e!346867 () Bool)

(assert (=> d!87649 e!346867))

(declare-fun res!389377 () Bool)

(assert (=> d!87649 (=> (not res!389377) (not e!346867))))

(assert (=> d!87649 (= res!389377 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18226 a!2986))))))

(declare-fun lt!276568 () Unit!19282)

(declare-fun choose!41 (array!37224 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11956) Unit!19282)

(assert (=> d!87649 (= lt!276568 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11953))))

(assert (=> d!87649 (bvslt (size!18226 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87649 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11953) lt!276568)))

(declare-fun b!605907 () Bool)

(assert (=> b!605907 (= e!346867 (arrayNoDuplicates!0 (array!37225 (store (arr!17862 a!2986) i!1108 k!1786) (size!18226 a!2986)) #b00000000000000000000000000000000 Nil!11953))))

(assert (= (and d!87649 res!389377) b!605907))

(declare-fun m!582813 () Bool)

(assert (=> d!87649 m!582813))

(assert (=> b!605907 m!582537))

(declare-fun m!582815 () Bool)

(assert (=> b!605907 m!582815))

(assert (=> b!605644 d!87649))

(declare-fun d!87651 () Bool)

(assert (=> d!87651 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276577 () Unit!19282)

(declare-fun choose!114 (array!37224 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19282)

(assert (=> d!87651 (= lt!276577 (choose!114 lt!276428 (select (arr!17862 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87651 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87651 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276428 (select (arr!17862 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276577)))

(declare-fun bs!18536 () Bool)

(assert (= bs!18536 d!87651))

(assert (=> bs!18536 m!582531))

(assert (=> bs!18536 m!582549))

(assert (=> bs!18536 m!582531))

(declare-fun m!582817 () Bool)

(assert (=> bs!18536 m!582817))

(assert (=> b!605644 d!87651))

(declare-fun b!605922 () Bool)

(declare-fun e!346879 () Bool)

(assert (=> b!605922 (= e!346879 (contains!3003 Nil!11953 (select (arr!17862 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!605923 () Bool)

(declare-fun e!346876 () Bool)

(declare-fun call!33067 () Bool)

(assert (=> b!605923 (= e!346876 call!33067)))

(declare-fun b!605924 () Bool)

(assert (=> b!605924 (= e!346876 call!33067)))

(declare-fun b!605925 () Bool)

(declare-fun e!346877 () Bool)

(assert (=> b!605925 (= e!346877 e!346876)))

(declare-fun c!68638 () Bool)

(assert (=> b!605925 (= c!68638 (validKeyInArray!0 (select (arr!17862 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87653 () Bool)

(declare-fun res!389381 () Bool)

(declare-fun e!346878 () Bool)

(assert (=> d!87653 (=> res!389381 e!346878)))

(assert (=> d!87653 (= res!389381 (bvsge #b00000000000000000000000000000000 (size!18226 a!2986)))))

(assert (=> d!87653 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11953) e!346878)))

(declare-fun b!605926 () Bool)

(assert (=> b!605926 (= e!346878 e!346877)))

(declare-fun res!389382 () Bool)

(assert (=> b!605926 (=> (not res!389382) (not e!346877))))

(assert (=> b!605926 (= res!389382 (not e!346879))))

(declare-fun res!389380 () Bool)

(assert (=> b!605926 (=> (not res!389380) (not e!346879))))

(assert (=> b!605926 (= res!389380 (validKeyInArray!0 (select (arr!17862 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33064 () Bool)

(assert (=> bm!33064 (= call!33067 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68638 (Cons!11952 (select (arr!17862 a!2986) #b00000000000000000000000000000000) Nil!11953) Nil!11953)))))

(assert (= (and d!87653 (not res!389381)) b!605926))

(assert (= (and b!605926 res!389380) b!605922))

(assert (= (and b!605926 res!389382) b!605925))

(assert (= (and b!605925 c!68638) b!605923))

(assert (= (and b!605925 (not c!68638)) b!605924))

(assert (= (or b!605923 b!605924) bm!33064))

(declare-fun m!582819 () Bool)

(assert (=> b!605922 m!582819))

(assert (=> b!605922 m!582819))

(declare-fun m!582821 () Bool)

(assert (=> b!605922 m!582821))

(assert (=> b!605925 m!582819))

(assert (=> b!605925 m!582819))

(declare-fun m!582823 () Bool)

(assert (=> b!605925 m!582823))

(assert (=> b!605926 m!582819))

(assert (=> b!605926 m!582819))

(assert (=> b!605926 m!582823))

(assert (=> bm!33064 m!582819))

(declare-fun m!582825 () Bool)

(assert (=> bm!33064 m!582825))

(assert (=> b!605654 d!87653))

(declare-fun d!87655 () Bool)

(declare-fun res!389383 () Bool)

(declare-fun e!346880 () Bool)

(assert (=> d!87655 (=> res!389383 e!346880)))

(assert (=> d!87655 (= res!389383 (= (select (arr!17862 lt!276428) j!136) (select (arr!17862 a!2986) j!136)))))

(assert (=> d!87655 (= (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) j!136) e!346880)))

(declare-fun b!605927 () Bool)

(declare-fun e!346881 () Bool)

(assert (=> b!605927 (= e!346880 e!346881)))

(declare-fun res!389384 () Bool)

(assert (=> b!605927 (=> (not res!389384) (not e!346881))))

(assert (=> b!605927 (= res!389384 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18226 lt!276428)))))

(declare-fun b!605928 () Bool)

(assert (=> b!605928 (= e!346881 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87655 (not res!389383)) b!605927))

(assert (= (and b!605927 res!389384) b!605928))

(assert (=> d!87655 m!582793))

(assert (=> b!605928 m!582531))

(declare-fun m!582827 () Bool)

(assert (=> b!605928 m!582827))

(assert (=> b!605643 d!87655))

(declare-fun lt!276602 () SeekEntryResult!6309)

(declare-fun d!87657 () Bool)

(assert (=> d!87657 (and (or (is-Undefined!6309 lt!276602) (not (is-Found!6309 lt!276602)) (and (bvsge (index!27505 lt!276602) #b00000000000000000000000000000000) (bvslt (index!27505 lt!276602) (size!18226 a!2986)))) (or (is-Undefined!6309 lt!276602) (is-Found!6309 lt!276602) (not (is-MissingVacant!6309 lt!276602)) (not (= (index!27507 lt!276602) vacantSpotIndex!68)) (and (bvsge (index!27507 lt!276602) #b00000000000000000000000000000000) (bvslt (index!27507 lt!276602) (size!18226 a!2986)))) (or (is-Undefined!6309 lt!276602) (ite (is-Found!6309 lt!276602) (= (select (arr!17862 a!2986) (index!27505 lt!276602)) (select (arr!17862 a!2986) j!136)) (and (is-MissingVacant!6309 lt!276602) (= (index!27507 lt!276602) vacantSpotIndex!68) (= (select (arr!17862 a!2986) (index!27507 lt!276602)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!346933 () SeekEntryResult!6309)

(assert (=> d!87657 (= lt!276602 e!346933)))

(declare-fun c!68661 () Bool)

(assert (=> d!87657 (= c!68661 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!276603 () (_ BitVec 64))

(assert (=> d!87657 (= lt!276603 (select (arr!17862 a!2986) lt!276426))))

(assert (=> d!87657 (validMask!0 mask!3053)))

(assert (=> d!87657 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 (select (arr!17862 a!2986) j!136) a!2986 mask!3053) lt!276602)))

(declare-fun b!606000 () Bool)

(declare-fun c!68660 () Bool)

(assert (=> b!606000 (= c!68660 (= lt!276603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346934 () SeekEntryResult!6309)

(declare-fun e!346932 () SeekEntryResult!6309)

(assert (=> b!606000 (= e!346934 e!346932)))

(declare-fun b!606001 () Bool)

(assert (=> b!606001 (= e!346932 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276426 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17862 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606002 () Bool)

(assert (=> b!606002 (= e!346934 (Found!6309 lt!276426))))

(declare-fun b!606003 () Bool)

(assert (=> b!606003 (= e!346933 Undefined!6309)))

(declare-fun b!606004 () Bool)

(assert (=> b!606004 (= e!346933 e!346934)))

(declare-fun c!68662 () Bool)

(assert (=> b!606004 (= c!68662 (= lt!276603 (select (arr!17862 a!2986) j!136)))))

(declare-fun b!606005 () Bool)

(assert (=> b!606005 (= e!346932 (MissingVacant!6309 vacantSpotIndex!68))))

(assert (= (and d!87657 c!68661) b!606003))

(assert (= (and d!87657 (not c!68661)) b!606004))

(assert (= (and b!606004 c!68662) b!606002))

(assert (= (and b!606004 (not c!68662)) b!606000))

(assert (= (and b!606000 c!68660) b!606005))

(assert (= (and b!606000 (not c!68660)) b!606001))

(declare-fun m!582909 () Bool)

(assert (=> d!87657 m!582909))

(declare-fun m!582911 () Bool)

(assert (=> d!87657 m!582911))

(declare-fun m!582913 () Bool)

(assert (=> d!87657 m!582913))

(assert (=> d!87657 m!582573))

(declare-fun m!582917 () Bool)

(assert (=> b!606001 m!582917))

(assert (=> b!606001 m!582917))

(assert (=> b!606001 m!582531))

(declare-fun m!582919 () Bool)

(assert (=> b!606001 m!582919))

(assert (=> b!605657 d!87657))

(declare-fun lt!276604 () SeekEntryResult!6309)

(declare-fun d!87695 () Bool)

(assert (=> d!87695 (and (or (is-Undefined!6309 lt!276604) (not (is-Found!6309 lt!276604)) (and (bvsge (index!27505 lt!276604) #b00000000000000000000000000000000) (bvslt (index!27505 lt!276604) (size!18226 lt!276428)))) (or (is-Undefined!6309 lt!276604) (is-Found!6309 lt!276604) (not (is-MissingVacant!6309 lt!276604)) (not (= (index!27507 lt!276604) vacantSpotIndex!68)) (and (bvsge (index!27507 lt!276604) #b00000000000000000000000000000000) (bvslt (index!27507 lt!276604) (size!18226 lt!276428)))) (or (is-Undefined!6309 lt!276604) (ite (is-Found!6309 lt!276604) (= (select (arr!17862 lt!276428) (index!27505 lt!276604)) lt!276425) (and (is-MissingVacant!6309 lt!276604) (= (index!27507 lt!276604) vacantSpotIndex!68) (= (select (arr!17862 lt!276428) (index!27507 lt!276604)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!346936 () SeekEntryResult!6309)

(assert (=> d!87695 (= lt!276604 e!346936)))

(declare-fun c!68664 () Bool)

(assert (=> d!87695 (= c!68664 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!276605 () (_ BitVec 64))

(assert (=> d!87695 (= lt!276605 (select (arr!17862 lt!276428) lt!276426))))

(assert (=> d!87695 (validMask!0 mask!3053)))

(assert (=> d!87695 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 lt!276425 lt!276428 mask!3053) lt!276604)))

(declare-fun b!606006 () Bool)

(declare-fun c!68663 () Bool)

(assert (=> b!606006 (= c!68663 (= lt!276605 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346937 () SeekEntryResult!6309)

(declare-fun e!346935 () SeekEntryResult!6309)

(assert (=> b!606006 (= e!346937 e!346935)))

(declare-fun b!606007 () Bool)

(assert (=> b!606007 (= e!346935 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276426 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!276425 lt!276428 mask!3053))))

(declare-fun b!606008 () Bool)

(assert (=> b!606008 (= e!346937 (Found!6309 lt!276426))))

(declare-fun b!606009 () Bool)

(assert (=> b!606009 (= e!346936 Undefined!6309)))

(declare-fun b!606010 () Bool)

(assert (=> b!606010 (= e!346936 e!346937)))

(declare-fun c!68665 () Bool)

(assert (=> b!606010 (= c!68665 (= lt!276605 lt!276425))))

(declare-fun b!606011 () Bool)

(assert (=> b!606011 (= e!346935 (MissingVacant!6309 vacantSpotIndex!68))))

(assert (= (and d!87695 c!68664) b!606009))

(assert (= (and d!87695 (not c!68664)) b!606010))

(assert (= (and b!606010 c!68665) b!606008))

(assert (= (and b!606010 (not c!68665)) b!606006))

(assert (= (and b!606006 c!68663) b!606011))

(assert (= (and b!606006 (not c!68663)) b!606007))

(declare-fun m!582921 () Bool)

(assert (=> d!87695 m!582921))

(declare-fun m!582923 () Bool)

(assert (=> d!87695 m!582923))

(declare-fun m!582925 () Bool)

(assert (=> d!87695 m!582925))

(assert (=> d!87695 m!582573))

(assert (=> b!606007 m!582917))

(assert (=> b!606007 m!582917))

(declare-fun m!582927 () Bool)

(assert (=> b!606007 m!582927))

(assert (=> b!605657 d!87695))

(declare-fun d!87697 () Bool)

(declare-fun lt!276613 () (_ BitVec 32))

(assert (=> d!87697 (and (bvsge lt!276613 #b00000000000000000000000000000000) (bvslt lt!276613 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87697 (= lt!276613 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87697 (validMask!0 mask!3053)))

(assert (=> d!87697 (= (nextIndex!0 index!984 x!910 mask!3053) lt!276613)))

(declare-fun bs!18543 () Bool)

(assert (= bs!18543 d!87697))

(declare-fun m!582931 () Bool)

(assert (=> bs!18543 m!582931))

(assert (=> bs!18543 m!582573))

(assert (=> b!605657 d!87697))

(declare-fun lt!276614 () SeekEntryResult!6309)

(declare-fun d!87701 () Bool)

(assert (=> d!87701 (and (or (is-Undefined!6309 lt!276614) (not (is-Found!6309 lt!276614)) (and (bvsge (index!27505 lt!276614) #b00000000000000000000000000000000) (bvslt (index!27505 lt!276614) (size!18226 lt!276428)))) (or (is-Undefined!6309 lt!276614) (is-Found!6309 lt!276614) (not (is-MissingVacant!6309 lt!276614)) (not (= (index!27507 lt!276614) vacantSpotIndex!68)) (and (bvsge (index!27507 lt!276614) #b00000000000000000000000000000000) (bvslt (index!27507 lt!276614) (size!18226 lt!276428)))) (or (is-Undefined!6309 lt!276614) (ite (is-Found!6309 lt!276614) (= (select (arr!17862 lt!276428) (index!27505 lt!276614)) lt!276425) (and (is-MissingVacant!6309 lt!276614) (= (index!27507 lt!276614) vacantSpotIndex!68) (= (select (arr!17862 lt!276428) (index!27507 lt!276614)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!346941 () SeekEntryResult!6309)

(assert (=> d!87701 (= lt!276614 e!346941)))

(declare-fun c!68667 () Bool)

(assert (=> d!87701 (= c!68667 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!276615 () (_ BitVec 64))

(assert (=> d!87701 (= lt!276615 (select (arr!17862 lt!276428) index!984))))

(assert (=> d!87701 (validMask!0 mask!3053)))

(assert (=> d!87701 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276425 lt!276428 mask!3053) lt!276614)))

(declare-fun b!606014 () Bool)

(declare-fun c!68666 () Bool)

(assert (=> b!606014 (= c!68666 (= lt!276615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346942 () SeekEntryResult!6309)

(declare-fun e!346940 () SeekEntryResult!6309)

(assert (=> b!606014 (= e!346942 e!346940)))

(declare-fun b!606015 () Bool)

(assert (=> b!606015 (= e!346940 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!276425 lt!276428 mask!3053))))

(declare-fun b!606016 () Bool)

(assert (=> b!606016 (= e!346942 (Found!6309 index!984))))

(declare-fun b!606017 () Bool)

(assert (=> b!606017 (= e!346941 Undefined!6309)))

(declare-fun b!606018 () Bool)

(assert (=> b!606018 (= e!346941 e!346942)))

(declare-fun c!68668 () Bool)

(assert (=> b!606018 (= c!68668 (= lt!276615 lt!276425))))

(declare-fun b!606019 () Bool)

(assert (=> b!606019 (= e!346940 (MissingVacant!6309 vacantSpotIndex!68))))

(assert (= (and d!87701 c!68667) b!606017))

(assert (= (and d!87701 (not c!68667)) b!606018))

(assert (= (and b!606018 c!68668) b!606016))

(assert (= (and b!606018 (not c!68668)) b!606014))

(assert (= (and b!606014 c!68666) b!606019))

(assert (= (and b!606014 (not c!68666)) b!606015))

(declare-fun m!582933 () Bool)

(assert (=> d!87701 m!582933))

(declare-fun m!582935 () Bool)

(assert (=> d!87701 m!582935))

(assert (=> d!87701 m!582753))

(assert (=> d!87701 m!582573))

(assert (=> b!606015 m!582579))

(assert (=> b!606015 m!582579))

(declare-fun m!582939 () Bool)

(assert (=> b!606015 m!582939))

(assert (=> b!605657 d!87701))

(declare-fun d!87703 () Bool)

(declare-fun e!346953 () Bool)

(assert (=> d!87703 e!346953))

(declare-fun res!389426 () Bool)

(assert (=> d!87703 (=> (not res!389426) (not e!346953))))

(assert (=> d!87703 (= res!389426 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18226 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18226 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18226 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18226 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18226 a!2986))))))

(declare-fun lt!276628 () Unit!19282)

(declare-fun choose!9 (array!37224 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19282)

(assert (=> d!87703 (= lt!276628 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87703 (validMask!0 mask!3053)))

(assert (=> d!87703 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 mask!3053) lt!276628)))

(declare-fun b!606030 () Bool)

(assert (=> b!606030 (= e!346953 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 (select (arr!17862 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276426 vacantSpotIndex!68 (select (store (arr!17862 a!2986) i!1108 k!1786) j!136) (array!37225 (store (arr!17862 a!2986) i!1108 k!1786) (size!18226 a!2986)) mask!3053)))))

(assert (= (and d!87703 res!389426) b!606030))

(declare-fun m!582957 () Bool)

(assert (=> d!87703 m!582957))

(assert (=> d!87703 m!582573))

(assert (=> b!606030 m!582589))

(assert (=> b!606030 m!582537))

(assert (=> b!606030 m!582531))

(assert (=> b!606030 m!582583))

(assert (=> b!606030 m!582531))

(assert (=> b!606030 m!582589))

(declare-fun m!582959 () Bool)

(assert (=> b!606030 m!582959))

(assert (=> b!605657 d!87703))

(declare-fun d!87717 () Bool)

(declare-fun res!389427 () Bool)

(declare-fun e!346954 () Bool)

(assert (=> d!87717 (=> res!389427 e!346954)))

(assert (=> d!87717 (= res!389427 (= (select (arr!17862 lt!276428) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17862 a!2986) j!136)))))

(assert (=> d!87717 (= (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!346954)))

(declare-fun b!606031 () Bool)

(declare-fun e!346955 () Bool)

(assert (=> b!606031 (= e!346954 e!346955)))

(declare-fun res!389428 () Bool)

(assert (=> b!606031 (=> (not res!389428) (not e!346955))))

(assert (=> b!606031 (= res!389428 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18226 lt!276428)))))

(declare-fun b!606032 () Bool)

(assert (=> b!606032 (= e!346955 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87717 (not res!389427)) b!606031))

(assert (= (and b!606031 res!389428) b!606032))

(declare-fun m!582961 () Bool)

(assert (=> d!87717 m!582961))

(assert (=> b!606032 m!582531))

(declare-fun m!582963 () Bool)

(assert (=> b!606032 m!582963))

(assert (=> b!605658 d!87717))

(declare-fun d!87719 () Bool)

(assert (=> d!87719 (arrayContainsKey!0 lt!276428 (select (arr!17862 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276629 () Unit!19282)

(assert (=> d!87719 (= lt!276629 (choose!114 lt!276428 (select (arr!17862 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!87719 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!87719 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276428 (select (arr!17862 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!276629)))

(declare-fun bs!18546 () Bool)

(assert (= bs!18546 d!87719))

(assert (=> bs!18546 m!582531))

(assert (=> bs!18546 m!582541))

(assert (=> bs!18546 m!582531))

(declare-fun m!582965 () Bool)

(assert (=> bs!18546 m!582965))

(assert (=> b!605658 d!87719))

(assert (=> b!605658 d!87655))

(declare-fun b!606073 () Bool)

(declare-fun e!346979 () SeekEntryResult!6309)

(assert (=> b!606073 (= e!346979 Undefined!6309)))

(declare-fun b!606074 () Bool)

(declare-fun e!346980 () SeekEntryResult!6309)

(assert (=> b!606074 (= e!346979 e!346980)))

(declare-fun lt!276648 () (_ BitVec 64))

(declare-fun lt!276649 () SeekEntryResult!6309)

(assert (=> b!606074 (= lt!276648 (select (arr!17862 a!2986) (index!27506 lt!276649)))))

(declare-fun c!68687 () Bool)

(assert (=> b!606074 (= c!68687 (= lt!276648 k!1786))))

(declare-fun b!606075 () Bool)

(declare-fun c!68688 () Bool)

(assert (=> b!606075 (= c!68688 (= lt!276648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346978 () SeekEntryResult!6309)

(assert (=> b!606075 (= e!346980 e!346978)))

(declare-fun b!606076 () Bool)

(assert (=> b!606076 (= e!346980 (Found!6309 (index!27506 lt!276649)))))

(declare-fun b!606077 () Bool)

(assert (=> b!606077 (= e!346978 (MissingZero!6309 (index!27506 lt!276649)))))

(declare-fun d!87721 () Bool)

(declare-fun lt!276647 () SeekEntryResult!6309)

