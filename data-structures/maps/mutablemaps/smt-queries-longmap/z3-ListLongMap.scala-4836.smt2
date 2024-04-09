; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66508 () Bool)

(assert start!66508)

(declare-fun b!766325 () Bool)

(declare-fun e!426758 () Bool)

(declare-fun e!426756 () Bool)

(assert (=> b!766325 (= e!426758 e!426756)))

(declare-fun res!518625 () Bool)

(assert (=> b!766325 (=> (not res!518625) (not e!426756))))

(declare-datatypes ((SeekEntryResult!7828 0))(
  ( (MissingZero!7828 (index!33679 (_ BitVec 32))) (Found!7828 (index!33680 (_ BitVec 32))) (Intermediate!7828 (undefined!8640 Bool) (index!33681 (_ BitVec 32)) (x!64611 (_ BitVec 32))) (Undefined!7828) (MissingVacant!7828 (index!33682 (_ BitVec 32))) )
))
(declare-fun lt!340914 () SeekEntryResult!7828)

(declare-datatypes ((array!42240 0))(
  ( (array!42241 (arr!20221 (Array (_ BitVec 32) (_ BitVec 64))) (size!20642 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42240)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42240 (_ BitVec 32)) SeekEntryResult!7828)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766325 (= res!518625 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328) (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340914))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!766325 (= lt!340914 (Intermediate!7828 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766326 () Bool)

(declare-fun res!518627 () Bool)

(declare-fun e!426759 () Bool)

(assert (=> b!766326 (=> (not res!518627) (not e!426759))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766326 (= res!518627 (validKeyInArray!0 k0!2102))))

(declare-fun b!766327 () Bool)

(declare-fun res!518618 () Bool)

(assert (=> b!766327 (=> (not res!518618) (not e!426758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42240 (_ BitVec 32)) Bool)

(assert (=> b!766327 (= res!518618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!766328 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!426760 () Bool)

(assert (=> b!766328 (= e!426760 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340914))))

(declare-fun b!766329 () Bool)

(declare-fun res!518623 () Bool)

(assert (=> b!766329 (=> (not res!518623) (not e!426756))))

(assert (=> b!766329 (= res!518623 e!426760)))

(declare-fun c!84243 () Bool)

(assert (=> b!766329 (= c!84243 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!766331 () Bool)

(declare-fun e!426757 () Bool)

(assert (=> b!766331 (= e!426756 e!426757)))

(declare-fun res!518621 () Bool)

(assert (=> b!766331 (=> (not res!518621) (not e!426757))))

(declare-fun lt!340916 () SeekEntryResult!7828)

(declare-fun lt!340910 () SeekEntryResult!7828)

(assert (=> b!766331 (= res!518621 (= lt!340916 lt!340910))))

(declare-fun lt!340915 () array!42240)

(declare-fun lt!340913 () (_ BitVec 64))

(assert (=> b!766331 (= lt!340910 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340913 lt!340915 mask!3328))))

(assert (=> b!766331 (= lt!340916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340913 mask!3328) lt!340913 lt!340915 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766331 (= lt!340913 (select (store (arr!20221 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!766331 (= lt!340915 (array!42241 (store (arr!20221 a!3186) i!1173 k0!2102) (size!20642 a!3186)))))

(declare-fun b!766332 () Bool)

(declare-fun lt!340918 () SeekEntryResult!7828)

(declare-fun e!426755 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42240 (_ BitVec 32)) SeekEntryResult!7828)

(assert (=> b!766332 (= e!426755 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340918))))

(declare-fun b!766333 () Bool)

(declare-fun e!426763 () Bool)

(assert (=> b!766333 (= e!426763 e!426755)))

(declare-fun res!518619 () Bool)

(assert (=> b!766333 (=> (not res!518619) (not e!426755))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42240 (_ BitVec 32)) SeekEntryResult!7828)

(assert (=> b!766333 (= res!518619 (= (seekEntryOrOpen!0 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340918))))

(assert (=> b!766333 (= lt!340918 (Found!7828 j!159))))

(declare-fun b!766334 () Bool)

(assert (=> b!766334 (= e!426760 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) (Found!7828 j!159)))))

(declare-fun b!766335 () Bool)

(declare-fun res!518628 () Bool)

(assert (=> b!766335 (=> (not res!518628) (not e!426756))))

(assert (=> b!766335 (= res!518628 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20221 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766336 () Bool)

(declare-fun res!518624 () Bool)

(assert (=> b!766336 (=> (not res!518624) (not e!426759))))

(declare-fun arrayContainsKey!0 (array!42240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766336 (= res!518624 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766337 () Bool)

(assert (=> b!766337 (= e!426759 e!426758)))

(declare-fun res!518630 () Bool)

(assert (=> b!766337 (=> (not res!518630) (not e!426758))))

(declare-fun lt!340912 () SeekEntryResult!7828)

(assert (=> b!766337 (= res!518630 (or (= lt!340912 (MissingZero!7828 i!1173)) (= lt!340912 (MissingVacant!7828 i!1173))))))

(assert (=> b!766337 (= lt!340912 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!766338 () Bool)

(declare-fun res!518632 () Bool)

(assert (=> b!766338 (=> (not res!518632) (not e!426758))))

(assert (=> b!766338 (= res!518632 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20642 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20642 a!3186))))))

(declare-fun b!766339 () Bool)

(declare-fun res!518620 () Bool)

(assert (=> b!766339 (=> (not res!518620) (not e!426759))))

(assert (=> b!766339 (= res!518620 (and (= (size!20642 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20642 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20642 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!518633 () Bool)

(assert (=> start!66508 (=> (not res!518633) (not e!426759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66508 (= res!518633 (validMask!0 mask!3328))))

(assert (=> start!66508 e!426759))

(assert (=> start!66508 true))

(declare-fun array_inv!15995 (array!42240) Bool)

(assert (=> start!66508 (array_inv!15995 a!3186)))

(declare-fun b!766330 () Bool)

(declare-fun e!426762 () Bool)

(declare-fun lt!340917 () (_ BitVec 32))

(assert (=> b!766330 (= e!426762 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!340917 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340914))))

(declare-fun b!766340 () Bool)

(declare-fun e!426761 () Bool)

(assert (=> b!766340 (= e!426757 (not e!426761))))

(declare-fun res!518622 () Bool)

(assert (=> b!766340 (=> res!518622 e!426761)))

(get-info :version)

(assert (=> b!766340 (= res!518622 (or (not ((_ is Intermediate!7828) lt!340910)) (bvsge x!1131 (x!64611 lt!340910))))))

(assert (=> b!766340 e!426763))

(declare-fun res!518629 () Bool)

(assert (=> b!766340 (=> (not res!518629) (not e!426763))))

(assert (=> b!766340 (= res!518629 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26382 0))(
  ( (Unit!26383) )
))
(declare-fun lt!340911 () Unit!26382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42240 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26382)

(assert (=> b!766340 (= lt!340911 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766341 () Bool)

(assert (=> b!766341 (= e!426761 e!426762)))

(declare-fun res!518631 () Bool)

(assert (=> b!766341 (=> res!518631 e!426762)))

(assert (=> b!766341 (= res!518631 (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766341 (= lt!340917 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766342 () Bool)

(declare-fun res!518634 () Bool)

(assert (=> b!766342 (=> (not res!518634) (not e!426758))))

(declare-datatypes ((List!14276 0))(
  ( (Nil!14273) (Cons!14272 (h!15362 (_ BitVec 64)) (t!20599 List!14276)) )
))
(declare-fun arrayNoDuplicates!0 (array!42240 (_ BitVec 32) List!14276) Bool)

(assert (=> b!766342 (= res!518634 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14273))))

(declare-fun b!766343 () Bool)

(declare-fun res!518626 () Bool)

(assert (=> b!766343 (=> (not res!518626) (not e!426759))))

(assert (=> b!766343 (= res!518626 (validKeyInArray!0 (select (arr!20221 a!3186) j!159)))))

(assert (= (and start!66508 res!518633) b!766339))

(assert (= (and b!766339 res!518620) b!766343))

(assert (= (and b!766343 res!518626) b!766326))

(assert (= (and b!766326 res!518627) b!766336))

(assert (= (and b!766336 res!518624) b!766337))

(assert (= (and b!766337 res!518630) b!766327))

(assert (= (and b!766327 res!518618) b!766342))

(assert (= (and b!766342 res!518634) b!766338))

(assert (= (and b!766338 res!518632) b!766325))

(assert (= (and b!766325 res!518625) b!766335))

(assert (= (and b!766335 res!518628) b!766329))

(assert (= (and b!766329 c!84243) b!766328))

(assert (= (and b!766329 (not c!84243)) b!766334))

(assert (= (and b!766329 res!518623) b!766331))

(assert (= (and b!766331 res!518621) b!766340))

(assert (= (and b!766340 res!518629) b!766333))

(assert (= (and b!766333 res!518619) b!766332))

(assert (= (and b!766340 (not res!518622)) b!766341))

(assert (= (and b!766341 (not res!518631)) b!766330))

(declare-fun m!712387 () Bool)

(assert (=> b!766335 m!712387))

(declare-fun m!712389 () Bool)

(assert (=> b!766328 m!712389))

(assert (=> b!766328 m!712389))

(declare-fun m!712391 () Bool)

(assert (=> b!766328 m!712391))

(assert (=> b!766334 m!712389))

(assert (=> b!766334 m!712389))

(declare-fun m!712393 () Bool)

(assert (=> b!766334 m!712393))

(declare-fun m!712395 () Bool)

(assert (=> b!766340 m!712395))

(declare-fun m!712397 () Bool)

(assert (=> b!766340 m!712397))

(declare-fun m!712399 () Bool)

(assert (=> start!66508 m!712399))

(declare-fun m!712401 () Bool)

(assert (=> start!66508 m!712401))

(assert (=> b!766325 m!712389))

(assert (=> b!766325 m!712389))

(declare-fun m!712403 () Bool)

(assert (=> b!766325 m!712403))

(assert (=> b!766325 m!712403))

(assert (=> b!766325 m!712389))

(declare-fun m!712405 () Bool)

(assert (=> b!766325 m!712405))

(declare-fun m!712407 () Bool)

(assert (=> b!766326 m!712407))

(declare-fun m!712409 () Bool)

(assert (=> b!766342 m!712409))

(declare-fun m!712411 () Bool)

(assert (=> b!766337 m!712411))

(assert (=> b!766343 m!712389))

(assert (=> b!766343 m!712389))

(declare-fun m!712413 () Bool)

(assert (=> b!766343 m!712413))

(declare-fun m!712415 () Bool)

(assert (=> b!766327 m!712415))

(declare-fun m!712417 () Bool)

(assert (=> b!766336 m!712417))

(assert (=> b!766332 m!712389))

(assert (=> b!766332 m!712389))

(declare-fun m!712419 () Bool)

(assert (=> b!766332 m!712419))

(declare-fun m!712421 () Bool)

(assert (=> b!766331 m!712421))

(declare-fun m!712423 () Bool)

(assert (=> b!766331 m!712423))

(declare-fun m!712425 () Bool)

(assert (=> b!766331 m!712425))

(assert (=> b!766331 m!712423))

(declare-fun m!712427 () Bool)

(assert (=> b!766331 m!712427))

(declare-fun m!712429 () Bool)

(assert (=> b!766331 m!712429))

(declare-fun m!712431 () Bool)

(assert (=> b!766341 m!712431))

(assert (=> b!766333 m!712389))

(assert (=> b!766333 m!712389))

(declare-fun m!712433 () Bool)

(assert (=> b!766333 m!712433))

(assert (=> b!766330 m!712389))

(assert (=> b!766330 m!712389))

(declare-fun m!712435 () Bool)

(assert (=> b!766330 m!712435))

(check-sat (not b!766343) (not b!766332) (not b!766336) (not start!66508) (not b!766340) (not b!766334) (not b!766341) (not b!766333) (not b!766327) (not b!766342) (not b!766325) (not b!766330) (not b!766337) (not b!766331) (not b!766326) (not b!766328))
(check-sat)
(get-model)

(declare-fun b!766413 () Bool)

(declare-fun e!426801 () SeekEntryResult!7828)

(declare-fun lt!340952 () SeekEntryResult!7828)

(assert (=> b!766413 (= e!426801 (MissingZero!7828 (index!33681 lt!340952)))))

(declare-fun b!766414 () Bool)

(declare-fun e!426803 () SeekEntryResult!7828)

(declare-fun e!426802 () SeekEntryResult!7828)

(assert (=> b!766414 (= e!426803 e!426802)))

(declare-fun lt!340954 () (_ BitVec 64))

(assert (=> b!766414 (= lt!340954 (select (arr!20221 a!3186) (index!33681 lt!340952)))))

(declare-fun c!84253 () Bool)

(assert (=> b!766414 (= c!84253 (= lt!340954 (select (arr!20221 a!3186) j!159)))))

(declare-fun b!766415 () Bool)

(declare-fun c!84255 () Bool)

(assert (=> b!766415 (= c!84255 (= lt!340954 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766415 (= e!426802 e!426801)))

(declare-fun b!766416 () Bool)

(assert (=> b!766416 (= e!426802 (Found!7828 (index!33681 lt!340952)))))

(declare-fun b!766417 () Bool)

(assert (=> b!766417 (= e!426803 Undefined!7828)))

(declare-fun d!101131 () Bool)

(declare-fun lt!340953 () SeekEntryResult!7828)

(assert (=> d!101131 (and (or ((_ is Undefined!7828) lt!340953) (not ((_ is Found!7828) lt!340953)) (and (bvsge (index!33680 lt!340953) #b00000000000000000000000000000000) (bvslt (index!33680 lt!340953) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!340953) ((_ is Found!7828) lt!340953) (not ((_ is MissingZero!7828) lt!340953)) (and (bvsge (index!33679 lt!340953) #b00000000000000000000000000000000) (bvslt (index!33679 lt!340953) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!340953) ((_ is Found!7828) lt!340953) ((_ is MissingZero!7828) lt!340953) (not ((_ is MissingVacant!7828) lt!340953)) (and (bvsge (index!33682 lt!340953) #b00000000000000000000000000000000) (bvslt (index!33682 lt!340953) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!340953) (ite ((_ is Found!7828) lt!340953) (= (select (arr!20221 a!3186) (index!33680 lt!340953)) (select (arr!20221 a!3186) j!159)) (ite ((_ is MissingZero!7828) lt!340953) (= (select (arr!20221 a!3186) (index!33679 lt!340953)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7828) lt!340953) (= (select (arr!20221 a!3186) (index!33682 lt!340953)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101131 (= lt!340953 e!426803)))

(declare-fun c!84254 () Bool)

(assert (=> d!101131 (= c!84254 (and ((_ is Intermediate!7828) lt!340952) (undefined!8640 lt!340952)))))

(assert (=> d!101131 (= lt!340952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328) (select (arr!20221 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101131 (validMask!0 mask!3328)))

(assert (=> d!101131 (= (seekEntryOrOpen!0 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340953)))

(declare-fun b!766418 () Bool)

(assert (=> b!766418 (= e!426801 (seekKeyOrZeroReturnVacant!0 (x!64611 lt!340952) (index!33681 lt!340952) (index!33681 lt!340952) (select (arr!20221 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101131 c!84254) b!766417))

(assert (= (and d!101131 (not c!84254)) b!766414))

(assert (= (and b!766414 c!84253) b!766416))

(assert (= (and b!766414 (not c!84253)) b!766415))

(assert (= (and b!766415 c!84255) b!766413))

(assert (= (and b!766415 (not c!84255)) b!766418))

(declare-fun m!712487 () Bool)

(assert (=> b!766414 m!712487))

(declare-fun m!712489 () Bool)

(assert (=> d!101131 m!712489))

(declare-fun m!712491 () Bool)

(assert (=> d!101131 m!712491))

(assert (=> d!101131 m!712399))

(assert (=> d!101131 m!712403))

(assert (=> d!101131 m!712389))

(assert (=> d!101131 m!712405))

(assert (=> d!101131 m!712389))

(assert (=> d!101131 m!712403))

(declare-fun m!712493 () Bool)

(assert (=> d!101131 m!712493))

(assert (=> b!766418 m!712389))

(declare-fun m!712495 () Bool)

(assert (=> b!766418 m!712495))

(assert (=> b!766333 d!101131))

(declare-fun d!101133 () Bool)

(assert (=> d!101133 (= (validKeyInArray!0 (select (arr!20221 a!3186) j!159)) (and (not (= (select (arr!20221 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20221 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!766343 d!101133))

(declare-fun b!766431 () Bool)

(declare-fun e!426812 () SeekEntryResult!7828)

(assert (=> b!766431 (= e!426812 Undefined!7828)))

(declare-fun b!766432 () Bool)

(declare-fun e!426810 () SeekEntryResult!7828)

(assert (=> b!766432 (= e!426812 e!426810)))

(declare-fun lt!340960 () (_ BitVec 64))

(declare-fun c!84262 () Bool)

(assert (=> b!766432 (= c!84262 (= lt!340960 (select (arr!20221 a!3186) j!159)))))

(declare-fun b!766433 () Bool)

(declare-fun e!426811 () SeekEntryResult!7828)

(assert (=> b!766433 (= e!426811 (MissingVacant!7828 resIntermediateIndex!5))))

(declare-fun b!766434 () Bool)

(declare-fun c!84263 () Bool)

(assert (=> b!766434 (= c!84263 (= lt!340960 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766434 (= e!426810 e!426811)))

(declare-fun b!766436 () Bool)

(assert (=> b!766436 (= e!426811 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20221 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766435 () Bool)

(assert (=> b!766435 (= e!426810 (Found!7828 index!1321))))

(declare-fun d!101135 () Bool)

(declare-fun lt!340959 () SeekEntryResult!7828)

(assert (=> d!101135 (and (or ((_ is Undefined!7828) lt!340959) (not ((_ is Found!7828) lt!340959)) (and (bvsge (index!33680 lt!340959) #b00000000000000000000000000000000) (bvslt (index!33680 lt!340959) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!340959) ((_ is Found!7828) lt!340959) (not ((_ is MissingVacant!7828) lt!340959)) (not (= (index!33682 lt!340959) resIntermediateIndex!5)) (and (bvsge (index!33682 lt!340959) #b00000000000000000000000000000000) (bvslt (index!33682 lt!340959) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!340959) (ite ((_ is Found!7828) lt!340959) (= (select (arr!20221 a!3186) (index!33680 lt!340959)) (select (arr!20221 a!3186) j!159)) (and ((_ is MissingVacant!7828) lt!340959) (= (index!33682 lt!340959) resIntermediateIndex!5) (= (select (arr!20221 a!3186) (index!33682 lt!340959)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101135 (= lt!340959 e!426812)))

(declare-fun c!84264 () Bool)

(assert (=> d!101135 (= c!84264 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101135 (= lt!340960 (select (arr!20221 a!3186) index!1321))))

(assert (=> d!101135 (validMask!0 mask!3328)))

(assert (=> d!101135 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340959)))

(assert (= (and d!101135 c!84264) b!766431))

(assert (= (and d!101135 (not c!84264)) b!766432))

(assert (= (and b!766432 c!84262) b!766435))

(assert (= (and b!766432 (not c!84262)) b!766434))

(assert (= (and b!766434 c!84263) b!766433))

(assert (= (and b!766434 (not c!84263)) b!766436))

(assert (=> b!766436 m!712431))

(assert (=> b!766436 m!712431))

(assert (=> b!766436 m!712389))

(declare-fun m!712497 () Bool)

(assert (=> b!766436 m!712497))

(declare-fun m!712499 () Bool)

(assert (=> d!101135 m!712499))

(declare-fun m!712501 () Bool)

(assert (=> d!101135 m!712501))

(declare-fun m!712503 () Bool)

(assert (=> d!101135 m!712503))

(assert (=> d!101135 m!712399))

(assert (=> b!766334 d!101135))

(declare-fun d!101137 () Bool)

(assert (=> d!101137 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66508 d!101137))

(declare-fun d!101141 () Bool)

(assert (=> d!101141 (= (array_inv!15995 a!3186) (bvsge (size!20642 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66508 d!101141))

(declare-fun d!101143 () Bool)

(declare-fun lt!340969 () (_ BitVec 32))

(assert (=> d!101143 (and (bvsge lt!340969 #b00000000000000000000000000000000) (bvslt lt!340969 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101143 (= lt!340969 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101143 (validMask!0 mask!3328)))

(assert (=> d!101143 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!340969)))

(declare-fun bs!21498 () Bool)

(assert (= bs!21498 d!101143))

(declare-fun m!712505 () Bool)

(assert (=> bs!21498 m!712505))

(assert (=> bs!21498 m!712399))

(assert (=> b!766341 d!101143))

(declare-fun d!101147 () Bool)

(declare-fun e!426845 () Bool)

(assert (=> d!101147 e!426845))

(declare-fun c!84285 () Bool)

(declare-fun lt!340990 () SeekEntryResult!7828)

(assert (=> d!101147 (= c!84285 (and ((_ is Intermediate!7828) lt!340990) (undefined!8640 lt!340990)))))

(declare-fun e!426844 () SeekEntryResult!7828)

(assert (=> d!101147 (= lt!340990 e!426844)))

(declare-fun c!84284 () Bool)

(assert (=> d!101147 (= c!84284 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!340989 () (_ BitVec 64))

(assert (=> d!101147 (= lt!340989 (select (arr!20221 a!3186) lt!340917))))

(assert (=> d!101147 (validMask!0 mask!3328)))

(assert (=> d!101147 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!340917 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340990)))

(declare-fun b!766489 () Bool)

(declare-fun e!426848 () Bool)

(assert (=> b!766489 (= e!426845 e!426848)))

(declare-fun res!518702 () Bool)

(assert (=> b!766489 (= res!518702 (and ((_ is Intermediate!7828) lt!340990) (not (undefined!8640 lt!340990)) (bvslt (x!64611 lt!340990) #b01111111111111111111111111111110) (bvsge (x!64611 lt!340990) #b00000000000000000000000000000000) (bvsge (x!64611 lt!340990) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!766489 (=> (not res!518702) (not e!426848))))

(declare-fun b!766490 () Bool)

(assert (=> b!766490 (= e!426845 (bvsge (x!64611 lt!340990) #b01111111111111111111111111111110))))

(declare-fun b!766491 () Bool)

(declare-fun e!426847 () SeekEntryResult!7828)

(assert (=> b!766491 (= e!426847 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!340917 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20221 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766492 () Bool)

(assert (=> b!766492 (and (bvsge (index!33681 lt!340990) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340990) (size!20642 a!3186)))))

(declare-fun res!518701 () Bool)

(assert (=> b!766492 (= res!518701 (= (select (arr!20221 a!3186) (index!33681 lt!340990)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426846 () Bool)

(assert (=> b!766492 (=> res!518701 e!426846)))

(declare-fun b!766493 () Bool)

(assert (=> b!766493 (= e!426844 e!426847)))

(declare-fun c!84286 () Bool)

(assert (=> b!766493 (= c!84286 (or (= lt!340989 (select (arr!20221 a!3186) j!159)) (= (bvadd lt!340989 lt!340989) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766494 () Bool)

(assert (=> b!766494 (and (bvsge (index!33681 lt!340990) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340990) (size!20642 a!3186)))))

(declare-fun res!518700 () Bool)

(assert (=> b!766494 (= res!518700 (= (select (arr!20221 a!3186) (index!33681 lt!340990)) (select (arr!20221 a!3186) j!159)))))

(assert (=> b!766494 (=> res!518700 e!426846)))

(assert (=> b!766494 (= e!426848 e!426846)))

(declare-fun b!766495 () Bool)

(assert (=> b!766495 (= e!426844 (Intermediate!7828 true lt!340917 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!766496 () Bool)

(assert (=> b!766496 (and (bvsge (index!33681 lt!340990) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340990) (size!20642 a!3186)))))

(assert (=> b!766496 (= e!426846 (= (select (arr!20221 a!3186) (index!33681 lt!340990)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766497 () Bool)

(assert (=> b!766497 (= e!426847 (Intermediate!7828 false lt!340917 (bvadd #b00000000000000000000000000000001 x!1131)))))

(assert (= (and d!101147 c!84284) b!766495))

(assert (= (and d!101147 (not c!84284)) b!766493))

(assert (= (and b!766493 c!84286) b!766497))

(assert (= (and b!766493 (not c!84286)) b!766491))

(assert (= (and d!101147 c!84285) b!766490))

(assert (= (and d!101147 (not c!84285)) b!766489))

(assert (= (and b!766489 res!518702) b!766494))

(assert (= (and b!766494 (not res!518700)) b!766492))

(assert (= (and b!766492 (not res!518701)) b!766496))

(declare-fun m!712535 () Bool)

(assert (=> d!101147 m!712535))

(assert (=> d!101147 m!712399))

(declare-fun m!712537 () Bool)

(assert (=> b!766491 m!712537))

(assert (=> b!766491 m!712537))

(assert (=> b!766491 m!712389))

(declare-fun m!712539 () Bool)

(assert (=> b!766491 m!712539))

(declare-fun m!712541 () Bool)

(assert (=> b!766494 m!712541))

(assert (=> b!766496 m!712541))

(assert (=> b!766492 m!712541))

(assert (=> b!766330 d!101147))

(declare-fun b!766498 () Bool)

(declare-fun e!426851 () SeekEntryResult!7828)

(assert (=> b!766498 (= e!426851 Undefined!7828)))

(declare-fun b!766499 () Bool)

(declare-fun e!426849 () SeekEntryResult!7828)

(assert (=> b!766499 (= e!426851 e!426849)))

(declare-fun lt!340992 () (_ BitVec 64))

(declare-fun c!84287 () Bool)

(assert (=> b!766499 (= c!84287 (= lt!340992 (select (arr!20221 a!3186) j!159)))))

(declare-fun b!766500 () Bool)

(declare-fun e!426850 () SeekEntryResult!7828)

(assert (=> b!766500 (= e!426850 (MissingVacant!7828 resIntermediateIndex!5))))

(declare-fun b!766501 () Bool)

(declare-fun c!84288 () Bool)

(assert (=> b!766501 (= c!84288 (= lt!340992 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766501 (= e!426849 e!426850)))

(declare-fun b!766503 () Bool)

(assert (=> b!766503 (= e!426850 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20221 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766502 () Bool)

(assert (=> b!766502 (= e!426849 (Found!7828 resIntermediateIndex!5))))

(declare-fun lt!340991 () SeekEntryResult!7828)

(declare-fun d!101163 () Bool)

(assert (=> d!101163 (and (or ((_ is Undefined!7828) lt!340991) (not ((_ is Found!7828) lt!340991)) (and (bvsge (index!33680 lt!340991) #b00000000000000000000000000000000) (bvslt (index!33680 lt!340991) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!340991) ((_ is Found!7828) lt!340991) (not ((_ is MissingVacant!7828) lt!340991)) (not (= (index!33682 lt!340991) resIntermediateIndex!5)) (and (bvsge (index!33682 lt!340991) #b00000000000000000000000000000000) (bvslt (index!33682 lt!340991) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!340991) (ite ((_ is Found!7828) lt!340991) (= (select (arr!20221 a!3186) (index!33680 lt!340991)) (select (arr!20221 a!3186) j!159)) (and ((_ is MissingVacant!7828) lt!340991) (= (index!33682 lt!340991) resIntermediateIndex!5) (= (select (arr!20221 a!3186) (index!33682 lt!340991)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101163 (= lt!340991 e!426851)))

(declare-fun c!84289 () Bool)

(assert (=> d!101163 (= c!84289 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101163 (= lt!340992 (select (arr!20221 a!3186) resIntermediateIndex!5))))

(assert (=> d!101163 (validMask!0 mask!3328)))

(assert (=> d!101163 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!340991)))

(assert (= (and d!101163 c!84289) b!766498))

(assert (= (and d!101163 (not c!84289)) b!766499))

(assert (= (and b!766499 c!84287) b!766502))

(assert (= (and b!766499 (not c!84287)) b!766501))

(assert (= (and b!766501 c!84288) b!766500))

(assert (= (and b!766501 (not c!84288)) b!766503))

(declare-fun m!712543 () Bool)

(assert (=> b!766503 m!712543))

(assert (=> b!766503 m!712543))

(assert (=> b!766503 m!712389))

(declare-fun m!712545 () Bool)

(assert (=> b!766503 m!712545))

(declare-fun m!712547 () Bool)

(assert (=> d!101163 m!712547))

(declare-fun m!712549 () Bool)

(assert (=> d!101163 m!712549))

(assert (=> d!101163 m!712387))

(assert (=> d!101163 m!712399))

(assert (=> b!766332 d!101163))

(declare-fun d!101165 () Bool)

(declare-fun e!426853 () Bool)

(assert (=> d!101165 e!426853))

(declare-fun c!84291 () Bool)

(declare-fun lt!340994 () SeekEntryResult!7828)

(assert (=> d!101165 (= c!84291 (and ((_ is Intermediate!7828) lt!340994) (undefined!8640 lt!340994)))))

(declare-fun e!426852 () SeekEntryResult!7828)

(assert (=> d!101165 (= lt!340994 e!426852)))

(declare-fun c!84290 () Bool)

(assert (=> d!101165 (= c!84290 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!340993 () (_ BitVec 64))

(assert (=> d!101165 (= lt!340993 (select (arr!20221 lt!340915) index!1321))))

(assert (=> d!101165 (validMask!0 mask!3328)))

(assert (=> d!101165 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340913 lt!340915 mask!3328) lt!340994)))

(declare-fun b!766504 () Bool)

(declare-fun e!426856 () Bool)

(assert (=> b!766504 (= e!426853 e!426856)))

(declare-fun res!518705 () Bool)

(assert (=> b!766504 (= res!518705 (and ((_ is Intermediate!7828) lt!340994) (not (undefined!8640 lt!340994)) (bvslt (x!64611 lt!340994) #b01111111111111111111111111111110) (bvsge (x!64611 lt!340994) #b00000000000000000000000000000000) (bvsge (x!64611 lt!340994) x!1131)))))

(assert (=> b!766504 (=> (not res!518705) (not e!426856))))

(declare-fun b!766505 () Bool)

(assert (=> b!766505 (= e!426853 (bvsge (x!64611 lt!340994) #b01111111111111111111111111111110))))

(declare-fun e!426855 () SeekEntryResult!7828)

(declare-fun b!766506 () Bool)

(assert (=> b!766506 (= e!426855 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340913 lt!340915 mask!3328))))

(declare-fun b!766507 () Bool)

(assert (=> b!766507 (and (bvsge (index!33681 lt!340994) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340994) (size!20642 lt!340915)))))

(declare-fun res!518704 () Bool)

(assert (=> b!766507 (= res!518704 (= (select (arr!20221 lt!340915) (index!33681 lt!340994)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426854 () Bool)

(assert (=> b!766507 (=> res!518704 e!426854)))

(declare-fun b!766508 () Bool)

(assert (=> b!766508 (= e!426852 e!426855)))

(declare-fun c!84292 () Bool)

(assert (=> b!766508 (= c!84292 (or (= lt!340993 lt!340913) (= (bvadd lt!340993 lt!340993) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766509 () Bool)

(assert (=> b!766509 (and (bvsge (index!33681 lt!340994) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340994) (size!20642 lt!340915)))))

(declare-fun res!518703 () Bool)

(assert (=> b!766509 (= res!518703 (= (select (arr!20221 lt!340915) (index!33681 lt!340994)) lt!340913))))

(assert (=> b!766509 (=> res!518703 e!426854)))

(assert (=> b!766509 (= e!426856 e!426854)))

(declare-fun b!766510 () Bool)

(assert (=> b!766510 (= e!426852 (Intermediate!7828 true index!1321 x!1131))))

(declare-fun b!766511 () Bool)

(assert (=> b!766511 (and (bvsge (index!33681 lt!340994) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340994) (size!20642 lt!340915)))))

(assert (=> b!766511 (= e!426854 (= (select (arr!20221 lt!340915) (index!33681 lt!340994)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766512 () Bool)

(assert (=> b!766512 (= e!426855 (Intermediate!7828 false index!1321 x!1131))))

(assert (= (and d!101165 c!84290) b!766510))

(assert (= (and d!101165 (not c!84290)) b!766508))

(assert (= (and b!766508 c!84292) b!766512))

(assert (= (and b!766508 (not c!84292)) b!766506))

(assert (= (and d!101165 c!84291) b!766505))

(assert (= (and d!101165 (not c!84291)) b!766504))

(assert (= (and b!766504 res!518705) b!766509))

(assert (= (and b!766509 (not res!518703)) b!766507))

(assert (= (and b!766507 (not res!518704)) b!766511))

(declare-fun m!712551 () Bool)

(assert (=> d!101165 m!712551))

(assert (=> d!101165 m!712399))

(assert (=> b!766506 m!712431))

(assert (=> b!766506 m!712431))

(declare-fun m!712553 () Bool)

(assert (=> b!766506 m!712553))

(declare-fun m!712555 () Bool)

(assert (=> b!766509 m!712555))

(assert (=> b!766511 m!712555))

(assert (=> b!766507 m!712555))

(assert (=> b!766331 d!101165))

(declare-fun d!101167 () Bool)

(declare-fun e!426858 () Bool)

(assert (=> d!101167 e!426858))

(declare-fun c!84294 () Bool)

(declare-fun lt!340996 () SeekEntryResult!7828)

(assert (=> d!101167 (= c!84294 (and ((_ is Intermediate!7828) lt!340996) (undefined!8640 lt!340996)))))

(declare-fun e!426857 () SeekEntryResult!7828)

(assert (=> d!101167 (= lt!340996 e!426857)))

(declare-fun c!84293 () Bool)

(assert (=> d!101167 (= c!84293 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!340995 () (_ BitVec 64))

(assert (=> d!101167 (= lt!340995 (select (arr!20221 lt!340915) (toIndex!0 lt!340913 mask!3328)))))

(assert (=> d!101167 (validMask!0 mask!3328)))

(assert (=> d!101167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340913 mask!3328) lt!340913 lt!340915 mask!3328) lt!340996)))

(declare-fun b!766513 () Bool)

(declare-fun e!426861 () Bool)

(assert (=> b!766513 (= e!426858 e!426861)))

(declare-fun res!518708 () Bool)

(assert (=> b!766513 (= res!518708 (and ((_ is Intermediate!7828) lt!340996) (not (undefined!8640 lt!340996)) (bvslt (x!64611 lt!340996) #b01111111111111111111111111111110) (bvsge (x!64611 lt!340996) #b00000000000000000000000000000000) (bvsge (x!64611 lt!340996) #b00000000000000000000000000000000)))))

(assert (=> b!766513 (=> (not res!518708) (not e!426861))))

(declare-fun b!766514 () Bool)

(assert (=> b!766514 (= e!426858 (bvsge (x!64611 lt!340996) #b01111111111111111111111111111110))))

(declare-fun e!426860 () SeekEntryResult!7828)

(declare-fun b!766515 () Bool)

(assert (=> b!766515 (= e!426860 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340913 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340913 lt!340915 mask!3328))))

(declare-fun b!766516 () Bool)

(assert (=> b!766516 (and (bvsge (index!33681 lt!340996) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340996) (size!20642 lt!340915)))))

(declare-fun res!518707 () Bool)

(assert (=> b!766516 (= res!518707 (= (select (arr!20221 lt!340915) (index!33681 lt!340996)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426859 () Bool)

(assert (=> b!766516 (=> res!518707 e!426859)))

(declare-fun b!766517 () Bool)

(assert (=> b!766517 (= e!426857 e!426860)))

(declare-fun c!84295 () Bool)

(assert (=> b!766517 (= c!84295 (or (= lt!340995 lt!340913) (= (bvadd lt!340995 lt!340995) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766518 () Bool)

(assert (=> b!766518 (and (bvsge (index!33681 lt!340996) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340996) (size!20642 lt!340915)))))

(declare-fun res!518706 () Bool)

(assert (=> b!766518 (= res!518706 (= (select (arr!20221 lt!340915) (index!33681 lt!340996)) lt!340913))))

(assert (=> b!766518 (=> res!518706 e!426859)))

(assert (=> b!766518 (= e!426861 e!426859)))

(declare-fun b!766519 () Bool)

(assert (=> b!766519 (= e!426857 (Intermediate!7828 true (toIndex!0 lt!340913 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766520 () Bool)

(assert (=> b!766520 (and (bvsge (index!33681 lt!340996) #b00000000000000000000000000000000) (bvslt (index!33681 lt!340996) (size!20642 lt!340915)))))

(assert (=> b!766520 (= e!426859 (= (select (arr!20221 lt!340915) (index!33681 lt!340996)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766521 () Bool)

(assert (=> b!766521 (= e!426860 (Intermediate!7828 false (toIndex!0 lt!340913 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101167 c!84293) b!766519))

(assert (= (and d!101167 (not c!84293)) b!766517))

(assert (= (and b!766517 c!84295) b!766521))

(assert (= (and b!766517 (not c!84295)) b!766515))

(assert (= (and d!101167 c!84294) b!766514))

(assert (= (and d!101167 (not c!84294)) b!766513))

(assert (= (and b!766513 res!518708) b!766518))

(assert (= (and b!766518 (not res!518706)) b!766516))

(assert (= (and b!766516 (not res!518707)) b!766520))

(assert (=> d!101167 m!712423))

(declare-fun m!712557 () Bool)

(assert (=> d!101167 m!712557))

(assert (=> d!101167 m!712399))

(assert (=> b!766515 m!712423))

(declare-fun m!712559 () Bool)

(assert (=> b!766515 m!712559))

(assert (=> b!766515 m!712559))

(declare-fun m!712561 () Bool)

(assert (=> b!766515 m!712561))

(declare-fun m!712563 () Bool)

(assert (=> b!766518 m!712563))

(assert (=> b!766520 m!712563))

(assert (=> b!766516 m!712563))

(assert (=> b!766331 d!101167))

(declare-fun d!101169 () Bool)

(declare-fun lt!341006 () (_ BitVec 32))

(declare-fun lt!341005 () (_ BitVec 32))

(assert (=> d!101169 (= lt!341006 (bvmul (bvxor lt!341005 (bvlshr lt!341005 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101169 (= lt!341005 ((_ extract 31 0) (bvand (bvxor lt!340913 (bvlshr lt!340913 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101169 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!518709 (let ((h!15364 ((_ extract 31 0) (bvand (bvxor lt!340913 (bvlshr lt!340913 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64617 (bvmul (bvxor h!15364 (bvlshr h!15364 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64617 (bvlshr x!64617 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!518709 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!518709 #b00000000000000000000000000000000))))))

(assert (=> d!101169 (= (toIndex!0 lt!340913 mask!3328) (bvand (bvxor lt!341006 (bvlshr lt!341006 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!766331 d!101169))

(declare-fun bm!35047 () Bool)

(declare-fun call!35050 () Bool)

(declare-fun c!84313 () Bool)

(assert (=> bm!35047 (= call!35050 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84313 (Cons!14272 (select (arr!20221 a!3186) #b00000000000000000000000000000000) Nil!14273) Nil!14273)))))

(declare-fun b!766577 () Bool)

(declare-fun e!426897 () Bool)

(assert (=> b!766577 (= e!426897 call!35050)))

(declare-fun b!766578 () Bool)

(declare-fun e!426896 () Bool)

(declare-fun e!426895 () Bool)

(assert (=> b!766578 (= e!426896 e!426895)))

(declare-fun res!518732 () Bool)

(assert (=> b!766578 (=> (not res!518732) (not e!426895))))

(declare-fun e!426898 () Bool)

(assert (=> b!766578 (= res!518732 (not e!426898))))

(declare-fun res!518733 () Bool)

(assert (=> b!766578 (=> (not res!518733) (not e!426898))))

(assert (=> b!766578 (= res!518733 (validKeyInArray!0 (select (arr!20221 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!766579 () Bool)

(declare-fun contains!4080 (List!14276 (_ BitVec 64)) Bool)

(assert (=> b!766579 (= e!426898 (contains!4080 Nil!14273 (select (arr!20221 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!766580 () Bool)

(assert (=> b!766580 (= e!426895 e!426897)))

(assert (=> b!766580 (= c!84313 (validKeyInArray!0 (select (arr!20221 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101171 () Bool)

(declare-fun res!518731 () Bool)

(assert (=> d!101171 (=> res!518731 e!426896)))

(assert (=> d!101171 (= res!518731 (bvsge #b00000000000000000000000000000000 (size!20642 a!3186)))))

(assert (=> d!101171 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14273) e!426896)))

(declare-fun b!766581 () Bool)

(assert (=> b!766581 (= e!426897 call!35050)))

(assert (= (and d!101171 (not res!518731)) b!766578))

(assert (= (and b!766578 res!518733) b!766579))

(assert (= (and b!766578 res!518732) b!766580))

(assert (= (and b!766580 c!84313) b!766581))

(assert (= (and b!766580 (not c!84313)) b!766577))

(assert (= (or b!766581 b!766577) bm!35047))

(declare-fun m!712569 () Bool)

(assert (=> bm!35047 m!712569))

(declare-fun m!712571 () Bool)

(assert (=> bm!35047 m!712571))

(assert (=> b!766578 m!712569))

(assert (=> b!766578 m!712569))

(declare-fun m!712573 () Bool)

(assert (=> b!766578 m!712573))

(assert (=> b!766579 m!712569))

(assert (=> b!766579 m!712569))

(declare-fun m!712575 () Bool)

(assert (=> b!766579 m!712575))

(assert (=> b!766580 m!712569))

(assert (=> b!766580 m!712569))

(assert (=> b!766580 m!712573))

(assert (=> b!766342 d!101171))

(declare-fun d!101175 () Bool)

(declare-fun e!426900 () Bool)

(assert (=> d!101175 e!426900))

(declare-fun c!84315 () Bool)

(declare-fun lt!341014 () SeekEntryResult!7828)

(assert (=> d!101175 (= c!84315 (and ((_ is Intermediate!7828) lt!341014) (undefined!8640 lt!341014)))))

(declare-fun e!426899 () SeekEntryResult!7828)

(assert (=> d!101175 (= lt!341014 e!426899)))

(declare-fun c!84314 () Bool)

(assert (=> d!101175 (= c!84314 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341013 () (_ BitVec 64))

(assert (=> d!101175 (= lt!341013 (select (arr!20221 a!3186) index!1321))))

(assert (=> d!101175 (validMask!0 mask!3328)))

(assert (=> d!101175 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!341014)))

(declare-fun b!766582 () Bool)

(declare-fun e!426903 () Bool)

(assert (=> b!766582 (= e!426900 e!426903)))

(declare-fun res!518736 () Bool)

(assert (=> b!766582 (= res!518736 (and ((_ is Intermediate!7828) lt!341014) (not (undefined!8640 lt!341014)) (bvslt (x!64611 lt!341014) #b01111111111111111111111111111110) (bvsge (x!64611 lt!341014) #b00000000000000000000000000000000) (bvsge (x!64611 lt!341014) x!1131)))))

(assert (=> b!766582 (=> (not res!518736) (not e!426903))))

(declare-fun b!766583 () Bool)

(assert (=> b!766583 (= e!426900 (bvsge (x!64611 lt!341014) #b01111111111111111111111111111110))))

(declare-fun b!766584 () Bool)

(declare-fun e!426902 () SeekEntryResult!7828)

(assert (=> b!766584 (= e!426902 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20221 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766585 () Bool)

(assert (=> b!766585 (and (bvsge (index!33681 lt!341014) #b00000000000000000000000000000000) (bvslt (index!33681 lt!341014) (size!20642 a!3186)))))

(declare-fun res!518735 () Bool)

(assert (=> b!766585 (= res!518735 (= (select (arr!20221 a!3186) (index!33681 lt!341014)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426901 () Bool)

(assert (=> b!766585 (=> res!518735 e!426901)))

(declare-fun b!766586 () Bool)

(assert (=> b!766586 (= e!426899 e!426902)))

(declare-fun c!84316 () Bool)

(assert (=> b!766586 (= c!84316 (or (= lt!341013 (select (arr!20221 a!3186) j!159)) (= (bvadd lt!341013 lt!341013) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766587 () Bool)

(assert (=> b!766587 (and (bvsge (index!33681 lt!341014) #b00000000000000000000000000000000) (bvslt (index!33681 lt!341014) (size!20642 a!3186)))))

(declare-fun res!518734 () Bool)

(assert (=> b!766587 (= res!518734 (= (select (arr!20221 a!3186) (index!33681 lt!341014)) (select (arr!20221 a!3186) j!159)))))

(assert (=> b!766587 (=> res!518734 e!426901)))

(assert (=> b!766587 (= e!426903 e!426901)))

(declare-fun b!766588 () Bool)

(assert (=> b!766588 (= e!426899 (Intermediate!7828 true index!1321 x!1131))))

(declare-fun b!766589 () Bool)

(assert (=> b!766589 (and (bvsge (index!33681 lt!341014) #b00000000000000000000000000000000) (bvslt (index!33681 lt!341014) (size!20642 a!3186)))))

(assert (=> b!766589 (= e!426901 (= (select (arr!20221 a!3186) (index!33681 lt!341014)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766590 () Bool)

(assert (=> b!766590 (= e!426902 (Intermediate!7828 false index!1321 x!1131))))

(assert (= (and d!101175 c!84314) b!766588))

(assert (= (and d!101175 (not c!84314)) b!766586))

(assert (= (and b!766586 c!84316) b!766590))

(assert (= (and b!766586 (not c!84316)) b!766584))

(assert (= (and d!101175 c!84315) b!766583))

(assert (= (and d!101175 (not c!84315)) b!766582))

(assert (= (and b!766582 res!518736) b!766587))

(assert (= (and b!766587 (not res!518734)) b!766585))

(assert (= (and b!766585 (not res!518735)) b!766589))

(assert (=> d!101175 m!712503))

(assert (=> d!101175 m!712399))

(assert (=> b!766584 m!712431))

(assert (=> b!766584 m!712431))

(assert (=> b!766584 m!712389))

(declare-fun m!712577 () Bool)

(assert (=> b!766584 m!712577))

(declare-fun m!712579 () Bool)

(assert (=> b!766587 m!712579))

(assert (=> b!766589 m!712579))

(assert (=> b!766585 m!712579))

(assert (=> b!766328 d!101175))

(declare-fun d!101177 () Bool)

(declare-fun res!518752 () Bool)

(declare-fun e!426926 () Bool)

(assert (=> d!101177 (=> res!518752 e!426926)))

(assert (=> d!101177 (= res!518752 (bvsge #b00000000000000000000000000000000 (size!20642 a!3186)))))

(assert (=> d!101177 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!426926)))

(declare-fun b!766626 () Bool)

(declare-fun e!426925 () Bool)

(declare-fun call!35053 () Bool)

(assert (=> b!766626 (= e!426925 call!35053)))

(declare-fun b!766627 () Bool)

(declare-fun e!426927 () Bool)

(assert (=> b!766627 (= e!426925 e!426927)))

(declare-fun lt!341034 () (_ BitVec 64))

(assert (=> b!766627 (= lt!341034 (select (arr!20221 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341033 () Unit!26382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42240 (_ BitVec 64) (_ BitVec 32)) Unit!26382)

(assert (=> b!766627 (= lt!341033 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341034 #b00000000000000000000000000000000))))

(assert (=> b!766627 (arrayContainsKey!0 a!3186 lt!341034 #b00000000000000000000000000000000)))

(declare-fun lt!341035 () Unit!26382)

(assert (=> b!766627 (= lt!341035 lt!341033)))

(declare-fun res!518751 () Bool)

(assert (=> b!766627 (= res!518751 (= (seekEntryOrOpen!0 (select (arr!20221 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7828 #b00000000000000000000000000000000)))))

(assert (=> b!766627 (=> (not res!518751) (not e!426927))))

(declare-fun bm!35050 () Bool)

(assert (=> bm!35050 (= call!35053 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!766628 () Bool)

(assert (=> b!766628 (= e!426927 call!35053)))

(declare-fun b!766629 () Bool)

(assert (=> b!766629 (= e!426926 e!426925)))

(declare-fun c!84328 () Bool)

(assert (=> b!766629 (= c!84328 (validKeyInArray!0 (select (arr!20221 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101177 (not res!518752)) b!766629))

(assert (= (and b!766629 c!84328) b!766627))

(assert (= (and b!766629 (not c!84328)) b!766626))

(assert (= (and b!766627 res!518751) b!766628))

(assert (= (or b!766628 b!766626) bm!35050))

(assert (=> b!766627 m!712569))

(declare-fun m!712603 () Bool)

(assert (=> b!766627 m!712603))

(declare-fun m!712605 () Bool)

(assert (=> b!766627 m!712605))

(assert (=> b!766627 m!712569))

(declare-fun m!712607 () Bool)

(assert (=> b!766627 m!712607))

(declare-fun m!712609 () Bool)

(assert (=> bm!35050 m!712609))

(assert (=> b!766629 m!712569))

(assert (=> b!766629 m!712569))

(assert (=> b!766629 m!712573))

(assert (=> b!766327 d!101177))

(declare-fun d!101189 () Bool)

(declare-fun res!518754 () Bool)

(declare-fun e!426929 () Bool)

(assert (=> d!101189 (=> res!518754 e!426929)))

(assert (=> d!101189 (= res!518754 (bvsge j!159 (size!20642 a!3186)))))

(assert (=> d!101189 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!426929)))

(declare-fun b!766630 () Bool)

(declare-fun e!426928 () Bool)

(declare-fun call!35054 () Bool)

(assert (=> b!766630 (= e!426928 call!35054)))

(declare-fun b!766631 () Bool)

(declare-fun e!426930 () Bool)

(assert (=> b!766631 (= e!426928 e!426930)))

(declare-fun lt!341039 () (_ BitVec 64))

(assert (=> b!766631 (= lt!341039 (select (arr!20221 a!3186) j!159))))

(declare-fun lt!341038 () Unit!26382)

(assert (=> b!766631 (= lt!341038 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341039 j!159))))

(assert (=> b!766631 (arrayContainsKey!0 a!3186 lt!341039 #b00000000000000000000000000000000)))

(declare-fun lt!341040 () Unit!26382)

(assert (=> b!766631 (= lt!341040 lt!341038)))

(declare-fun res!518753 () Bool)

(assert (=> b!766631 (= res!518753 (= (seekEntryOrOpen!0 (select (arr!20221 a!3186) j!159) a!3186 mask!3328) (Found!7828 j!159)))))

(assert (=> b!766631 (=> (not res!518753) (not e!426930))))

(declare-fun bm!35051 () Bool)

(assert (=> bm!35051 (= call!35054 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!766632 () Bool)

(assert (=> b!766632 (= e!426930 call!35054)))

(declare-fun b!766633 () Bool)

(assert (=> b!766633 (= e!426929 e!426928)))

(declare-fun c!84329 () Bool)

(assert (=> b!766633 (= c!84329 (validKeyInArray!0 (select (arr!20221 a!3186) j!159)))))

(assert (= (and d!101189 (not res!518754)) b!766633))

(assert (= (and b!766633 c!84329) b!766631))

(assert (= (and b!766633 (not c!84329)) b!766630))

(assert (= (and b!766631 res!518753) b!766632))

(assert (= (or b!766632 b!766630) bm!35051))

(assert (=> b!766631 m!712389))

(declare-fun m!712611 () Bool)

(assert (=> b!766631 m!712611))

(declare-fun m!712613 () Bool)

(assert (=> b!766631 m!712613))

(assert (=> b!766631 m!712389))

(assert (=> b!766631 m!712433))

(declare-fun m!712615 () Bool)

(assert (=> bm!35051 m!712615))

(assert (=> b!766633 m!712389))

(assert (=> b!766633 m!712389))

(assert (=> b!766633 m!712413))

(assert (=> b!766340 d!101189))

(declare-fun d!101191 () Bool)

(assert (=> d!101191 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341049 () Unit!26382)

(declare-fun choose!38 (array!42240 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26382)

(assert (=> d!101191 (= lt!341049 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101191 (validMask!0 mask!3328)))

(assert (=> d!101191 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341049)))

(declare-fun bs!21500 () Bool)

(assert (= bs!21500 d!101191))

(assert (=> bs!21500 m!712395))

(declare-fun m!712617 () Bool)

(assert (=> bs!21500 m!712617))

(assert (=> bs!21500 m!712399))

(assert (=> b!766340 d!101191))

(declare-fun d!101193 () Bool)

(declare-fun e!426938 () Bool)

(assert (=> d!101193 e!426938))

(declare-fun c!84337 () Bool)

(declare-fun lt!341051 () SeekEntryResult!7828)

(assert (=> d!101193 (= c!84337 (and ((_ is Intermediate!7828) lt!341051) (undefined!8640 lt!341051)))))

(declare-fun e!426937 () SeekEntryResult!7828)

(assert (=> d!101193 (= lt!341051 e!426937)))

(declare-fun c!84336 () Bool)

(assert (=> d!101193 (= c!84336 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341050 () (_ BitVec 64))

(assert (=> d!101193 (= lt!341050 (select (arr!20221 a!3186) (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328)))))

(assert (=> d!101193 (validMask!0 mask!3328)))

(assert (=> d!101193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328) (select (arr!20221 a!3186) j!159) a!3186 mask!3328) lt!341051)))

(declare-fun b!766646 () Bool)

(declare-fun e!426941 () Bool)

(assert (=> b!766646 (= e!426938 e!426941)))

(declare-fun res!518757 () Bool)

(assert (=> b!766646 (= res!518757 (and ((_ is Intermediate!7828) lt!341051) (not (undefined!8640 lt!341051)) (bvslt (x!64611 lt!341051) #b01111111111111111111111111111110) (bvsge (x!64611 lt!341051) #b00000000000000000000000000000000) (bvsge (x!64611 lt!341051) #b00000000000000000000000000000000)))))

(assert (=> b!766646 (=> (not res!518757) (not e!426941))))

(declare-fun b!766647 () Bool)

(assert (=> b!766647 (= e!426938 (bvsge (x!64611 lt!341051) #b01111111111111111111111111111110))))

(declare-fun b!766648 () Bool)

(declare-fun e!426940 () SeekEntryResult!7828)

(assert (=> b!766648 (= e!426940 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20221 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766649 () Bool)

(assert (=> b!766649 (and (bvsge (index!33681 lt!341051) #b00000000000000000000000000000000) (bvslt (index!33681 lt!341051) (size!20642 a!3186)))))

(declare-fun res!518756 () Bool)

(assert (=> b!766649 (= res!518756 (= (select (arr!20221 a!3186) (index!33681 lt!341051)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426939 () Bool)

(assert (=> b!766649 (=> res!518756 e!426939)))

(declare-fun b!766650 () Bool)

(assert (=> b!766650 (= e!426937 e!426940)))

(declare-fun c!84338 () Bool)

(assert (=> b!766650 (= c!84338 (or (= lt!341050 (select (arr!20221 a!3186) j!159)) (= (bvadd lt!341050 lt!341050) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766651 () Bool)

(assert (=> b!766651 (and (bvsge (index!33681 lt!341051) #b00000000000000000000000000000000) (bvslt (index!33681 lt!341051) (size!20642 a!3186)))))

(declare-fun res!518755 () Bool)

(assert (=> b!766651 (= res!518755 (= (select (arr!20221 a!3186) (index!33681 lt!341051)) (select (arr!20221 a!3186) j!159)))))

(assert (=> b!766651 (=> res!518755 e!426939)))

(assert (=> b!766651 (= e!426941 e!426939)))

(declare-fun b!766652 () Bool)

(assert (=> b!766652 (= e!426937 (Intermediate!7828 true (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766653 () Bool)

(assert (=> b!766653 (and (bvsge (index!33681 lt!341051) #b00000000000000000000000000000000) (bvslt (index!33681 lt!341051) (size!20642 a!3186)))))

(assert (=> b!766653 (= e!426939 (= (select (arr!20221 a!3186) (index!33681 lt!341051)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766654 () Bool)

(assert (=> b!766654 (= e!426940 (Intermediate!7828 false (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101193 c!84336) b!766652))

(assert (= (and d!101193 (not c!84336)) b!766650))

(assert (= (and b!766650 c!84338) b!766654))

(assert (= (and b!766650 (not c!84338)) b!766648))

(assert (= (and d!101193 c!84337) b!766647))

(assert (= (and d!101193 (not c!84337)) b!766646))

(assert (= (and b!766646 res!518757) b!766651))

(assert (= (and b!766651 (not res!518755)) b!766649))

(assert (= (and b!766649 (not res!518756)) b!766653))

(assert (=> d!101193 m!712403))

(declare-fun m!712619 () Bool)

(assert (=> d!101193 m!712619))

(assert (=> d!101193 m!712399))

(assert (=> b!766648 m!712403))

(declare-fun m!712621 () Bool)

(assert (=> b!766648 m!712621))

(assert (=> b!766648 m!712621))

(assert (=> b!766648 m!712389))

(declare-fun m!712623 () Bool)

(assert (=> b!766648 m!712623))

(declare-fun m!712625 () Bool)

(assert (=> b!766651 m!712625))

(assert (=> b!766653 m!712625))

(assert (=> b!766649 m!712625))

(assert (=> b!766325 d!101193))

(declare-fun d!101195 () Bool)

(declare-fun lt!341053 () (_ BitVec 32))

(declare-fun lt!341052 () (_ BitVec 32))

(assert (=> d!101195 (= lt!341053 (bvmul (bvxor lt!341052 (bvlshr lt!341052 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101195 (= lt!341052 ((_ extract 31 0) (bvand (bvxor (select (arr!20221 a!3186) j!159) (bvlshr (select (arr!20221 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101195 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!518709 (let ((h!15364 ((_ extract 31 0) (bvand (bvxor (select (arr!20221 a!3186) j!159) (bvlshr (select (arr!20221 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64617 (bvmul (bvxor h!15364 (bvlshr h!15364 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64617 (bvlshr x!64617 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!518709 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!518709 #b00000000000000000000000000000000))))))

(assert (=> d!101195 (= (toIndex!0 (select (arr!20221 a!3186) j!159) mask!3328) (bvand (bvxor lt!341053 (bvlshr lt!341053 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!766325 d!101195))

(declare-fun d!101197 () Bool)

(declare-fun res!518762 () Bool)

(declare-fun e!426949 () Bool)

(assert (=> d!101197 (=> res!518762 e!426949)))

(assert (=> d!101197 (= res!518762 (= (select (arr!20221 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!101197 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!426949)))

(declare-fun b!766665 () Bool)

(declare-fun e!426950 () Bool)

(assert (=> b!766665 (= e!426949 e!426950)))

(declare-fun res!518763 () Bool)

(assert (=> b!766665 (=> (not res!518763) (not e!426950))))

(assert (=> b!766665 (= res!518763 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20642 a!3186)))))

(declare-fun b!766666 () Bool)

(assert (=> b!766666 (= e!426950 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101197 (not res!518762)) b!766665))

(assert (= (and b!766665 res!518763) b!766666))

(assert (=> d!101197 m!712569))

(declare-fun m!712637 () Bool)

(assert (=> b!766666 m!712637))

(assert (=> b!766336 d!101197))

(declare-fun b!766667 () Bool)

(declare-fun e!426951 () SeekEntryResult!7828)

(declare-fun lt!341057 () SeekEntryResult!7828)

(assert (=> b!766667 (= e!426951 (MissingZero!7828 (index!33681 lt!341057)))))

(declare-fun b!766668 () Bool)

(declare-fun e!426953 () SeekEntryResult!7828)

(declare-fun e!426952 () SeekEntryResult!7828)

(assert (=> b!766668 (= e!426953 e!426952)))

(declare-fun lt!341059 () (_ BitVec 64))

(assert (=> b!766668 (= lt!341059 (select (arr!20221 a!3186) (index!33681 lt!341057)))))

(declare-fun c!84342 () Bool)

(assert (=> b!766668 (= c!84342 (= lt!341059 k0!2102))))

(declare-fun b!766669 () Bool)

(declare-fun c!84344 () Bool)

(assert (=> b!766669 (= c!84344 (= lt!341059 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766669 (= e!426952 e!426951)))

(declare-fun b!766670 () Bool)

(assert (=> b!766670 (= e!426952 (Found!7828 (index!33681 lt!341057)))))

(declare-fun b!766671 () Bool)

(assert (=> b!766671 (= e!426953 Undefined!7828)))

(declare-fun d!101201 () Bool)

(declare-fun lt!341058 () SeekEntryResult!7828)

(assert (=> d!101201 (and (or ((_ is Undefined!7828) lt!341058) (not ((_ is Found!7828) lt!341058)) (and (bvsge (index!33680 lt!341058) #b00000000000000000000000000000000) (bvslt (index!33680 lt!341058) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!341058) ((_ is Found!7828) lt!341058) (not ((_ is MissingZero!7828) lt!341058)) (and (bvsge (index!33679 lt!341058) #b00000000000000000000000000000000) (bvslt (index!33679 lt!341058) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!341058) ((_ is Found!7828) lt!341058) ((_ is MissingZero!7828) lt!341058) (not ((_ is MissingVacant!7828) lt!341058)) (and (bvsge (index!33682 lt!341058) #b00000000000000000000000000000000) (bvslt (index!33682 lt!341058) (size!20642 a!3186)))) (or ((_ is Undefined!7828) lt!341058) (ite ((_ is Found!7828) lt!341058) (= (select (arr!20221 a!3186) (index!33680 lt!341058)) k0!2102) (ite ((_ is MissingZero!7828) lt!341058) (= (select (arr!20221 a!3186) (index!33679 lt!341058)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7828) lt!341058) (= (select (arr!20221 a!3186) (index!33682 lt!341058)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101201 (= lt!341058 e!426953)))

(declare-fun c!84343 () Bool)

(assert (=> d!101201 (= c!84343 (and ((_ is Intermediate!7828) lt!341057) (undefined!8640 lt!341057)))))

(assert (=> d!101201 (= lt!341057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!101201 (validMask!0 mask!3328)))

(assert (=> d!101201 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!341058)))

(declare-fun b!766672 () Bool)

(assert (=> b!766672 (= e!426951 (seekKeyOrZeroReturnVacant!0 (x!64611 lt!341057) (index!33681 lt!341057) (index!33681 lt!341057) k0!2102 a!3186 mask!3328))))

(assert (= (and d!101201 c!84343) b!766671))

(assert (= (and d!101201 (not c!84343)) b!766668))

(assert (= (and b!766668 c!84342) b!766670))

(assert (= (and b!766668 (not c!84342)) b!766669))

(assert (= (and b!766669 c!84344) b!766667))

(assert (= (and b!766669 (not c!84344)) b!766672))

(declare-fun m!712639 () Bool)

(assert (=> b!766668 m!712639))

(declare-fun m!712641 () Bool)

(assert (=> d!101201 m!712641))

(declare-fun m!712643 () Bool)

(assert (=> d!101201 m!712643))

(assert (=> d!101201 m!712399))

(declare-fun m!712645 () Bool)

(assert (=> d!101201 m!712645))

(declare-fun m!712647 () Bool)

(assert (=> d!101201 m!712647))

(assert (=> d!101201 m!712645))

(declare-fun m!712649 () Bool)

(assert (=> d!101201 m!712649))

(declare-fun m!712651 () Bool)

(assert (=> b!766672 m!712651))

(assert (=> b!766337 d!101201))

(declare-fun d!101203 () Bool)

(assert (=> d!101203 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!766326 d!101203))

(check-sat (not b!766666) (not b!766627) (not d!101201) (not d!101143) (not bm!35047) (not d!101167) (not b!766633) (not d!101175) (not d!101163) (not b!766580) (not bm!35050) (not bm!35051) (not b!766584) (not b!766579) (not b!766515) (not b!766631) (not d!101165) (not b!766503) (not b!766436) (not b!766648) (not b!766506) (not d!101147) (not d!101131) (not b!766629) (not b!766672) (not b!766578) (not b!766418) (not d!101135) (not b!766491) (not d!101191) (not d!101193))
(check-sat)
