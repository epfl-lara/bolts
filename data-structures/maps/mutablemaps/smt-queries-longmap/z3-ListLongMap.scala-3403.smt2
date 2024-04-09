; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47088 () Bool)

(assert start!47088)

(declare-fun b!518647 () Bool)

(declare-datatypes ((Unit!16050 0))(
  ( (Unit!16051) )
))
(declare-fun e!302629 () Unit!16050)

(declare-fun Unit!16052 () Unit!16050)

(assert (=> b!518647 (= e!302629 Unit!16052)))

(declare-fun res!317592 () Bool)

(declare-fun e!302625 () Bool)

(assert (=> start!47088 (=> (not res!317592) (not e!302625))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47088 (= res!317592 (validMask!0 mask!3524))))

(assert (=> start!47088 e!302625))

(assert (=> start!47088 true))

(declare-datatypes ((array!33126 0))(
  ( (array!33127 (arr!15922 (Array (_ BitVec 32) (_ BitVec 64))) (size!16286 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33126)

(declare-fun array_inv!11696 (array!33126) Bool)

(assert (=> start!47088 (array_inv!11696 a!3235)))

(declare-fun b!518648 () Bool)

(declare-fun e!302628 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4396 0))(
  ( (MissingZero!4396 (index!19775 (_ BitVec 32))) (Found!4396 (index!19776 (_ BitVec 32))) (Intermediate!4396 (undefined!5208 Bool) (index!19777 (_ BitVec 32)) (x!48773 (_ BitVec 32))) (Undefined!4396) (MissingVacant!4396 (index!19778 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33126 (_ BitVec 32)) SeekEntryResult!4396)

(assert (=> b!518648 (= e!302628 (= (seekEntryOrOpen!0 (select (arr!15922 a!3235) j!176) a!3235 mask!3524) (Found!4396 j!176)))))

(declare-fun b!518649 () Bool)

(declare-fun e!302623 () Bool)

(assert (=> b!518649 (= e!302625 e!302623)))

(declare-fun res!317584 () Bool)

(assert (=> b!518649 (=> (not res!317584) (not e!302623))))

(declare-fun lt!237518 () SeekEntryResult!4396)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518649 (= res!317584 (or (= lt!237518 (MissingZero!4396 i!1204)) (= lt!237518 (MissingVacant!4396 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!518649 (= lt!237518 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!518650 () Bool)

(declare-fun e!302624 () Bool)

(assert (=> b!518650 (= e!302624 false)))

(declare-fun b!518651 () Bool)

(declare-fun res!317588 () Bool)

(declare-fun e!302626 () Bool)

(assert (=> b!518651 (=> res!317588 e!302626)))

(declare-fun lt!237523 () SeekEntryResult!4396)

(get-info :version)

(assert (=> b!518651 (= res!317588 (or (undefined!5208 lt!237523) (not ((_ is Intermediate!4396) lt!237523))))))

(declare-fun b!518652 () Bool)

(declare-fun res!317589 () Bool)

(assert (=> b!518652 (=> (not res!317589) (not e!302625))))

(declare-fun arrayContainsKey!0 (array!33126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518652 (= res!317589 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518653 () Bool)

(assert (=> b!518653 (= e!302626 (or (= (select (arr!15922 a!3235) (index!19777 lt!237523)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!19777 lt!237523) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237523) (size!16286 a!3235)))))))

(declare-fun lt!237521 () Unit!16050)

(assert (=> b!518653 (= lt!237521 e!302629)))

(declare-fun c!60827 () Bool)

(assert (=> b!518653 (= c!60827 (= (select (arr!15922 a!3235) (index!19777 lt!237523)) (select (arr!15922 a!3235) j!176)))))

(assert (=> b!518653 (and (bvslt (x!48773 lt!237523) #b01111111111111111111111111111110) (or (= (select (arr!15922 a!3235) (index!19777 lt!237523)) (select (arr!15922 a!3235) j!176)) (= (select (arr!15922 a!3235) (index!19777 lt!237523)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15922 a!3235) (index!19777 lt!237523)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518654 () Bool)

(declare-fun res!317587 () Bool)

(assert (=> b!518654 (=> (not res!317587) (not e!302623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33126 (_ BitVec 32)) Bool)

(assert (=> b!518654 (= res!317587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518655 () Bool)

(assert (=> b!518655 (= e!302623 (not e!302626))))

(declare-fun res!317585 () Bool)

(assert (=> b!518655 (=> res!317585 e!302626)))

(declare-fun lt!237524 () (_ BitVec 64))

(declare-fun lt!237522 () (_ BitVec 32))

(declare-fun lt!237519 () array!33126)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33126 (_ BitVec 32)) SeekEntryResult!4396)

(assert (=> b!518655 (= res!317585 (= lt!237523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237522 lt!237524 lt!237519 mask!3524)))))

(declare-fun lt!237517 () (_ BitVec 32))

(assert (=> b!518655 (= lt!237523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237517 (select (arr!15922 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518655 (= lt!237522 (toIndex!0 lt!237524 mask!3524))))

(assert (=> b!518655 (= lt!237524 (select (store (arr!15922 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!518655 (= lt!237517 (toIndex!0 (select (arr!15922 a!3235) j!176) mask!3524))))

(assert (=> b!518655 (= lt!237519 (array!33127 (store (arr!15922 a!3235) i!1204 k0!2280) (size!16286 a!3235)))))

(assert (=> b!518655 e!302628))

(declare-fun res!317591 () Bool)

(assert (=> b!518655 (=> (not res!317591) (not e!302628))))

(assert (=> b!518655 (= res!317591 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237516 () Unit!16050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16050)

(assert (=> b!518655 (= lt!237516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518656 () Bool)

(declare-fun res!317590 () Bool)

(assert (=> b!518656 (=> (not res!317590) (not e!302625))))

(assert (=> b!518656 (= res!317590 (and (= (size!16286 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16286 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16286 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!518657 () Bool)

(declare-fun res!317586 () Bool)

(assert (=> b!518657 (=> (not res!317586) (not e!302623))))

(declare-datatypes ((List!10133 0))(
  ( (Nil!10130) (Cons!10129 (h!11039 (_ BitVec 64)) (t!16369 List!10133)) )
))
(declare-fun arrayNoDuplicates!0 (array!33126 (_ BitVec 32) List!10133) Bool)

(assert (=> b!518657 (= res!317586 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10130))))

(declare-fun b!518658 () Bool)

(declare-fun res!317594 () Bool)

(assert (=> b!518658 (=> (not res!317594) (not e!302625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518658 (= res!317594 (validKeyInArray!0 (select (arr!15922 a!3235) j!176)))))

(declare-fun b!518659 () Bool)

(declare-fun res!317583 () Bool)

(assert (=> b!518659 (=> (not res!317583) (not e!302625))))

(assert (=> b!518659 (= res!317583 (validKeyInArray!0 k0!2280))))

(declare-fun b!518660 () Bool)

(declare-fun Unit!16053 () Unit!16050)

(assert (=> b!518660 (= e!302629 Unit!16053)))

(declare-fun lt!237520 () Unit!16050)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33126 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16050)

(assert (=> b!518660 (= lt!237520 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237517 #b00000000000000000000000000000000 (index!19777 lt!237523) (x!48773 lt!237523) mask!3524))))

(declare-fun res!317593 () Bool)

(assert (=> b!518660 (= res!317593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237517 lt!237524 lt!237519 mask!3524) (Intermediate!4396 false (index!19777 lt!237523) (x!48773 lt!237523))))))

(assert (=> b!518660 (=> (not res!317593) (not e!302624))))

(assert (=> b!518660 e!302624))

(assert (= (and start!47088 res!317592) b!518656))

(assert (= (and b!518656 res!317590) b!518658))

(assert (= (and b!518658 res!317594) b!518659))

(assert (= (and b!518659 res!317583) b!518652))

(assert (= (and b!518652 res!317589) b!518649))

(assert (= (and b!518649 res!317584) b!518654))

(assert (= (and b!518654 res!317587) b!518657))

(assert (= (and b!518657 res!317586) b!518655))

(assert (= (and b!518655 res!317591) b!518648))

(assert (= (and b!518655 (not res!317585)) b!518651))

(assert (= (and b!518651 (not res!317588)) b!518653))

(assert (= (and b!518653 c!60827) b!518660))

(assert (= (and b!518653 (not c!60827)) b!518647))

(assert (= (and b!518660 res!317593) b!518650))

(declare-fun m!499969 () Bool)

(assert (=> b!518657 m!499969))

(declare-fun m!499971 () Bool)

(assert (=> b!518659 m!499971))

(declare-fun m!499973 () Bool)

(assert (=> b!518648 m!499973))

(assert (=> b!518648 m!499973))

(declare-fun m!499975 () Bool)

(assert (=> b!518648 m!499975))

(declare-fun m!499977 () Bool)

(assert (=> b!518652 m!499977))

(declare-fun m!499979 () Bool)

(assert (=> b!518654 m!499979))

(declare-fun m!499981 () Bool)

(assert (=> b!518653 m!499981))

(assert (=> b!518653 m!499973))

(declare-fun m!499983 () Bool)

(assert (=> b!518655 m!499983))

(declare-fun m!499985 () Bool)

(assert (=> b!518655 m!499985))

(declare-fun m!499987 () Bool)

(assert (=> b!518655 m!499987))

(assert (=> b!518655 m!499973))

(declare-fun m!499989 () Bool)

(assert (=> b!518655 m!499989))

(assert (=> b!518655 m!499973))

(declare-fun m!499991 () Bool)

(assert (=> b!518655 m!499991))

(declare-fun m!499993 () Bool)

(assert (=> b!518655 m!499993))

(declare-fun m!499995 () Bool)

(assert (=> b!518655 m!499995))

(declare-fun m!499997 () Bool)

(assert (=> b!518655 m!499997))

(assert (=> b!518655 m!499973))

(assert (=> b!518658 m!499973))

(assert (=> b!518658 m!499973))

(declare-fun m!499999 () Bool)

(assert (=> b!518658 m!499999))

(declare-fun m!500001 () Bool)

(assert (=> b!518649 m!500001))

(declare-fun m!500003 () Bool)

(assert (=> b!518660 m!500003))

(declare-fun m!500005 () Bool)

(assert (=> b!518660 m!500005))

(declare-fun m!500007 () Bool)

(assert (=> start!47088 m!500007))

(declare-fun m!500009 () Bool)

(assert (=> start!47088 m!500009))

(check-sat (not b!518657) (not b!518648) (not b!518660) (not b!518652) (not b!518659) (not start!47088) (not b!518658) (not b!518655) (not b!518649) (not b!518654))
(check-sat)
(get-model)

(declare-fun b!518713 () Bool)

(declare-fun e!302659 () Bool)

(declare-fun call!31724 () Bool)

(assert (=> b!518713 (= e!302659 call!31724)))

(declare-fun b!518714 () Bool)

(declare-fun e!302662 () Bool)

(declare-fun e!302660 () Bool)

(assert (=> b!518714 (= e!302662 e!302660)))

(declare-fun res!317639 () Bool)

(assert (=> b!518714 (=> (not res!317639) (not e!302660))))

(declare-fun e!302661 () Bool)

(assert (=> b!518714 (= res!317639 (not e!302661))))

(declare-fun res!317637 () Bool)

(assert (=> b!518714 (=> (not res!317637) (not e!302661))))

(assert (=> b!518714 (= res!317637 (validKeyInArray!0 (select (arr!15922 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79841 () Bool)

(declare-fun res!317638 () Bool)

(assert (=> d!79841 (=> res!317638 e!302662)))

(assert (=> d!79841 (= res!317638 (bvsge #b00000000000000000000000000000000 (size!16286 a!3235)))))

(assert (=> d!79841 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10130) e!302662)))

(declare-fun b!518715 () Bool)

(assert (=> b!518715 (= e!302660 e!302659)))

(declare-fun c!60833 () Bool)

(assert (=> b!518715 (= c!60833 (validKeyInArray!0 (select (arr!15922 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518716 () Bool)

(assert (=> b!518716 (= e!302659 call!31724)))

(declare-fun b!518717 () Bool)

(declare-fun contains!2757 (List!10133 (_ BitVec 64)) Bool)

(assert (=> b!518717 (= e!302661 (contains!2757 Nil!10130 (select (arr!15922 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31721 () Bool)

(assert (=> bm!31721 (= call!31724 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60833 (Cons!10129 (select (arr!15922 a!3235) #b00000000000000000000000000000000) Nil!10130) Nil!10130)))))

(assert (= (and d!79841 (not res!317638)) b!518714))

(assert (= (and b!518714 res!317637) b!518717))

(assert (= (and b!518714 res!317639) b!518715))

(assert (= (and b!518715 c!60833) b!518713))

(assert (= (and b!518715 (not c!60833)) b!518716))

(assert (= (or b!518713 b!518716) bm!31721))

(declare-fun m!500053 () Bool)

(assert (=> b!518714 m!500053))

(assert (=> b!518714 m!500053))

(declare-fun m!500055 () Bool)

(assert (=> b!518714 m!500055))

(assert (=> b!518715 m!500053))

(assert (=> b!518715 m!500053))

(assert (=> b!518715 m!500055))

(assert (=> b!518717 m!500053))

(assert (=> b!518717 m!500053))

(declare-fun m!500057 () Bool)

(assert (=> b!518717 m!500057))

(assert (=> bm!31721 m!500053))

(declare-fun m!500059 () Bool)

(assert (=> bm!31721 m!500059))

(assert (=> b!518657 d!79841))

(declare-fun d!79843 () Bool)

(assert (=> d!79843 (= (validKeyInArray!0 (select (arr!15922 a!3235) j!176)) (and (not (= (select (arr!15922 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15922 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518658 d!79843))

(declare-fun d!79845 () Bool)

(declare-fun res!317644 () Bool)

(declare-fun e!302667 () Bool)

(assert (=> d!79845 (=> res!317644 e!302667)))

(assert (=> d!79845 (= res!317644 (= (select (arr!15922 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79845 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!302667)))

(declare-fun b!518722 () Bool)

(declare-fun e!302668 () Bool)

(assert (=> b!518722 (= e!302667 e!302668)))

(declare-fun res!317645 () Bool)

(assert (=> b!518722 (=> (not res!317645) (not e!302668))))

(assert (=> b!518722 (= res!317645 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16286 a!3235)))))

(declare-fun b!518723 () Bool)

(assert (=> b!518723 (= e!302668 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79845 (not res!317644)) b!518722))

(assert (= (and b!518722 res!317645) b!518723))

(assert (=> d!79845 m!500053))

(declare-fun m!500061 () Bool)

(assert (=> b!518723 m!500061))

(assert (=> b!518652 d!79845))

(declare-fun bm!31724 () Bool)

(declare-fun call!31727 () Bool)

(assert (=> bm!31724 (= call!31727 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79847 () Bool)

(declare-fun res!317651 () Bool)

(declare-fun e!302675 () Bool)

(assert (=> d!79847 (=> res!317651 e!302675)))

(assert (=> d!79847 (= res!317651 (bvsge #b00000000000000000000000000000000 (size!16286 a!3235)))))

(assert (=> d!79847 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302675)))

(declare-fun b!518732 () Bool)

(declare-fun e!302676 () Bool)

(declare-fun e!302677 () Bool)

(assert (=> b!518732 (= e!302676 e!302677)))

(declare-fun lt!237560 () (_ BitVec 64))

(assert (=> b!518732 (= lt!237560 (select (arr!15922 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237559 () Unit!16050)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33126 (_ BitVec 64) (_ BitVec 32)) Unit!16050)

(assert (=> b!518732 (= lt!237559 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237560 #b00000000000000000000000000000000))))

(assert (=> b!518732 (arrayContainsKey!0 a!3235 lt!237560 #b00000000000000000000000000000000)))

(declare-fun lt!237558 () Unit!16050)

(assert (=> b!518732 (= lt!237558 lt!237559)))

(declare-fun res!317650 () Bool)

(assert (=> b!518732 (= res!317650 (= (seekEntryOrOpen!0 (select (arr!15922 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4396 #b00000000000000000000000000000000)))))

(assert (=> b!518732 (=> (not res!317650) (not e!302677))))

(declare-fun b!518733 () Bool)

(assert (=> b!518733 (= e!302676 call!31727)))

(declare-fun b!518734 () Bool)

(assert (=> b!518734 (= e!302675 e!302676)))

(declare-fun c!60836 () Bool)

(assert (=> b!518734 (= c!60836 (validKeyInArray!0 (select (arr!15922 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518735 () Bool)

(assert (=> b!518735 (= e!302677 call!31727)))

(assert (= (and d!79847 (not res!317651)) b!518734))

(assert (= (and b!518734 c!60836) b!518732))

(assert (= (and b!518734 (not c!60836)) b!518733))

(assert (= (and b!518732 res!317650) b!518735))

(assert (= (or b!518735 b!518733) bm!31724))

(declare-fun m!500063 () Bool)

(assert (=> bm!31724 m!500063))

(assert (=> b!518732 m!500053))

(declare-fun m!500065 () Bool)

(assert (=> b!518732 m!500065))

(declare-fun m!500067 () Bool)

(assert (=> b!518732 m!500067))

(assert (=> b!518732 m!500053))

(declare-fun m!500069 () Bool)

(assert (=> b!518732 m!500069))

(assert (=> b!518734 m!500053))

(assert (=> b!518734 m!500053))

(assert (=> b!518734 m!500055))

(assert (=> b!518654 d!79847))

(declare-fun b!518756 () Bool)

(declare-fun e!302692 () SeekEntryResult!4396)

(declare-fun lt!237574 () SeekEntryResult!4396)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33126 (_ BitVec 32)) SeekEntryResult!4396)

(assert (=> b!518756 (= e!302692 (seekKeyOrZeroReturnVacant!0 (x!48773 lt!237574) (index!19777 lt!237574) (index!19777 lt!237574) k0!2280 a!3235 mask!3524))))

(declare-fun d!79849 () Bool)

(declare-fun lt!237573 () SeekEntryResult!4396)

(assert (=> d!79849 (and (or ((_ is Undefined!4396) lt!237573) (not ((_ is Found!4396) lt!237573)) (and (bvsge (index!19776 lt!237573) #b00000000000000000000000000000000) (bvslt (index!19776 lt!237573) (size!16286 a!3235)))) (or ((_ is Undefined!4396) lt!237573) ((_ is Found!4396) lt!237573) (not ((_ is MissingZero!4396) lt!237573)) (and (bvsge (index!19775 lt!237573) #b00000000000000000000000000000000) (bvslt (index!19775 lt!237573) (size!16286 a!3235)))) (or ((_ is Undefined!4396) lt!237573) ((_ is Found!4396) lt!237573) ((_ is MissingZero!4396) lt!237573) (not ((_ is MissingVacant!4396) lt!237573)) (and (bvsge (index!19778 lt!237573) #b00000000000000000000000000000000) (bvslt (index!19778 lt!237573) (size!16286 a!3235)))) (or ((_ is Undefined!4396) lt!237573) (ite ((_ is Found!4396) lt!237573) (= (select (arr!15922 a!3235) (index!19776 lt!237573)) k0!2280) (ite ((_ is MissingZero!4396) lt!237573) (= (select (arr!15922 a!3235) (index!19775 lt!237573)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4396) lt!237573) (= (select (arr!15922 a!3235) (index!19778 lt!237573)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302690 () SeekEntryResult!4396)

(assert (=> d!79849 (= lt!237573 e!302690)))

(declare-fun c!60846 () Bool)

(assert (=> d!79849 (= c!60846 (and ((_ is Intermediate!4396) lt!237574) (undefined!5208 lt!237574)))))

(assert (=> d!79849 (= lt!237574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79849 (validMask!0 mask!3524)))

(assert (=> d!79849 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!237573)))

(declare-fun b!518757 () Bool)

(declare-fun e!302691 () SeekEntryResult!4396)

(assert (=> b!518757 (= e!302691 (Found!4396 (index!19777 lt!237574)))))

(declare-fun b!518758 () Bool)

(assert (=> b!518758 (= e!302690 Undefined!4396)))

(declare-fun b!518759 () Bool)

(declare-fun c!60845 () Bool)

(declare-fun lt!237575 () (_ BitVec 64))

(assert (=> b!518759 (= c!60845 (= lt!237575 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518759 (= e!302691 e!302692)))

(declare-fun b!518760 () Bool)

(assert (=> b!518760 (= e!302692 (MissingZero!4396 (index!19777 lt!237574)))))

(declare-fun b!518761 () Bool)

(assert (=> b!518761 (= e!302690 e!302691)))

(assert (=> b!518761 (= lt!237575 (select (arr!15922 a!3235) (index!19777 lt!237574)))))

(declare-fun c!60847 () Bool)

(assert (=> b!518761 (= c!60847 (= lt!237575 k0!2280))))

(assert (= (and d!79849 c!60846) b!518758))

(assert (= (and d!79849 (not c!60846)) b!518761))

(assert (= (and b!518761 c!60847) b!518757))

(assert (= (and b!518761 (not c!60847)) b!518759))

(assert (= (and b!518759 c!60845) b!518760))

(assert (= (and b!518759 (not c!60845)) b!518756))

(declare-fun m!500071 () Bool)

(assert (=> b!518756 m!500071))

(declare-fun m!500073 () Bool)

(assert (=> d!79849 m!500073))

(declare-fun m!500075 () Bool)

(assert (=> d!79849 m!500075))

(declare-fun m!500077 () Bool)

(assert (=> d!79849 m!500077))

(declare-fun m!500079 () Bool)

(assert (=> d!79849 m!500079))

(assert (=> d!79849 m!500075))

(assert (=> d!79849 m!500007))

(declare-fun m!500081 () Bool)

(assert (=> d!79849 m!500081))

(declare-fun m!500083 () Bool)

(assert (=> b!518761 m!500083))

(assert (=> b!518649 d!79849))

(declare-fun lt!237577 () SeekEntryResult!4396)

(declare-fun e!302695 () SeekEntryResult!4396)

(declare-fun b!518762 () Bool)

(assert (=> b!518762 (= e!302695 (seekKeyOrZeroReturnVacant!0 (x!48773 lt!237577) (index!19777 lt!237577) (index!19777 lt!237577) (select (arr!15922 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!79855 () Bool)

(declare-fun lt!237576 () SeekEntryResult!4396)

(assert (=> d!79855 (and (or ((_ is Undefined!4396) lt!237576) (not ((_ is Found!4396) lt!237576)) (and (bvsge (index!19776 lt!237576) #b00000000000000000000000000000000) (bvslt (index!19776 lt!237576) (size!16286 a!3235)))) (or ((_ is Undefined!4396) lt!237576) ((_ is Found!4396) lt!237576) (not ((_ is MissingZero!4396) lt!237576)) (and (bvsge (index!19775 lt!237576) #b00000000000000000000000000000000) (bvslt (index!19775 lt!237576) (size!16286 a!3235)))) (or ((_ is Undefined!4396) lt!237576) ((_ is Found!4396) lt!237576) ((_ is MissingZero!4396) lt!237576) (not ((_ is MissingVacant!4396) lt!237576)) (and (bvsge (index!19778 lt!237576) #b00000000000000000000000000000000) (bvslt (index!19778 lt!237576) (size!16286 a!3235)))) (or ((_ is Undefined!4396) lt!237576) (ite ((_ is Found!4396) lt!237576) (= (select (arr!15922 a!3235) (index!19776 lt!237576)) (select (arr!15922 a!3235) j!176)) (ite ((_ is MissingZero!4396) lt!237576) (= (select (arr!15922 a!3235) (index!19775 lt!237576)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4396) lt!237576) (= (select (arr!15922 a!3235) (index!19778 lt!237576)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302693 () SeekEntryResult!4396)

(assert (=> d!79855 (= lt!237576 e!302693)))

(declare-fun c!60849 () Bool)

(assert (=> d!79855 (= c!60849 (and ((_ is Intermediate!4396) lt!237577) (undefined!5208 lt!237577)))))

(assert (=> d!79855 (= lt!237577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15922 a!3235) j!176) mask!3524) (select (arr!15922 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79855 (validMask!0 mask!3524)))

(assert (=> d!79855 (= (seekEntryOrOpen!0 (select (arr!15922 a!3235) j!176) a!3235 mask!3524) lt!237576)))

(declare-fun b!518763 () Bool)

(declare-fun e!302694 () SeekEntryResult!4396)

(assert (=> b!518763 (= e!302694 (Found!4396 (index!19777 lt!237577)))))

(declare-fun b!518764 () Bool)

(assert (=> b!518764 (= e!302693 Undefined!4396)))

(declare-fun b!518765 () Bool)

(declare-fun c!60848 () Bool)

(declare-fun lt!237578 () (_ BitVec 64))

(assert (=> b!518765 (= c!60848 (= lt!237578 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518765 (= e!302694 e!302695)))

(declare-fun b!518766 () Bool)

(assert (=> b!518766 (= e!302695 (MissingZero!4396 (index!19777 lt!237577)))))

(declare-fun b!518767 () Bool)

(assert (=> b!518767 (= e!302693 e!302694)))

(assert (=> b!518767 (= lt!237578 (select (arr!15922 a!3235) (index!19777 lt!237577)))))

(declare-fun c!60850 () Bool)

(assert (=> b!518767 (= c!60850 (= lt!237578 (select (arr!15922 a!3235) j!176)))))

(assert (= (and d!79855 c!60849) b!518764))

(assert (= (and d!79855 (not c!60849)) b!518767))

(assert (= (and b!518767 c!60850) b!518763))

(assert (= (and b!518767 (not c!60850)) b!518765))

(assert (= (and b!518765 c!60848) b!518766))

(assert (= (and b!518765 (not c!60848)) b!518762))

(assert (=> b!518762 m!499973))

(declare-fun m!500085 () Bool)

(assert (=> b!518762 m!500085))

(declare-fun m!500087 () Bool)

(assert (=> d!79855 m!500087))

(assert (=> d!79855 m!499989))

(assert (=> d!79855 m!499973))

(declare-fun m!500089 () Bool)

(assert (=> d!79855 m!500089))

(declare-fun m!500091 () Bool)

(assert (=> d!79855 m!500091))

(assert (=> d!79855 m!499973))

(assert (=> d!79855 m!499989))

(assert (=> d!79855 m!500007))

(declare-fun m!500093 () Bool)

(assert (=> d!79855 m!500093))

(declare-fun m!500095 () Bool)

(assert (=> b!518767 m!500095))

(assert (=> b!518648 d!79855))

(declare-fun d!79857 () Bool)

(assert (=> d!79857 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518659 d!79857))

(declare-fun d!79859 () Bool)

(assert (=> d!79859 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47088 d!79859))

(declare-fun d!79863 () Bool)

(assert (=> d!79863 (= (array_inv!11696 a!3235) (bvsge (size!16286 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47088 d!79863))

(declare-fun d!79865 () Bool)

(declare-fun e!302722 () Bool)

(assert (=> d!79865 e!302722))

(declare-fun res!317662 () Bool)

(assert (=> d!79865 (=> (not res!317662) (not e!302722))))

(assert (=> d!79865 (= res!317662 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16286 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16286 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16286 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16286 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16286 a!3235))))))

(declare-fun lt!237602 () Unit!16050)

(declare-fun choose!47 (array!33126 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16050)

(assert (=> d!79865 (= lt!237602 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!237517 #b00000000000000000000000000000000 (index!19777 lt!237523) (x!48773 lt!237523) mask!3524))))

(assert (=> d!79865 (validMask!0 mask!3524)))

(assert (=> d!79865 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237517 #b00000000000000000000000000000000 (index!19777 lt!237523) (x!48773 lt!237523) mask!3524) lt!237602)))

(declare-fun b!518816 () Bool)

(assert (=> b!518816 (= e!302722 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237517 (select (store (arr!15922 a!3235) i!1204 k0!2280) j!176) (array!33127 (store (arr!15922 a!3235) i!1204 k0!2280) (size!16286 a!3235)) mask!3524) (Intermediate!4396 false (index!19777 lt!237523) (x!48773 lt!237523))))))

(assert (= (and d!79865 res!317662) b!518816))

(declare-fun m!500135 () Bool)

(assert (=> d!79865 m!500135))

(assert (=> d!79865 m!500007))

(assert (=> b!518816 m!499983))

(assert (=> b!518816 m!499987))

(assert (=> b!518816 m!499987))

(declare-fun m!500137 () Bool)

(assert (=> b!518816 m!500137))

(assert (=> b!518660 d!79865))

(declare-fun b!518883 () Bool)

(declare-fun e!302776 () Bool)

(declare-fun e!302773 () Bool)

(assert (=> b!518883 (= e!302776 e!302773)))

(declare-fun res!317699 () Bool)

(declare-fun lt!237620 () SeekEntryResult!4396)

(assert (=> b!518883 (= res!317699 (and ((_ is Intermediate!4396) lt!237620) (not (undefined!5208 lt!237620)) (bvslt (x!48773 lt!237620) #b01111111111111111111111111111110) (bvsge (x!48773 lt!237620) #b00000000000000000000000000000000) (bvsge (x!48773 lt!237620) #b00000000000000000000000000000000)))))

(assert (=> b!518883 (=> (not res!317699) (not e!302773))))

(declare-fun b!518884 () Bool)

(declare-fun e!302772 () SeekEntryResult!4396)

(assert (=> b!518884 (= e!302772 (Intermediate!4396 true lt!237517 #b00000000000000000000000000000000))))

(declare-fun b!518885 () Bool)

(declare-fun e!302775 () SeekEntryResult!4396)

(assert (=> b!518885 (= e!302772 e!302775)))

(declare-fun c!60890 () Bool)

(declare-fun lt!237619 () (_ BitVec 64))

(assert (=> b!518885 (= c!60890 (or (= lt!237619 lt!237524) (= (bvadd lt!237619 lt!237619) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518886 () Bool)

(assert (=> b!518886 (and (bvsge (index!19777 lt!237620) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237620) (size!16286 lt!237519)))))

(declare-fun res!317697 () Bool)

(assert (=> b!518886 (= res!317697 (= (select (arr!15922 lt!237519) (index!19777 lt!237620)) lt!237524))))

(declare-fun e!302774 () Bool)

(assert (=> b!518886 (=> res!317697 e!302774)))

(assert (=> b!518886 (= e!302773 e!302774)))

(declare-fun d!79875 () Bool)

(assert (=> d!79875 e!302776))

(declare-fun c!60888 () Bool)

(assert (=> d!79875 (= c!60888 (and ((_ is Intermediate!4396) lt!237620) (undefined!5208 lt!237620)))))

(assert (=> d!79875 (= lt!237620 e!302772)))

(declare-fun c!60889 () Bool)

(assert (=> d!79875 (= c!60889 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79875 (= lt!237619 (select (arr!15922 lt!237519) lt!237517))))

(assert (=> d!79875 (validMask!0 mask!3524)))

(assert (=> d!79875 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237517 lt!237524 lt!237519 mask!3524) lt!237620)))

(declare-fun b!518887 () Bool)

(assert (=> b!518887 (and (bvsge (index!19777 lt!237620) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237620) (size!16286 lt!237519)))))

(declare-fun res!317698 () Bool)

(assert (=> b!518887 (= res!317698 (= (select (arr!15922 lt!237519) (index!19777 lt!237620)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518887 (=> res!317698 e!302774)))

(declare-fun b!518888 () Bool)

(assert (=> b!518888 (= e!302775 (Intermediate!4396 false lt!237517 #b00000000000000000000000000000000))))

(declare-fun b!518889 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518889 (= e!302775 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237517 #b00000000000000000000000000000000 mask!3524) lt!237524 lt!237519 mask!3524))))

(declare-fun b!518890 () Bool)

(assert (=> b!518890 (= e!302776 (bvsge (x!48773 lt!237620) #b01111111111111111111111111111110))))

(declare-fun b!518891 () Bool)

(assert (=> b!518891 (and (bvsge (index!19777 lt!237620) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237620) (size!16286 lt!237519)))))

(assert (=> b!518891 (= e!302774 (= (select (arr!15922 lt!237519) (index!19777 lt!237620)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!79875 c!60889) b!518884))

(assert (= (and d!79875 (not c!60889)) b!518885))

(assert (= (and b!518885 c!60890) b!518888))

(assert (= (and b!518885 (not c!60890)) b!518889))

(assert (= (and d!79875 c!60888) b!518890))

(assert (= (and d!79875 (not c!60888)) b!518883))

(assert (= (and b!518883 res!317699) b!518886))

(assert (= (and b!518886 (not res!317697)) b!518887))

(assert (= (and b!518887 (not res!317698)) b!518891))

(declare-fun m!500173 () Bool)

(assert (=> b!518889 m!500173))

(assert (=> b!518889 m!500173))

(declare-fun m!500175 () Bool)

(assert (=> b!518889 m!500175))

(declare-fun m!500177 () Bool)

(assert (=> b!518886 m!500177))

(assert (=> b!518891 m!500177))

(declare-fun m!500179 () Bool)

(assert (=> d!79875 m!500179))

(assert (=> d!79875 m!500007))

(assert (=> b!518887 m!500177))

(assert (=> b!518660 d!79875))

(declare-fun d!79891 () Bool)

(declare-fun lt!237639 () (_ BitVec 32))

(declare-fun lt!237638 () (_ BitVec 32))

(assert (=> d!79891 (= lt!237639 (bvmul (bvxor lt!237638 (bvlshr lt!237638 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79891 (= lt!237638 ((_ extract 31 0) (bvand (bvxor (select (arr!15922 a!3235) j!176) (bvlshr (select (arr!15922 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79891 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317701 (let ((h!11042 ((_ extract 31 0) (bvand (bvxor (select (arr!15922 a!3235) j!176) (bvlshr (select (arr!15922 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48778 (bvmul (bvxor h!11042 (bvlshr h!11042 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48778 (bvlshr x!48778 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317701 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317701 #b00000000000000000000000000000000))))))

(assert (=> d!79891 (= (toIndex!0 (select (arr!15922 a!3235) j!176) mask!3524) (bvand (bvxor lt!237639 (bvlshr lt!237639 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518655 d!79891))

(declare-fun call!31741 () Bool)

(declare-fun bm!31738 () Bool)

(assert (=> bm!31738 (= call!31741 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79895 () Bool)

(declare-fun res!317705 () Bool)

(declare-fun e!302786 () Bool)

(assert (=> d!79895 (=> res!317705 e!302786)))

(assert (=> d!79895 (= res!317705 (bvsge j!176 (size!16286 a!3235)))))

(assert (=> d!79895 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302786)))

(declare-fun b!518908 () Bool)

(declare-fun e!302787 () Bool)

(declare-fun e!302788 () Bool)

(assert (=> b!518908 (= e!302787 e!302788)))

(declare-fun lt!237642 () (_ BitVec 64))

(assert (=> b!518908 (= lt!237642 (select (arr!15922 a!3235) j!176))))

(declare-fun lt!237641 () Unit!16050)

(assert (=> b!518908 (= lt!237641 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237642 j!176))))

(assert (=> b!518908 (arrayContainsKey!0 a!3235 lt!237642 #b00000000000000000000000000000000)))

(declare-fun lt!237640 () Unit!16050)

(assert (=> b!518908 (= lt!237640 lt!237641)))

(declare-fun res!317704 () Bool)

(assert (=> b!518908 (= res!317704 (= (seekEntryOrOpen!0 (select (arr!15922 a!3235) j!176) a!3235 mask!3524) (Found!4396 j!176)))))

(assert (=> b!518908 (=> (not res!317704) (not e!302788))))

(declare-fun b!518909 () Bool)

(assert (=> b!518909 (= e!302787 call!31741)))

(declare-fun b!518910 () Bool)

(assert (=> b!518910 (= e!302786 e!302787)))

(declare-fun c!60898 () Bool)

(assert (=> b!518910 (= c!60898 (validKeyInArray!0 (select (arr!15922 a!3235) j!176)))))

(declare-fun b!518911 () Bool)

(assert (=> b!518911 (= e!302788 call!31741)))

(assert (= (and d!79895 (not res!317705)) b!518910))

(assert (= (and b!518910 c!60898) b!518908))

(assert (= (and b!518910 (not c!60898)) b!518909))

(assert (= (and b!518908 res!317704) b!518911))

(assert (= (or b!518911 b!518909) bm!31738))

(declare-fun m!500187 () Bool)

(assert (=> bm!31738 m!500187))

(assert (=> b!518908 m!499973))

(declare-fun m!500189 () Bool)

(assert (=> b!518908 m!500189))

(declare-fun m!500191 () Bool)

(assert (=> b!518908 m!500191))

(assert (=> b!518908 m!499973))

(assert (=> b!518908 m!499975))

(assert (=> b!518910 m!499973))

(assert (=> b!518910 m!499973))

(assert (=> b!518910 m!499999))

(assert (=> b!518655 d!79895))

(declare-fun b!518918 () Bool)

(declare-fun e!302797 () Bool)

(declare-fun e!302794 () Bool)

(assert (=> b!518918 (= e!302797 e!302794)))

(declare-fun res!317714 () Bool)

(declare-fun lt!237644 () SeekEntryResult!4396)

(assert (=> b!518918 (= res!317714 (and ((_ is Intermediate!4396) lt!237644) (not (undefined!5208 lt!237644)) (bvslt (x!48773 lt!237644) #b01111111111111111111111111111110) (bvsge (x!48773 lt!237644) #b00000000000000000000000000000000) (bvsge (x!48773 lt!237644) #b00000000000000000000000000000000)))))

(assert (=> b!518918 (=> (not res!317714) (not e!302794))))

(declare-fun b!518919 () Bool)

(declare-fun e!302793 () SeekEntryResult!4396)

(assert (=> b!518919 (= e!302793 (Intermediate!4396 true lt!237522 #b00000000000000000000000000000000))))

(declare-fun b!518920 () Bool)

(declare-fun e!302796 () SeekEntryResult!4396)

(assert (=> b!518920 (= e!302793 e!302796)))

(declare-fun c!60901 () Bool)

(declare-fun lt!237643 () (_ BitVec 64))

(assert (=> b!518920 (= c!60901 (or (= lt!237643 lt!237524) (= (bvadd lt!237643 lt!237643) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518921 () Bool)

(assert (=> b!518921 (and (bvsge (index!19777 lt!237644) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237644) (size!16286 lt!237519)))))

(declare-fun res!317712 () Bool)

(assert (=> b!518921 (= res!317712 (= (select (arr!15922 lt!237519) (index!19777 lt!237644)) lt!237524))))

(declare-fun e!302795 () Bool)

(assert (=> b!518921 (=> res!317712 e!302795)))

(assert (=> b!518921 (= e!302794 e!302795)))

(declare-fun d!79899 () Bool)

(assert (=> d!79899 e!302797))

(declare-fun c!60899 () Bool)

(assert (=> d!79899 (= c!60899 (and ((_ is Intermediate!4396) lt!237644) (undefined!5208 lt!237644)))))

(assert (=> d!79899 (= lt!237644 e!302793)))

(declare-fun c!60900 () Bool)

(assert (=> d!79899 (= c!60900 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79899 (= lt!237643 (select (arr!15922 lt!237519) lt!237522))))

(assert (=> d!79899 (validMask!0 mask!3524)))

(assert (=> d!79899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237522 lt!237524 lt!237519 mask!3524) lt!237644)))

(declare-fun b!518922 () Bool)

(assert (=> b!518922 (and (bvsge (index!19777 lt!237644) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237644) (size!16286 lt!237519)))))

(declare-fun res!317713 () Bool)

(assert (=> b!518922 (= res!317713 (= (select (arr!15922 lt!237519) (index!19777 lt!237644)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518922 (=> res!317713 e!302795)))

(declare-fun b!518923 () Bool)

(assert (=> b!518923 (= e!302796 (Intermediate!4396 false lt!237522 #b00000000000000000000000000000000))))

(declare-fun b!518924 () Bool)

(assert (=> b!518924 (= e!302796 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237522 #b00000000000000000000000000000000 mask!3524) lt!237524 lt!237519 mask!3524))))

(declare-fun b!518925 () Bool)

(assert (=> b!518925 (= e!302797 (bvsge (x!48773 lt!237644) #b01111111111111111111111111111110))))

(declare-fun b!518926 () Bool)

(assert (=> b!518926 (and (bvsge (index!19777 lt!237644) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237644) (size!16286 lt!237519)))))

(assert (=> b!518926 (= e!302795 (= (select (arr!15922 lt!237519) (index!19777 lt!237644)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!79899 c!60900) b!518919))

(assert (= (and d!79899 (not c!60900)) b!518920))

(assert (= (and b!518920 c!60901) b!518923))

(assert (= (and b!518920 (not c!60901)) b!518924))

(assert (= (and d!79899 c!60899) b!518925))

(assert (= (and d!79899 (not c!60899)) b!518918))

(assert (= (and b!518918 res!317714) b!518921))

(assert (= (and b!518921 (not res!317712)) b!518922))

(assert (= (and b!518922 (not res!317713)) b!518926))

(declare-fun m!500193 () Bool)

(assert (=> b!518924 m!500193))

(assert (=> b!518924 m!500193))

(declare-fun m!500195 () Bool)

(assert (=> b!518924 m!500195))

(declare-fun m!500197 () Bool)

(assert (=> b!518921 m!500197))

(assert (=> b!518926 m!500197))

(declare-fun m!500199 () Bool)

(assert (=> d!79899 m!500199))

(assert (=> d!79899 m!500007))

(assert (=> b!518922 m!500197))

(assert (=> b!518655 d!79899))

(declare-fun b!518927 () Bool)

(declare-fun e!302802 () Bool)

(declare-fun e!302799 () Bool)

(assert (=> b!518927 (= e!302802 e!302799)))

(declare-fun res!317717 () Bool)

(declare-fun lt!237646 () SeekEntryResult!4396)

(assert (=> b!518927 (= res!317717 (and ((_ is Intermediate!4396) lt!237646) (not (undefined!5208 lt!237646)) (bvslt (x!48773 lt!237646) #b01111111111111111111111111111110) (bvsge (x!48773 lt!237646) #b00000000000000000000000000000000) (bvsge (x!48773 lt!237646) #b00000000000000000000000000000000)))))

(assert (=> b!518927 (=> (not res!317717) (not e!302799))))

(declare-fun b!518928 () Bool)

(declare-fun e!302798 () SeekEntryResult!4396)

(assert (=> b!518928 (= e!302798 (Intermediate!4396 true lt!237517 #b00000000000000000000000000000000))))

(declare-fun b!518929 () Bool)

(declare-fun e!302801 () SeekEntryResult!4396)

(assert (=> b!518929 (= e!302798 e!302801)))

(declare-fun lt!237645 () (_ BitVec 64))

(declare-fun c!60904 () Bool)

(assert (=> b!518929 (= c!60904 (or (= lt!237645 (select (arr!15922 a!3235) j!176)) (= (bvadd lt!237645 lt!237645) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518930 () Bool)

(assert (=> b!518930 (and (bvsge (index!19777 lt!237646) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237646) (size!16286 a!3235)))))

(declare-fun res!317715 () Bool)

(assert (=> b!518930 (= res!317715 (= (select (arr!15922 a!3235) (index!19777 lt!237646)) (select (arr!15922 a!3235) j!176)))))

(declare-fun e!302800 () Bool)

(assert (=> b!518930 (=> res!317715 e!302800)))

(assert (=> b!518930 (= e!302799 e!302800)))

(declare-fun d!79901 () Bool)

(assert (=> d!79901 e!302802))

(declare-fun c!60902 () Bool)

(assert (=> d!79901 (= c!60902 (and ((_ is Intermediate!4396) lt!237646) (undefined!5208 lt!237646)))))

(assert (=> d!79901 (= lt!237646 e!302798)))

(declare-fun c!60903 () Bool)

(assert (=> d!79901 (= c!60903 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79901 (= lt!237645 (select (arr!15922 a!3235) lt!237517))))

(assert (=> d!79901 (validMask!0 mask!3524)))

(assert (=> d!79901 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237517 (select (arr!15922 a!3235) j!176) a!3235 mask!3524) lt!237646)))

(declare-fun b!518931 () Bool)

(assert (=> b!518931 (and (bvsge (index!19777 lt!237646) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237646) (size!16286 a!3235)))))

(declare-fun res!317716 () Bool)

(assert (=> b!518931 (= res!317716 (= (select (arr!15922 a!3235) (index!19777 lt!237646)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518931 (=> res!317716 e!302800)))

(declare-fun b!518932 () Bool)

(assert (=> b!518932 (= e!302801 (Intermediate!4396 false lt!237517 #b00000000000000000000000000000000))))

(declare-fun b!518933 () Bool)

(assert (=> b!518933 (= e!302801 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237517 #b00000000000000000000000000000000 mask!3524) (select (arr!15922 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!518934 () Bool)

(assert (=> b!518934 (= e!302802 (bvsge (x!48773 lt!237646) #b01111111111111111111111111111110))))

(declare-fun b!518935 () Bool)

(assert (=> b!518935 (and (bvsge (index!19777 lt!237646) #b00000000000000000000000000000000) (bvslt (index!19777 lt!237646) (size!16286 a!3235)))))

(assert (=> b!518935 (= e!302800 (= (select (arr!15922 a!3235) (index!19777 lt!237646)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!79901 c!60903) b!518928))

(assert (= (and d!79901 (not c!60903)) b!518929))

(assert (= (and b!518929 c!60904) b!518932))

(assert (= (and b!518929 (not c!60904)) b!518933))

(assert (= (and d!79901 c!60902) b!518934))

(assert (= (and d!79901 (not c!60902)) b!518927))

(assert (= (and b!518927 res!317717) b!518930))

(assert (= (and b!518930 (not res!317715)) b!518931))

(assert (= (and b!518931 (not res!317716)) b!518935))

(assert (=> b!518933 m!500173))

(assert (=> b!518933 m!500173))

(assert (=> b!518933 m!499973))

(declare-fun m!500201 () Bool)

(assert (=> b!518933 m!500201))

(declare-fun m!500203 () Bool)

(assert (=> b!518930 m!500203))

(assert (=> b!518935 m!500203))

(declare-fun m!500205 () Bool)

(assert (=> d!79901 m!500205))

(assert (=> d!79901 m!500007))

(assert (=> b!518931 m!500203))

(assert (=> b!518655 d!79901))

(declare-fun d!79903 () Bool)

(declare-fun lt!237648 () (_ BitVec 32))

(declare-fun lt!237647 () (_ BitVec 32))

(assert (=> d!79903 (= lt!237648 (bvmul (bvxor lt!237647 (bvlshr lt!237647 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79903 (= lt!237647 ((_ extract 31 0) (bvand (bvxor lt!237524 (bvlshr lt!237524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79903 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317701 (let ((h!11042 ((_ extract 31 0) (bvand (bvxor lt!237524 (bvlshr lt!237524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48778 (bvmul (bvxor h!11042 (bvlshr h!11042 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48778 (bvlshr x!48778 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317701 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317701 #b00000000000000000000000000000000))))))

(assert (=> d!79903 (= (toIndex!0 lt!237524 mask!3524) (bvand (bvxor lt!237648 (bvlshr lt!237648 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518655 d!79903))

(declare-fun d!79905 () Bool)

(assert (=> d!79905 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237653 () Unit!16050)

(declare-fun choose!38 (array!33126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16050)

(assert (=> d!79905 (= lt!237653 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79905 (validMask!0 mask!3524)))

(assert (=> d!79905 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237653)))

(declare-fun bs!16362 () Bool)

(assert (= bs!16362 d!79905))

(assert (=> bs!16362 m!499993))

(declare-fun m!500215 () Bool)

(assert (=> bs!16362 m!500215))

(assert (=> bs!16362 m!500007))

(assert (=> b!518655 d!79905))

(check-sat (not d!79865) (not b!518910) (not d!79905) (not d!79901) (not b!518816) (not d!79855) (not b!518889) (not b!518756) (not b!518933) (not b!518717) (not b!518714) (not b!518908) (not b!518762) (not b!518723) (not d!79899) (not b!518924) (not b!518732) (not bm!31738) (not b!518734) (not d!79849) (not bm!31721) (not d!79875) (not b!518715) (not bm!31724))
(check-sat)
