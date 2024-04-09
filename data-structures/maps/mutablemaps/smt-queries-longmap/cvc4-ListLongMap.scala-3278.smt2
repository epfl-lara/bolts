; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45626 () Bool)

(assert start!45626)

(declare-fun b!502441 () Bool)

(declare-fun e!294296 () Bool)

(assert (=> b!502441 (= e!294296 false)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32342 0))(
  ( (array!32343 (arr!15548 (Array (_ BitVec 32) (_ BitVec 64))) (size!15912 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32342)

(declare-fun b!502442 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!294291 () Bool)

(declare-datatypes ((SeekEntryResult!4022 0))(
  ( (MissingZero!4022 (index!18276 (_ BitVec 32))) (Found!4022 (index!18277 (_ BitVec 32))) (Intermediate!4022 (undefined!4834 Bool) (index!18278 (_ BitVec 32)) (x!47330 (_ BitVec 32))) (Undefined!4022) (MissingVacant!4022 (index!18279 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32342 (_ BitVec 32)) SeekEntryResult!4022)

(assert (=> b!502442 (= e!294291 (= (seekEntryOrOpen!0 (select (arr!15548 a!3235) j!176) a!3235 mask!3524) (Found!4022 j!176)))))

(declare-fun b!502443 () Bool)

(declare-fun res!303984 () Bool)

(declare-fun e!294297 () Bool)

(assert (=> b!502443 (=> (not res!303984) (not e!294297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502443 (= res!303984 (validKeyInArray!0 (select (arr!15548 a!3235) j!176)))))

(declare-fun b!502444 () Bool)

(declare-fun e!294294 () Bool)

(assert (=> b!502444 (= e!294297 e!294294)))

(declare-fun res!303995 () Bool)

(assert (=> b!502444 (=> (not res!303995) (not e!294294))))

(declare-fun lt!228472 () SeekEntryResult!4022)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502444 (= res!303995 (or (= lt!228472 (MissingZero!4022 i!1204)) (= lt!228472 (MissingVacant!4022 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!502444 (= lt!228472 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502445 () Bool)

(declare-fun res!303987 () Bool)

(assert (=> b!502445 (=> (not res!303987) (not e!294294))))

(declare-datatypes ((List!9759 0))(
  ( (Nil!9756) (Cons!9755 (h!10632 (_ BitVec 64)) (t!15995 List!9759)) )
))
(declare-fun arrayNoDuplicates!0 (array!32342 (_ BitVec 32) List!9759) Bool)

(assert (=> b!502445 (= res!303987 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9756))))

(declare-fun b!502446 () Bool)

(declare-fun e!294293 () Bool)

(declare-fun e!294292 () Bool)

(assert (=> b!502446 (= e!294293 e!294292)))

(declare-fun res!303988 () Bool)

(assert (=> b!502446 (=> res!303988 e!294292)))

(declare-fun lt!228475 () SeekEntryResult!4022)

(declare-fun lt!228474 () (_ BitVec 32))

(assert (=> b!502446 (= res!303988 (or (bvsgt (x!47330 lt!228475) #b01111111111111111111111111111110) (bvslt lt!228474 #b00000000000000000000000000000000) (bvsge lt!228474 (size!15912 a!3235)) (bvslt (index!18278 lt!228475) #b00000000000000000000000000000000) (bvsge (index!18278 lt!228475) (size!15912 a!3235)) (not (= lt!228475 (Intermediate!4022 false (index!18278 lt!228475) (x!47330 lt!228475))))))))

(assert (=> b!502446 (= (index!18278 lt!228475) i!1204)))

(declare-datatypes ((Unit!15178 0))(
  ( (Unit!15179) )
))
(declare-fun lt!228468 () Unit!15178)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32342 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15178)

(assert (=> b!502446 (= lt!228468 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228474 #b00000000000000000000000000000000 (index!18278 lt!228475) (x!47330 lt!228475) mask!3524))))

(assert (=> b!502446 (and (or (= (select (arr!15548 a!3235) (index!18278 lt!228475)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15548 a!3235) (index!18278 lt!228475)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15548 a!3235) (index!18278 lt!228475)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15548 a!3235) (index!18278 lt!228475)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228473 () Unit!15178)

(declare-fun e!294290 () Unit!15178)

(assert (=> b!502446 (= lt!228473 e!294290)))

(declare-fun c!59507 () Bool)

(assert (=> b!502446 (= c!59507 (= (select (arr!15548 a!3235) (index!18278 lt!228475)) (select (arr!15548 a!3235) j!176)))))

(assert (=> b!502446 (and (bvslt (x!47330 lt!228475) #b01111111111111111111111111111110) (or (= (select (arr!15548 a!3235) (index!18278 lt!228475)) (select (arr!15548 a!3235) j!176)) (= (select (arr!15548 a!3235) (index!18278 lt!228475)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15548 a!3235) (index!18278 lt!228475)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502448 () Bool)

(declare-fun Unit!15180 () Unit!15178)

(assert (=> b!502448 (= e!294290 Unit!15180)))

(declare-fun lt!228466 () Unit!15178)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32342 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15178)

(assert (=> b!502448 (= lt!228466 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228474 #b00000000000000000000000000000000 (index!18278 lt!228475) (x!47330 lt!228475) mask!3524))))

(declare-fun lt!228470 () array!32342)

(declare-fun res!303994 () Bool)

(declare-fun lt!228476 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32342 (_ BitVec 32)) SeekEntryResult!4022)

(assert (=> b!502448 (= res!303994 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228474 lt!228476 lt!228470 mask!3524) (Intermediate!4022 false (index!18278 lt!228475) (x!47330 lt!228475))))))

(assert (=> b!502448 (=> (not res!303994) (not e!294296))))

(assert (=> b!502448 e!294296))

(declare-fun b!502449 () Bool)

(declare-fun res!303998 () Bool)

(assert (=> b!502449 (=> (not res!303998) (not e!294297))))

(assert (=> b!502449 (= res!303998 (validKeyInArray!0 k!2280))))

(declare-fun b!502450 () Bool)

(declare-fun Unit!15181 () Unit!15178)

(assert (=> b!502450 (= e!294290 Unit!15181)))

(declare-fun e!294295 () Bool)

(declare-fun b!502451 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32342 (_ BitVec 32)) SeekEntryResult!4022)

(assert (=> b!502451 (= e!294295 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228474 (index!18278 lt!228475) (select (arr!15548 a!3235) j!176) a!3235 mask!3524) (Found!4022 j!176))))))

(declare-fun b!502452 () Bool)

(assert (=> b!502452 (= e!294294 (not e!294293))))

(declare-fun res!303986 () Bool)

(assert (=> b!502452 (=> res!303986 e!294293)))

(declare-fun lt!228467 () (_ BitVec 32))

(assert (=> b!502452 (= res!303986 (= lt!228475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228467 lt!228476 lt!228470 mask!3524)))))

(assert (=> b!502452 (= lt!228475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228474 (select (arr!15548 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502452 (= lt!228467 (toIndex!0 lt!228476 mask!3524))))

(assert (=> b!502452 (= lt!228476 (select (store (arr!15548 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502452 (= lt!228474 (toIndex!0 (select (arr!15548 a!3235) j!176) mask!3524))))

(assert (=> b!502452 (= lt!228470 (array!32343 (store (arr!15548 a!3235) i!1204 k!2280) (size!15912 a!3235)))))

(assert (=> b!502452 e!294291))

(declare-fun res!303996 () Bool)

(assert (=> b!502452 (=> (not res!303996) (not e!294291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32342 (_ BitVec 32)) Bool)

(assert (=> b!502452 (= res!303996 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228469 () Unit!15178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15178)

(assert (=> b!502452 (= lt!228469 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502453 () Bool)

(declare-fun res!303989 () Bool)

(assert (=> b!502453 (=> (not res!303989) (not e!294297))))

(assert (=> b!502453 (= res!303989 (and (= (size!15912 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15912 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15912 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502447 () Bool)

(declare-fun res!303997 () Bool)

(assert (=> b!502447 (=> res!303997 e!294292)))

(assert (=> b!502447 (= res!303997 e!294295)))

(declare-fun res!303993 () Bool)

(assert (=> b!502447 (=> (not res!303993) (not e!294295))))

(assert (=> b!502447 (= res!303993 (bvsgt #b00000000000000000000000000000000 (x!47330 lt!228475)))))

(declare-fun res!303985 () Bool)

(assert (=> start!45626 (=> (not res!303985) (not e!294297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45626 (= res!303985 (validMask!0 mask!3524))))

(assert (=> start!45626 e!294297))

(assert (=> start!45626 true))

(declare-fun array_inv!11322 (array!32342) Bool)

(assert (=> start!45626 (array_inv!11322 a!3235)))

(declare-fun b!502454 () Bool)

(declare-fun res!303992 () Bool)

(assert (=> b!502454 (=> res!303992 e!294293)))

(assert (=> b!502454 (= res!303992 (or (undefined!4834 lt!228475) (not (is-Intermediate!4022 lt!228475))))))

(declare-fun b!502455 () Bool)

(declare-fun res!303990 () Bool)

(assert (=> b!502455 (=> (not res!303990) (not e!294294))))

(assert (=> b!502455 (= res!303990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502456 () Bool)

(declare-fun res!303991 () Bool)

(assert (=> b!502456 (=> (not res!303991) (not e!294297))))

(declare-fun arrayContainsKey!0 (array!32342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502456 (= res!303991 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502457 () Bool)

(assert (=> b!502457 (= e!294292 true)))

(declare-fun lt!228471 () SeekEntryResult!4022)

(assert (=> b!502457 (= lt!228471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228474 lt!228476 lt!228470 mask!3524))))

(assert (= (and start!45626 res!303985) b!502453))

(assert (= (and b!502453 res!303989) b!502443))

(assert (= (and b!502443 res!303984) b!502449))

(assert (= (and b!502449 res!303998) b!502456))

(assert (= (and b!502456 res!303991) b!502444))

(assert (= (and b!502444 res!303995) b!502455))

(assert (= (and b!502455 res!303990) b!502445))

(assert (= (and b!502445 res!303987) b!502452))

(assert (= (and b!502452 res!303996) b!502442))

(assert (= (and b!502452 (not res!303986)) b!502454))

(assert (= (and b!502454 (not res!303992)) b!502446))

(assert (= (and b!502446 c!59507) b!502448))

(assert (= (and b!502446 (not c!59507)) b!502450))

(assert (= (and b!502448 res!303994) b!502441))

(assert (= (and b!502446 (not res!303988)) b!502447))

(assert (= (and b!502447 res!303993) b!502451))

(assert (= (and b!502447 (not res!303997)) b!502457))

(declare-fun m!483393 () Bool)

(assert (=> start!45626 m!483393))

(declare-fun m!483395 () Bool)

(assert (=> start!45626 m!483395))

(declare-fun m!483397 () Bool)

(assert (=> b!502457 m!483397))

(declare-fun m!483399 () Bool)

(assert (=> b!502448 m!483399))

(assert (=> b!502448 m!483397))

(declare-fun m!483401 () Bool)

(assert (=> b!502452 m!483401))

(declare-fun m!483403 () Bool)

(assert (=> b!502452 m!483403))

(declare-fun m!483405 () Bool)

(assert (=> b!502452 m!483405))

(declare-fun m!483407 () Bool)

(assert (=> b!502452 m!483407))

(declare-fun m!483409 () Bool)

(assert (=> b!502452 m!483409))

(declare-fun m!483411 () Bool)

(assert (=> b!502452 m!483411))

(assert (=> b!502452 m!483401))

(declare-fun m!483413 () Bool)

(assert (=> b!502452 m!483413))

(assert (=> b!502452 m!483401))

(declare-fun m!483415 () Bool)

(assert (=> b!502452 m!483415))

(declare-fun m!483417 () Bool)

(assert (=> b!502452 m!483417))

(declare-fun m!483419 () Bool)

(assert (=> b!502455 m!483419))

(declare-fun m!483421 () Bool)

(assert (=> b!502449 m!483421))

(declare-fun m!483423 () Bool)

(assert (=> b!502446 m!483423))

(declare-fun m!483425 () Bool)

(assert (=> b!502446 m!483425))

(assert (=> b!502446 m!483401))

(declare-fun m!483427 () Bool)

(assert (=> b!502456 m!483427))

(assert (=> b!502443 m!483401))

(assert (=> b!502443 m!483401))

(declare-fun m!483429 () Bool)

(assert (=> b!502443 m!483429))

(declare-fun m!483431 () Bool)

(assert (=> b!502444 m!483431))

(assert (=> b!502442 m!483401))

(assert (=> b!502442 m!483401))

(declare-fun m!483433 () Bool)

(assert (=> b!502442 m!483433))

(declare-fun m!483435 () Bool)

(assert (=> b!502445 m!483435))

(assert (=> b!502451 m!483401))

(assert (=> b!502451 m!483401))

(declare-fun m!483437 () Bool)

(assert (=> b!502451 m!483437))

(push 1)

(assert (not b!502448))

(assert (not b!502457))

(assert (not b!502444))

(assert (not b!502456))

(assert (not b!502446))

(assert (not b!502452))

(assert (not b!502449))

