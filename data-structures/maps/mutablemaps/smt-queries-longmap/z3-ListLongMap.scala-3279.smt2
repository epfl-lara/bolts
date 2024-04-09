; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45630 () Bool)

(assert start!45630)

(declare-fun b!502543 () Bool)

(declare-fun res!304080 () Bool)

(declare-fun e!294350 () Bool)

(assert (=> b!502543 (=> (not res!304080) (not e!294350))))

(declare-datatypes ((array!32346 0))(
  ( (array!32347 (arr!15550 (Array (_ BitVec 32) (_ BitVec 64))) (size!15914 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32346)

(declare-datatypes ((List!9761 0))(
  ( (Nil!9758) (Cons!9757 (h!10634 (_ BitVec 64)) (t!15997 List!9761)) )
))
(declare-fun arrayNoDuplicates!0 (array!32346 (_ BitVec 32) List!9761) Bool)

(assert (=> b!502543 (= res!304080 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9758))))

(declare-fun b!502544 () Bool)

(declare-fun res!304086 () Bool)

(declare-fun e!294348 () Bool)

(assert (=> b!502544 (=> (not res!304086) (not e!294348))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!502544 (= res!304086 (and (= (size!15914 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15914 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15914 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502545 () Bool)

(assert (=> b!502545 (= e!294348 e!294350)))

(declare-fun res!304087 () Bool)

(assert (=> b!502545 (=> (not res!304087) (not e!294350))))

(declare-datatypes ((SeekEntryResult!4024 0))(
  ( (MissingZero!4024 (index!18284 (_ BitVec 32))) (Found!4024 (index!18285 (_ BitVec 32))) (Intermediate!4024 (undefined!4836 Bool) (index!18286 (_ BitVec 32)) (x!47340 (_ BitVec 32))) (Undefined!4024) (MissingVacant!4024 (index!18287 (_ BitVec 32))) )
))
(declare-fun lt!228540 () SeekEntryResult!4024)

(assert (=> b!502545 (= res!304087 (or (= lt!228540 (MissingZero!4024 i!1204)) (= lt!228540 (MissingVacant!4024 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32346 (_ BitVec 32)) SeekEntryResult!4024)

(assert (=> b!502545 (= lt!228540 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!502546 () Bool)

(declare-fun res!304076 () Bool)

(assert (=> b!502546 (=> (not res!304076) (not e!294348))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502546 (= res!304076 (validKeyInArray!0 k0!2280))))

(declare-fun b!502547 () Bool)

(declare-fun e!294351 () Bool)

(assert (=> b!502547 (= e!294351 true)))

(declare-fun lt!228541 () (_ BitVec 32))

(declare-fun lt!228535 () (_ BitVec 64))

(declare-fun lt!228534 () array!32346)

(declare-fun lt!228536 () SeekEntryResult!4024)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32346 (_ BitVec 32)) SeekEntryResult!4024)

(assert (=> b!502547 (= lt!228536 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228541 lt!228535 lt!228534 mask!3524))))

(declare-fun b!502548 () Bool)

(declare-fun res!304084 () Bool)

(assert (=> b!502548 (=> (not res!304084) (not e!294350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32346 (_ BitVec 32)) Bool)

(assert (=> b!502548 (= res!304084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502549 () Bool)

(declare-fun e!294346 () Bool)

(assert (=> b!502549 (= e!294346 e!294351)))

(declare-fun res!304079 () Bool)

(assert (=> b!502549 (=> res!304079 e!294351)))

(declare-fun lt!228539 () SeekEntryResult!4024)

(assert (=> b!502549 (= res!304079 (or (bvsgt (x!47340 lt!228539) #b01111111111111111111111111111110) (bvslt lt!228541 #b00000000000000000000000000000000) (bvsge lt!228541 (size!15914 a!3235)) (bvslt (index!18286 lt!228539) #b00000000000000000000000000000000) (bvsge (index!18286 lt!228539) (size!15914 a!3235)) (not (= lt!228539 (Intermediate!4024 false (index!18286 lt!228539) (x!47340 lt!228539))))))))

(assert (=> b!502549 (= (index!18286 lt!228539) i!1204)))

(declare-datatypes ((Unit!15186 0))(
  ( (Unit!15187) )
))
(declare-fun lt!228542 () Unit!15186)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32346 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15186)

(assert (=> b!502549 (= lt!228542 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228541 #b00000000000000000000000000000000 (index!18286 lt!228539) (x!47340 lt!228539) mask!3524))))

(assert (=> b!502549 (and (or (= (select (arr!15550 a!3235) (index!18286 lt!228539)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15550 a!3235) (index!18286 lt!228539)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15550 a!3235) (index!18286 lt!228539)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15550 a!3235) (index!18286 lt!228539)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228533 () Unit!15186)

(declare-fun e!294352 () Unit!15186)

(assert (=> b!502549 (= lt!228533 e!294352)))

(declare-fun c!59513 () Bool)

(assert (=> b!502549 (= c!59513 (= (select (arr!15550 a!3235) (index!18286 lt!228539)) (select (arr!15550 a!3235) j!176)))))

(assert (=> b!502549 (and (bvslt (x!47340 lt!228539) #b01111111111111111111111111111110) (or (= (select (arr!15550 a!3235) (index!18286 lt!228539)) (select (arr!15550 a!3235) j!176)) (= (select (arr!15550 a!3235) (index!18286 lt!228539)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15550 a!3235) (index!18286 lt!228539)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502550 () Bool)

(declare-fun res!304081 () Bool)

(assert (=> b!502550 (=> (not res!304081) (not e!294348))))

(declare-fun arrayContainsKey!0 (array!32346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502550 (= res!304081 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502551 () Bool)

(declare-fun Unit!15188 () Unit!15186)

(assert (=> b!502551 (= e!294352 Unit!15188)))

(declare-fun res!304083 () Bool)

(assert (=> start!45630 (=> (not res!304083) (not e!294348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45630 (= res!304083 (validMask!0 mask!3524))))

(assert (=> start!45630 e!294348))

(assert (=> start!45630 true))

(declare-fun array_inv!11324 (array!32346) Bool)

(assert (=> start!45630 (array_inv!11324 a!3235)))

(declare-fun e!294347 () Bool)

(declare-fun b!502552 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32346 (_ BitVec 32)) SeekEntryResult!4024)

(assert (=> b!502552 (= e!294347 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228541 (index!18286 lt!228539) (select (arr!15550 a!3235) j!176) a!3235 mask!3524) (Found!4024 j!176))))))

(declare-fun b!502553 () Bool)

(declare-fun res!304078 () Bool)

(assert (=> b!502553 (=> (not res!304078) (not e!294348))))

(assert (=> b!502553 (= res!304078 (validKeyInArray!0 (select (arr!15550 a!3235) j!176)))))

(declare-fun b!502554 () Bool)

(assert (=> b!502554 (= e!294350 (not e!294346))))

(declare-fun res!304074 () Bool)

(assert (=> b!502554 (=> res!304074 e!294346)))

(declare-fun lt!228532 () (_ BitVec 32))

(assert (=> b!502554 (= res!304074 (= lt!228539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228532 lt!228535 lt!228534 mask!3524)))))

(assert (=> b!502554 (= lt!228539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228541 (select (arr!15550 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502554 (= lt!228532 (toIndex!0 lt!228535 mask!3524))))

(assert (=> b!502554 (= lt!228535 (select (store (arr!15550 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!502554 (= lt!228541 (toIndex!0 (select (arr!15550 a!3235) j!176) mask!3524))))

(assert (=> b!502554 (= lt!228534 (array!32347 (store (arr!15550 a!3235) i!1204 k0!2280) (size!15914 a!3235)))))

(declare-fun e!294344 () Bool)

(assert (=> b!502554 e!294344))

(declare-fun res!304077 () Bool)

(assert (=> b!502554 (=> (not res!304077) (not e!294344))))

(assert (=> b!502554 (= res!304077 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228537 () Unit!15186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15186)

(assert (=> b!502554 (= lt!228537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502555 () Bool)

(declare-fun res!304075 () Bool)

(assert (=> b!502555 (=> res!304075 e!294351)))

(assert (=> b!502555 (= res!304075 e!294347)))

(declare-fun res!304088 () Bool)

(assert (=> b!502555 (=> (not res!304088) (not e!294347))))

(assert (=> b!502555 (= res!304088 (bvsgt #b00000000000000000000000000000000 (x!47340 lt!228539)))))

(declare-fun b!502556 () Bool)

(declare-fun Unit!15189 () Unit!15186)

(assert (=> b!502556 (= e!294352 Unit!15189)))

(declare-fun lt!228538 () Unit!15186)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32346 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15186)

(assert (=> b!502556 (= lt!228538 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228541 #b00000000000000000000000000000000 (index!18286 lt!228539) (x!47340 lt!228539) mask!3524))))

(declare-fun res!304085 () Bool)

(assert (=> b!502556 (= res!304085 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228541 lt!228535 lt!228534 mask!3524) (Intermediate!4024 false (index!18286 lt!228539) (x!47340 lt!228539))))))

(declare-fun e!294345 () Bool)

(assert (=> b!502556 (=> (not res!304085) (not e!294345))))

(assert (=> b!502556 e!294345))

(declare-fun b!502557 () Bool)

(assert (=> b!502557 (= e!294344 (= (seekEntryOrOpen!0 (select (arr!15550 a!3235) j!176) a!3235 mask!3524) (Found!4024 j!176)))))

(declare-fun b!502558 () Bool)

(declare-fun res!304082 () Bool)

(assert (=> b!502558 (=> res!304082 e!294346)))

(get-info :version)

(assert (=> b!502558 (= res!304082 (or (undefined!4836 lt!228539) (not ((_ is Intermediate!4024) lt!228539))))))

(declare-fun b!502559 () Bool)

(assert (=> b!502559 (= e!294345 false)))

(assert (= (and start!45630 res!304083) b!502544))

(assert (= (and b!502544 res!304086) b!502553))

(assert (= (and b!502553 res!304078) b!502546))

(assert (= (and b!502546 res!304076) b!502550))

(assert (= (and b!502550 res!304081) b!502545))

(assert (= (and b!502545 res!304087) b!502548))

(assert (= (and b!502548 res!304084) b!502543))

(assert (= (and b!502543 res!304080) b!502554))

(assert (= (and b!502554 res!304077) b!502557))

(assert (= (and b!502554 (not res!304074)) b!502558))

(assert (= (and b!502558 (not res!304082)) b!502549))

(assert (= (and b!502549 c!59513) b!502556))

(assert (= (and b!502549 (not c!59513)) b!502551))

(assert (= (and b!502556 res!304085) b!502559))

(assert (= (and b!502549 (not res!304079)) b!502555))

(assert (= (and b!502555 res!304088) b!502552))

(assert (= (and b!502555 (not res!304075)) b!502547))

(declare-fun m!483485 () Bool)

(assert (=> b!502557 m!483485))

(assert (=> b!502557 m!483485))

(declare-fun m!483487 () Bool)

(assert (=> b!502557 m!483487))

(declare-fun m!483489 () Bool)

(assert (=> b!502556 m!483489))

(declare-fun m!483491 () Bool)

(assert (=> b!502556 m!483491))

(declare-fun m!483493 () Bool)

(assert (=> b!502550 m!483493))

(declare-fun m!483495 () Bool)

(assert (=> b!502545 m!483495))

(declare-fun m!483497 () Bool)

(assert (=> b!502548 m!483497))

(assert (=> b!502553 m!483485))

(assert (=> b!502553 m!483485))

(declare-fun m!483499 () Bool)

(assert (=> b!502553 m!483499))

(declare-fun m!483501 () Bool)

(assert (=> b!502543 m!483501))

(declare-fun m!483503 () Bool)

(assert (=> b!502549 m!483503))

(declare-fun m!483505 () Bool)

(assert (=> b!502549 m!483505))

(assert (=> b!502549 m!483485))

(assert (=> b!502547 m!483491))

(declare-fun m!483507 () Bool)

(assert (=> b!502546 m!483507))

(assert (=> b!502552 m!483485))

(assert (=> b!502552 m!483485))

(declare-fun m!483509 () Bool)

(assert (=> b!502552 m!483509))

(declare-fun m!483511 () Bool)

(assert (=> b!502554 m!483511))

(declare-fun m!483513 () Bool)

(assert (=> b!502554 m!483513))

(declare-fun m!483515 () Bool)

(assert (=> b!502554 m!483515))

(assert (=> b!502554 m!483485))

(declare-fun m!483517 () Bool)

(assert (=> b!502554 m!483517))

(declare-fun m!483519 () Bool)

(assert (=> b!502554 m!483519))

(assert (=> b!502554 m!483485))

(declare-fun m!483521 () Bool)

(assert (=> b!502554 m!483521))

(declare-fun m!483523 () Bool)

(assert (=> b!502554 m!483523))

(assert (=> b!502554 m!483485))

(declare-fun m!483525 () Bool)

(assert (=> b!502554 m!483525))

(declare-fun m!483527 () Bool)

(assert (=> start!45630 m!483527))

(declare-fun m!483529 () Bool)

(assert (=> start!45630 m!483529))

(check-sat (not b!502543) (not b!502545) (not start!45630) (not b!502553) (not b!502550) (not b!502557) (not b!502556) (not b!502554) (not b!502548) (not b!502552) (not b!502547) (not b!502546) (not b!502549))
(check-sat)
