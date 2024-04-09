; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46924 () Bool)

(assert start!46924)

(declare-fun b!517351 () Bool)

(declare-fun res!316705 () Bool)

(declare-fun e!301905 () Bool)

(assert (=> b!517351 (=> (not res!316705) (not e!301905))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33082 0))(
  ( (array!33083 (arr!15903 (Array (_ BitVec 32) (_ BitVec 64))) (size!16267 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33082)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517351 (= res!316705 (and (= (size!16267 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16267 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16267 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517352 () Bool)

(declare-fun res!316701 () Bool)

(declare-fun e!301907 () Bool)

(assert (=> b!517352 (=> (not res!316701) (not e!301907))))

(declare-datatypes ((List!10114 0))(
  ( (Nil!10111) (Cons!10110 (h!11014 (_ BitVec 64)) (t!16350 List!10114)) )
))
(declare-fun arrayNoDuplicates!0 (array!33082 (_ BitVec 32) List!10114) Bool)

(assert (=> b!517352 (= res!316701 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10111))))

(declare-fun b!517353 () Bool)

(declare-fun e!301908 () Bool)

(assert (=> b!517353 (= e!301907 (not e!301908))))

(declare-fun res!316706 () Bool)

(assert (=> b!517353 (=> res!316706 e!301908)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4377 0))(
  ( (MissingZero!4377 (index!19696 (_ BitVec 32))) (Found!4377 (index!19697 (_ BitVec 32))) (Intermediate!4377 (undefined!5189 Bool) (index!19698 (_ BitVec 32)) (x!48691 (_ BitVec 32))) (Undefined!4377) (MissingVacant!4377 (index!19699 (_ BitVec 32))) )
))
(declare-fun lt!236877 () SeekEntryResult!4377)

(declare-fun lt!236875 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33082 (_ BitVec 32)) SeekEntryResult!4377)

(assert (=> b!517353 (= res!316706 (= lt!236877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236875 (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235)) mask!3524)))))

(declare-fun lt!236878 () (_ BitVec 32))

(assert (=> b!517353 (= lt!236877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236878 (select (arr!15903 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517353 (= lt!236875 (toIndex!0 (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517353 (= lt!236878 (toIndex!0 (select (arr!15903 a!3235) j!176) mask!3524))))

(declare-fun e!301906 () Bool)

(assert (=> b!517353 e!301906))

(declare-fun res!316704 () Bool)

(assert (=> b!517353 (=> (not res!316704) (not e!301906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33082 (_ BitVec 32)) Bool)

(assert (=> b!517353 (= res!316704 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16004 0))(
  ( (Unit!16005) )
))
(declare-fun lt!236879 () Unit!16004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33082 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16004)

(assert (=> b!517353 (= lt!236879 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517354 () Bool)

(declare-fun res!316709 () Bool)

(assert (=> b!517354 (=> (not res!316709) (not e!301905))))

(declare-fun arrayContainsKey!0 (array!33082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517354 (= res!316709 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517355 () Bool)

(declare-fun res!316702 () Bool)

(assert (=> b!517355 (=> res!316702 e!301908)))

(assert (=> b!517355 (= res!316702 (or (undefined!5189 lt!236877) (not (is-Intermediate!4377 lt!236877))))))

(declare-fun res!316699 () Bool)

(assert (=> start!46924 (=> (not res!316699) (not e!301905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46924 (= res!316699 (validMask!0 mask!3524))))

(assert (=> start!46924 e!301905))

(assert (=> start!46924 true))

(declare-fun array_inv!11677 (array!33082) Bool)

(assert (=> start!46924 (array_inv!11677 a!3235)))

(declare-fun b!517356 () Bool)

(assert (=> b!517356 (= e!301905 e!301907)))

(declare-fun res!316703 () Bool)

(assert (=> b!517356 (=> (not res!316703) (not e!301907))))

(declare-fun lt!236876 () SeekEntryResult!4377)

(assert (=> b!517356 (= res!316703 (or (= lt!236876 (MissingZero!4377 i!1204)) (= lt!236876 (MissingVacant!4377 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33082 (_ BitVec 32)) SeekEntryResult!4377)

(assert (=> b!517356 (= lt!236876 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!517357 () Bool)

(declare-fun res!316700 () Bool)

(assert (=> b!517357 (=> (not res!316700) (not e!301905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517357 (= res!316700 (validKeyInArray!0 k!2280))))

(declare-fun b!517358 () Bool)

(declare-fun res!316708 () Bool)

(assert (=> b!517358 (=> (not res!316708) (not e!301907))))

(assert (=> b!517358 (= res!316708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517359 () Bool)

(assert (=> b!517359 (= e!301908 (or (not (= (select (arr!15903 a!3235) (index!19698 lt!236877)) (select (arr!15903 a!3235) j!176))) (bvsgt (x!48691 lt!236877) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48691 lt!236877)) (bvslt lt!236878 #b00000000000000000000000000000000) (bvsge lt!236878 (size!16267 a!3235)) (and (bvsge (index!19698 lt!236877) #b00000000000000000000000000000000) (bvslt (index!19698 lt!236877) (size!16267 a!3235)))))))

(assert (=> b!517359 (and (bvslt (x!48691 lt!236877) #b01111111111111111111111111111110) (or (= (select (arr!15903 a!3235) (index!19698 lt!236877)) (select (arr!15903 a!3235) j!176)) (= (select (arr!15903 a!3235) (index!19698 lt!236877)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15903 a!3235) (index!19698 lt!236877)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517360 () Bool)

(assert (=> b!517360 (= e!301906 (= (seekEntryOrOpen!0 (select (arr!15903 a!3235) j!176) a!3235 mask!3524) (Found!4377 j!176)))))

(declare-fun b!517361 () Bool)

(declare-fun res!316707 () Bool)

(assert (=> b!517361 (=> (not res!316707) (not e!301905))))

(assert (=> b!517361 (= res!316707 (validKeyInArray!0 (select (arr!15903 a!3235) j!176)))))

(assert (= (and start!46924 res!316699) b!517351))

(assert (= (and b!517351 res!316705) b!517361))

(assert (= (and b!517361 res!316707) b!517357))

(assert (= (and b!517357 res!316700) b!517354))

(assert (= (and b!517354 res!316709) b!517356))

(assert (= (and b!517356 res!316703) b!517358))

(assert (= (and b!517358 res!316708) b!517352))

(assert (= (and b!517352 res!316701) b!517353))

(assert (= (and b!517353 res!316704) b!517360))

(assert (= (and b!517353 (not res!316706)) b!517355))

(assert (= (and b!517355 (not res!316702)) b!517359))

(declare-fun m!498781 () Bool)

(assert (=> b!517356 m!498781))

(declare-fun m!498783 () Bool)

(assert (=> b!517352 m!498783))

(declare-fun m!498785 () Bool)

(assert (=> b!517360 m!498785))

(assert (=> b!517360 m!498785))

(declare-fun m!498787 () Bool)

(assert (=> b!517360 m!498787))

(declare-fun m!498789 () Bool)

(assert (=> b!517359 m!498789))

(assert (=> b!517359 m!498785))

(assert (=> b!517361 m!498785))

(assert (=> b!517361 m!498785))

(declare-fun m!498791 () Bool)

(assert (=> b!517361 m!498791))

(declare-fun m!498793 () Bool)

(assert (=> b!517358 m!498793))

(declare-fun m!498795 () Bool)

(assert (=> b!517353 m!498795))

(declare-fun m!498797 () Bool)

(assert (=> b!517353 m!498797))

(declare-fun m!498799 () Bool)

(assert (=> b!517353 m!498799))

(assert (=> b!517353 m!498785))

(declare-fun m!498801 () Bool)

(assert (=> b!517353 m!498801))

(assert (=> b!517353 m!498785))

(declare-fun m!498803 () Bool)

(assert (=> b!517353 m!498803))

(assert (=> b!517353 m!498799))

(declare-fun m!498805 () Bool)

(assert (=> b!517353 m!498805))

(assert (=> b!517353 m!498799))

(declare-fun m!498807 () Bool)

(assert (=> b!517353 m!498807))

(assert (=> b!517353 m!498785))

(declare-fun m!498809 () Bool)

(assert (=> b!517353 m!498809))

(declare-fun m!498811 () Bool)

(assert (=> b!517357 m!498811))

(declare-fun m!498813 () Bool)

(assert (=> b!517354 m!498813))

(declare-fun m!498815 () Bool)

(assert (=> start!46924 m!498815))

(declare-fun m!498817 () Bool)

(assert (=> start!46924 m!498817))

(push 1)

(assert (not b!517358))

(assert (not b!517357))

(assert (not start!46924))

(assert (not b!517353))

(assert (not b!517352))

(assert (not b!517354))

(assert (not b!517360))

(assert (not b!517361))

(assert (not b!517356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79649 () Bool)

(assert (=> d!79649 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517357 d!79649))

(declare-fun b!517495 () Bool)

(declare-fun e!301992 () Bool)

(declare-fun call!31688 () Bool)

(assert (=> b!517495 (= e!301992 call!31688)))

(declare-fun d!79651 () Bool)

(declare-fun res!316809 () Bool)

(declare-fun e!301993 () Bool)

(assert (=> d!79651 (=> res!316809 e!301993)))

(assert (=> d!79651 (= res!316809 (bvsge #b00000000000000000000000000000000 (size!16267 a!3235)))))

(assert (=> d!79651 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10111) e!301993)))

(declare-fun b!517496 () Bool)

(assert (=> b!517496 (= e!301992 call!31688)))

(declare-fun b!517497 () Bool)

(declare-fun e!301991 () Bool)

(declare-fun contains!2753 (List!10114 (_ BitVec 64)) Bool)

(assert (=> b!517497 (= e!301991 (contains!2753 Nil!10111 (select (arr!15903 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517498 () Bool)

(declare-fun e!301990 () Bool)

(assert (=> b!517498 (= e!301993 e!301990)))

(declare-fun res!316810 () Bool)

(assert (=> b!517498 (=> (not res!316810) (not e!301990))))

(assert (=> b!517498 (= res!316810 (not e!301991))))

(declare-fun res!316811 () Bool)

(assert (=> b!517498 (=> (not res!316811) (not e!301991))))

(assert (=> b!517498 (= res!316811 (validKeyInArray!0 (select (arr!15903 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31685 () Bool)

(declare-fun c!60635 () Bool)

(assert (=> bm!31685 (= call!31688 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60635 (Cons!10110 (select (arr!15903 a!3235) #b00000000000000000000000000000000) Nil!10111) Nil!10111)))))

(declare-fun b!517499 () Bool)

(assert (=> b!517499 (= e!301990 e!301992)))

(assert (=> b!517499 (= c!60635 (validKeyInArray!0 (select (arr!15903 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79651 (not res!316809)) b!517498))

(assert (= (and b!517498 res!316811) b!517497))

(assert (= (and b!517498 res!316810) b!517499))

(assert (= (and b!517499 c!60635) b!517496))

(assert (= (and b!517499 (not c!60635)) b!517495))

(assert (= (or b!517496 b!517495) bm!31685))

(declare-fun m!498929 () Bool)

(assert (=> b!517497 m!498929))

(assert (=> b!517497 m!498929))

(declare-fun m!498931 () Bool)

(assert (=> b!517497 m!498931))

(assert (=> b!517498 m!498929))

(assert (=> b!517498 m!498929))

(declare-fun m!498933 () Bool)

(assert (=> b!517498 m!498933))

(assert (=> bm!31685 m!498929))

(declare-fun m!498935 () Bool)

(assert (=> bm!31685 m!498935))

(assert (=> b!517499 m!498929))

(assert (=> b!517499 m!498929))

(assert (=> b!517499 m!498933))

(assert (=> b!517352 d!79651))

(declare-fun d!79661 () Bool)

(declare-fun lt!236933 () (_ BitVec 32))

(declare-fun lt!236932 () (_ BitVec 32))

(assert (=> d!79661 (= lt!236933 (bvmul (bvxor lt!236932 (bvlshr lt!236932 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79661 (= lt!236932 ((_ extract 31 0) (bvand (bvxor (select (arr!15903 a!3235) j!176) (bvlshr (select (arr!15903 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79661 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316812 (let ((h!11017 ((_ extract 31 0) (bvand (bvxor (select (arr!15903 a!3235) j!176) (bvlshr (select (arr!15903 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48694 (bvmul (bvxor h!11017 (bvlshr h!11017 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48694 (bvlshr x!48694 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316812 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316812 #b00000000000000000000000000000000))))))

(assert (=> d!79661 (= (toIndex!0 (select (arr!15903 a!3235) j!176) mask!3524) (bvand (bvxor lt!236933 (bvlshr lt!236933 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517353 d!79661))

(declare-fun b!517530 () Bool)

(declare-fun e!302013 () Bool)

(declare-fun e!302014 () Bool)

(assert (=> b!517530 (= e!302013 e!302014)))

(declare-fun lt!236960 () (_ BitVec 64))

(assert (=> b!517530 (= lt!236960 (select (arr!15903 a!3235) j!176))))

(declare-fun lt!236959 () Unit!16004)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33082 (_ BitVec 64) (_ BitVec 32)) Unit!16004)

(assert (=> b!517530 (= lt!236959 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236960 j!176))))

(assert (=> b!517530 (arrayContainsKey!0 a!3235 lt!236960 #b00000000000000000000000000000000)))

(declare-fun lt!236958 () Unit!16004)

(assert (=> b!517530 (= lt!236958 lt!236959)))

(declare-fun res!316820 () Bool)

(assert (=> b!517530 (= res!316820 (= (seekEntryOrOpen!0 (select (arr!15903 a!3235) j!176) a!3235 mask!3524) (Found!4377 j!176)))))

(assert (=> b!517530 (=> (not res!316820) (not e!302014))))

(declare-fun b!517531 () Bool)

(declare-fun e!302012 () Bool)

(assert (=> b!517531 (= e!302012 e!302013)))

(declare-fun c!60648 () Bool)

(assert (=> b!517531 (= c!60648 (validKeyInArray!0 (select (arr!15903 a!3235) j!176)))))

(declare-fun b!517532 () Bool)

(declare-fun call!31692 () Bool)

(assert (=> b!517532 (= e!302013 call!31692)))

(declare-fun bm!31689 () Bool)

(assert (=> bm!31689 (= call!31692 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517533 () Bool)

(assert (=> b!517533 (= e!302014 call!31692)))

(declare-fun d!79667 () Bool)

(declare-fun res!316821 () Bool)

(assert (=> d!79667 (=> res!316821 e!302012)))

(assert (=> d!79667 (= res!316821 (bvsge j!176 (size!16267 a!3235)))))

(assert (=> d!79667 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302012)))

(assert (= (and d!79667 (not res!316821)) b!517531))

(assert (= (and b!517531 c!60648) b!517530))

(assert (= (and b!517531 (not c!60648)) b!517532))

(assert (= (and b!517530 res!316820) b!517533))

(assert (= (or b!517533 b!517532) bm!31689))

(assert (=> b!517530 m!498785))

(declare-fun m!498957 () Bool)

(assert (=> b!517530 m!498957))

(declare-fun m!498959 () Bool)

(assert (=> b!517530 m!498959))

(assert (=> b!517530 m!498785))

(assert (=> b!517530 m!498787))

(assert (=> b!517531 m!498785))

(assert (=> b!517531 m!498785))

(assert (=> b!517531 m!498791))

(declare-fun m!498961 () Bool)

(assert (=> bm!31689 m!498961))

(assert (=> b!517353 d!79667))

(declare-fun d!79675 () Bool)

(declare-fun lt!236962 () (_ BitVec 32))

(declare-fun lt!236961 () (_ BitVec 32))

(assert (=> d!79675 (= lt!236962 (bvmul (bvxor lt!236961 (bvlshr lt!236961 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79675 (= lt!236961 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79675 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316812 (let ((h!11017 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48694 (bvmul (bvxor h!11017 (bvlshr h!11017 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48694 (bvlshr x!48694 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316812 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316812 #b00000000000000000000000000000000))))))

(assert (=> d!79675 (= (toIndex!0 (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!236962 (bvlshr lt!236962 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517353 d!79675))

(declare-fun b!517588 () Bool)

(declare-fun e!302049 () SeekEntryResult!4377)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517588 (= e!302049 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236875 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235)) mask!3524))))

(declare-fun b!517589 () Bool)

(declare-fun lt!236994 () SeekEntryResult!4377)

(assert (=> b!517589 (and (bvsge (index!19698 lt!236994) #b00000000000000000000000000000000) (bvslt (index!19698 lt!236994) (size!16267 (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235)))))))

(declare-fun e!302048 () Bool)

(assert (=> b!517589 (= e!302048 (= (select (arr!15903 (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235))) (index!19698 lt!236994)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517590 () Bool)

(declare-fun e!302050 () SeekEntryResult!4377)

(assert (=> b!517590 (= e!302050 (Intermediate!4377 true lt!236875 #b00000000000000000000000000000000))))

(declare-fun b!517591 () Bool)

(assert (=> b!517591 (= e!302050 e!302049)))

(declare-fun c!60669 () Bool)

(declare-fun lt!236995 () (_ BitVec 64))

(assert (=> b!517591 (= c!60669 (or (= lt!236995 (select (store (arr!15903 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!236995 lt!236995) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!79677 () Bool)

(declare-fun e!302051 () Bool)

(assert (=> d!79677 e!302051))

(declare-fun c!60667 () Bool)

(assert (=> d!79677 (= c!60667 (and (is-Intermediate!4377 lt!236994) (undefined!5189 lt!236994)))))

(assert (=> d!79677 (= lt!236994 e!302050)))

(declare-fun c!60668 () Bool)

(assert (=> d!79677 (= c!60668 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79677 (= lt!236995 (select (arr!15903 (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235))) lt!236875))))

(assert (=> d!79677 (validMask!0 mask!3524)))

(assert (=> d!79677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236875 (select (store (arr!15903 a!3235) i!1204 k!2280) j!176) (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235)) mask!3524) lt!236994)))

(declare-fun b!517592 () Bool)

(assert (=> b!517592 (and (bvsge (index!19698 lt!236994) #b00000000000000000000000000000000) (bvslt (index!19698 lt!236994) (size!16267 (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235)))))))

(declare-fun res!316841 () Bool)

(assert (=> b!517592 (= res!316841 (= (select (arr!15903 (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235))) (index!19698 lt!236994)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517592 (=> res!316841 e!302048)))

(declare-fun b!517593 () Bool)

(declare-fun e!302047 () Bool)

(assert (=> b!517593 (= e!302051 e!302047)))

(declare-fun res!316843 () Bool)

(assert (=> b!517593 (= res!316843 (and (is-Intermediate!4377 lt!236994) (not (undefined!5189 lt!236994)) (bvslt (x!48691 lt!236994) #b01111111111111111111111111111110) (bvsge (x!48691 lt!236994) #b00000000000000000000000000000000) (bvsge (x!48691 lt!236994) #b00000000000000000000000000000000)))))

(assert (=> b!517593 (=> (not res!316843) (not e!302047))))

(declare-fun b!517594 () Bool)

(assert (=> b!517594 (and (bvsge (index!19698 lt!236994) #b00000000000000000000000000000000) (bvslt (index!19698 lt!236994) (size!16267 (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235)))))))

(declare-fun res!316842 () Bool)

(assert (=> b!517594 (= res!316842 (= (select (arr!15903 (array!33083 (store (arr!15903 a!3235) i!1204 k!2280) (size!16267 a!3235))) (index!19698 lt!236994)) (select (store (arr!15903 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!517594 (=> res!316842 e!302048)))

(assert (=> b!517594 (= e!302047 e!302048)))

(declare-fun b!517595 () Bool)

(assert (=> b!517595 (= e!302049 (Intermediate!4377 false lt!236875 #b00000000000000000000000000000000))))

(declare-fun b!517596 () Bool)

(assert (=> b!517596 (= e!302051 (bvsge (x!48691 lt!236994) #b01111111111111111111111111111110))))

(assert (= (and d!79677 c!60668) b!517590))

(assert (= (and d!79677 (not c!60668)) b!517591))

(assert (= (and b!517591 c!60669) b!517595))

(assert (= (and b!517591 (not c!60669)) b!517588))

(assert (= (and d!79677 c!60667) b!517596))

(assert (= (and d!79677 (not c!60667)) b!517593))

(assert (= (and b!517593 res!316843) b!517594))

(assert (= (and b!517594 (not res!316842)) b!517592))

(assert (= (and b!517592 (not res!316841)) b!517589))

(declare-fun m!498983 () Bool)

(assert (=> d!79677 m!498983))

(assert (=> d!79677 m!498815))

(declare-fun m!498985 () Bool)

(assert (=> b!517592 m!498985))

(assert (=> b!517589 m!498985))

(declare-fun m!498987 () Bool)

(assert (=> b!517588 m!498987))

(assert (=> b!517588 m!498987))

(assert (=> b!517588 m!498799))

(declare-fun m!498989 () Bool)

(assert (=> b!517588 m!498989))

(assert (=> b!517594 m!498985))

(assert (=> b!517353 d!79677))

(declare-fun e!302059 () SeekEntryResult!4377)

(declare-fun b!517606 () Bool)

(assert (=> b!517606 (= e!302059 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236878 #b00000000000000000000000000000000 mask!3524) (select (arr!15903 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517607 () Bool)

(declare-fun lt!236998 () SeekEntryResult!4377)

(assert (=> b!517607 (and (bvsge (index!19698 lt!236998) #b00000000000000000000000000000000) (bvslt (index!19698 lt!236998) (size!16267 a!3235)))))

(declare-fun e!302058 () Bool)

(assert (=> b!517607 (= e!302058 (= (select (arr!15903 a!3235) (index!19698 lt!236998)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517608 () Bool)

(declare-fun e!302060 () SeekEntryResult!4377)

(assert (=> b!517608 (= e!302060 (Intermediate!4377 true lt!236878 #b00000000000000000000000000000000))))

(declare-fun b!517609 () Bool)

(assert (=> b!517609 (= e!302060 e!302059)))

(declare-fun lt!236999 () (_ BitVec 64))

(declare-fun c!60675 () Bool)

(assert (=> b!517609 (= c!60675 (or (= lt!236999 (select (arr!15903 a!3235) j!176)) (= (bvadd lt!236999 lt!236999) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!79689 () Bool)

(declare-fun e!302061 () Bool)

(assert (=> d!79689 e!302061))

(declare-fun c!60673 () Bool)

(assert (=> d!79689 (= c!60673 (and (is-Intermediate!4377 lt!236998) (undefined!5189 lt!236998)))))

(assert (=> d!79689 (= lt!236998 e!302060)))

(declare-fun c!60674 () Bool)

(assert (=> d!79689 (= c!60674 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79689 (= lt!236999 (select (arr!15903 a!3235) lt!236878))))

(assert (=> d!79689 (validMask!0 mask!3524)))

(assert (=> d!79689 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236878 (select (arr!15903 a!3235) j!176) a!3235 mask!3524) lt!236998)))

(declare-fun b!517610 () Bool)

(assert (=> b!517610 (and (bvsge (index!19698 lt!236998) #b00000000000000000000000000000000) (bvslt (index!19698 lt!236998) (size!16267 a!3235)))))

(declare-fun res!316847 () Bool)

(assert (=> b!517610 (= res!316847 (= (select (arr!15903 a!3235) (index!19698 lt!236998)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517610 (=> res!316847 e!302058)))

(declare-fun b!517611 () Bool)

(declare-fun e!302057 () Bool)

(assert (=> b!517611 (= e!302061 e!302057)))

(declare-fun res!316849 () Bool)

(assert (=> b!517611 (= res!316849 (and (is-Intermediate!4377 lt!236998) (not (undefined!5189 lt!236998)) (bvslt (x!48691 lt!236998) #b01111111111111111111111111111110) (bvsge (x!48691 lt!236998) #b00000000000000000000000000000000) (bvsge (x!48691 lt!236998) #b00000000000000000000000000000000)))))

(assert (=> b!517611 (=> (not res!316849) (not e!302057))))

(declare-fun b!517612 () Bool)

(assert (=> b!517612 (and (bvsge (index!19698 lt!236998) #b00000000000000000000000000000000) (bvslt (index!19698 lt!236998) (size!16267 a!3235)))))

(declare-fun res!316848 () Bool)

(assert (=> b!517612 (= res!316848 (= (select (arr!15903 a!3235) (index!19698 lt!236998)) (select (arr!15903 a!3235) j!176)))))

(assert (=> b!517612 (=> res!316848 e!302058)))

(assert (=> b!517612 (= e!302057 e!302058)))

(declare-fun b!517613 () Bool)

(assert (=> b!517613 (= e!302059 (Intermediate!4377 false lt!236878 #b00000000000000000000000000000000))))

(declare-fun b!517614 () Bool)

(assert (=> b!517614 (= e!302061 (bvsge (x!48691 lt!236998) #b01111111111111111111111111111110))))

(assert (= (and d!79689 c!60674) b!517608))

(assert (= (and d!79689 (not c!60674)) b!517609))

(assert (= (and b!517609 c!60675) b!517613))

(assert (= (and b!517609 (not c!60675)) b!517606))

(assert (= (and d!79689 c!60673) b!517614))

(assert (= (and d!79689 (not c!60673)) b!517611))

(assert (= (and b!517611 res!316849) b!517612))

(assert (= (and b!517612 (not res!316848)) b!517610))

(assert (= (and b!517610 (not res!316847)) b!517607))

(declare-fun m!498995 () Bool)

(assert (=> d!79689 m!498995))

(assert (=> d!79689 m!498815))

(declare-fun m!498997 () Bool)

(assert (=> b!517610 m!498997))

(assert (=> b!517607 m!498997))

(declare-fun m!499003 () Bool)

(assert (=> b!517606 m!499003))

(assert (=> b!517606 m!499003))

(assert (=> b!517606 m!498785))

(declare-fun m!499007 () Bool)

(assert (=> b!517606 m!499007))

(assert (=> b!517612 m!498997))

(assert (=> b!517353 d!79689))

(declare-fun d!79695 () Bool)

(assert (=> d!79695 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237009 () Unit!16004)

(declare-fun choose!38 (array!33082 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16004)

(assert (=> d!79695 (= lt!237009 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79695 (validMask!0 mask!3524)))

(assert (=> d!79695 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237009)))

(declare-fun bs!16340 () Bool)

(assert (= bs!16340 d!79695))

(assert (=> bs!16340 m!498803))

(declare-fun m!499017 () Bool)

(assert (=> bs!16340 m!499017))

(assert (=> bs!16340 m!498815))

(assert (=> b!517353 d!79695))

(declare-fun b!517624 () Bool)

(declare-fun e!302068 () Bool)

(declare-fun e!302069 () Bool)

(assert (=> b!517624 (= e!302068 e!302069)))

(declare-fun lt!237012 () (_ BitVec 64))

(assert (=> b!517624 (= lt!237012 (select (arr!15903 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237011 () Unit!16004)

(assert (=> b!517624 (= lt!237011 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237012 #b00000000000000000000000000000000))))

(assert (=> b!517624 (arrayContainsKey!0 a!3235 lt!237012 #b00000000000000000000000000000000)))

(declare-fun lt!237010 () Unit!16004)

(assert (=> b!517624 (= lt!237010 lt!237011)))

(declare-fun res!316853 () Bool)

(assert (=> b!517624 (= res!316853 (= (seekEntryOrOpen!0 (select (arr!15903 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4377 #b00000000000000000000000000000000)))))

(assert (=> b!517624 (=> (not res!316853) (not e!302069))))

(declare-fun b!517625 () Bool)

(declare-fun e!302067 () Bool)

(assert (=> b!517625 (= e!302067 e!302068)))

(declare-fun c!60679 () Bool)

(assert (=> b!517625 (= c!60679 (validKeyInArray!0 (select (arr!15903 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517626 () Bool)

(declare-fun call!31696 () Bool)

(assert (=> b!517626 (= e!302068 call!31696)))

(declare-fun bm!31693 () Bool)

(assert (=> bm!31693 (= call!31696 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517627 () Bool)

(assert (=> b!517627 (= e!302069 call!31696)))

(declare-fun d!79699 () Bool)

(declare-fun res!316854 () Bool)

(assert (=> d!79699 (=> res!316854 e!302067)))

(assert (=> d!79699 (= res!316854 (bvsge #b00000000000000000000000000000000 (size!16267 a!3235)))))

(assert (=> d!79699 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302067)))

(assert (= (and d!79699 (not res!316854)) b!517625))

(assert (= (and b!517625 c!60679) b!517624))

(assert (= (and b!517625 (not c!60679)) b!517626))

(assert (= (and b!517624 res!316853) b!517627))

(assert (= (or b!517627 b!517626) bm!31693))

(assert (=> b!517624 m!498929))

(declare-fun m!499019 () Bool)

(assert (=> b!517624 m!499019))

(declare-fun m!499021 () Bool)

(assert (=> b!517624 m!499021))

(assert (=> b!517624 m!498929))

(declare-fun m!499023 () Bool)

(assert (=> b!517624 m!499023))

(assert (=> b!517625 m!498929))

(assert (=> b!517625 m!498929))

(assert (=> b!517625 m!498933))

(declare-fun m!499025 () Bool)

(assert (=> bm!31693 m!499025))

(assert (=> b!517358 d!79699))

(declare-fun d!79701 () Bool)

(declare-fun res!316859 () Bool)

(declare-fun e!302074 () Bool)

(assert (=> d!79701 (=> res!316859 e!302074)))

(assert (=> d!79701 (= res!316859 (= (select (arr!15903 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79701 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!302074)))

(declare-fun b!517632 () Bool)

(declare-fun e!302075 () Bool)

(assert (=> b!517632 (= e!302074 e!302075)))

(declare-fun res!316860 () Bool)

(assert (=> b!517632 (=> (not res!316860) (not e!302075))))

(assert (=> b!517632 (= res!316860 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16267 a!3235)))))

(declare-fun b!517633 () Bool)

(assert (=> b!517633 (= e!302075 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79701 (not res!316859)) b!517632))

(assert (= (and b!517632 res!316860) b!517633))

(assert (=> d!79701 m!498929))

(declare-fun m!499027 () Bool)

(assert (=> b!517633 m!499027))

(assert (=> b!517354 d!79701))

(declare-fun b!517692 () Bool)

(declare-fun e!302108 () SeekEntryResult!4377)

(declare-fun lt!237033 () SeekEntryResult!4377)

(assert (=> b!517692 (= e!302108 (MissingZero!4377 (index!19698 lt!237033)))))

(declare-fun b!517693 () Bool)

(declare-fun c!60703 () Bool)

(declare-fun lt!237035 () (_ BitVec 64))

(assert (=> b!517693 (= c!60703 (= lt!237035 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302109 () SeekEntryResult!4377)

(assert (=> b!517693 (= e!302109 e!302108)))

(declare-fun b!517694 () Bool)

(assert (=> b!517694 (= e!302109 (Found!4377 (index!19698 lt!237033)))))

(declare-fun d!79703 () Bool)

(declare-fun lt!237034 () SeekEntryResult!4377)

(assert (=> d!79703 (and (or (is-Undefined!4377 lt!237034) (not (is-Found!4377 lt!237034)) (and (bvsge (index!19697 lt!237034) #b00000000000000000000000000000000) (bvslt (index!19697 lt!237034) (size!16267 a!3235)))) (or (is-Undefined!4377 lt!237034) (is-Found!4377 lt!237034) (not (is-MissingZero!4377 lt!237034)) (and (bvsge (index!19696 lt!237034) #b00000000000000000000000000000000) (bvslt (index!19696 lt!237034) (size!16267 a!3235)))) (or (is-Undefined!4377 lt!237034) (is-Found!4377 lt!237034) (is-MissingZero!4377 lt!237034) (not (is-MissingVacant!4377 lt!237034)) (and (bvsge (index!19699 lt!237034) #b00000000000000000000000000000000) (bvslt (index!19699 lt!237034) (size!16267 a!3235)))) (or (is-Undefined!4377 lt!237034) (ite (is-Found!4377 lt!237034) (= (select (arr!15903 a!3235) (index!19697 lt!237034)) (select (arr!15903 a!3235) j!176)) (ite (is-MissingZero!4377 lt!237034) (= (select (arr!15903 a!3235) (index!19696 lt!237034)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4377 lt!237034) (= (select (arr!15903 a!3235) (index!19699 lt!237034)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302110 () SeekEntryResult!4377)

(assert (=> d!79703 (= lt!237034 e!302110)))

(declare-fun c!60702 () Bool)

(assert (=> d!79703 (= c!60702 (and (is-Intermediate!4377 lt!237033) (undefined!5189 lt!237033)))))

(assert (=> d!79703 (= lt!237033 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15903 a!3235) j!176) mask!3524) (select (arr!15903 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79703 (validMask!0 mask!3524)))

(assert (=> d!79703 (= (seekEntryOrOpen!0 (select (arr!15903 a!3235) j!176) a!3235 mask!3524) lt!237034)))

(declare-fun b!517695 () Bool)

(assert (=> b!517695 (= e!302110 Undefined!4377)))

(declare-fun b!517696 () Bool)

(assert (=> b!517696 (= e!302110 e!302109)))

(assert (=> b!517696 (= lt!237035 (select (arr!15903 a!3235) (index!19698 lt!237033)))))

(declare-fun c!60704 () Bool)

(assert (=> b!517696 (= c!60704 (= lt!237035 (select (arr!15903 a!3235) j!176)))))

(declare-fun b!517697 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33082 (_ BitVec 32)) SeekEntryResult!4377)

(assert (=> b!517697 (= e!302108 (seekKeyOrZeroReturnVacant!0 (x!48691 lt!237033) (index!19698 lt!237033) (index!19698 lt!237033) (select (arr!15903 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79703 c!60702) b!517695))

(assert (= (and d!79703 (not c!60702)) b!517696))

(assert (= (and b!517696 c!60704) b!517694))

(assert (= (and b!517696 (not c!60704)) b!517693))

(assert (= (and b!517693 c!60703) b!517692))

(assert (= (and b!517693 (not c!60703)) b!517697))

(declare-fun m!499069 () Bool)

(assert (=> d!79703 m!499069))

(assert (=> d!79703 m!498785))

(assert (=> d!79703 m!498801))

(assert (=> d!79703 m!498815))

(declare-fun m!499071 () Bool)

(assert (=> d!79703 m!499071))

(assert (=> d!79703 m!498801))

(assert (=> d!79703 m!498785))

(declare-fun m!499073 () Bool)

(assert (=> d!79703 m!499073))

(declare-fun m!499075 () Bool)

(assert (=> d!79703 m!499075))

(declare-fun m!499077 () Bool)

(assert (=> b!517696 m!499077))

(assert (=> b!517697 m!498785))

(declare-fun m!499079 () Bool)

(assert (=> b!517697 m!499079))

(assert (=> b!517360 d!79703))

(declare-fun d!79713 () Bool)

(assert (=> d!79713 (= (validKeyInArray!0 (select (arr!15903 a!3235) j!176)) (and (not (= (select (arr!15903 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15903 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517361 d!79713))

(declare-fun d!79715 () Bool)

(assert (=> d!79715 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46924 d!79715))

(declare-fun d!79719 () Bool)

(assert (=> d!79719 (= (array_inv!11677 a!3235) (bvsge (size!16267 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46924 d!79719))

(declare-fun b!517713 () Bool)

(declare-fun e!302123 () SeekEntryResult!4377)

(declare-fun lt!237036 () SeekEntryResult!4377)

(assert (=> b!517713 (= e!302123 (MissingZero!4377 (index!19698 lt!237036)))))

(declare-fun b!517714 () Bool)

(declare-fun c!60709 () Bool)

(declare-fun lt!237038 () (_ BitVec 64))

(assert (=> b!517714 (= c!60709 (= lt!237038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302124 () SeekEntryResult!4377)

(assert (=> b!517714 (= e!302124 e!302123)))

(declare-fun b!517715 () Bool)

(assert (=> b!517715 (= e!302124 (Found!4377 (index!19698 lt!237036)))))

(declare-fun d!79721 () Bool)

(declare-fun lt!237037 () SeekEntryResult!4377)

(assert (=> d!79721 (and (or (is-Undefined!4377 lt!237037) (not (is-Found!4377 lt!237037)) (and (bvsge (index!19697 lt!237037) #b00000000000000000000000000000000) (bvslt (index!19697 lt!237037) (size!16267 a!3235)))) (or (is-Undefined!4377 lt!237037) (is-Found!4377 lt!237037) (not (is-MissingZero!4377 lt!237037)) (and (bvsge (index!19696 lt!237037) #b00000000000000000000000000000000) (bvslt (index!19696 lt!237037) (size!16267 a!3235)))) (or (is-Undefined!4377 lt!237037) (is-Found!4377 lt!237037) (is-MissingZero!4377 lt!237037) (not (is-MissingVacant!4377 lt!237037)) (and (bvsge (index!19699 lt!237037) #b00000000000000000000000000000000) (bvslt (index!19699 lt!237037) (size!16267 a!3235)))) (or (is-Undefined!4377 lt!237037) (ite (is-Found!4377 lt!237037) (= (select (arr!15903 a!3235) (index!19697 lt!237037)) k!2280) (ite (is-MissingZero!4377 lt!237037) (= (select (arr!15903 a!3235) (index!19696 lt!237037)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4377 lt!237037) (= (select (arr!15903 a!3235) (index!19699 lt!237037)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302125 () SeekEntryResult!4377)

(assert (=> d!79721 (= lt!237037 e!302125)))

(declare-fun c!60708 () Bool)

(assert (=> d!79721 (= c!60708 (and (is-Intermediate!4377 lt!237036) (undefined!5189 lt!237036)))))

(assert (=> d!79721 (= lt!237036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79721 (validMask!0 mask!3524)))

(assert (=> d!79721 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237037)))

(declare-fun b!517716 () Bool)

(assert (=> b!517716 (= e!302125 Undefined!4377)))

(declare-fun b!517717 () Bool)

(assert (=> b!517717 (= e!302125 e!302124)))

(assert (=> b!517717 (= lt!237038 (select (arr!15903 a!3235) (index!19698 lt!237036)))))

(declare-fun c!60710 () Bool)

(assert (=> b!517717 (= c!60710 (= lt!237038 k!2280))))

(declare-fun b!517718 () Bool)

(assert (=> b!517718 (= e!302123 (seekKeyOrZeroReturnVacant!0 (x!48691 lt!237036) (index!19698 lt!237036) (index!19698 lt!237036) k!2280 a!3235 mask!3524))))

(assert (= (and d!79721 c!60708) b!517716))

(assert (= (and d!79721 (not c!60708)) b!517717))

(assert (= (and b!517717 c!60710) b!517715))

(assert (= (and b!517717 (not c!60710)) b!517714))

(assert (= (and b!517714 c!60709) b!517713))

(assert (= (and b!517714 (not c!60709)) b!517718))

(declare-fun m!499085 () Bool)

(assert (=> d!79721 m!499085))

(declare-fun m!499087 () Bool)

(assert (=> d!79721 m!499087))

(assert (=> d!79721 m!498815))

(declare-fun m!499089 () Bool)

(assert (=> d!79721 m!499089))

(assert (=> d!79721 m!499087))

(declare-fun m!499091 () Bool)

(assert (=> d!79721 m!499091))

(declare-fun m!499093 () Bool)

(assert (=> d!79721 m!499093))

(declare-fun m!499095 () Bool)

(assert (=> b!517717 m!499095))

(declare-fun m!499097 () Bool)

(assert (=> b!517718 m!499097))

(assert (=> b!517356 d!79721))

(push 1)

(assert (not d!79703))

(assert (not b!517588))

(assert (not b!517633))

(assert (not b!517718))

(assert (not b!517625))

(assert (not b!517497))

(assert (not d!79721))

(assert (not bm!31685))

(assert (not bm!31689))

(assert (not b!517531))

(assert (not b!517498))

(assert (not b!517606))

(assert (not d!79689))

(assert (not b!517530))

(assert (not d!79695))

(assert (not b!517624))

(assert (not b!517499))

(assert (not bm!31693))

(assert (not b!517697))

(assert (not d!79677))

