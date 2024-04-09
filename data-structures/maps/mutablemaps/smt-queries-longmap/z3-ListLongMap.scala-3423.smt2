; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47472 () Bool)

(assert start!47472)

(declare-fun b!522475 () Bool)

(declare-fun e!304726 () Bool)

(declare-fun e!304729 () Bool)

(assert (=> b!522475 (= e!304726 (not e!304729))))

(declare-fun res!320257 () Bool)

(assert (=> b!522475 (=> res!320257 e!304729)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4456 0))(
  ( (MissingZero!4456 (index!20027 (_ BitVec 32))) (Found!4456 (index!20028 (_ BitVec 32))) (Intermediate!4456 (undefined!5268 Bool) (index!20029 (_ BitVec 32)) (x!49029 (_ BitVec 32))) (Undefined!4456) (MissingVacant!4456 (index!20030 (_ BitVec 32))) )
))
(declare-fun lt!239717 () SeekEntryResult!4456)

(declare-fun lt!239712 () (_ BitVec 32))

(declare-fun lt!239716 () (_ BitVec 64))

(declare-datatypes ((array!33258 0))(
  ( (array!33259 (arr!15982 (Array (_ BitVec 32) (_ BitVec 64))) (size!16346 (_ BitVec 32))) )
))
(declare-fun lt!239718 () array!33258)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33258 (_ BitVec 32)) SeekEntryResult!4456)

(assert (=> b!522475 (= res!320257 (= lt!239717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239712 lt!239716 lt!239718 mask!3524)))))

(declare-fun lt!239720 () (_ BitVec 32))

