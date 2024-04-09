; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45586 () Bool)

(assert start!45586)

(declare-fun b!501421 () Bool)

(declare-fun res!303090 () Bool)

(declare-fun e!293750 () Bool)

(assert (=> b!501421 (=> res!303090 e!293750)))

(declare-fun e!293753 () Bool)

(assert (=> b!501421 (= res!303090 e!293753)))

(declare-fun res!303095 () Bool)

(assert (=> b!501421 (=> (not res!303095) (not e!293753))))

(declare-datatypes ((SeekEntryResult!4002 0))(
  ( (MissingZero!4002 (index!18196 (_ BitVec 32))) (Found!4002 (index!18197 (_ BitVec 32))) (Intermediate!4002 (undefined!4814 Bool) (index!18198 (_ BitVec 32)) (x!47262 (_ BitVec 32))) (Undefined!4002) (MissingVacant!4002 (index!18199 (_ BitVec 32))) )
))
(declare-fun lt!227808 () SeekEntryResult!4002)

(assert (=> b!501421 (= res!303095 (bvsgt #b00000000000000000000000000000000 (x!47262 lt!227808)))))

(declare-fun b!501422 () Bool)

(assert (=> b!501422 (= e!293750 true)))

(declare-datatypes ((array!32302 0))(
  ( (array!32303 (arr!15528 (Array (_ BitVec 32) (_ BitVec 64))) (size!15892 (_ BitVec 32))) )
))
(declare-fun lt!227807 () array!32302)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!227812 () (_ BitVec 64))

(declare-fun lt!227815 () (_ BitVec 32))

(declare-fun lt!227814 () SeekEntryResult!4002)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32302 (_ BitVec 32)) SeekEntryResult!4002)

(assert (=> b!501422 (= lt!227814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227815 lt!227812 lt!227807 mask!3524))))

(declare-fun e!293752 () Bool)

(declare-fun a!3235 () array!32302)

(declare-fun b!501423 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32302 (_ BitVec 32)) SeekEntryResult!4002)

(assert (=> b!501423 (= e!293752 (= (seekEntryOrOpen!0 (select (arr!15528 a!3235) j!176) a!3235 mask!3524) (Found!4002 j!176)))))

(declare-fun b!501424 () Bool)

(declare-datatypes ((Unit!15098 0))(
  ( (Unit!15099) )
))
(declare-fun e!293751 () Unit!15098)

(declare-fun Unit!15100 () Unit!15098)

(assert (=> b!501424 (= e!293751 Unit!15100)))

(declare-fun b!501425 () Bool)

(declare-fun e!293755 () Bool)

(assert (=> b!501425 (= e!293755 false)))

(declare-fun b!501426 () Bool)

(declare-fun Unit!15101 () Unit!15098)

(assert (=> b!501426 (= e!293751 Unit!15101)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!227810 () Unit!15098)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32302 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15098)

(assert (=> b!501426 (= lt!227810 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227815 #b00000000000000000000000000000000 (index!18198 lt!227808) (x!47262 lt!227808) mask!3524))))

(declare-fun res!303098 () Bool)

(assert (=> b!501426 (= res!303098 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227815 lt!227812 lt!227807 mask!3524) (Intermediate!4002 false (index!18198 lt!227808) (x!47262 lt!227808))))))

(assert (=> b!501426 (=> (not res!303098) (not e!293755))))

(assert (=> b!501426 e!293755))

(declare-fun b!501427 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32302 (_ BitVec 32)) SeekEntryResult!4002)

(assert (=> b!501427 (= e!293753 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!227815 (index!18198 lt!227808) (select (arr!15528 a!3235) j!176) a!3235 mask!3524) (Found!4002 j!176))))))

(declare-fun b!501428 () Bool)

(declare-fun res!303086 () Bool)

(declare-fun e!293756 () Bool)

