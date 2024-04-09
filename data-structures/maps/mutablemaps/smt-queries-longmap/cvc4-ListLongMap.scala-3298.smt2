; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45746 () Bool)

(assert start!45746)

(declare-fun b!505501 () Bool)

(declare-fun e!295916 () Bool)

(declare-fun e!295911 () Bool)

(assert (=> b!505501 (= e!295916 (not e!295911))))

(declare-fun res!306695 () Bool)

(assert (=> b!505501 (=> res!306695 e!295911)))

(declare-datatypes ((SeekEntryResult!4082 0))(
  ( (MissingZero!4082 (index!18516 (_ BitVec 32))) (Found!4082 (index!18517 (_ BitVec 32))) (Intermediate!4082 (undefined!4894 Bool) (index!18518 (_ BitVec 32)) (x!47550 (_ BitVec 32))) (Undefined!4082) (MissingVacant!4082 (index!18519 (_ BitVec 32))) )
))
(declare-fun lt!230520 () SeekEntryResult!4082)

(declare-fun lt!230526 () SeekEntryResult!4082)

(assert (=> b!505501 (= res!306695 (or (= lt!230520 lt!230526) (undefined!4894 lt!230520) (not (is-Intermediate!4082 lt!230520))))))

(declare-datatypes ((array!32462 0))(
  ( (array!32463 (arr!15608 (Array (_ BitVec 32) (_ BitVec 64))) (size!15972 (_ BitVec 32))) )
))
(declare-fun lt!230524 () array!32462)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!230518 () (_ BitVec 64))

(declare-fun lt!230523 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32462 (_ BitVec 32)) SeekEntryResult!4082)

(assert (=> b!505501 (= lt!230526 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230523 lt!230518 lt!230524 mask!3524))))

(declare-fun lt!230527 () (_ BitVec 32))

