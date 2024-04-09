; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47828 () Bool)

(assert start!47828)

(declare-fun b!526783 () Bool)

(declare-datatypes ((Unit!16606 0))(
  ( (Unit!16607) )
))
(declare-fun e!307026 () Unit!16606)

(declare-fun Unit!16608 () Unit!16606)

(assert (=> b!526783 (= e!307026 Unit!16608)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!526784 () Bool)

(declare-datatypes ((array!33425 0))(
  ( (array!33426 (arr!16061 (Array (_ BitVec 32) (_ BitVec 64))) (size!16425 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33425)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!307022 () Bool)

(declare-datatypes ((SeekEntryResult!4535 0))(
  ( (MissingZero!4535 (index!20352 (_ BitVec 32))) (Found!4535 (index!20353 (_ BitVec 32))) (Intermediate!4535 (undefined!5347 Bool) (index!20354 (_ BitVec 32)) (x!49343 (_ BitVec 32))) (Undefined!4535) (MissingVacant!4535 (index!20355 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33425 (_ BitVec 32)) SeekEntryResult!4535)

(assert (=> b!526784 (= e!307022 (= (seekEntryOrOpen!0 (select (arr!16061 a!3235) j!176) a!3235 mask!3524) (Found!4535 j!176)))))

(declare-fun b!526785 () Bool)

(declare-fun res!323489 () Bool)

(declare-fun e!307023 () Bool)

(assert (=> b!526785 (=> (not res!323489) (not e!307023))))

(declare-datatypes ((List!10272 0))(
  ( (Nil!10269) (Cons!10268 (h!11199 (_ BitVec 64)) (t!16508 List!10272)) )
))
(declare-fun arrayNoDuplicates!0 (array!33425 (_ BitVec 32) List!10272) Bool)

(assert (=> b!526785 (= res!323489 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10269))))

(declare-fun b!526786 () Bool)

(declare-fun e!307025 () Bool)

(assert (=> b!526786 (= e!307025 false)))

(declare-fun lt!242462 () SeekEntryResult!4535)

(declare-fun lt!242458 () (_ BitVec 32))

(declare-fun b!526787 () Bool)

(declare-fun e!307021 () Bool)

(assert (=> b!526787 (= e!307021 (or (bvsgt (x!49343 lt!242462) #b01111111111111111111111111111110) (and (bvsge lt!242458 #b00000000000000000000000000000000) (bvslt lt!242458 (size!16425 a!3235)))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526787 (= (index!20354 lt!242462) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!242464 () Unit!16606)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33425 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16606)

(assert (=> b!526787 (= lt!242464 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242458 #b00000000000000000000000000000000 (index!20354 lt!242462) (x!49343 lt!242462) mask!3524))))

(assert (=> b!526787 (and (or (= (select (arr!16061 a!3235) (index!20354 lt!242462)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16061 a!3235) (index!20354 lt!242462)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16061 a!3235) (index!20354 lt!242462)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16061 a!3235) (index!20354 lt!242462)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242457 () Unit!16606)

(assert (=> b!526787 (= lt!242457 e!307026)))

(declare-fun c!61958 () Bool)

(assert (=> b!526787 (= c!61958 (= (select (arr!16061 a!3235) (index!20354 lt!242462)) (select (arr!16061 a!3235) j!176)))))

(assert (=> b!526787 (and (bvslt (x!49343 lt!242462) #b01111111111111111111111111111110) (or (= (select (arr!16061 a!3235) (index!20354 lt!242462)) (select (arr!16061 a!3235) j!176)) (= (select (arr!16061 a!3235) (index!20354 lt!242462)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16061 a!3235) (index!20354 lt!242462)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526788 () Bool)

(declare-fun e!307027 () Bool)

(assert (=> b!526788 (= e!307027 e!307023)))

(declare-fun res!323488 () Bool)

(assert (=> b!526788 (=> (not res!323488) (not e!307023))))

(declare-fun lt!242463 () SeekEntryResult!4535)

(assert (=> b!526788 (= res!323488 (or (= lt!242463 (MissingZero!4535 i!1204)) (= lt!242463 (MissingVacant!4535 i!1204))))))

(assert (=> b!526788 (= lt!242463 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526789 () Bool)

(declare-fun res!323479 () Bool)

(assert (=> b!526789 (=> (not res!323479) (not e!307027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526789 (= res!323479 (validKeyInArray!0 (select (arr!16061 a!3235) j!176)))))

(declare-fun b!526790 () Bool)

(declare-fun res!323481 () Bool)

(assert (=> b!526790 (=> (not res!323481) (not e!307027))))

(assert (=> b!526790 (= res!323481 (validKeyInArray!0 k!2280))))

(declare-fun b!526792 () Bool)

(declare-fun Unit!16609 () Unit!16606)

(assert (=> b!526792 (= e!307026 Unit!16609)))

(declare-fun lt!242465 () Unit!16606)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33425 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16606)

(assert (=> b!526792 (= lt!242465 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242458 #b00000000000000000000000000000000 (index!20354 lt!242462) (x!49343 lt!242462) mask!3524))))

(declare-fun res!323478 () Bool)

(declare-fun lt!242461 () array!33425)

(declare-fun lt!242459 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33425 (_ BitVec 32)) SeekEntryResult!4535)

(assert (=> b!526792 (= res!323478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242458 lt!242459 lt!242461 mask!3524) (Intermediate!4535 false (index!20354 lt!242462) (x!49343 lt!242462))))))

(assert (=> b!526792 (=> (not res!323478) (not e!307025))))

(assert (=> b!526792 e!307025))

(declare-fun b!526793 () Bool)

(declare-fun res!323486 () Bool)

(assert (=> b!526793 (=> (not res!323486) (not e!307023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33425 (_ BitVec 32)) Bool)

(assert (=> b!526793 (= res!323486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526794 () Bool)

(declare-fun res!323480 () Bool)

(assert (=> b!526794 (=> (not res!323480) (not e!307027))))

(declare-fun arrayContainsKey!0 (array!33425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526794 (= res!323480 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526795 () Bool)

(declare-fun res!323484 () Bool)

(assert (=> b!526795 (=> (not res!323484) (not e!307027))))

(assert (=> b!526795 (= res!323484 (and (= (size!16425 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16425 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16425 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526796 () Bool)

(declare-fun res!323485 () Bool)

(assert (=> b!526796 (=> res!323485 e!307021)))

(assert (=> b!526796 (= res!323485 (or (undefined!5347 lt!242462) (not (is-Intermediate!4535 lt!242462))))))

(declare-fun res!323482 () Bool)

(assert (=> start!47828 (=> (not res!323482) (not e!307027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47828 (= res!323482 (validMask!0 mask!3524))))

(assert (=> start!47828 e!307027))

(assert (=> start!47828 true))

(declare-fun array_inv!11835 (array!33425) Bool)

(assert (=> start!47828 (array_inv!11835 a!3235)))

(declare-fun b!526791 () Bool)

(assert (=> b!526791 (= e!307023 (not e!307021))))

(declare-fun res!323483 () Bool)

(assert (=> b!526791 (=> res!323483 e!307021)))

(declare-fun lt!242456 () (_ BitVec 32))

(assert (=> b!526791 (= res!323483 (= lt!242462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242456 lt!242459 lt!242461 mask!3524)))))

(assert (=> b!526791 (= lt!242462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242458 (select (arr!16061 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526791 (= lt!242456 (toIndex!0 lt!242459 mask!3524))))

(assert (=> b!526791 (= lt!242459 (select (store (arr!16061 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526791 (= lt!242458 (toIndex!0 (select (arr!16061 a!3235) j!176) mask!3524))))

(assert (=> b!526791 (= lt!242461 (array!33426 (store (arr!16061 a!3235) i!1204 k!2280) (size!16425 a!3235)))))

(assert (=> b!526791 e!307022))

(declare-fun res!323487 () Bool)

(assert (=> b!526791 (=> (not res!323487) (not e!307022))))

(assert (=> b!526791 (= res!323487 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242460 () Unit!16606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16606)

(assert (=> b!526791 (= lt!242460 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47828 res!323482) b!526795))

(assert (= (and b!526795 res!323484) b!526789))

(assert (= (and b!526789 res!323479) b!526790))

(assert (= (and b!526790 res!323481) b!526794))

(assert (= (and b!526794 res!323480) b!526788))

(assert (= (and b!526788 res!323488) b!526793))

(assert (= (and b!526793 res!323486) b!526785))

(assert (= (and b!526785 res!323489) b!526791))

(assert (= (and b!526791 res!323487) b!526784))

(assert (= (and b!526791 (not res!323483)) b!526796))

(assert (= (and b!526796 (not res!323485)) b!526787))

(assert (= (and b!526787 c!61958) b!526792))

(assert (= (and b!526787 (not c!61958)) b!526783))

(assert (= (and b!526792 res!323478) b!526786))

(declare-fun m!507551 () Bool)

(assert (=> b!526794 m!507551))

(declare-fun m!507553 () Bool)

(assert (=> b!526793 m!507553))

(declare-fun m!507555 () Bool)

(assert (=> b!526785 m!507555))

(declare-fun m!507557 () Bool)

(assert (=> b!526792 m!507557))

(declare-fun m!507559 () Bool)

(assert (=> b!526792 m!507559))

(declare-fun m!507561 () Bool)

(assert (=> start!47828 m!507561))

(declare-fun m!507563 () Bool)

(assert (=> start!47828 m!507563))

(declare-fun m!507565 () Bool)

(assert (=> b!526790 m!507565))

(declare-fun m!507567 () Bool)

(assert (=> b!526791 m!507567))

(declare-fun m!507569 () Bool)

(assert (=> b!526791 m!507569))

(declare-fun m!507571 () Bool)

(assert (=> b!526791 m!507571))

(declare-fun m!507573 () Bool)

(assert (=> b!526791 m!507573))

(assert (=> b!526791 m!507571))

(declare-fun m!507575 () Bool)

(assert (=> b!526791 m!507575))

(declare-fun m!507577 () Bool)

(assert (=> b!526791 m!507577))

(declare-fun m!507579 () Bool)

(assert (=> b!526791 m!507579))

(declare-fun m!507581 () Bool)

(assert (=> b!526791 m!507581))

(declare-fun m!507583 () Bool)

(assert (=> b!526791 m!507583))

(assert (=> b!526791 m!507571))

(assert (=> b!526784 m!507571))

(assert (=> b!526784 m!507571))

(declare-fun m!507585 () Bool)

(assert (=> b!526784 m!507585))

(assert (=> b!526789 m!507571))

(assert (=> b!526789 m!507571))

(declare-fun m!507587 () Bool)

(assert (=> b!526789 m!507587))

(declare-fun m!507589 () Bool)

(assert (=> b!526788 m!507589))

(declare-fun m!507591 () Bool)

(assert (=> b!526787 m!507591))

(declare-fun m!507593 () Bool)

(assert (=> b!526787 m!507593))

(assert (=> b!526787 m!507571))

(push 1)

(assert (not b!526789))

(assert (not b!526793))

(assert (not b!526791))

(assert (not b!526784))

(assert (not b!526790))

(assert (not start!47828))

(assert (not b!526788))

(assert (not b!526792))

(assert (not b!526794))

(assert (not b!526787))

(assert (not b!526785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80659 () Bool)

(declare-fun e!307060 () Bool)

(assert (=> d!80659 e!307060))

(declare-fun res!323514 () Bool)

(assert (=> d!80659 (=> (not res!323514) (not e!307060))))

(assert (=> d!80659 (= res!323514 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16425 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16425 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16425 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16425 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16425 a!3235))))))

(declare-fun lt!242486 () Unit!16606)

(declare-fun choose!47 (array!33425 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16606)

(assert (=> d!80659 (= lt!242486 (choose!47 a!3235 i!1204 k!2280 j!176 lt!242458 #b00000000000000000000000000000000 (index!20354 lt!242462) (x!49343 lt!242462) mask!3524))))

(assert (=> d!80659 (validMask!0 mask!3524)))

(assert (=> d!80659 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242458 #b00000000000000000000000000000000 (index!20354 lt!242462) (x!49343 lt!242462) mask!3524) lt!242486)))

(declare-fun b!526844 () Bool)

(assert (=> b!526844 (= e!307060 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242458 (select (store (arr!16061 a!3235) i!1204 k!2280) j!176) (array!33426 (store (arr!16061 a!3235) i!1204 k!2280) (size!16425 a!3235)) mask!3524) (Intermediate!4535 false (index!20354 lt!242462) (x!49343 lt!242462))))))

(assert (= (and d!80659 res!323514) b!526844))

(declare-fun m!507617 () Bool)

(assert (=> d!80659 m!507617))

(assert (=> d!80659 m!507561))

(assert (=> b!526844 m!507579))

(assert (=> b!526844 m!507569))

(assert (=> b!526844 m!507569))

(declare-fun m!507619 () Bool)

(assert (=> b!526844 m!507619))

(assert (=> b!526792 d!80659))

(declare-fun b!526893 () Bool)

(declare-fun e!307091 () Bool)

(declare-fun e!307089 () Bool)

(assert (=> b!526893 (= e!307091 e!307089)))

(declare-fun res!323529 () Bool)

(declare-fun lt!242515 () SeekEntryResult!4535)

(assert (=> b!526893 (= res!323529 (and (is-Intermediate!4535 lt!242515) (not (undefined!5347 lt!242515)) (bvslt (x!49343 lt!242515) #b01111111111111111111111111111110) (bvsge (x!49343 lt!242515) #b00000000000000000000000000000000) (bvsge (x!49343 lt!242515) #b00000000000000000000000000000000)))))

(assert (=> b!526893 (=> (not res!323529) (not e!307089))))

(declare-fun e!307090 () SeekEntryResult!4535)

(declare-fun b!526894 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526894 (= e!307090 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242458 #b00000000000000000000000000000000 mask!3524) lt!242459 lt!242461 mask!3524))))

(declare-fun b!526895 () Bool)

(assert (=> b!526895 (and (bvsge (index!20354 lt!242515) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242515) (size!16425 lt!242461)))))

(declare-fun res!323527 () Bool)

(assert (=> b!526895 (= res!323527 (= (select (arr!16061 lt!242461) (index!20354 lt!242515)) lt!242459))))

(declare-fun e!307093 () Bool)

(assert (=> b!526895 (=> res!323527 e!307093)))

(assert (=> b!526895 (= e!307089 e!307093)))

(declare-fun b!526896 () Bool)

(assert (=> b!526896 (and (bvsge (index!20354 lt!242515) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242515) (size!16425 lt!242461)))))

(declare-fun res!323528 () Bool)

(assert (=> b!526896 (= res!323528 (= (select (arr!16061 lt!242461) (index!20354 lt!242515)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!526896 (=> res!323528 e!307093)))

(declare-fun b!526897 () Bool)

(declare-fun e!307092 () SeekEntryResult!4535)

(assert (=> b!526897 (= e!307092 e!307090)))

(declare-fun c!61991 () Bool)

(declare-fun lt!242514 () (_ BitVec 64))

(assert (=> b!526897 (= c!61991 (or (= lt!242514 lt!242459) (= (bvadd lt!242514 lt!242514) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526898 () Bool)

(assert (=> b!526898 (and (bvsge (index!20354 lt!242515) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242515) (size!16425 lt!242461)))))

(assert (=> b!526898 (= e!307093 (= (select (arr!16061 lt!242461) (index!20354 lt!242515)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!526899 () Bool)

(assert (=> b!526899 (= e!307090 (Intermediate!4535 false lt!242458 #b00000000000000000000000000000000))))

(declare-fun b!526900 () Bool)

(assert (=> b!526900 (= e!307092 (Intermediate!4535 true lt!242458 #b00000000000000000000000000000000))))

(declare-fun b!526901 () Bool)

(assert (=> b!526901 (= e!307091 (bvsge (x!49343 lt!242515) #b01111111111111111111111111111110))))

(declare-fun d!80673 () Bool)

(assert (=> d!80673 e!307091))

(declare-fun c!61989 () Bool)

(assert (=> d!80673 (= c!61989 (and (is-Intermediate!4535 lt!242515) (undefined!5347 lt!242515)))))

(assert (=> d!80673 (= lt!242515 e!307092)))

(declare-fun c!61990 () Bool)

(assert (=> d!80673 (= c!61990 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80673 (= lt!242514 (select (arr!16061 lt!242461) lt!242458))))

(assert (=> d!80673 (validMask!0 mask!3524)))

(assert (=> d!80673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242458 lt!242459 lt!242461 mask!3524) lt!242515)))

(assert (= (and d!80673 c!61990) b!526900))

(assert (= (and d!80673 (not c!61990)) b!526897))

(assert (= (and b!526897 c!61991) b!526899))

(assert (= (and b!526897 (not c!61991)) b!526894))

(assert (= (and d!80673 c!61989) b!526901))

(assert (= (and d!80673 (not c!61989)) b!526893))

(assert (= (and b!526893 res!323529) b!526895))

(assert (= (and b!526895 (not res!323527)) b!526896))

(assert (= (and b!526896 (not res!323528)) b!526898))

(declare-fun m!507641 () Bool)

(assert (=> d!80673 m!507641))

(assert (=> d!80673 m!507561))

(declare-fun m!507643 () Bool)

(assert (=> b!526896 m!507643))

(assert (=> b!526895 m!507643))

(assert (=> b!526898 m!507643))

(declare-fun m!507645 () Bool)

(assert (=> b!526894 m!507645))

(assert (=> b!526894 m!507645))

(declare-fun m!507647 () Bool)

(assert (=> b!526894 m!507647))

(assert (=> b!526792 d!80673))

(declare-fun d!80683 () Bool)

(assert (=> d!80683 (= (index!20354 lt!242462) i!1204)))

(declare-fun lt!242518 () Unit!16606)

(declare-fun choose!104 (array!33425 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16606)

(assert (=> d!80683 (= lt!242518 (choose!104 a!3235 i!1204 k!2280 j!176 lt!242458 #b00000000000000000000000000000000 (index!20354 lt!242462) (x!49343 lt!242462) mask!3524))))

(assert (=> d!80683 (validMask!0 mask!3524)))

(assert (=> d!80683 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242458 #b00000000000000000000000000000000 (index!20354 lt!242462) (x!49343 lt!242462) mask!3524) lt!242518)))

(declare-fun bs!16523 () Bool)

(assert (= bs!16523 d!80683))

(declare-fun m!507651 () Bool)

(assert (=> bs!16523 m!507651))

(assert (=> bs!16523 m!507561))

(assert (=> b!526787 d!80683))

(declare-fun bm!31874 () Bool)

(declare-fun call!31877 () Bool)

(assert (=> bm!31874 (= call!31877 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!526952 () Bool)

(declare-fun e!307126 () Bool)

(declare-fun e!307128 () Bool)

(assert (=> b!526952 (= e!307126 e!307128)))

(declare-fun lt!242539 () (_ BitVec 64))

(assert (=> b!526952 (= lt!242539 (select (arr!16061 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!242541 () Unit!16606)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33425 (_ BitVec 64) (_ BitVec 32)) Unit!16606)

(assert (=> b!526952 (= lt!242541 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!242539 #b00000000000000000000000000000000))))

(assert (=> b!526952 (arrayContainsKey!0 a!3235 lt!242539 #b00000000000000000000000000000000)))

(declare-fun lt!242540 () Unit!16606)

(assert (=> b!526952 (= lt!242540 lt!242541)))

(declare-fun res!323554 () Bool)

(assert (=> b!526952 (= res!323554 (= (seekEntryOrOpen!0 (select (arr!16061 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4535 #b00000000000000000000000000000000)))))

(assert (=> b!526952 (=> (not res!323554) (not e!307128))))

(declare-fun b!526953 () Bool)

(assert (=> b!526953 (= e!307126 call!31877)))

(declare-fun b!526954 () Bool)

(assert (=> b!526954 (= e!307128 call!31877)))

(declare-fun d!80687 () Bool)

(declare-fun res!323553 () Bool)

(declare-fun e!307127 () Bool)

(assert (=> d!80687 (=> res!323553 e!307127)))

(assert (=> d!80687 (= res!323553 (bvsge #b00000000000000000000000000000000 (size!16425 a!3235)))))

(assert (=> d!80687 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!307127)))

(declare-fun b!526955 () Bool)

(assert (=> b!526955 (= e!307127 e!307126)))

(declare-fun c!62006 () Bool)

(assert (=> b!526955 (= c!62006 (validKeyInArray!0 (select (arr!16061 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80687 (not res!323553)) b!526955))

(assert (= (and b!526955 c!62006) b!526952))

(assert (= (and b!526955 (not c!62006)) b!526953))

(assert (= (and b!526952 res!323554) b!526954))

(assert (= (or b!526954 b!526953) bm!31874))

(declare-fun m!507663 () Bool)

(assert (=> bm!31874 m!507663))

(declare-fun m!507665 () Bool)

(assert (=> b!526952 m!507665))

(declare-fun m!507669 () Bool)

(assert (=> b!526952 m!507669))

(declare-fun m!507671 () Bool)

(assert (=> b!526952 m!507671))

(assert (=> b!526952 m!507665))

(declare-fun m!507675 () Bool)

(assert (=> b!526952 m!507675))

(assert (=> b!526955 m!507665))

(assert (=> b!526955 m!507665))

(declare-fun m!507679 () Bool)

(assert (=> b!526955 m!507679))

(assert (=> b!526793 d!80687))

(declare-fun lt!242583 () SeekEntryResult!4535)

(declare-fun b!527030 () Bool)

(declare-fun e!307179 () SeekEntryResult!4535)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33425 (_ BitVec 32)) SeekEntryResult!4535)

(assert (=> b!527030 (= e!307179 (seekKeyOrZeroReturnVacant!0 (x!49343 lt!242583) (index!20354 lt!242583) (index!20354 lt!242583) k!2280 a!3235 mask!3524))))

(declare-fun b!527031 () Bool)

(assert (=> b!527031 (= e!307179 (MissingZero!4535 (index!20354 lt!242583)))))

(declare-fun d!80695 () Bool)

(declare-fun lt!242584 () SeekEntryResult!4535)

(assert (=> d!80695 (and (or (is-Undefined!4535 lt!242584) (not (is-Found!4535 lt!242584)) (and (bvsge (index!20353 lt!242584) #b00000000000000000000000000000000) (bvslt (index!20353 lt!242584) (size!16425 a!3235)))) (or (is-Undefined!4535 lt!242584) (is-Found!4535 lt!242584) (not (is-MissingZero!4535 lt!242584)) (and (bvsge (index!20352 lt!242584) #b00000000000000000000000000000000) (bvslt (index!20352 lt!242584) (size!16425 a!3235)))) (or (is-Undefined!4535 lt!242584) (is-Found!4535 lt!242584) (is-MissingZero!4535 lt!242584) (not (is-MissingVacant!4535 lt!242584)) (and (bvsge (index!20355 lt!242584) #b00000000000000000000000000000000) (bvslt (index!20355 lt!242584) (size!16425 a!3235)))) (or (is-Undefined!4535 lt!242584) (ite (is-Found!4535 lt!242584) (= (select (arr!16061 a!3235) (index!20353 lt!242584)) k!2280) (ite (is-MissingZero!4535 lt!242584) (= (select (arr!16061 a!3235) (index!20352 lt!242584)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4535 lt!242584) (= (select (arr!16061 a!3235) (index!20355 lt!242584)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307177 () SeekEntryResult!4535)

(assert (=> d!80695 (= lt!242584 e!307177)))

(declare-fun c!62031 () Bool)

(assert (=> d!80695 (= c!62031 (and (is-Intermediate!4535 lt!242583) (undefined!5347 lt!242583)))))

(assert (=> d!80695 (= lt!242583 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80695 (validMask!0 mask!3524)))

(assert (=> d!80695 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!242584)))

(declare-fun b!527032 () Bool)

(declare-fun c!62032 () Bool)

(declare-fun lt!242585 () (_ BitVec 64))

(assert (=> b!527032 (= c!62032 (= lt!242585 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307178 () SeekEntryResult!4535)

(assert (=> b!527032 (= e!307178 e!307179)))

(declare-fun b!527033 () Bool)

(assert (=> b!527033 (= e!307177 Undefined!4535)))

(declare-fun b!527034 () Bool)

(assert (=> b!527034 (= e!307177 e!307178)))

(assert (=> b!527034 (= lt!242585 (select (arr!16061 a!3235) (index!20354 lt!242583)))))

(declare-fun c!62030 () Bool)

(assert (=> b!527034 (= c!62030 (= lt!242585 k!2280))))

(declare-fun b!527035 () Bool)

(assert (=> b!527035 (= e!307178 (Found!4535 (index!20354 lt!242583)))))

(assert (= (and d!80695 c!62031) b!527033))

(assert (= (and d!80695 (not c!62031)) b!527034))

(assert (= (and b!527034 c!62030) b!527035))

(assert (= (and b!527034 (not c!62030)) b!527032))

(assert (= (and b!527032 c!62032) b!527031))

(assert (= (and b!527032 (not c!62032)) b!527030))

(declare-fun m!507751 () Bool)

(assert (=> b!527030 m!507751))

(declare-fun m!507753 () Bool)

(assert (=> d!80695 m!507753))

(assert (=> d!80695 m!507753))

(declare-fun m!507755 () Bool)

(assert (=> d!80695 m!507755))

(declare-fun m!507757 () Bool)

(assert (=> d!80695 m!507757))

(declare-fun m!507759 () Bool)

(assert (=> d!80695 m!507759))

(assert (=> d!80695 m!507561))

(declare-fun m!507761 () Bool)

(assert (=> d!80695 m!507761))

(declare-fun m!507763 () Bool)

(assert (=> b!527034 m!507763))

(assert (=> b!526788 d!80695))

(declare-fun d!80723 () Bool)

(declare-fun res!323587 () Bool)

(declare-fun e!307184 () Bool)

(assert (=> d!80723 (=> res!323587 e!307184)))

(assert (=> d!80723 (= res!323587 (= (select (arr!16061 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80723 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!307184)))

(declare-fun b!527040 () Bool)

(declare-fun e!307185 () Bool)

(assert (=> b!527040 (= e!307184 e!307185)))

(declare-fun res!323588 () Bool)

(assert (=> b!527040 (=> (not res!323588) (not e!307185))))

(assert (=> b!527040 (= res!323588 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16425 a!3235)))))

(declare-fun b!527041 () Bool)

(assert (=> b!527041 (= e!307185 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80723 (not res!323587)) b!527040))

(assert (= (and b!527040 res!323588) b!527041))

(assert (=> d!80723 m!507665))

(declare-fun m!507765 () Bool)

(assert (=> b!527041 m!507765))

(assert (=> b!526794 d!80723))

(declare-fun d!80725 () Bool)

(assert (=> d!80725 (= (validKeyInArray!0 (select (arr!16061 a!3235) j!176)) (and (not (= (select (arr!16061 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16061 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!526789 d!80725))

(declare-fun lt!242586 () SeekEntryResult!4535)

(declare-fun b!527042 () Bool)

(declare-fun e!307188 () SeekEntryResult!4535)

(assert (=> b!527042 (= e!307188 (seekKeyOrZeroReturnVacant!0 (x!49343 lt!242586) (index!20354 lt!242586) (index!20354 lt!242586) (select (arr!16061 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!527043 () Bool)

(assert (=> b!527043 (= e!307188 (MissingZero!4535 (index!20354 lt!242586)))))

(declare-fun d!80727 () Bool)

(declare-fun lt!242587 () SeekEntryResult!4535)

(assert (=> d!80727 (and (or (is-Undefined!4535 lt!242587) (not (is-Found!4535 lt!242587)) (and (bvsge (index!20353 lt!242587) #b00000000000000000000000000000000) (bvslt (index!20353 lt!242587) (size!16425 a!3235)))) (or (is-Undefined!4535 lt!242587) (is-Found!4535 lt!242587) (not (is-MissingZero!4535 lt!242587)) (and (bvsge (index!20352 lt!242587) #b00000000000000000000000000000000) (bvslt (index!20352 lt!242587) (size!16425 a!3235)))) (or (is-Undefined!4535 lt!242587) (is-Found!4535 lt!242587) (is-MissingZero!4535 lt!242587) (not (is-MissingVacant!4535 lt!242587)) (and (bvsge (index!20355 lt!242587) #b00000000000000000000000000000000) (bvslt (index!20355 lt!242587) (size!16425 a!3235)))) (or (is-Undefined!4535 lt!242587) (ite (is-Found!4535 lt!242587) (= (select (arr!16061 a!3235) (index!20353 lt!242587)) (select (arr!16061 a!3235) j!176)) (ite (is-MissingZero!4535 lt!242587) (= (select (arr!16061 a!3235) (index!20352 lt!242587)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4535 lt!242587) (= (select (arr!16061 a!3235) (index!20355 lt!242587)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307186 () SeekEntryResult!4535)

(assert (=> d!80727 (= lt!242587 e!307186)))

(declare-fun c!62034 () Bool)

(assert (=> d!80727 (= c!62034 (and (is-Intermediate!4535 lt!242586) (undefined!5347 lt!242586)))))

(assert (=> d!80727 (= lt!242586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16061 a!3235) j!176) mask!3524) (select (arr!16061 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80727 (validMask!0 mask!3524)))

(assert (=> d!80727 (= (seekEntryOrOpen!0 (select (arr!16061 a!3235) j!176) a!3235 mask!3524) lt!242587)))

(declare-fun b!527044 () Bool)

(declare-fun c!62035 () Bool)

(declare-fun lt!242588 () (_ BitVec 64))

(assert (=> b!527044 (= c!62035 (= lt!242588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307187 () SeekEntryResult!4535)

(assert (=> b!527044 (= e!307187 e!307188)))

(declare-fun b!527045 () Bool)

(assert (=> b!527045 (= e!307186 Undefined!4535)))

(declare-fun b!527046 () Bool)

(assert (=> b!527046 (= e!307186 e!307187)))

(assert (=> b!527046 (= lt!242588 (select (arr!16061 a!3235) (index!20354 lt!242586)))))

(declare-fun c!62033 () Bool)

(assert (=> b!527046 (= c!62033 (= lt!242588 (select (arr!16061 a!3235) j!176)))))

(declare-fun b!527047 () Bool)

(assert (=> b!527047 (= e!307187 (Found!4535 (index!20354 lt!242586)))))

(assert (= (and d!80727 c!62034) b!527045))

(assert (= (and d!80727 (not c!62034)) b!527046))

(assert (= (and b!527046 c!62033) b!527047))

(assert (= (and b!527046 (not c!62033)) b!527044))

(assert (= (and b!527044 c!62035) b!527043))

(assert (= (and b!527044 (not c!62035)) b!527042))

(assert (=> b!527042 m!507571))

(declare-fun m!507767 () Bool)

(assert (=> b!527042 m!507767))

(assert (=> d!80727 m!507571))

(assert (=> d!80727 m!507575))

(assert (=> d!80727 m!507575))

(assert (=> d!80727 m!507571))

(declare-fun m!507769 () Bool)

(assert (=> d!80727 m!507769))

(declare-fun m!507771 () Bool)

(assert (=> d!80727 m!507771))

(declare-fun m!507773 () Bool)

(assert (=> d!80727 m!507773))

(assert (=> d!80727 m!507561))

(declare-fun m!507775 () Bool)

(assert (=> d!80727 m!507775))

(declare-fun m!507777 () Bool)

(assert (=> b!527046 m!507777))

(assert (=> b!526784 d!80727))

(declare-fun d!80729 () Bool)

(assert (=> d!80729 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!526790 d!80729))

(declare-fun b!527058 () Bool)

(declare-fun e!307198 () Bool)

(declare-fun e!307200 () Bool)

(assert (=> b!527058 (= e!307198 e!307200)))

(declare-fun res!323595 () Bool)

(assert (=> b!527058 (=> (not res!323595) (not e!307200))))

(declare-fun e!307199 () Bool)

(assert (=> b!527058 (= res!323595 (not e!307199))))

(declare-fun res!323596 () Bool)

(assert (=> b!527058 (=> (not res!323596) (not e!307199))))

(assert (=> b!527058 (= res!323596 (validKeyInArray!0 (select (arr!16061 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!527059 () Bool)

(declare-fun e!307197 () Bool)

(declare-fun call!31885 () Bool)

(assert (=> b!527059 (= e!307197 call!31885)))

(declare-fun b!527060 () Bool)

(assert (=> b!527060 (= e!307197 call!31885)))

(declare-fun b!527061 () Bool)

(declare-fun contains!2779 (List!10272 (_ BitVec 64)) Bool)

(assert (=> b!527061 (= e!307199 (contains!2779 Nil!10269 (select (arr!16061 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80731 () Bool)

(declare-fun res!323597 () Bool)

(assert (=> d!80731 (=> res!323597 e!307198)))

(assert (=> d!80731 (= res!323597 (bvsge #b00000000000000000000000000000000 (size!16425 a!3235)))))

(assert (=> d!80731 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10269) e!307198)))

(declare-fun b!527062 () Bool)

(assert (=> b!527062 (= e!307200 e!307197)))

(declare-fun c!62038 () Bool)

(assert (=> b!527062 (= c!62038 (validKeyInArray!0 (select (arr!16061 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31882 () Bool)

(assert (=> bm!31882 (= call!31885 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62038 (Cons!10268 (select (arr!16061 a!3235) #b00000000000000000000000000000000) Nil!10269) Nil!10269)))))

(assert (= (and d!80731 (not res!323597)) b!527058))

(assert (= (and b!527058 res!323596) b!527061))

(assert (= (and b!527058 res!323595) b!527062))

(assert (= (and b!527062 c!62038) b!527059))

(assert (= (and b!527062 (not c!62038)) b!527060))

(assert (= (or b!527059 b!527060) bm!31882))

(assert (=> b!527058 m!507665))

(assert (=> b!527058 m!507665))

(assert (=> b!527058 m!507679))

(assert (=> b!527061 m!507665))

(assert (=> b!527061 m!507665))

(declare-fun m!507779 () Bool)

(assert (=> b!527061 m!507779))

(assert (=> b!527062 m!507665))

(assert (=> b!527062 m!507665))

(assert (=> b!527062 m!507679))

(assert (=> bm!31882 m!507665))

(declare-fun m!507781 () Bool)

(assert (=> bm!31882 m!507781))

(assert (=> b!526785 d!80731))

(declare-fun d!80733 () Bool)

(declare-fun lt!242600 () (_ BitVec 32))

(declare-fun lt!242599 () (_ BitVec 32))

(assert (=> d!80733 (= lt!242600 (bvmul (bvxor lt!242599 (bvlshr lt!242599 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80733 (= lt!242599 ((_ extract 31 0) (bvand (bvxor (select (arr!16061 a!3235) j!176) (bvlshr (select (arr!16061 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80733 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!323598 (let ((h!11202 ((_ extract 31 0) (bvand (bvxor (select (arr!16061 a!3235) j!176) (bvlshr (select (arr!16061 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49355 (bvmul (bvxor h!11202 (bvlshr h!11202 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49355 (bvlshr x!49355 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!323598 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!323598 #b00000000000000000000000000000000))))))

(assert (=> d!80733 (= (toIndex!0 (select (arr!16061 a!3235) j!176) mask!3524) (bvand (bvxor lt!242600 (bvlshr lt!242600 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!526791 d!80733))

(declare-fun bm!31883 () Bool)

(declare-fun call!31886 () Bool)

(assert (=> bm!31883 (= call!31886 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!527075 () Bool)

(declare-fun e!307207 () Bool)

(declare-fun e!307209 () Bool)

(assert (=> b!527075 (= e!307207 e!307209)))

(declare-fun lt!242601 () (_ BitVec 64))

(assert (=> b!527075 (= lt!242601 (select (arr!16061 a!3235) j!176))))

(declare-fun lt!242603 () Unit!16606)

(assert (=> b!527075 (= lt!242603 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!242601 j!176))))

(assert (=> b!527075 (arrayContainsKey!0 a!3235 lt!242601 #b00000000000000000000000000000000)))

(declare-fun lt!242602 () Unit!16606)

(assert (=> b!527075 (= lt!242602 lt!242603)))

(declare-fun res!323600 () Bool)

(assert (=> b!527075 (= res!323600 (= (seekEntryOrOpen!0 (select (arr!16061 a!3235) j!176) a!3235 mask!3524) (Found!4535 j!176)))))

(assert (=> b!527075 (=> (not res!323600) (not e!307209))))

(declare-fun b!527076 () Bool)

(assert (=> b!527076 (= e!307207 call!31886)))

(declare-fun b!527077 () Bool)

(assert (=> b!527077 (= e!307209 call!31886)))

(declare-fun d!80735 () Bool)

(declare-fun res!323599 () Bool)

(declare-fun e!307208 () Bool)

(assert (=> d!80735 (=> res!323599 e!307208)))

(assert (=> d!80735 (= res!323599 (bvsge j!176 (size!16425 a!3235)))))

(assert (=> d!80735 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!307208)))

(declare-fun b!527078 () Bool)

(assert (=> b!527078 (= e!307208 e!307207)))

(declare-fun c!62045 () Bool)

(assert (=> b!527078 (= c!62045 (validKeyInArray!0 (select (arr!16061 a!3235) j!176)))))

(assert (= (and d!80735 (not res!323599)) b!527078))

(assert (= (and b!527078 c!62045) b!527075))

(assert (= (and b!527078 (not c!62045)) b!527076))

(assert (= (and b!527075 res!323600) b!527077))

(assert (= (or b!527077 b!527076) bm!31883))

(declare-fun m!507783 () Bool)

(assert (=> bm!31883 m!507783))

(assert (=> b!527075 m!507571))

(declare-fun m!507785 () Bool)

(assert (=> b!527075 m!507785))

(declare-fun m!507787 () Bool)

(assert (=> b!527075 m!507787))

(assert (=> b!527075 m!507571))

(assert (=> b!527075 m!507585))

(assert (=> b!527078 m!507571))

(assert (=> b!527078 m!507571))

(assert (=> b!527078 m!507587))

(assert (=> b!526791 d!80735))

(declare-fun b!527079 () Bool)

(declare-fun e!307212 () Bool)

(declare-fun e!307210 () Bool)

(assert (=> b!527079 (= e!307212 e!307210)))

(declare-fun res!323603 () Bool)

(declare-fun lt!242605 () SeekEntryResult!4535)

(assert (=> b!527079 (= res!323603 (and (is-Intermediate!4535 lt!242605) (not (undefined!5347 lt!242605)) (bvslt (x!49343 lt!242605) #b01111111111111111111111111111110) (bvsge (x!49343 lt!242605) #b00000000000000000000000000000000) (bvsge (x!49343 lt!242605) #b00000000000000000000000000000000)))))

(assert (=> b!527079 (=> (not res!323603) (not e!307210))))

(declare-fun e!307211 () SeekEntryResult!4535)

(declare-fun b!527080 () Bool)

(assert (=> b!527080 (= e!307211 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242456 #b00000000000000000000000000000000 mask!3524) lt!242459 lt!242461 mask!3524))))

(declare-fun b!527081 () Bool)

(assert (=> b!527081 (and (bvsge (index!20354 lt!242605) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242605) (size!16425 lt!242461)))))

(declare-fun res!323601 () Bool)

(assert (=> b!527081 (= res!323601 (= (select (arr!16061 lt!242461) (index!20354 lt!242605)) lt!242459))))

(declare-fun e!307214 () Bool)

(assert (=> b!527081 (=> res!323601 e!307214)))

(assert (=> b!527081 (= e!307210 e!307214)))

(declare-fun b!527082 () Bool)

(assert (=> b!527082 (and (bvsge (index!20354 lt!242605) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242605) (size!16425 lt!242461)))))

(declare-fun res!323602 () Bool)

(assert (=> b!527082 (= res!323602 (= (select (arr!16061 lt!242461) (index!20354 lt!242605)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527082 (=> res!323602 e!307214)))

(declare-fun b!527083 () Bool)

(declare-fun e!307213 () SeekEntryResult!4535)

(assert (=> b!527083 (= e!307213 e!307211)))

(declare-fun c!62048 () Bool)

(declare-fun lt!242604 () (_ BitVec 64))

(assert (=> b!527083 (= c!62048 (or (= lt!242604 lt!242459) (= (bvadd lt!242604 lt!242604) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527084 () Bool)

(assert (=> b!527084 (and (bvsge (index!20354 lt!242605) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242605) (size!16425 lt!242461)))))

(assert (=> b!527084 (= e!307214 (= (select (arr!16061 lt!242461) (index!20354 lt!242605)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!527085 () Bool)

(assert (=> b!527085 (= e!307211 (Intermediate!4535 false lt!242456 #b00000000000000000000000000000000))))

(declare-fun b!527086 () Bool)

(assert (=> b!527086 (= e!307213 (Intermediate!4535 true lt!242456 #b00000000000000000000000000000000))))

(declare-fun b!527087 () Bool)

(assert (=> b!527087 (= e!307212 (bvsge (x!49343 lt!242605) #b01111111111111111111111111111110))))

(declare-fun d!80737 () Bool)

(assert (=> d!80737 e!307212))

(declare-fun c!62046 () Bool)

(assert (=> d!80737 (= c!62046 (and (is-Intermediate!4535 lt!242605) (undefined!5347 lt!242605)))))

(assert (=> d!80737 (= lt!242605 e!307213)))

(declare-fun c!62047 () Bool)

(assert (=> d!80737 (= c!62047 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80737 (= lt!242604 (select (arr!16061 lt!242461) lt!242456))))

(assert (=> d!80737 (validMask!0 mask!3524)))

(assert (=> d!80737 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242456 lt!242459 lt!242461 mask!3524) lt!242605)))

(assert (= (and d!80737 c!62047) b!527086))

(assert (= (and d!80737 (not c!62047)) b!527083))

(assert (= (and b!527083 c!62048) b!527085))

(assert (= (and b!527083 (not c!62048)) b!527080))

(assert (= (and d!80737 c!62046) b!527087))

(assert (= (and d!80737 (not c!62046)) b!527079))

(assert (= (and b!527079 res!323603) b!527081))

(assert (= (and b!527081 (not res!323601)) b!527082))

(assert (= (and b!527082 (not res!323602)) b!527084))

(declare-fun m!507789 () Bool)

(assert (=> d!80737 m!507789))

(assert (=> d!80737 m!507561))

(declare-fun m!507791 () Bool)

(assert (=> b!527082 m!507791))

(assert (=> b!527081 m!507791))

(assert (=> b!527084 m!507791))

(declare-fun m!507793 () Bool)

(assert (=> b!527080 m!507793))

(assert (=> b!527080 m!507793))

(declare-fun m!507795 () Bool)

(assert (=> b!527080 m!507795))

(assert (=> b!526791 d!80737))

(declare-fun d!80739 () Bool)

(assert (=> d!80739 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!242614 () Unit!16606)

(declare-fun choose!38 (array!33425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16606)

(assert (=> d!80739 (= lt!242614 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80739 (validMask!0 mask!3524)))

(assert (=> d!80739 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!242614)))

(declare-fun bs!16526 () Bool)

(assert (= bs!16526 d!80739))

(assert (=> bs!16526 m!507577))

(declare-fun m!507823 () Bool)

(assert (=> bs!16526 m!507823))

(assert (=> bs!16526 m!507561))

(assert (=> b!526791 d!80739))

(declare-fun d!80745 () Bool)

(declare-fun lt!242616 () (_ BitVec 32))

(declare-fun lt!242615 () (_ BitVec 32))

(assert (=> d!80745 (= lt!242616 (bvmul (bvxor lt!242615 (bvlshr lt!242615 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80745 (= lt!242615 ((_ extract 31 0) (bvand (bvxor lt!242459 (bvlshr lt!242459 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80745 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!323598 (let ((h!11202 ((_ extract 31 0) (bvand (bvxor lt!242459 (bvlshr lt!242459 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49355 (bvmul (bvxor h!11202 (bvlshr h!11202 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49355 (bvlshr x!49355 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!323598 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!323598 #b00000000000000000000000000000000))))))

(assert (=> d!80745 (= (toIndex!0 lt!242459 mask!3524) (bvand (bvxor lt!242616 (bvlshr lt!242616 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!526791 d!80745))

(declare-fun b!527100 () Bool)

(declare-fun e!307223 () Bool)

(declare-fun e!307221 () Bool)

(assert (=> b!527100 (= e!307223 e!307221)))

(declare-fun res!323606 () Bool)

(declare-fun lt!242618 () SeekEntryResult!4535)

(assert (=> b!527100 (= res!323606 (and (is-Intermediate!4535 lt!242618) (not (undefined!5347 lt!242618)) (bvslt (x!49343 lt!242618) #b01111111111111111111111111111110) (bvsge (x!49343 lt!242618) #b00000000000000000000000000000000) (bvsge (x!49343 lt!242618) #b00000000000000000000000000000000)))))

(assert (=> b!527100 (=> (not res!323606) (not e!307221))))

(declare-fun b!527101 () Bool)

(declare-fun e!307222 () SeekEntryResult!4535)

(assert (=> b!527101 (= e!307222 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242458 #b00000000000000000000000000000000 mask!3524) (select (arr!16061 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!527102 () Bool)

(assert (=> b!527102 (and (bvsge (index!20354 lt!242618) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242618) (size!16425 a!3235)))))

(declare-fun res!323604 () Bool)

(assert (=> b!527102 (= res!323604 (= (select (arr!16061 a!3235) (index!20354 lt!242618)) (select (arr!16061 a!3235) j!176)))))

(declare-fun e!307225 () Bool)

(assert (=> b!527102 (=> res!323604 e!307225)))

(assert (=> b!527102 (= e!307221 e!307225)))

(declare-fun b!527103 () Bool)

(assert (=> b!527103 (and (bvsge (index!20354 lt!242618) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242618) (size!16425 a!3235)))))

(declare-fun res!323605 () Bool)

(assert (=> b!527103 (= res!323605 (= (select (arr!16061 a!3235) (index!20354 lt!242618)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527103 (=> res!323605 e!307225)))

(declare-fun b!527104 () Bool)

(declare-fun e!307224 () SeekEntryResult!4535)

(assert (=> b!527104 (= e!307224 e!307222)))

(declare-fun lt!242617 () (_ BitVec 64))

(declare-fun c!62057 () Bool)

(assert (=> b!527104 (= c!62057 (or (= lt!242617 (select (arr!16061 a!3235) j!176)) (= (bvadd lt!242617 lt!242617) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527105 () Bool)

(assert (=> b!527105 (and (bvsge (index!20354 lt!242618) #b00000000000000000000000000000000) (bvslt (index!20354 lt!242618) (size!16425 a!3235)))))

(assert (=> b!527105 (= e!307225 (= (select (arr!16061 a!3235) (index!20354 lt!242618)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!527106 () Bool)

(assert (=> b!527106 (= e!307222 (Intermediate!4535 false lt!242458 #b00000000000000000000000000000000))))

(declare-fun b!527107 () Bool)

(assert (=> b!527107 (= e!307224 (Intermediate!4535 true lt!242458 #b00000000000000000000000000000000))))

(declare-fun b!527108 () Bool)

(assert (=> b!527108 (= e!307223 (bvsge (x!49343 lt!242618) #b01111111111111111111111111111110))))

(declare-fun d!80747 () Bool)

(assert (=> d!80747 e!307223))

(declare-fun c!62055 () Bool)

(assert (=> d!80747 (= c!62055 (and (is-Intermediate!4535 lt!242618) (undefined!5347 lt!242618)))))

(assert (=> d!80747 (= lt!242618 e!307224)))

(declare-fun c!62056 () Bool)

(assert (=> d!80747 (= c!62056 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80747 (= lt!242617 (select (arr!16061 a!3235) lt!242458))))

(assert (=> d!80747 (validMask!0 mask!3524)))

(assert (=> d!80747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242458 (select (arr!16061 a!3235) j!176) a!3235 mask!3524) lt!242618)))

(assert (= (and d!80747 c!62056) b!527107))

(assert (= (and d!80747 (not c!62056)) b!527104))

(assert (= (and b!527104 c!62057) b!527106))

(assert (= (and b!527104 (not c!62057)) b!527101))

(assert (= (and d!80747 c!62055) b!527108))

(assert (= (and d!80747 (not c!62055)) b!527100))

(assert (= (and b!527100 res!323606) b!527102))

(assert (= (and b!527102 (not res!323604)) b!527103))

(assert (= (and b!527103 (not res!323605)) b!527105))

(declare-fun m!507825 () Bool)

(assert (=> d!80747 m!507825))

(assert (=> d!80747 m!507561))

(declare-fun m!507827 () Bool)

(assert (=> b!527103 m!507827))

(assert (=> b!527102 m!507827))

(assert (=> b!527105 m!507827))

(assert (=> b!527101 m!507645))

(assert (=> b!527101 m!507645))

(assert (=> b!527101 m!507571))

(declare-fun m!507829 () Bool)

(assert (=> b!527101 m!507829))

(assert (=> b!526791 d!80747))

(declare-fun d!80749 () Bool)

(assert (=> d!80749 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47828 d!80749))

(declare-fun d!80753 () Bool)

(assert (=> d!80753 (= (array_inv!11835 a!3235) (bvsge (size!16425 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47828 d!80753))

(push 1)

