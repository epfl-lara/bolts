; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57458 () Bool)

(assert start!57458)

(declare-fun b!635674 () Bool)

(declare-fun e!363613 () Bool)

(declare-fun e!363616 () Bool)

(assert (=> b!635674 (= e!363613 e!363616)))

(declare-fun res!411402 () Bool)

(assert (=> b!635674 (=> res!411402 e!363616)))

(declare-datatypes ((array!38204 0))(
  ( (array!38205 (arr!18325 (Array (_ BitVec 32) (_ BitVec 64))) (size!18689 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38204)

(assert (=> b!635674 (= res!411402 (or (bvsge (size!18689 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18689 a!2986))))))

(declare-fun lt!294003 () array!38204)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635674 (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21446 0))(
  ( (Unit!21447) )
))
(declare-fun lt!294002 () Unit!21446)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38204 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21446)

(assert (=> b!635674 (= lt!294002 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294003 (select (arr!18325 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635675 () Bool)

(declare-fun e!363608 () Bool)

(assert (=> b!635675 (= e!363608 e!363613)))

(declare-fun res!411410 () Bool)

(assert (=> b!635675 (=> res!411410 e!363613)))

(declare-fun lt!294001 () (_ BitVec 64))

(declare-fun lt!294000 () (_ BitVec 64))

(assert (=> b!635675 (= res!411410 (or (not (= (select (arr!18325 a!2986) j!136) lt!294000)) (not (= (select (arr!18325 a!2986) j!136) lt!294001)) (bvsge j!136 index!984)))))

(declare-fun e!363607 () Bool)

(assert (=> b!635675 e!363607))

(declare-fun res!411405 () Bool)

(assert (=> b!635675 (=> (not res!411405) (not e!363607))))

(assert (=> b!635675 (= res!411405 (= lt!294001 (select (arr!18325 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!635675 (= lt!294001 (select (store (arr!18325 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!635676 () Bool)

(declare-fun res!411403 () Bool)

(declare-fun e!363617 () Bool)

(assert (=> b!635676 (=> (not res!411403) (not e!363617))))

(declare-datatypes ((List!12419 0))(
  ( (Nil!12416) (Cons!12415 (h!13460 (_ BitVec 64)) (t!18655 List!12419)) )
))
(declare-fun arrayNoDuplicates!0 (array!38204 (_ BitVec 32) List!12419) Bool)

(assert (=> b!635676 (= res!411403 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12416))))

(declare-fun b!635677 () Bool)

(declare-fun noDuplicate!377 (List!12419) Bool)

(assert (=> b!635677 (= e!363616 (noDuplicate!377 Nil!12416))))

(declare-fun b!635678 () Bool)

(declare-fun res!411409 () Bool)

(declare-fun e!363611 () Bool)

(assert (=> b!635678 (=> (not res!411409) (not e!363611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635678 (= res!411409 (validKeyInArray!0 (select (arr!18325 a!2986) j!136)))))

(declare-fun e!363612 () Bool)

(declare-fun b!635679 () Bool)

(assert (=> b!635679 (= e!363612 (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) index!984))))

(declare-fun b!635680 () Bool)

(declare-fun e!363619 () Unit!21446)

(declare-fun Unit!21448 () Unit!21446)

(assert (=> b!635680 (= e!363619 Unit!21448)))

(assert (=> b!635680 false))

(declare-fun b!635681 () Bool)

(declare-fun res!411419 () Bool)

(assert (=> b!635681 (=> (not res!411419) (not e!363617))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38204 (_ BitVec 32)) Bool)

(assert (=> b!635681 (= res!411419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635682 () Bool)

(declare-fun e!363615 () Bool)

(declare-datatypes ((SeekEntryResult!6772 0))(
  ( (MissingZero!6772 (index!29392 (_ BitVec 32))) (Found!6772 (index!29393 (_ BitVec 32))) (Intermediate!6772 (undefined!7584 Bool) (index!29394 (_ BitVec 32)) (x!58164 (_ BitVec 32))) (Undefined!6772) (MissingVacant!6772 (index!29395 (_ BitVec 32))) )
))
(declare-fun lt!293997 () SeekEntryResult!6772)

(declare-fun lt!293999 () SeekEntryResult!6772)

(assert (=> b!635682 (= e!363615 (= lt!293997 lt!293999))))

(declare-fun b!635683 () Bool)

(declare-fun e!363610 () Bool)

(assert (=> b!635683 (= e!363610 (not e!363608))))

(declare-fun res!411404 () Bool)

(assert (=> b!635683 (=> res!411404 e!363608)))

(declare-fun lt!294005 () SeekEntryResult!6772)

(assert (=> b!635683 (= res!411404 (not (= lt!294005 (Found!6772 index!984))))))

(declare-fun lt!294006 () Unit!21446)

(assert (=> b!635683 (= lt!294006 e!363619)))

(declare-fun c!72503 () Bool)

(assert (=> b!635683 (= c!72503 (= lt!294005 Undefined!6772))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38204 (_ BitVec 32)) SeekEntryResult!6772)

(assert (=> b!635683 (= lt!294005 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294000 lt!294003 mask!3053))))

(assert (=> b!635683 e!363615))

(declare-fun res!411414 () Bool)

(assert (=> b!635683 (=> (not res!411414) (not e!363615))))

(declare-fun lt!293996 () (_ BitVec 32))

(assert (=> b!635683 (= res!411414 (= lt!293999 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 lt!294000 lt!294003 mask!3053)))))

(assert (=> b!635683 (= lt!293999 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 (select (arr!18325 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!635683 (= lt!294000 (select (store (arr!18325 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293998 () Unit!21446)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38204 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21446)

(assert (=> b!635683 (= lt!293998 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635683 (= lt!293996 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635684 () Bool)

(declare-fun res!411416 () Bool)

(assert (=> b!635684 (=> (not res!411416) (not e!363611))))

(assert (=> b!635684 (= res!411416 (validKeyInArray!0 k0!1786))))

(declare-fun b!635685 () Bool)

(declare-fun res!411417 () Bool)

(assert (=> b!635685 (=> (not res!411417) (not e!363611))))

(assert (=> b!635685 (= res!411417 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635686 () Bool)

(declare-fun e!363618 () Bool)

(assert (=> b!635686 (= e!363617 e!363618)))

(declare-fun res!411411 () Bool)

(assert (=> b!635686 (=> (not res!411411) (not e!363618))))

(assert (=> b!635686 (= res!411411 (= (select (store (arr!18325 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635686 (= lt!294003 (array!38205 (store (arr!18325 a!2986) i!1108 k0!1786) (size!18689 a!2986)))))

(declare-fun b!635687 () Bool)

(declare-fun e!363609 () Bool)

(assert (=> b!635687 (= e!363609 e!363612)))

(declare-fun res!411415 () Bool)

(assert (=> b!635687 (=> (not res!411415) (not e!363612))))

(assert (=> b!635687 (= res!411415 (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) j!136))))

(declare-fun b!635688 () Bool)

(declare-fun res!411408 () Bool)

(assert (=> b!635688 (=> (not res!411408) (not e!363611))))

(assert (=> b!635688 (= res!411408 (and (= (size!18689 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18689 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18689 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635689 () Bool)

(assert (=> b!635689 (= e!363607 e!363609)))

(declare-fun res!411407 () Bool)

(assert (=> b!635689 (=> res!411407 e!363609)))

(assert (=> b!635689 (= res!411407 (or (not (= (select (arr!18325 a!2986) j!136) lt!294000)) (not (= (select (arr!18325 a!2986) j!136) lt!294001)) (bvsge j!136 index!984)))))

(declare-fun res!411412 () Bool)

(assert (=> start!57458 (=> (not res!411412) (not e!363611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57458 (= res!411412 (validMask!0 mask!3053))))

(assert (=> start!57458 e!363611))

(assert (=> start!57458 true))

(declare-fun array_inv!14099 (array!38204) Bool)

(assert (=> start!57458 (array_inv!14099 a!2986)))

(declare-fun b!635690 () Bool)

(declare-fun res!411413 () Bool)

(assert (=> b!635690 (=> (not res!411413) (not e!363617))))

(assert (=> b!635690 (= res!411413 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18325 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635691 () Bool)

(assert (=> b!635691 (= e!363618 e!363610)))

(declare-fun res!411406 () Bool)

(assert (=> b!635691 (=> (not res!411406) (not e!363610))))

(assert (=> b!635691 (= res!411406 (and (= lt!293997 (Found!6772 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18325 a!2986) index!984) (select (arr!18325 a!2986) j!136))) (not (= (select (arr!18325 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!635691 (= lt!293997 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18325 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635692 () Bool)

(declare-fun Unit!21449 () Unit!21446)

(assert (=> b!635692 (= e!363619 Unit!21449)))

(declare-fun b!635693 () Bool)

(assert (=> b!635693 (= e!363611 e!363617)))

(declare-fun res!411418 () Bool)

(assert (=> b!635693 (=> (not res!411418) (not e!363617))))

(declare-fun lt!294004 () SeekEntryResult!6772)

(assert (=> b!635693 (= res!411418 (or (= lt!294004 (MissingZero!6772 i!1108)) (= lt!294004 (MissingVacant!6772 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38204 (_ BitVec 32)) SeekEntryResult!6772)

(assert (=> b!635693 (= lt!294004 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!57458 res!411412) b!635688))

(assert (= (and b!635688 res!411408) b!635678))

(assert (= (and b!635678 res!411409) b!635684))

(assert (= (and b!635684 res!411416) b!635685))

(assert (= (and b!635685 res!411417) b!635693))

(assert (= (and b!635693 res!411418) b!635681))

(assert (= (and b!635681 res!411419) b!635676))

(assert (= (and b!635676 res!411403) b!635690))

(assert (= (and b!635690 res!411413) b!635686))

(assert (= (and b!635686 res!411411) b!635691))

(assert (= (and b!635691 res!411406) b!635683))

(assert (= (and b!635683 res!411414) b!635682))

(assert (= (and b!635683 c!72503) b!635680))

(assert (= (and b!635683 (not c!72503)) b!635692))

(assert (= (and b!635683 (not res!411404)) b!635675))

(assert (= (and b!635675 res!411405) b!635689))

(assert (= (and b!635689 (not res!411407)) b!635687))

(assert (= (and b!635687 res!411415) b!635679))

(assert (= (and b!635675 (not res!411410)) b!635674))

(assert (= (and b!635674 (not res!411402)) b!635677))

(declare-fun m!610045 () Bool)

(assert (=> b!635686 m!610045))

(declare-fun m!610047 () Bool)

(assert (=> b!635686 m!610047))

(declare-fun m!610049 () Bool)

(assert (=> b!635691 m!610049))

(declare-fun m!610051 () Bool)

(assert (=> b!635691 m!610051))

(assert (=> b!635691 m!610051))

(declare-fun m!610053 () Bool)

(assert (=> b!635691 m!610053))

(assert (=> b!635679 m!610051))

(assert (=> b!635679 m!610051))

(declare-fun m!610055 () Bool)

(assert (=> b!635679 m!610055))

(declare-fun m!610057 () Bool)

(assert (=> b!635693 m!610057))

(declare-fun m!610059 () Bool)

(assert (=> b!635677 m!610059))

(declare-fun m!610061 () Bool)

(assert (=> b!635684 m!610061))

(declare-fun m!610063 () Bool)

(assert (=> b!635681 m!610063))

(declare-fun m!610065 () Bool)

(assert (=> b!635685 m!610065))

(assert (=> b!635675 m!610051))

(assert (=> b!635675 m!610045))

(declare-fun m!610067 () Bool)

(assert (=> b!635675 m!610067))

(assert (=> b!635674 m!610051))

(assert (=> b!635674 m!610051))

(declare-fun m!610069 () Bool)

(assert (=> b!635674 m!610069))

(assert (=> b!635674 m!610051))

(declare-fun m!610071 () Bool)

(assert (=> b!635674 m!610071))

(assert (=> b!635678 m!610051))

(assert (=> b!635678 m!610051))

(declare-fun m!610073 () Bool)

(assert (=> b!635678 m!610073))

(declare-fun m!610075 () Bool)

(assert (=> b!635676 m!610075))

(declare-fun m!610077 () Bool)

(assert (=> b!635690 m!610077))

(assert (=> b!635689 m!610051))

(declare-fun m!610079 () Bool)

(assert (=> start!57458 m!610079))

(declare-fun m!610081 () Bool)

(assert (=> start!57458 m!610081))

(declare-fun m!610083 () Bool)

(assert (=> b!635683 m!610083))

(declare-fun m!610085 () Bool)

(assert (=> b!635683 m!610085))

(declare-fun m!610087 () Bool)

(assert (=> b!635683 m!610087))

(assert (=> b!635683 m!610045))

(assert (=> b!635683 m!610051))

(declare-fun m!610089 () Bool)

(assert (=> b!635683 m!610089))

(declare-fun m!610091 () Bool)

(assert (=> b!635683 m!610091))

(declare-fun m!610093 () Bool)

(assert (=> b!635683 m!610093))

(assert (=> b!635683 m!610051))

(assert (=> b!635687 m!610051))

(assert (=> b!635687 m!610051))

(declare-fun m!610095 () Bool)

(assert (=> b!635687 m!610095))

(check-sat (not b!635693) (not b!635674) (not b!635677) (not b!635676) (not b!635684) (not b!635687) (not b!635685) (not start!57458) (not b!635679) (not b!635691) (not b!635678) (not b!635683) (not b!635681))
(check-sat)
(get-model)

(declare-fun d!89699 () Bool)

(declare-fun lt!294048 () SeekEntryResult!6772)

(get-info :version)

(assert (=> d!89699 (and (or ((_ is Undefined!6772) lt!294048) (not ((_ is Found!6772) lt!294048)) (and (bvsge (index!29393 lt!294048) #b00000000000000000000000000000000) (bvslt (index!29393 lt!294048) (size!18689 a!2986)))) (or ((_ is Undefined!6772) lt!294048) ((_ is Found!6772) lt!294048) (not ((_ is MissingZero!6772) lt!294048)) (and (bvsge (index!29392 lt!294048) #b00000000000000000000000000000000) (bvslt (index!29392 lt!294048) (size!18689 a!2986)))) (or ((_ is Undefined!6772) lt!294048) ((_ is Found!6772) lt!294048) ((_ is MissingZero!6772) lt!294048) (not ((_ is MissingVacant!6772) lt!294048)) (and (bvsge (index!29395 lt!294048) #b00000000000000000000000000000000) (bvslt (index!29395 lt!294048) (size!18689 a!2986)))) (or ((_ is Undefined!6772) lt!294048) (ite ((_ is Found!6772) lt!294048) (= (select (arr!18325 a!2986) (index!29393 lt!294048)) k0!1786) (ite ((_ is MissingZero!6772) lt!294048) (= (select (arr!18325 a!2986) (index!29392 lt!294048)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6772) lt!294048) (= (select (arr!18325 a!2986) (index!29395 lt!294048)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!363666 () SeekEntryResult!6772)

(assert (=> d!89699 (= lt!294048 e!363666)))

(declare-fun c!72515 () Bool)

(declare-fun lt!294047 () SeekEntryResult!6772)

(assert (=> d!89699 (= c!72515 (and ((_ is Intermediate!6772) lt!294047) (undefined!7584 lt!294047)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38204 (_ BitVec 32)) SeekEntryResult!6772)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89699 (= lt!294047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89699 (validMask!0 mask!3053)))

(assert (=> d!89699 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!294048)))

(declare-fun b!635766 () Bool)

(declare-fun e!363665 () SeekEntryResult!6772)

(assert (=> b!635766 (= e!363665 (MissingZero!6772 (index!29394 lt!294047)))))

(declare-fun b!635767 () Bool)

(assert (=> b!635767 (= e!363665 (seekKeyOrZeroReturnVacant!0 (x!58164 lt!294047) (index!29394 lt!294047) (index!29394 lt!294047) k0!1786 a!2986 mask!3053))))

(declare-fun b!635768 () Bool)

(assert (=> b!635768 (= e!363666 Undefined!6772)))

(declare-fun b!635769 () Bool)

(declare-fun e!363667 () SeekEntryResult!6772)

(assert (=> b!635769 (= e!363666 e!363667)))

(declare-fun lt!294046 () (_ BitVec 64))

(assert (=> b!635769 (= lt!294046 (select (arr!18325 a!2986) (index!29394 lt!294047)))))

(declare-fun c!72513 () Bool)

(assert (=> b!635769 (= c!72513 (= lt!294046 k0!1786))))

(declare-fun b!635770 () Bool)

(assert (=> b!635770 (= e!363667 (Found!6772 (index!29394 lt!294047)))))

(declare-fun b!635771 () Bool)

(declare-fun c!72514 () Bool)

(assert (=> b!635771 (= c!72514 (= lt!294046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635771 (= e!363667 e!363665)))

(assert (= (and d!89699 c!72515) b!635768))

(assert (= (and d!89699 (not c!72515)) b!635769))

(assert (= (and b!635769 c!72513) b!635770))

(assert (= (and b!635769 (not c!72513)) b!635771))

(assert (= (and b!635771 c!72514) b!635766))

(assert (= (and b!635771 (not c!72514)) b!635767))

(assert (=> d!89699 m!610079))

(declare-fun m!610149 () Bool)

(assert (=> d!89699 m!610149))

(declare-fun m!610151 () Bool)

(assert (=> d!89699 m!610151))

(declare-fun m!610153 () Bool)

(assert (=> d!89699 m!610153))

(declare-fun m!610155 () Bool)

(assert (=> d!89699 m!610155))

(assert (=> d!89699 m!610151))

(declare-fun m!610157 () Bool)

(assert (=> d!89699 m!610157))

(declare-fun m!610159 () Bool)

(assert (=> b!635767 m!610159))

(declare-fun m!610161 () Bool)

(assert (=> b!635769 m!610161))

(assert (=> b!635693 d!89699))

(declare-fun d!89701 () Bool)

(declare-fun res!411478 () Bool)

(declare-fun e!363676 () Bool)

(assert (=> d!89701 (=> res!411478 e!363676)))

(assert (=> d!89701 (= res!411478 (bvsge #b00000000000000000000000000000000 (size!18689 a!2986)))))

(assert (=> d!89701 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!363676)))

(declare-fun b!635780 () Bool)

(declare-fun e!363675 () Bool)

(declare-fun call!33413 () Bool)

(assert (=> b!635780 (= e!363675 call!33413)))

(declare-fun b!635781 () Bool)

(declare-fun e!363674 () Bool)

(assert (=> b!635781 (= e!363674 call!33413)))

(declare-fun b!635782 () Bool)

(assert (=> b!635782 (= e!363674 e!363675)))

(declare-fun lt!294057 () (_ BitVec 64))

(assert (=> b!635782 (= lt!294057 (select (arr!18325 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!294056 () Unit!21446)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38204 (_ BitVec 64) (_ BitVec 32)) Unit!21446)

(assert (=> b!635782 (= lt!294056 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!294057 #b00000000000000000000000000000000))))

(assert (=> b!635782 (arrayContainsKey!0 a!2986 lt!294057 #b00000000000000000000000000000000)))

(declare-fun lt!294055 () Unit!21446)

(assert (=> b!635782 (= lt!294055 lt!294056)))

(declare-fun res!411479 () Bool)

(assert (=> b!635782 (= res!411479 (= (seekEntryOrOpen!0 (select (arr!18325 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6772 #b00000000000000000000000000000000)))))

(assert (=> b!635782 (=> (not res!411479) (not e!363675))))

(declare-fun bm!33410 () Bool)

(assert (=> bm!33410 (= call!33413 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!635783 () Bool)

(assert (=> b!635783 (= e!363676 e!363674)))

(declare-fun c!72518 () Bool)

(assert (=> b!635783 (= c!72518 (validKeyInArray!0 (select (arr!18325 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89701 (not res!411478)) b!635783))

(assert (= (and b!635783 c!72518) b!635782))

(assert (= (and b!635783 (not c!72518)) b!635781))

(assert (= (and b!635782 res!411479) b!635780))

(assert (= (or b!635780 b!635781) bm!33410))

(declare-fun m!610163 () Bool)

(assert (=> b!635782 m!610163))

(declare-fun m!610165 () Bool)

(assert (=> b!635782 m!610165))

(declare-fun m!610167 () Bool)

(assert (=> b!635782 m!610167))

(assert (=> b!635782 m!610163))

(declare-fun m!610169 () Bool)

(assert (=> b!635782 m!610169))

(declare-fun m!610171 () Bool)

(assert (=> bm!33410 m!610171))

(assert (=> b!635783 m!610163))

(assert (=> b!635783 m!610163))

(declare-fun m!610173 () Bool)

(assert (=> b!635783 m!610173))

(assert (=> b!635681 d!89701))

(declare-fun lt!294063 () SeekEntryResult!6772)

(declare-fun d!89703 () Bool)

(assert (=> d!89703 (and (or ((_ is Undefined!6772) lt!294063) (not ((_ is Found!6772) lt!294063)) (and (bvsge (index!29393 lt!294063) #b00000000000000000000000000000000) (bvslt (index!29393 lt!294063) (size!18689 a!2986)))) (or ((_ is Undefined!6772) lt!294063) ((_ is Found!6772) lt!294063) (not ((_ is MissingVacant!6772) lt!294063)) (not (= (index!29395 lt!294063) vacantSpotIndex!68)) (and (bvsge (index!29395 lt!294063) #b00000000000000000000000000000000) (bvslt (index!29395 lt!294063) (size!18689 a!2986)))) (or ((_ is Undefined!6772) lt!294063) (ite ((_ is Found!6772) lt!294063) (= (select (arr!18325 a!2986) (index!29393 lt!294063)) (select (arr!18325 a!2986) j!136)) (and ((_ is MissingVacant!6772) lt!294063) (= (index!29395 lt!294063) vacantSpotIndex!68) (= (select (arr!18325 a!2986) (index!29395 lt!294063)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!363693 () SeekEntryResult!6772)

(assert (=> d!89703 (= lt!294063 e!363693)))

(declare-fun c!72528 () Bool)

(assert (=> d!89703 (= c!72528 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294062 () (_ BitVec 64))

(assert (=> d!89703 (= lt!294062 (select (arr!18325 a!2986) index!984))))

(assert (=> d!89703 (validMask!0 mask!3053)))

(assert (=> d!89703 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18325 a!2986) j!136) a!2986 mask!3053) lt!294063)))

(declare-fun b!635806 () Bool)

(assert (=> b!635806 (= e!363693 Undefined!6772)))

(declare-fun b!635807 () Bool)

(declare-fun e!363691 () SeekEntryResult!6772)

(assert (=> b!635807 (= e!363691 (Found!6772 index!984))))

(declare-fun b!635808 () Bool)

(assert (=> b!635808 (= e!363693 e!363691)))

(declare-fun c!72529 () Bool)

(assert (=> b!635808 (= c!72529 (= lt!294062 (select (arr!18325 a!2986) j!136)))))

(declare-fun b!635809 () Bool)

(declare-fun e!363692 () SeekEntryResult!6772)

(assert (=> b!635809 (= e!363692 (MissingVacant!6772 vacantSpotIndex!68))))

(declare-fun b!635810 () Bool)

(assert (=> b!635810 (= e!363692 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18325 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635811 () Bool)

(declare-fun c!72527 () Bool)

(assert (=> b!635811 (= c!72527 (= lt!294062 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635811 (= e!363691 e!363692)))

(assert (= (and d!89703 c!72528) b!635806))

(assert (= (and d!89703 (not c!72528)) b!635808))

(assert (= (and b!635808 c!72529) b!635807))

(assert (= (and b!635808 (not c!72529)) b!635811))

(assert (= (and b!635811 c!72527) b!635809))

(assert (= (and b!635811 (not c!72527)) b!635810))

(declare-fun m!610175 () Bool)

(assert (=> d!89703 m!610175))

(declare-fun m!610177 () Bool)

(assert (=> d!89703 m!610177))

(assert (=> d!89703 m!610049))

(assert (=> d!89703 m!610079))

(assert (=> b!635810 m!610083))

(assert (=> b!635810 m!610083))

(assert (=> b!635810 m!610051))

(declare-fun m!610179 () Bool)

(assert (=> b!635810 m!610179))

(assert (=> b!635691 d!89703))

(declare-fun d!89709 () Bool)

(assert (=> d!89709 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57458 d!89709))

(declare-fun d!89721 () Bool)

(assert (=> d!89721 (= (array_inv!14099 a!2986) (bvsge (size!18689 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57458 d!89721))

(declare-fun d!89723 () Bool)

(declare-fun res!411510 () Bool)

(declare-fun e!363719 () Bool)

(assert (=> d!89723 (=> res!411510 e!363719)))

(assert (=> d!89723 (= res!411510 (= (select (arr!18325 lt!294003) index!984) (select (arr!18325 a!2986) j!136)))))

(assert (=> d!89723 (= (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) index!984) e!363719)))

(declare-fun b!635838 () Bool)

(declare-fun e!363720 () Bool)

(assert (=> b!635838 (= e!363719 e!363720)))

(declare-fun res!411511 () Bool)

(assert (=> b!635838 (=> (not res!411511) (not e!363720))))

(assert (=> b!635838 (= res!411511 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18689 lt!294003)))))

(declare-fun b!635839 () Bool)

(assert (=> b!635839 (= e!363720 (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89723 (not res!411510)) b!635838))

(assert (= (and b!635838 res!411511) b!635839))

(declare-fun m!610207 () Bool)

(assert (=> d!89723 m!610207))

(assert (=> b!635839 m!610051))

(declare-fun m!610209 () Bool)

(assert (=> b!635839 m!610209))

(assert (=> b!635679 d!89723))

(declare-fun d!89727 () Bool)

(assert (=> d!89727 (= (validKeyInArray!0 (select (arr!18325 a!2986) j!136)) (and (not (= (select (arr!18325 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18325 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!635678 d!89727))

(declare-fun d!89729 () Bool)

(declare-fun res!411516 () Bool)

(declare-fun e!363725 () Bool)

(assert (=> d!89729 (=> res!411516 e!363725)))

(assert (=> d!89729 (= res!411516 ((_ is Nil!12416) Nil!12416))))

(assert (=> d!89729 (= (noDuplicate!377 Nil!12416) e!363725)))

(declare-fun b!635844 () Bool)

(declare-fun e!363726 () Bool)

(assert (=> b!635844 (= e!363725 e!363726)))

(declare-fun res!411517 () Bool)

(assert (=> b!635844 (=> (not res!411517) (not e!363726))))

(declare-fun contains!3102 (List!12419 (_ BitVec 64)) Bool)

(assert (=> b!635844 (= res!411517 (not (contains!3102 (t!18655 Nil!12416) (h!13460 Nil!12416))))))

(declare-fun b!635845 () Bool)

(assert (=> b!635845 (= e!363726 (noDuplicate!377 (t!18655 Nil!12416)))))

(assert (= (and d!89729 (not res!411516)) b!635844))

(assert (= (and b!635844 res!411517) b!635845))

(declare-fun m!610211 () Bool)

(assert (=> b!635844 m!610211))

(declare-fun m!610213 () Bool)

(assert (=> b!635845 m!610213))

(assert (=> b!635677 d!89729))

(declare-fun d!89731 () Bool)

(declare-fun res!411518 () Bool)

(declare-fun e!363727 () Bool)

(assert (=> d!89731 (=> res!411518 e!363727)))

(assert (=> d!89731 (= res!411518 (= (select (arr!18325 lt!294003) j!136) (select (arr!18325 a!2986) j!136)))))

(assert (=> d!89731 (= (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) j!136) e!363727)))

(declare-fun b!635846 () Bool)

(declare-fun e!363728 () Bool)

(assert (=> b!635846 (= e!363727 e!363728)))

(declare-fun res!411519 () Bool)

(assert (=> b!635846 (=> (not res!411519) (not e!363728))))

(assert (=> b!635846 (= res!411519 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18689 lt!294003)))))

(declare-fun b!635847 () Bool)

(assert (=> b!635847 (= e!363728 (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89731 (not res!411518)) b!635846))

(assert (= (and b!635846 res!411519) b!635847))

(declare-fun m!610215 () Bool)

(assert (=> d!89731 m!610215))

(assert (=> b!635847 m!610051))

(declare-fun m!610217 () Bool)

(assert (=> b!635847 m!610217))

(assert (=> b!635687 d!89731))

(declare-fun b!635870 () Bool)

(declare-fun e!363744 () Bool)

(declare-fun e!363743 () Bool)

(assert (=> b!635870 (= e!363744 e!363743)))

(declare-fun res!411526 () Bool)

(assert (=> b!635870 (=> (not res!411526) (not e!363743))))

(declare-fun e!363746 () Bool)

(assert (=> b!635870 (= res!411526 (not e!363746))))

(declare-fun res!411528 () Bool)

(assert (=> b!635870 (=> (not res!411528) (not e!363746))))

(assert (=> b!635870 (= res!411528 (validKeyInArray!0 (select (arr!18325 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!635871 () Bool)

(declare-fun e!363745 () Bool)

(declare-fun call!33419 () Bool)

(assert (=> b!635871 (= e!363745 call!33419)))

(declare-fun bm!33416 () Bool)

(declare-fun c!72539 () Bool)

(assert (=> bm!33416 (= call!33419 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72539 (Cons!12415 (select (arr!18325 a!2986) #b00000000000000000000000000000000) Nil!12416) Nil!12416)))))

(declare-fun b!635872 () Bool)

(assert (=> b!635872 (= e!363743 e!363745)))

(assert (=> b!635872 (= c!72539 (validKeyInArray!0 (select (arr!18325 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!635873 () Bool)

(assert (=> b!635873 (= e!363745 call!33419)))

(declare-fun b!635874 () Bool)

(assert (=> b!635874 (= e!363746 (contains!3102 Nil!12416 (select (arr!18325 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89733 () Bool)

(declare-fun res!411527 () Bool)

(assert (=> d!89733 (=> res!411527 e!363744)))

(assert (=> d!89733 (= res!411527 (bvsge #b00000000000000000000000000000000 (size!18689 a!2986)))))

(assert (=> d!89733 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12416) e!363744)))

(assert (= (and d!89733 (not res!411527)) b!635870))

(assert (= (and b!635870 res!411528) b!635874))

(assert (= (and b!635870 res!411526) b!635872))

(assert (= (and b!635872 c!72539) b!635871))

(assert (= (and b!635872 (not c!72539)) b!635873))

(assert (= (or b!635871 b!635873) bm!33416))

(assert (=> b!635870 m!610163))

(assert (=> b!635870 m!610163))

(assert (=> b!635870 m!610173))

(assert (=> bm!33416 m!610163))

(declare-fun m!610219 () Bool)

(assert (=> bm!33416 m!610219))

(assert (=> b!635872 m!610163))

(assert (=> b!635872 m!610163))

(assert (=> b!635872 m!610173))

(assert (=> b!635874 m!610163))

(assert (=> b!635874 m!610163))

(declare-fun m!610221 () Bool)

(assert (=> b!635874 m!610221))

(assert (=> b!635676 d!89733))

(declare-fun d!89735 () Bool)

(declare-fun res!411529 () Bool)

(declare-fun e!363750 () Bool)

(assert (=> d!89735 (=> res!411529 e!363750)))

(assert (=> d!89735 (= res!411529 (= (select (arr!18325 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89735 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!363750)))

(declare-fun b!635881 () Bool)

(declare-fun e!363751 () Bool)

(assert (=> b!635881 (= e!363750 e!363751)))

(declare-fun res!411530 () Bool)

(assert (=> b!635881 (=> (not res!411530) (not e!363751))))

(assert (=> b!635881 (= res!411530 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18689 a!2986)))))

(declare-fun b!635882 () Bool)

(assert (=> b!635882 (= e!363751 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89735 (not res!411529)) b!635881))

(assert (= (and b!635881 res!411530) b!635882))

(assert (=> d!89735 m!610163))

(declare-fun m!610223 () Bool)

(assert (=> b!635882 m!610223))

(assert (=> b!635685 d!89735))

(declare-fun d!89737 () Bool)

(declare-fun res!411531 () Bool)

(declare-fun e!363752 () Bool)

(assert (=> d!89737 (=> res!411531 e!363752)))

(assert (=> d!89737 (= res!411531 (= (select (arr!18325 lt!294003) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18325 a!2986) j!136)))))

(assert (=> d!89737 (= (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!363752)))

(declare-fun b!635883 () Bool)

(declare-fun e!363753 () Bool)

(assert (=> b!635883 (= e!363752 e!363753)))

(declare-fun res!411532 () Bool)

(assert (=> b!635883 (=> (not res!411532) (not e!363753))))

(assert (=> b!635883 (= res!411532 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18689 lt!294003)))))

(declare-fun b!635884 () Bool)

(assert (=> b!635884 (= e!363753 (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89737 (not res!411531)) b!635883))

(assert (= (and b!635883 res!411532) b!635884))

(declare-fun m!610235 () Bool)

(assert (=> d!89737 m!610235))

(assert (=> b!635884 m!610051))

(declare-fun m!610237 () Bool)

(assert (=> b!635884 m!610237))

(assert (=> b!635674 d!89737))

(declare-fun d!89741 () Bool)

(assert (=> d!89741 (arrayContainsKey!0 lt!294003 (select (arr!18325 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294086 () Unit!21446)

(declare-fun choose!114 (array!38204 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21446)

(assert (=> d!89741 (= lt!294086 (choose!114 lt!294003 (select (arr!18325 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!89741 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!89741 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294003 (select (arr!18325 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!294086)))

(declare-fun bs!19101 () Bool)

(assert (= bs!19101 d!89741))

(assert (=> bs!19101 m!610051))

(assert (=> bs!19101 m!610069))

(assert (=> bs!19101 m!610051))

(declare-fun m!610239 () Bool)

(assert (=> bs!19101 m!610239))

(assert (=> b!635674 d!89741))

(declare-fun d!89743 () Bool)

(assert (=> d!89743 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!635684 d!89743))

(declare-fun d!89745 () Bool)

(declare-fun lt!294094 () (_ BitVec 32))

(assert (=> d!89745 (and (bvsge lt!294094 #b00000000000000000000000000000000) (bvslt lt!294094 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89745 (= lt!294094 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89745 (validMask!0 mask!3053)))

(assert (=> d!89745 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294094)))

(declare-fun bs!19103 () Bool)

(assert (= bs!19103 d!89745))

(declare-fun m!610259 () Bool)

(assert (=> bs!19103 m!610259))

(assert (=> bs!19103 m!610079))

(assert (=> b!635683 d!89745))

(declare-fun lt!294096 () SeekEntryResult!6772)

(declare-fun d!89753 () Bool)

(assert (=> d!89753 (and (or ((_ is Undefined!6772) lt!294096) (not ((_ is Found!6772) lt!294096)) (and (bvsge (index!29393 lt!294096) #b00000000000000000000000000000000) (bvslt (index!29393 lt!294096) (size!18689 a!2986)))) (or ((_ is Undefined!6772) lt!294096) ((_ is Found!6772) lt!294096) (not ((_ is MissingVacant!6772) lt!294096)) (not (= (index!29395 lt!294096) vacantSpotIndex!68)) (and (bvsge (index!29395 lt!294096) #b00000000000000000000000000000000) (bvslt (index!29395 lt!294096) (size!18689 a!2986)))) (or ((_ is Undefined!6772) lt!294096) (ite ((_ is Found!6772) lt!294096) (= (select (arr!18325 a!2986) (index!29393 lt!294096)) (select (arr!18325 a!2986) j!136)) (and ((_ is MissingVacant!6772) lt!294096) (= (index!29395 lt!294096) vacantSpotIndex!68) (= (select (arr!18325 a!2986) (index!29395 lt!294096)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!363768 () SeekEntryResult!6772)

(assert (=> d!89753 (= lt!294096 e!363768)))

(declare-fun c!72556 () Bool)

(assert (=> d!89753 (= c!72556 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294095 () (_ BitVec 64))

(assert (=> d!89753 (= lt!294095 (select (arr!18325 a!2986) lt!293996))))

(assert (=> d!89753 (validMask!0 mask!3053)))

(assert (=> d!89753 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 (select (arr!18325 a!2986) j!136) a!2986 mask!3053) lt!294096)))

(declare-fun b!635909 () Bool)

(assert (=> b!635909 (= e!363768 Undefined!6772)))

(declare-fun b!635910 () Bool)

(declare-fun e!363766 () SeekEntryResult!6772)

(assert (=> b!635910 (= e!363766 (Found!6772 lt!293996))))

(declare-fun b!635911 () Bool)

(assert (=> b!635911 (= e!363768 e!363766)))

(declare-fun c!72557 () Bool)

(assert (=> b!635911 (= c!72557 (= lt!294095 (select (arr!18325 a!2986) j!136)))))

(declare-fun b!635912 () Bool)

(declare-fun e!363767 () SeekEntryResult!6772)

(assert (=> b!635912 (= e!363767 (MissingVacant!6772 vacantSpotIndex!68))))

(declare-fun b!635913 () Bool)

(assert (=> b!635913 (= e!363767 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293996 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18325 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635914 () Bool)

(declare-fun c!72555 () Bool)

(assert (=> b!635914 (= c!72555 (= lt!294095 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635914 (= e!363766 e!363767)))

(assert (= (and d!89753 c!72556) b!635909))

(assert (= (and d!89753 (not c!72556)) b!635911))

(assert (= (and b!635911 c!72557) b!635910))

(assert (= (and b!635911 (not c!72557)) b!635914))

(assert (= (and b!635914 c!72555) b!635912))

(assert (= (and b!635914 (not c!72555)) b!635913))

(declare-fun m!610261 () Bool)

(assert (=> d!89753 m!610261))

(declare-fun m!610263 () Bool)

(assert (=> d!89753 m!610263))

(declare-fun m!610265 () Bool)

(assert (=> d!89753 m!610265))

(assert (=> d!89753 m!610079))

(declare-fun m!610267 () Bool)

(assert (=> b!635913 m!610267))

(assert (=> b!635913 m!610267))

(assert (=> b!635913 m!610051))

(declare-fun m!610269 () Bool)

(assert (=> b!635913 m!610269))

(assert (=> b!635683 d!89753))

(declare-fun d!89755 () Bool)

(declare-fun lt!294098 () SeekEntryResult!6772)

(assert (=> d!89755 (and (or ((_ is Undefined!6772) lt!294098) (not ((_ is Found!6772) lt!294098)) (and (bvsge (index!29393 lt!294098) #b00000000000000000000000000000000) (bvslt (index!29393 lt!294098) (size!18689 lt!294003)))) (or ((_ is Undefined!6772) lt!294098) ((_ is Found!6772) lt!294098) (not ((_ is MissingVacant!6772) lt!294098)) (not (= (index!29395 lt!294098) vacantSpotIndex!68)) (and (bvsge (index!29395 lt!294098) #b00000000000000000000000000000000) (bvslt (index!29395 lt!294098) (size!18689 lt!294003)))) (or ((_ is Undefined!6772) lt!294098) (ite ((_ is Found!6772) lt!294098) (= (select (arr!18325 lt!294003) (index!29393 lt!294098)) lt!294000) (and ((_ is MissingVacant!6772) lt!294098) (= (index!29395 lt!294098) vacantSpotIndex!68) (= (select (arr!18325 lt!294003) (index!29395 lt!294098)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!363771 () SeekEntryResult!6772)

(assert (=> d!89755 (= lt!294098 e!363771)))

(declare-fun c!72559 () Bool)

(assert (=> d!89755 (= c!72559 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294097 () (_ BitVec 64))

(assert (=> d!89755 (= lt!294097 (select (arr!18325 lt!294003) lt!293996))))

(assert (=> d!89755 (validMask!0 mask!3053)))

(assert (=> d!89755 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 lt!294000 lt!294003 mask!3053) lt!294098)))

(declare-fun b!635915 () Bool)

(assert (=> b!635915 (= e!363771 Undefined!6772)))

(declare-fun b!635916 () Bool)

(declare-fun e!363769 () SeekEntryResult!6772)

(assert (=> b!635916 (= e!363769 (Found!6772 lt!293996))))

(declare-fun b!635917 () Bool)

(assert (=> b!635917 (= e!363771 e!363769)))

(declare-fun c!72560 () Bool)

(assert (=> b!635917 (= c!72560 (= lt!294097 lt!294000))))

(declare-fun b!635918 () Bool)

(declare-fun e!363770 () SeekEntryResult!6772)

(assert (=> b!635918 (= e!363770 (MissingVacant!6772 vacantSpotIndex!68))))

(declare-fun b!635919 () Bool)

(assert (=> b!635919 (= e!363770 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293996 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294000 lt!294003 mask!3053))))

(declare-fun b!635920 () Bool)

(declare-fun c!72558 () Bool)

(assert (=> b!635920 (= c!72558 (= lt!294097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635920 (= e!363769 e!363770)))

(assert (= (and d!89755 c!72559) b!635915))

(assert (= (and d!89755 (not c!72559)) b!635917))

(assert (= (and b!635917 c!72560) b!635916))

(assert (= (and b!635917 (not c!72560)) b!635920))

(assert (= (and b!635920 c!72558) b!635918))

(assert (= (and b!635920 (not c!72558)) b!635919))

(declare-fun m!610271 () Bool)

(assert (=> d!89755 m!610271))

(declare-fun m!610273 () Bool)

(assert (=> d!89755 m!610273))

(declare-fun m!610275 () Bool)

(assert (=> d!89755 m!610275))

(assert (=> d!89755 m!610079))

(assert (=> b!635919 m!610267))

(assert (=> b!635919 m!610267))

(declare-fun m!610277 () Bool)

(assert (=> b!635919 m!610277))

(assert (=> b!635683 d!89755))

(declare-fun lt!294103 () SeekEntryResult!6772)

(declare-fun d!89757 () Bool)

(assert (=> d!89757 (and (or ((_ is Undefined!6772) lt!294103) (not ((_ is Found!6772) lt!294103)) (and (bvsge (index!29393 lt!294103) #b00000000000000000000000000000000) (bvslt (index!29393 lt!294103) (size!18689 lt!294003)))) (or ((_ is Undefined!6772) lt!294103) ((_ is Found!6772) lt!294103) (not ((_ is MissingVacant!6772) lt!294103)) (not (= (index!29395 lt!294103) vacantSpotIndex!68)) (and (bvsge (index!29395 lt!294103) #b00000000000000000000000000000000) (bvslt (index!29395 lt!294103) (size!18689 lt!294003)))) (or ((_ is Undefined!6772) lt!294103) (ite ((_ is Found!6772) lt!294103) (= (select (arr!18325 lt!294003) (index!29393 lt!294103)) lt!294000) (and ((_ is MissingVacant!6772) lt!294103) (= (index!29395 lt!294103) vacantSpotIndex!68) (= (select (arr!18325 lt!294003) (index!29395 lt!294103)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!363777 () SeekEntryResult!6772)

(assert (=> d!89757 (= lt!294103 e!363777)))

(declare-fun c!72565 () Bool)

(assert (=> d!89757 (= c!72565 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294102 () (_ BitVec 64))

(assert (=> d!89757 (= lt!294102 (select (arr!18325 lt!294003) index!984))))

(assert (=> d!89757 (validMask!0 mask!3053)))

(assert (=> d!89757 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294000 lt!294003 mask!3053) lt!294103)))

(declare-fun b!635927 () Bool)

(assert (=> b!635927 (= e!363777 Undefined!6772)))

(declare-fun b!635928 () Bool)

(declare-fun e!363775 () SeekEntryResult!6772)

(assert (=> b!635928 (= e!363775 (Found!6772 index!984))))

(declare-fun b!635929 () Bool)

(assert (=> b!635929 (= e!363777 e!363775)))

(declare-fun c!72566 () Bool)

(assert (=> b!635929 (= c!72566 (= lt!294102 lt!294000))))

(declare-fun b!635930 () Bool)

(declare-fun e!363776 () SeekEntryResult!6772)

(assert (=> b!635930 (= e!363776 (MissingVacant!6772 vacantSpotIndex!68))))

(declare-fun b!635931 () Bool)

(assert (=> b!635931 (= e!363776 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294000 lt!294003 mask!3053))))

(declare-fun b!635932 () Bool)

(declare-fun c!72564 () Bool)

(assert (=> b!635932 (= c!72564 (= lt!294102 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635932 (= e!363775 e!363776)))

(assert (= (and d!89757 c!72565) b!635927))

(assert (= (and d!89757 (not c!72565)) b!635929))

(assert (= (and b!635929 c!72566) b!635928))

(assert (= (and b!635929 (not c!72566)) b!635932))

(assert (= (and b!635932 c!72564) b!635930))

(assert (= (and b!635932 (not c!72564)) b!635931))

(declare-fun m!610293 () Bool)

(assert (=> d!89757 m!610293))

(declare-fun m!610295 () Bool)

(assert (=> d!89757 m!610295))

(assert (=> d!89757 m!610207))

(assert (=> d!89757 m!610079))

(assert (=> b!635931 m!610083))

(assert (=> b!635931 m!610083))

(declare-fun m!610297 () Bool)

(assert (=> b!635931 m!610297))

(assert (=> b!635683 d!89757))

(declare-fun d!89761 () Bool)

(declare-fun e!363794 () Bool)

(assert (=> d!89761 e!363794))

(declare-fun res!411537 () Bool)

(assert (=> d!89761 (=> (not res!411537) (not e!363794))))

(assert (=> d!89761 (= res!411537 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18689 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18689 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18689 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18689 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18689 a!2986))))))

(declare-fun lt!294116 () Unit!21446)

(declare-fun choose!9 (array!38204 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21446)

(assert (=> d!89761 (= lt!294116 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89761 (validMask!0 mask!3053)))

(assert (=> d!89761 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 mask!3053) lt!294116)))

(declare-fun b!635961 () Bool)

(assert (=> b!635961 (= e!363794 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 (select (arr!18325 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293996 vacantSpotIndex!68 (select (store (arr!18325 a!2986) i!1108 k0!1786) j!136) (array!38205 (store (arr!18325 a!2986) i!1108 k0!1786) (size!18689 a!2986)) mask!3053)))))

(assert (= (and d!89761 res!411537) b!635961))

(declare-fun m!610301 () Bool)

(assert (=> d!89761 m!610301))

(assert (=> d!89761 m!610079))

(assert (=> b!635961 m!610051))

(assert (=> b!635961 m!610089))

(assert (=> b!635961 m!610085))

(assert (=> b!635961 m!610045))

(assert (=> b!635961 m!610051))

(assert (=> b!635961 m!610085))

(declare-fun m!610303 () Bool)

(assert (=> b!635961 m!610303))

(assert (=> b!635683 d!89761))

(check-sat (not b!635847) (not d!89703) (not b!635839) (not b!635810) (not d!89741) (not d!89761) (not b!635783) (not d!89757) (not b!635931) (not b!635872) (not d!89745) (not b!635874) (not bm!33410) (not b!635870) (not d!89699) (not d!89753) (not b!635884) (not b!635961) (not b!635782) (not d!89755) (not b!635913) (not b!635767) (not bm!33416) (not b!635919) (not b!635844) (not b!635882) (not b!635845))
(check-sat)