(declare-fun a!3235 () array!32462)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!505501 (= lt!230520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230527 (select (arr!15608 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505501 (= lt!230523 (toIndex!0 lt!230518 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505501 (= lt!230518 (select (store (arr!15608 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505501 (= lt!230527 (toIndex!0 (select (arr!15608 a!3235) j!176) mask!3524))))

(assert (=> b!505501 (= lt!230524 (array!32463 (store (arr!15608 a!3235) i!1204 k!2280) (size!15972 a!3235)))))

(declare-fun lt!230528 () SeekEntryResult!4082)

(assert (=> b!505501 (= lt!230528 (Found!4082 j!176))))

(declare-fun e!295913 () Bool)

(assert (=> b!505501 e!295913))

(declare-fun res!306688 () Bool)

(assert (=> b!505501 (=> (not res!306688) (not e!295913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32462 (_ BitVec 32)) Bool)

(assert (=> b!505501 (= res!306688 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15418 0))(
  ( (Unit!15419) )
))
(declare-fun lt!230517 () Unit!15418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15418)

(assert (=> b!505501 (= lt!230517 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505502 () Bool)

(declare-fun e!295917 () Unit!15418)

(declare-fun Unit!15420 () Unit!15418)

(assert (=> b!505502 (= e!295917 Unit!15420)))

(declare-fun lt!230525 () Unit!15418)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32462 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15418)

(assert (=> b!505502 (= lt!230525 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230527 #b00000000000000000000000000000000 (index!18518 lt!230520) (x!47550 lt!230520) mask!3524))))

(declare-fun res!306697 () Bool)

(assert (=> b!505502 (= res!306697 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230527 lt!230518 lt!230524 mask!3524) (Intermediate!4082 false (index!18518 lt!230520) (x!47550 lt!230520))))))

(declare-fun e!295915 () Bool)

(assert (=> b!505502 (=> (not res!306697) (not e!295915))))

(assert (=> b!505502 e!295915))

(declare-fun b!505503 () Bool)

(declare-fun res!306694 () Bool)

(assert (=> b!505503 (=> (not res!306694) (not e!295916))))

(declare-datatypes ((List!9819 0))(
  ( (Nil!9816) (Cons!9815 (h!10692 (_ BitVec 64)) (t!16055 List!9819)) )
))
(declare-fun arrayNoDuplicates!0 (array!32462 (_ BitVec 32) List!9819) Bool)

(assert (=> b!505503 (= res!306694 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9816))))

(declare-fun b!505504 () Bool)

(declare-fun e!295918 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32462 (_ BitVec 32)) SeekEntryResult!4082)

(assert (=> b!505504 (= e!295918 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230527 (index!18518 lt!230520) (select (arr!15608 a!3235) j!176) a!3235 mask!3524) lt!230528)))))

(declare-fun b!505505 () Bool)

(declare-fun res!306685 () Bool)

(declare-fun e!295910 () Bool)

(assert (=> b!505505 (=> res!306685 e!295910)))

(assert (=> b!505505 (= res!306685 e!295918)))

(declare-fun res!306692 () Bool)

(assert (=> b!505505 (=> (not res!306692) (not e!295918))))

(assert (=> b!505505 (= res!306692 (bvsgt #b00000000000000000000000000000000 (x!47550 lt!230520)))))

(declare-fun b!505506 () Bool)

(assert (=> b!505506 (= e!295910 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32462 (_ BitVec 32)) SeekEntryResult!4082)

(assert (=> b!505506 (= (seekEntryOrOpen!0 lt!230518 lt!230524 mask!3524) lt!230528)))

(declare-fun lt!230516 () Unit!15418)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32462 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15418)

(assert (=> b!505506 (= lt!230516 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230527 #b00000000000000000000000000000000 (index!18518 lt!230520) (x!47550 lt!230520) mask!3524))))

(declare-fun b!505507 () Bool)

(assert (=> b!505507 (= e!295913 (= (seekEntryOrOpen!0 (select (arr!15608 a!3235) j!176) a!3235 mask!3524) (Found!4082 j!176)))))

(declare-fun res!306698 () Bool)

(declare-fun e!295914 () Bool)

(assert (=> start!45746 (=> (not res!306698) (not e!295914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45746 (= res!306698 (validMask!0 mask!3524))))

(assert (=> start!45746 e!295914))

(assert (=> start!45746 true))

(declare-fun array_inv!11382 (array!32462) Bool)

(assert (=> start!45746 (array_inv!11382 a!3235)))

(declare-fun b!505508 () Bool)

(assert (=> b!505508 (= e!295915 false)))

(declare-fun b!505509 () Bool)

(declare-fun res!306684 () Bool)

(assert (=> b!505509 (=> (not res!306684) (not e!295914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505509 (= res!306684 (validKeyInArray!0 k!2280))))

(declare-fun b!505510 () Bool)

(assert (=> b!505510 (= e!295914 e!295916)))

(declare-fun res!306691 () Bool)

(assert (=> b!505510 (=> (not res!306691) (not e!295916))))

(declare-fun lt!230519 () SeekEntryResult!4082)

(assert (=> b!505510 (= res!306691 (or (= lt!230519 (MissingZero!4082 i!1204)) (= lt!230519 (MissingVacant!4082 i!1204))))))

(assert (=> b!505510 (= lt!230519 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505511 () Bool)

(declare-fun res!306693 () Bool)

(assert (=> b!505511 (=> (not res!306693) (not e!295916))))

(assert (=> b!505511 (= res!306693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505512 () Bool)

(declare-fun res!306686 () Bool)

(assert (=> b!505512 (=> (not res!306686) (not e!295914))))

(assert (=> b!505512 (= res!306686 (and (= (size!15972 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15972 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15972 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505513 () Bool)

(declare-fun res!306687 () Bool)

(assert (=> b!505513 (=> (not res!306687) (not e!295914))))

(assert (=> b!505513 (= res!306687 (validKeyInArray!0 (select (arr!15608 a!3235) j!176)))))

(declare-fun b!505514 () Bool)

(declare-fun res!306690 () Bool)

(assert (=> b!505514 (=> res!306690 e!295910)))

(assert (=> b!505514 (= res!306690 (not (= lt!230526 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230527 lt!230518 lt!230524 mask!3524))))))

(declare-fun b!505515 () Bool)

(assert (=> b!505515 (= e!295911 e!295910)))

(declare-fun res!306689 () Bool)

(assert (=> b!505515 (=> res!306689 e!295910)))

(assert (=> b!505515 (= res!306689 (or (bvsgt (x!47550 lt!230520) #b01111111111111111111111111111110) (bvslt lt!230527 #b00000000000000000000000000000000) (bvsge lt!230527 (size!15972 a!3235)) (bvslt (index!18518 lt!230520) #b00000000000000000000000000000000) (bvsge (index!18518 lt!230520) (size!15972 a!3235)) (not (= lt!230520 (Intermediate!4082 false (index!18518 lt!230520) (x!47550 lt!230520))))))))

(assert (=> b!505515 (= (index!18518 lt!230520) i!1204)))

(declare-fun lt!230521 () Unit!15418)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32462 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15418)

(assert (=> b!505515 (= lt!230521 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230527 #b00000000000000000000000000000000 (index!18518 lt!230520) (x!47550 lt!230520) mask!3524))))

(assert (=> b!505515 (and (or (= (select (arr!15608 a!3235) (index!18518 lt!230520)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15608 a!3235) (index!18518 lt!230520)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15608 a!3235) (index!18518 lt!230520)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15608 a!3235) (index!18518 lt!230520)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230522 () Unit!15418)

(assert (=> b!505515 (= lt!230522 e!295917)))

(declare-fun c!59687 () Bool)

(assert (=> b!505515 (= c!59687 (= (select (arr!15608 a!3235) (index!18518 lt!230520)) (select (arr!15608 a!3235) j!176)))))

(assert (=> b!505515 (and (bvslt (x!47550 lt!230520) #b01111111111111111111111111111110) (or (= (select (arr!15608 a!3235) (index!18518 lt!230520)) (select (arr!15608 a!3235) j!176)) (= (select (arr!15608 a!3235) (index!18518 lt!230520)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15608 a!3235) (index!18518 lt!230520)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505516 () Bool)

(declare-fun res!306696 () Bool)

(assert (=> b!505516 (=> (not res!306696) (not e!295914))))

(declare-fun arrayContainsKey!0 (array!32462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505516 (= res!306696 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505517 () Bool)

(declare-fun Unit!15421 () Unit!15418)

(assert (=> b!505517 (= e!295917 Unit!15421)))

(assert (= (and start!45746 res!306698) b!505512))

(assert (= (and b!505512 res!306686) b!505513))

(assert (= (and b!505513 res!306687) b!505509))

(assert (= (and b!505509 res!306684) b!505516))

(assert (= (and b!505516 res!306696) b!505510))

(assert (= (and b!505510 res!306691) b!505511))

(assert (= (and b!505511 res!306693) b!505503))

(assert (= (and b!505503 res!306694) b!505501))

(assert (= (and b!505501 res!306688) b!505507))

(assert (= (and b!505501 (not res!306695)) b!505515))

(assert (= (and b!505515 c!59687) b!505502))

(assert (= (and b!505515 (not c!59687)) b!505517))

(assert (= (and b!505502 res!306697) b!505508))

(assert (= (and b!505515 (not res!306689)) b!505505))

(assert (= (and b!505505 res!306692) b!505504))

(assert (= (and b!505505 (not res!306685)) b!505514))

(assert (= (and b!505514 (not res!306690)) b!505506))

(declare-fun m!486197 () Bool)

(assert (=> b!505514 m!486197))

(declare-fun m!486199 () Bool)

(assert (=> b!505515 m!486199))

(declare-fun m!486201 () Bool)

(assert (=> b!505515 m!486201))

(declare-fun m!486203 () Bool)

(assert (=> b!505515 m!486203))

(declare-fun m!486205 () Bool)

(assert (=> b!505503 m!486205))

(declare-fun m!486207 () Bool)

(assert (=> b!505510 m!486207))

(declare-fun m!486209 () Bool)

(assert (=> b!505511 m!486209))

(assert (=> b!505513 m!486203))

(assert (=> b!505513 m!486203))

(declare-fun m!486211 () Bool)

(assert (=> b!505513 m!486211))

(assert (=> b!505504 m!486203))

(assert (=> b!505504 m!486203))

(declare-fun m!486213 () Bool)

(assert (=> b!505504 m!486213))

(declare-fun m!486215 () Bool)

(assert (=> b!505509 m!486215))

(declare-fun m!486217 () Bool)

(assert (=> b!505506 m!486217))

(declare-fun m!486219 () Bool)

(assert (=> b!505506 m!486219))

(declare-fun m!486221 () Bool)

(assert (=> b!505502 m!486221))

(assert (=> b!505502 m!486197))

(assert (=> b!505507 m!486203))

(assert (=> b!505507 m!486203))

(declare-fun m!486223 () Bool)

(assert (=> b!505507 m!486223))

(declare-fun m!486225 () Bool)

(assert (=> b!505516 m!486225))

(declare-fun m!486227 () Bool)

(assert (=> b!505501 m!486227))

(declare-fun m!486229 () Bool)

(assert (=> b!505501 m!486229))

(assert (=> b!505501 m!486203))

(declare-fun m!486231 () Bool)

(assert (=> b!505501 m!486231))

(assert (=> b!505501 m!486203))

(declare-fun m!486233 () Bool)

(assert (=> b!505501 m!486233))

(declare-fun m!486235 () Bool)

(assert (=> b!505501 m!486235))

(assert (=> b!505501 m!486203))

(declare-fun m!486237 () Bool)

(assert (=> b!505501 m!486237))

(declare-fun m!486239 () Bool)

(assert (=> b!505501 m!486239))

(declare-fun m!486241 () Bool)

(assert (=> b!505501 m!486241))

(declare-fun m!486243 () Bool)

(assert (=> start!45746 m!486243))

(declare-fun m!486245 () Bool)

(assert (=> start!45746 m!486245))

(push 1)

