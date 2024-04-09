; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58468 () Bool)

(assert start!58468)

(declare-fun b!645562 () Bool)

(declare-fun e!369991 () Bool)

(declare-fun e!369993 () Bool)

(assert (=> b!645562 (= e!369991 (not e!369993))))

(declare-fun res!418422 () Bool)

(assert (=> b!645562 (=> res!418422 e!369993)))

(declare-datatypes ((SeekEntryResult!6875 0))(
  ( (MissingZero!6875 (index!29834 (_ BitVec 32))) (Found!6875 (index!29835 (_ BitVec 32))) (Intermediate!6875 (undefined!7687 Bool) (index!29836 (_ BitVec 32)) (x!58629 (_ BitVec 32))) (Undefined!6875) (MissingVacant!6875 (index!29837 (_ BitVec 32))) )
))
(declare-fun lt!299474 () SeekEntryResult!6875)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!645562 (= res!418422 (not (= lt!299474 (Found!6875 index!984))))))

(declare-datatypes ((Unit!21922 0))(
  ( (Unit!21923) )
))
(declare-fun lt!299482 () Unit!21922)

(declare-fun e!369997 () Unit!21922)

(assert (=> b!645562 (= lt!299482 e!369997)))

(declare-fun c!73939 () Bool)

(assert (=> b!645562 (= c!73939 (= lt!299474 Undefined!6875))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38440 0))(
  ( (array!38441 (arr!18428 (Array (_ BitVec 32) (_ BitVec 64))) (size!18792 (_ BitVec 32))) )
))
(declare-fun lt!299486 () array!38440)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!299487 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38440 (_ BitVec 32)) SeekEntryResult!6875)

(assert (=> b!645562 (= lt!299474 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299487 lt!299486 mask!3053))))

(declare-fun e!369996 () Bool)

(assert (=> b!645562 e!369996))

(declare-fun res!418433 () Bool)

(assert (=> b!645562 (=> (not res!418433) (not e!369996))))

(declare-fun lt!299475 () (_ BitVec 32))

(declare-fun lt!299473 () SeekEntryResult!6875)

