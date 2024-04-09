; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46860 () Bool)

(assert start!46860)

(declare-fun b!516994 () Bool)

(declare-fun res!316530 () Bool)

(declare-fun e!301692 () Bool)

(assert (=> b!516994 (=> (not res!316530) (not e!301692))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516994 (= res!316530 (validKeyInArray!0 k0!2280))))

(declare-fun res!316534 () Bool)

(assert (=> start!46860 (=> (not res!316534) (not e!301692))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46860 (= res!316534 (validMask!0 mask!3524))))

(assert (=> start!46860 e!301692))

(assert (=> start!46860 true))

(declare-datatypes ((array!33075 0))(
  ( (array!33076 (arr!15901 (Array (_ BitVec 32) (_ BitVec 64))) (size!16265 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33075)

(declare-fun array_inv!11675 (array!33075) Bool)

(assert (=> start!46860 (array_inv!11675 a!3235)))

(declare-fun b!516995 () Bool)

(declare-fun e!301693 () Bool)

(declare-fun e!301690 () Bool)

(assert (=> b!516995 (= e!301693 (not e!301690))))

(declare-fun res!316527 () Bool)

(assert (=> b!516995 (=> res!316527 e!301690)))

(declare-fun lt!236719 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4375 0))(
  ( (MissingZero!4375 (index!19688 (_ BitVec 32))) (Found!4375 (index!19689 (_ BitVec 32))) (Intermediate!4375 (undefined!5187 Bool) (index!19690 (_ BitVec 32)) (x!48675 (_ BitVec 32))) (Undefined!4375) (MissingVacant!4375 (index!19691 (_ BitVec 32))) )
))
(declare-fun lt!236716 () SeekEntryResult!4375)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33075 (_ BitVec 32)) SeekEntryResult!4375)

(assert (=> b!516995 (= res!316527 (= lt!236716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236719 (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235)) mask!3524)))))

(declare-fun lt!236718 () (_ BitVec 32))

