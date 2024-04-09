; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46926 () Bool)

(assert start!46926)

(declare-fun b!517384 () Bool)

(declare-fun e!301922 () Bool)

(declare-fun e!301923 () Bool)

(assert (=> b!517384 (= e!301922 e!301923)))

(declare-fun res!316742 () Bool)

(assert (=> b!517384 (=> (not res!316742) (not e!301923))))

(declare-datatypes ((SeekEntryResult!4378 0))(
  ( (MissingZero!4378 (index!19700 (_ BitVec 32))) (Found!4378 (index!19701 (_ BitVec 32))) (Intermediate!4378 (undefined!5190 Bool) (index!19702 (_ BitVec 32)) (x!48692 (_ BitVec 32))) (Undefined!4378) (MissingVacant!4378 (index!19703 (_ BitVec 32))) )
))
(declare-fun lt!236890 () SeekEntryResult!4378)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!517384 (= res!316742 (or (= lt!236890 (MissingZero!4378 i!1204)) (= lt!236890 (MissingVacant!4378 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33084 0))(
  ( (array!33085 (arr!15904 (Array (_ BitVec 32) (_ BitVec 64))) (size!16268 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33084)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33084 (_ BitVec 32)) SeekEntryResult!4378)

(assert (=> b!517384 (= lt!236890 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!517385 () Bool)

(declare-fun res!316732 () Bool)

(declare-fun e!301924 () Bool)

(assert (=> b!517385 (=> res!316732 e!301924)))

(declare-fun lt!236894 () SeekEntryResult!4378)

(get-info :version)

(assert (=> b!517385 (= res!316732 (or (undefined!5190 lt!236894) (not ((_ is Intermediate!4378) lt!236894))))))

(declare-fun b!517386 () Bool)

(declare-fun res!316740 () Bool)

(assert (=> b!517386 (=> (not res!316740) (not e!301922))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517386 (= res!316740 (and (= (size!16268 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16268 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16268 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!301921 () Bool)

(declare-fun b!517387 () Bool)

(assert (=> b!517387 (= e!301921 (= (seekEntryOrOpen!0 (select (arr!15904 a!3235) j!176) a!3235 mask!3524) (Found!4378 j!176)))))

(declare-fun b!517388 () Bool)

(declare-fun res!316734 () Bool)

(assert (=> b!517388 (=> (not res!316734) (not e!301922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517388 (= res!316734 (validKeyInArray!0 k0!2280))))

(declare-fun b!517389 () Bool)

(assert (=> b!517389 (= e!301923 (not e!301924))))

(declare-fun res!316739 () Bool)

(assert (=> b!517389 (=> res!316739 e!301924)))

(declare-fun lt!236891 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33084 (_ BitVec 32)) SeekEntryResult!4378)

(assert (=> b!517389 (= res!316739 (= lt!236894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236891 (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235)) mask!3524)))))

(declare-fun lt!236893 () (_ BitVec 32))

(assert (=> b!517389 (= lt!236894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236893 (select (arr!15904 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517389 (= lt!236891 (toIndex!0 (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!517389 (= lt!236893 (toIndex!0 (select (arr!15904 a!3235) j!176) mask!3524))))

(assert (=> b!517389 e!301921))

(declare-fun res!316738 () Bool)

(assert (=> b!517389 (=> (not res!316738) (not e!301921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33084 (_ BitVec 32)) Bool)

(assert (=> b!517389 (= res!316738 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16006 0))(
  ( (Unit!16007) )
))
(declare-fun lt!236892 () Unit!16006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16006)

(assert (=> b!517389 (= lt!236892 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517391 () Bool)

(declare-fun res!316741 () Bool)

(assert (=> b!517391 (=> (not res!316741) (not e!301922))))

(declare-fun arrayContainsKey!0 (array!33084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517391 (= res!316741 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517392 () Bool)

(declare-fun res!316733 () Bool)

(assert (=> b!517392 (=> (not res!316733) (not e!301922))))

(assert (=> b!517392 (= res!316733 (validKeyInArray!0 (select (arr!15904 a!3235) j!176)))))

(declare-fun b!517393 () Bool)

(assert (=> b!517393 (= e!301924 (or (not (= (select (arr!15904 a!3235) (index!19702 lt!236894)) (select (arr!15904 a!3235) j!176))) (bvsgt (x!48692 lt!236894) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48692 lt!236894)) (bvslt lt!236893 #b00000000000000000000000000000000) (bvsge lt!236893 (size!16268 a!3235)) (and (bvsge (index!19702 lt!236894) #b00000000000000000000000000000000) (bvslt (index!19702 lt!236894) (size!16268 a!3235)))))))

(assert (=> b!517393 (and (bvslt (x!48692 lt!236894) #b01111111111111111111111111111110) (or (= (select (arr!15904 a!3235) (index!19702 lt!236894)) (select (arr!15904 a!3235) j!176)) (= (select (arr!15904 a!3235) (index!19702 lt!236894)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15904 a!3235) (index!19702 lt!236894)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517394 () Bool)

(declare-fun res!316737 () Bool)

(assert (=> b!517394 (=> (not res!316737) (not e!301923))))

(assert (=> b!517394 (= res!316737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!316736 () Bool)

(assert (=> start!46926 (=> (not res!316736) (not e!301922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46926 (= res!316736 (validMask!0 mask!3524))))

(assert (=> start!46926 e!301922))

(assert (=> start!46926 true))

(declare-fun array_inv!11678 (array!33084) Bool)

(assert (=> start!46926 (array_inv!11678 a!3235)))

(declare-fun b!517390 () Bool)

(declare-fun res!316735 () Bool)

(assert (=> b!517390 (=> (not res!316735) (not e!301923))))

(declare-datatypes ((List!10115 0))(
  ( (Nil!10112) (Cons!10111 (h!11015 (_ BitVec 64)) (t!16351 List!10115)) )
))
(declare-fun arrayNoDuplicates!0 (array!33084 (_ BitVec 32) List!10115) Bool)

(assert (=> b!517390 (= res!316735 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10112))))

(assert (= (and start!46926 res!316736) b!517386))

(assert (= (and b!517386 res!316740) b!517392))

(assert (= (and b!517392 res!316733) b!517388))

(assert (= (and b!517388 res!316734) b!517391))

(assert (= (and b!517391 res!316741) b!517384))

(assert (= (and b!517384 res!316742) b!517394))

(assert (= (and b!517394 res!316737) b!517390))

(assert (= (and b!517390 res!316735) b!517389))

(assert (= (and b!517389 res!316738) b!517387))

(assert (= (and b!517389 (not res!316739)) b!517385))

(assert (= (and b!517385 (not res!316732)) b!517393))

(declare-fun m!498819 () Bool)

(assert (=> start!46926 m!498819))

(declare-fun m!498821 () Bool)

(assert (=> start!46926 m!498821))

(declare-fun m!498823 () Bool)

(assert (=> b!517392 m!498823))

(assert (=> b!517392 m!498823))

(declare-fun m!498825 () Bool)

(assert (=> b!517392 m!498825))

(declare-fun m!498827 () Bool)

(assert (=> b!517394 m!498827))

(declare-fun m!498829 () Bool)

(assert (=> b!517393 m!498829))

(assert (=> b!517393 m!498823))

(declare-fun m!498831 () Bool)

(assert (=> b!517388 m!498831))

(declare-fun m!498833 () Bool)

(assert (=> b!517384 m!498833))

(declare-fun m!498835 () Bool)

(assert (=> b!517389 m!498835))

(declare-fun m!498837 () Bool)

(assert (=> b!517389 m!498837))

(declare-fun m!498839 () Bool)

(assert (=> b!517389 m!498839))

(assert (=> b!517389 m!498823))

(declare-fun m!498841 () Bool)

(assert (=> b!517389 m!498841))

(assert (=> b!517389 m!498823))

(declare-fun m!498843 () Bool)

(assert (=> b!517389 m!498843))

(assert (=> b!517389 m!498823))

(declare-fun m!498845 () Bool)

(assert (=> b!517389 m!498845))

(assert (=> b!517389 m!498839))

(declare-fun m!498847 () Bool)

(assert (=> b!517389 m!498847))

(assert (=> b!517389 m!498839))

(declare-fun m!498849 () Bool)

(assert (=> b!517389 m!498849))

(declare-fun m!498851 () Bool)

(assert (=> b!517391 m!498851))

(declare-fun m!498853 () Bool)

(assert (=> b!517390 m!498853))

(assert (=> b!517387 m!498823))

(assert (=> b!517387 m!498823))

(declare-fun m!498855 () Bool)

(assert (=> b!517387 m!498855))

(check-sat (not b!517387) (not b!517390) (not start!46926) (not b!517392) (not b!517384) (not b!517394) (not b!517391) (not b!517388) (not b!517389))
(check-sat)
(get-model)

(declare-fun b!517438 () Bool)

(declare-fun e!301950 () Bool)

(declare-fun e!301948 () Bool)

(assert (=> b!517438 (= e!301950 e!301948)))

(declare-fun res!316783 () Bool)

(assert (=> b!517438 (=> (not res!316783) (not e!301948))))

(declare-fun e!301949 () Bool)

(assert (=> b!517438 (= res!316783 (not e!301949))))

(declare-fun res!316784 () Bool)

(assert (=> b!517438 (=> (not res!316784) (not e!301949))))

(assert (=> b!517438 (= res!316784 (validKeyInArray!0 (select (arr!15904 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517439 () Bool)

(declare-fun e!301951 () Bool)

(declare-fun call!31682 () Bool)

(assert (=> b!517439 (= e!301951 call!31682)))

(declare-fun b!517440 () Bool)

(declare-fun contains!2752 (List!10115 (_ BitVec 64)) Bool)

(assert (=> b!517440 (= e!301949 (contains!2752 Nil!10112 (select (arr!15904 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79637 () Bool)

(declare-fun res!316782 () Bool)

(assert (=> d!79637 (=> res!316782 e!301950)))

(assert (=> d!79637 (= res!316782 (bvsge #b00000000000000000000000000000000 (size!16268 a!3235)))))

(assert (=> d!79637 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10112) e!301950)))

(declare-fun b!517441 () Bool)

(assert (=> b!517441 (= e!301951 call!31682)))

(declare-fun bm!31679 () Bool)

(declare-fun c!60620 () Bool)

(assert (=> bm!31679 (= call!31682 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60620 (Cons!10111 (select (arr!15904 a!3235) #b00000000000000000000000000000000) Nil!10112) Nil!10112)))))

(declare-fun b!517442 () Bool)

(assert (=> b!517442 (= e!301948 e!301951)))

(assert (=> b!517442 (= c!60620 (validKeyInArray!0 (select (arr!15904 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79637 (not res!316782)) b!517438))

(assert (= (and b!517438 res!316784) b!517440))

(assert (= (and b!517438 res!316783) b!517442))

(assert (= (and b!517442 c!60620) b!517439))

(assert (= (and b!517442 (not c!60620)) b!517441))

(assert (= (or b!517439 b!517441) bm!31679))

(declare-fun m!498895 () Bool)

(assert (=> b!517438 m!498895))

(assert (=> b!517438 m!498895))

(declare-fun m!498897 () Bool)

(assert (=> b!517438 m!498897))

(assert (=> b!517440 m!498895))

(assert (=> b!517440 m!498895))

(declare-fun m!498899 () Bool)

(assert (=> b!517440 m!498899))

(assert (=> bm!31679 m!498895))

(declare-fun m!498901 () Bool)

(assert (=> bm!31679 m!498901))

(assert (=> b!517442 m!498895))

(assert (=> b!517442 m!498895))

(assert (=> b!517442 m!498897))

(assert (=> b!517390 d!79637))

(declare-fun d!79639 () Bool)

(declare-fun res!316789 () Bool)

(declare-fun e!301956 () Bool)

(assert (=> d!79639 (=> res!316789 e!301956)))

(assert (=> d!79639 (= res!316789 (= (select (arr!15904 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79639 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!301956)))

(declare-fun b!517447 () Bool)

(declare-fun e!301957 () Bool)

(assert (=> b!517447 (= e!301956 e!301957)))

(declare-fun res!316790 () Bool)

(assert (=> b!517447 (=> (not res!316790) (not e!301957))))

(assert (=> b!517447 (= res!316790 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16268 a!3235)))))

(declare-fun b!517448 () Bool)

(assert (=> b!517448 (= e!301957 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79639 (not res!316789)) b!517447))

(assert (= (and b!517447 res!316790) b!517448))

(assert (=> d!79639 m!498895))

(declare-fun m!498903 () Bool)

(assert (=> b!517448 m!498903))

(assert (=> b!517391 d!79639))

(declare-fun d!79641 () Bool)

(assert (=> d!79641 (= (validKeyInArray!0 (select (arr!15904 a!3235) j!176)) (and (not (= (select (arr!15904 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15904 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517392 d!79641))

(declare-fun b!517461 () Bool)

(declare-fun e!301966 () SeekEntryResult!4378)

(declare-fun e!301965 () SeekEntryResult!4378)

(assert (=> b!517461 (= e!301966 e!301965)))

(declare-fun lt!236917 () (_ BitVec 64))

(declare-fun lt!236918 () SeekEntryResult!4378)

(assert (=> b!517461 (= lt!236917 (select (arr!15904 a!3235) (index!19702 lt!236918)))))

(declare-fun c!60629 () Bool)

(assert (=> b!517461 (= c!60629 (= lt!236917 (select (arr!15904 a!3235) j!176)))))

(declare-fun b!517462 () Bool)

(assert (=> b!517462 (= e!301966 Undefined!4378)))

(declare-fun d!79643 () Bool)

(declare-fun lt!236916 () SeekEntryResult!4378)

(assert (=> d!79643 (and (or ((_ is Undefined!4378) lt!236916) (not ((_ is Found!4378) lt!236916)) (and (bvsge (index!19701 lt!236916) #b00000000000000000000000000000000) (bvslt (index!19701 lt!236916) (size!16268 a!3235)))) (or ((_ is Undefined!4378) lt!236916) ((_ is Found!4378) lt!236916) (not ((_ is MissingZero!4378) lt!236916)) (and (bvsge (index!19700 lt!236916) #b00000000000000000000000000000000) (bvslt (index!19700 lt!236916) (size!16268 a!3235)))) (or ((_ is Undefined!4378) lt!236916) ((_ is Found!4378) lt!236916) ((_ is MissingZero!4378) lt!236916) (not ((_ is MissingVacant!4378) lt!236916)) (and (bvsge (index!19703 lt!236916) #b00000000000000000000000000000000) (bvslt (index!19703 lt!236916) (size!16268 a!3235)))) (or ((_ is Undefined!4378) lt!236916) (ite ((_ is Found!4378) lt!236916) (= (select (arr!15904 a!3235) (index!19701 lt!236916)) (select (arr!15904 a!3235) j!176)) (ite ((_ is MissingZero!4378) lt!236916) (= (select (arr!15904 a!3235) (index!19700 lt!236916)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4378) lt!236916) (= (select (arr!15904 a!3235) (index!19703 lt!236916)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79643 (= lt!236916 e!301966)))

(declare-fun c!60628 () Bool)

(assert (=> d!79643 (= c!60628 (and ((_ is Intermediate!4378) lt!236918) (undefined!5190 lt!236918)))))

(assert (=> d!79643 (= lt!236918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15904 a!3235) j!176) mask!3524) (select (arr!15904 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79643 (validMask!0 mask!3524)))

(assert (=> d!79643 (= (seekEntryOrOpen!0 (select (arr!15904 a!3235) j!176) a!3235 mask!3524) lt!236916)))

(declare-fun b!517463 () Bool)

(declare-fun c!60627 () Bool)

(assert (=> b!517463 (= c!60627 (= lt!236917 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301964 () SeekEntryResult!4378)

(assert (=> b!517463 (= e!301965 e!301964)))

(declare-fun b!517464 () Bool)

(assert (=> b!517464 (= e!301964 (MissingZero!4378 (index!19702 lt!236918)))))

(declare-fun b!517465 () Bool)

(assert (=> b!517465 (= e!301965 (Found!4378 (index!19702 lt!236918)))))

(declare-fun b!517466 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33084 (_ BitVec 32)) SeekEntryResult!4378)

(assert (=> b!517466 (= e!301964 (seekKeyOrZeroReturnVacant!0 (x!48692 lt!236918) (index!19702 lt!236918) (index!19702 lt!236918) (select (arr!15904 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79643 c!60628) b!517462))

(assert (= (and d!79643 (not c!60628)) b!517461))

(assert (= (and b!517461 c!60629) b!517465))

(assert (= (and b!517461 (not c!60629)) b!517463))

(assert (= (and b!517463 c!60627) b!517464))

(assert (= (and b!517463 (not c!60627)) b!517466))

(declare-fun m!498905 () Bool)

(assert (=> b!517461 m!498905))

(assert (=> d!79643 m!498823))

(assert (=> d!79643 m!498843))

(assert (=> d!79643 m!498819))

(declare-fun m!498907 () Bool)

(assert (=> d!79643 m!498907))

(declare-fun m!498909 () Bool)

(assert (=> d!79643 m!498909))

(assert (=> d!79643 m!498843))

(assert (=> d!79643 m!498823))

(declare-fun m!498911 () Bool)

(assert (=> d!79643 m!498911))

(declare-fun m!498913 () Bool)

(assert (=> d!79643 m!498913))

(assert (=> b!517466 m!498823))

(declare-fun m!498915 () Bool)

(assert (=> b!517466 m!498915))

(assert (=> b!517387 d!79643))

(declare-fun d!79645 () Bool)

(assert (=> d!79645 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517388 d!79645))

(declare-fun bm!31682 () Bool)

(declare-fun call!31685 () Bool)

(assert (=> bm!31682 (= call!31685 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517475 () Bool)

(declare-fun e!301975 () Bool)

(declare-fun e!301974 () Bool)

(assert (=> b!517475 (= e!301975 e!301974)))

(declare-fun c!60632 () Bool)

(assert (=> b!517475 (= c!60632 (validKeyInArray!0 (select (arr!15904 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79647 () Bool)

(declare-fun res!316796 () Bool)

(assert (=> d!79647 (=> res!316796 e!301975)))

(assert (=> d!79647 (= res!316796 (bvsge #b00000000000000000000000000000000 (size!16268 a!3235)))))

(assert (=> d!79647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!301975)))

(declare-fun b!517476 () Bool)

(declare-fun e!301973 () Bool)

(assert (=> b!517476 (= e!301973 call!31685)))

(declare-fun b!517477 () Bool)

(assert (=> b!517477 (= e!301974 call!31685)))

(declare-fun b!517478 () Bool)

(assert (=> b!517478 (= e!301974 e!301973)))

(declare-fun lt!236927 () (_ BitVec 64))

(assert (=> b!517478 (= lt!236927 (select (arr!15904 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!236926 () Unit!16006)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33084 (_ BitVec 64) (_ BitVec 32)) Unit!16006)

(assert (=> b!517478 (= lt!236926 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236927 #b00000000000000000000000000000000))))

(assert (=> b!517478 (arrayContainsKey!0 a!3235 lt!236927 #b00000000000000000000000000000000)))

(declare-fun lt!236925 () Unit!16006)

(assert (=> b!517478 (= lt!236925 lt!236926)))

(declare-fun res!316795 () Bool)

(assert (=> b!517478 (= res!316795 (= (seekEntryOrOpen!0 (select (arr!15904 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4378 #b00000000000000000000000000000000)))))

(assert (=> b!517478 (=> (not res!316795) (not e!301973))))

(assert (= (and d!79647 (not res!316796)) b!517475))

(assert (= (and b!517475 c!60632) b!517478))

(assert (= (and b!517475 (not c!60632)) b!517477))

(assert (= (and b!517478 res!316795) b!517476))

(assert (= (or b!517476 b!517477) bm!31682))

(declare-fun m!498917 () Bool)

(assert (=> bm!31682 m!498917))

(assert (=> b!517475 m!498895))

(assert (=> b!517475 m!498895))

(assert (=> b!517475 m!498897))

(assert (=> b!517478 m!498895))

(declare-fun m!498919 () Bool)

(assert (=> b!517478 m!498919))

(declare-fun m!498921 () Bool)

(assert (=> b!517478 m!498921))

(assert (=> b!517478 m!498895))

(declare-fun m!498923 () Bool)

(assert (=> b!517478 m!498923))

(assert (=> b!517394 d!79647))

(declare-fun d!79655 () Bool)

(assert (=> d!79655 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46926 d!79655))

(declare-fun d!79663 () Bool)

(assert (=> d!79663 (= (array_inv!11678 a!3235) (bvsge (size!16268 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46926 d!79663))

(declare-fun b!517500 () Bool)

(declare-fun e!301996 () SeekEntryResult!4378)

(declare-fun e!301995 () SeekEntryResult!4378)

(assert (=> b!517500 (= e!301996 e!301995)))

(declare-fun lt!236935 () (_ BitVec 64))

(declare-fun lt!236936 () SeekEntryResult!4378)

(assert (=> b!517500 (= lt!236935 (select (arr!15904 a!3235) (index!19702 lt!236936)))))

(declare-fun c!60638 () Bool)

(assert (=> b!517500 (= c!60638 (= lt!236935 k0!2280))))

(declare-fun b!517501 () Bool)

(assert (=> b!517501 (= e!301996 Undefined!4378)))

(declare-fun d!79665 () Bool)

(declare-fun lt!236934 () SeekEntryResult!4378)

(assert (=> d!79665 (and (or ((_ is Undefined!4378) lt!236934) (not ((_ is Found!4378) lt!236934)) (and (bvsge (index!19701 lt!236934) #b00000000000000000000000000000000) (bvslt (index!19701 lt!236934) (size!16268 a!3235)))) (or ((_ is Undefined!4378) lt!236934) ((_ is Found!4378) lt!236934) (not ((_ is MissingZero!4378) lt!236934)) (and (bvsge (index!19700 lt!236934) #b00000000000000000000000000000000) (bvslt (index!19700 lt!236934) (size!16268 a!3235)))) (or ((_ is Undefined!4378) lt!236934) ((_ is Found!4378) lt!236934) ((_ is MissingZero!4378) lt!236934) (not ((_ is MissingVacant!4378) lt!236934)) (and (bvsge (index!19703 lt!236934) #b00000000000000000000000000000000) (bvslt (index!19703 lt!236934) (size!16268 a!3235)))) (or ((_ is Undefined!4378) lt!236934) (ite ((_ is Found!4378) lt!236934) (= (select (arr!15904 a!3235) (index!19701 lt!236934)) k0!2280) (ite ((_ is MissingZero!4378) lt!236934) (= (select (arr!15904 a!3235) (index!19700 lt!236934)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4378) lt!236934) (= (select (arr!15904 a!3235) (index!19703 lt!236934)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79665 (= lt!236934 e!301996)))

(declare-fun c!60637 () Bool)

(assert (=> d!79665 (= c!60637 (and ((_ is Intermediate!4378) lt!236936) (undefined!5190 lt!236936)))))

(assert (=> d!79665 (= lt!236936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79665 (validMask!0 mask!3524)))

(assert (=> d!79665 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!236934)))

(declare-fun b!517502 () Bool)

(declare-fun c!60636 () Bool)

(assert (=> b!517502 (= c!60636 (= lt!236935 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301994 () SeekEntryResult!4378)

(assert (=> b!517502 (= e!301995 e!301994)))

(declare-fun b!517503 () Bool)

(assert (=> b!517503 (= e!301994 (MissingZero!4378 (index!19702 lt!236936)))))

(declare-fun b!517504 () Bool)

(assert (=> b!517504 (= e!301995 (Found!4378 (index!19702 lt!236936)))))

(declare-fun b!517505 () Bool)

(assert (=> b!517505 (= e!301994 (seekKeyOrZeroReturnVacant!0 (x!48692 lt!236936) (index!19702 lt!236936) (index!19702 lt!236936) k0!2280 a!3235 mask!3524))))

(assert (= (and d!79665 c!60637) b!517501))

(assert (= (and d!79665 (not c!60637)) b!517500))

(assert (= (and b!517500 c!60638) b!517504))

(assert (= (and b!517500 (not c!60638)) b!517502))

(assert (= (and b!517502 c!60636) b!517503))

(assert (= (and b!517502 (not c!60636)) b!517505))

(declare-fun m!498937 () Bool)

(assert (=> b!517500 m!498937))

(declare-fun m!498939 () Bool)

(assert (=> d!79665 m!498939))

(assert (=> d!79665 m!498819))

(declare-fun m!498941 () Bool)

(assert (=> d!79665 m!498941))

(declare-fun m!498943 () Bool)

(assert (=> d!79665 m!498943))

(assert (=> d!79665 m!498939))

(declare-fun m!498945 () Bool)

(assert (=> d!79665 m!498945))

(declare-fun m!498947 () Bool)

(assert (=> d!79665 m!498947))

(declare-fun m!498949 () Bool)

(assert (=> b!517505 m!498949))

(assert (=> b!517384 d!79665))

(declare-fun d!79669 () Bool)

(declare-fun lt!236942 () (_ BitVec 32))

(declare-fun lt!236941 () (_ BitVec 32))

(assert (=> d!79669 (= lt!236942 (bvmul (bvxor lt!236941 (bvlshr lt!236941 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79669 (= lt!236941 ((_ extract 31 0) (bvand (bvxor (select (arr!15904 a!3235) j!176) (bvlshr (select (arr!15904 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79669 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316813 (let ((h!11018 ((_ extract 31 0) (bvand (bvxor (select (arr!15904 a!3235) j!176) (bvlshr (select (arr!15904 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48695 (bvmul (bvxor h!11018 (bvlshr h!11018 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48695 (bvlshr x!48695 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316813 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316813 #b00000000000000000000000000000000))))))

(assert (=> d!79669 (= (toIndex!0 (select (arr!15904 a!3235) j!176) mask!3524) (bvand (bvxor lt!236942 (bvlshr lt!236942 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517389 d!79669))

(declare-fun call!31689 () Bool)

(declare-fun bm!31686 () Bool)

(assert (=> bm!31686 (= call!31689 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517512 () Bool)

(declare-fun e!302004 () Bool)

(declare-fun e!302002 () Bool)

(assert (=> b!517512 (= e!302004 e!302002)))

(declare-fun c!60641 () Bool)

(assert (=> b!517512 (= c!60641 (validKeyInArray!0 (select (arr!15904 a!3235) j!176)))))

(declare-fun d!79671 () Bool)

(declare-fun res!316817 () Bool)

(assert (=> d!79671 (=> res!316817 e!302004)))

(assert (=> d!79671 (= res!316817 (bvsge j!176 (size!16268 a!3235)))))

(assert (=> d!79671 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302004)))

(declare-fun b!517513 () Bool)

(declare-fun e!302001 () Bool)

(assert (=> b!517513 (= e!302001 call!31689)))

(declare-fun b!517514 () Bool)

(assert (=> b!517514 (= e!302002 call!31689)))

(declare-fun b!517515 () Bool)

(assert (=> b!517515 (= e!302002 e!302001)))

(declare-fun lt!236951 () (_ BitVec 64))

(assert (=> b!517515 (= lt!236951 (select (arr!15904 a!3235) j!176))))

(declare-fun lt!236950 () Unit!16006)

(assert (=> b!517515 (= lt!236950 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236951 j!176))))

(assert (=> b!517515 (arrayContainsKey!0 a!3235 lt!236951 #b00000000000000000000000000000000)))

(declare-fun lt!236949 () Unit!16006)

(assert (=> b!517515 (= lt!236949 lt!236950)))

(declare-fun res!316816 () Bool)

(assert (=> b!517515 (= res!316816 (= (seekEntryOrOpen!0 (select (arr!15904 a!3235) j!176) a!3235 mask!3524) (Found!4378 j!176)))))

(assert (=> b!517515 (=> (not res!316816) (not e!302001))))

(assert (= (and d!79671 (not res!316817)) b!517512))

(assert (= (and b!517512 c!60641) b!517515))

(assert (= (and b!517512 (not c!60641)) b!517514))

(assert (= (and b!517515 res!316816) b!517513))

(assert (= (or b!517513 b!517514) bm!31686))

(declare-fun m!498951 () Bool)

(assert (=> bm!31686 m!498951))

(assert (=> b!517512 m!498823))

(assert (=> b!517512 m!498823))

(assert (=> b!517512 m!498825))

(assert (=> b!517515 m!498823))

(declare-fun m!498953 () Bool)

(assert (=> b!517515 m!498953))

(declare-fun m!498955 () Bool)

(assert (=> b!517515 m!498955))

(assert (=> b!517515 m!498823))

(assert (=> b!517515 m!498855))

(assert (=> b!517389 d!79671))

(declare-fun d!79673 () Bool)

(assert (=> d!79673 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!236965 () Unit!16006)

(declare-fun choose!38 (array!33084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16006)

(assert (=> d!79673 (= lt!236965 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79673 (validMask!0 mask!3524)))

(assert (=> d!79673 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!236965)))

(declare-fun bs!16338 () Bool)

(assert (= bs!16338 d!79673))

(assert (=> bs!16338 m!498845))

(declare-fun m!498963 () Bool)

(assert (=> bs!16338 m!498963))

(assert (=> bs!16338 m!498819))

(assert (=> b!517389 d!79673))

(declare-fun d!79679 () Bool)

(declare-fun lt!236967 () (_ BitVec 32))

(declare-fun lt!236966 () (_ BitVec 32))

(assert (=> d!79679 (= lt!236967 (bvmul (bvxor lt!236966 (bvlshr lt!236966 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79679 (= lt!236966 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79679 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316813 (let ((h!11018 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48695 (bvmul (bvxor h!11018 (bvlshr h!11018 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48695 (bvlshr x!48695 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316813 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316813 #b00000000000000000000000000000000))))))

(assert (=> d!79679 (= (toIndex!0 (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!236967 (bvlshr lt!236967 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517389 d!79679))

(declare-fun b!517597 () Bool)

(declare-fun e!302056 () SeekEntryResult!4378)

(assert (=> b!517597 (= e!302056 (Intermediate!4378 false lt!236893 #b00000000000000000000000000000000))))

(declare-fun b!517598 () Bool)

(declare-fun e!302053 () Bool)

(declare-fun e!302054 () Bool)

(assert (=> b!517598 (= e!302053 e!302054)))

(declare-fun res!316844 () Bool)

(declare-fun lt!236997 () SeekEntryResult!4378)

(assert (=> b!517598 (= res!316844 (and ((_ is Intermediate!4378) lt!236997) (not (undefined!5190 lt!236997)) (bvslt (x!48692 lt!236997) #b01111111111111111111111111111110) (bvsge (x!48692 lt!236997) #b00000000000000000000000000000000) (bvsge (x!48692 lt!236997) #b00000000000000000000000000000000)))))

(assert (=> b!517598 (=> (not res!316844) (not e!302054))))

(declare-fun b!517599 () Bool)

(declare-fun e!302055 () SeekEntryResult!4378)

(assert (=> b!517599 (= e!302055 (Intermediate!4378 true lt!236893 #b00000000000000000000000000000000))))

(declare-fun d!79681 () Bool)

(assert (=> d!79681 e!302053))

(declare-fun c!60670 () Bool)

(assert (=> d!79681 (= c!60670 (and ((_ is Intermediate!4378) lt!236997) (undefined!5190 lt!236997)))))

(assert (=> d!79681 (= lt!236997 e!302055)))

(declare-fun c!60671 () Bool)

(assert (=> d!79681 (= c!60671 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!236996 () (_ BitVec 64))

(assert (=> d!79681 (= lt!236996 (select (arr!15904 a!3235) lt!236893))))

(assert (=> d!79681 (validMask!0 mask!3524)))

(assert (=> d!79681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236893 (select (arr!15904 a!3235) j!176) a!3235 mask!3524) lt!236997)))

(declare-fun b!517600 () Bool)

(assert (=> b!517600 (and (bvsge (index!19702 lt!236997) #b00000000000000000000000000000000) (bvslt (index!19702 lt!236997) (size!16268 a!3235)))))

(declare-fun res!316846 () Bool)

(assert (=> b!517600 (= res!316846 (= (select (arr!15904 a!3235) (index!19702 lt!236997)) (select (arr!15904 a!3235) j!176)))))

(declare-fun e!302052 () Bool)

(assert (=> b!517600 (=> res!316846 e!302052)))

(assert (=> b!517600 (= e!302054 e!302052)))

(declare-fun b!517601 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517601 (= e!302056 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236893 #b00000000000000000000000000000000 mask!3524) (select (arr!15904 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517602 () Bool)

(assert (=> b!517602 (= e!302053 (bvsge (x!48692 lt!236997) #b01111111111111111111111111111110))))

(declare-fun b!517603 () Bool)

(assert (=> b!517603 (and (bvsge (index!19702 lt!236997) #b00000000000000000000000000000000) (bvslt (index!19702 lt!236997) (size!16268 a!3235)))))

(assert (=> b!517603 (= e!302052 (= (select (arr!15904 a!3235) (index!19702 lt!236997)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517604 () Bool)

(assert (=> b!517604 (and (bvsge (index!19702 lt!236997) #b00000000000000000000000000000000) (bvslt (index!19702 lt!236997) (size!16268 a!3235)))))

(declare-fun res!316845 () Bool)

(assert (=> b!517604 (= res!316845 (= (select (arr!15904 a!3235) (index!19702 lt!236997)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517604 (=> res!316845 e!302052)))

(declare-fun b!517605 () Bool)

(assert (=> b!517605 (= e!302055 e!302056)))

(declare-fun c!60672 () Bool)

(assert (=> b!517605 (= c!60672 (or (= lt!236996 (select (arr!15904 a!3235) j!176)) (= (bvadd lt!236996 lt!236996) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!79681 c!60671) b!517599))

(assert (= (and d!79681 (not c!60671)) b!517605))

(assert (= (and b!517605 c!60672) b!517597))

(assert (= (and b!517605 (not c!60672)) b!517601))

(assert (= (and d!79681 c!60670) b!517602))

(assert (= (and d!79681 (not c!60670)) b!517598))

(assert (= (and b!517598 res!316844) b!517600))

(assert (= (and b!517600 (not res!316846)) b!517604))

(assert (= (and b!517604 (not res!316845)) b!517603))

(declare-fun m!498991 () Bool)

(assert (=> b!517604 m!498991))

(assert (=> b!517603 m!498991))

(declare-fun m!498993 () Bool)

(assert (=> b!517601 m!498993))

(assert (=> b!517601 m!498993))

(assert (=> b!517601 m!498823))

(declare-fun m!499001 () Bool)

(assert (=> b!517601 m!499001))

(declare-fun m!499005 () Bool)

(assert (=> d!79681 m!499005))

(assert (=> d!79681 m!498819))

(assert (=> b!517600 m!498991))

(assert (=> b!517389 d!79681))

(declare-fun b!517615 () Bool)

(declare-fun e!302066 () SeekEntryResult!4378)

(assert (=> b!517615 (= e!302066 (Intermediate!4378 false lt!236891 #b00000000000000000000000000000000))))

(declare-fun b!517616 () Bool)

(declare-fun e!302063 () Bool)

(declare-fun e!302064 () Bool)

(assert (=> b!517616 (= e!302063 e!302064)))

(declare-fun res!316850 () Bool)

(declare-fun lt!237006 () SeekEntryResult!4378)

(assert (=> b!517616 (= res!316850 (and ((_ is Intermediate!4378) lt!237006) (not (undefined!5190 lt!237006)) (bvslt (x!48692 lt!237006) #b01111111111111111111111111111110) (bvsge (x!48692 lt!237006) #b00000000000000000000000000000000) (bvsge (x!48692 lt!237006) #b00000000000000000000000000000000)))))

(assert (=> b!517616 (=> (not res!316850) (not e!302064))))

(declare-fun b!517617 () Bool)

(declare-fun e!302065 () SeekEntryResult!4378)

(assert (=> b!517617 (= e!302065 (Intermediate!4378 true lt!236891 #b00000000000000000000000000000000))))

(declare-fun d!79693 () Bool)

(assert (=> d!79693 e!302063))

(declare-fun c!60676 () Bool)

(assert (=> d!79693 (= c!60676 (and ((_ is Intermediate!4378) lt!237006) (undefined!5190 lt!237006)))))

(assert (=> d!79693 (= lt!237006 e!302065)))

(declare-fun c!60677 () Bool)

(assert (=> d!79693 (= c!60677 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237005 () (_ BitVec 64))

(assert (=> d!79693 (= lt!237005 (select (arr!15904 (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235))) lt!236891))))

(assert (=> d!79693 (validMask!0 mask!3524)))

(assert (=> d!79693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236891 (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235)) mask!3524) lt!237006)))

(declare-fun b!517618 () Bool)

(assert (=> b!517618 (and (bvsge (index!19702 lt!237006) #b00000000000000000000000000000000) (bvslt (index!19702 lt!237006) (size!16268 (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235)))))))

(declare-fun res!316852 () Bool)

(assert (=> b!517618 (= res!316852 (= (select (arr!15904 (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235))) (index!19702 lt!237006)) (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176)))))

(declare-fun e!302062 () Bool)

(assert (=> b!517618 (=> res!316852 e!302062)))

(assert (=> b!517618 (= e!302064 e!302062)))

(declare-fun b!517619 () Bool)

(assert (=> b!517619 (= e!302066 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236891 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176) (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235)) mask!3524))))

(declare-fun b!517620 () Bool)

(assert (=> b!517620 (= e!302063 (bvsge (x!48692 lt!237006) #b01111111111111111111111111111110))))

(declare-fun b!517621 () Bool)

(assert (=> b!517621 (and (bvsge (index!19702 lt!237006) #b00000000000000000000000000000000) (bvslt (index!19702 lt!237006) (size!16268 (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235)))))))

(assert (=> b!517621 (= e!302062 (= (select (arr!15904 (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235))) (index!19702 lt!237006)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517622 () Bool)

(assert (=> b!517622 (and (bvsge (index!19702 lt!237006) #b00000000000000000000000000000000) (bvslt (index!19702 lt!237006) (size!16268 (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235)))))))

(declare-fun res!316851 () Bool)

(assert (=> b!517622 (= res!316851 (= (select (arr!15904 (array!33085 (store (arr!15904 a!3235) i!1204 k0!2280) (size!16268 a!3235))) (index!19702 lt!237006)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517622 (=> res!316851 e!302062)))

(declare-fun b!517623 () Bool)

(assert (=> b!517623 (= e!302065 e!302066)))

(declare-fun c!60678 () Bool)

(assert (=> b!517623 (= c!60678 (or (= lt!237005 (select (store (arr!15904 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!237005 lt!237005) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!79693 c!60677) b!517617))

(assert (= (and d!79693 (not c!60677)) b!517623))

(assert (= (and b!517623 c!60678) b!517615))

(assert (= (and b!517623 (not c!60678)) b!517619))

(assert (= (and d!79693 c!60676) b!517620))

(assert (= (and d!79693 (not c!60676)) b!517616))

(assert (= (and b!517616 res!316850) b!517618))

(assert (= (and b!517618 (not res!316852)) b!517622))

(assert (= (and b!517622 (not res!316851)) b!517621))

(declare-fun m!499009 () Bool)

(assert (=> b!517622 m!499009))

(assert (=> b!517621 m!499009))

(declare-fun m!499011 () Bool)

(assert (=> b!517619 m!499011))

(assert (=> b!517619 m!499011))

(assert (=> b!517619 m!498839))

(declare-fun m!499013 () Bool)

(assert (=> b!517619 m!499013))

(declare-fun m!499015 () Bool)

(assert (=> d!79693 m!499015))

(assert (=> d!79693 m!498819))

(assert (=> b!517618 m!499009))

(assert (=> b!517389 d!79693))

(check-sat (not d!79643) (not bm!31679) (not b!517601) (not b!517440) (not b!517512) (not b!517505) (not d!79681) (not b!517619) (not bm!31682) (not d!79673) (not b!517438) (not d!79665) (not b!517478) (not b!517448) (not b!517515) (not d!79693) (not b!517466) (not b!517442) (not b!517475) (not bm!31686))
(check-sat)
