; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45742 () Bool)

(assert start!45742)

(declare-fun b!505399 () Bool)

(declare-fun res!306605 () Bool)

(declare-fun e!295858 () Bool)

(assert (=> b!505399 (=> res!306605 e!295858)))

(declare-fun e!295859 () Bool)

(assert (=> b!505399 (= res!306605 e!295859)))

(declare-fun res!306600 () Bool)

(assert (=> b!505399 (=> (not res!306600) (not e!295859))))

(declare-datatypes ((SeekEntryResult!4080 0))(
  ( (MissingZero!4080 (index!18508 (_ BitVec 32))) (Found!4080 (index!18509 (_ BitVec 32))) (Intermediate!4080 (undefined!4892 Bool) (index!18510 (_ BitVec 32)) (x!47548 (_ BitVec 32))) (Undefined!4080) (MissingVacant!4080 (index!18511 (_ BitVec 32))) )
))
(declare-fun lt!230449 () SeekEntryResult!4080)

(assert (=> b!505399 (= res!306600 (bvsgt #b00000000000000000000000000000000 (x!47548 lt!230449)))))

(declare-fun b!505400 () Bool)

(declare-fun e!295862 () Bool)

(assert (=> b!505400 (= e!295862 false)))

(declare-fun b!505401 () Bool)

(declare-datatypes ((Unit!15410 0))(
  ( (Unit!15411) )
))
(declare-fun e!295861 () Unit!15410)

(declare-fun Unit!15412 () Unit!15410)

(assert (=> b!505401 (= e!295861 Unit!15412)))

(declare-fun lt!230446 () Unit!15410)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32458 0))(
  ( (array!32459 (arr!15606 (Array (_ BitVec 32) (_ BitVec 64))) (size!15970 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32458)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!230450 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15410)

(assert (=> b!505401 (= lt!230446 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230450 #b00000000000000000000000000000000 (index!18510 lt!230449) (x!47548 lt!230449) mask!3524))))

(declare-fun res!306604 () Bool)

(declare-fun lt!230441 () (_ BitVec 64))

(declare-fun lt!230439 () array!32458)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32458 (_ BitVec 32)) SeekEntryResult!4080)

(assert (=> b!505401 (= res!306604 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230450 lt!230441 lt!230439 mask!3524) (Intermediate!4080 false (index!18510 lt!230449) (x!47548 lt!230449))))))

(assert (=> b!505401 (=> (not res!306604) (not e!295862))))

(assert (=> b!505401 e!295862))

(declare-fun b!505402 () Bool)

(declare-fun res!306598 () Bool)

(assert (=> b!505402 (=> res!306598 e!295858)))

(declare-fun lt!230443 () SeekEntryResult!4080)

(assert (=> b!505402 (= res!306598 (not (= lt!230443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230450 lt!230441 lt!230439 mask!3524))))))

(declare-fun b!505403 () Bool)

(declare-fun res!306596 () Bool)

(declare-fun e!295863 () Bool)

(assert (=> b!505403 (=> (not res!306596) (not e!295863))))

(declare-fun arrayContainsKey!0 (array!32458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505403 (= res!306596 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505404 () Bool)

(declare-fun e!295860 () Bool)

(assert (=> b!505404 (= e!295863 e!295860)))

(declare-fun res!306608 () Bool)

(assert (=> b!505404 (=> (not res!306608) (not e!295860))))

(declare-fun lt!230445 () SeekEntryResult!4080)

(assert (=> b!505404 (= res!306608 (or (= lt!230445 (MissingZero!4080 i!1204)) (= lt!230445 (MissingVacant!4080 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32458 (_ BitVec 32)) SeekEntryResult!4080)

(assert (=> b!505404 (= lt!230445 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505405 () Bool)

(declare-fun res!306594 () Bool)

(assert (=> b!505405 (=> (not res!306594) (not e!295860))))

(declare-datatypes ((List!9817 0))(
  ( (Nil!9814) (Cons!9813 (h!10690 (_ BitVec 64)) (t!16053 List!9817)) )
))
(declare-fun arrayNoDuplicates!0 (array!32458 (_ BitVec 32) List!9817) Bool)

(assert (=> b!505405 (= res!306594 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9814))))

(declare-fun b!505406 () Bool)

(assert (=> b!505406 (= e!295858 true)))

(declare-fun lt!230440 () SeekEntryResult!4080)

(assert (=> b!505406 (= (seekEntryOrOpen!0 lt!230441 lt!230439 mask!3524) lt!230440)))

(declare-fun lt!230448 () Unit!15410)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15410)

(assert (=> b!505406 (= lt!230448 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230450 #b00000000000000000000000000000000 (index!18510 lt!230449) (x!47548 lt!230449) mask!3524))))

(declare-fun b!505407 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32458 (_ BitVec 32)) SeekEntryResult!4080)

(assert (=> b!505407 (= e!295859 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230450 (index!18510 lt!230449) (select (arr!15606 a!3235) j!176) a!3235 mask!3524) lt!230440)))))

(declare-fun b!505408 () Bool)

(declare-fun res!306601 () Bool)

(assert (=> b!505408 (=> (not res!306601) (not e!295863))))

(assert (=> b!505408 (= res!306601 (and (= (size!15970 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15970 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15970 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505409 () Bool)

(declare-fun e!295864 () Bool)

(assert (=> b!505409 (= e!295860 (not e!295864))))

(declare-fun res!306602 () Bool)

(assert (=> b!505409 (=> res!306602 e!295864)))

(assert (=> b!505409 (= res!306602 (or (= lt!230449 lt!230443) (undefined!4892 lt!230449) (not (is-Intermediate!4080 lt!230449))))))

(declare-fun lt!230447 () (_ BitVec 32))

(assert (=> b!505409 (= lt!230443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230447 lt!230441 lt!230439 mask!3524))))

(assert (=> b!505409 (= lt!230449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230450 (select (arr!15606 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505409 (= lt!230447 (toIndex!0 lt!230441 mask!3524))))

(assert (=> b!505409 (= lt!230441 (select (store (arr!15606 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505409 (= lt!230450 (toIndex!0 (select (arr!15606 a!3235) j!176) mask!3524))))

(assert (=> b!505409 (= lt!230439 (array!32459 (store (arr!15606 a!3235) i!1204 k!2280) (size!15970 a!3235)))))

(assert (=> b!505409 (= lt!230440 (Found!4080 j!176))))

(declare-fun e!295856 () Bool)

(assert (=> b!505409 e!295856))

(declare-fun res!306595 () Bool)

(assert (=> b!505409 (=> (not res!306595) (not e!295856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32458 (_ BitVec 32)) Bool)

(assert (=> b!505409 (= res!306595 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230442 () Unit!15410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15410)

(assert (=> b!505409 (= lt!230442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505410 () Bool)

(declare-fun Unit!15413 () Unit!15410)

(assert (=> b!505410 (= e!295861 Unit!15413)))

(declare-fun b!505411 () Bool)

(declare-fun res!306606 () Bool)

(assert (=> b!505411 (=> (not res!306606) (not e!295863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505411 (= res!306606 (validKeyInArray!0 k!2280))))

(declare-fun b!505412 () Bool)

(assert (=> b!505412 (= e!295856 (= (seekEntryOrOpen!0 (select (arr!15606 a!3235) j!176) a!3235 mask!3524) (Found!4080 j!176)))))

(declare-fun b!505413 () Bool)

(declare-fun res!306607 () Bool)

(assert (=> b!505413 (=> (not res!306607) (not e!295863))))

(assert (=> b!505413 (= res!306607 (validKeyInArray!0 (select (arr!15606 a!3235) j!176)))))

(declare-fun res!306599 () Bool)

(assert (=> start!45742 (=> (not res!306599) (not e!295863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45742 (= res!306599 (validMask!0 mask!3524))))

(assert (=> start!45742 e!295863))

(assert (=> start!45742 true))

(declare-fun array_inv!11380 (array!32458) Bool)

(assert (=> start!45742 (array_inv!11380 a!3235)))

(declare-fun b!505414 () Bool)

(declare-fun res!306603 () Bool)

(assert (=> b!505414 (=> (not res!306603) (not e!295860))))

(assert (=> b!505414 (= res!306603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505415 () Bool)

(assert (=> b!505415 (= e!295864 e!295858)))

(declare-fun res!306597 () Bool)

(assert (=> b!505415 (=> res!306597 e!295858)))

(assert (=> b!505415 (= res!306597 (or (bvsgt (x!47548 lt!230449) #b01111111111111111111111111111110) (bvslt lt!230450 #b00000000000000000000000000000000) (bvsge lt!230450 (size!15970 a!3235)) (bvslt (index!18510 lt!230449) #b00000000000000000000000000000000) (bvsge (index!18510 lt!230449) (size!15970 a!3235)) (not (= lt!230449 (Intermediate!4080 false (index!18510 lt!230449) (x!47548 lt!230449))))))))

(assert (=> b!505415 (= (index!18510 lt!230449) i!1204)))

(declare-fun lt!230444 () Unit!15410)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15410)

(assert (=> b!505415 (= lt!230444 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230450 #b00000000000000000000000000000000 (index!18510 lt!230449) (x!47548 lt!230449) mask!3524))))

(assert (=> b!505415 (and (or (= (select (arr!15606 a!3235) (index!18510 lt!230449)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15606 a!3235) (index!18510 lt!230449)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15606 a!3235) (index!18510 lt!230449)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15606 a!3235) (index!18510 lt!230449)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230438 () Unit!15410)

(assert (=> b!505415 (= lt!230438 e!295861)))

(declare-fun c!59681 () Bool)

(assert (=> b!505415 (= c!59681 (= (select (arr!15606 a!3235) (index!18510 lt!230449)) (select (arr!15606 a!3235) j!176)))))

(assert (=> b!505415 (and (bvslt (x!47548 lt!230449) #b01111111111111111111111111111110) (or (= (select (arr!15606 a!3235) (index!18510 lt!230449)) (select (arr!15606 a!3235) j!176)) (= (select (arr!15606 a!3235) (index!18510 lt!230449)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15606 a!3235) (index!18510 lt!230449)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45742 res!306599) b!505408))

(assert (= (and b!505408 res!306601) b!505413))

(assert (= (and b!505413 res!306607) b!505411))

(assert (= (and b!505411 res!306606) b!505403))

(assert (= (and b!505403 res!306596) b!505404))

(assert (= (and b!505404 res!306608) b!505414))

(assert (= (and b!505414 res!306603) b!505405))

(assert (= (and b!505405 res!306594) b!505409))

(assert (= (and b!505409 res!306595) b!505412))

(assert (= (and b!505409 (not res!306602)) b!505415))

(assert (= (and b!505415 c!59681) b!505401))

(assert (= (and b!505415 (not c!59681)) b!505410))

(assert (= (and b!505401 res!306604) b!505400))

(assert (= (and b!505415 (not res!306597)) b!505399))

(assert (= (and b!505399 res!306600) b!505407))

(assert (= (and b!505399 (not res!306605)) b!505402))

(assert (= (and b!505402 (not res!306598)) b!505406))

(declare-fun m!486097 () Bool)

(assert (=> b!505405 m!486097))

(declare-fun m!486099 () Bool)

(assert (=> start!45742 m!486099))

(declare-fun m!486101 () Bool)

(assert (=> start!45742 m!486101))

(declare-fun m!486103 () Bool)

(assert (=> b!505415 m!486103))

(declare-fun m!486105 () Bool)

(assert (=> b!505415 m!486105))

(declare-fun m!486107 () Bool)

(assert (=> b!505415 m!486107))

(declare-fun m!486109 () Bool)

(assert (=> b!505414 m!486109))

(assert (=> b!505407 m!486107))

(assert (=> b!505407 m!486107))

(declare-fun m!486111 () Bool)

(assert (=> b!505407 m!486111))

(declare-fun m!486113 () Bool)

(assert (=> b!505402 m!486113))

(declare-fun m!486115 () Bool)

(assert (=> b!505403 m!486115))

(declare-fun m!486117 () Bool)

(assert (=> b!505404 m!486117))

(declare-fun m!486119 () Bool)

(assert (=> b!505401 m!486119))

(assert (=> b!505401 m!486113))

(assert (=> b!505413 m!486107))

(assert (=> b!505413 m!486107))

(declare-fun m!486121 () Bool)

(assert (=> b!505413 m!486121))

(assert (=> b!505412 m!486107))

(assert (=> b!505412 m!486107))

(declare-fun m!486123 () Bool)

(assert (=> b!505412 m!486123))

(declare-fun m!486125 () Bool)

(assert (=> b!505411 m!486125))

(declare-fun m!486127 () Bool)

(assert (=> b!505406 m!486127))

(declare-fun m!486129 () Bool)

(assert (=> b!505406 m!486129))

(declare-fun m!486131 () Bool)

(assert (=> b!505409 m!486131))

(declare-fun m!486133 () Bool)

(assert (=> b!505409 m!486133))

(declare-fun m!486135 () Bool)

(assert (=> b!505409 m!486135))

(declare-fun m!486137 () Bool)

(assert (=> b!505409 m!486137))

(declare-fun m!486139 () Bool)

(assert (=> b!505409 m!486139))

(assert (=> b!505409 m!486107))

(declare-fun m!486141 () Bool)

(assert (=> b!505409 m!486141))

(assert (=> b!505409 m!486107))

(declare-fun m!486143 () Bool)

(assert (=> b!505409 m!486143))

(assert (=> b!505409 m!486107))

(declare-fun m!486145 () Bool)

(assert (=> b!505409 m!486145))

(push 1)