(assert (=> b!501428 (=> (not res!303086) (not e!293756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501428 (= res!303086 (validKeyInArray!0 (select (arr!15528 a!3235) j!176)))))

(declare-fun b!501430 () Bool)

(declare-fun res!303088 () Bool)

(declare-fun e!293757 () Bool)

(assert (=> b!501430 (=> (not res!303088) (not e!293757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32302 (_ BitVec 32)) Bool)

(assert (=> b!501430 (= res!303088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501431 () Bool)

(declare-fun res!303097 () Bool)

(assert (=> b!501431 (=> (not res!303097) (not e!293756))))

(assert (=> b!501431 (= res!303097 (and (= (size!15892 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15892 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15892 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501432 () Bool)

(assert (=> b!501432 (= e!293756 e!293757)))

(declare-fun res!303096 () Bool)

(assert (=> b!501432 (=> (not res!303096) (not e!293757))))

(declare-fun lt!227806 () SeekEntryResult!4002)

(assert (=> b!501432 (= res!303096 (or (= lt!227806 (MissingZero!4002 i!1204)) (= lt!227806 (MissingVacant!4002 i!1204))))))

(assert (=> b!501432 (= lt!227806 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501433 () Bool)

(declare-fun res!303084 () Bool)

(assert (=> b!501433 (=> (not res!303084) (not e!293756))))

(assert (=> b!501433 (= res!303084 (validKeyInArray!0 k!2280))))

(declare-fun res!303085 () Bool)

(assert (=> start!45586 (=> (not res!303085) (not e!293756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45586 (= res!303085 (validMask!0 mask!3524))))

(assert (=> start!45586 e!293756))

(assert (=> start!45586 true))

(declare-fun array_inv!11302 (array!32302) Bool)

(assert (=> start!45586 (array_inv!11302 a!3235)))

(declare-fun b!501429 () Bool)

(declare-fun res!303091 () Bool)

(assert (=> b!501429 (=> (not res!303091) (not e!293757))))

(declare-datatypes ((List!9739 0))(
  ( (Nil!9736) (Cons!9735 (h!10612 (_ BitVec 64)) (t!15975 List!9739)) )
))
(declare-fun arrayNoDuplicates!0 (array!32302 (_ BitVec 32) List!9739) Bool)

(assert (=> b!501429 (= res!303091 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9736))))

(declare-fun b!501434 () Bool)

(declare-fun e!293758 () Bool)

(assert (=> b!501434 (= e!293757 (not e!293758))))

(declare-fun res!303094 () Bool)

(assert (=> b!501434 (=> res!303094 e!293758)))

(declare-fun lt!227816 () (_ BitVec 32))

(assert (=> b!501434 (= res!303094 (= lt!227808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227816 lt!227812 lt!227807 mask!3524)))))

(assert (=> b!501434 (= lt!227808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227815 (select (arr!15528 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501434 (= lt!227816 (toIndex!0 lt!227812 mask!3524))))

(assert (=> b!501434 (= lt!227812 (select (store (arr!15528 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501434 (= lt!227815 (toIndex!0 (select (arr!15528 a!3235) j!176) mask!3524))))

(assert (=> b!501434 (= lt!227807 (array!32303 (store (arr!15528 a!3235) i!1204 k!2280) (size!15892 a!3235)))))

(assert (=> b!501434 e!293752))

(declare-fun res!303087 () Bool)

(assert (=> b!501434 (=> (not res!303087) (not e!293752))))

(assert (=> b!501434 (= res!303087 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227813 () Unit!15098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32302 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15098)

(assert (=> b!501434 (= lt!227813 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501435 () Bool)

(declare-fun res!303089 () Bool)

(assert (=> b!501435 (=> res!303089 e!293758)))

(assert (=> b!501435 (= res!303089 (or (undefined!4814 lt!227808) (not (is-Intermediate!4002 lt!227808))))))

(declare-fun b!501436 () Bool)

(declare-fun res!303093 () Bool)

(assert (=> b!501436 (=> (not res!303093) (not e!293756))))

(declare-fun arrayContainsKey!0 (array!32302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501436 (= res!303093 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501437 () Bool)

(assert (=> b!501437 (= e!293758 e!293750)))

(declare-fun res!303092 () Bool)

(assert (=> b!501437 (=> res!303092 e!293750)))

(assert (=> b!501437 (= res!303092 (or (bvsgt (x!47262 lt!227808) #b01111111111111111111111111111110) (bvslt lt!227815 #b00000000000000000000000000000000) (bvsge lt!227815 (size!15892 a!3235)) (bvslt (index!18198 lt!227808) #b00000000000000000000000000000000) (bvsge (index!18198 lt!227808) (size!15892 a!3235)) (not (= lt!227808 (Intermediate!4002 false (index!18198 lt!227808) (x!47262 lt!227808))))))))

(assert (=> b!501437 (= (index!18198 lt!227808) i!1204)))

(declare-fun lt!227811 () Unit!15098)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32302 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15098)

(assert (=> b!501437 (= lt!227811 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227815 #b00000000000000000000000000000000 (index!18198 lt!227808) (x!47262 lt!227808) mask!3524))))

(assert (=> b!501437 (and (or (= (select (arr!15528 a!3235) (index!18198 lt!227808)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15528 a!3235) (index!18198 lt!227808)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15528 a!3235) (index!18198 lt!227808)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15528 a!3235) (index!18198 lt!227808)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227809 () Unit!15098)

(assert (=> b!501437 (= lt!227809 e!293751)))

(declare-fun c!59447 () Bool)

(assert (=> b!501437 (= c!59447 (= (select (arr!15528 a!3235) (index!18198 lt!227808)) (select (arr!15528 a!3235) j!176)))))

(assert (=> b!501437 (and (bvslt (x!47262 lt!227808) #b01111111111111111111111111111110) (or (= (select (arr!15528 a!3235) (index!18198 lt!227808)) (select (arr!15528 a!3235) j!176)) (= (select (arr!15528 a!3235) (index!18198 lt!227808)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15528 a!3235) (index!18198 lt!227808)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45586 res!303085) b!501431))

(assert (= (and b!501431 res!303097) b!501428))

(assert (= (and b!501428 res!303086) b!501433))

(assert (= (and b!501433 res!303084) b!501436))

(assert (= (and b!501436 res!303093) b!501432))

(assert (= (and b!501432 res!303096) b!501430))

(assert (= (and b!501430 res!303088) b!501429))

(assert (= (and b!501429 res!303091) b!501434))

(assert (= (and b!501434 res!303087) b!501423))

(assert (= (and b!501434 (not res!303094)) b!501435))

(assert (= (and b!501435 (not res!303089)) b!501437))

(assert (= (and b!501437 c!59447) b!501426))

(assert (= (and b!501437 (not c!59447)) b!501424))

(assert (= (and b!501426 res!303098) b!501425))

(assert (= (and b!501437 (not res!303092)) b!501421))

(assert (= (and b!501421 res!303095) b!501427))

(assert (= (and b!501421 (not res!303090)) b!501422))

(declare-fun m!482473 () Bool)

(assert (=> b!501428 m!482473))

(assert (=> b!501428 m!482473))

(declare-fun m!482475 () Bool)

(assert (=> b!501428 m!482475))

(declare-fun m!482477 () Bool)

(assert (=> b!501433 m!482477))

(declare-fun m!482479 () Bool)

(assert (=> b!501434 m!482479))

(declare-fun m!482481 () Bool)

(assert (=> b!501434 m!482481))

(assert (=> b!501434 m!482473))

(declare-fun m!482483 () Bool)

(assert (=> b!501434 m!482483))

(assert (=> b!501434 m!482473))

(declare-fun m!482485 () Bool)

(assert (=> b!501434 m!482485))

(declare-fun m!482487 () Bool)

(assert (=> b!501434 m!482487))

(declare-fun m!482489 () Bool)

(assert (=> b!501434 m!482489))

(declare-fun m!482491 () Bool)

(assert (=> b!501434 m!482491))

(declare-fun m!482493 () Bool)

(assert (=> b!501434 m!482493))

(assert (=> b!501434 m!482473))

(assert (=> b!501427 m!482473))

(assert (=> b!501427 m!482473))

(declare-fun m!482495 () Bool)

(assert (=> b!501427 m!482495))

(declare-fun m!482497 () Bool)

(assert (=> start!45586 m!482497))

(declare-fun m!482499 () Bool)

(assert (=> start!45586 m!482499))

(declare-fun m!482501 () Bool)

(assert (=> b!501430 m!482501))

(declare-fun m!482503 () Bool)

(assert (=> b!501422 m!482503))

(declare-fun m!482505 () Bool)

(assert (=> b!501437 m!482505))

(declare-fun m!482507 () Bool)

(assert (=> b!501437 m!482507))

(assert (=> b!501437 m!482473))

(declare-fun m!482509 () Bool)

(assert (=> b!501426 m!482509))

(assert (=> b!501426 m!482503))

(assert (=> b!501423 m!482473))

(assert (=> b!501423 m!482473))

(declare-fun m!482511 () Bool)

(assert (=> b!501423 m!482511))

(declare-fun m!482513 () Bool)

(assert (=> b!501432 m!482513))

(declare-fun m!482515 () Bool)

(assert (=> b!501436 m!482515))

(declare-fun m!482517 () Bool)

(assert (=> b!501429 m!482517))

(push 1)