(declare-fun a!3235 () array!33258)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!522475 (= lt!239717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239720 (select (arr!15982 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522475 (= lt!239712 (toIndex!0 lt!239716 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!522475 (= lt!239716 (select (store (arr!15982 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!522475 (= lt!239720 (toIndex!0 (select (arr!15982 a!3235) j!176) mask!3524))))

(assert (=> b!522475 (= lt!239718 (array!33259 (store (arr!15982 a!3235) i!1204 k0!2280) (size!16346 a!3235)))))

(declare-fun e!304725 () Bool)

(assert (=> b!522475 e!304725))

(declare-fun res!320248 () Bool)

(assert (=> b!522475 (=> (not res!320248) (not e!304725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33258 (_ BitVec 32)) Bool)

(assert (=> b!522475 (= res!320248 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16290 0))(
  ( (Unit!16291) )
))
(declare-fun lt!239715 () Unit!16290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33258 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16290)

(assert (=> b!522475 (= lt!239715 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!320255 () Bool)

(declare-fun e!304724 () Bool)

(assert (=> start!47472 (=> (not res!320255) (not e!304724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47472 (= res!320255 (validMask!0 mask!3524))))

(assert (=> start!47472 e!304724))

(assert (=> start!47472 true))

(declare-fun array_inv!11756 (array!33258) Bool)

(assert (=> start!47472 (array_inv!11756 a!3235)))

(declare-fun b!522476 () Bool)

(assert (=> b!522476 (= e!304729 (bvsle #b00000000000000000000000000000000 (x!49029 lt!239717)))))

(assert (=> b!522476 (and (or (= (select (arr!15982 a!3235) (index!20029 lt!239717)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15982 a!3235) (index!20029 lt!239717)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15982 a!3235) (index!20029 lt!239717)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15982 a!3235) (index!20029 lt!239717)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239719 () Unit!16290)

(declare-fun e!304728 () Unit!16290)

(assert (=> b!522476 (= lt!239719 e!304728)))

(declare-fun c!61415 () Bool)

(assert (=> b!522476 (= c!61415 (= (select (arr!15982 a!3235) (index!20029 lt!239717)) (select (arr!15982 a!3235) j!176)))))

(assert (=> b!522476 (and (bvslt (x!49029 lt!239717) #b01111111111111111111111111111110) (or (= (select (arr!15982 a!3235) (index!20029 lt!239717)) (select (arr!15982 a!3235) j!176)) (= (select (arr!15982 a!3235) (index!20029 lt!239717)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15982 a!3235) (index!20029 lt!239717)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522477 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33258 (_ BitVec 32)) SeekEntryResult!4456)

(assert (=> b!522477 (= e!304725 (= (seekEntryOrOpen!0 (select (arr!15982 a!3235) j!176) a!3235 mask!3524) (Found!4456 j!176)))))

(declare-fun b!522478 () Bool)

(declare-fun Unit!16292 () Unit!16290)

(assert (=> b!522478 (= e!304728 Unit!16292)))

(declare-fun lt!239714 () Unit!16290)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33258 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16290)

(assert (=> b!522478 (= lt!239714 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239720 #b00000000000000000000000000000000 (index!20029 lt!239717) (x!49029 lt!239717) mask!3524))))

(declare-fun res!320247 () Bool)

(assert (=> b!522478 (= res!320247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239720 lt!239716 lt!239718 mask!3524) (Intermediate!4456 false (index!20029 lt!239717) (x!49029 lt!239717))))))

(declare-fun e!304727 () Bool)

(assert (=> b!522478 (=> (not res!320247) (not e!304727))))

(assert (=> b!522478 e!304727))

(declare-fun b!522479 () Bool)

(assert (=> b!522479 (= e!304727 false)))

(declare-fun b!522480 () Bool)

(declare-fun res!320258 () Bool)

(assert (=> b!522480 (=> (not res!320258) (not e!304724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522480 (= res!320258 (validKeyInArray!0 (select (arr!15982 a!3235) j!176)))))

(declare-fun b!522481 () Bool)

(declare-fun res!320250 () Bool)

(assert (=> b!522481 (=> (not res!320250) (not e!304724))))

(assert (=> b!522481 (= res!320250 (and (= (size!16346 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16346 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16346 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522482 () Bool)

(declare-fun Unit!16293 () Unit!16290)

(assert (=> b!522482 (= e!304728 Unit!16293)))

(declare-fun b!522483 () Bool)

(declare-fun res!320254 () Bool)

(assert (=> b!522483 (=> (not res!320254) (not e!304726))))

(assert (=> b!522483 (= res!320254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522484 () Bool)

(declare-fun res!320251 () Bool)

(assert (=> b!522484 (=> (not res!320251) (not e!304724))))

(assert (=> b!522484 (= res!320251 (validKeyInArray!0 k0!2280))))

(declare-fun b!522485 () Bool)

(assert (=> b!522485 (= e!304724 e!304726)))

(declare-fun res!320253 () Bool)

(assert (=> b!522485 (=> (not res!320253) (not e!304726))))

(declare-fun lt!239713 () SeekEntryResult!4456)

(assert (=> b!522485 (= res!320253 (or (= lt!239713 (MissingZero!4456 i!1204)) (= lt!239713 (MissingVacant!4456 i!1204))))))

(assert (=> b!522485 (= lt!239713 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!522486 () Bool)

(declare-fun res!320249 () Bool)

(assert (=> b!522486 (=> res!320249 e!304729)))

(get-info :version)

(assert (=> b!522486 (= res!320249 (or (undefined!5268 lt!239717) (not ((_ is Intermediate!4456) lt!239717))))))

(declare-fun b!522487 () Bool)

(declare-fun res!320252 () Bool)

(assert (=> b!522487 (=> (not res!320252) (not e!304724))))

(declare-fun arrayContainsKey!0 (array!33258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522487 (= res!320252 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522488 () Bool)

(declare-fun res!320256 () Bool)

(assert (=> b!522488 (=> (not res!320256) (not e!304726))))

(declare-datatypes ((List!10193 0))(
  ( (Nil!10190) (Cons!10189 (h!11111 (_ BitVec 64)) (t!16429 List!10193)) )
))
(declare-fun arrayNoDuplicates!0 (array!33258 (_ BitVec 32) List!10193) Bool)

(assert (=> b!522488 (= res!320256 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10190))))

(assert (= (and start!47472 res!320255) b!522481))

(assert (= (and b!522481 res!320250) b!522480))

(assert (= (and b!522480 res!320258) b!522484))

(assert (= (and b!522484 res!320251) b!522487))

(assert (= (and b!522487 res!320252) b!522485))

(assert (= (and b!522485 res!320253) b!522483))

(assert (= (and b!522483 res!320254) b!522488))

(assert (= (and b!522488 res!320256) b!522475))

(assert (= (and b!522475 res!320248) b!522477))

(assert (= (and b!522475 (not res!320257)) b!522486))

(assert (= (and b!522486 (not res!320249)) b!522476))

(assert (= (and b!522476 c!61415) b!522478))

(assert (= (and b!522476 (not c!61415)) b!522482))

(assert (= (and b!522478 res!320247) b!522479))

(declare-fun m!503425 () Bool)

(assert (=> b!522488 m!503425))

(declare-fun m!503427 () Bool)

(assert (=> b!522476 m!503427))

(declare-fun m!503429 () Bool)

(assert (=> b!522476 m!503429))

(declare-fun m!503431 () Bool)

(assert (=> b!522478 m!503431))

(declare-fun m!503433 () Bool)

(assert (=> b!522478 m!503433))

(declare-fun m!503435 () Bool)

(assert (=> b!522483 m!503435))

(assert (=> b!522477 m!503429))

(assert (=> b!522477 m!503429))

(declare-fun m!503437 () Bool)

(assert (=> b!522477 m!503437))

(declare-fun m!503439 () Bool)

(assert (=> b!522487 m!503439))

(declare-fun m!503441 () Bool)

(assert (=> b!522475 m!503441))

(declare-fun m!503443 () Bool)

(assert (=> b!522475 m!503443))

(declare-fun m!503445 () Bool)

(assert (=> b!522475 m!503445))

(declare-fun m!503447 () Bool)

(assert (=> b!522475 m!503447))

(assert (=> b!522475 m!503429))

(declare-fun m!503449 () Bool)

(assert (=> b!522475 m!503449))

(assert (=> b!522475 m!503429))

(declare-fun m!503451 () Bool)

(assert (=> b!522475 m!503451))

(assert (=> b!522475 m!503429))

(declare-fun m!503453 () Bool)

(assert (=> b!522475 m!503453))

(declare-fun m!503455 () Bool)

(assert (=> b!522475 m!503455))

(declare-fun m!503457 () Bool)

(assert (=> b!522484 m!503457))

(declare-fun m!503459 () Bool)

(assert (=> b!522485 m!503459))

(declare-fun m!503461 () Bool)

(assert (=> start!47472 m!503461))

(declare-fun m!503463 () Bool)

(assert (=> start!47472 m!503463))

(assert (=> b!522480 m!503429))

(assert (=> b!522480 m!503429))

(declare-fun m!503465 () Bool)

(assert (=> b!522480 m!503465))

(check-sat (not b!522483) (not b!522484) (not b!522475) (not b!522477) (not b!522487) (not b!522488) (not b!522478) (not b!522485) (not b!522480) (not start!47472))
(check-sat)
(get-model)

(declare-fun d!80289 () Bool)

(assert (=> d!80289 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!522484 d!80289))

(declare-fun d!80291 () Bool)

(declare-fun e!304753 () Bool)

(assert (=> d!80291 e!304753))

(declare-fun res!320297 () Bool)

(assert (=> d!80291 (=> (not res!320297) (not e!304753))))

(assert (=> d!80291 (= res!320297 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16346 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16346 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16346 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16346 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16346 a!3235))))))

(declare-fun lt!239750 () Unit!16290)

(declare-fun choose!47 (array!33258 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16290)

(assert (=> d!80291 (= lt!239750 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!239720 #b00000000000000000000000000000000 (index!20029 lt!239717) (x!49029 lt!239717) mask!3524))))

(assert (=> d!80291 (validMask!0 mask!3524)))

(assert (=> d!80291 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239720 #b00000000000000000000000000000000 (index!20029 lt!239717) (x!49029 lt!239717) mask!3524) lt!239750)))

(declare-fun b!522533 () Bool)

(assert (=> b!522533 (= e!304753 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239720 (select (store (arr!15982 a!3235) i!1204 k0!2280) j!176) (array!33259 (store (arr!15982 a!3235) i!1204 k0!2280) (size!16346 a!3235)) mask!3524) (Intermediate!4456 false (index!20029 lt!239717) (x!49029 lt!239717))))))

(assert (= (and d!80291 res!320297) b!522533))

(declare-fun m!503509 () Bool)

(assert (=> d!80291 m!503509))

(assert (=> d!80291 m!503461))

(assert (=> b!522533 m!503441))

(assert (=> b!522533 m!503445))

(assert (=> b!522533 m!503445))

(declare-fun m!503511 () Bool)

(assert (=> b!522533 m!503511))

(assert (=> b!522478 d!80291))

(declare-fun b!522552 () Bool)

(declare-fun e!304764 () SeekEntryResult!4456)

(declare-fun e!304766 () SeekEntryResult!4456)

(assert (=> b!522552 (= e!304764 e!304766)))

(declare-fun c!61427 () Bool)

(declare-fun lt!239756 () (_ BitVec 64))

(assert (=> b!522552 (= c!61427 (or (= lt!239756 lt!239716) (= (bvadd lt!239756 lt!239756) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522553 () Bool)

(declare-fun lt!239755 () SeekEntryResult!4456)

(assert (=> b!522553 (and (bvsge (index!20029 lt!239755) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239755) (size!16346 lt!239718)))))

(declare-fun res!320304 () Bool)

(assert (=> b!522553 (= res!320304 (= (select (arr!15982 lt!239718) (index!20029 lt!239755)) lt!239716))))

(declare-fun e!304768 () Bool)

(assert (=> b!522553 (=> res!320304 e!304768)))

(declare-fun e!304765 () Bool)

(assert (=> b!522553 (= e!304765 e!304768)))

(declare-fun b!522554 () Bool)

(assert (=> b!522554 (= e!304764 (Intermediate!4456 true lt!239720 #b00000000000000000000000000000000))))

(declare-fun d!80293 () Bool)

(declare-fun e!304767 () Bool)

(assert (=> d!80293 e!304767))

(declare-fun c!61425 () Bool)

(assert (=> d!80293 (= c!61425 (and ((_ is Intermediate!4456) lt!239755) (undefined!5268 lt!239755)))))

(assert (=> d!80293 (= lt!239755 e!304764)))

(declare-fun c!61426 () Bool)

(assert (=> d!80293 (= c!61426 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80293 (= lt!239756 (select (arr!15982 lt!239718) lt!239720))))

(assert (=> d!80293 (validMask!0 mask!3524)))

(assert (=> d!80293 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239720 lt!239716 lt!239718 mask!3524) lt!239755)))

(declare-fun b!522555 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522555 (= e!304766 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239720 #b00000000000000000000000000000000 mask!3524) lt!239716 lt!239718 mask!3524))))

(declare-fun b!522556 () Bool)

(assert (=> b!522556 (= e!304767 (bvsge (x!49029 lt!239755) #b01111111111111111111111111111110))))

(declare-fun b!522557 () Bool)

(assert (=> b!522557 (and (bvsge (index!20029 lt!239755) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239755) (size!16346 lt!239718)))))

(declare-fun res!320305 () Bool)

(assert (=> b!522557 (= res!320305 (= (select (arr!15982 lt!239718) (index!20029 lt!239755)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522557 (=> res!320305 e!304768)))

(declare-fun b!522558 () Bool)

(assert (=> b!522558 (= e!304766 (Intermediate!4456 false lt!239720 #b00000000000000000000000000000000))))

(declare-fun b!522559 () Bool)

(assert (=> b!522559 (= e!304767 e!304765)))

(declare-fun res!320306 () Bool)

(assert (=> b!522559 (= res!320306 (and ((_ is Intermediate!4456) lt!239755) (not (undefined!5268 lt!239755)) (bvslt (x!49029 lt!239755) #b01111111111111111111111111111110) (bvsge (x!49029 lt!239755) #b00000000000000000000000000000000) (bvsge (x!49029 lt!239755) #b00000000000000000000000000000000)))))

(assert (=> b!522559 (=> (not res!320306) (not e!304765))))

(declare-fun b!522560 () Bool)

(assert (=> b!522560 (and (bvsge (index!20029 lt!239755) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239755) (size!16346 lt!239718)))))

(assert (=> b!522560 (= e!304768 (= (select (arr!15982 lt!239718) (index!20029 lt!239755)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80293 c!61426) b!522554))

(assert (= (and d!80293 (not c!61426)) b!522552))

(assert (= (and b!522552 c!61427) b!522558))

(assert (= (and b!522552 (not c!61427)) b!522555))

(assert (= (and d!80293 c!61425) b!522556))

(assert (= (and d!80293 (not c!61425)) b!522559))

(assert (= (and b!522559 res!320306) b!522553))

(assert (= (and b!522553 (not res!320304)) b!522557))

(assert (= (and b!522557 (not res!320305)) b!522560))

(declare-fun m!503513 () Bool)

(assert (=> b!522555 m!503513))

(assert (=> b!522555 m!503513))

(declare-fun m!503515 () Bool)

(assert (=> b!522555 m!503515))

(declare-fun m!503517 () Bool)

(assert (=> b!522560 m!503517))

(assert (=> b!522553 m!503517))

(declare-fun m!503519 () Bool)

(assert (=> d!80293 m!503519))

(assert (=> d!80293 m!503461))

(assert (=> b!522557 m!503517))

(assert (=> b!522478 d!80293))

(declare-fun b!522571 () Bool)

(declare-fun e!304777 () Bool)

(declare-fun e!304779 () Bool)

(assert (=> b!522571 (= e!304777 e!304779)))

(declare-fun c!61430 () Bool)

(assert (=> b!522571 (= c!61430 (validKeyInArray!0 (select (arr!15982 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522572 () Bool)

(declare-fun e!304778 () Bool)

(assert (=> b!522572 (= e!304779 e!304778)))

(declare-fun lt!239771 () (_ BitVec 64))

(assert (=> b!522572 (= lt!239771 (select (arr!15982 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!239773 () Unit!16290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33258 (_ BitVec 64) (_ BitVec 32)) Unit!16290)

(assert (=> b!522572 (= lt!239773 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!239771 #b00000000000000000000000000000000))))

(assert (=> b!522572 (arrayContainsKey!0 a!3235 lt!239771 #b00000000000000000000000000000000)))

(declare-fun lt!239772 () Unit!16290)

(assert (=> b!522572 (= lt!239772 lt!239773)))

(declare-fun res!320315 () Bool)

(assert (=> b!522572 (= res!320315 (= (seekEntryOrOpen!0 (select (arr!15982 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4456 #b00000000000000000000000000000000)))))

(assert (=> b!522572 (=> (not res!320315) (not e!304778))))

(declare-fun d!80297 () Bool)

(declare-fun res!320314 () Bool)

(assert (=> d!80297 (=> res!320314 e!304777)))

(assert (=> d!80297 (= res!320314 (bvsge #b00000000000000000000000000000000 (size!16346 a!3235)))))

(assert (=> d!80297 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!304777)))

(declare-fun bm!31805 () Bool)

(declare-fun call!31808 () Bool)

(assert (=> bm!31805 (= call!31808 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!522573 () Bool)

(assert (=> b!522573 (= e!304779 call!31808)))

(declare-fun b!522574 () Bool)

(assert (=> b!522574 (= e!304778 call!31808)))

(assert (= (and d!80297 (not res!320314)) b!522571))

(assert (= (and b!522571 c!61430) b!522572))

(assert (= (and b!522571 (not c!61430)) b!522573))

(assert (= (and b!522572 res!320315) b!522574))

(assert (= (or b!522574 b!522573) bm!31805))

(declare-fun m!503521 () Bool)

(assert (=> b!522571 m!503521))

(assert (=> b!522571 m!503521))

(declare-fun m!503523 () Bool)

(assert (=> b!522571 m!503523))

(assert (=> b!522572 m!503521))

(declare-fun m!503525 () Bool)

(assert (=> b!522572 m!503525))

(declare-fun m!503527 () Bool)

(assert (=> b!522572 m!503527))

(assert (=> b!522572 m!503521))

(declare-fun m!503529 () Bool)

(assert (=> b!522572 m!503529))

(declare-fun m!503531 () Bool)

(assert (=> bm!31805 m!503531))

(assert (=> b!522483 d!80297))

(declare-fun b!522594 () Bool)

(declare-fun e!304797 () Bool)

(declare-fun call!31813 () Bool)

(assert (=> b!522594 (= e!304797 call!31813)))

(declare-fun b!522595 () Bool)

(declare-fun e!304798 () Bool)

(assert (=> b!522595 (= e!304798 e!304797)))

(declare-fun c!61435 () Bool)

(assert (=> b!522595 (= c!61435 (validKeyInArray!0 (select (arr!15982 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522596 () Bool)

(declare-fun e!304795 () Bool)

(declare-fun contains!2769 (List!10193 (_ BitVec 64)) Bool)

(assert (=> b!522596 (= e!304795 (contains!2769 Nil!10190 (select (arr!15982 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80305 () Bool)

(declare-fun res!320327 () Bool)

(declare-fun e!304796 () Bool)

(assert (=> d!80305 (=> res!320327 e!304796)))

(assert (=> d!80305 (= res!320327 (bvsge #b00000000000000000000000000000000 (size!16346 a!3235)))))

(assert (=> d!80305 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10190) e!304796)))

(declare-fun bm!31810 () Bool)

(assert (=> bm!31810 (= call!31813 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61435 (Cons!10189 (select (arr!15982 a!3235) #b00000000000000000000000000000000) Nil!10190) Nil!10190)))))

(declare-fun b!522597 () Bool)

(assert (=> b!522597 (= e!304796 e!304798)))

(declare-fun res!320328 () Bool)

(assert (=> b!522597 (=> (not res!320328) (not e!304798))))

(assert (=> b!522597 (= res!320328 (not e!304795))))

(declare-fun res!320329 () Bool)

(assert (=> b!522597 (=> (not res!320329) (not e!304795))))

(assert (=> b!522597 (= res!320329 (validKeyInArray!0 (select (arr!15982 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522598 () Bool)

(assert (=> b!522598 (= e!304797 call!31813)))

(assert (= (and d!80305 (not res!320327)) b!522597))

(assert (= (and b!522597 res!320329) b!522596))

(assert (= (and b!522597 res!320328) b!522595))

(assert (= (and b!522595 c!61435) b!522598))

(assert (= (and b!522595 (not c!61435)) b!522594))

(assert (= (or b!522598 b!522594) bm!31810))

(assert (=> b!522595 m!503521))

(assert (=> b!522595 m!503521))

(assert (=> b!522595 m!503523))

(assert (=> b!522596 m!503521))

(assert (=> b!522596 m!503521))

(declare-fun m!503537 () Bool)

(assert (=> b!522596 m!503537))

(assert (=> bm!31810 m!503521))

(declare-fun m!503539 () Bool)

(assert (=> bm!31810 m!503539))

(assert (=> b!522597 m!503521))

(assert (=> b!522597 m!503521))

(assert (=> b!522597 m!503523))

(assert (=> b!522488 d!80305))

(declare-fun d!80309 () Bool)

(declare-fun lt!239800 () SeekEntryResult!4456)

(assert (=> d!80309 (and (or ((_ is Undefined!4456) lt!239800) (not ((_ is Found!4456) lt!239800)) (and (bvsge (index!20028 lt!239800) #b00000000000000000000000000000000) (bvslt (index!20028 lt!239800) (size!16346 a!3235)))) (or ((_ is Undefined!4456) lt!239800) ((_ is Found!4456) lt!239800) (not ((_ is MissingZero!4456) lt!239800)) (and (bvsge (index!20027 lt!239800) #b00000000000000000000000000000000) (bvslt (index!20027 lt!239800) (size!16346 a!3235)))) (or ((_ is Undefined!4456) lt!239800) ((_ is Found!4456) lt!239800) ((_ is MissingZero!4456) lt!239800) (not ((_ is MissingVacant!4456) lt!239800)) (and (bvsge (index!20030 lt!239800) #b00000000000000000000000000000000) (bvslt (index!20030 lt!239800) (size!16346 a!3235)))) (or ((_ is Undefined!4456) lt!239800) (ite ((_ is Found!4456) lt!239800) (= (select (arr!15982 a!3235) (index!20028 lt!239800)) (select (arr!15982 a!3235) j!176)) (ite ((_ is MissingZero!4456) lt!239800) (= (select (arr!15982 a!3235) (index!20027 lt!239800)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4456) lt!239800) (= (select (arr!15982 a!3235) (index!20030 lt!239800)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!304835 () SeekEntryResult!4456)

(assert (=> d!80309 (= lt!239800 e!304835)))

(declare-fun c!61458 () Bool)

(declare-fun lt!239802 () SeekEntryResult!4456)

(assert (=> d!80309 (= c!61458 (and ((_ is Intermediate!4456) lt!239802) (undefined!5268 lt!239802)))))

(assert (=> d!80309 (= lt!239802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15982 a!3235) j!176) mask!3524) (select (arr!15982 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80309 (validMask!0 mask!3524)))

(assert (=> d!80309 (= (seekEntryOrOpen!0 (select (arr!15982 a!3235) j!176) a!3235 mask!3524) lt!239800)))

(declare-fun b!522660 () Bool)

(declare-fun c!61459 () Bool)

(declare-fun lt!239801 () (_ BitVec 64))

(assert (=> b!522660 (= c!61459 (= lt!239801 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!304834 () SeekEntryResult!4456)

(declare-fun e!304833 () SeekEntryResult!4456)

(assert (=> b!522660 (= e!304834 e!304833)))

(declare-fun b!522661 () Bool)

(assert (=> b!522661 (= e!304834 (Found!4456 (index!20029 lt!239802)))))

(declare-fun b!522662 () Bool)

(assert (=> b!522662 (= e!304835 e!304834)))

(assert (=> b!522662 (= lt!239801 (select (arr!15982 a!3235) (index!20029 lt!239802)))))

(declare-fun c!61460 () Bool)

(assert (=> b!522662 (= c!61460 (= lt!239801 (select (arr!15982 a!3235) j!176)))))

(declare-fun b!522663 () Bool)

(assert (=> b!522663 (= e!304833 (MissingZero!4456 (index!20029 lt!239802)))))

(declare-fun b!522664 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33258 (_ BitVec 32)) SeekEntryResult!4456)

(assert (=> b!522664 (= e!304833 (seekKeyOrZeroReturnVacant!0 (x!49029 lt!239802) (index!20029 lt!239802) (index!20029 lt!239802) (select (arr!15982 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!522665 () Bool)

(assert (=> b!522665 (= e!304835 Undefined!4456)))

(assert (= (and d!80309 c!61458) b!522665))

(assert (= (and d!80309 (not c!61458)) b!522662))

(assert (= (and b!522662 c!61460) b!522661))

(assert (= (and b!522662 (not c!61460)) b!522660))

(assert (= (and b!522660 c!61459) b!522663))

(assert (= (and b!522660 (not c!61459)) b!522664))

(assert (=> d!80309 m!503429))

(assert (=> d!80309 m!503449))

(assert (=> d!80309 m!503461))

(declare-fun m!503555 () Bool)

(assert (=> d!80309 m!503555))

(declare-fun m!503557 () Bool)

(assert (=> d!80309 m!503557))

(assert (=> d!80309 m!503449))

(assert (=> d!80309 m!503429))

(declare-fun m!503559 () Bool)

(assert (=> d!80309 m!503559))

(declare-fun m!503561 () Bool)

(assert (=> d!80309 m!503561))

(declare-fun m!503563 () Bool)

(assert (=> b!522662 m!503563))

(assert (=> b!522664 m!503429))

(declare-fun m!503565 () Bool)

(assert (=> b!522664 m!503565))

(assert (=> b!522477 d!80309))

(declare-fun d!80317 () Bool)

(declare-fun res!320354 () Bool)

(declare-fun e!304845 () Bool)

(assert (=> d!80317 (=> res!320354 e!304845)))

(assert (=> d!80317 (= res!320354 (= (select (arr!15982 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80317 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!304845)))

(declare-fun b!522679 () Bool)

(declare-fun e!304846 () Bool)

(assert (=> b!522679 (= e!304845 e!304846)))

(declare-fun res!320355 () Bool)

(assert (=> b!522679 (=> (not res!320355) (not e!304846))))

(assert (=> b!522679 (= res!320355 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16346 a!3235)))))

(declare-fun b!522680 () Bool)

(assert (=> b!522680 (= e!304846 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80317 (not res!320354)) b!522679))

(assert (= (and b!522679 res!320355) b!522680))

(assert (=> d!80317 m!503521))

(declare-fun m!503575 () Bool)

(assert (=> b!522680 m!503575))

(assert (=> b!522487 d!80317))

(declare-fun d!80323 () Bool)

(assert (=> d!80323 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47472 d!80323))

(declare-fun d!80335 () Bool)

(assert (=> d!80335 (= (array_inv!11756 a!3235) (bvsge (size!16346 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47472 d!80335))

(declare-fun d!80337 () Bool)

(declare-fun lt!239817 () (_ BitVec 32))

(declare-fun lt!239816 () (_ BitVec 32))

(assert (=> d!80337 (= lt!239817 (bvmul (bvxor lt!239816 (bvlshr lt!239816 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80337 (= lt!239816 ((_ extract 31 0) (bvand (bvxor lt!239716 (bvlshr lt!239716 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80337 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320365 (let ((h!11114 ((_ extract 31 0) (bvand (bvxor lt!239716 (bvlshr lt!239716 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49037 (bvmul (bvxor h!11114 (bvlshr h!11114 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49037 (bvlshr x!49037 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320365 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320365 #b00000000000000000000000000000000))))))

(assert (=> d!80337 (= (toIndex!0 lt!239716 mask!3524) (bvand (bvxor lt!239817 (bvlshr lt!239817 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!522475 d!80337))

(declare-fun b!522696 () Bool)

(declare-fun e!304858 () SeekEntryResult!4456)

(declare-fun e!304860 () SeekEntryResult!4456)

(assert (=> b!522696 (= e!304858 e!304860)))

(declare-fun c!61469 () Bool)

(declare-fun lt!239819 () (_ BitVec 64))

(assert (=> b!522696 (= c!61469 (or (= lt!239819 (select (arr!15982 a!3235) j!176)) (= (bvadd lt!239819 lt!239819) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522697 () Bool)

(declare-fun lt!239818 () SeekEntryResult!4456)

(assert (=> b!522697 (and (bvsge (index!20029 lt!239818) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239818) (size!16346 a!3235)))))

(declare-fun res!320366 () Bool)

(assert (=> b!522697 (= res!320366 (= (select (arr!15982 a!3235) (index!20029 lt!239818)) (select (arr!15982 a!3235) j!176)))))

(declare-fun e!304862 () Bool)

(assert (=> b!522697 (=> res!320366 e!304862)))

(declare-fun e!304859 () Bool)

(assert (=> b!522697 (= e!304859 e!304862)))

(declare-fun b!522698 () Bool)

(assert (=> b!522698 (= e!304858 (Intermediate!4456 true lt!239720 #b00000000000000000000000000000000))))

(declare-fun d!80343 () Bool)

(declare-fun e!304861 () Bool)

(assert (=> d!80343 e!304861))

(declare-fun c!61467 () Bool)

(assert (=> d!80343 (= c!61467 (and ((_ is Intermediate!4456) lt!239818) (undefined!5268 lt!239818)))))

(assert (=> d!80343 (= lt!239818 e!304858)))

(declare-fun c!61468 () Bool)

(assert (=> d!80343 (= c!61468 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80343 (= lt!239819 (select (arr!15982 a!3235) lt!239720))))

(assert (=> d!80343 (validMask!0 mask!3524)))

(assert (=> d!80343 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239720 (select (arr!15982 a!3235) j!176) a!3235 mask!3524) lt!239818)))

(declare-fun b!522699 () Bool)

(assert (=> b!522699 (= e!304860 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239720 #b00000000000000000000000000000000 mask!3524) (select (arr!15982 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!522700 () Bool)

(assert (=> b!522700 (= e!304861 (bvsge (x!49029 lt!239818) #b01111111111111111111111111111110))))

(declare-fun b!522701 () Bool)

(assert (=> b!522701 (and (bvsge (index!20029 lt!239818) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239818) (size!16346 a!3235)))))

(declare-fun res!320367 () Bool)

(assert (=> b!522701 (= res!320367 (= (select (arr!15982 a!3235) (index!20029 lt!239818)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522701 (=> res!320367 e!304862)))

(declare-fun b!522702 () Bool)

(assert (=> b!522702 (= e!304860 (Intermediate!4456 false lt!239720 #b00000000000000000000000000000000))))

(declare-fun b!522703 () Bool)

(assert (=> b!522703 (= e!304861 e!304859)))

(declare-fun res!320368 () Bool)

(assert (=> b!522703 (= res!320368 (and ((_ is Intermediate!4456) lt!239818) (not (undefined!5268 lt!239818)) (bvslt (x!49029 lt!239818) #b01111111111111111111111111111110) (bvsge (x!49029 lt!239818) #b00000000000000000000000000000000) (bvsge (x!49029 lt!239818) #b00000000000000000000000000000000)))))

(assert (=> b!522703 (=> (not res!320368) (not e!304859))))

(declare-fun b!522704 () Bool)

(assert (=> b!522704 (and (bvsge (index!20029 lt!239818) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239818) (size!16346 a!3235)))))

(assert (=> b!522704 (= e!304862 (= (select (arr!15982 a!3235) (index!20029 lt!239818)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80343 c!61468) b!522698))

(assert (= (and d!80343 (not c!61468)) b!522696))

(assert (= (and b!522696 c!61469) b!522702))

(assert (= (and b!522696 (not c!61469)) b!522699))

(assert (= (and d!80343 c!61467) b!522700))

(assert (= (and d!80343 (not c!61467)) b!522703))

(assert (= (and b!522703 res!320368) b!522697))

(assert (= (and b!522697 (not res!320366)) b!522701))

(assert (= (and b!522701 (not res!320367)) b!522704))

(assert (=> b!522699 m!503513))

(assert (=> b!522699 m!503513))

(assert (=> b!522699 m!503429))

(declare-fun m!503591 () Bool)

(assert (=> b!522699 m!503591))

(declare-fun m!503593 () Bool)

(assert (=> b!522704 m!503593))

(assert (=> b!522697 m!503593))

(declare-fun m!503595 () Bool)

(assert (=> d!80343 m!503595))

(assert (=> d!80343 m!503461))

(assert (=> b!522701 m!503593))

(assert (=> b!522475 d!80343))

(declare-fun d!80345 () Bool)

(declare-fun lt!239821 () (_ BitVec 32))

(declare-fun lt!239820 () (_ BitVec 32))

(assert (=> d!80345 (= lt!239821 (bvmul (bvxor lt!239820 (bvlshr lt!239820 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80345 (= lt!239820 ((_ extract 31 0) (bvand (bvxor (select (arr!15982 a!3235) j!176) (bvlshr (select (arr!15982 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80345 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320365 (let ((h!11114 ((_ extract 31 0) (bvand (bvxor (select (arr!15982 a!3235) j!176) (bvlshr (select (arr!15982 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49037 (bvmul (bvxor h!11114 (bvlshr h!11114 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49037 (bvlshr x!49037 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320365 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320365 #b00000000000000000000000000000000))))))

(assert (=> d!80345 (= (toIndex!0 (select (arr!15982 a!3235) j!176) mask!3524) (bvand (bvxor lt!239821 (bvlshr lt!239821 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!522475 d!80345))

(declare-fun b!522705 () Bool)

(declare-fun e!304863 () Bool)

(declare-fun e!304865 () Bool)

(assert (=> b!522705 (= e!304863 e!304865)))

(declare-fun c!61470 () Bool)

(assert (=> b!522705 (= c!61470 (validKeyInArray!0 (select (arr!15982 a!3235) j!176)))))

(declare-fun b!522706 () Bool)

(declare-fun e!304864 () Bool)

(assert (=> b!522706 (= e!304865 e!304864)))

(declare-fun lt!239822 () (_ BitVec 64))

(assert (=> b!522706 (= lt!239822 (select (arr!15982 a!3235) j!176))))

(declare-fun lt!239824 () Unit!16290)

(assert (=> b!522706 (= lt!239824 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!239822 j!176))))

(assert (=> b!522706 (arrayContainsKey!0 a!3235 lt!239822 #b00000000000000000000000000000000)))

(declare-fun lt!239823 () Unit!16290)

(assert (=> b!522706 (= lt!239823 lt!239824)))

(declare-fun res!320370 () Bool)

(assert (=> b!522706 (= res!320370 (= (seekEntryOrOpen!0 (select (arr!15982 a!3235) j!176) a!3235 mask!3524) (Found!4456 j!176)))))

(assert (=> b!522706 (=> (not res!320370) (not e!304864))))

(declare-fun d!80347 () Bool)

(declare-fun res!320369 () Bool)

(assert (=> d!80347 (=> res!320369 e!304863)))

(assert (=> d!80347 (= res!320369 (bvsge j!176 (size!16346 a!3235)))))

(assert (=> d!80347 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!304863)))

(declare-fun bm!31812 () Bool)

(declare-fun call!31815 () Bool)

(assert (=> bm!31812 (= call!31815 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!522707 () Bool)

(assert (=> b!522707 (= e!304865 call!31815)))

(declare-fun b!522708 () Bool)

(assert (=> b!522708 (= e!304864 call!31815)))

(assert (= (and d!80347 (not res!320369)) b!522705))

(assert (= (and b!522705 c!61470) b!522706))

(assert (= (and b!522705 (not c!61470)) b!522707))

(assert (= (and b!522706 res!320370) b!522708))

(assert (= (or b!522708 b!522707) bm!31812))

(assert (=> b!522705 m!503429))

(assert (=> b!522705 m!503429))

(assert (=> b!522705 m!503465))

(assert (=> b!522706 m!503429))

(declare-fun m!503597 () Bool)

(assert (=> b!522706 m!503597))

(declare-fun m!503599 () Bool)

(assert (=> b!522706 m!503599))

(assert (=> b!522706 m!503429))

(assert (=> b!522706 m!503437))

(declare-fun m!503601 () Bool)

(assert (=> bm!31812 m!503601))

(assert (=> b!522475 d!80347))

(declare-fun b!522709 () Bool)

(declare-fun e!304866 () SeekEntryResult!4456)

(declare-fun e!304868 () SeekEntryResult!4456)

(assert (=> b!522709 (= e!304866 e!304868)))

(declare-fun c!61473 () Bool)

(declare-fun lt!239826 () (_ BitVec 64))

(assert (=> b!522709 (= c!61473 (or (= lt!239826 lt!239716) (= (bvadd lt!239826 lt!239826) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522710 () Bool)

(declare-fun lt!239825 () SeekEntryResult!4456)

(assert (=> b!522710 (and (bvsge (index!20029 lt!239825) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239825) (size!16346 lt!239718)))))

(declare-fun res!320371 () Bool)

(assert (=> b!522710 (= res!320371 (= (select (arr!15982 lt!239718) (index!20029 lt!239825)) lt!239716))))

(declare-fun e!304870 () Bool)

(assert (=> b!522710 (=> res!320371 e!304870)))

(declare-fun e!304867 () Bool)

(assert (=> b!522710 (= e!304867 e!304870)))

(declare-fun b!522711 () Bool)

(assert (=> b!522711 (= e!304866 (Intermediate!4456 true lt!239712 #b00000000000000000000000000000000))))

(declare-fun d!80349 () Bool)

(declare-fun e!304869 () Bool)

(assert (=> d!80349 e!304869))

(declare-fun c!61471 () Bool)

(assert (=> d!80349 (= c!61471 (and ((_ is Intermediate!4456) lt!239825) (undefined!5268 lt!239825)))))

(assert (=> d!80349 (= lt!239825 e!304866)))

(declare-fun c!61472 () Bool)

(assert (=> d!80349 (= c!61472 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80349 (= lt!239826 (select (arr!15982 lt!239718) lt!239712))))

(assert (=> d!80349 (validMask!0 mask!3524)))

(assert (=> d!80349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239712 lt!239716 lt!239718 mask!3524) lt!239825)))

(declare-fun b!522712 () Bool)

(assert (=> b!522712 (= e!304868 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239712 #b00000000000000000000000000000000 mask!3524) lt!239716 lt!239718 mask!3524))))

(declare-fun b!522713 () Bool)

(assert (=> b!522713 (= e!304869 (bvsge (x!49029 lt!239825) #b01111111111111111111111111111110))))

(declare-fun b!522714 () Bool)

(assert (=> b!522714 (and (bvsge (index!20029 lt!239825) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239825) (size!16346 lt!239718)))))

(declare-fun res!320372 () Bool)

(assert (=> b!522714 (= res!320372 (= (select (arr!15982 lt!239718) (index!20029 lt!239825)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522714 (=> res!320372 e!304870)))

(declare-fun b!522715 () Bool)

(assert (=> b!522715 (= e!304868 (Intermediate!4456 false lt!239712 #b00000000000000000000000000000000))))

(declare-fun b!522716 () Bool)

(assert (=> b!522716 (= e!304869 e!304867)))

(declare-fun res!320373 () Bool)

(assert (=> b!522716 (= res!320373 (and ((_ is Intermediate!4456) lt!239825) (not (undefined!5268 lt!239825)) (bvslt (x!49029 lt!239825) #b01111111111111111111111111111110) (bvsge (x!49029 lt!239825) #b00000000000000000000000000000000) (bvsge (x!49029 lt!239825) #b00000000000000000000000000000000)))))

(assert (=> b!522716 (=> (not res!320373) (not e!304867))))

(declare-fun b!522717 () Bool)

(assert (=> b!522717 (and (bvsge (index!20029 lt!239825) #b00000000000000000000000000000000) (bvslt (index!20029 lt!239825) (size!16346 lt!239718)))))

(assert (=> b!522717 (= e!304870 (= (select (arr!15982 lt!239718) (index!20029 lt!239825)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80349 c!61472) b!522711))

(assert (= (and d!80349 (not c!61472)) b!522709))

(assert (= (and b!522709 c!61473) b!522715))

(assert (= (and b!522709 (not c!61473)) b!522712))

(assert (= (and d!80349 c!61471) b!522713))

(assert (= (and d!80349 (not c!61471)) b!522716))

(assert (= (and b!522716 res!320373) b!522710))

(assert (= (and b!522710 (not res!320371)) b!522714))

(assert (= (and b!522714 (not res!320372)) b!522717))

(declare-fun m!503603 () Bool)

(assert (=> b!522712 m!503603))

(assert (=> b!522712 m!503603))

(declare-fun m!503605 () Bool)

(assert (=> b!522712 m!503605))

(declare-fun m!503607 () Bool)

(assert (=> b!522717 m!503607))

(assert (=> b!522710 m!503607))

(declare-fun m!503609 () Bool)

(assert (=> d!80349 m!503609))

(assert (=> d!80349 m!503461))

(assert (=> b!522714 m!503607))

(assert (=> b!522475 d!80349))

(declare-fun d!80351 () Bool)

(assert (=> d!80351 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!239835 () Unit!16290)

(declare-fun choose!38 (array!33258 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16290)

(assert (=> d!80351 (= lt!239835 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80351 (validMask!0 mask!3524)))

(assert (=> d!80351 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!239835)))

(declare-fun bs!16435 () Bool)

(assert (= bs!16435 d!80351))

(assert (=> bs!16435 m!503453))

(declare-fun m!503619 () Bool)

(assert (=> bs!16435 m!503619))

(assert (=> bs!16435 m!503461))

(assert (=> b!522475 d!80351))

(declare-fun d!80355 () Bool)

(assert (=> d!80355 (= (validKeyInArray!0 (select (arr!15982 a!3235) j!176)) (and (not (= (select (arr!15982 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15982 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!522480 d!80355))

(declare-fun d!80357 () Bool)

(declare-fun lt!239836 () SeekEntryResult!4456)

(assert (=> d!80357 (and (or ((_ is Undefined!4456) lt!239836) (not ((_ is Found!4456) lt!239836)) (and (bvsge (index!20028 lt!239836) #b00000000000000000000000000000000) (bvslt (index!20028 lt!239836) (size!16346 a!3235)))) (or ((_ is Undefined!4456) lt!239836) ((_ is Found!4456) lt!239836) (not ((_ is MissingZero!4456) lt!239836)) (and (bvsge (index!20027 lt!239836) #b00000000000000000000000000000000) (bvslt (index!20027 lt!239836) (size!16346 a!3235)))) (or ((_ is Undefined!4456) lt!239836) ((_ is Found!4456) lt!239836) ((_ is MissingZero!4456) lt!239836) (not ((_ is MissingVacant!4456) lt!239836)) (and (bvsge (index!20030 lt!239836) #b00000000000000000000000000000000) (bvslt (index!20030 lt!239836) (size!16346 a!3235)))) (or ((_ is Undefined!4456) lt!239836) (ite ((_ is Found!4456) lt!239836) (= (select (arr!15982 a!3235) (index!20028 lt!239836)) k0!2280) (ite ((_ is MissingZero!4456) lt!239836) (= (select (arr!15982 a!3235) (index!20027 lt!239836)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4456) lt!239836) (= (select (arr!15982 a!3235) (index!20030 lt!239836)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!304891 () SeekEntryResult!4456)

(assert (=> d!80357 (= lt!239836 e!304891)))

(declare-fun c!61483 () Bool)

(declare-fun lt!239838 () SeekEntryResult!4456)

(assert (=> d!80357 (= c!61483 (and ((_ is Intermediate!4456) lt!239838) (undefined!5268 lt!239838)))))

(assert (=> d!80357 (= lt!239838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80357 (validMask!0 mask!3524)))

(assert (=> d!80357 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!239836)))

(declare-fun b!522745 () Bool)

(declare-fun c!61484 () Bool)

(declare-fun lt!239837 () (_ BitVec 64))

(assert (=> b!522745 (= c!61484 (= lt!239837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!304890 () SeekEntryResult!4456)

(declare-fun e!304889 () SeekEntryResult!4456)

(assert (=> b!522745 (= e!304890 e!304889)))

(declare-fun b!522746 () Bool)

(assert (=> b!522746 (= e!304890 (Found!4456 (index!20029 lt!239838)))))

(declare-fun b!522747 () Bool)

(assert (=> b!522747 (= e!304891 e!304890)))

(assert (=> b!522747 (= lt!239837 (select (arr!15982 a!3235) (index!20029 lt!239838)))))

(declare-fun c!61485 () Bool)

(assert (=> b!522747 (= c!61485 (= lt!239837 k0!2280))))

(declare-fun b!522748 () Bool)

(assert (=> b!522748 (= e!304889 (MissingZero!4456 (index!20029 lt!239838)))))

(declare-fun b!522749 () Bool)

(assert (=> b!522749 (= e!304889 (seekKeyOrZeroReturnVacant!0 (x!49029 lt!239838) (index!20029 lt!239838) (index!20029 lt!239838) k0!2280 a!3235 mask!3524))))

(declare-fun b!522750 () Bool)

(assert (=> b!522750 (= e!304891 Undefined!4456)))

(assert (= (and d!80357 c!61483) b!522750))

(assert (= (and d!80357 (not c!61483)) b!522747))

(assert (= (and b!522747 c!61485) b!522746))

(assert (= (and b!522747 (not c!61485)) b!522745))

(assert (= (and b!522745 c!61484) b!522748))

(assert (= (and b!522745 (not c!61484)) b!522749))

(declare-fun m!503621 () Bool)

(assert (=> d!80357 m!503621))

(assert (=> d!80357 m!503461))

(declare-fun m!503623 () Bool)

(assert (=> d!80357 m!503623))

(declare-fun m!503625 () Bool)

(assert (=> d!80357 m!503625))

(assert (=> d!80357 m!503621))

(declare-fun m!503627 () Bool)

(assert (=> d!80357 m!503627))

(declare-fun m!503629 () Bool)

(assert (=> d!80357 m!503629))

(declare-fun m!503631 () Bool)

(assert (=> b!522747 m!503631))

(declare-fun m!503633 () Bool)

(assert (=> b!522749 m!503633))

(assert (=> b!522485 d!80357))

(check-sat (not b!522712) (not b!522596) (not b!522680) (not b!522597) (not d!80343) (not d!80309) (not b!522555) (not b!522533) (not b!522699) (not bm!31805) (not bm!31812) (not d!80349) (not b!522705) (not b!522749) (not d!80357) (not d!80293) (not b!522595) (not b!522706) (not d!80291) (not bm!31810) (not b!522572) (not d!80351) (not b!522571) (not b!522664))
(check-sat)
