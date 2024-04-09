; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45646 () Bool)

(assert start!45646)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!294566 () Bool)

(declare-datatypes ((array!32362 0))(
  ( (array!32363 (arr!15558 (Array (_ BitVec 32) (_ BitVec 64))) (size!15922 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32362)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!502951 () Bool)

(declare-datatypes ((SeekEntryResult!4032 0))(
  ( (MissingZero!4032 (index!18316 (_ BitVec 32))) (Found!4032 (index!18317 (_ BitVec 32))) (Intermediate!4032 (undefined!4844 Bool) (index!18318 (_ BitVec 32)) (x!47372 (_ BitVec 32))) (Undefined!4032) (MissingVacant!4032 (index!18319 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32362 (_ BitVec 32)) SeekEntryResult!4032)

(assert (=> b!502951 (= e!294566 (= (seekEntryOrOpen!0 (select (arr!15558 a!3235) j!176) a!3235 mask!3524) (Found!4032 j!176)))))

(declare-fun e!294560 () Bool)

(declare-fun b!502952 () Bool)

(declare-fun lt!228797 () SeekEntryResult!4032)

(declare-fun lt!228796 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32362 (_ BitVec 32)) SeekEntryResult!4032)

(assert (=> b!502952 (= e!294560 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228796 (index!18318 lt!228797) (select (arr!15558 a!3235) j!176) a!3235 mask!3524) (Found!4032 j!176))))))

(declare-fun b!502953 () Bool)

(declare-fun res!304434 () Bool)

(declare-fun e!294567 () Bool)

(assert (=> b!502953 (=> (not res!304434) (not e!294567))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502953 (= res!304434 (and (= (size!15922 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15922 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15922 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502954 () Bool)

(declare-fun e!294563 () Bool)

(declare-fun e!294562 () Bool)

(assert (=> b!502954 (= e!294563 e!294562)))

(declare-fun res!304441 () Bool)

(assert (=> b!502954 (=> res!304441 e!294562)))

(assert (=> b!502954 (= res!304441 (or (bvsgt (x!47372 lt!228797) #b01111111111111111111111111111110) (bvslt lt!228796 #b00000000000000000000000000000000) (bvsge lt!228796 (size!15922 a!3235)) (bvslt (index!18318 lt!228797) #b00000000000000000000000000000000) (bvsge (index!18318 lt!228797) (size!15922 a!3235)) (not (= lt!228797 (Intermediate!4032 false (index!18318 lt!228797) (x!47372 lt!228797))))))))

(assert (=> b!502954 (= (index!18318 lt!228797) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!15218 0))(
  ( (Unit!15219) )
))
(declare-fun lt!228800 () Unit!15218)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32362 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15218)

(assert (=> b!502954 (= lt!228800 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228796 #b00000000000000000000000000000000 (index!18318 lt!228797) (x!47372 lt!228797) mask!3524))))

(assert (=> b!502954 (and (or (= (select (arr!15558 a!3235) (index!18318 lt!228797)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15558 a!3235) (index!18318 lt!228797)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15558 a!3235) (index!18318 lt!228797)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15558 a!3235) (index!18318 lt!228797)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228798 () Unit!15218)

(declare-fun e!294568 () Unit!15218)

(assert (=> b!502954 (= lt!228798 e!294568)))

(declare-fun c!59537 () Bool)

(assert (=> b!502954 (= c!59537 (= (select (arr!15558 a!3235) (index!18318 lt!228797)) (select (arr!15558 a!3235) j!176)))))

(assert (=> b!502954 (and (bvslt (x!47372 lt!228797) #b01111111111111111111111111111110) (or (= (select (arr!15558 a!3235) (index!18318 lt!228797)) (select (arr!15558 a!3235) j!176)) (= (select (arr!15558 a!3235) (index!18318 lt!228797)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15558 a!3235) (index!18318 lt!228797)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502955 () Bool)

(declare-fun res!304436 () Bool)

(declare-fun e!294561 () Bool)

(assert (=> b!502955 (=> (not res!304436) (not e!294561))))

(declare-datatypes ((List!9769 0))(
  ( (Nil!9766) (Cons!9765 (h!10642 (_ BitVec 64)) (t!16005 List!9769)) )
))
(declare-fun arrayNoDuplicates!0 (array!32362 (_ BitVec 32) List!9769) Bool)

(assert (=> b!502955 (= res!304436 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9766))))

(declare-fun b!502956 () Bool)

(assert (=> b!502956 (= e!294562 true)))

(declare-fun lt!228801 () (_ BitVec 64))

(declare-fun lt!228799 () SeekEntryResult!4032)

(declare-fun lt!228804 () array!32362)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32362 (_ BitVec 32)) SeekEntryResult!4032)

(assert (=> b!502956 (= lt!228799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228796 lt!228801 lt!228804 mask!3524))))

(declare-fun b!502957 () Bool)

(declare-fun res!304437 () Bool)

(assert (=> b!502957 (=> res!304437 e!294562)))

(assert (=> b!502957 (= res!304437 e!294560)))

(declare-fun res!304440 () Bool)

(assert (=> b!502957 (=> (not res!304440) (not e!294560))))

(assert (=> b!502957 (= res!304440 (bvsgt #b00000000000000000000000000000000 (x!47372 lt!228797)))))

(declare-fun b!502959 () Bool)

(declare-fun res!304448 () Bool)

(assert (=> b!502959 (=> (not res!304448) (not e!294561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32362 (_ BitVec 32)) Bool)

(assert (=> b!502959 (= res!304448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502960 () Bool)

(assert (=> b!502960 (= e!294561 (not e!294563))))

(declare-fun res!304442 () Bool)

(assert (=> b!502960 (=> res!304442 e!294563)))

(declare-fun lt!228803 () (_ BitVec 32))

(assert (=> b!502960 (= res!304442 (= lt!228797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228803 lt!228801 lt!228804 mask!3524)))))

(assert (=> b!502960 (= lt!228797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228796 (select (arr!15558 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502960 (= lt!228803 (toIndex!0 lt!228801 mask!3524))))

(assert (=> b!502960 (= lt!228801 (select (store (arr!15558 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502960 (= lt!228796 (toIndex!0 (select (arr!15558 a!3235) j!176) mask!3524))))

(assert (=> b!502960 (= lt!228804 (array!32363 (store (arr!15558 a!3235) i!1204 k!2280) (size!15922 a!3235)))))

(assert (=> b!502960 e!294566))

(declare-fun res!304443 () Bool)

(assert (=> b!502960 (=> (not res!304443) (not e!294566))))

(assert (=> b!502960 (= res!304443 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228806 () Unit!15218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32362 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15218)

(assert (=> b!502960 (= lt!228806 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502961 () Bool)

(declare-fun e!294564 () Bool)

(assert (=> b!502961 (= e!294564 false)))

(declare-fun b!502962 () Bool)

(declare-fun res!304444 () Bool)

(assert (=> b!502962 (=> (not res!304444) (not e!294567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502962 (= res!304444 (validKeyInArray!0 k!2280))))

(declare-fun b!502963 () Bool)

(declare-fun res!304447 () Bool)

(assert (=> b!502963 (=> (not res!304447) (not e!294567))))

(assert (=> b!502963 (= res!304447 (validKeyInArray!0 (select (arr!15558 a!3235) j!176)))))

(declare-fun b!502964 () Bool)

(assert (=> b!502964 (= e!294567 e!294561)))

(declare-fun res!304446 () Bool)

(assert (=> b!502964 (=> (not res!304446) (not e!294561))))

(declare-fun lt!228802 () SeekEntryResult!4032)

(assert (=> b!502964 (= res!304446 (or (= lt!228802 (MissingZero!4032 i!1204)) (= lt!228802 (MissingVacant!4032 i!1204))))))

(assert (=> b!502964 (= lt!228802 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502958 () Bool)

(declare-fun Unit!15220 () Unit!15218)

(assert (=> b!502958 (= e!294568 Unit!15220)))

(declare-fun res!304445 () Bool)

(assert (=> start!45646 (=> (not res!304445) (not e!294567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45646 (= res!304445 (validMask!0 mask!3524))))

(assert (=> start!45646 e!294567))

(assert (=> start!45646 true))

(declare-fun array_inv!11332 (array!32362) Bool)

(assert (=> start!45646 (array_inv!11332 a!3235)))

(declare-fun b!502965 () Bool)

(declare-fun Unit!15221 () Unit!15218)

(assert (=> b!502965 (= e!294568 Unit!15221)))

(declare-fun lt!228805 () Unit!15218)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32362 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15218)

(assert (=> b!502965 (= lt!228805 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228796 #b00000000000000000000000000000000 (index!18318 lt!228797) (x!47372 lt!228797) mask!3524))))

(declare-fun res!304439 () Bool)

(assert (=> b!502965 (= res!304439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228796 lt!228801 lt!228804 mask!3524) (Intermediate!4032 false (index!18318 lt!228797) (x!47372 lt!228797))))))

(assert (=> b!502965 (=> (not res!304439) (not e!294564))))

(assert (=> b!502965 e!294564))

(declare-fun b!502966 () Bool)

(declare-fun res!304435 () Bool)

(assert (=> b!502966 (=> res!304435 e!294563)))

(assert (=> b!502966 (= res!304435 (or (undefined!4844 lt!228797) (not (is-Intermediate!4032 lt!228797))))))

(declare-fun b!502967 () Bool)

(declare-fun res!304438 () Bool)

(assert (=> b!502967 (=> (not res!304438) (not e!294567))))

(declare-fun arrayContainsKey!0 (array!32362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502967 (= res!304438 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45646 res!304445) b!502953))

(assert (= (and b!502953 res!304434) b!502963))

(assert (= (and b!502963 res!304447) b!502962))

(assert (= (and b!502962 res!304444) b!502967))

(assert (= (and b!502967 res!304438) b!502964))

(assert (= (and b!502964 res!304446) b!502959))

(assert (= (and b!502959 res!304448) b!502955))

(assert (= (and b!502955 res!304436) b!502960))

(assert (= (and b!502960 res!304443) b!502951))

(assert (= (and b!502960 (not res!304442)) b!502966))

(assert (= (and b!502966 (not res!304435)) b!502954))

(assert (= (and b!502954 c!59537) b!502965))

(assert (= (and b!502954 (not c!59537)) b!502958))

(assert (= (and b!502965 res!304439) b!502961))

(assert (= (and b!502954 (not res!304441)) b!502957))

(assert (= (and b!502957 res!304440) b!502952))

(assert (= (and b!502957 (not res!304437)) b!502956))

(declare-fun m!483853 () Bool)

(assert (=> b!502964 m!483853))

(declare-fun m!483855 () Bool)

(assert (=> b!502959 m!483855))

(declare-fun m!483857 () Bool)

(assert (=> b!502955 m!483857))

(declare-fun m!483859 () Bool)

(assert (=> b!502951 m!483859))

(assert (=> b!502951 m!483859))

(declare-fun m!483861 () Bool)

(assert (=> b!502951 m!483861))

(declare-fun m!483863 () Bool)

(assert (=> b!502962 m!483863))

(assert (=> b!502963 m!483859))

(assert (=> b!502963 m!483859))

(declare-fun m!483865 () Bool)

(assert (=> b!502963 m!483865))

(assert (=> b!502952 m!483859))

(assert (=> b!502952 m!483859))

(declare-fun m!483867 () Bool)

(assert (=> b!502952 m!483867))

(declare-fun m!483869 () Bool)

(assert (=> start!45646 m!483869))

(declare-fun m!483871 () Bool)

(assert (=> start!45646 m!483871))

(declare-fun m!483873 () Bool)

(assert (=> b!502954 m!483873))

(declare-fun m!483875 () Bool)

(assert (=> b!502954 m!483875))

(assert (=> b!502954 m!483859))

(declare-fun m!483877 () Bool)

(assert (=> b!502965 m!483877))

(declare-fun m!483879 () Bool)

(assert (=> b!502965 m!483879))

(declare-fun m!483881 () Bool)

(assert (=> b!502960 m!483881))

(declare-fun m!483883 () Bool)

(assert (=> b!502960 m!483883))

(declare-fun m!483885 () Bool)

(assert (=> b!502960 m!483885))

(declare-fun m!483887 () Bool)

(assert (=> b!502960 m!483887))

(assert (=> b!502960 m!483859))

(declare-fun m!483889 () Bool)

(assert (=> b!502960 m!483889))

(assert (=> b!502960 m!483859))

(declare-fun m!483891 () Bool)

(assert (=> b!502960 m!483891))

(assert (=> b!502960 m!483859))

(declare-fun m!483893 () Bool)

(assert (=> b!502960 m!483893))

(declare-fun m!483895 () Bool)

(assert (=> b!502960 m!483895))

(declare-fun m!483897 () Bool)

(assert (=> b!502967 m!483897))

(assert (=> b!502956 m!483879))

(push 1)

