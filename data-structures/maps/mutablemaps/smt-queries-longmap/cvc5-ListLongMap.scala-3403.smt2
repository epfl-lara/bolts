; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47086 () Bool)

(assert start!47086)

(declare-fun b!518605 () Bool)

(declare-fun res!317553 () Bool)

(declare-fun e!302603 () Bool)

(assert (=> b!518605 (=> (not res!317553) (not e!302603))))

(declare-datatypes ((array!33124 0))(
  ( (array!33125 (arr!15921 (Array (_ BitVec 32) (_ BitVec 64))) (size!16285 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33124)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518605 (= res!317553 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518606 () Bool)

(declare-fun e!302604 () Bool)

(assert (=> b!518606 (= e!302603 e!302604)))

(declare-fun res!317554 () Bool)

(assert (=> b!518606 (=> (not res!317554) (not e!302604))))

(declare-datatypes ((SeekEntryResult!4395 0))(
  ( (MissingZero!4395 (index!19771 (_ BitVec 32))) (Found!4395 (index!19772 (_ BitVec 32))) (Intermediate!4395 (undefined!5207 Bool) (index!19773 (_ BitVec 32)) (x!48772 (_ BitVec 32))) (Undefined!4395) (MissingVacant!4395 (index!19774 (_ BitVec 32))) )
))
(declare-fun lt!237493 () SeekEntryResult!4395)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518606 (= res!317554 (or (= lt!237493 (MissingZero!4395 i!1204)) (= lt!237493 (MissingVacant!4395 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33124 (_ BitVec 32)) SeekEntryResult!4395)

(assert (=> b!518606 (= lt!237493 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!518607 () Bool)

(declare-fun res!317558 () Bool)

(assert (=> b!518607 (=> (not res!317558) (not e!302604))))

(declare-datatypes ((List!10132 0))(
  ( (Nil!10129) (Cons!10128 (h!11038 (_ BitVec 64)) (t!16368 List!10132)) )
))
(declare-fun arrayNoDuplicates!0 (array!33124 (_ BitVec 32) List!10132) Bool)

(assert (=> b!518607 (= res!317558 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10129))))

(declare-fun b!518608 () Bool)

(declare-fun res!317556 () Bool)

(assert (=> b!518608 (=> (not res!317556) (not e!302603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518608 (= res!317556 (validKeyInArray!0 k!2280))))

(declare-fun b!518609 () Bool)

(declare-fun res!317549 () Bool)

(assert (=> b!518609 (=> (not res!317549) (not e!302603))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!518609 (= res!317549 (and (= (size!16285 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16285 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16285 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!317555 () Bool)

(assert (=> start!47086 (=> (not res!317555) (not e!302603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47086 (= res!317555 (validMask!0 mask!3524))))

(assert (=> start!47086 e!302603))

(assert (=> start!47086 true))

(declare-fun array_inv!11695 (array!33124) Bool)

(assert (=> start!47086 (array_inv!11695 a!3235)))

(declare-fun b!518610 () Bool)

(declare-fun res!317551 () Bool)

(assert (=> b!518610 (=> (not res!317551) (not e!302603))))

(assert (=> b!518610 (= res!317551 (validKeyInArray!0 (select (arr!15921 a!3235) j!176)))))

(declare-fun b!518611 () Bool)

(declare-fun res!317548 () Bool)

(assert (=> b!518611 (=> (not res!317548) (not e!302604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33124 (_ BitVec 32)) Bool)

(assert (=> b!518611 (= res!317548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518612 () Bool)

(declare-fun res!317557 () Bool)

(declare-fun e!302602 () Bool)

(assert (=> b!518612 (=> res!317557 e!302602)))

(declare-fun lt!237496 () SeekEntryResult!4395)

(assert (=> b!518612 (= res!317557 (or (undefined!5207 lt!237496) (not (is-Intermediate!4395 lt!237496))))))

(declare-fun b!518613 () Bool)

(declare-datatypes ((Unit!16046 0))(
  ( (Unit!16047) )
))
(declare-fun e!302608 () Unit!16046)

(declare-fun Unit!16048 () Unit!16046)

(assert (=> b!518613 (= e!302608 Unit!16048)))

(declare-fun lt!237490 () Unit!16046)

(declare-fun lt!237489 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33124 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16046)

(assert (=> b!518613 (= lt!237490 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237489 #b00000000000000000000000000000000 (index!19773 lt!237496) (x!48772 lt!237496) mask!3524))))

(declare-fun lt!237495 () array!33124)

(declare-fun lt!237491 () (_ BitVec 64))

(declare-fun res!317550 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33124 (_ BitVec 32)) SeekEntryResult!4395)

(assert (=> b!518613 (= res!317550 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237489 lt!237491 lt!237495 mask!3524) (Intermediate!4395 false (index!19773 lt!237496) (x!48772 lt!237496))))))

(declare-fun e!302606 () Bool)

(assert (=> b!518613 (=> (not res!317550) (not e!302606))))

(assert (=> b!518613 e!302606))

(declare-fun b!518614 () Bool)

(assert (=> b!518614 (= e!302604 (not e!302602))))

(declare-fun res!317552 () Bool)

(assert (=> b!518614 (=> res!317552 e!302602)))

(declare-fun lt!237497 () (_ BitVec 32))

(assert (=> b!518614 (= res!317552 (= lt!237496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237497 lt!237491 lt!237495 mask!3524)))))

(assert (=> b!518614 (= lt!237496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237489 (select (arr!15921 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518614 (= lt!237497 (toIndex!0 lt!237491 mask!3524))))

(assert (=> b!518614 (= lt!237491 (select (store (arr!15921 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!518614 (= lt!237489 (toIndex!0 (select (arr!15921 a!3235) j!176) mask!3524))))

(assert (=> b!518614 (= lt!237495 (array!33125 (store (arr!15921 a!3235) i!1204 k!2280) (size!16285 a!3235)))))

(declare-fun e!302607 () Bool)

(assert (=> b!518614 e!302607))

(declare-fun res!317547 () Bool)

(assert (=> b!518614 (=> (not res!317547) (not e!302607))))

(assert (=> b!518614 (= res!317547 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237494 () Unit!16046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16046)

(assert (=> b!518614 (= lt!237494 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518615 () Bool)

(declare-fun Unit!16049 () Unit!16046)

(assert (=> b!518615 (= e!302608 Unit!16049)))

(declare-fun b!518616 () Bool)

(assert (=> b!518616 (= e!302606 false)))

(declare-fun b!518617 () Bool)

(assert (=> b!518617 (= e!302602 (or (= (select (arr!15921 a!3235) (index!19773 lt!237496)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!19773 lt!237496) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237496) (size!16285 a!3235)))))))

(declare-fun lt!237492 () Unit!16046)

(assert (=> b!518617 (= lt!237492 e!302608)))

(declare-fun c!60824 () Bool)

(assert (=> b!518617 (= c!60824 (= (select (arr!15921 a!3235) (index!19773 lt!237496)) (select (arr!15921 a!3235) j!176)))))

(assert (=> b!518617 (and (bvslt (x!48772 lt!237496) #b01111111111111111111111111111110) (or (= (select (arr!15921 a!3235) (index!19773 lt!237496)) (select (arr!15921 a!3235) j!176)) (= (select (arr!15921 a!3235) (index!19773 lt!237496)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15921 a!3235) (index!19773 lt!237496)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518618 () Bool)

(assert (=> b!518618 (= e!302607 (= (seekEntryOrOpen!0 (select (arr!15921 a!3235) j!176) a!3235 mask!3524) (Found!4395 j!176)))))

(assert (= (and start!47086 res!317555) b!518609))

(assert (= (and b!518609 res!317549) b!518610))

(assert (= (and b!518610 res!317551) b!518608))

(assert (= (and b!518608 res!317556) b!518605))

(assert (= (and b!518605 res!317553) b!518606))

(assert (= (and b!518606 res!317554) b!518611))

(assert (= (and b!518611 res!317548) b!518607))

(assert (= (and b!518607 res!317558) b!518614))

(assert (= (and b!518614 res!317547) b!518618))

(assert (= (and b!518614 (not res!317552)) b!518612))

(assert (= (and b!518612 (not res!317557)) b!518617))

(assert (= (and b!518617 c!60824) b!518613))

(assert (= (and b!518617 (not c!60824)) b!518615))

(assert (= (and b!518613 res!317550) b!518616))

(declare-fun m!499927 () Bool)

(assert (=> b!518611 m!499927))

(declare-fun m!499929 () Bool)

(assert (=> b!518608 m!499929))

(declare-fun m!499931 () Bool)

(assert (=> b!518617 m!499931))

(declare-fun m!499933 () Bool)

(assert (=> b!518617 m!499933))

(assert (=> b!518610 m!499933))

(assert (=> b!518610 m!499933))

(declare-fun m!499935 () Bool)

(assert (=> b!518610 m!499935))

(declare-fun m!499937 () Bool)

(assert (=> b!518606 m!499937))

(declare-fun m!499939 () Bool)

(assert (=> b!518605 m!499939))

(declare-fun m!499941 () Bool)

(assert (=> b!518607 m!499941))

(declare-fun m!499943 () Bool)

(assert (=> b!518613 m!499943))

(declare-fun m!499945 () Bool)

(assert (=> b!518613 m!499945))

(assert (=> b!518618 m!499933))

(assert (=> b!518618 m!499933))

(declare-fun m!499947 () Bool)

(assert (=> b!518618 m!499947))

(assert (=> b!518614 m!499933))

(declare-fun m!499949 () Bool)

(assert (=> b!518614 m!499949))

(declare-fun m!499951 () Bool)

(assert (=> b!518614 m!499951))

(declare-fun m!499953 () Bool)

(assert (=> b!518614 m!499953))

(declare-fun m!499955 () Bool)

(assert (=> b!518614 m!499955))

(declare-fun m!499957 () Bool)

(assert (=> b!518614 m!499957))

(assert (=> b!518614 m!499933))

(declare-fun m!499959 () Bool)

(assert (=> b!518614 m!499959))

(assert (=> b!518614 m!499933))

(declare-fun m!499961 () Bool)

(assert (=> b!518614 m!499961))

(declare-fun m!499963 () Bool)

(assert (=> b!518614 m!499963))

(declare-fun m!499965 () Bool)

(assert (=> start!47086 m!499965))

(declare-fun m!499967 () Bool)

(assert (=> start!47086 m!499967))

(push 1)

(assert (not b!518613))

(assert (not b!518611))

(assert (not b!518607))

(assert (not b!518618))

(assert (not b!518614))

(assert (not start!47086))

(assert (not b!518608))

(assert (not b!518610))

(assert (not b!518605))

(assert (not b!518606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!518768 () Bool)

(declare-fun e!302698 () Bool)

(declare-fun e!302696 () Bool)

(assert (=> b!518768 (= e!302698 e!302696)))

(declare-fun c!60851 () Bool)

(assert (=> b!518768 (= c!60851 (validKeyInArray!0 (select (arr!15921 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79851 () Bool)

(declare-fun res!317657 () Bool)

(assert (=> d!79851 (=> res!317657 e!302698)))

(assert (=> d!79851 (= res!317657 (bvsge #b00000000000000000000000000000000 (size!16285 a!3235)))))

(assert (=> d!79851 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302698)))

(declare-fun b!518769 () Bool)

(declare-fun call!31730 () Bool)

(assert (=> b!518769 (= e!302696 call!31730)))

(declare-fun bm!31727 () Bool)

(assert (=> bm!31727 (= call!31730 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!518770 () Bool)

(declare-fun e!302697 () Bool)

(assert (=> b!518770 (= e!302696 e!302697)))

(declare-fun lt!237579 () (_ BitVec 64))

(assert (=> b!518770 (= lt!237579 (select (arr!15921 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237580 () Unit!16046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33124 (_ BitVec 64) (_ BitVec 32)) Unit!16046)

(assert (=> b!518770 (= lt!237580 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237579 #b00000000000000000000000000000000))))

(assert (=> b!518770 (arrayContainsKey!0 a!3235 lt!237579 #b00000000000000000000000000000000)))

(declare-fun lt!237581 () Unit!16046)

(assert (=> b!518770 (= lt!237581 lt!237580)))

(declare-fun res!317656 () Bool)

(assert (=> b!518770 (= res!317656 (= (seekEntryOrOpen!0 (select (arr!15921 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4395 #b00000000000000000000000000000000)))))

(assert (=> b!518770 (=> (not res!317656) (not e!302697))))

(declare-fun b!518771 () Bool)

(assert (=> b!518771 (= e!302697 call!31730)))

(assert (= (and d!79851 (not res!317657)) b!518768))

(assert (= (and b!518768 c!60851) b!518770))

(assert (= (and b!518768 (not c!60851)) b!518769))

(assert (= (and b!518770 res!317656) b!518771))

(assert (= (or b!518771 b!518769) bm!31727))

(declare-fun m!500097 () Bool)

(assert (=> b!518768 m!500097))

(assert (=> b!518768 m!500097))

(declare-fun m!500099 () Bool)

(assert (=> b!518768 m!500099))

(declare-fun m!500101 () Bool)

(assert (=> bm!31727 m!500101))

(assert (=> b!518770 m!500097))

(declare-fun m!500103 () Bool)

(assert (=> b!518770 m!500103))

(declare-fun m!500105 () Bool)

(assert (=> b!518770 m!500105))

(assert (=> b!518770 m!500097))

(declare-fun m!500107 () Bool)

(assert (=> b!518770 m!500107))

(assert (=> b!518611 d!79851))

(declare-fun e!302718 () SeekEntryResult!4395)

(declare-fun b!518804 () Bool)

(declare-fun lt!237600 () SeekEntryResult!4395)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33124 (_ BitVec 32)) SeekEntryResult!4395)

(assert (=> b!518804 (= e!302718 (seekKeyOrZeroReturnVacant!0 (x!48772 lt!237600) (index!19773 lt!237600) (index!19773 lt!237600) k!2280 a!3235 mask!3524))))

(declare-fun b!518805 () Bool)

(assert (=> b!518805 (= e!302718 (MissingZero!4395 (index!19773 lt!237600)))))

(declare-fun b!518806 () Bool)

(declare-fun e!302717 () SeekEntryResult!4395)

(assert (=> b!518806 (= e!302717 Undefined!4395)))

(declare-fun b!518807 () Bool)

(declare-fun e!302716 () SeekEntryResult!4395)

(assert (=> b!518807 (= e!302716 (Found!4395 (index!19773 lt!237600)))))

(declare-fun b!518808 () Bool)

(assert (=> b!518808 (= e!302717 e!302716)))

(declare-fun lt!237601 () (_ BitVec 64))

(assert (=> b!518808 (= lt!237601 (select (arr!15921 a!3235) (index!19773 lt!237600)))))

(declare-fun c!60869 () Bool)

(assert (=> b!518808 (= c!60869 (= lt!237601 k!2280))))

(declare-fun b!518809 () Bool)

(declare-fun c!60867 () Bool)

(assert (=> b!518809 (= c!60867 (= lt!237601 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518809 (= e!302716 e!302718)))

(declare-fun d!79861 () Bool)

(declare-fun lt!237599 () SeekEntryResult!4395)

(assert (=> d!79861 (and (or (is-Undefined!4395 lt!237599) (not (is-Found!4395 lt!237599)) (and (bvsge (index!19772 lt!237599) #b00000000000000000000000000000000) (bvslt (index!19772 lt!237599) (size!16285 a!3235)))) (or (is-Undefined!4395 lt!237599) (is-Found!4395 lt!237599) (not (is-MissingZero!4395 lt!237599)) (and (bvsge (index!19771 lt!237599) #b00000000000000000000000000000000) (bvslt (index!19771 lt!237599) (size!16285 a!3235)))) (or (is-Undefined!4395 lt!237599) (is-Found!4395 lt!237599) (is-MissingZero!4395 lt!237599) (not (is-MissingVacant!4395 lt!237599)) (and (bvsge (index!19774 lt!237599) #b00000000000000000000000000000000) (bvslt (index!19774 lt!237599) (size!16285 a!3235)))) (or (is-Undefined!4395 lt!237599) (ite (is-Found!4395 lt!237599) (= (select (arr!15921 a!3235) (index!19772 lt!237599)) k!2280) (ite (is-MissingZero!4395 lt!237599) (= (select (arr!15921 a!3235) (index!19771 lt!237599)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4395 lt!237599) (= (select (arr!15921 a!3235) (index!19774 lt!237599)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79861 (= lt!237599 e!302717)))

(declare-fun c!60868 () Bool)

(assert (=> d!79861 (= c!60868 (and (is-Intermediate!4395 lt!237600) (undefined!5207 lt!237600)))))

(assert (=> d!79861 (= lt!237600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79861 (validMask!0 mask!3524)))

(assert (=> d!79861 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237599)))

(assert (= (and d!79861 c!60868) b!518806))

(assert (= (and d!79861 (not c!60868)) b!518808))

(assert (= (and b!518808 c!60869) b!518807))

(assert (= (and b!518808 (not c!60869)) b!518809))

(assert (= (and b!518809 c!60867) b!518805))

(assert (= (and b!518809 (not c!60867)) b!518804))

(declare-fun m!500121 () Bool)

(assert (=> b!518804 m!500121))

(declare-fun m!500123 () Bool)

(assert (=> b!518808 m!500123))

(assert (=> d!79861 m!499965))

(declare-fun m!500125 () Bool)

(assert (=> d!79861 m!500125))

(declare-fun m!500127 () Bool)

(assert (=> d!79861 m!500127))

(declare-fun m!500129 () Bool)

(assert (=> d!79861 m!500129))

(declare-fun m!500131 () Bool)

(assert (=> d!79861 m!500131))

(assert (=> d!79861 m!500125))

(declare-fun m!500133 () Bool)

(assert (=> d!79861 m!500133))

(assert (=> b!518606 d!79861))

(declare-fun d!79873 () Bool)

(declare-fun res!317669 () Bool)

(declare-fun e!302730 () Bool)

(assert (=> d!79873 (=> res!317669 e!302730)))

(assert (=> d!79873 (= res!317669 (= (select (arr!15921 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79873 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!302730)))

(declare-fun b!518823 () Bool)

(declare-fun e!302731 () Bool)

(assert (=> b!518823 (= e!302730 e!302731)))

(declare-fun res!317670 () Bool)

(assert (=> b!518823 (=> (not res!317670) (not e!302731))))

(assert (=> b!518823 (= res!317670 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16285 a!3235)))))

(declare-fun b!518824 () Bool)

(assert (=> b!518824 (= e!302731 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79873 (not res!317669)) b!518823))

(assert (= (and b!518823 res!317670) b!518824))

(assert (=> d!79873 m!500097))

(declare-fun m!500139 () Bool)

(assert (=> b!518824 m!500139))

(assert (=> b!518605 d!79873))

(declare-fun bm!31735 () Bool)

(declare-fun call!31738 () Bool)

(declare-fun c!60877 () Bool)

(assert (=> bm!31735 (= call!31738 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60877 (Cons!10128 (select (arr!15921 a!3235) #b00000000000000000000000000000000) Nil!10129) Nil!10129)))))

(declare-fun b!518849 () Bool)

(declare-fun e!302751 () Bool)

(declare-fun e!302753 () Bool)

(assert (=> b!518849 (= e!302751 e!302753)))

(assert (=> b!518849 (= c!60877 (validKeyInArray!0 (select (arr!15921 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518850 () Bool)

(declare-fun e!302752 () Bool)

(declare-fun contains!2758 (List!10132 (_ BitVec 64)) Bool)

(assert (=> b!518850 (= e!302752 (contains!2758 Nil!10129 (select (arr!15921 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518851 () Bool)

(declare-fun e!302754 () Bool)

(assert (=> b!518851 (= e!302754 e!302751)))

(declare-fun res!317686 () Bool)

(assert (=> b!518851 (=> (not res!317686) (not e!302751))))

(assert (=> b!518851 (= res!317686 (not e!302752))))

(declare-fun res!317687 () Bool)

(assert (=> b!518851 (=> (not res!317687) (not e!302752))))

(assert (=> b!518851 (= res!317687 (validKeyInArray!0 (select (arr!15921 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518852 () Bool)

(assert (=> b!518852 (= e!302753 call!31738)))

(declare-fun b!518853 () Bool)

(assert (=> b!518853 (= e!302753 call!31738)))

(declare-fun d!79877 () Bool)

(declare-fun res!317685 () Bool)

(assert (=> d!79877 (=> res!317685 e!302754)))

(assert (=> d!79877 (= res!317685 (bvsge #b00000000000000000000000000000000 (size!16285 a!3235)))))

(assert (=> d!79877 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10129) e!302754)))

(assert (= (and d!79877 (not res!317685)) b!518851))

(assert (= (and b!518851 res!317687) b!518850))

(assert (= (and b!518851 res!317686) b!518849))

(assert (= (and b!518849 c!60877) b!518853))

(assert (= (and b!518849 (not c!60877)) b!518852))

(assert (= (or b!518853 b!518852) bm!31735))

(assert (=> bm!31735 m!500097))

(declare-fun m!500153 () Bool)

(assert (=> bm!31735 m!500153))

(assert (=> b!518849 m!500097))

(assert (=> b!518849 m!500097))

(assert (=> b!518849 m!500099))

(assert (=> b!518850 m!500097))

(assert (=> b!518850 m!500097))

(declare-fun m!500155 () Bool)

(assert (=> b!518850 m!500155))

(assert (=> b!518851 m!500097))

(assert (=> b!518851 m!500097))

(assert (=> b!518851 m!500099))

(assert (=> b!518607 d!79877))

(declare-fun lt!237613 () SeekEntryResult!4395)

(declare-fun b!518854 () Bool)

(declare-fun e!302757 () SeekEntryResult!4395)

(assert (=> b!518854 (= e!302757 (seekKeyOrZeroReturnVacant!0 (x!48772 lt!237613) (index!19773 lt!237613) (index!19773 lt!237613) (select (arr!15921 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!518855 () Bool)

(assert (=> b!518855 (= e!302757 (MissingZero!4395 (index!19773 lt!237613)))))

(declare-fun b!518856 () Bool)

(declare-fun e!302756 () SeekEntryResult!4395)

(assert (=> b!518856 (= e!302756 Undefined!4395)))

(declare-fun b!518857 () Bool)

(declare-fun e!302755 () SeekEntryResult!4395)

(assert (=> b!518857 (= e!302755 (Found!4395 (index!19773 lt!237613)))))

(declare-fun b!518858 () Bool)

(assert (=> b!518858 (= e!302756 e!302755)))

(declare-fun lt!237614 () (_ BitVec 64))

(assert (=> b!518858 (= lt!237614 (select (arr!15921 a!3235) (index!19773 lt!237613)))))

(declare-fun c!60880 () Bool)

(assert (=> b!518858 (= c!60880 (= lt!237614 (select (arr!15921 a!3235) j!176)))))

(declare-fun b!518859 () Bool)

(declare-fun c!60878 () Bool)

(assert (=> b!518859 (= c!60878 (= lt!237614 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518859 (= e!302755 e!302757)))

(declare-fun d!79881 () Bool)

(declare-fun lt!237612 () SeekEntryResult!4395)

(assert (=> d!79881 (and (or (is-Undefined!4395 lt!237612) (not (is-Found!4395 lt!237612)) (and (bvsge (index!19772 lt!237612) #b00000000000000000000000000000000) (bvslt (index!19772 lt!237612) (size!16285 a!3235)))) (or (is-Undefined!4395 lt!237612) (is-Found!4395 lt!237612) (not (is-MissingZero!4395 lt!237612)) (and (bvsge (index!19771 lt!237612) #b00000000000000000000000000000000) (bvslt (index!19771 lt!237612) (size!16285 a!3235)))) (or (is-Undefined!4395 lt!237612) (is-Found!4395 lt!237612) (is-MissingZero!4395 lt!237612) (not (is-MissingVacant!4395 lt!237612)) (and (bvsge (index!19774 lt!237612) #b00000000000000000000000000000000) (bvslt (index!19774 lt!237612) (size!16285 a!3235)))) (or (is-Undefined!4395 lt!237612) (ite (is-Found!4395 lt!237612) (= (select (arr!15921 a!3235) (index!19772 lt!237612)) (select (arr!15921 a!3235) j!176)) (ite (is-MissingZero!4395 lt!237612) (= (select (arr!15921 a!3235) (index!19771 lt!237612)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4395 lt!237612) (= (select (arr!15921 a!3235) (index!19774 lt!237612)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79881 (= lt!237612 e!302756)))

(declare-fun c!60879 () Bool)

(assert (=> d!79881 (= c!60879 (and (is-Intermediate!4395 lt!237613) (undefined!5207 lt!237613)))))

(assert (=> d!79881 (= lt!237613 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15921 a!3235) j!176) mask!3524) (select (arr!15921 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79881 (validMask!0 mask!3524)))

(assert (=> d!79881 (= (seekEntryOrOpen!0 (select (arr!15921 a!3235) j!176) a!3235 mask!3524) lt!237612)))

(assert (= (and d!79881 c!60879) b!518856))

(assert (= (and d!79881 (not c!60879)) b!518858))

(assert (= (and b!518858 c!60880) b!518857))

(assert (= (and b!518858 (not c!60880)) b!518859))

(assert (= (and b!518859 c!60878) b!518855))

(assert (= (and b!518859 (not c!60878)) b!518854))

(assert (=> b!518854 m!499933))

(declare-fun m!500159 () Bool)

(assert (=> b!518854 m!500159))

(declare-fun m!500161 () Bool)

(assert (=> b!518858 m!500161))

(assert (=> d!79881 m!499965))

(assert (=> d!79881 m!499933))

(assert (=> d!79881 m!499959))

(declare-fun m!500165 () Bool)

(assert (=> d!79881 m!500165))

(declare-fun m!500167 () Bool)

(assert (=> d!79881 m!500167))

(declare-fun m!500169 () Bool)

(assert (=> d!79881 m!500169))

(assert (=> d!79881 m!499959))

(assert (=> d!79881 m!499933))

(declare-fun m!500171 () Bool)

(assert (=> d!79881 m!500171))

(assert (=> b!518618 d!79881))

(declare-fun d!79885 () Bool)

(assert (=> d!79885 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47086 d!79885))

(declare-fun d!79887 () Bool)

(assert (=> d!79887 (= (array_inv!11695 a!3235) (bvsge (size!16285 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47086 d!79887))

(declare-fun d!79889 () Bool)

(declare-fun lt!237634 () (_ BitVec 32))

(declare-fun lt!237633 () (_ BitVec 32))

(assert (=> d!79889 (= lt!237634 (bvmul (bvxor lt!237633 (bvlshr lt!237633 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79889 (= lt!237633 ((_ extract 31 0) (bvand (bvxor (select (arr!15921 a!3235) j!176) (bvlshr (select (arr!15921 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79889 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317700 (let ((h!11041 ((_ extract 31 0) (bvand (bvxor (select (arr!15921 a!3235) j!176) (bvlshr (select (arr!15921 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48777 (bvmul (bvxor h!11041 (bvlshr h!11041 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48777 (bvlshr x!48777 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317700 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317700 #b00000000000000000000000000000000))))))

(assert (=> d!79889 (= (toIndex!0 (select (arr!15921 a!3235) j!176) mask!3524) (bvand (bvxor lt!237634 (bvlshr lt!237634 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518614 d!79889))

(declare-fun b!518900 () Bool)

(declare-fun e!302783 () Bool)

(declare-fun e!302781 () Bool)

(assert (=> b!518900 (= e!302783 e!302781)))

(declare-fun c!60895 () Bool)

(assert (=> b!518900 (= c!60895 (validKeyInArray!0 (select (arr!15921 a!3235) j!176)))))

(declare-fun d!79893 () Bool)

(declare-fun res!317703 () Bool)

(assert (=> d!79893 (=> res!317703 e!302783)))

(assert (=> d!79893 (= res!317703 (bvsge j!176 (size!16285 a!3235)))))

(assert (=> d!79893 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302783)))

(declare-fun b!518901 () Bool)

(declare-fun call!31740 () Bool)

(assert (=> b!518901 (= e!302781 call!31740)))

(declare-fun bm!31737 () Bool)

(assert (=> bm!31737 (= call!31740 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!518902 () Bool)

(declare-fun e!302782 () Bool)

(assert (=> b!518902 (= e!302781 e!302782)))

(declare-fun lt!237635 () (_ BitVec 64))

(assert (=> b!518902 (= lt!237635 (select (arr!15921 a!3235) j!176))))

(declare-fun lt!237636 () Unit!16046)

(assert (=> b!518902 (= lt!237636 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237635 j!176))))

(assert (=> b!518902 (arrayContainsKey!0 a!3235 lt!237635 #b00000000000000000000000000000000)))

(declare-fun lt!237637 () Unit!16046)

(assert (=> b!518902 (= lt!237637 lt!237636)))

(declare-fun res!317702 () Bool)

(assert (=> b!518902 (= res!317702 (= (seekEntryOrOpen!0 (select (arr!15921 a!3235) j!176) a!3235 mask!3524) (Found!4395 j!176)))))

(assert (=> b!518902 (=> (not res!317702) (not e!302782))))

(declare-fun b!518903 () Bool)

(assert (=> b!518903 (= e!302782 call!31740)))

(assert (= (and d!79893 (not res!317703)) b!518900))

(assert (= (and b!518900 c!60895) b!518902))

(assert (= (and b!518900 (not c!60895)) b!518901))

(assert (= (and b!518902 res!317702) b!518903))

(assert (= (or b!518903 b!518901) bm!31737))

(assert (=> b!518900 m!499933))

(assert (=> b!518900 m!499933))

(assert (=> b!518900 m!499935))

(declare-fun m!500181 () Bool)

(assert (=> bm!31737 m!500181))

(assert (=> b!518902 m!499933))

(declare-fun m!500183 () Bool)

(assert (=> b!518902 m!500183))

(declare-fun m!500185 () Bool)

(assert (=> b!518902 m!500185))

(assert (=> b!518902 m!499933))

(assert (=> b!518902 m!499947))

(assert (=> b!518614 d!79893))

(declare-fun d!79897 () Bool)

(declare-fun e!302829 () Bool)

(assert (=> d!79897 e!302829))

(declare-fun c!60920 () Bool)

(declare-fun lt!237674 () SeekEntryResult!4395)

(assert (=> d!79897 (= c!60920 (and (is-Intermediate!4395 lt!237674) (undefined!5207 lt!237674)))))

(declare-fun e!302826 () SeekEntryResult!4395)

(assert (=> d!79897 (= lt!237674 e!302826)))

(declare-fun c!60918 () Bool)

(assert (=> d!79897 (= c!60918 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237675 () (_ BitVec 64))

(assert (=> d!79897 (= lt!237675 (select (arr!15921 lt!237495) lt!237497))))

(assert (=> d!79897 (validMask!0 mask!3524)))

(assert (=> d!79897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237497 lt!237491 lt!237495 mask!3524) lt!237674)))

(declare-fun b!518976 () Bool)

(assert (=> b!518976 (and (bvsge (index!19773 lt!237674) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237674) (size!16285 lt!237495)))))

(declare-fun e!302830 () Bool)

(assert (=> b!518976 (= e!302830 (= (select (arr!15921 lt!237495) (index!19773 lt!237674)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302827 () SeekEntryResult!4395)

(declare-fun b!518977 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518977 (= e!302827 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237497 #b00000000000000000000000000000000 mask!3524) lt!237491 lt!237495 mask!3524))))

(declare-fun b!518978 () Bool)

(assert (=> b!518978 (= e!302829 (bvsge (x!48772 lt!237674) #b01111111111111111111111111111110))))

(declare-fun b!518979 () Bool)

(assert (=> b!518979 (= e!302827 (Intermediate!4395 false lt!237497 #b00000000000000000000000000000000))))

(declare-fun b!518980 () Bool)

(assert (=> b!518980 (= e!302826 e!302827)))

(declare-fun c!60919 () Bool)

(assert (=> b!518980 (= c!60919 (or (= lt!237675 lt!237491) (= (bvadd lt!237675 lt!237675) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518981 () Bool)

(assert (=> b!518981 (= e!302826 (Intermediate!4395 true lt!237497 #b00000000000000000000000000000000))))

(declare-fun b!518982 () Bool)

(assert (=> b!518982 (and (bvsge (index!19773 lt!237674) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237674) (size!16285 lt!237495)))))

(declare-fun res!317735 () Bool)

(assert (=> b!518982 (= res!317735 (= (select (arr!15921 lt!237495) (index!19773 lt!237674)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518982 (=> res!317735 e!302830)))

(declare-fun b!518983 () Bool)

(declare-fun e!302828 () Bool)

(assert (=> b!518983 (= e!302829 e!302828)))

(declare-fun res!317733 () Bool)

(assert (=> b!518983 (= res!317733 (and (is-Intermediate!4395 lt!237674) (not (undefined!5207 lt!237674)) (bvslt (x!48772 lt!237674) #b01111111111111111111111111111110) (bvsge (x!48772 lt!237674) #b00000000000000000000000000000000) (bvsge (x!48772 lt!237674) #b00000000000000000000000000000000)))))

(assert (=> b!518983 (=> (not res!317733) (not e!302828))))

(declare-fun b!518984 () Bool)

(assert (=> b!518984 (and (bvsge (index!19773 lt!237674) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237674) (size!16285 lt!237495)))))

(declare-fun res!317734 () Bool)

(assert (=> b!518984 (= res!317734 (= (select (arr!15921 lt!237495) (index!19773 lt!237674)) lt!237491))))

(assert (=> b!518984 (=> res!317734 e!302830)))

(assert (=> b!518984 (= e!302828 e!302830)))

(assert (= (and d!79897 c!60918) b!518981))

(assert (= (and d!79897 (not c!60918)) b!518980))

(assert (= (and b!518980 c!60919) b!518979))

(assert (= (and b!518980 (not c!60919)) b!518977))

(assert (= (and d!79897 c!60920) b!518978))

(assert (= (and d!79897 (not c!60920)) b!518983))

(assert (= (and b!518983 res!317733) b!518984))

(assert (= (and b!518984 (not res!317734)) b!518982))

(assert (= (and b!518982 (not res!317735)) b!518976))

(declare-fun m!500233 () Bool)

(assert (=> d!79897 m!500233))

(assert (=> d!79897 m!499965))

(declare-fun m!500235 () Bool)

(assert (=> b!518982 m!500235))

(declare-fun m!500237 () Bool)

(assert (=> b!518977 m!500237))

(assert (=> b!518977 m!500237))

(declare-fun m!500239 () Bool)

(assert (=> b!518977 m!500239))

(assert (=> b!518984 m!500235))

(assert (=> b!518976 m!500235))

(assert (=> b!518614 d!79897))

(declare-fun d!79919 () Bool)

(assert (=> d!79919 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237678 () Unit!16046)

(declare-fun choose!38 (array!33124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16046)

(assert (=> d!79919 (= lt!237678 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79919 (validMask!0 mask!3524)))

(assert (=> d!79919 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237678)))

(declare-fun bs!16364 () Bool)

(assert (= bs!16364 d!79919))

(assert (=> bs!16364 m!499961))

(declare-fun m!500241 () Bool)

(assert (=> bs!16364 m!500241))

(assert (=> bs!16364 m!499965))

(assert (=> b!518614 d!79919))

(declare-fun d!79921 () Bool)

(declare-fun e!302834 () Bool)

(assert (=> d!79921 e!302834))

(declare-fun c!60923 () Bool)

(declare-fun lt!237679 () SeekEntryResult!4395)

(assert (=> d!79921 (= c!60923 (and (is-Intermediate!4395 lt!237679) (undefined!5207 lt!237679)))))

(declare-fun e!302831 () SeekEntryResult!4395)

(assert (=> d!79921 (= lt!237679 e!302831)))

(declare-fun c!60921 () Bool)

(assert (=> d!79921 (= c!60921 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237680 () (_ BitVec 64))

(assert (=> d!79921 (= lt!237680 (select (arr!15921 a!3235) lt!237489))))

(assert (=> d!79921 (validMask!0 mask!3524)))

(assert (=> d!79921 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237489 (select (arr!15921 a!3235) j!176) a!3235 mask!3524) lt!237679)))

(declare-fun b!518985 () Bool)

(assert (=> b!518985 (and (bvsge (index!19773 lt!237679) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237679) (size!16285 a!3235)))))

(declare-fun e!302835 () Bool)

(assert (=> b!518985 (= e!302835 (= (select (arr!15921 a!3235) (index!19773 lt!237679)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302832 () SeekEntryResult!4395)

(declare-fun b!518986 () Bool)

(assert (=> b!518986 (= e!302832 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237489 #b00000000000000000000000000000000 mask!3524) (select (arr!15921 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!518987 () Bool)

(assert (=> b!518987 (= e!302834 (bvsge (x!48772 lt!237679) #b01111111111111111111111111111110))))

(declare-fun b!518988 () Bool)

(assert (=> b!518988 (= e!302832 (Intermediate!4395 false lt!237489 #b00000000000000000000000000000000))))

(declare-fun b!518989 () Bool)

(assert (=> b!518989 (= e!302831 e!302832)))

(declare-fun c!60922 () Bool)

(assert (=> b!518989 (= c!60922 (or (= lt!237680 (select (arr!15921 a!3235) j!176)) (= (bvadd lt!237680 lt!237680) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518990 () Bool)

(assert (=> b!518990 (= e!302831 (Intermediate!4395 true lt!237489 #b00000000000000000000000000000000))))

(declare-fun b!518991 () Bool)

(assert (=> b!518991 (and (bvsge (index!19773 lt!237679) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237679) (size!16285 a!3235)))))

(declare-fun res!317738 () Bool)

(assert (=> b!518991 (= res!317738 (= (select (arr!15921 a!3235) (index!19773 lt!237679)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518991 (=> res!317738 e!302835)))

(declare-fun b!518992 () Bool)

(declare-fun e!302833 () Bool)

(assert (=> b!518992 (= e!302834 e!302833)))

(declare-fun res!317736 () Bool)

(assert (=> b!518992 (= res!317736 (and (is-Intermediate!4395 lt!237679) (not (undefined!5207 lt!237679)) (bvslt (x!48772 lt!237679) #b01111111111111111111111111111110) (bvsge (x!48772 lt!237679) #b00000000000000000000000000000000) (bvsge (x!48772 lt!237679) #b00000000000000000000000000000000)))))

(assert (=> b!518992 (=> (not res!317736) (not e!302833))))

(declare-fun b!518993 () Bool)

(assert (=> b!518993 (and (bvsge (index!19773 lt!237679) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237679) (size!16285 a!3235)))))

(declare-fun res!317737 () Bool)

(assert (=> b!518993 (= res!317737 (= (select (arr!15921 a!3235) (index!19773 lt!237679)) (select (arr!15921 a!3235) j!176)))))

(assert (=> b!518993 (=> res!317737 e!302835)))

(assert (=> b!518993 (= e!302833 e!302835)))

(assert (= (and d!79921 c!60921) b!518990))

(assert (= (and d!79921 (not c!60921)) b!518989))

(assert (= (and b!518989 c!60922) b!518988))

(assert (= (and b!518989 (not c!60922)) b!518986))

(assert (= (and d!79921 c!60923) b!518987))

(assert (= (and d!79921 (not c!60923)) b!518992))

(assert (= (and b!518992 res!317736) b!518993))

(assert (= (and b!518993 (not res!317737)) b!518991))

(assert (= (and b!518991 (not res!317738)) b!518985))

(declare-fun m!500243 () Bool)

(assert (=> d!79921 m!500243))

(assert (=> d!79921 m!499965))

(declare-fun m!500245 () Bool)

(assert (=> b!518991 m!500245))

(declare-fun m!500247 () Bool)

(assert (=> b!518986 m!500247))

(assert (=> b!518986 m!500247))

(assert (=> b!518986 m!499933))

(declare-fun m!500249 () Bool)

(assert (=> b!518986 m!500249))

(assert (=> b!518993 m!500245))

(assert (=> b!518985 m!500245))

(assert (=> b!518614 d!79921))

(declare-fun d!79925 () Bool)

(declare-fun lt!237682 () (_ BitVec 32))

(declare-fun lt!237681 () (_ BitVec 32))

(assert (=> d!79925 (= lt!237682 (bvmul (bvxor lt!237681 (bvlshr lt!237681 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79925 (= lt!237681 ((_ extract 31 0) (bvand (bvxor lt!237491 (bvlshr lt!237491 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79925 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317700 (let ((h!11041 ((_ extract 31 0) (bvand (bvxor lt!237491 (bvlshr lt!237491 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48777 (bvmul (bvxor h!11041 (bvlshr h!11041 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48777 (bvlshr x!48777 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317700 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317700 #b00000000000000000000000000000000))))))

(assert (=> d!79925 (= (toIndex!0 lt!237491 mask!3524) (bvand (bvxor lt!237682 (bvlshr lt!237682 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518614 d!79925))

(declare-fun d!79929 () Bool)

(declare-fun e!302847 () Bool)

(assert (=> d!79929 e!302847))

(declare-fun res!317747 () Bool)

(assert (=> d!79929 (=> (not res!317747) (not e!302847))))

(assert (=> d!79929 (= res!317747 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16285 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16285 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16285 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16285 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16285 a!3235))))))

(declare-fun lt!237688 () Unit!16046)

(declare-fun choose!47 (array!33124 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16046)

(assert (=> d!79929 (= lt!237688 (choose!47 a!3235 i!1204 k!2280 j!176 lt!237489 #b00000000000000000000000000000000 (index!19773 lt!237496) (x!48772 lt!237496) mask!3524))))

(assert (=> d!79929 (validMask!0 mask!3524)))

(assert (=> d!79929 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237489 #b00000000000000000000000000000000 (index!19773 lt!237496) (x!48772 lt!237496) mask!3524) lt!237688)))

(declare-fun b!519008 () Bool)

(assert (=> b!519008 (= e!302847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237489 (select (store (arr!15921 a!3235) i!1204 k!2280) j!176) (array!33125 (store (arr!15921 a!3235) i!1204 k!2280) (size!16285 a!3235)) mask!3524) (Intermediate!4395 false (index!19773 lt!237496) (x!48772 lt!237496))))))

(assert (= (and d!79929 res!317747) b!519008))

(declare-fun m!500267 () Bool)

(assert (=> d!79929 m!500267))

(assert (=> d!79929 m!499965))

(assert (=> b!519008 m!499951))

(assert (=> b!519008 m!499955))

(assert (=> b!519008 m!499955))

(declare-fun m!500269 () Bool)

(assert (=> b!519008 m!500269))

(assert (=> b!518613 d!79929))

(declare-fun d!79935 () Bool)

(declare-fun e!302851 () Bool)

(assert (=> d!79935 e!302851))

(declare-fun c!60929 () Bool)

(declare-fun lt!237689 () SeekEntryResult!4395)

(assert (=> d!79935 (= c!60929 (and (is-Intermediate!4395 lt!237689) (undefined!5207 lt!237689)))))

(declare-fun e!302848 () SeekEntryResult!4395)

(assert (=> d!79935 (= lt!237689 e!302848)))

(declare-fun c!60927 () Bool)

(assert (=> d!79935 (= c!60927 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237690 () (_ BitVec 64))

(assert (=> d!79935 (= lt!237690 (select (arr!15921 lt!237495) lt!237489))))

(assert (=> d!79935 (validMask!0 mask!3524)))

(assert (=> d!79935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237489 lt!237491 lt!237495 mask!3524) lt!237689)))

(declare-fun b!519009 () Bool)

(assert (=> b!519009 (and (bvsge (index!19773 lt!237689) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237689) (size!16285 lt!237495)))))

(declare-fun e!302852 () Bool)

(assert (=> b!519009 (= e!302852 (= (select (arr!15921 lt!237495) (index!19773 lt!237689)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302849 () SeekEntryResult!4395)

(declare-fun b!519010 () Bool)

(assert (=> b!519010 (= e!302849 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237489 #b00000000000000000000000000000000 mask!3524) lt!237491 lt!237495 mask!3524))))

(declare-fun b!519011 () Bool)

(assert (=> b!519011 (= e!302851 (bvsge (x!48772 lt!237689) #b01111111111111111111111111111110))))

(declare-fun b!519012 () Bool)

(assert (=> b!519012 (= e!302849 (Intermediate!4395 false lt!237489 #b00000000000000000000000000000000))))

(declare-fun b!519013 () Bool)

(assert (=> b!519013 (= e!302848 e!302849)))

(declare-fun c!60928 () Bool)

(assert (=> b!519013 (= c!60928 (or (= lt!237690 lt!237491) (= (bvadd lt!237690 lt!237690) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519014 () Bool)

(assert (=> b!519014 (= e!302848 (Intermediate!4395 true lt!237489 #b00000000000000000000000000000000))))

(declare-fun b!519015 () Bool)

(assert (=> b!519015 (and (bvsge (index!19773 lt!237689) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237689) (size!16285 lt!237495)))))

(declare-fun res!317750 () Bool)

(assert (=> b!519015 (= res!317750 (= (select (arr!15921 lt!237495) (index!19773 lt!237689)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519015 (=> res!317750 e!302852)))

(declare-fun b!519016 () Bool)

(declare-fun e!302850 () Bool)

(assert (=> b!519016 (= e!302851 e!302850)))

(declare-fun res!317748 () Bool)

(assert (=> b!519016 (= res!317748 (and (is-Intermediate!4395 lt!237689) (not (undefined!5207 lt!237689)) (bvslt (x!48772 lt!237689) #b01111111111111111111111111111110) (bvsge (x!48772 lt!237689) #b00000000000000000000000000000000) (bvsge (x!48772 lt!237689) #b00000000000000000000000000000000)))))

(assert (=> b!519016 (=> (not res!317748) (not e!302850))))

(declare-fun b!519017 () Bool)

(assert (=> b!519017 (and (bvsge (index!19773 lt!237689) #b00000000000000000000000000000000) (bvslt (index!19773 lt!237689) (size!16285 lt!237495)))))

(declare-fun res!317749 () Bool)

(assert (=> b!519017 (= res!317749 (= (select (arr!15921 lt!237495) (index!19773 lt!237689)) lt!237491))))

(assert (=> b!519017 (=> res!317749 e!302852)))

(assert (=> b!519017 (= e!302850 e!302852)))

(assert (= (and d!79935 c!60927) b!519014))

(assert (= (and d!79935 (not c!60927)) b!519013))

(assert (= (and b!519013 c!60928) b!519012))

(assert (= (and b!519013 (not c!60928)) b!519010))

(assert (= (and d!79935 c!60929) b!519011))

(assert (= (and d!79935 (not c!60929)) b!519016))

(assert (= (and b!519016 res!317748) b!519017))

(assert (= (and b!519017 (not res!317749)) b!519015))

(assert (= (and b!519015 (not res!317750)) b!519009))

(declare-fun m!500271 () Bool)

(assert (=> d!79935 m!500271))

(assert (=> d!79935 m!499965))

(declare-fun m!500273 () Bool)

(assert (=> b!519015 m!500273))

(assert (=> b!519010 m!500247))

(assert (=> b!519010 m!500247))

(declare-fun m!500275 () Bool)

(assert (=> b!519010 m!500275))

(assert (=> b!519017 m!500273))

(assert (=> b!519009 m!500273))

(assert (=> b!518613 d!79935))

(declare-fun d!79937 () Bool)

(assert (=> d!79937 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518608 d!79937))

(declare-fun d!79939 () Bool)

(assert (=> d!79939 (= (validKeyInArray!0 (select (arr!15921 a!3235) j!176)) (and (not (= (select (arr!15921 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15921 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518610 d!79939))

(push 1)

