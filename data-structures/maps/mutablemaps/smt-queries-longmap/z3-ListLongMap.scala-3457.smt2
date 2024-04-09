; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48024 () Bool)

(assert start!48024)

(declare-fun b!528526 () Bool)

(declare-fun res!324635 () Bool)

(declare-fun e!308012 () Bool)

(assert (=> b!528526 (=> (not res!324635) (not e!308012))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33477 0))(
  ( (array!33478 (arr!16084 (Array (_ BitVec 32) (_ BitVec 64))) (size!16448 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33477)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!528526 (= res!324635 (and (= (size!16448 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16448 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16448 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528527 () Bool)

(declare-fun res!324639 () Bool)

(assert (=> b!528527 (=> (not res!324639) (not e!308012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528527 (= res!324639 (validKeyInArray!0 (select (arr!16084 a!3235) j!176)))))

(declare-fun b!528528 () Bool)

(declare-fun e!308011 () Bool)

(declare-fun e!308014 () Bool)

(assert (=> b!528528 (= e!308011 (not e!308014))))

(declare-fun res!324627 () Bool)

(assert (=> b!528528 (=> res!324627 e!308014)))

(declare-datatypes ((SeekEntryResult!4558 0))(
  ( (MissingZero!4558 (index!20456 (_ BitVec 32))) (Found!4558 (index!20457 (_ BitVec 32))) (Intermediate!4558 (undefined!5370 Bool) (index!20458 (_ BitVec 32)) (x!49457 (_ BitVec 32))) (Undefined!4558) (MissingVacant!4558 (index!20459 (_ BitVec 32))) )
))
(declare-fun lt!243523 () SeekEntryResult!4558)

(declare-fun lt!243528 () SeekEntryResult!4558)

(get-info :version)

(assert (=> b!528528 (= res!324627 (or (= lt!243523 lt!243528) (undefined!5370 lt!243523) (not ((_ is Intermediate!4558) lt!243523))))))

(declare-fun lt!243533 () (_ BitVec 32))

(declare-fun lt!243525 () array!33477)

(declare-fun lt!243524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33477 (_ BitVec 32)) SeekEntryResult!4558)

(assert (=> b!528528 (= lt!243528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243533 lt!243524 lt!243525 mask!3524))))

(declare-fun lt!243527 () (_ BitVec 32))

(assert (=> b!528528 (= lt!243523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243527 (select (arr!16084 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528528 (= lt!243533 (toIndex!0 lt!243524 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!528528 (= lt!243524 (select (store (arr!16084 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!528528 (= lt!243527 (toIndex!0 (select (arr!16084 a!3235) j!176) mask!3524))))

(assert (=> b!528528 (= lt!243525 (array!33478 (store (arr!16084 a!3235) i!1204 k0!2280) (size!16448 a!3235)))))

(declare-fun lt!243522 () SeekEntryResult!4558)

(assert (=> b!528528 (= lt!243522 (Found!4558 j!176))))

(declare-fun e!308009 () Bool)

(assert (=> b!528528 e!308009))

(declare-fun res!324636 () Bool)

(assert (=> b!528528 (=> (not res!324636) (not e!308009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33477 (_ BitVec 32)) Bool)

(assert (=> b!528528 (= res!324636 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16698 0))(
  ( (Unit!16699) )
))
(declare-fun lt!243532 () Unit!16698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33477 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16698)

(assert (=> b!528528 (= lt!243532 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528529 () Bool)

(declare-fun e!308008 () Unit!16698)

(declare-fun Unit!16700 () Unit!16698)

(assert (=> b!528529 (= e!308008 Unit!16700)))

(declare-fun b!528530 () Bool)

(declare-fun res!324628 () Bool)

(assert (=> b!528530 (=> (not res!324628) (not e!308012))))

(assert (=> b!528530 (= res!324628 (validKeyInArray!0 k0!2280))))

(declare-fun b!528531 () Bool)

(declare-fun Unit!16701 () Unit!16698)

(assert (=> b!528531 (= e!308008 Unit!16701)))

(declare-fun lt!243530 () Unit!16698)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16698)

(assert (=> b!528531 (= lt!243530 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243527 #b00000000000000000000000000000000 (index!20458 lt!243523) (x!49457 lt!243523) mask!3524))))

(declare-fun res!324641 () Bool)

(assert (=> b!528531 (= res!324641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243527 lt!243524 lt!243525 mask!3524) (Intermediate!4558 false (index!20458 lt!243523) (x!49457 lt!243523))))))

(declare-fun e!308010 () Bool)

(assert (=> b!528531 (=> (not res!324641) (not e!308010))))

(assert (=> b!528531 e!308010))

(declare-fun b!528532 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33477 (_ BitVec 32)) SeekEntryResult!4558)

(assert (=> b!528532 (= e!308009 (= (seekEntryOrOpen!0 (select (arr!16084 a!3235) j!176) a!3235 mask!3524) (Found!4558 j!176)))))

(declare-fun b!528533 () Bool)

(declare-fun e!308007 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33477 (_ BitVec 32)) SeekEntryResult!4558)

(assert (=> b!528533 (= e!308007 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243527 (index!20458 lt!243523) (select (arr!16084 a!3235) j!176) a!3235 mask!3524) lt!243522)))))

(declare-fun b!528534 () Bool)

(declare-fun res!324633 () Bool)

(assert (=> b!528534 (=> (not res!324633) (not e!308011))))

(assert (=> b!528534 (= res!324633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!324631 () Bool)

(assert (=> start!48024 (=> (not res!324631) (not e!308012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48024 (= res!324631 (validMask!0 mask!3524))))

(assert (=> start!48024 e!308012))

(assert (=> start!48024 true))

(declare-fun array_inv!11858 (array!33477) Bool)

(assert (=> start!48024 (array_inv!11858 a!3235)))

(declare-fun b!528535 () Bool)

(declare-fun e!308006 () Bool)

(assert (=> b!528535 (= e!308006 true)))

(assert (=> b!528535 (= (seekEntryOrOpen!0 lt!243524 lt!243525 mask!3524) lt!243522)))

(declare-fun lt!243521 () Unit!16698)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16698)

(assert (=> b!528535 (= lt!243521 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!243527 #b00000000000000000000000000000000 (index!20458 lt!243523) (x!49457 lt!243523) mask!3524))))

(declare-fun b!528536 () Bool)

(assert (=> b!528536 (= e!308014 e!308006)))

(declare-fun res!324629 () Bool)

(assert (=> b!528536 (=> res!324629 e!308006)))

(assert (=> b!528536 (= res!324629 (or (bvsgt (x!49457 lt!243523) #b01111111111111111111111111111110) (bvslt lt!243527 #b00000000000000000000000000000000) (bvsge lt!243527 (size!16448 a!3235)) (bvslt (index!20458 lt!243523) #b00000000000000000000000000000000) (bvsge (index!20458 lt!243523) (size!16448 a!3235)) (not (= lt!243523 (Intermediate!4558 false (index!20458 lt!243523) (x!49457 lt!243523))))))))

(assert (=> b!528536 (= (index!20458 lt!243523) i!1204)))

(declare-fun lt!243531 () Unit!16698)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16698)

(assert (=> b!528536 (= lt!243531 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243527 #b00000000000000000000000000000000 (index!20458 lt!243523) (x!49457 lt!243523) mask!3524))))

(assert (=> b!528536 (and (or (= (select (arr!16084 a!3235) (index!20458 lt!243523)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16084 a!3235) (index!20458 lt!243523)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16084 a!3235) (index!20458 lt!243523)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16084 a!3235) (index!20458 lt!243523)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243526 () Unit!16698)

(assert (=> b!528536 (= lt!243526 e!308008)))

(declare-fun c!62258 () Bool)

(assert (=> b!528536 (= c!62258 (= (select (arr!16084 a!3235) (index!20458 lt!243523)) (select (arr!16084 a!3235) j!176)))))

(assert (=> b!528536 (and (bvslt (x!49457 lt!243523) #b01111111111111111111111111111110) (or (= (select (arr!16084 a!3235) (index!20458 lt!243523)) (select (arr!16084 a!3235) j!176)) (= (select (arr!16084 a!3235) (index!20458 lt!243523)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16084 a!3235) (index!20458 lt!243523)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528537 () Bool)

(declare-fun res!324630 () Bool)

(assert (=> b!528537 (=> res!324630 e!308006)))

(assert (=> b!528537 (= res!324630 e!308007)))

(declare-fun res!324640 () Bool)

(assert (=> b!528537 (=> (not res!324640) (not e!308007))))

(assert (=> b!528537 (= res!324640 (bvsgt #b00000000000000000000000000000000 (x!49457 lt!243523)))))

(declare-fun b!528538 () Bool)

(declare-fun res!324637 () Bool)

(assert (=> b!528538 (=> (not res!324637) (not e!308012))))

(declare-fun arrayContainsKey!0 (array!33477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528538 (= res!324637 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528539 () Bool)

(assert (=> b!528539 (= e!308010 false)))

(declare-fun b!528540 () Bool)

(declare-fun res!324634 () Bool)

(assert (=> b!528540 (=> res!324634 e!308006)))

(assert (=> b!528540 (= res!324634 (not (= lt!243528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243527 lt!243524 lt!243525 mask!3524))))))

(declare-fun b!528541 () Bool)

(assert (=> b!528541 (= e!308012 e!308011)))

(declare-fun res!324632 () Bool)

(assert (=> b!528541 (=> (not res!324632) (not e!308011))))

(declare-fun lt!243529 () SeekEntryResult!4558)

(assert (=> b!528541 (= res!324632 (or (= lt!243529 (MissingZero!4558 i!1204)) (= lt!243529 (MissingVacant!4558 i!1204))))))

(assert (=> b!528541 (= lt!243529 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!528542 () Bool)

(declare-fun res!324638 () Bool)

(assert (=> b!528542 (=> (not res!324638) (not e!308011))))

(declare-datatypes ((List!10295 0))(
  ( (Nil!10292) (Cons!10291 (h!11228 (_ BitVec 64)) (t!16531 List!10295)) )
))
(declare-fun arrayNoDuplicates!0 (array!33477 (_ BitVec 32) List!10295) Bool)

(assert (=> b!528542 (= res!324638 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10292))))

(assert (= (and start!48024 res!324631) b!528526))

(assert (= (and b!528526 res!324635) b!528527))

(assert (= (and b!528527 res!324639) b!528530))

(assert (= (and b!528530 res!324628) b!528538))

(assert (= (and b!528538 res!324637) b!528541))

(assert (= (and b!528541 res!324632) b!528534))

(assert (= (and b!528534 res!324633) b!528542))

(assert (= (and b!528542 res!324638) b!528528))

(assert (= (and b!528528 res!324636) b!528532))

(assert (= (and b!528528 (not res!324627)) b!528536))

(assert (= (and b!528536 c!62258) b!528531))

(assert (= (and b!528536 (not c!62258)) b!528529))

(assert (= (and b!528531 res!324641) b!528539))

(assert (= (and b!528536 (not res!324629)) b!528537))

(assert (= (and b!528537 res!324640) b!528533))

(assert (= (and b!528537 (not res!324630)) b!528540))

(assert (= (and b!528540 (not res!324634)) b!528535))

(declare-fun m!509097 () Bool)

(assert (=> b!528530 m!509097))

(declare-fun m!509099 () Bool)

(assert (=> b!528527 m!509099))

(assert (=> b!528527 m!509099))

(declare-fun m!509101 () Bool)

(assert (=> b!528527 m!509101))

(declare-fun m!509103 () Bool)

(assert (=> b!528540 m!509103))

(declare-fun m!509105 () Bool)

(assert (=> b!528536 m!509105))

(declare-fun m!509107 () Bool)

(assert (=> b!528536 m!509107))

(assert (=> b!528536 m!509099))

(declare-fun m!509109 () Bool)

(assert (=> b!528534 m!509109))

(assert (=> b!528533 m!509099))

(assert (=> b!528533 m!509099))

(declare-fun m!509111 () Bool)

(assert (=> b!528533 m!509111))

(declare-fun m!509113 () Bool)

(assert (=> b!528541 m!509113))

(assert (=> b!528532 m!509099))

(assert (=> b!528532 m!509099))

(declare-fun m!509115 () Bool)

(assert (=> b!528532 m!509115))

(declare-fun m!509117 () Bool)

(assert (=> start!48024 m!509117))

(declare-fun m!509119 () Bool)

(assert (=> start!48024 m!509119))

(declare-fun m!509121 () Bool)

(assert (=> b!528531 m!509121))

(assert (=> b!528531 m!509103))

(assert (=> b!528528 m!509099))

(declare-fun m!509123 () Bool)

(assert (=> b!528528 m!509123))

(declare-fun m!509125 () Bool)

(assert (=> b!528528 m!509125))

(declare-fun m!509127 () Bool)

(assert (=> b!528528 m!509127))

(declare-fun m!509129 () Bool)

(assert (=> b!528528 m!509129))

(assert (=> b!528528 m!509099))

(declare-fun m!509131 () Bool)

(assert (=> b!528528 m!509131))

(assert (=> b!528528 m!509099))

(declare-fun m!509133 () Bool)

(assert (=> b!528528 m!509133))

(declare-fun m!509135 () Bool)

(assert (=> b!528528 m!509135))

(declare-fun m!509137 () Bool)

(assert (=> b!528528 m!509137))

(declare-fun m!509139 () Bool)

(assert (=> b!528542 m!509139))

(declare-fun m!509141 () Bool)

(assert (=> b!528538 m!509141))

(declare-fun m!509143 () Bool)

(assert (=> b!528535 m!509143))

(declare-fun m!509145 () Bool)

(assert (=> b!528535 m!509145))

(check-sat (not b!528527) (not b!528531) (not start!48024) (not b!528542) (not b!528534) (not b!528541) (not b!528533) (not b!528532) (not b!528528) (not b!528530) (not b!528535) (not b!528538) (not b!528536) (not b!528540))
(check-sat)
