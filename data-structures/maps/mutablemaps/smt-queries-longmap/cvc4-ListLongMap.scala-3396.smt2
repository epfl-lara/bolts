; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46862 () Bool)

(assert start!46862)

(declare-fun res!316566 () Bool)

(declare-fun e!301707 () Bool)

(assert (=> start!46862 (=> (not res!316566) (not e!301707))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46862 (= res!316566 (validMask!0 mask!3524))))

(assert (=> start!46862 e!301707))

(assert (=> start!46862 true))

(declare-datatypes ((array!33077 0))(
  ( (array!33078 (arr!15902 (Array (_ BitVec 32) (_ BitVec 64))) (size!16266 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33077)

(declare-fun array_inv!11676 (array!33077) Bool)

(assert (=> start!46862 (array_inv!11676 a!3235)))

(declare-fun b!517027 () Bool)

(declare-fun res!316564 () Bool)

(declare-fun e!301704 () Bool)

(assert (=> b!517027 (=> res!316564 e!301704)))

(declare-datatypes ((SeekEntryResult!4376 0))(
  ( (MissingZero!4376 (index!19692 (_ BitVec 32))) (Found!4376 (index!19693 (_ BitVec 32))) (Intermediate!4376 (undefined!5188 Bool) (index!19694 (_ BitVec 32)) (x!48676 (_ BitVec 32))) (Undefined!4376) (MissingVacant!4376 (index!19695 (_ BitVec 32))) )
))
(declare-fun lt!236733 () SeekEntryResult!4376)

(assert (=> b!517027 (= res!316564 (or (undefined!5188 lt!236733) (not (is-Intermediate!4376 lt!236733))))))

(declare-fun b!517028 () Bool)

(declare-fun e!301706 () Bool)

(assert (=> b!517028 (= e!301707 e!301706)))

(declare-fun res!316563 () Bool)

(assert (=> b!517028 (=> (not res!316563) (not e!301706))))

(declare-fun lt!236731 () SeekEntryResult!4376)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!517028 (= res!316563 (or (= lt!236731 (MissingZero!4376 i!1204)) (= lt!236731 (MissingVacant!4376 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33077 (_ BitVec 32)) SeekEntryResult!4376)

(assert (=> b!517028 (= lt!236731 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!517029 () Bool)

(declare-fun lt!236735 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517029 (= e!301704 (or (not (= (select (arr!15902 a!3235) (index!19694 lt!236733)) (select (arr!15902 a!3235) j!176))) (bvsgt (x!48676 lt!236733) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48676 lt!236733)) (and (bvsge lt!236735 #b00000000000000000000000000000000) (bvslt lt!236735 (size!16266 a!3235)))))))

(assert (=> b!517029 (and (bvslt (x!48676 lt!236733) #b01111111111111111111111111111110) (or (= (select (arr!15902 a!3235) (index!19694 lt!236733)) (select (arr!15902 a!3235) j!176)) (= (select (arr!15902 a!3235) (index!19694 lt!236733)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15902 a!3235) (index!19694 lt!236733)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517030 () Bool)

(declare-fun res!316559 () Bool)

(assert (=> b!517030 (=> (not res!316559) (not e!301707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517030 (= res!316559 (validKeyInArray!0 (select (arr!15902 a!3235) j!176)))))

(declare-fun b!517031 () Bool)

(declare-fun res!316560 () Bool)

(assert (=> b!517031 (=> (not res!316560) (not e!301707))))

(assert (=> b!517031 (= res!316560 (validKeyInArray!0 k!2280))))

(declare-fun b!517032 () Bool)

(declare-fun res!316568 () Bool)

(assert (=> b!517032 (=> (not res!316568) (not e!301707))))

(assert (=> b!517032 (= res!316568 (and (= (size!16266 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16266 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16266 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517033 () Bool)

(assert (=> b!517033 (= e!301706 (not e!301704))))

(declare-fun res!316567 () Bool)

(assert (=> b!517033 (=> res!316567 e!301704)))

(declare-fun lt!236734 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33077 (_ BitVec 32)) SeekEntryResult!4376)

(assert (=> b!517033 (= res!316567 (= lt!236733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236734 (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235)) mask!3524)))))

(assert (=> b!517033 (= lt!236733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236735 (select (arr!15902 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517033 (= lt!236734 (toIndex!0 (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517033 (= lt!236735 (toIndex!0 (select (arr!15902 a!3235) j!176) mask!3524))))

(declare-fun e!301708 () Bool)

(assert (=> b!517033 e!301708))

(declare-fun res!316565 () Bool)

(assert (=> b!517033 (=> (not res!316565) (not e!301708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33077 (_ BitVec 32)) Bool)

(assert (=> b!517033 (= res!316565 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16002 0))(
  ( (Unit!16003) )
))
(declare-fun lt!236732 () Unit!16002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16002)

(assert (=> b!517033 (= lt!236732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517034 () Bool)

(declare-fun res!316561 () Bool)

(assert (=> b!517034 (=> (not res!316561) (not e!301706))))

(declare-datatypes ((List!10113 0))(
  ( (Nil!10110) (Cons!10109 (h!11010 (_ BitVec 64)) (t!16349 List!10113)) )
))
(declare-fun arrayNoDuplicates!0 (array!33077 (_ BitVec 32) List!10113) Bool)

(assert (=> b!517034 (= res!316561 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10110))))

(declare-fun b!517035 () Bool)

(declare-fun res!316558 () Bool)

(assert (=> b!517035 (=> (not res!316558) (not e!301707))))

(declare-fun arrayContainsKey!0 (array!33077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517035 (= res!316558 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517036 () Bool)

(declare-fun res!316562 () Bool)

(assert (=> b!517036 (=> (not res!316562) (not e!301706))))

(assert (=> b!517036 (= res!316562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517037 () Bool)

(assert (=> b!517037 (= e!301708 (= (seekEntryOrOpen!0 (select (arr!15902 a!3235) j!176) a!3235 mask!3524) (Found!4376 j!176)))))

(assert (= (and start!46862 res!316566) b!517032))

(assert (= (and b!517032 res!316568) b!517030))

(assert (= (and b!517030 res!316559) b!517031))

(assert (= (and b!517031 res!316560) b!517035))

(assert (= (and b!517035 res!316558) b!517028))

(assert (= (and b!517028 res!316563) b!517036))

(assert (= (and b!517036 res!316562) b!517034))

(assert (= (and b!517034 res!316561) b!517033))

(assert (= (and b!517033 res!316565) b!517037))

(assert (= (and b!517033 (not res!316567)) b!517027))

(assert (= (and b!517027 (not res!316564)) b!517029))

(declare-fun m!498539 () Bool)

(assert (=> start!46862 m!498539))

(declare-fun m!498541 () Bool)

(assert (=> start!46862 m!498541))

(declare-fun m!498543 () Bool)

(assert (=> b!517033 m!498543))

(declare-fun m!498545 () Bool)

(assert (=> b!517033 m!498545))

(declare-fun m!498547 () Bool)

(assert (=> b!517033 m!498547))

(declare-fun m!498549 () Bool)

(assert (=> b!517033 m!498549))

(declare-fun m!498551 () Bool)

(assert (=> b!517033 m!498551))

(assert (=> b!517033 m!498549))

(declare-fun m!498553 () Bool)

(assert (=> b!517033 m!498553))

(assert (=> b!517033 m!498549))

(declare-fun m!498555 () Bool)

(assert (=> b!517033 m!498555))

(assert (=> b!517033 m!498547))

(declare-fun m!498557 () Bool)

(assert (=> b!517033 m!498557))

(assert (=> b!517033 m!498547))

(declare-fun m!498559 () Bool)

(assert (=> b!517033 m!498559))

(declare-fun m!498561 () Bool)

(assert (=> b!517035 m!498561))

(assert (=> b!517030 m!498549))

(assert (=> b!517030 m!498549))

(declare-fun m!498563 () Bool)

(assert (=> b!517030 m!498563))

(declare-fun m!498565 () Bool)

(assert (=> b!517029 m!498565))

(assert (=> b!517029 m!498549))

(declare-fun m!498567 () Bool)

(assert (=> b!517034 m!498567))

(assert (=> b!517037 m!498549))

(assert (=> b!517037 m!498549))

(declare-fun m!498569 () Bool)

(assert (=> b!517037 m!498569))

(declare-fun m!498571 () Bool)

(assert (=> b!517028 m!498571))

(declare-fun m!498573 () Bool)

(assert (=> b!517031 m!498573))

(declare-fun m!498575 () Bool)

(assert (=> b!517036 m!498575))

(push 1)

(assert (not b!517030))

(assert (not b!517037))

(assert (not b!517033))

(assert (not start!46862))

(assert (not b!517031))

(assert (not b!517035))

(assert (not b!517034))

(assert (not b!517028))

(assert (not b!517036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79567 () Bool)

(declare-fun res!316600 () Bool)

(declare-fun e!301757 () Bool)

(assert (=> d!79567 (=> res!316600 e!301757)))

(assert (=> d!79567 (= res!316600 (= (select (arr!15902 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79567 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!301757)))

(declare-fun b!517103 () Bool)

(declare-fun e!301758 () Bool)

(assert (=> b!517103 (= e!301757 e!301758)))

(declare-fun res!316601 () Bool)

(assert (=> b!517103 (=> (not res!316601) (not e!301758))))

(assert (=> b!517103 (= res!316601 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16266 a!3235)))))

(declare-fun b!517104 () Bool)

(assert (=> b!517104 (= e!301758 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79567 (not res!316600)) b!517103))

(assert (= (and b!517103 res!316601) b!517104))

(declare-fun m!498617 () Bool)

(assert (=> d!79567 m!498617))

(declare-fun m!498619 () Bool)

(assert (=> b!517104 m!498619))

(assert (=> b!517035 d!79567))

(declare-fun d!79569 () Bool)

(assert (=> d!79569 (= (validKeyInArray!0 (select (arr!15902 a!3235) j!176)) (and (not (= (select (arr!15902 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15902 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517030 d!79569))

(declare-fun d!79573 () Bool)

(assert (=> d!79573 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517031 d!79573))

(declare-fun d!79575 () Bool)

(declare-fun res!316615 () Bool)

(declare-fun e!301779 () Bool)

(assert (=> d!79575 (=> res!316615 e!301779)))

(assert (=> d!79575 (= res!316615 (bvsge #b00000000000000000000000000000000 (size!16266 a!3235)))))

(assert (=> d!79575 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!301779)))

(declare-fun b!517130 () Bool)

(declare-fun e!301778 () Bool)

(declare-fun call!31670 () Bool)

(assert (=> b!517130 (= e!301778 call!31670)))

(declare-fun b!517131 () Bool)

(declare-fun e!301780 () Bool)

(assert (=> b!517131 (= e!301780 call!31670)))

(declare-fun b!517132 () Bool)

(assert (=> b!517132 (= e!301778 e!301780)))

(declare-fun lt!236764 () (_ BitVec 64))

(assert (=> b!517132 (= lt!236764 (select (arr!15902 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!236763 () Unit!16002)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33077 (_ BitVec 64) (_ BitVec 32)) Unit!16002)

(assert (=> b!517132 (= lt!236763 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236764 #b00000000000000000000000000000000))))

(assert (=> b!517132 (arrayContainsKey!0 a!3235 lt!236764 #b00000000000000000000000000000000)))

(declare-fun lt!236765 () Unit!16002)

(assert (=> b!517132 (= lt!236765 lt!236763)))

(declare-fun res!316616 () Bool)

(assert (=> b!517132 (= res!316616 (= (seekEntryOrOpen!0 (select (arr!15902 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4376 #b00000000000000000000000000000000)))))

(assert (=> b!517132 (=> (not res!316616) (not e!301780))))

(declare-fun bm!31667 () Bool)

(assert (=> bm!31667 (= call!31670 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517133 () Bool)

(assert (=> b!517133 (= e!301779 e!301778)))

(declare-fun c!60548 () Bool)

(assert (=> b!517133 (= c!60548 (validKeyInArray!0 (select (arr!15902 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79575 (not res!316615)) b!517133))

(assert (= (and b!517133 c!60548) b!517132))

(assert (= (and b!517133 (not c!60548)) b!517130))

(assert (= (and b!517132 res!316616) b!517131))

(assert (= (or b!517131 b!517130) bm!31667))

(assert (=> b!517132 m!498617))

(declare-fun m!498635 () Bool)

(assert (=> b!517132 m!498635))

(declare-fun m!498637 () Bool)

(assert (=> b!517132 m!498637))

(assert (=> b!517132 m!498617))

(declare-fun m!498639 () Bool)

(assert (=> b!517132 m!498639))

(declare-fun m!498641 () Bool)

(assert (=> bm!31667 m!498641))

(assert (=> b!517133 m!498617))

(assert (=> b!517133 m!498617))

(declare-fun m!498643 () Bool)

(assert (=> b!517133 m!498643))

(assert (=> b!517036 d!79575))

(declare-fun lt!236800 () SeekEntryResult!4376)

(declare-fun e!301808 () SeekEntryResult!4376)

(declare-fun b!517184 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33077 (_ BitVec 32)) SeekEntryResult!4376)

(assert (=> b!517184 (= e!301808 (seekKeyOrZeroReturnVacant!0 (x!48676 lt!236800) (index!19694 lt!236800) (index!19694 lt!236800) (select (arr!15902 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517185 () Bool)

(declare-fun e!301811 () SeekEntryResult!4376)

(assert (=> b!517185 (= e!301811 (Found!4376 (index!19694 lt!236800)))))

(declare-fun d!79579 () Bool)

(declare-fun lt!236801 () SeekEntryResult!4376)

(assert (=> d!79579 (and (or (is-Undefined!4376 lt!236801) (not (is-Found!4376 lt!236801)) (and (bvsge (index!19693 lt!236801) #b00000000000000000000000000000000) (bvslt (index!19693 lt!236801) (size!16266 a!3235)))) (or (is-Undefined!4376 lt!236801) (is-Found!4376 lt!236801) (not (is-MissingZero!4376 lt!236801)) (and (bvsge (index!19692 lt!236801) #b00000000000000000000000000000000) (bvslt (index!19692 lt!236801) (size!16266 a!3235)))) (or (is-Undefined!4376 lt!236801) (is-Found!4376 lt!236801) (is-MissingZero!4376 lt!236801) (not (is-MissingVacant!4376 lt!236801)) (and (bvsge (index!19695 lt!236801) #b00000000000000000000000000000000) (bvslt (index!19695 lt!236801) (size!16266 a!3235)))) (or (is-Undefined!4376 lt!236801) (ite (is-Found!4376 lt!236801) (= (select (arr!15902 a!3235) (index!19693 lt!236801)) (select (arr!15902 a!3235) j!176)) (ite (is-MissingZero!4376 lt!236801) (= (select (arr!15902 a!3235) (index!19692 lt!236801)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4376 lt!236801) (= (select (arr!15902 a!3235) (index!19695 lt!236801)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!301809 () SeekEntryResult!4376)

(assert (=> d!79579 (= lt!236801 e!301809)))

(declare-fun c!60569 () Bool)

(assert (=> d!79579 (= c!60569 (and (is-Intermediate!4376 lt!236800) (undefined!5188 lt!236800)))))

(assert (=> d!79579 (= lt!236800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15902 a!3235) j!176) mask!3524) (select (arr!15902 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79579 (validMask!0 mask!3524)))

(assert (=> d!79579 (= (seekEntryOrOpen!0 (select (arr!15902 a!3235) j!176) a!3235 mask!3524) lt!236801)))

(declare-fun b!517186 () Bool)

(assert (=> b!517186 (= e!301808 (MissingZero!4376 (index!19694 lt!236800)))))

(declare-fun b!517187 () Bool)

(declare-fun c!60573 () Bool)

(declare-fun lt!236802 () (_ BitVec 64))

(assert (=> b!517187 (= c!60573 (= lt!236802 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517187 (= e!301811 e!301808)))

(declare-fun b!517188 () Bool)

(assert (=> b!517188 (= e!301809 Undefined!4376)))

(declare-fun b!517189 () Bool)

(assert (=> b!517189 (= e!301809 e!301811)))

(assert (=> b!517189 (= lt!236802 (select (arr!15902 a!3235) (index!19694 lt!236800)))))

(declare-fun c!60571 () Bool)

(assert (=> b!517189 (= c!60571 (= lt!236802 (select (arr!15902 a!3235) j!176)))))

(assert (= (and d!79579 c!60569) b!517188))

(assert (= (and d!79579 (not c!60569)) b!517189))

(assert (= (and b!517189 c!60571) b!517185))

(assert (= (and b!517189 (not c!60571)) b!517187))

(assert (= (and b!517187 c!60573) b!517186))

(assert (= (and b!517187 (not c!60573)) b!517184))

(assert (=> b!517184 m!498549))

(declare-fun m!498667 () Bool)

(assert (=> b!517184 m!498667))

(assert (=> d!79579 m!498551))

(assert (=> d!79579 m!498549))

(declare-fun m!498669 () Bool)

(assert (=> d!79579 m!498669))

(assert (=> d!79579 m!498549))

(assert (=> d!79579 m!498551))

(declare-fun m!498671 () Bool)

(assert (=> d!79579 m!498671))

(declare-fun m!498673 () Bool)

(assert (=> d!79579 m!498673))

(declare-fun m!498675 () Bool)

(assert (=> d!79579 m!498675))

(assert (=> d!79579 m!498539))

(declare-fun m!498677 () Bool)

(assert (=> b!517189 m!498677))

(assert (=> b!517037 d!79579))

(declare-fun d!79591 () Bool)

(assert (=> d!79591 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46862 d!79591))

(declare-fun d!79605 () Bool)

(assert (=> d!79605 (= (array_inv!11676 a!3235) (bvsge (size!16266 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46862 d!79605))

(declare-fun d!79607 () Bool)

(declare-fun res!316649 () Bool)

(declare-fun e!301848 () Bool)

(assert (=> d!79607 (=> res!316649 e!301848)))

(assert (=> d!79607 (= res!316649 (bvsge #b00000000000000000000000000000000 (size!16266 a!3235)))))

(assert (=> d!79607 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10110) e!301848)))

(declare-fun b!517242 () Bool)

(declare-fun e!301847 () Bool)

(declare-fun e!301845 () Bool)

(assert (=> b!517242 (= e!301847 e!301845)))

(declare-fun c!60589 () Bool)

(assert (=> b!517242 (= c!60589 (validKeyInArray!0 (select (arr!15902 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517243 () Bool)

(assert (=> b!517243 (= e!301848 e!301847)))

(declare-fun res!316647 () Bool)

(assert (=> b!517243 (=> (not res!316647) (not e!301847))))

(declare-fun e!301846 () Bool)

(assert (=> b!517243 (= res!316647 (not e!301846))))

(declare-fun res!316648 () Bool)

(assert (=> b!517243 (=> (not res!316648) (not e!301846))))

(assert (=> b!517243 (= res!316648 (validKeyInArray!0 (select (arr!15902 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517244 () Bool)

(declare-fun call!31678 () Bool)

(assert (=> b!517244 (= e!301845 call!31678)))

(declare-fun b!517245 () Bool)

(declare-fun contains!2751 (List!10113 (_ BitVec 64)) Bool)

(assert (=> b!517245 (= e!301846 (contains!2751 Nil!10110 (select (arr!15902 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31675 () Bool)

(assert (=> bm!31675 (= call!31678 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60589 (Cons!10109 (select (arr!15902 a!3235) #b00000000000000000000000000000000) Nil!10110) Nil!10110)))))

(declare-fun b!517246 () Bool)

(assert (=> b!517246 (= e!301845 call!31678)))

(assert (= (and d!79607 (not res!316649)) b!517243))

(assert (= (and b!517243 res!316648) b!517245))

(assert (= (and b!517243 res!316647) b!517242))

(assert (= (and b!517242 c!60589) b!517244))

(assert (= (and b!517242 (not c!60589)) b!517246))

(assert (= (or b!517244 b!517246) bm!31675))

(assert (=> b!517242 m!498617))

(assert (=> b!517242 m!498617))

(assert (=> b!517242 m!498643))

(assert (=> b!517243 m!498617))

(assert (=> b!517243 m!498617))

(assert (=> b!517243 m!498643))

(assert (=> b!517245 m!498617))

(assert (=> b!517245 m!498617))

(declare-fun m!498721 () Bool)

(assert (=> b!517245 m!498721))

(assert (=> bm!31675 m!498617))

(declare-fun m!498723 () Bool)

(assert (=> bm!31675 m!498723))

(assert (=> b!517034 d!79607))

(declare-fun d!79615 () Bool)

(declare-fun lt!236832 () (_ BitVec 32))

(declare-fun lt!236831 () (_ BitVec 32))

(assert (=> d!79615 (= lt!236832 (bvmul (bvxor lt!236831 (bvlshr lt!236831 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79615 (= lt!236831 ((_ extract 31 0) (bvand (bvxor (select (arr!15902 a!3235) j!176) (bvlshr (select (arr!15902 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79615 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316650 (let ((h!11013 ((_ extract 31 0) (bvand (bvxor (select (arr!15902 a!3235) j!176) (bvlshr (select (arr!15902 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48680 (bvmul (bvxor h!11013 (bvlshr h!11013 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48680 (bvlshr x!48680 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316650 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316650 #b00000000000000000000000000000000))))))

(assert (=> d!79615 (= (toIndex!0 (select (arr!15902 a!3235) j!176) mask!3524) (bvand (bvxor lt!236832 (bvlshr lt!236832 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517033 d!79615))

(declare-fun d!79617 () Bool)

(declare-fun res!316651 () Bool)

(declare-fun e!301850 () Bool)

(assert (=> d!79617 (=> res!316651 e!301850)))

(assert (=> d!79617 (= res!316651 (bvsge j!176 (size!16266 a!3235)))))

(assert (=> d!79617 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!301850)))

(declare-fun b!517247 () Bool)

(declare-fun e!301849 () Bool)

(declare-fun call!31679 () Bool)

(assert (=> b!517247 (= e!301849 call!31679)))

(declare-fun b!517248 () Bool)

(declare-fun e!301851 () Bool)

(assert (=> b!517248 (= e!301851 call!31679)))

(declare-fun b!517249 () Bool)

(assert (=> b!517249 (= e!301849 e!301851)))

(declare-fun lt!236834 () (_ BitVec 64))

(assert (=> b!517249 (= lt!236834 (select (arr!15902 a!3235) j!176))))

(declare-fun lt!236833 () Unit!16002)

(assert (=> b!517249 (= lt!236833 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236834 j!176))))

(assert (=> b!517249 (arrayContainsKey!0 a!3235 lt!236834 #b00000000000000000000000000000000)))

(declare-fun lt!236835 () Unit!16002)

(assert (=> b!517249 (= lt!236835 lt!236833)))

(declare-fun res!316652 () Bool)

(assert (=> b!517249 (= res!316652 (= (seekEntryOrOpen!0 (select (arr!15902 a!3235) j!176) a!3235 mask!3524) (Found!4376 j!176)))))

(assert (=> b!517249 (=> (not res!316652) (not e!301851))))

(declare-fun bm!31676 () Bool)

(assert (=> bm!31676 (= call!31679 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517250 () Bool)

(assert (=> b!517250 (= e!301850 e!301849)))

(declare-fun c!60590 () Bool)

(assert (=> b!517250 (= c!60590 (validKeyInArray!0 (select (arr!15902 a!3235) j!176)))))

(assert (= (and d!79617 (not res!316651)) b!517250))

(assert (= (and b!517250 c!60590) b!517249))

(assert (= (and b!517250 (not c!60590)) b!517247))

(assert (= (and b!517249 res!316652) b!517248))

(assert (= (or b!517248 b!517247) bm!31676))

(assert (=> b!517249 m!498549))

(declare-fun m!498725 () Bool)

(assert (=> b!517249 m!498725))

(declare-fun m!498727 () Bool)

(assert (=> b!517249 m!498727))

(assert (=> b!517249 m!498549))

(assert (=> b!517249 m!498569))

(declare-fun m!498729 () Bool)

(assert (=> bm!31676 m!498729))

(assert (=> b!517250 m!498549))

(assert (=> b!517250 m!498549))

(assert (=> b!517250 m!498563))

(assert (=> b!517033 d!79617))

(declare-fun b!517305 () Bool)

(declare-fun e!301882 () SeekEntryResult!4376)

(declare-fun e!301883 () SeekEntryResult!4376)

(assert (=> b!517305 (= e!301882 e!301883)))

(declare-fun lt!236854 () (_ BitVec 64))

(declare-fun c!60610 () Bool)

(assert (=> b!517305 (= c!60610 (or (= lt!236854 (select (arr!15902 a!3235) j!176)) (= (bvadd lt!236854 lt!236854) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517306 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517306 (= e!301883 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236735 #b00000000000000000000000000000000 mask!3524) (select (arr!15902 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517307 () Bool)

(declare-fun lt!236853 () SeekEntryResult!4376)

(assert (=> b!517307 (and (bvsge (index!19694 lt!236853) #b00000000000000000000000000000000) (bvslt (index!19694 lt!236853) (size!16266 a!3235)))))

(declare-fun res!316672 () Bool)

(assert (=> b!517307 (= res!316672 (= (select (arr!15902 a!3235) (index!19694 lt!236853)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301885 () Bool)

(assert (=> b!517307 (=> res!316672 e!301885)))

(declare-fun b!517308 () Bool)

(declare-fun e!301884 () Bool)

(declare-fun e!301886 () Bool)

(assert (=> b!517308 (= e!301884 e!301886)))

(declare-fun res!316671 () Bool)

(assert (=> b!517308 (= res!316671 (and (is-Intermediate!4376 lt!236853) (not (undefined!5188 lt!236853)) (bvslt (x!48676 lt!236853) #b01111111111111111111111111111110) (bvsge (x!48676 lt!236853) #b00000000000000000000000000000000) (bvsge (x!48676 lt!236853) #b00000000000000000000000000000000)))))

(assert (=> b!517308 (=> (not res!316671) (not e!301886))))

(declare-fun b!517310 () Bool)

(assert (=> b!517310 (= e!301883 (Intermediate!4376 false lt!236735 #b00000000000000000000000000000000))))

(declare-fun b!517311 () Bool)

(assert (=> b!517311 (= e!301884 (bvsge (x!48676 lt!236853) #b01111111111111111111111111111110))))

(declare-fun b!517312 () Bool)

(assert (=> b!517312 (and (bvsge (index!19694 lt!236853) #b00000000000000000000000000000000) (bvslt (index!19694 lt!236853) (size!16266 a!3235)))))

(assert (=> b!517312 (= e!301885 (= (select (arr!15902 a!3235) (index!19694 lt!236853)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517313 () Bool)

(assert (=> b!517313 (= e!301882 (Intermediate!4376 true lt!236735 #b00000000000000000000000000000000))))

(declare-fun b!517309 () Bool)

(assert (=> b!517309 (and (bvsge (index!19694 lt!236853) #b00000000000000000000000000000000) (bvslt (index!19694 lt!236853) (size!16266 a!3235)))))

(declare-fun res!316673 () Bool)

(assert (=> b!517309 (= res!316673 (= (select (arr!15902 a!3235) (index!19694 lt!236853)) (select (arr!15902 a!3235) j!176)))))

(assert (=> b!517309 (=> res!316673 e!301885)))

(assert (=> b!517309 (= e!301886 e!301885)))

(declare-fun d!79619 () Bool)

(assert (=> d!79619 e!301884))

(declare-fun c!60611 () Bool)

(assert (=> d!79619 (= c!60611 (and (is-Intermediate!4376 lt!236853) (undefined!5188 lt!236853)))))

(assert (=> d!79619 (= lt!236853 e!301882)))

(declare-fun c!60609 () Bool)

(assert (=> d!79619 (= c!60609 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79619 (= lt!236854 (select (arr!15902 a!3235) lt!236735))))

(assert (=> d!79619 (validMask!0 mask!3524)))

(assert (=> d!79619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236735 (select (arr!15902 a!3235) j!176) a!3235 mask!3524) lt!236853)))

(assert (= (and d!79619 c!60609) b!517313))

(assert (= (and d!79619 (not c!60609)) b!517305))

(assert (= (and b!517305 c!60610) b!517310))

(assert (= (and b!517305 (not c!60610)) b!517306))

(assert (= (and d!79619 c!60611) b!517311))

(assert (= (and d!79619 (not c!60611)) b!517308))

(assert (= (and b!517308 res!316671) b!517309))

(assert (= (and b!517309 (not res!316673)) b!517307))

(assert (= (and b!517307 (not res!316672)) b!517312))

(declare-fun m!498749 () Bool)

(assert (=> b!517312 m!498749))

(assert (=> b!517307 m!498749))

(assert (=> b!517309 m!498749))

(declare-fun m!498751 () Bool)

(assert (=> d!79619 m!498751))

(assert (=> d!79619 m!498539))

(declare-fun m!498753 () Bool)

(assert (=> b!517306 m!498753))

(assert (=> b!517306 m!498753))

(assert (=> b!517306 m!498549))

(declare-fun m!498755 () Bool)

(assert (=> b!517306 m!498755))

(assert (=> b!517033 d!79619))

(declare-fun d!79627 () Bool)

(declare-fun lt!236856 () (_ BitVec 32))

(declare-fun lt!236855 () (_ BitVec 32))

(assert (=> d!79627 (= lt!236856 (bvmul (bvxor lt!236855 (bvlshr lt!236855 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79627 (= lt!236855 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79627 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316650 (let ((h!11013 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48680 (bvmul (bvxor h!11013 (bvlshr h!11013 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48680 (bvlshr x!48680 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316650 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316650 #b00000000000000000000000000000000))))))

(assert (=> d!79627 (= (toIndex!0 (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!236856 (bvlshr lt!236856 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517033 d!79627))

(declare-fun b!517314 () Bool)

(declare-fun e!301887 () SeekEntryResult!4376)

(declare-fun e!301888 () SeekEntryResult!4376)

(assert (=> b!517314 (= e!301887 e!301888)))

(declare-fun lt!236858 () (_ BitVec 64))

(declare-fun c!60613 () Bool)

(assert (=> b!517314 (= c!60613 (or (= lt!236858 (select (store (arr!15902 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!236858 lt!236858) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517315 () Bool)

(assert (=> b!517315 (= e!301888 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236734 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235)) mask!3524))))

(declare-fun lt!236857 () SeekEntryResult!4376)

(declare-fun b!517316 () Bool)

(assert (=> b!517316 (and (bvsge (index!19694 lt!236857) #b00000000000000000000000000000000) (bvslt (index!19694 lt!236857) (size!16266 (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235)))))))

(declare-fun res!316675 () Bool)

(assert (=> b!517316 (= res!316675 (= (select (arr!15902 (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235))) (index!19694 lt!236857)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301890 () Bool)

(assert (=> b!517316 (=> res!316675 e!301890)))

(declare-fun b!517317 () Bool)

(declare-fun e!301889 () Bool)

(declare-fun e!301891 () Bool)

(assert (=> b!517317 (= e!301889 e!301891)))

(declare-fun res!316674 () Bool)

(assert (=> b!517317 (= res!316674 (and (is-Intermediate!4376 lt!236857) (not (undefined!5188 lt!236857)) (bvslt (x!48676 lt!236857) #b01111111111111111111111111111110) (bvsge (x!48676 lt!236857) #b00000000000000000000000000000000) (bvsge (x!48676 lt!236857) #b00000000000000000000000000000000)))))

(assert (=> b!517317 (=> (not res!316674) (not e!301891))))

(declare-fun b!517319 () Bool)

(assert (=> b!517319 (= e!301888 (Intermediate!4376 false lt!236734 #b00000000000000000000000000000000))))

(declare-fun b!517320 () Bool)

(assert (=> b!517320 (= e!301889 (bvsge (x!48676 lt!236857) #b01111111111111111111111111111110))))

(declare-fun b!517321 () Bool)

(assert (=> b!517321 (and (bvsge (index!19694 lt!236857) #b00000000000000000000000000000000) (bvslt (index!19694 lt!236857) (size!16266 (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235)))))))

(assert (=> b!517321 (= e!301890 (= (select (arr!15902 (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235))) (index!19694 lt!236857)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517322 () Bool)

(assert (=> b!517322 (= e!301887 (Intermediate!4376 true lt!236734 #b00000000000000000000000000000000))))

(declare-fun b!517318 () Bool)

(assert (=> b!517318 (and (bvsge (index!19694 lt!236857) #b00000000000000000000000000000000) (bvslt (index!19694 lt!236857) (size!16266 (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235)))))))

(declare-fun res!316676 () Bool)

(assert (=> b!517318 (= res!316676 (= (select (arr!15902 (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235))) (index!19694 lt!236857)) (select (store (arr!15902 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!517318 (=> res!316676 e!301890)))

(assert (=> b!517318 (= e!301891 e!301890)))

(declare-fun d!79629 () Bool)

(assert (=> d!79629 e!301889))

(declare-fun c!60614 () Bool)

(assert (=> d!79629 (= c!60614 (and (is-Intermediate!4376 lt!236857) (undefined!5188 lt!236857)))))

(assert (=> d!79629 (= lt!236857 e!301887)))

(declare-fun c!60612 () Bool)

(assert (=> d!79629 (= c!60612 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79629 (= lt!236858 (select (arr!15902 (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235))) lt!236734))))

(assert (=> d!79629 (validMask!0 mask!3524)))

(assert (=> d!79629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236734 (select (store (arr!15902 a!3235) i!1204 k!2280) j!176) (array!33078 (store (arr!15902 a!3235) i!1204 k!2280) (size!16266 a!3235)) mask!3524) lt!236857)))

(assert (= (and d!79629 c!60612) b!517322))

(assert (= (and d!79629 (not c!60612)) b!517314))

(assert (= (and b!517314 c!60613) b!517319))

(assert (= (and b!517314 (not c!60613)) b!517315))

(assert (= (and d!79629 c!60614) b!517320))

(assert (= (and d!79629 (not c!60614)) b!517317))

(assert (= (and b!517317 res!316674) b!517318))

(assert (= (and b!517318 (not res!316676)) b!517316))

(assert (= (and b!517316 (not res!316675)) b!517321))

(declare-fun m!498757 () Bool)

(assert (=> b!517321 m!498757))

(assert (=> b!517316 m!498757))

(assert (=> b!517318 m!498757))

(declare-fun m!498759 () Bool)

(assert (=> d!79629 m!498759))

(assert (=> d!79629 m!498539))

(declare-fun m!498761 () Bool)

(assert (=> b!517315 m!498761))

(assert (=> b!517315 m!498761))

(assert (=> b!517315 m!498547))

(declare-fun m!498763 () Bool)

(assert (=> b!517315 m!498763))

(assert (=> b!517033 d!79629))