(assert (=> b!645562 (= res!418433 (= lt!299473 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299475 vacantSpotIndex!68 lt!299487 lt!299486 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38440)

(assert (=> b!645562 (= lt!299473 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299475 vacantSpotIndex!68 (select (arr!18428 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!645562 (= lt!299487 (select (store (arr!18428 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299480 () Unit!21922)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21922)

(assert (=> b!645562 (= lt!299480 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299475 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645562 (= lt!299475 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645563 () Bool)

(declare-fun e!369989 () Unit!21922)

(declare-fun Unit!21924 () Unit!21922)

(assert (=> b!645563 (= e!369989 Unit!21924)))

(declare-fun lt!299485 () Unit!21922)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38440 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21922)

(assert (=> b!645563 (= lt!299485 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299486 (select (arr!18428 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645563 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299478 () Unit!21922)

(declare-datatypes ((List!12522 0))(
  ( (Nil!12519) (Cons!12518 (h!13563 (_ BitVec 64)) (t!18758 List!12522)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38440 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12522) Unit!21922)

(assert (=> b!645563 (= lt!299478 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12519))))

(declare-fun arrayNoDuplicates!0 (array!38440 (_ BitVec 32) List!12522) Bool)

(assert (=> b!645563 (arrayNoDuplicates!0 lt!299486 #b00000000000000000000000000000000 Nil!12519)))

(declare-fun lt!299479 () Unit!21922)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38440 (_ BitVec 32) (_ BitVec 32)) Unit!21922)

(assert (=> b!645563 (= lt!299479 (lemmaNoDuplicateFromThenFromBigger!0 lt!299486 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645563 (arrayNoDuplicates!0 lt!299486 j!136 Nil!12519)))

(declare-fun lt!299476 () Unit!21922)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38440 (_ BitVec 64) (_ BitVec 32) List!12522) Unit!21922)

(assert (=> b!645563 (= lt!299476 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299486 (select (arr!18428 a!2986) j!136) j!136 Nil!12519))))

(assert (=> b!645563 false))

(declare-fun b!645564 () Bool)

(declare-fun res!418426 () Bool)

(declare-fun e!369999 () Bool)

(assert (=> b!645564 (=> (not res!418426) (not e!369999))))

(assert (=> b!645564 (= res!418426 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645566 () Bool)

(declare-fun res!418421 () Bool)

(declare-fun e!370003 () Bool)

(assert (=> b!645566 (=> (not res!418421) (not e!370003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38440 (_ BitVec 32)) Bool)

(assert (=> b!645566 (= res!418421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645567 () Bool)

(declare-fun e!369994 () Bool)

(declare-fun e!369995 () Bool)

(assert (=> b!645567 (= e!369994 e!369995)))

(declare-fun res!418420 () Bool)

(assert (=> b!645567 (=> (not res!418420) (not e!369995))))

(assert (=> b!645567 (= res!418420 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) j!136))))

(declare-fun b!645568 () Bool)

(declare-fun Unit!21925 () Unit!21922)

(assert (=> b!645568 (= e!369989 Unit!21925)))

(declare-fun b!645569 () Bool)

(declare-fun res!418431 () Bool)

(assert (=> b!645569 (=> (not res!418431) (not e!370003))))

(assert (=> b!645569 (= res!418431 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12519))))

(declare-fun b!645570 () Bool)

(declare-fun e!369992 () Bool)

(assert (=> b!645570 (= e!369992 e!369994)))

(declare-fun res!418436 () Bool)

(assert (=> b!645570 (=> res!418436 e!369994)))

(declare-fun lt!299477 () (_ BitVec 64))

(assert (=> b!645570 (= res!418436 (or (not (= (select (arr!18428 a!2986) j!136) lt!299487)) (not (= (select (arr!18428 a!2986) j!136) lt!299477)) (bvsge j!136 index!984)))))

(declare-fun b!645571 () Bool)

(declare-fun lt!299472 () SeekEntryResult!6875)

(assert (=> b!645571 (= e!369996 (= lt!299472 lt!299473))))

(declare-fun b!645572 () Bool)

(declare-fun e!370001 () Bool)

(declare-fun e!369998 () Bool)

(assert (=> b!645572 (= e!370001 e!369998)))

(declare-fun res!418430 () Bool)

(assert (=> b!645572 (=> res!418430 e!369998)))

(assert (=> b!645572 (= res!418430 (bvsge index!984 j!136))))

(declare-fun lt!299483 () Unit!21922)

(assert (=> b!645572 (= lt!299483 e!369989)))

(declare-fun c!73940 () Bool)

(assert (=> b!645572 (= c!73940 (bvslt j!136 index!984))))

(declare-fun b!645573 () Bool)

(declare-fun res!418418 () Bool)

(assert (=> b!645573 (=> (not res!418418) (not e!369999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645573 (= res!418418 (validKeyInArray!0 k!1786))))

(declare-fun b!645574 () Bool)

(declare-fun e!370000 () Bool)

(assert (=> b!645574 (= e!370000 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) index!984))))

(declare-fun b!645575 () Bool)

(declare-fun res!418428 () Bool)

(assert (=> b!645575 (=> (not res!418428) (not e!370003))))

(assert (=> b!645575 (= res!418428 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18428 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645576 () Bool)

(declare-fun Unit!21926 () Unit!21922)

(assert (=> b!645576 (= e!369997 Unit!21926)))

(assert (=> b!645576 false))

(declare-fun b!645577 () Bool)

(assert (=> b!645577 (= e!369999 e!370003)))

(declare-fun res!418425 () Bool)

(assert (=> b!645577 (=> (not res!418425) (not e!370003))))

(declare-fun lt!299484 () SeekEntryResult!6875)

(assert (=> b!645577 (= res!418425 (or (= lt!299484 (MissingZero!6875 i!1108)) (= lt!299484 (MissingVacant!6875 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38440 (_ BitVec 32)) SeekEntryResult!6875)

(assert (=> b!645577 (= lt!299484 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!645578 () Bool)

(assert (=> b!645578 (= e!369998 (bvslt (size!18792 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!645578 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299481 () Unit!21922)

(assert (=> b!645578 (= lt!299481 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299486 (select (arr!18428 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!645578 e!370000))

(declare-fun res!418423 () Bool)

(assert (=> b!645578 (=> (not res!418423) (not e!370000))))

(assert (=> b!645578 (= res!418423 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) j!136))))

(declare-fun res!418429 () Bool)

(assert (=> start!58468 (=> (not res!418429) (not e!369999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58468 (= res!418429 (validMask!0 mask!3053))))

(assert (=> start!58468 e!369999))

(assert (=> start!58468 true))

(declare-fun array_inv!14202 (array!38440) Bool)

(assert (=> start!58468 (array_inv!14202 a!2986)))

(declare-fun b!645565 () Bool)

(declare-fun e!370002 () Bool)

(assert (=> b!645565 (= e!370003 e!370002)))

(declare-fun res!418435 () Bool)

(assert (=> b!645565 (=> (not res!418435) (not e!370002))))

(assert (=> b!645565 (= res!418435 (= (select (store (arr!18428 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645565 (= lt!299486 (array!38441 (store (arr!18428 a!2986) i!1108 k!1786) (size!18792 a!2986)))))

(declare-fun b!645579 () Bool)

(assert (=> b!645579 (= e!370002 e!369991)))

(declare-fun res!418432 () Bool)

(assert (=> b!645579 (=> (not res!418432) (not e!369991))))

(assert (=> b!645579 (= res!418432 (and (= lt!299472 (Found!6875 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18428 a!2986) index!984) (select (arr!18428 a!2986) j!136))) (not (= (select (arr!18428 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!645579 (= lt!299472 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18428 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645580 () Bool)

(assert (=> b!645580 (= e!369993 e!370001)))

(declare-fun res!418419 () Bool)

(assert (=> b!645580 (=> res!418419 e!370001)))

(assert (=> b!645580 (= res!418419 (or (not (= (select (arr!18428 a!2986) j!136) lt!299487)) (not (= (select (arr!18428 a!2986) j!136) lt!299477))))))

(assert (=> b!645580 e!369992))

(declare-fun res!418434 () Bool)

(assert (=> b!645580 (=> (not res!418434) (not e!369992))))

(assert (=> b!645580 (= res!418434 (= lt!299477 (select (arr!18428 a!2986) j!136)))))

(assert (=> b!645580 (= lt!299477 (select (store (arr!18428 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!645581 () Bool)

(declare-fun res!418424 () Bool)

(assert (=> b!645581 (=> (not res!418424) (not e!369999))))

(assert (=> b!645581 (= res!418424 (and (= (size!18792 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18792 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18792 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645582 () Bool)

(declare-fun res!418427 () Bool)

(assert (=> b!645582 (=> (not res!418427) (not e!369999))))

(assert (=> b!645582 (= res!418427 (validKeyInArray!0 (select (arr!18428 a!2986) j!136)))))

(declare-fun b!645583 () Bool)

(declare-fun Unit!21927 () Unit!21922)

(assert (=> b!645583 (= e!369997 Unit!21927)))

(declare-fun b!645584 () Bool)

(assert (=> b!645584 (= e!369995 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) index!984))))

(assert (= (and start!58468 res!418429) b!645581))

(assert (= (and b!645581 res!418424) b!645582))

(assert (= (and b!645582 res!418427) b!645573))

(assert (= (and b!645573 res!418418) b!645564))

(assert (= (and b!645564 res!418426) b!645577))

(assert (= (and b!645577 res!418425) b!645566))

(assert (= (and b!645566 res!418421) b!645569))

(assert (= (and b!645569 res!418431) b!645575))

(assert (= (and b!645575 res!418428) b!645565))

(assert (= (and b!645565 res!418435) b!645579))

(assert (= (and b!645579 res!418432) b!645562))

(assert (= (and b!645562 res!418433) b!645571))

(assert (= (and b!645562 c!73939) b!645576))

(assert (= (and b!645562 (not c!73939)) b!645583))

(assert (= (and b!645562 (not res!418422)) b!645580))

(assert (= (and b!645580 res!418434) b!645570))

(assert (= (and b!645570 (not res!418436)) b!645567))

(assert (= (and b!645567 res!418420) b!645584))

(assert (= (and b!645580 (not res!418419)) b!645572))

(assert (= (and b!645572 c!73940) b!645563))

(assert (= (and b!645572 (not c!73940)) b!645568))

(assert (= (and b!645572 (not res!418430)) b!645578))

(assert (= (and b!645578 res!418423) b!645574))

(declare-fun m!619127 () Bool)

(assert (=> b!645575 m!619127))

(declare-fun m!619129 () Bool)

(assert (=> b!645562 m!619129))

(declare-fun m!619131 () Bool)

(assert (=> b!645562 m!619131))

(declare-fun m!619133 () Bool)

(assert (=> b!645562 m!619133))

(declare-fun m!619135 () Bool)

(assert (=> b!645562 m!619135))

(declare-fun m!619137 () Bool)

(assert (=> b!645562 m!619137))

(assert (=> b!645562 m!619135))

(declare-fun m!619139 () Bool)

(assert (=> b!645562 m!619139))

(declare-fun m!619141 () Bool)

(assert (=> b!645562 m!619141))

(declare-fun m!619143 () Bool)

(assert (=> b!645562 m!619143))

(declare-fun m!619145 () Bool)

(assert (=> start!58468 m!619145))

(declare-fun m!619147 () Bool)

(assert (=> start!58468 m!619147))

(assert (=> b!645582 m!619135))

(assert (=> b!645582 m!619135))

(declare-fun m!619149 () Bool)

(assert (=> b!645582 m!619149))

(declare-fun m!619151 () Bool)

(assert (=> b!645579 m!619151))

(assert (=> b!645579 m!619135))

(assert (=> b!645579 m!619135))

(declare-fun m!619153 () Bool)

(assert (=> b!645579 m!619153))

(assert (=> b!645563 m!619135))

(declare-fun m!619155 () Bool)

(assert (=> b!645563 m!619155))

(declare-fun m!619157 () Bool)

(assert (=> b!645563 m!619157))

(assert (=> b!645563 m!619135))

(declare-fun m!619159 () Bool)

(assert (=> b!645563 m!619159))

(declare-fun m!619161 () Bool)

(assert (=> b!645563 m!619161))

(assert (=> b!645563 m!619135))

(declare-fun m!619163 () Bool)

(assert (=> b!645563 m!619163))

(assert (=> b!645563 m!619135))

(declare-fun m!619165 () Bool)

(assert (=> b!645563 m!619165))

(declare-fun m!619167 () Bool)

(assert (=> b!645563 m!619167))

(assert (=> b!645565 m!619137))

(declare-fun m!619169 () Bool)

(assert (=> b!645565 m!619169))

(assert (=> b!645574 m!619135))

(assert (=> b!645574 m!619135))

(declare-fun m!619171 () Bool)

(assert (=> b!645574 m!619171))

(declare-fun m!619173 () Bool)

(assert (=> b!645564 m!619173))

(assert (=> b!645580 m!619135))

(assert (=> b!645580 m!619137))

(declare-fun m!619175 () Bool)

(assert (=> b!645580 m!619175))

(declare-fun m!619177 () Bool)

(assert (=> b!645569 m!619177))

(assert (=> b!645578 m!619135))

(assert (=> b!645578 m!619135))

(declare-fun m!619179 () Bool)

(assert (=> b!645578 m!619179))

(assert (=> b!645578 m!619135))

(declare-fun m!619181 () Bool)

(assert (=> b!645578 m!619181))

(assert (=> b!645578 m!619135))

(declare-fun m!619183 () Bool)

(assert (=> b!645578 m!619183))

(assert (=> b!645570 m!619135))

(assert (=> b!645567 m!619135))

(assert (=> b!645567 m!619135))

(assert (=> b!645567 m!619183))

(declare-fun m!619185 () Bool)

(assert (=> b!645577 m!619185))

(declare-fun m!619187 () Bool)

(assert (=> b!645573 m!619187))

(assert (=> b!645584 m!619135))

(assert (=> b!645584 m!619135))

(assert (=> b!645584 m!619171))

(declare-fun m!619189 () Bool)

(assert (=> b!645566 m!619189))

(push 1)

(assert (not b!645566))

(assert (not b!645563))

(assert (not b!645577))

(assert (not b!645584))

(assert (not b!645574))

(assert (not b!645562))

(assert (not b!645578))

(assert (not b!645569))

(assert (not b!645567))

(assert (not b!645564))

(assert (not start!58468))

(assert (not b!645582))

(assert (not b!645579))

(assert (not b!645573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!645638 () Bool)

(declare-fun e!370042 () Bool)

(declare-fun call!33632 () Bool)

(assert (=> b!645638 (= e!370042 call!33632)))

(declare-fun b!645639 () Bool)

(declare-fun e!370041 () Bool)

(declare-fun e!370040 () Bool)

(assert (=> b!645639 (= e!370041 e!370040)))

(declare-fun res!418458 () Bool)

(assert (=> b!645639 (=> (not res!418458) (not e!370040))))

(declare-fun e!370043 () Bool)

(assert (=> b!645639 (= res!418458 (not e!370043))))

(declare-fun res!418457 () Bool)

(assert (=> b!645639 (=> (not res!418457) (not e!370043))))

(assert (=> b!645639 (= res!418457 (validKeyInArray!0 (select (arr!18428 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33629 () Bool)

(declare-fun c!73958 () Bool)

(assert (=> bm!33629 (= call!33632 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73958 (Cons!12518 (select (arr!18428 a!2986) #b00000000000000000000000000000000) Nil!12519) Nil!12519)))))

(declare-fun b!645640 () Bool)

(assert (=> b!645640 (= e!370042 call!33632)))

(declare-fun b!645641 () Bool)

(assert (=> b!645641 (= e!370040 e!370042)))

(assert (=> b!645641 (= c!73958 (validKeyInArray!0 (select (arr!18428 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!645642 () Bool)

(declare-fun contains!3150 (List!12522 (_ BitVec 64)) Bool)

(assert (=> b!645642 (= e!370043 (contains!3150 Nil!12519 (select (arr!18428 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91115 () Bool)

(declare-fun res!418456 () Bool)

(assert (=> d!91115 (=> res!418456 e!370041)))

(assert (=> d!91115 (= res!418456 (bvsge #b00000000000000000000000000000000 (size!18792 a!2986)))))

(assert (=> d!91115 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12519) e!370041)))

(assert (= (and d!91115 (not res!418456)) b!645639))

(assert (= (and b!645639 res!418457) b!645642))

(assert (= (and b!645639 res!418458) b!645641))

(assert (= (and b!645641 c!73958) b!645638))

(assert (= (and b!645641 (not c!73958)) b!645640))

(assert (= (or b!645638 b!645640) bm!33629))

(declare-fun m!619239 () Bool)

(assert (=> b!645639 m!619239))

(assert (=> b!645639 m!619239))

(declare-fun m!619241 () Bool)

(assert (=> b!645639 m!619241))

(assert (=> bm!33629 m!619239))

(declare-fun m!619243 () Bool)

(assert (=> bm!33629 m!619243))

(assert (=> b!645641 m!619239))

(assert (=> b!645641 m!619239))

(assert (=> b!645641 m!619241))

(assert (=> b!645642 m!619239))

(assert (=> b!645642 m!619239))

(declare-fun m!619245 () Bool)

(assert (=> b!645642 m!619245))

(assert (=> b!645569 d!91115))

(declare-fun b!645693 () Bool)

(declare-fun e!370084 () SeekEntryResult!6875)

(declare-fun e!370085 () SeekEntryResult!6875)

(assert (=> b!645693 (= e!370084 e!370085)))

(declare-fun lt!299521 () (_ BitVec 64))

(declare-fun c!73971 () Bool)

(assert (=> b!645693 (= c!73971 (= lt!299521 (select (arr!18428 a!2986) j!136)))))

(declare-fun b!645694 () Bool)

(assert (=> b!645694 (= e!370085 (Found!6875 index!984))))

(declare-fun b!645695 () Bool)

(declare-fun e!370083 () SeekEntryResult!6875)

(assert (=> b!645695 (= e!370083 (MissingVacant!6875 vacantSpotIndex!68))))

(declare-fun b!645696 () Bool)

(declare-fun c!73972 () Bool)

(assert (=> b!645696 (= c!73972 (= lt!299521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645696 (= e!370085 e!370083)))

(declare-fun b!645697 () Bool)

(assert (=> b!645697 (= e!370083 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18428 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!91127 () Bool)

(declare-fun lt!299522 () SeekEntryResult!6875)

(assert (=> d!91127 (and (or (is-Undefined!6875 lt!299522) (not (is-Found!6875 lt!299522)) (and (bvsge (index!29835 lt!299522) #b00000000000000000000000000000000) (bvslt (index!29835 lt!299522) (size!18792 a!2986)))) (or (is-Undefined!6875 lt!299522) (is-Found!6875 lt!299522) (not (is-MissingVacant!6875 lt!299522)) (not (= (index!29837 lt!299522) vacantSpotIndex!68)) (and (bvsge (index!29837 lt!299522) #b00000000000000000000000000000000) (bvslt (index!29837 lt!299522) (size!18792 a!2986)))) (or (is-Undefined!6875 lt!299522) (ite (is-Found!6875 lt!299522) (= (select (arr!18428 a!2986) (index!29835 lt!299522)) (select (arr!18428 a!2986) j!136)) (and (is-MissingVacant!6875 lt!299522) (= (index!29837 lt!299522) vacantSpotIndex!68) (= (select (arr!18428 a!2986) (index!29837 lt!299522)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91127 (= lt!299522 e!370084)))

(declare-fun c!73970 () Bool)

(assert (=> d!91127 (= c!73970 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91127 (= lt!299521 (select (arr!18428 a!2986) index!984))))

(assert (=> d!91127 (validMask!0 mask!3053)))

(assert (=> d!91127 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18428 a!2986) j!136) a!2986 mask!3053) lt!299522)))

(declare-fun b!645698 () Bool)

(assert (=> b!645698 (= e!370084 Undefined!6875)))

(assert (= (and d!91127 c!73970) b!645698))

(assert (= (and d!91127 (not c!73970)) b!645693))

(assert (= (and b!645693 c!73971) b!645694))

(assert (= (and b!645693 (not c!73971)) b!645696))

(assert (= (and b!645696 c!73972) b!645695))

(assert (= (and b!645696 (not c!73972)) b!645697))

(assert (=> b!645697 m!619131))

(assert (=> b!645697 m!619131))

(assert (=> b!645697 m!619135))

(declare-fun m!619287 () Bool)

(assert (=> b!645697 m!619287))

(declare-fun m!619289 () Bool)

(assert (=> d!91127 m!619289))

(declare-fun m!619291 () Bool)

(assert (=> d!91127 m!619291))

(assert (=> d!91127 m!619151))

(assert (=> d!91127 m!619145))

(assert (=> b!645579 d!91127))

(declare-fun d!91147 () Bool)

(declare-fun res!418491 () Bool)

(declare-fun e!370093 () Bool)

(assert (=> d!91147 (=> res!418491 e!370093)))

(assert (=> d!91147 (= res!418491 (= (select (arr!18428 lt!299486) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18428 a!2986) j!136)))))

(assert (=> d!91147 (= (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!370093)))

(declare-fun b!645709 () Bool)

(declare-fun e!370094 () Bool)

(assert (=> b!645709 (= e!370093 e!370094)))

(declare-fun res!418492 () Bool)

(assert (=> b!645709 (=> (not res!418492) (not e!370094))))

(assert (=> b!645709 (= res!418492 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18792 lt!299486)))))

(declare-fun b!645710 () Bool)

(assert (=> b!645710 (= e!370094 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91147 (not res!418491)) b!645709))

(assert (= (and b!645709 res!418492) b!645710))

(declare-fun m!619299 () Bool)

(assert (=> d!91147 m!619299))

(assert (=> b!645710 m!619135))

(declare-fun m!619301 () Bool)

(assert (=> b!645710 m!619301))

(assert (=> b!645578 d!91147))

(declare-fun d!91155 () Bool)

(assert (=> d!91155 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299530 () Unit!21922)

(declare-fun choose!114 (array!38440 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21922)

(assert (=> d!91155 (= lt!299530 (choose!114 lt!299486 (select (arr!18428 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91155 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91155 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299486 (select (arr!18428 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!299530)))

(declare-fun bs!19295 () Bool)

(assert (= bs!19295 d!91155))

(assert (=> bs!19295 m!619135))

(assert (=> bs!19295 m!619179))

(assert (=> bs!19295 m!619135))

(declare-fun m!619305 () Bool)

(assert (=> bs!19295 m!619305))

(assert (=> b!645578 d!91155))

(declare-fun d!91159 () Bool)

(declare-fun res!418493 () Bool)

(declare-fun e!370095 () Bool)

(assert (=> d!91159 (=> res!418493 e!370095)))

(assert (=> d!91159 (= res!418493 (= (select (arr!18428 lt!299486) j!136) (select (arr!18428 a!2986) j!136)))))

(assert (=> d!91159 (= (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) j!136) e!370095)))

(declare-fun b!645711 () Bool)

(declare-fun e!370096 () Bool)

(assert (=> b!645711 (= e!370095 e!370096)))

(declare-fun res!418494 () Bool)

(assert (=> b!645711 (=> (not res!418494) (not e!370096))))

(assert (=> b!645711 (= res!418494 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18792 lt!299486)))))

(declare-fun b!645712 () Bool)

(assert (=> b!645712 (= e!370096 (arrayContainsKey!0 lt!299486 (select (arr!18428 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91159 (not res!418493)) b!645711))

(assert (= (and b!645711 res!418494) b!645712))

(declare-fun m!619307 () Bool)

(assert (=> d!91159 m!619307))

(assert (=> b!645712 m!619135))

(declare-fun m!619309 () Bool)

(assert (=> b!645712 m!619309))

(assert (=> b!645578 d!91159))

(assert (=> b!645567 d!91159))

(declare-fun b!645773 () Bool)

(declare-fun e!370139 () SeekEntryResult!6875)

(assert (=> b!645773 (= e!370139 Undefined!6875)))

(declare-fun b!645774 () Bool)

(declare-fun e!370137 () SeekEntryResult!6875)

(declare-fun lt!299556 () SeekEntryResult!6875)

(assert (=> b!645774 (= e!370137 (MissingZero!6875 (index!29836 lt!299556)))))

(declare-fun b!645775 () Bool)

(declare-fun e!370138 () SeekEntryResult!6875)

(assert (=> b!645775 (= e!370139 e!370138)))

(declare-fun lt!299557 () (_ BitVec 64))

(assert (=> b!645775 (= lt!299557 (select (arr!18428 a!2986) (index!29836 lt!299556)))))

(declare-fun c!73996 () Bool)

(assert (=> b!645775 (= c!73996 (= lt!299557 k!1786))))

(declare-fun d!91161 () Bool)

(declare-fun lt!299555 () SeekEntryResult!6875)

(assert (=> d!91161 (and (or (is-Undefined!6875 lt!299555) (not (is-Found!6875 lt!299555)) (and (bvsge (index!29835 lt!299555) #b00000000000000000000000000000000) (bvslt (index!29835 lt!299555) (size!18792 a!2986)))) (or (is-Undefined!6875 lt!299555) (is-Found!6875 lt!299555) (not (is-MissingZero!6875 lt!299555)) (and (bvsge (index!29834 lt!299555) #b00000000000000000000000000000000) (bvslt (index!29834 lt!299555) (size!18792 a!2986)))) (or (is-Undefined!6875 lt!299555) (is-Found!6875 lt!299555) (is-MissingZero!6875 lt!299555) (not (is-MissingVacant!6875 lt!299555)) (and (bvsge (index!29837 lt!299555) #b00000000000000000000000000000000) (bvslt (index!29837 lt!299555) (size!18792 a!2986)))) (or (is-Undefined!6875 lt!299555) (ite (is-Found!6875 lt!299555) (= (select (arr!18428 a!2986) (index!29835 lt!299555)) k!1786) (ite (is-MissingZero!6875 lt!299555) (= (select (arr!18428 a!2986) (index!29834 lt!299555)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6875 lt!299555) (= (select (arr!18428 a!2986) (index!29837 lt!299555)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91161 (= lt!299555 e!370139)))

(declare-fun c!73998 () Bool)

(assert (=> d!91161 (= c!73998 (and (is-Intermediate!6875 lt!299556) (undefined!7687 lt!299556)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38440 (_ BitVec 32)) SeekEntryResult!6875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91161 (= lt!299556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91161 (validMask!0 mask!3053)))

(assert (=> d!91161 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!299555)))

(declare-fun b!645776 () Bool)

(declare-fun c!73997 () Bool)

(assert (=> b!645776 (= c!73997 (= lt!299557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645776 (= e!370138 e!370137)))

(declare-fun b!645777 () Bool)

(assert (=> b!645777 (= e!370138 (Found!6875 (index!29836 lt!299556)))))

(declare-fun b!645778 () Bool)