(assert (=> b!516995 (= lt!236716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236718 (select (arr!15901 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516995 (= lt!236719 (toIndex!0 (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516995 (= lt!236718 (toIndex!0 (select (arr!15901 a!3235) j!176) mask!3524))))

(declare-fun e!301691 () Bool)

(assert (=> b!516995 e!301691))

(declare-fun res!316533 () Bool)

(assert (=> b!516995 (=> (not res!316533) (not e!301691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33075 (_ BitVec 32)) Bool)

(assert (=> b!516995 (= res!316533 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16000 0))(
  ( (Unit!16001) )
))
(declare-fun lt!236717 () Unit!16000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16000)

(assert (=> b!516995 (= lt!236717 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516996 () Bool)

(declare-fun res!316529 () Bool)

(assert (=> b!516996 (=> res!316529 e!301690)))

(get-info :version)

(assert (=> b!516996 (= res!316529 (or (undefined!5187 lt!236716) (not ((_ is Intermediate!4375) lt!236716))))))

(declare-fun b!516997 () Bool)

(declare-fun res!316526 () Bool)

(assert (=> b!516997 (=> (not res!316526) (not e!301692))))

(assert (=> b!516997 (= res!316526 (validKeyInArray!0 (select (arr!15901 a!3235) j!176)))))

(declare-fun b!516998 () Bool)

(assert (=> b!516998 (= e!301690 (or (not (= (select (arr!15901 a!3235) (index!19690 lt!236716)) (select (arr!15901 a!3235) j!176))) (bvsgt (x!48675 lt!236716) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48675 lt!236716)) (and (bvsge lt!236718 #b00000000000000000000000000000000) (bvslt lt!236718 (size!16265 a!3235)))))))

(assert (=> b!516998 (and (bvslt (x!48675 lt!236716) #b01111111111111111111111111111110) (or (= (select (arr!15901 a!3235) (index!19690 lt!236716)) (select (arr!15901 a!3235) j!176)) (= (select (arr!15901 a!3235) (index!19690 lt!236716)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15901 a!3235) (index!19690 lt!236716)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516999 () Bool)

(declare-fun res!316532 () Bool)

(assert (=> b!516999 (=> (not res!316532) (not e!301693))))

(declare-datatypes ((List!10112 0))(
  ( (Nil!10109) (Cons!10108 (h!11009 (_ BitVec 64)) (t!16348 List!10112)) )
))
(declare-fun arrayNoDuplicates!0 (array!33075 (_ BitVec 32) List!10112) Bool)

(assert (=> b!516999 (= res!316532 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10109))))

(declare-fun b!517000 () Bool)

(declare-fun res!316535 () Bool)

(assert (=> b!517000 (=> (not res!316535) (not e!301693))))

(assert (=> b!517000 (= res!316535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517001 () Bool)

(declare-fun res!316525 () Bool)

(assert (=> b!517001 (=> (not res!316525) (not e!301692))))

(assert (=> b!517001 (= res!316525 (and (= (size!16265 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16265 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16265 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517002 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33075 (_ BitVec 32)) SeekEntryResult!4375)

(assert (=> b!517002 (= e!301691 (= (seekEntryOrOpen!0 (select (arr!15901 a!3235) j!176) a!3235 mask!3524) (Found!4375 j!176)))))

(declare-fun b!517003 () Bool)

(declare-fun res!316528 () Bool)

(assert (=> b!517003 (=> (not res!316528) (not e!301692))))

(declare-fun arrayContainsKey!0 (array!33075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517003 (= res!316528 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517004 () Bool)

(assert (=> b!517004 (= e!301692 e!301693)))

(declare-fun res!316531 () Bool)

(assert (=> b!517004 (=> (not res!316531) (not e!301693))))

(declare-fun lt!236720 () SeekEntryResult!4375)

(assert (=> b!517004 (= res!316531 (or (= lt!236720 (MissingZero!4375 i!1204)) (= lt!236720 (MissingVacant!4375 i!1204))))))

(assert (=> b!517004 (= lt!236720 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!46860 res!316534) b!517001))

(assert (= (and b!517001 res!316525) b!516997))

(assert (= (and b!516997 res!316526) b!516994))

(assert (= (and b!516994 res!316530) b!517003))

(assert (= (and b!517003 res!316528) b!517004))

(assert (= (and b!517004 res!316531) b!517000))

(assert (= (and b!517000 res!316535) b!516999))

(assert (= (and b!516999 res!316532) b!516995))

(assert (= (and b!516995 res!316533) b!517002))

(assert (= (and b!516995 (not res!316527)) b!516996))

(assert (= (and b!516996 (not res!316529)) b!516998))

(declare-fun m!498501 () Bool)

(assert (=> b!517004 m!498501))

(declare-fun m!498503 () Bool)

(assert (=> b!516995 m!498503))

(declare-fun m!498505 () Bool)

(assert (=> b!516995 m!498505))

(declare-fun m!498507 () Bool)

(assert (=> b!516995 m!498507))

(declare-fun m!498509 () Bool)

(assert (=> b!516995 m!498509))

(declare-fun m!498511 () Bool)

(assert (=> b!516995 m!498511))

(assert (=> b!516995 m!498505))

(declare-fun m!498513 () Bool)

(assert (=> b!516995 m!498513))

(assert (=> b!516995 m!498511))

(declare-fun m!498515 () Bool)

(assert (=> b!516995 m!498515))

(assert (=> b!516995 m!498505))

(declare-fun m!498517 () Bool)

(assert (=> b!516995 m!498517))

(assert (=> b!516995 m!498511))

(declare-fun m!498519 () Bool)

(assert (=> b!516995 m!498519))

(declare-fun m!498521 () Bool)

(assert (=> b!516998 m!498521))

(assert (=> b!516998 m!498505))

(assert (=> b!517002 m!498505))

(assert (=> b!517002 m!498505))

(declare-fun m!498523 () Bool)

(assert (=> b!517002 m!498523))

(declare-fun m!498525 () Bool)

(assert (=> b!517000 m!498525))

(declare-fun m!498527 () Bool)

(assert (=> b!516999 m!498527))

(declare-fun m!498529 () Bool)

(assert (=> start!46860 m!498529))

(declare-fun m!498531 () Bool)

(assert (=> start!46860 m!498531))

(declare-fun m!498533 () Bool)

(assert (=> b!517003 m!498533))

(assert (=> b!516997 m!498505))

(assert (=> b!516997 m!498505))

(declare-fun m!498535 () Bool)

(assert (=> b!516997 m!498535))

(declare-fun m!498537 () Bool)

(assert (=> b!516994 m!498537))

(check-sat (not b!517000) (not b!516995) (not b!517003) (not b!516994) (not b!516999) (not b!517002) (not b!516997) (not start!46860) (not b!517004))
(check-sat)
(get-model)

(declare-fun b!517050 () Bool)

(declare-fun e!301717 () SeekEntryResult!4375)

(declare-fun lt!236744 () SeekEntryResult!4375)

(assert (=> b!517050 (= e!301717 (MissingZero!4375 (index!19690 lt!236744)))))

(declare-fun b!517051 () Bool)

(declare-fun c!60533 () Bool)

(declare-fun lt!236742 () (_ BitVec 64))

(assert (=> b!517051 (= c!60533 (= lt!236742 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301715 () SeekEntryResult!4375)

(assert (=> b!517051 (= e!301715 e!301717)))

(declare-fun b!517052 () Bool)

(declare-fun e!301716 () SeekEntryResult!4375)

(assert (=> b!517052 (= e!301716 e!301715)))

(assert (=> b!517052 (= lt!236742 (select (arr!15901 a!3235) (index!19690 lt!236744)))))

(declare-fun c!60532 () Bool)

(assert (=> b!517052 (= c!60532 (= lt!236742 (select (arr!15901 a!3235) j!176)))))

(declare-fun b!517053 () Bool)

(assert (=> b!517053 (= e!301716 Undefined!4375)))

(declare-fun b!517055 () Bool)

(assert (=> b!517055 (= e!301715 (Found!4375 (index!19690 lt!236744)))))

(declare-fun b!517054 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33075 (_ BitVec 32)) SeekEntryResult!4375)

(assert (=> b!517054 (= e!301717 (seekKeyOrZeroReturnVacant!0 (x!48675 lt!236744) (index!19690 lt!236744) (index!19690 lt!236744) (select (arr!15901 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!79545 () Bool)

(declare-fun lt!236743 () SeekEntryResult!4375)

(assert (=> d!79545 (and (or ((_ is Undefined!4375) lt!236743) (not ((_ is Found!4375) lt!236743)) (and (bvsge (index!19689 lt!236743) #b00000000000000000000000000000000) (bvslt (index!19689 lt!236743) (size!16265 a!3235)))) (or ((_ is Undefined!4375) lt!236743) ((_ is Found!4375) lt!236743) (not ((_ is MissingZero!4375) lt!236743)) (and (bvsge (index!19688 lt!236743) #b00000000000000000000000000000000) (bvslt (index!19688 lt!236743) (size!16265 a!3235)))) (or ((_ is Undefined!4375) lt!236743) ((_ is Found!4375) lt!236743) ((_ is MissingZero!4375) lt!236743) (not ((_ is MissingVacant!4375) lt!236743)) (and (bvsge (index!19691 lt!236743) #b00000000000000000000000000000000) (bvslt (index!19691 lt!236743) (size!16265 a!3235)))) (or ((_ is Undefined!4375) lt!236743) (ite ((_ is Found!4375) lt!236743) (= (select (arr!15901 a!3235) (index!19689 lt!236743)) (select (arr!15901 a!3235) j!176)) (ite ((_ is MissingZero!4375) lt!236743) (= (select (arr!15901 a!3235) (index!19688 lt!236743)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4375) lt!236743) (= (select (arr!15901 a!3235) (index!19691 lt!236743)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79545 (= lt!236743 e!301716)))

(declare-fun c!60531 () Bool)

(assert (=> d!79545 (= c!60531 (and ((_ is Intermediate!4375) lt!236744) (undefined!5187 lt!236744)))))

(assert (=> d!79545 (= lt!236744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15901 a!3235) j!176) mask!3524) (select (arr!15901 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79545 (validMask!0 mask!3524)))

(assert (=> d!79545 (= (seekEntryOrOpen!0 (select (arr!15901 a!3235) j!176) a!3235 mask!3524) lt!236743)))

(assert (= (and d!79545 c!60531) b!517053))

(assert (= (and d!79545 (not c!60531)) b!517052))

(assert (= (and b!517052 c!60532) b!517055))

(assert (= (and b!517052 (not c!60532)) b!517051))

(assert (= (and b!517051 c!60533) b!517050))

(assert (= (and b!517051 (not c!60533)) b!517054))

(declare-fun m!498577 () Bool)

(assert (=> b!517052 m!498577))

(assert (=> b!517054 m!498505))

(declare-fun m!498579 () Bool)

(assert (=> b!517054 m!498579))

(assert (=> d!79545 m!498529))

(assert (=> d!79545 m!498517))

(assert (=> d!79545 m!498505))

(declare-fun m!498581 () Bool)

(assert (=> d!79545 m!498581))

(declare-fun m!498583 () Bool)

(assert (=> d!79545 m!498583))

(assert (=> d!79545 m!498505))

(assert (=> d!79545 m!498517))

(declare-fun m!498585 () Bool)

(assert (=> d!79545 m!498585))

(declare-fun m!498587 () Bool)

(assert (=> d!79545 m!498587))

(assert (=> b!517002 d!79545))

(declare-fun d!79547 () Bool)

(assert (=> d!79547 (= (validKeyInArray!0 (select (arr!15901 a!3235) j!176)) (and (not (= (select (arr!15901 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15901 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516997 d!79547))

(declare-fun d!79549 () Bool)

(declare-fun res!316573 () Bool)

(declare-fun e!301722 () Bool)

(assert (=> d!79549 (=> res!316573 e!301722)))

(assert (=> d!79549 (= res!316573 (= (select (arr!15901 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79549 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!301722)))

(declare-fun b!517060 () Bool)

(declare-fun e!301723 () Bool)

(assert (=> b!517060 (= e!301722 e!301723)))

(declare-fun res!316574 () Bool)

(assert (=> b!517060 (=> (not res!316574) (not e!301723))))

(assert (=> b!517060 (= res!316574 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16265 a!3235)))))

(declare-fun b!517061 () Bool)

(assert (=> b!517061 (= e!301723 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79549 (not res!316573)) b!517060))

(assert (= (and b!517060 res!316574) b!517061))

(declare-fun m!498589 () Bool)

(assert (=> d!79549 m!498589))

(declare-fun m!498591 () Bool)

(assert (=> b!517061 m!498591))

(assert (=> b!517003 d!79549))

(declare-fun d!79551 () Bool)

(assert (=> d!79551 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516994 d!79551))

(declare-fun b!517062 () Bool)

(declare-fun e!301726 () SeekEntryResult!4375)

(declare-fun lt!236747 () SeekEntryResult!4375)

(assert (=> b!517062 (= e!301726 (MissingZero!4375 (index!19690 lt!236747)))))

(declare-fun b!517063 () Bool)

(declare-fun c!60536 () Bool)

(declare-fun lt!236745 () (_ BitVec 64))

(assert (=> b!517063 (= c!60536 (= lt!236745 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301724 () SeekEntryResult!4375)

(assert (=> b!517063 (= e!301724 e!301726)))

(declare-fun b!517064 () Bool)

(declare-fun e!301725 () SeekEntryResult!4375)

(assert (=> b!517064 (= e!301725 e!301724)))

(assert (=> b!517064 (= lt!236745 (select (arr!15901 a!3235) (index!19690 lt!236747)))))

(declare-fun c!60535 () Bool)

(assert (=> b!517064 (= c!60535 (= lt!236745 k0!2280))))

(declare-fun b!517065 () Bool)

(assert (=> b!517065 (= e!301725 Undefined!4375)))

(declare-fun b!517067 () Bool)

(assert (=> b!517067 (= e!301724 (Found!4375 (index!19690 lt!236747)))))

(declare-fun b!517066 () Bool)

(assert (=> b!517066 (= e!301726 (seekKeyOrZeroReturnVacant!0 (x!48675 lt!236747) (index!19690 lt!236747) (index!19690 lt!236747) k0!2280 a!3235 mask!3524))))

(declare-fun d!79553 () Bool)

(declare-fun lt!236746 () SeekEntryResult!4375)

(assert (=> d!79553 (and (or ((_ is Undefined!4375) lt!236746) (not ((_ is Found!4375) lt!236746)) (and (bvsge (index!19689 lt!236746) #b00000000000000000000000000000000) (bvslt (index!19689 lt!236746) (size!16265 a!3235)))) (or ((_ is Undefined!4375) lt!236746) ((_ is Found!4375) lt!236746) (not ((_ is MissingZero!4375) lt!236746)) (and (bvsge (index!19688 lt!236746) #b00000000000000000000000000000000) (bvslt (index!19688 lt!236746) (size!16265 a!3235)))) (or ((_ is Undefined!4375) lt!236746) ((_ is Found!4375) lt!236746) ((_ is MissingZero!4375) lt!236746) (not ((_ is MissingVacant!4375) lt!236746)) (and (bvsge (index!19691 lt!236746) #b00000000000000000000000000000000) (bvslt (index!19691 lt!236746) (size!16265 a!3235)))) (or ((_ is Undefined!4375) lt!236746) (ite ((_ is Found!4375) lt!236746) (= (select (arr!15901 a!3235) (index!19689 lt!236746)) k0!2280) (ite ((_ is MissingZero!4375) lt!236746) (= (select (arr!15901 a!3235) (index!19688 lt!236746)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4375) lt!236746) (= (select (arr!15901 a!3235) (index!19691 lt!236746)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79553 (= lt!236746 e!301725)))

(declare-fun c!60534 () Bool)

(assert (=> d!79553 (= c!60534 (and ((_ is Intermediate!4375) lt!236747) (undefined!5187 lt!236747)))))

(assert (=> d!79553 (= lt!236747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79553 (validMask!0 mask!3524)))

(assert (=> d!79553 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!236746)))

(assert (= (and d!79553 c!60534) b!517065))

(assert (= (and d!79553 (not c!60534)) b!517064))

(assert (= (and b!517064 c!60535) b!517067))

(assert (= (and b!517064 (not c!60535)) b!517063))

(assert (= (and b!517063 c!60536) b!517062))

(assert (= (and b!517063 (not c!60536)) b!517066))

(declare-fun m!498593 () Bool)

(assert (=> b!517064 m!498593))

(declare-fun m!498595 () Bool)

(assert (=> b!517066 m!498595))

(assert (=> d!79553 m!498529))

(declare-fun m!498597 () Bool)

(assert (=> d!79553 m!498597))

(declare-fun m!498599 () Bool)

(assert (=> d!79553 m!498599))

(declare-fun m!498601 () Bool)

(assert (=> d!79553 m!498601))

(assert (=> d!79553 m!498597))

(declare-fun m!498603 () Bool)

(assert (=> d!79553 m!498603))

(declare-fun m!498605 () Bool)

(assert (=> d!79553 m!498605))

(assert (=> b!517004 d!79553))

(declare-fun d!79555 () Bool)

(assert (=> d!79555 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46860 d!79555))

(declare-fun d!79559 () Bool)

(assert (=> d!79559 (= (array_inv!11675 a!3235) (bvsge (size!16265 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46860 d!79559))

(declare-fun b!517105 () Bool)

(declare-fun e!301762 () Bool)

(declare-fun contains!2749 (List!10112 (_ BitVec 64)) Bool)

(assert (=> b!517105 (= e!301762 (contains!2749 Nil!10109 (select (arr!15901 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517106 () Bool)

(declare-fun e!301759 () Bool)

(declare-fun e!301761 () Bool)

(assert (=> b!517106 (= e!301759 e!301761)))

(declare-fun res!316602 () Bool)

(assert (=> b!517106 (=> (not res!316602) (not e!301761))))

(assert (=> b!517106 (= res!316602 (not e!301762))))

(declare-fun res!316603 () Bool)

(assert (=> b!517106 (=> (not res!316603) (not e!301762))))

(assert (=> b!517106 (= res!316603 (validKeyInArray!0 (select (arr!15901 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517107 () Bool)

(declare-fun e!301760 () Bool)

(assert (=> b!517107 (= e!301761 e!301760)))

(declare-fun c!60542 () Bool)

(assert (=> b!517107 (= c!60542 (validKeyInArray!0 (select (arr!15901 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517108 () Bool)

(declare-fun call!31664 () Bool)

(assert (=> b!517108 (= e!301760 call!31664)))

(declare-fun b!517109 () Bool)

(assert (=> b!517109 (= e!301760 call!31664)))

(declare-fun d!79561 () Bool)

(declare-fun res!316604 () Bool)

(assert (=> d!79561 (=> res!316604 e!301759)))

(assert (=> d!79561 (= res!316604 (bvsge #b00000000000000000000000000000000 (size!16265 a!3235)))))

(assert (=> d!79561 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10109) e!301759)))

(declare-fun bm!31661 () Bool)

(assert (=> bm!31661 (= call!31664 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60542 (Cons!10108 (select (arr!15901 a!3235) #b00000000000000000000000000000000) Nil!10109) Nil!10109)))))

(assert (= (and d!79561 (not res!316604)) b!517106))

(assert (= (and b!517106 res!316603) b!517105))

(assert (= (and b!517106 res!316602) b!517107))

(assert (= (and b!517107 c!60542) b!517108))

(assert (= (and b!517107 (not c!60542)) b!517109))

(assert (= (or b!517108 b!517109) bm!31661))

(assert (=> b!517105 m!498589))

(assert (=> b!517105 m!498589))

(declare-fun m!498621 () Bool)

(assert (=> b!517105 m!498621))

(assert (=> b!517106 m!498589))

(assert (=> b!517106 m!498589))

(declare-fun m!498623 () Bool)

(assert (=> b!517106 m!498623))

(assert (=> b!517107 m!498589))

(assert (=> b!517107 m!498589))

(assert (=> b!517107 m!498623))

(assert (=> bm!31661 m!498589))

(declare-fun m!498625 () Bool)

(assert (=> bm!31661 m!498625))

(assert (=> b!516999 d!79561))

(declare-fun b!517126 () Bool)

(declare-fun e!301775 () Bool)

(declare-fun call!31669 () Bool)

(assert (=> b!517126 (= e!301775 call!31669)))

(declare-fun b!517127 () Bool)

(declare-fun e!301777 () Bool)

(assert (=> b!517127 (= e!301777 e!301775)))

(declare-fun lt!236760 () (_ BitVec 64))

(assert (=> b!517127 (= lt!236760 (select (arr!15901 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!236761 () Unit!16000)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33075 (_ BitVec 64) (_ BitVec 32)) Unit!16000)

(assert (=> b!517127 (= lt!236761 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236760 #b00000000000000000000000000000000))))

(assert (=> b!517127 (arrayContainsKey!0 a!3235 lt!236760 #b00000000000000000000000000000000)))

(declare-fun lt!236762 () Unit!16000)

(assert (=> b!517127 (= lt!236762 lt!236761)))

(declare-fun res!316613 () Bool)

(assert (=> b!517127 (= res!316613 (= (seekEntryOrOpen!0 (select (arr!15901 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4375 #b00000000000000000000000000000000)))))

(assert (=> b!517127 (=> (not res!316613) (not e!301775))))

(declare-fun bm!31666 () Bool)

(assert (=> bm!31666 (= call!31669 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79571 () Bool)

(declare-fun res!316614 () Bool)

(declare-fun e!301776 () Bool)

(assert (=> d!79571 (=> res!316614 e!301776)))

(assert (=> d!79571 (= res!316614 (bvsge #b00000000000000000000000000000000 (size!16265 a!3235)))))

(assert (=> d!79571 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!301776)))

(declare-fun b!517128 () Bool)

(assert (=> b!517128 (= e!301776 e!301777)))

(declare-fun c!60547 () Bool)

(assert (=> b!517128 (= c!60547 (validKeyInArray!0 (select (arr!15901 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517129 () Bool)

(assert (=> b!517129 (= e!301777 call!31669)))

(assert (= (and d!79571 (not res!316614)) b!517128))

(assert (= (and b!517128 c!60547) b!517127))

(assert (= (and b!517128 (not c!60547)) b!517129))

(assert (= (and b!517127 res!316613) b!517126))

(assert (= (or b!517126 b!517129) bm!31666))

(assert (=> b!517127 m!498589))

(declare-fun m!498627 () Bool)

(assert (=> b!517127 m!498627))

(declare-fun m!498629 () Bool)

(assert (=> b!517127 m!498629))

(assert (=> b!517127 m!498589))

(declare-fun m!498631 () Bool)

(assert (=> b!517127 m!498631))

(declare-fun m!498633 () Bool)

(assert (=> bm!31666 m!498633))

(assert (=> b!517128 m!498589))

(assert (=> b!517128 m!498589))

(assert (=> b!517128 m!498623))

(assert (=> b!517000 d!79571))

(declare-fun d!79577 () Bool)

(declare-fun lt!236777 () (_ BitVec 32))

(declare-fun lt!236776 () (_ BitVec 32))

(assert (=> d!79577 (= lt!236777 (bvmul (bvxor lt!236776 (bvlshr lt!236776 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79577 (= lt!236776 ((_ extract 31 0) (bvand (bvxor (select (arr!15901 a!3235) j!176) (bvlshr (select (arr!15901 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79577 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316617 (let ((h!11011 ((_ extract 31 0) (bvand (bvxor (select (arr!15901 a!3235) j!176) (bvlshr (select (arr!15901 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48677 (bvmul (bvxor h!11011 (bvlshr h!11011 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48677 (bvlshr x!48677 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316617 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316617 #b00000000000000000000000000000000))))))

(assert (=> d!79577 (= (toIndex!0 (select (arr!15901 a!3235) j!176) mask!3524) (bvand (bvxor lt!236777 (bvlshr lt!236777 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516995 d!79577))

(declare-fun d!79581 () Bool)

(declare-fun e!301820 () Bool)

(assert (=> d!79581 e!301820))

(declare-fun c!60577 () Bool)

(declare-fun lt!236804 () SeekEntryResult!4375)

(assert (=> d!79581 (= c!60577 (and ((_ is Intermediate!4375) lt!236804) (undefined!5187 lt!236804)))))

(declare-fun e!301822 () SeekEntryResult!4375)

(assert (=> d!79581 (= lt!236804 e!301822)))

(declare-fun c!60576 () Bool)

(assert (=> d!79581 (= c!60576 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!236803 () (_ BitVec 64))

(assert (=> d!79581 (= lt!236803 (select (arr!15901 (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235))) lt!236719))))

(assert (=> d!79581 (validMask!0 mask!3524)))

(assert (=> d!79581 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236719 (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235)) mask!3524) lt!236804)))

(declare-fun b!517200 () Bool)

(assert (=> b!517200 (= e!301822 (Intermediate!4375 true lt!236719 #b00000000000000000000000000000000))))

(declare-fun b!517201 () Bool)

(declare-fun e!301819 () SeekEntryResult!4375)

(assert (=> b!517201 (= e!301819 (Intermediate!4375 false lt!236719 #b00000000000000000000000000000000))))

(declare-fun b!517202 () Bool)

(assert (=> b!517202 (and (bvsge (index!19690 lt!236804) #b00000000000000000000000000000000) (bvslt (index!19690 lt!236804) (size!16265 (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235)))))))

(declare-fun res!316632 () Bool)

(assert (=> b!517202 (= res!316632 (= (select (arr!15901 (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235))) (index!19690 lt!236804)) (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176)))))

(declare-fun e!301821 () Bool)

(assert (=> b!517202 (=> res!316632 e!301821)))

(declare-fun e!301818 () Bool)

(assert (=> b!517202 (= e!301818 e!301821)))

(declare-fun b!517203 () Bool)

(assert (=> b!517203 (= e!301820 e!301818)))

(declare-fun res!316631 () Bool)

(assert (=> b!517203 (= res!316631 (and ((_ is Intermediate!4375) lt!236804) (not (undefined!5187 lt!236804)) (bvslt (x!48675 lt!236804) #b01111111111111111111111111111110) (bvsge (x!48675 lt!236804) #b00000000000000000000000000000000) (bvsge (x!48675 lt!236804) #b00000000000000000000000000000000)))))

(assert (=> b!517203 (=> (not res!316631) (not e!301818))))

(declare-fun b!517204 () Bool)

(assert (=> b!517204 (and (bvsge (index!19690 lt!236804) #b00000000000000000000000000000000) (bvslt (index!19690 lt!236804) (size!16265 (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235)))))))

(declare-fun res!316630 () Bool)

(assert (=> b!517204 (= res!316630 (= (select (arr!15901 (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235))) (index!19690 lt!236804)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517204 (=> res!316630 e!301821)))

(declare-fun b!517205 () Bool)

(assert (=> b!517205 (= e!301822 e!301819)))

(declare-fun c!60578 () Bool)

(assert (=> b!517205 (= c!60578 (or (= lt!236803 (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!236803 lt!236803) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517206 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517206 (= e!301819 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236719 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235)) mask!3524))))

(declare-fun b!517207 () Bool)

(assert (=> b!517207 (and (bvsge (index!19690 lt!236804) #b00000000000000000000000000000000) (bvslt (index!19690 lt!236804) (size!16265 (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235)))))))

(assert (=> b!517207 (= e!301821 (= (select (arr!15901 (array!33076 (store (arr!15901 a!3235) i!1204 k0!2280) (size!16265 a!3235))) (index!19690 lt!236804)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517208 () Bool)

(assert (=> b!517208 (= e!301820 (bvsge (x!48675 lt!236804) #b01111111111111111111111111111110))))

(assert (= (and d!79581 c!60576) b!517200))

(assert (= (and d!79581 (not c!60576)) b!517205))

(assert (= (and b!517205 c!60578) b!517201))

(assert (= (and b!517205 (not c!60578)) b!517206))

(assert (= (and d!79581 c!60577) b!517208))

(assert (= (and d!79581 (not c!60577)) b!517203))

(assert (= (and b!517203 res!316631) b!517202))

(assert (= (and b!517202 (not res!316632)) b!517204))

(assert (= (and b!517204 (not res!316630)) b!517207))

(declare-fun m!498679 () Bool)

(assert (=> d!79581 m!498679))

(assert (=> d!79581 m!498529))

(declare-fun m!498681 () Bool)

(assert (=> b!517202 m!498681))

(assert (=> b!517207 m!498681))

(declare-fun m!498683 () Bool)

(assert (=> b!517206 m!498683))

(assert (=> b!517206 m!498683))

(assert (=> b!517206 m!498511))

(declare-fun m!498685 () Bool)

(assert (=> b!517206 m!498685))

(assert (=> b!517204 m!498681))

(assert (=> b!516995 d!79581))

(declare-fun b!517209 () Bool)

(declare-fun e!301823 () Bool)

(declare-fun call!31674 () Bool)

(assert (=> b!517209 (= e!301823 call!31674)))

(declare-fun b!517210 () Bool)

(declare-fun e!301825 () Bool)

(assert (=> b!517210 (= e!301825 e!301823)))

(declare-fun lt!236805 () (_ BitVec 64))

(assert (=> b!517210 (= lt!236805 (select (arr!15901 a!3235) j!176))))

(declare-fun lt!236806 () Unit!16000)

(assert (=> b!517210 (= lt!236806 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236805 j!176))))

(assert (=> b!517210 (arrayContainsKey!0 a!3235 lt!236805 #b00000000000000000000000000000000)))

(declare-fun lt!236807 () Unit!16000)

(assert (=> b!517210 (= lt!236807 lt!236806)))

(declare-fun res!316633 () Bool)

(assert (=> b!517210 (= res!316633 (= (seekEntryOrOpen!0 (select (arr!15901 a!3235) j!176) a!3235 mask!3524) (Found!4375 j!176)))))

(assert (=> b!517210 (=> (not res!316633) (not e!301823))))

(declare-fun bm!31671 () Bool)

(assert (=> bm!31671 (= call!31674 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79593 () Bool)

(declare-fun res!316634 () Bool)

(declare-fun e!301824 () Bool)

(assert (=> d!79593 (=> res!316634 e!301824)))

(assert (=> d!79593 (= res!316634 (bvsge j!176 (size!16265 a!3235)))))

(assert (=> d!79593 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!301824)))

(declare-fun b!517211 () Bool)

(assert (=> b!517211 (= e!301824 e!301825)))

(declare-fun c!60579 () Bool)

(assert (=> b!517211 (= c!60579 (validKeyInArray!0 (select (arr!15901 a!3235) j!176)))))

(declare-fun b!517212 () Bool)

(assert (=> b!517212 (= e!301825 call!31674)))

(assert (= (and d!79593 (not res!316634)) b!517211))

(assert (= (and b!517211 c!60579) b!517210))

(assert (= (and b!517211 (not c!60579)) b!517212))

(assert (= (and b!517210 res!316633) b!517209))

(assert (= (or b!517209 b!517212) bm!31671))

(assert (=> b!517210 m!498505))

(declare-fun m!498687 () Bool)

(assert (=> b!517210 m!498687))

(declare-fun m!498689 () Bool)

(assert (=> b!517210 m!498689))

(assert (=> b!517210 m!498505))

(assert (=> b!517210 m!498523))

(declare-fun m!498691 () Bool)

(assert (=> bm!31671 m!498691))

(assert (=> b!517211 m!498505))

(assert (=> b!517211 m!498505))

(assert (=> b!517211 m!498535))

(assert (=> b!516995 d!79593))

(declare-fun d!79595 () Bool)

(declare-fun e!301828 () Bool)

(assert (=> d!79595 e!301828))

(declare-fun c!60581 () Bool)

(declare-fun lt!236809 () SeekEntryResult!4375)

(assert (=> d!79595 (= c!60581 (and ((_ is Intermediate!4375) lt!236809) (undefined!5187 lt!236809)))))

(declare-fun e!301830 () SeekEntryResult!4375)

(assert (=> d!79595 (= lt!236809 e!301830)))

(declare-fun c!60580 () Bool)

(assert (=> d!79595 (= c!60580 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!236808 () (_ BitVec 64))

(assert (=> d!79595 (= lt!236808 (select (arr!15901 a!3235) lt!236718))))

(assert (=> d!79595 (validMask!0 mask!3524)))

(assert (=> d!79595 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236718 (select (arr!15901 a!3235) j!176) a!3235 mask!3524) lt!236809)))

(declare-fun b!517213 () Bool)

(assert (=> b!517213 (= e!301830 (Intermediate!4375 true lt!236718 #b00000000000000000000000000000000))))

(declare-fun b!517214 () Bool)

(declare-fun e!301827 () SeekEntryResult!4375)

(assert (=> b!517214 (= e!301827 (Intermediate!4375 false lt!236718 #b00000000000000000000000000000000))))

(declare-fun b!517215 () Bool)

(assert (=> b!517215 (and (bvsge (index!19690 lt!236809) #b00000000000000000000000000000000) (bvslt (index!19690 lt!236809) (size!16265 a!3235)))))

(declare-fun res!316637 () Bool)

(assert (=> b!517215 (= res!316637 (= (select (arr!15901 a!3235) (index!19690 lt!236809)) (select (arr!15901 a!3235) j!176)))))

(declare-fun e!301829 () Bool)

(assert (=> b!517215 (=> res!316637 e!301829)))

(declare-fun e!301826 () Bool)

(assert (=> b!517215 (= e!301826 e!301829)))

(declare-fun b!517216 () Bool)

(assert (=> b!517216 (= e!301828 e!301826)))

(declare-fun res!316636 () Bool)

(assert (=> b!517216 (= res!316636 (and ((_ is Intermediate!4375) lt!236809) (not (undefined!5187 lt!236809)) (bvslt (x!48675 lt!236809) #b01111111111111111111111111111110) (bvsge (x!48675 lt!236809) #b00000000000000000000000000000000) (bvsge (x!48675 lt!236809) #b00000000000000000000000000000000)))))

(assert (=> b!517216 (=> (not res!316636) (not e!301826))))

(declare-fun b!517217 () Bool)

(assert (=> b!517217 (and (bvsge (index!19690 lt!236809) #b00000000000000000000000000000000) (bvslt (index!19690 lt!236809) (size!16265 a!3235)))))

(declare-fun res!316635 () Bool)

(assert (=> b!517217 (= res!316635 (= (select (arr!15901 a!3235) (index!19690 lt!236809)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517217 (=> res!316635 e!301829)))

(declare-fun b!517218 () Bool)

(assert (=> b!517218 (= e!301830 e!301827)))

(declare-fun c!60582 () Bool)

(assert (=> b!517218 (= c!60582 (or (= lt!236808 (select (arr!15901 a!3235) j!176)) (= (bvadd lt!236808 lt!236808) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517219 () Bool)

(assert (=> b!517219 (= e!301827 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236718 #b00000000000000000000000000000000 mask!3524) (select (arr!15901 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517220 () Bool)

(assert (=> b!517220 (and (bvsge (index!19690 lt!236809) #b00000000000000000000000000000000) (bvslt (index!19690 lt!236809) (size!16265 a!3235)))))

(assert (=> b!517220 (= e!301829 (= (select (arr!15901 a!3235) (index!19690 lt!236809)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517221 () Bool)

(assert (=> b!517221 (= e!301828 (bvsge (x!48675 lt!236809) #b01111111111111111111111111111110))))

(assert (= (and d!79595 c!60580) b!517213))

(assert (= (and d!79595 (not c!60580)) b!517218))

(assert (= (and b!517218 c!60582) b!517214))

(assert (= (and b!517218 (not c!60582)) b!517219))

(assert (= (and d!79595 c!60581) b!517221))

(assert (= (and d!79595 (not c!60581)) b!517216))

(assert (= (and b!517216 res!316636) b!517215))

(assert (= (and b!517215 (not res!316637)) b!517217))

(assert (= (and b!517217 (not res!316635)) b!517220))

(declare-fun m!498693 () Bool)

(assert (=> d!79595 m!498693))

(assert (=> d!79595 m!498529))

(declare-fun m!498695 () Bool)

(assert (=> b!517215 m!498695))

(assert (=> b!517220 m!498695))

(declare-fun m!498697 () Bool)

(assert (=> b!517219 m!498697))

(assert (=> b!517219 m!498697))

(assert (=> b!517219 m!498505))

(declare-fun m!498699 () Bool)

(assert (=> b!517219 m!498699))

(assert (=> b!517217 m!498695))

(assert (=> b!516995 d!79595))

(declare-fun d!79601 () Bool)

(assert (=> d!79601 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!236815 () Unit!16000)

(declare-fun choose!38 (array!33075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16000)

(assert (=> d!79601 (= lt!236815 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79601 (validMask!0 mask!3524)))

(assert (=> d!79601 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!236815)))

(declare-fun bs!16332 () Bool)

(assert (= bs!16332 d!79601))

(assert (=> bs!16332 m!498513))

(declare-fun m!498713 () Bool)

(assert (=> bs!16332 m!498713))

(assert (=> bs!16332 m!498529))

(assert (=> b!516995 d!79601))

(declare-fun d!79609 () Bool)

(declare-fun lt!236817 () (_ BitVec 32))

(declare-fun lt!236816 () (_ BitVec 32))

(assert (=> d!79609 (= lt!236817 (bvmul (bvxor lt!236816 (bvlshr lt!236816 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79609 (= lt!236816 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79609 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316617 (let ((h!11011 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48677 (bvmul (bvxor h!11011 (bvlshr h!11011 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48677 (bvlshr x!48677 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316617 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316617 #b00000000000000000000000000000000))))))

(assert (=> d!79609 (= (toIndex!0 (select (store (arr!15901 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!236817 (bvlshr lt!236817 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516995 d!79609))

(check-sat (not bm!31661) (not b!517211) (not b!517066) (not d!79545) (not b!517219) (not b!517061) (not b!517210) (not d!79581) (not b!517106) (not d!79601) (not b!517105) (not d!79595) (not bm!31666) (not b!517107) (not bm!31671) (not b!517128) (not b!517054) (not d!79553) (not b!517127) (not b!517206))
(check-sat)
