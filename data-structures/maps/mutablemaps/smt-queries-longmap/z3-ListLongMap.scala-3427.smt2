; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47628 () Bool)

(assert start!47628)

(declare-fun b!523633 () Bool)

(declare-fun e!305398 () Bool)

(assert (=> b!523633 (= e!305398 false)))

(declare-fun b!523634 () Bool)

(declare-fun res!320938 () Bool)

(declare-fun e!305401 () Bool)

(assert (=> b!523634 (=> (not res!320938) (not e!305401))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33288 0))(
  ( (array!33289 (arr!15994 (Array (_ BitVec 32) (_ BitVec 64))) (size!16358 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33288)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!523634 (= res!320938 (and (= (size!16358 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16358 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16358 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523635 () Bool)

(declare-fun res!320931 () Bool)

(declare-fun e!305400 () Bool)

(assert (=> b!523635 (=> (not res!320931) (not e!305400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33288 (_ BitVec 32)) Bool)

(assert (=> b!523635 (= res!320931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!523636 () Bool)

(declare-datatypes ((Unit!16338 0))(
  ( (Unit!16339) )
))
(declare-fun e!305396 () Unit!16338)

(declare-fun Unit!16340 () Unit!16338)

(assert (=> b!523636 (= e!305396 Unit!16340)))

(declare-datatypes ((SeekEntryResult!4468 0))(
  ( (MissingZero!4468 (index!20081 (_ BitVec 32))) (Found!4468 (index!20082 (_ BitVec 32))) (Intermediate!4468 (undefined!5280 Bool) (index!20083 (_ BitVec 32)) (x!49091 (_ BitVec 32))) (Undefined!4468) (MissingVacant!4468 (index!20084 (_ BitVec 32))) )
))
(declare-fun lt!240325 () SeekEntryResult!4468)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!240326 () (_ BitVec 32))

(declare-fun lt!240332 () Unit!16338)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33288 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16338)

(assert (=> b!523636 (= lt!240332 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240326 #b00000000000000000000000000000000 (index!20083 lt!240325) (x!49091 lt!240325) mask!3524))))

(declare-fun lt!240328 () (_ BitVec 64))

(declare-fun lt!240330 () array!33288)

(declare-fun res!320936 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33288 (_ BitVec 32)) SeekEntryResult!4468)

(assert (=> b!523636 (= res!320936 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240326 lt!240328 lt!240330 mask!3524) (Intermediate!4468 false (index!20083 lt!240325) (x!49091 lt!240325))))))

(assert (=> b!523636 (=> (not res!320936) (not e!305398))))

(assert (=> b!523636 e!305398))

(declare-fun b!523637 () Bool)

(declare-fun res!320940 () Bool)

(assert (=> b!523637 (=> (not res!320940) (not e!305400))))

(declare-datatypes ((List!10205 0))(
  ( (Nil!10202) (Cons!10201 (h!11129 (_ BitVec 64)) (t!16441 List!10205)) )
))
(declare-fun arrayNoDuplicates!0 (array!33288 (_ BitVec 32) List!10205) Bool)

(assert (=> b!523637 (= res!320940 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10202))))

(declare-fun e!305397 () Bool)

(declare-fun b!523638 () Bool)

(assert (=> b!523638 (= e!305397 (or (bvsgt #b00000000000000000000000000000000 (x!49091 lt!240325)) (bvsgt (x!49091 lt!240325) #b01111111111111111111111111111110) (bvslt lt!240326 #b00000000000000000000000000000000) (bvsge lt!240326 (size!16358 a!3235)) (and (bvsge (index!20083 lt!240325) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240325) (size!16358 a!3235)))))))

(assert (=> b!523638 (and (or (= (select (arr!15994 a!3235) (index!20083 lt!240325)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15994 a!3235) (index!20083 lt!240325)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15994 a!3235) (index!20083 lt!240325)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15994 a!3235) (index!20083 lt!240325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240329 () Unit!16338)

(assert (=> b!523638 (= lt!240329 e!305396)))

(declare-fun c!61655 () Bool)

(assert (=> b!523638 (= c!61655 (= (select (arr!15994 a!3235) (index!20083 lt!240325)) (select (arr!15994 a!3235) j!176)))))

(assert (=> b!523638 (and (bvslt (x!49091 lt!240325) #b01111111111111111111111111111110) (or (= (select (arr!15994 a!3235) (index!20083 lt!240325)) (select (arr!15994 a!3235) j!176)) (= (select (arr!15994 a!3235) (index!20083 lt!240325)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15994 a!3235) (index!20083 lt!240325)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523639 () Bool)

(declare-fun res!320932 () Bool)

(assert (=> b!523639 (=> (not res!320932) (not e!305401))))

(declare-fun arrayContainsKey!0 (array!33288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523639 (= res!320932 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!523640 () Bool)

(declare-fun e!305399 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33288 (_ BitVec 32)) SeekEntryResult!4468)

(assert (=> b!523640 (= e!305399 (= (seekEntryOrOpen!0 (select (arr!15994 a!3235) j!176) a!3235 mask!3524) (Found!4468 j!176)))))

(declare-fun res!320941 () Bool)

(assert (=> start!47628 (=> (not res!320941) (not e!305401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47628 (= res!320941 (validMask!0 mask!3524))))

(assert (=> start!47628 e!305401))

(assert (=> start!47628 true))

(declare-fun array_inv!11768 (array!33288) Bool)

(assert (=> start!47628 (array_inv!11768 a!3235)))

(declare-fun b!523641 () Bool)

(declare-fun res!320933 () Bool)

(assert (=> b!523641 (=> (not res!320933) (not e!305401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523641 (= res!320933 (validKeyInArray!0 k0!2280))))

(declare-fun b!523642 () Bool)

(assert (=> b!523642 (= e!305401 e!305400)))

(declare-fun res!320942 () Bool)

(assert (=> b!523642 (=> (not res!320942) (not e!305400))))

(declare-fun lt!240324 () SeekEntryResult!4468)

(assert (=> b!523642 (= res!320942 (or (= lt!240324 (MissingZero!4468 i!1204)) (= lt!240324 (MissingVacant!4468 i!1204))))))

(assert (=> b!523642 (= lt!240324 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!523643 () Bool)

(declare-fun res!320934 () Bool)

(assert (=> b!523643 (=> (not res!320934) (not e!305401))))

(assert (=> b!523643 (= res!320934 (validKeyInArray!0 (select (arr!15994 a!3235) j!176)))))

(declare-fun b!523644 () Bool)

(declare-fun Unit!16341 () Unit!16338)

(assert (=> b!523644 (= e!305396 Unit!16341)))

(declare-fun b!523645 () Bool)

(declare-fun res!320937 () Bool)

(assert (=> b!523645 (=> res!320937 e!305397)))

(get-info :version)

(assert (=> b!523645 (= res!320937 (or (undefined!5280 lt!240325) (not ((_ is Intermediate!4468) lt!240325))))))

(declare-fun b!523646 () Bool)

(assert (=> b!523646 (= e!305400 (not e!305397))))

(declare-fun res!320935 () Bool)

(assert (=> b!523646 (=> res!320935 e!305397)))

(declare-fun lt!240327 () (_ BitVec 32))

(assert (=> b!523646 (= res!320935 (= lt!240325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240327 lt!240328 lt!240330 mask!3524)))))

(assert (=> b!523646 (= lt!240325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240326 (select (arr!15994 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523646 (= lt!240327 (toIndex!0 lt!240328 mask!3524))))

(assert (=> b!523646 (= lt!240328 (select (store (arr!15994 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!523646 (= lt!240326 (toIndex!0 (select (arr!15994 a!3235) j!176) mask!3524))))

(assert (=> b!523646 (= lt!240330 (array!33289 (store (arr!15994 a!3235) i!1204 k0!2280) (size!16358 a!3235)))))

(assert (=> b!523646 e!305399))

(declare-fun res!320939 () Bool)

(assert (=> b!523646 (=> (not res!320939) (not e!305399))))

(assert (=> b!523646 (= res!320939 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240331 () Unit!16338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16338)

(assert (=> b!523646 (= lt!240331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47628 res!320941) b!523634))

(assert (= (and b!523634 res!320938) b!523643))

(assert (= (and b!523643 res!320934) b!523641))

(assert (= (and b!523641 res!320933) b!523639))

(assert (= (and b!523639 res!320932) b!523642))

(assert (= (and b!523642 res!320942) b!523635))

(assert (= (and b!523635 res!320931) b!523637))

(assert (= (and b!523637 res!320940) b!523646))

(assert (= (and b!523646 res!320939) b!523640))

(assert (= (and b!523646 (not res!320935)) b!523645))

(assert (= (and b!523645 (not res!320937)) b!523638))

(assert (= (and b!523638 c!61655) b!523636))

(assert (= (and b!523638 (not c!61655)) b!523644))

(assert (= (and b!523636 res!320936) b!523633))

(declare-fun m!504397 () Bool)

(assert (=> b!523637 m!504397))

(declare-fun m!504399 () Bool)

(assert (=> b!523642 m!504399))

(declare-fun m!504401 () Bool)

(assert (=> start!47628 m!504401))

(declare-fun m!504403 () Bool)

(assert (=> start!47628 m!504403))

(declare-fun m!504405 () Bool)

(assert (=> b!523639 m!504405))

(declare-fun m!504407 () Bool)

(assert (=> b!523640 m!504407))

(assert (=> b!523640 m!504407))

(declare-fun m!504409 () Bool)

(assert (=> b!523640 m!504409))

(assert (=> b!523643 m!504407))

(assert (=> b!523643 m!504407))

(declare-fun m!504411 () Bool)

(assert (=> b!523643 m!504411))

(declare-fun m!504413 () Bool)

(assert (=> b!523638 m!504413))

(assert (=> b!523638 m!504407))

(declare-fun m!504415 () Bool)

(assert (=> b!523635 m!504415))

(declare-fun m!504417 () Bool)

(assert (=> b!523646 m!504417))

(declare-fun m!504419 () Bool)

(assert (=> b!523646 m!504419))

(declare-fun m!504421 () Bool)

(assert (=> b!523646 m!504421))

(assert (=> b!523646 m!504407))

(declare-fun m!504423 () Bool)

(assert (=> b!523646 m!504423))

(assert (=> b!523646 m!504407))

(declare-fun m!504425 () Bool)

(assert (=> b!523646 m!504425))

(assert (=> b!523646 m!504407))

(declare-fun m!504427 () Bool)

(assert (=> b!523646 m!504427))

(declare-fun m!504429 () Bool)

(assert (=> b!523646 m!504429))

(declare-fun m!504431 () Bool)

(assert (=> b!523646 m!504431))

(declare-fun m!504433 () Bool)

(assert (=> b!523641 m!504433))

(declare-fun m!504435 () Bool)

(assert (=> b!523636 m!504435))

(declare-fun m!504437 () Bool)

(assert (=> b!523636 m!504437))

(check-sat (not b!523639) (not b!523640) (not b!523636) (not b!523641) (not b!523646) (not b!523642) (not b!523635) (not b!523637) (not b!523643) (not start!47628))
(check-sat)
(get-model)

(declare-fun b!523701 () Bool)

(declare-fun e!305429 () SeekEntryResult!4468)

(assert (=> b!523701 (= e!305429 Undefined!4468)))

(declare-fun d!80501 () Bool)

(declare-fun lt!240368 () SeekEntryResult!4468)

(assert (=> d!80501 (and (or ((_ is Undefined!4468) lt!240368) (not ((_ is Found!4468) lt!240368)) (and (bvsge (index!20082 lt!240368) #b00000000000000000000000000000000) (bvslt (index!20082 lt!240368) (size!16358 a!3235)))) (or ((_ is Undefined!4468) lt!240368) ((_ is Found!4468) lt!240368) (not ((_ is MissingZero!4468) lt!240368)) (and (bvsge (index!20081 lt!240368) #b00000000000000000000000000000000) (bvslt (index!20081 lt!240368) (size!16358 a!3235)))) (or ((_ is Undefined!4468) lt!240368) ((_ is Found!4468) lt!240368) ((_ is MissingZero!4468) lt!240368) (not ((_ is MissingVacant!4468) lt!240368)) (and (bvsge (index!20084 lt!240368) #b00000000000000000000000000000000) (bvslt (index!20084 lt!240368) (size!16358 a!3235)))) (or ((_ is Undefined!4468) lt!240368) (ite ((_ is Found!4468) lt!240368) (= (select (arr!15994 a!3235) (index!20082 lt!240368)) k0!2280) (ite ((_ is MissingZero!4468) lt!240368) (= (select (arr!15994 a!3235) (index!20081 lt!240368)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4468) lt!240368) (= (select (arr!15994 a!3235) (index!20084 lt!240368)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80501 (= lt!240368 e!305429)))

(declare-fun c!61665 () Bool)

(declare-fun lt!240367 () SeekEntryResult!4468)

(assert (=> d!80501 (= c!61665 (and ((_ is Intermediate!4468) lt!240367) (undefined!5280 lt!240367)))))

(assert (=> d!80501 (= lt!240367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80501 (validMask!0 mask!3524)))

(assert (=> d!80501 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!240368)))

(declare-fun b!523702 () Bool)

(declare-fun c!61666 () Bool)

(declare-fun lt!240366 () (_ BitVec 64))

(assert (=> b!523702 (= c!61666 (= lt!240366 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305430 () SeekEntryResult!4468)

(declare-fun e!305431 () SeekEntryResult!4468)

(assert (=> b!523702 (= e!305430 e!305431)))

(declare-fun b!523703 () Bool)

(assert (=> b!523703 (= e!305429 e!305430)))

(assert (=> b!523703 (= lt!240366 (select (arr!15994 a!3235) (index!20083 lt!240367)))))

(declare-fun c!61667 () Bool)

(assert (=> b!523703 (= c!61667 (= lt!240366 k0!2280))))

(declare-fun b!523704 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33288 (_ BitVec 32)) SeekEntryResult!4468)

(assert (=> b!523704 (= e!305431 (seekKeyOrZeroReturnVacant!0 (x!49091 lt!240367) (index!20083 lt!240367) (index!20083 lt!240367) k0!2280 a!3235 mask!3524))))

(declare-fun b!523705 () Bool)

(assert (=> b!523705 (= e!305430 (Found!4468 (index!20083 lt!240367)))))

(declare-fun b!523706 () Bool)

(assert (=> b!523706 (= e!305431 (MissingZero!4468 (index!20083 lt!240367)))))

(assert (= (and d!80501 c!61665) b!523701))

(assert (= (and d!80501 (not c!61665)) b!523703))

(assert (= (and b!523703 c!61667) b!523705))

(assert (= (and b!523703 (not c!61667)) b!523702))

(assert (= (and b!523702 c!61666) b!523706))

(assert (= (and b!523702 (not c!61666)) b!523704))

(declare-fun m!504481 () Bool)

(assert (=> d!80501 m!504481))

(declare-fun m!504483 () Bool)

(assert (=> d!80501 m!504483))

(declare-fun m!504485 () Bool)

(assert (=> d!80501 m!504485))

(declare-fun m!504487 () Bool)

(assert (=> d!80501 m!504487))

(assert (=> d!80501 m!504401))

(assert (=> d!80501 m!504481))

(declare-fun m!504489 () Bool)

(assert (=> d!80501 m!504489))

(declare-fun m!504491 () Bool)

(assert (=> b!523703 m!504491))

(declare-fun m!504493 () Bool)

(assert (=> b!523704 m!504493))

(assert (=> b!523642 d!80501))

(declare-fun b!523717 () Bool)

(declare-fun e!305442 () Bool)

(declare-fun call!31850 () Bool)

(assert (=> b!523717 (= e!305442 call!31850)))

(declare-fun b!523718 () Bool)

(assert (=> b!523718 (= e!305442 call!31850)))

(declare-fun b!523719 () Bool)

(declare-fun e!305441 () Bool)

(assert (=> b!523719 (= e!305441 e!305442)))

(declare-fun c!61670 () Bool)

(assert (=> b!523719 (= c!61670 (validKeyInArray!0 (select (arr!15994 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31847 () Bool)

(assert (=> bm!31847 (= call!31850 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61670 (Cons!10201 (select (arr!15994 a!3235) #b00000000000000000000000000000000) Nil!10202) Nil!10202)))))

(declare-fun b!523720 () Bool)

(declare-fun e!305443 () Bool)

(assert (=> b!523720 (= e!305443 e!305441)))

(declare-fun res!320986 () Bool)

(assert (=> b!523720 (=> (not res!320986) (not e!305441))))

(declare-fun e!305440 () Bool)

(assert (=> b!523720 (= res!320986 (not e!305440))))

(declare-fun res!320985 () Bool)

(assert (=> b!523720 (=> (not res!320985) (not e!305440))))

(assert (=> b!523720 (= res!320985 (validKeyInArray!0 (select (arr!15994 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523721 () Bool)

(declare-fun contains!2775 (List!10205 (_ BitVec 64)) Bool)

(assert (=> b!523721 (= e!305440 (contains!2775 Nil!10202 (select (arr!15994 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80503 () Bool)

(declare-fun res!320987 () Bool)

(assert (=> d!80503 (=> res!320987 e!305443)))

(assert (=> d!80503 (= res!320987 (bvsge #b00000000000000000000000000000000 (size!16358 a!3235)))))

(assert (=> d!80503 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10202) e!305443)))

(assert (= (and d!80503 (not res!320987)) b!523720))

(assert (= (and b!523720 res!320985) b!523721))

(assert (= (and b!523720 res!320986) b!523719))

(assert (= (and b!523719 c!61670) b!523717))

(assert (= (and b!523719 (not c!61670)) b!523718))

(assert (= (or b!523717 b!523718) bm!31847))

(declare-fun m!504495 () Bool)

(assert (=> b!523719 m!504495))

(assert (=> b!523719 m!504495))

(declare-fun m!504497 () Bool)

(assert (=> b!523719 m!504497))

(assert (=> bm!31847 m!504495))

(declare-fun m!504499 () Bool)

(assert (=> bm!31847 m!504499))

(assert (=> b!523720 m!504495))

(assert (=> b!523720 m!504495))

(assert (=> b!523720 m!504497))

(assert (=> b!523721 m!504495))

(assert (=> b!523721 m!504495))

(declare-fun m!504501 () Bool)

(assert (=> b!523721 m!504501))

(assert (=> b!523637 d!80503))

(declare-fun d!80505 () Bool)

(assert (=> d!80505 (= (validKeyInArray!0 (select (arr!15994 a!3235) j!176)) (and (not (= (select (arr!15994 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15994 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523643 d!80505))

(declare-fun d!80507 () Bool)

(assert (=> d!80507 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47628 d!80507))

(declare-fun d!80511 () Bool)

(assert (=> d!80511 (= (array_inv!11768 a!3235) (bvsge (size!16358 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47628 d!80511))

(declare-fun d!80513 () Bool)

(declare-fun res!320992 () Bool)

(declare-fun e!305448 () Bool)

(assert (=> d!80513 (=> res!320992 e!305448)))

(assert (=> d!80513 (= res!320992 (= (select (arr!15994 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80513 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!305448)))

(declare-fun b!523726 () Bool)

(declare-fun e!305449 () Bool)

(assert (=> b!523726 (= e!305448 e!305449)))

(declare-fun res!320993 () Bool)

(assert (=> b!523726 (=> (not res!320993) (not e!305449))))

(assert (=> b!523726 (= res!320993 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16358 a!3235)))))

(declare-fun b!523727 () Bool)

(assert (=> b!523727 (= e!305449 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80513 (not res!320992)) b!523726))

(assert (= (and b!523726 res!320993) b!523727))

(assert (=> d!80513 m!504495))

(declare-fun m!504503 () Bool)

(assert (=> b!523727 m!504503))

(assert (=> b!523639 d!80513))

(declare-fun b!523728 () Bool)

(declare-fun e!305450 () SeekEntryResult!4468)

(assert (=> b!523728 (= e!305450 Undefined!4468)))

(declare-fun d!80515 () Bool)

(declare-fun lt!240371 () SeekEntryResult!4468)

(assert (=> d!80515 (and (or ((_ is Undefined!4468) lt!240371) (not ((_ is Found!4468) lt!240371)) (and (bvsge (index!20082 lt!240371) #b00000000000000000000000000000000) (bvslt (index!20082 lt!240371) (size!16358 a!3235)))) (or ((_ is Undefined!4468) lt!240371) ((_ is Found!4468) lt!240371) (not ((_ is MissingZero!4468) lt!240371)) (and (bvsge (index!20081 lt!240371) #b00000000000000000000000000000000) (bvslt (index!20081 lt!240371) (size!16358 a!3235)))) (or ((_ is Undefined!4468) lt!240371) ((_ is Found!4468) lt!240371) ((_ is MissingZero!4468) lt!240371) (not ((_ is MissingVacant!4468) lt!240371)) (and (bvsge (index!20084 lt!240371) #b00000000000000000000000000000000) (bvslt (index!20084 lt!240371) (size!16358 a!3235)))) (or ((_ is Undefined!4468) lt!240371) (ite ((_ is Found!4468) lt!240371) (= (select (arr!15994 a!3235) (index!20082 lt!240371)) (select (arr!15994 a!3235) j!176)) (ite ((_ is MissingZero!4468) lt!240371) (= (select (arr!15994 a!3235) (index!20081 lt!240371)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4468) lt!240371) (= (select (arr!15994 a!3235) (index!20084 lt!240371)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80515 (= lt!240371 e!305450)))

(declare-fun c!61671 () Bool)

(declare-fun lt!240370 () SeekEntryResult!4468)

(assert (=> d!80515 (= c!61671 (and ((_ is Intermediate!4468) lt!240370) (undefined!5280 lt!240370)))))

(assert (=> d!80515 (= lt!240370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15994 a!3235) j!176) mask!3524) (select (arr!15994 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80515 (validMask!0 mask!3524)))

(assert (=> d!80515 (= (seekEntryOrOpen!0 (select (arr!15994 a!3235) j!176) a!3235 mask!3524) lt!240371)))

(declare-fun b!523729 () Bool)

(declare-fun c!61672 () Bool)

(declare-fun lt!240369 () (_ BitVec 64))

(assert (=> b!523729 (= c!61672 (= lt!240369 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305451 () SeekEntryResult!4468)

(declare-fun e!305452 () SeekEntryResult!4468)

(assert (=> b!523729 (= e!305451 e!305452)))

(declare-fun b!523730 () Bool)

(assert (=> b!523730 (= e!305450 e!305451)))

(assert (=> b!523730 (= lt!240369 (select (arr!15994 a!3235) (index!20083 lt!240370)))))

(declare-fun c!61673 () Bool)

(assert (=> b!523730 (= c!61673 (= lt!240369 (select (arr!15994 a!3235) j!176)))))

(declare-fun b!523731 () Bool)

(assert (=> b!523731 (= e!305452 (seekKeyOrZeroReturnVacant!0 (x!49091 lt!240370) (index!20083 lt!240370) (index!20083 lt!240370) (select (arr!15994 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523732 () Bool)

(assert (=> b!523732 (= e!305451 (Found!4468 (index!20083 lt!240370)))))

(declare-fun b!523733 () Bool)

(assert (=> b!523733 (= e!305452 (MissingZero!4468 (index!20083 lt!240370)))))

(assert (= (and d!80515 c!61671) b!523728))

(assert (= (and d!80515 (not c!61671)) b!523730))

(assert (= (and b!523730 c!61673) b!523732))

(assert (= (and b!523730 (not c!61673)) b!523729))

(assert (= (and b!523729 c!61672) b!523733))

(assert (= (and b!523729 (not c!61672)) b!523731))

(assert (=> d!80515 m!504425))

(assert (=> d!80515 m!504407))

(declare-fun m!504505 () Bool)

(assert (=> d!80515 m!504505))

(declare-fun m!504507 () Bool)

(assert (=> d!80515 m!504507))

(declare-fun m!504509 () Bool)

(assert (=> d!80515 m!504509))

(assert (=> d!80515 m!504401))

(assert (=> d!80515 m!504407))

(assert (=> d!80515 m!504425))

(declare-fun m!504511 () Bool)

(assert (=> d!80515 m!504511))

(declare-fun m!504513 () Bool)

(assert (=> b!523730 m!504513))

(assert (=> b!523731 m!504407))

(declare-fun m!504515 () Bool)

(assert (=> b!523731 m!504515))

(assert (=> b!523640 d!80515))

(declare-fun d!80519 () Bool)

(declare-fun lt!240380 () (_ BitVec 32))

(declare-fun lt!240379 () (_ BitVec 32))

(assert (=> d!80519 (= lt!240380 (bvmul (bvxor lt!240379 (bvlshr lt!240379 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80519 (= lt!240379 ((_ extract 31 0) (bvand (bvxor (select (arr!15994 a!3235) j!176) (bvlshr (select (arr!15994 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80519 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320996 (let ((h!11131 ((_ extract 31 0) (bvand (bvxor (select (arr!15994 a!3235) j!176) (bvlshr (select (arr!15994 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49094 (bvmul (bvxor h!11131 (bvlshr h!11131 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49094 (bvlshr x!49094 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320996 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320996 #b00000000000000000000000000000000))))))

(assert (=> d!80519 (= (toIndex!0 (select (arr!15994 a!3235) j!176) mask!3524) (bvand (bvxor lt!240380 (bvlshr lt!240380 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523646 d!80519))

(declare-fun bm!31853 () Bool)

(declare-fun call!31856 () Bool)

(assert (=> bm!31853 (= call!31856 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!80525 () Bool)

(declare-fun res!321008 () Bool)

(declare-fun e!305472 () Bool)

(assert (=> d!80525 (=> res!321008 e!305472)))

(assert (=> d!80525 (= res!321008 (bvsge j!176 (size!16358 a!3235)))))

(assert (=> d!80525 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!305472)))

(declare-fun b!523757 () Bool)

(declare-fun e!305471 () Bool)

(assert (=> b!523757 (= e!305472 e!305471)))

(declare-fun c!61679 () Bool)

(assert (=> b!523757 (= c!61679 (validKeyInArray!0 (select (arr!15994 a!3235) j!176)))))

(declare-fun b!523758 () Bool)

(declare-fun e!305473 () Bool)

(assert (=> b!523758 (= e!305471 e!305473)))

(declare-fun lt!240398 () (_ BitVec 64))

(assert (=> b!523758 (= lt!240398 (select (arr!15994 a!3235) j!176))))

(declare-fun lt!240396 () Unit!16338)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33288 (_ BitVec 64) (_ BitVec 32)) Unit!16338)

(assert (=> b!523758 (= lt!240396 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240398 j!176))))

(assert (=> b!523758 (arrayContainsKey!0 a!3235 lt!240398 #b00000000000000000000000000000000)))

(declare-fun lt!240397 () Unit!16338)

(assert (=> b!523758 (= lt!240397 lt!240396)))

(declare-fun res!321009 () Bool)

(assert (=> b!523758 (= res!321009 (= (seekEntryOrOpen!0 (select (arr!15994 a!3235) j!176) a!3235 mask!3524) (Found!4468 j!176)))))

(assert (=> b!523758 (=> (not res!321009) (not e!305473))))

(declare-fun b!523759 () Bool)

(assert (=> b!523759 (= e!305473 call!31856)))

(declare-fun b!523760 () Bool)

(assert (=> b!523760 (= e!305471 call!31856)))

(assert (= (and d!80525 (not res!321008)) b!523757))

(assert (= (and b!523757 c!61679) b!523758))

(assert (= (and b!523757 (not c!61679)) b!523760))

(assert (= (and b!523758 res!321009) b!523759))

(assert (= (or b!523759 b!523760) bm!31853))

(declare-fun m!504533 () Bool)

(assert (=> bm!31853 m!504533))

(assert (=> b!523757 m!504407))

(assert (=> b!523757 m!504407))

(assert (=> b!523757 m!504411))

(assert (=> b!523758 m!504407))

(declare-fun m!504535 () Bool)

(assert (=> b!523758 m!504535))

(declare-fun m!504537 () Bool)

(assert (=> b!523758 m!504537))

(assert (=> b!523758 m!504407))

(assert (=> b!523758 m!504409))

(assert (=> b!523646 d!80525))

(declare-fun b!523842 () Bool)

(declare-fun e!305524 () SeekEntryResult!4468)

(declare-fun e!305527 () SeekEntryResult!4468)

(assert (=> b!523842 (= e!305524 e!305527)))

(declare-fun c!61709 () Bool)

(declare-fun lt!240428 () (_ BitVec 64))

(assert (=> b!523842 (= c!61709 (or (= lt!240428 lt!240328) (= (bvadd lt!240428 lt!240428) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523843 () Bool)

(declare-fun e!305525 () Bool)

(declare-fun lt!240427 () SeekEntryResult!4468)

(assert (=> b!523843 (= e!305525 (bvsge (x!49091 lt!240427) #b01111111111111111111111111111110))))

(declare-fun b!523844 () Bool)

(assert (=> b!523844 (and (bvsge (index!20083 lt!240427) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240427) (size!16358 lt!240330)))))

(declare-fun e!305526 () Bool)

(assert (=> b!523844 (= e!305526 (= (select (arr!15994 lt!240330) (index!20083 lt!240427)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523845 () Bool)

(assert (=> b!523845 (= e!305524 (Intermediate!4468 true lt!240327 #b00000000000000000000000000000000))))

(declare-fun b!523847 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523847 (= e!305527 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240327 #b00000000000000000000000000000000 mask!3524) lt!240328 lt!240330 mask!3524))))

(declare-fun b!523848 () Bool)

(assert (=> b!523848 (and (bvsge (index!20083 lt!240427) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240427) (size!16358 lt!240330)))))

(declare-fun res!321038 () Bool)

(assert (=> b!523848 (= res!321038 (= (select (arr!15994 lt!240330) (index!20083 lt!240427)) lt!240328))))

(assert (=> b!523848 (=> res!321038 e!305526)))

(declare-fun e!305523 () Bool)

(assert (=> b!523848 (= e!305523 e!305526)))

(declare-fun b!523846 () Bool)

(assert (=> b!523846 (= e!305527 (Intermediate!4468 false lt!240327 #b00000000000000000000000000000000))))

(declare-fun d!80529 () Bool)

(assert (=> d!80529 e!305525))

(declare-fun c!61707 () Bool)

(assert (=> d!80529 (= c!61707 (and ((_ is Intermediate!4468) lt!240427) (undefined!5280 lt!240427)))))

(assert (=> d!80529 (= lt!240427 e!305524)))

(declare-fun c!61708 () Bool)

(assert (=> d!80529 (= c!61708 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80529 (= lt!240428 (select (arr!15994 lt!240330) lt!240327))))

(assert (=> d!80529 (validMask!0 mask!3524)))

(assert (=> d!80529 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240327 lt!240328 lt!240330 mask!3524) lt!240427)))

(declare-fun b!523849 () Bool)

(assert (=> b!523849 (and (bvsge (index!20083 lt!240427) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240427) (size!16358 lt!240330)))))

(declare-fun res!321039 () Bool)

(assert (=> b!523849 (= res!321039 (= (select (arr!15994 lt!240330) (index!20083 lt!240427)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523849 (=> res!321039 e!305526)))

(declare-fun b!523850 () Bool)

(assert (=> b!523850 (= e!305525 e!305523)))

(declare-fun res!321037 () Bool)

(assert (=> b!523850 (= res!321037 (and ((_ is Intermediate!4468) lt!240427) (not (undefined!5280 lt!240427)) (bvslt (x!49091 lt!240427) #b01111111111111111111111111111110) (bvsge (x!49091 lt!240427) #b00000000000000000000000000000000) (bvsge (x!49091 lt!240427) #b00000000000000000000000000000000)))))

(assert (=> b!523850 (=> (not res!321037) (not e!305523))))

(assert (= (and d!80529 c!61708) b!523845))

(assert (= (and d!80529 (not c!61708)) b!523842))

(assert (= (and b!523842 c!61709) b!523846))

(assert (= (and b!523842 (not c!61709)) b!523847))

(assert (= (and d!80529 c!61707) b!523843))

(assert (= (and d!80529 (not c!61707)) b!523850))

(assert (= (and b!523850 res!321037) b!523848))

(assert (= (and b!523848 (not res!321038)) b!523849))

(assert (= (and b!523849 (not res!321039)) b!523844))

(declare-fun m!504575 () Bool)

(assert (=> b!523844 m!504575))

(declare-fun m!504577 () Bool)

(assert (=> d!80529 m!504577))

(assert (=> d!80529 m!504401))

(declare-fun m!504579 () Bool)

(assert (=> b!523847 m!504579))

(assert (=> b!523847 m!504579))

(declare-fun m!504581 () Bool)

(assert (=> b!523847 m!504581))

(assert (=> b!523849 m!504575))

(assert (=> b!523848 m!504575))

(assert (=> b!523646 d!80529))

(declare-fun d!80541 () Bool)

(assert (=> d!80541 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!240448 () Unit!16338)

(declare-fun choose!38 (array!33288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16338)

(assert (=> d!80541 (= lt!240448 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80541 (validMask!0 mask!3524)))

(assert (=> d!80541 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!240448)))

(declare-fun bs!16452 () Bool)

(assert (= bs!16452 d!80541))

(assert (=> bs!16452 m!504431))

(declare-fun m!504583 () Bool)

(assert (=> bs!16452 m!504583))

(assert (=> bs!16452 m!504401))

(assert (=> b!523646 d!80541))

(declare-fun d!80549 () Bool)

(declare-fun lt!240450 () (_ BitVec 32))

(declare-fun lt!240449 () (_ BitVec 32))

(assert (=> d!80549 (= lt!240450 (bvmul (bvxor lt!240449 (bvlshr lt!240449 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80549 (= lt!240449 ((_ extract 31 0) (bvand (bvxor lt!240328 (bvlshr lt!240328 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80549 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320996 (let ((h!11131 ((_ extract 31 0) (bvand (bvxor lt!240328 (bvlshr lt!240328 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49094 (bvmul (bvxor h!11131 (bvlshr h!11131 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49094 (bvlshr x!49094 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320996 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320996 #b00000000000000000000000000000000))))))

(assert (=> d!80549 (= (toIndex!0 lt!240328 mask!3524) (bvand (bvxor lt!240450 (bvlshr lt!240450 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523646 d!80549))

(declare-fun b!523855 () Bool)

(declare-fun e!305532 () SeekEntryResult!4468)

(declare-fun e!305535 () SeekEntryResult!4468)

(assert (=> b!523855 (= e!305532 e!305535)))

(declare-fun lt!240454 () (_ BitVec 64))

(declare-fun c!61713 () Bool)

(assert (=> b!523855 (= c!61713 (or (= lt!240454 (select (arr!15994 a!3235) j!176)) (= (bvadd lt!240454 lt!240454) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523856 () Bool)

(declare-fun e!305533 () Bool)

(declare-fun lt!240453 () SeekEntryResult!4468)

(assert (=> b!523856 (= e!305533 (bvsge (x!49091 lt!240453) #b01111111111111111111111111111110))))

(declare-fun b!523857 () Bool)

(assert (=> b!523857 (and (bvsge (index!20083 lt!240453) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240453) (size!16358 a!3235)))))

(declare-fun e!305534 () Bool)

(assert (=> b!523857 (= e!305534 (= (select (arr!15994 a!3235) (index!20083 lt!240453)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523858 () Bool)

(assert (=> b!523858 (= e!305532 (Intermediate!4468 true lt!240326 #b00000000000000000000000000000000))))

(declare-fun b!523860 () Bool)

(assert (=> b!523860 (= e!305535 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240326 #b00000000000000000000000000000000 mask!3524) (select (arr!15994 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523861 () Bool)

(assert (=> b!523861 (and (bvsge (index!20083 lt!240453) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240453) (size!16358 a!3235)))))

(declare-fun res!321045 () Bool)

(assert (=> b!523861 (= res!321045 (= (select (arr!15994 a!3235) (index!20083 lt!240453)) (select (arr!15994 a!3235) j!176)))))

(assert (=> b!523861 (=> res!321045 e!305534)))

(declare-fun e!305531 () Bool)

(assert (=> b!523861 (= e!305531 e!305534)))

(declare-fun b!523859 () Bool)

(assert (=> b!523859 (= e!305535 (Intermediate!4468 false lt!240326 #b00000000000000000000000000000000))))

(declare-fun d!80553 () Bool)

(assert (=> d!80553 e!305533))

(declare-fun c!61711 () Bool)

(assert (=> d!80553 (= c!61711 (and ((_ is Intermediate!4468) lt!240453) (undefined!5280 lt!240453)))))

(assert (=> d!80553 (= lt!240453 e!305532)))

(declare-fun c!61712 () Bool)

(assert (=> d!80553 (= c!61712 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80553 (= lt!240454 (select (arr!15994 a!3235) lt!240326))))

(assert (=> d!80553 (validMask!0 mask!3524)))

(assert (=> d!80553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240326 (select (arr!15994 a!3235) j!176) a!3235 mask!3524) lt!240453)))

(declare-fun b!523862 () Bool)

(assert (=> b!523862 (and (bvsge (index!20083 lt!240453) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240453) (size!16358 a!3235)))))

(declare-fun res!321046 () Bool)

(assert (=> b!523862 (= res!321046 (= (select (arr!15994 a!3235) (index!20083 lt!240453)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523862 (=> res!321046 e!305534)))

(declare-fun b!523863 () Bool)

(assert (=> b!523863 (= e!305533 e!305531)))

(declare-fun res!321044 () Bool)

(assert (=> b!523863 (= res!321044 (and ((_ is Intermediate!4468) lt!240453) (not (undefined!5280 lt!240453)) (bvslt (x!49091 lt!240453) #b01111111111111111111111111111110) (bvsge (x!49091 lt!240453) #b00000000000000000000000000000000) (bvsge (x!49091 lt!240453) #b00000000000000000000000000000000)))))

(assert (=> b!523863 (=> (not res!321044) (not e!305531))))

(assert (= (and d!80553 c!61712) b!523858))

(assert (= (and d!80553 (not c!61712)) b!523855))

(assert (= (and b!523855 c!61713) b!523859))

(assert (= (and b!523855 (not c!61713)) b!523860))

(assert (= (and d!80553 c!61711) b!523856))

(assert (= (and d!80553 (not c!61711)) b!523863))

(assert (= (and b!523863 res!321044) b!523861))

(assert (= (and b!523861 (not res!321045)) b!523862))

(assert (= (and b!523862 (not res!321046)) b!523857))

(declare-fun m!504591 () Bool)

(assert (=> b!523857 m!504591))

(declare-fun m!504593 () Bool)

(assert (=> d!80553 m!504593))

(assert (=> d!80553 m!504401))

(declare-fun m!504595 () Bool)

(assert (=> b!523860 m!504595))

(assert (=> b!523860 m!504595))

(assert (=> b!523860 m!504407))

(declare-fun m!504599 () Bool)

(assert (=> b!523860 m!504599))

(assert (=> b!523862 m!504591))

(assert (=> b!523861 m!504591))

(assert (=> b!523646 d!80553))

(declare-fun bm!31858 () Bool)

(declare-fun call!31861 () Bool)

(assert (=> bm!31858 (= call!31861 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!80557 () Bool)

(declare-fun res!321050 () Bool)

(declare-fun e!305542 () Bool)

(assert (=> d!80557 (=> res!321050 e!305542)))

(assert (=> d!80557 (= res!321050 (bvsge #b00000000000000000000000000000000 (size!16358 a!3235)))))

(assert (=> d!80557 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!305542)))

(declare-fun b!523873 () Bool)

(declare-fun e!305541 () Bool)

(assert (=> b!523873 (= e!305542 e!305541)))

(declare-fun c!61717 () Bool)

(assert (=> b!523873 (= c!61717 (validKeyInArray!0 (select (arr!15994 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523874 () Bool)

(declare-fun e!305543 () Bool)

(assert (=> b!523874 (= e!305541 e!305543)))

(declare-fun lt!240459 () (_ BitVec 64))

(assert (=> b!523874 (= lt!240459 (select (arr!15994 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!240457 () Unit!16338)

(assert (=> b!523874 (= lt!240457 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240459 #b00000000000000000000000000000000))))

(assert (=> b!523874 (arrayContainsKey!0 a!3235 lt!240459 #b00000000000000000000000000000000)))

(declare-fun lt!240458 () Unit!16338)

(assert (=> b!523874 (= lt!240458 lt!240457)))

(declare-fun res!321051 () Bool)

(assert (=> b!523874 (= res!321051 (= (seekEntryOrOpen!0 (select (arr!15994 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4468 #b00000000000000000000000000000000)))))

(assert (=> b!523874 (=> (not res!321051) (not e!305543))))

(declare-fun b!523875 () Bool)

(assert (=> b!523875 (= e!305543 call!31861)))

(declare-fun b!523876 () Bool)

(assert (=> b!523876 (= e!305541 call!31861)))

(assert (= (and d!80557 (not res!321050)) b!523873))

(assert (= (and b!523873 c!61717) b!523874))

(assert (= (and b!523873 (not c!61717)) b!523876))

(assert (= (and b!523874 res!321051) b!523875))

(assert (= (or b!523875 b!523876) bm!31858))

(declare-fun m!504607 () Bool)

(assert (=> bm!31858 m!504607))

(assert (=> b!523873 m!504495))

(assert (=> b!523873 m!504495))

(assert (=> b!523873 m!504497))

(assert (=> b!523874 m!504495))

(declare-fun m!504609 () Bool)

(assert (=> b!523874 m!504609))

(declare-fun m!504611 () Bool)

(assert (=> b!523874 m!504611))

(assert (=> b!523874 m!504495))

(declare-fun m!504613 () Bool)

(assert (=> b!523874 m!504613))

(assert (=> b!523635 d!80557))

(declare-fun d!80561 () Bool)

(declare-fun e!305563 () Bool)

(assert (=> d!80561 e!305563))

(declare-fun res!321066 () Bool)

(assert (=> d!80561 (=> (not res!321066) (not e!305563))))

(assert (=> d!80561 (= res!321066 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16358 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16358 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16358 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16358 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16358 a!3235))))))

(declare-fun lt!240467 () Unit!16338)

(declare-fun choose!47 (array!33288 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16338)

(assert (=> d!80561 (= lt!240467 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!240326 #b00000000000000000000000000000000 (index!20083 lt!240325) (x!49091 lt!240325) mask!3524))))

(assert (=> d!80561 (validMask!0 mask!3524)))

(assert (=> d!80561 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240326 #b00000000000000000000000000000000 (index!20083 lt!240325) (x!49091 lt!240325) mask!3524) lt!240467)))

(declare-fun b!523903 () Bool)

(assert (=> b!523903 (= e!305563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240326 (select (store (arr!15994 a!3235) i!1204 k0!2280) j!176) (array!33289 (store (arr!15994 a!3235) i!1204 k0!2280) (size!16358 a!3235)) mask!3524) (Intermediate!4468 false (index!20083 lt!240325) (x!49091 lt!240325))))))

(assert (= (and d!80561 res!321066) b!523903))

(declare-fun m!504625 () Bool)

(assert (=> d!80561 m!504625))

(assert (=> d!80561 m!504401))

(assert (=> b!523903 m!504417))

(assert (=> b!523903 m!504421))

(assert (=> b!523903 m!504421))

(declare-fun m!504629 () Bool)

(assert (=> b!523903 m!504629))

(assert (=> b!523636 d!80561))

(declare-fun b!523906 () Bool)

(declare-fun e!305565 () SeekEntryResult!4468)

(declare-fun e!305568 () SeekEntryResult!4468)

(assert (=> b!523906 (= e!305565 e!305568)))

(declare-fun c!61726 () Bool)

(declare-fun lt!240473 () (_ BitVec 64))

(assert (=> b!523906 (= c!61726 (or (= lt!240473 lt!240328) (= (bvadd lt!240473 lt!240473) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523907 () Bool)

(declare-fun e!305566 () Bool)

(declare-fun lt!240472 () SeekEntryResult!4468)

(assert (=> b!523907 (= e!305566 (bvsge (x!49091 lt!240472) #b01111111111111111111111111111110))))

(declare-fun b!523908 () Bool)

(assert (=> b!523908 (and (bvsge (index!20083 lt!240472) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240472) (size!16358 lt!240330)))))

(declare-fun e!305567 () Bool)

(assert (=> b!523908 (= e!305567 (= (select (arr!15994 lt!240330) (index!20083 lt!240472)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523909 () Bool)

(assert (=> b!523909 (= e!305565 (Intermediate!4468 true lt!240326 #b00000000000000000000000000000000))))

(declare-fun b!523911 () Bool)

(assert (=> b!523911 (= e!305568 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240326 #b00000000000000000000000000000000 mask!3524) lt!240328 lt!240330 mask!3524))))

(declare-fun b!523912 () Bool)

(assert (=> b!523912 (and (bvsge (index!20083 lt!240472) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240472) (size!16358 lt!240330)))))

(declare-fun res!321068 () Bool)

(assert (=> b!523912 (= res!321068 (= (select (arr!15994 lt!240330) (index!20083 lt!240472)) lt!240328))))

(assert (=> b!523912 (=> res!321068 e!305567)))

(declare-fun e!305564 () Bool)

(assert (=> b!523912 (= e!305564 e!305567)))

(declare-fun b!523910 () Bool)

(assert (=> b!523910 (= e!305568 (Intermediate!4468 false lt!240326 #b00000000000000000000000000000000))))

(declare-fun d!80569 () Bool)

(assert (=> d!80569 e!305566))

(declare-fun c!61724 () Bool)

(assert (=> d!80569 (= c!61724 (and ((_ is Intermediate!4468) lt!240472) (undefined!5280 lt!240472)))))

(assert (=> d!80569 (= lt!240472 e!305565)))

(declare-fun c!61725 () Bool)

(assert (=> d!80569 (= c!61725 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80569 (= lt!240473 (select (arr!15994 lt!240330) lt!240326))))

(assert (=> d!80569 (validMask!0 mask!3524)))

(assert (=> d!80569 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240326 lt!240328 lt!240330 mask!3524) lt!240472)))

(declare-fun b!523914 () Bool)

(assert (=> b!523914 (and (bvsge (index!20083 lt!240472) #b00000000000000000000000000000000) (bvslt (index!20083 lt!240472) (size!16358 lt!240330)))))

(declare-fun res!321069 () Bool)

(assert (=> b!523914 (= res!321069 (= (select (arr!15994 lt!240330) (index!20083 lt!240472)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523914 (=> res!321069 e!305567)))

(declare-fun b!523915 () Bool)

(assert (=> b!523915 (= e!305566 e!305564)))

(declare-fun res!321067 () Bool)

(assert (=> b!523915 (= res!321067 (and ((_ is Intermediate!4468) lt!240472) (not (undefined!5280 lt!240472)) (bvslt (x!49091 lt!240472) #b01111111111111111111111111111110) (bvsge (x!49091 lt!240472) #b00000000000000000000000000000000) (bvsge (x!49091 lt!240472) #b00000000000000000000000000000000)))))

(assert (=> b!523915 (=> (not res!321067) (not e!305564))))

(assert (= (and d!80569 c!61725) b!523909))

(assert (= (and d!80569 (not c!61725)) b!523906))

(assert (= (and b!523906 c!61726) b!523910))

(assert (= (and b!523906 (not c!61726)) b!523911))

(assert (= (and d!80569 c!61724) b!523907))

(assert (= (and d!80569 (not c!61724)) b!523915))

(assert (= (and b!523915 res!321067) b!523912))

(assert (= (and b!523912 (not res!321068)) b!523914))

(assert (= (and b!523914 (not res!321069)) b!523908))

(declare-fun m!504631 () Bool)

(assert (=> b!523908 m!504631))

(declare-fun m!504633 () Bool)

(assert (=> d!80569 m!504633))

(assert (=> d!80569 m!504401))

(assert (=> b!523911 m!504595))

(assert (=> b!523911 m!504595))

(declare-fun m!504635 () Bool)

(assert (=> b!523911 m!504635))

(assert (=> b!523914 m!504631))

(assert (=> b!523912 m!504631))

(assert (=> b!523636 d!80569))

(declare-fun d!80571 () Bool)

(assert (=> d!80571 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523641 d!80571))

(check-sat (not b!523911) (not b!523757) (not d!80561) (not b!523874) (not d!80553) (not b!523720) (not b!523719) (not b!523731) (not b!523873) (not b!523727) (not d!80529) (not d!80569) (not d!80515) (not b!523704) (not d!80541) (not bm!31858) (not b!523847) (not bm!31847) (not b!523721) (not b!523903) (not b!523758) (not b!523860) (not d!80501) (not bm!31853))
(check-sat)
