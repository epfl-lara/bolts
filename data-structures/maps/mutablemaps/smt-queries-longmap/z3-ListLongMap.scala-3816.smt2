; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52336 () Bool)

(assert start!52336)

(declare-fun b!570871 () Bool)

(declare-fun e!328325 () Bool)

(declare-fun e!328330 () Bool)

(assert (=> b!570871 (= e!328325 e!328330)))

(declare-fun res!360807 () Bool)

(assert (=> b!570871 (=> res!360807 e!328330)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260356 () (_ BitVec 64))

(declare-datatypes ((array!35750 0))(
  ( (array!35751 (arr!17161 (Array (_ BitVec 32) (_ BitVec 64))) (size!17525 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35750)

(assert (=> b!570871 (= res!360807 (or (= lt!260356 (select (arr!17161 a!3118) j!142)) (= lt!260356 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5617 0))(
  ( (MissingZero!5617 (index!24695 (_ BitVec 32))) (Found!5617 (index!24696 (_ BitVec 32))) (Intermediate!5617 (undefined!6429 Bool) (index!24697 (_ BitVec 32)) (x!53592 (_ BitVec 32))) (Undefined!5617) (MissingVacant!5617 (index!24698 (_ BitVec 32))) )
))
(declare-fun lt!260350 () SeekEntryResult!5617)

(assert (=> b!570871 (= lt!260356 (select (arr!17161 a!3118) (index!24697 lt!260350)))))

(declare-fun b!570872 () Bool)

(declare-fun e!328333 () Bool)

(declare-fun e!328327 () Bool)

(assert (=> b!570872 (= e!328333 (not e!328327))))

(declare-fun res!360803 () Bool)

(assert (=> b!570872 (=> res!360803 e!328327)))

(get-info :version)

(assert (=> b!570872 (= res!360803 (or (undefined!6429 lt!260350) (not ((_ is Intermediate!5617) lt!260350))))))

(declare-fun e!328331 () Bool)

(assert (=> b!570872 e!328331))

(declare-fun res!360806 () Bool)

(assert (=> b!570872 (=> (not res!360806) (not e!328331))))

(declare-fun lt!260352 () SeekEntryResult!5617)

(assert (=> b!570872 (= res!360806 (= lt!260352 (Found!5617 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35750 (_ BitVec 32)) SeekEntryResult!5617)

(assert (=> b!570872 (= lt!260352 (seekEntryOrOpen!0 (select (arr!17161 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35750 (_ BitVec 32)) Bool)

(assert (=> b!570872 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17936 0))(
  ( (Unit!17937) )
))
(declare-fun lt!260355 () Unit!17936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35750 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17936)

(assert (=> b!570872 (= lt!260355 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570873 () Bool)

(declare-fun res!360814 () Bool)

(declare-fun e!328328 () Bool)

(assert (=> b!570873 (=> (not res!360814) (not e!328328))))

(assert (=> b!570873 (= res!360814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570874 () Bool)

(assert (=> b!570874 (= e!328331 e!328325)))

(declare-fun res!360812 () Bool)

(assert (=> b!570874 (=> res!360812 e!328325)))

(assert (=> b!570874 (= res!360812 (or (undefined!6429 lt!260350) (not ((_ is Intermediate!5617) lt!260350))))))

(declare-fun b!570875 () Bool)

(declare-fun res!360805 () Bool)

(declare-fun e!328326 () Bool)

(assert (=> b!570875 (=> (not res!360805) (not e!328326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570875 (= res!360805 (validKeyInArray!0 (select (arr!17161 a!3118) j!142)))))

(declare-fun b!570876 () Bool)

(declare-fun res!360809 () Bool)

(assert (=> b!570876 (=> (not res!360809) (not e!328326))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570876 (= res!360809 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570877 () Bool)

(declare-fun lt!260354 () array!35750)

(declare-fun lt!260353 () (_ BitVec 64))

(declare-fun e!328332 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35750 (_ BitVec 32)) SeekEntryResult!5617)

(assert (=> b!570877 (= e!328332 (= (seekEntryOrOpen!0 lt!260353 lt!260354 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53592 lt!260350) (index!24697 lt!260350) (index!24697 lt!260350) lt!260353 lt!260354 mask!3119)))))

(declare-fun b!570878 () Bool)

(declare-fun res!360804 () Bool)

(assert (=> b!570878 (=> (not res!360804) (not e!328326))))

(assert (=> b!570878 (= res!360804 (validKeyInArray!0 k0!1914))))

(declare-fun b!570879 () Bool)

(declare-fun res!360811 () Bool)

(assert (=> b!570879 (=> (not res!360811) (not e!328326))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570879 (= res!360811 (and (= (size!17525 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17525 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17525 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!360808 () Bool)

(assert (=> start!52336 (=> (not res!360808) (not e!328326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52336 (= res!360808 (validMask!0 mask!3119))))

(assert (=> start!52336 e!328326))

(assert (=> start!52336 true))

(declare-fun array_inv!12935 (array!35750) Bool)

(assert (=> start!52336 (array_inv!12935 a!3118)))

(declare-fun b!570880 () Bool)

(assert (=> b!570880 (= e!328328 e!328333)))

(declare-fun res!360810 () Bool)

(assert (=> b!570880 (=> (not res!360810) (not e!328333))))

(declare-fun lt!260351 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35750 (_ BitVec 32)) SeekEntryResult!5617)

(assert (=> b!570880 (= res!360810 (= lt!260350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260351 lt!260353 lt!260354 mask!3119)))))

(declare-fun lt!260357 () (_ BitVec 32))

(assert (=> b!570880 (= lt!260350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260357 (select (arr!17161 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570880 (= lt!260351 (toIndex!0 lt!260353 mask!3119))))

(assert (=> b!570880 (= lt!260353 (select (store (arr!17161 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!570880 (= lt!260357 (toIndex!0 (select (arr!17161 a!3118) j!142) mask!3119))))

(assert (=> b!570880 (= lt!260354 (array!35751 (store (arr!17161 a!3118) i!1132 k0!1914) (size!17525 a!3118)))))

(declare-fun b!570881 () Bool)

(assert (=> b!570881 (= e!328326 e!328328)))

(declare-fun res!360815 () Bool)

(assert (=> b!570881 (=> (not res!360815) (not e!328328))))

(declare-fun lt!260348 () SeekEntryResult!5617)

(assert (=> b!570881 (= res!360815 (or (= lt!260348 (MissingZero!5617 i!1132)) (= lt!260348 (MissingVacant!5617 i!1132))))))

(assert (=> b!570881 (= lt!260348 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!570882 () Bool)

(assert (=> b!570882 (= e!328330 (= lt!260352 (seekKeyOrZeroReturnVacant!0 (x!53592 lt!260350) (index!24697 lt!260350) (index!24697 lt!260350) (select (arr!17161 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570883 () Bool)

(assert (=> b!570883 (= e!328327 e!328332)))

(declare-fun res!360813 () Bool)

(assert (=> b!570883 (=> res!360813 e!328332)))

(declare-fun lt!260349 () (_ BitVec 64))

(assert (=> b!570883 (= res!360813 (or (= lt!260349 (select (arr!17161 a!3118) j!142)) (= lt!260349 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!570883 (= lt!260349 (select (arr!17161 a!3118) (index!24697 lt!260350)))))

(declare-fun b!570884 () Bool)

(declare-fun res!360802 () Bool)

(assert (=> b!570884 (=> (not res!360802) (not e!328328))))

(declare-datatypes ((List!11294 0))(
  ( (Nil!11291) (Cons!11290 (h!12314 (_ BitVec 64)) (t!17530 List!11294)) )
))
(declare-fun arrayNoDuplicates!0 (array!35750 (_ BitVec 32) List!11294) Bool)

(assert (=> b!570884 (= res!360802 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11291))))

(assert (= (and start!52336 res!360808) b!570879))

(assert (= (and b!570879 res!360811) b!570875))

(assert (= (and b!570875 res!360805) b!570878))

(assert (= (and b!570878 res!360804) b!570876))

(assert (= (and b!570876 res!360809) b!570881))

(assert (= (and b!570881 res!360815) b!570873))

(assert (= (and b!570873 res!360814) b!570884))

(assert (= (and b!570884 res!360802) b!570880))

(assert (= (and b!570880 res!360810) b!570872))

(assert (= (and b!570872 res!360806) b!570874))

(assert (= (and b!570874 (not res!360812)) b!570871))

(assert (= (and b!570871 (not res!360807)) b!570882))

(assert (= (and b!570872 (not res!360803)) b!570883))

(assert (= (and b!570883 (not res!360813)) b!570877))

(declare-fun m!549855 () Bool)

(assert (=> b!570872 m!549855))

(assert (=> b!570872 m!549855))

(declare-fun m!549857 () Bool)

(assert (=> b!570872 m!549857))

(declare-fun m!549859 () Bool)

(assert (=> b!570872 m!549859))

(declare-fun m!549861 () Bool)

(assert (=> b!570872 m!549861))

(assert (=> b!570880 m!549855))

(declare-fun m!549863 () Bool)

(assert (=> b!570880 m!549863))

(assert (=> b!570880 m!549855))

(declare-fun m!549865 () Bool)

(assert (=> b!570880 m!549865))

(assert (=> b!570880 m!549855))

(declare-fun m!549867 () Bool)

(assert (=> b!570880 m!549867))

(declare-fun m!549869 () Bool)

(assert (=> b!570880 m!549869))

(declare-fun m!549871 () Bool)

(assert (=> b!570880 m!549871))

(declare-fun m!549873 () Bool)

(assert (=> b!570880 m!549873))

(assert (=> b!570883 m!549855))

(declare-fun m!549875 () Bool)

(assert (=> b!570883 m!549875))

(assert (=> b!570882 m!549855))

(assert (=> b!570882 m!549855))

(declare-fun m!549877 () Bool)

(assert (=> b!570882 m!549877))

(declare-fun m!549879 () Bool)

(assert (=> b!570873 m!549879))

(declare-fun m!549881 () Bool)

(assert (=> b!570876 m!549881))

(assert (=> b!570871 m!549855))

(assert (=> b!570871 m!549875))

(declare-fun m!549883 () Bool)

(assert (=> b!570877 m!549883))

(declare-fun m!549885 () Bool)

(assert (=> b!570877 m!549885))

(declare-fun m!549887 () Bool)

(assert (=> b!570884 m!549887))

(declare-fun m!549889 () Bool)

(assert (=> b!570881 m!549889))

(assert (=> b!570875 m!549855))

(assert (=> b!570875 m!549855))

(declare-fun m!549891 () Bool)

(assert (=> b!570875 m!549891))

(declare-fun m!549893 () Bool)

(assert (=> start!52336 m!549893))

(declare-fun m!549895 () Bool)

(assert (=> start!52336 m!549895))

(declare-fun m!549897 () Bool)

(assert (=> b!570878 m!549897))

(check-sat (not b!570876) (not b!570878) (not start!52336) (not b!570873) (not b!570881) (not b!570884) (not b!570880) (not b!570882) (not b!570877) (not b!570875) (not b!570872))
(check-sat)
(get-model)

(declare-fun b!570945 () Bool)

(declare-fun e!328375 () SeekEntryResult!5617)

(assert (=> b!570945 (= e!328375 (Intermediate!5617 true lt!260351 #b00000000000000000000000000000000))))

(declare-fun b!570946 () Bool)

(declare-fun e!328373 () SeekEntryResult!5617)

(assert (=> b!570946 (= e!328375 e!328373)))

(declare-fun c!65397 () Bool)

(declare-fun lt!260393 () (_ BitVec 64))

(assert (=> b!570946 (= c!65397 (or (= lt!260393 lt!260353) (= (bvadd lt!260393 lt!260393) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570947 () Bool)

(declare-fun lt!260392 () SeekEntryResult!5617)

(assert (=> b!570947 (and (bvsge (index!24697 lt!260392) #b00000000000000000000000000000000) (bvslt (index!24697 lt!260392) (size!17525 lt!260354)))))

(declare-fun res!360866 () Bool)

(assert (=> b!570947 (= res!360866 (= (select (arr!17161 lt!260354) (index!24697 lt!260392)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328374 () Bool)

(assert (=> b!570947 (=> res!360866 e!328374)))

(declare-fun b!570948 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570948 (= e!328373 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!260351 #b00000000000000000000000000000000 mask!3119) lt!260353 lt!260354 mask!3119))))

(declare-fun b!570949 () Bool)

(assert (=> b!570949 (and (bvsge (index!24697 lt!260392) #b00000000000000000000000000000000) (bvslt (index!24697 lt!260392) (size!17525 lt!260354)))))

(declare-fun res!360865 () Bool)

(assert (=> b!570949 (= res!360865 (= (select (arr!17161 lt!260354) (index!24697 lt!260392)) lt!260353))))

(assert (=> b!570949 (=> res!360865 e!328374)))

(declare-fun e!328372 () Bool)

(assert (=> b!570949 (= e!328372 e!328374)))

(declare-fun d!84601 () Bool)

(declare-fun e!328371 () Bool)

(assert (=> d!84601 e!328371))

(declare-fun c!65399 () Bool)

(assert (=> d!84601 (= c!65399 (and ((_ is Intermediate!5617) lt!260392) (undefined!6429 lt!260392)))))

(assert (=> d!84601 (= lt!260392 e!328375)))

(declare-fun c!65398 () Bool)

(assert (=> d!84601 (= c!65398 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84601 (= lt!260393 (select (arr!17161 lt!260354) lt!260351))))

(assert (=> d!84601 (validMask!0 mask!3119)))

(assert (=> d!84601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260351 lt!260353 lt!260354 mask!3119) lt!260392)))

(declare-fun b!570950 () Bool)

(assert (=> b!570950 (= e!328371 (bvsge (x!53592 lt!260392) #b01111111111111111111111111111110))))

(declare-fun b!570951 () Bool)

(assert (=> b!570951 (and (bvsge (index!24697 lt!260392) #b00000000000000000000000000000000) (bvslt (index!24697 lt!260392) (size!17525 lt!260354)))))

(assert (=> b!570951 (= e!328374 (= (select (arr!17161 lt!260354) (index!24697 lt!260392)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!570952 () Bool)

(assert (=> b!570952 (= e!328373 (Intermediate!5617 false lt!260351 #b00000000000000000000000000000000))))

(declare-fun b!570953 () Bool)

(assert (=> b!570953 (= e!328371 e!328372)))

(declare-fun res!360864 () Bool)

(assert (=> b!570953 (= res!360864 (and ((_ is Intermediate!5617) lt!260392) (not (undefined!6429 lt!260392)) (bvslt (x!53592 lt!260392) #b01111111111111111111111111111110) (bvsge (x!53592 lt!260392) #b00000000000000000000000000000000) (bvsge (x!53592 lt!260392) #b00000000000000000000000000000000)))))

(assert (=> b!570953 (=> (not res!360864) (not e!328372))))

(assert (= (and d!84601 c!65398) b!570945))

(assert (= (and d!84601 (not c!65398)) b!570946))

(assert (= (and b!570946 c!65397) b!570952))

(assert (= (and b!570946 (not c!65397)) b!570948))

(assert (= (and d!84601 c!65399) b!570950))

(assert (= (and d!84601 (not c!65399)) b!570953))

(assert (= (and b!570953 res!360864) b!570949))

(assert (= (and b!570949 (not res!360865)) b!570947))

(assert (= (and b!570947 (not res!360866)) b!570951))

(declare-fun m!549943 () Bool)

(assert (=> b!570949 m!549943))

(declare-fun m!549945 () Bool)

(assert (=> b!570948 m!549945))

(assert (=> b!570948 m!549945))

(declare-fun m!549947 () Bool)

(assert (=> b!570948 m!549947))

(assert (=> b!570947 m!549943))

(assert (=> b!570951 m!549943))

(declare-fun m!549949 () Bool)

(assert (=> d!84601 m!549949))

(assert (=> d!84601 m!549893))

(assert (=> b!570880 d!84601))

(declare-fun b!570954 () Bool)

(declare-fun e!328380 () SeekEntryResult!5617)

(assert (=> b!570954 (= e!328380 (Intermediate!5617 true lt!260357 #b00000000000000000000000000000000))))

(declare-fun b!570955 () Bool)

(declare-fun e!328378 () SeekEntryResult!5617)

(assert (=> b!570955 (= e!328380 e!328378)))

(declare-fun c!65400 () Bool)

(declare-fun lt!260395 () (_ BitVec 64))

(assert (=> b!570955 (= c!65400 (or (= lt!260395 (select (arr!17161 a!3118) j!142)) (= (bvadd lt!260395 lt!260395) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570956 () Bool)

(declare-fun lt!260394 () SeekEntryResult!5617)

(assert (=> b!570956 (and (bvsge (index!24697 lt!260394) #b00000000000000000000000000000000) (bvslt (index!24697 lt!260394) (size!17525 a!3118)))))

(declare-fun res!360869 () Bool)

(assert (=> b!570956 (= res!360869 (= (select (arr!17161 a!3118) (index!24697 lt!260394)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328379 () Bool)

(assert (=> b!570956 (=> res!360869 e!328379)))

(declare-fun b!570957 () Bool)

(assert (=> b!570957 (= e!328378 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!260357 #b00000000000000000000000000000000 mask!3119) (select (arr!17161 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!570958 () Bool)

(assert (=> b!570958 (and (bvsge (index!24697 lt!260394) #b00000000000000000000000000000000) (bvslt (index!24697 lt!260394) (size!17525 a!3118)))))

(declare-fun res!360868 () Bool)

(assert (=> b!570958 (= res!360868 (= (select (arr!17161 a!3118) (index!24697 lt!260394)) (select (arr!17161 a!3118) j!142)))))

(assert (=> b!570958 (=> res!360868 e!328379)))

(declare-fun e!328377 () Bool)

(assert (=> b!570958 (= e!328377 e!328379)))

(declare-fun d!84603 () Bool)

(declare-fun e!328376 () Bool)

(assert (=> d!84603 e!328376))

(declare-fun c!65402 () Bool)

(assert (=> d!84603 (= c!65402 (and ((_ is Intermediate!5617) lt!260394) (undefined!6429 lt!260394)))))

(assert (=> d!84603 (= lt!260394 e!328380)))

(declare-fun c!65401 () Bool)

(assert (=> d!84603 (= c!65401 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84603 (= lt!260395 (select (arr!17161 a!3118) lt!260357))))

(assert (=> d!84603 (validMask!0 mask!3119)))

(assert (=> d!84603 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260357 (select (arr!17161 a!3118) j!142) a!3118 mask!3119) lt!260394)))

(declare-fun b!570959 () Bool)

(assert (=> b!570959 (= e!328376 (bvsge (x!53592 lt!260394) #b01111111111111111111111111111110))))

(declare-fun b!570960 () Bool)

(assert (=> b!570960 (and (bvsge (index!24697 lt!260394) #b00000000000000000000000000000000) (bvslt (index!24697 lt!260394) (size!17525 a!3118)))))

(assert (=> b!570960 (= e!328379 (= (select (arr!17161 a!3118) (index!24697 lt!260394)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!570961 () Bool)

(assert (=> b!570961 (= e!328378 (Intermediate!5617 false lt!260357 #b00000000000000000000000000000000))))

(declare-fun b!570962 () Bool)

(assert (=> b!570962 (= e!328376 e!328377)))

(declare-fun res!360867 () Bool)

(assert (=> b!570962 (= res!360867 (and ((_ is Intermediate!5617) lt!260394) (not (undefined!6429 lt!260394)) (bvslt (x!53592 lt!260394) #b01111111111111111111111111111110) (bvsge (x!53592 lt!260394) #b00000000000000000000000000000000) (bvsge (x!53592 lt!260394) #b00000000000000000000000000000000)))))

(assert (=> b!570962 (=> (not res!360867) (not e!328377))))

(assert (= (and d!84603 c!65401) b!570954))

(assert (= (and d!84603 (not c!65401)) b!570955))

(assert (= (and b!570955 c!65400) b!570961))

(assert (= (and b!570955 (not c!65400)) b!570957))

(assert (= (and d!84603 c!65402) b!570959))

(assert (= (and d!84603 (not c!65402)) b!570962))

(assert (= (and b!570962 res!360867) b!570958))

(assert (= (and b!570958 (not res!360868)) b!570956))

(assert (= (and b!570956 (not res!360869)) b!570960))

(declare-fun m!549951 () Bool)

(assert (=> b!570958 m!549951))

(declare-fun m!549953 () Bool)

(assert (=> b!570957 m!549953))

(assert (=> b!570957 m!549953))

(assert (=> b!570957 m!549855))

(declare-fun m!549955 () Bool)

(assert (=> b!570957 m!549955))

(assert (=> b!570956 m!549951))

(assert (=> b!570960 m!549951))

(declare-fun m!549957 () Bool)

(assert (=> d!84603 m!549957))

(assert (=> d!84603 m!549893))

(assert (=> b!570880 d!84603))

(declare-fun d!84605 () Bool)

(declare-fun lt!260401 () (_ BitVec 32))

(declare-fun lt!260400 () (_ BitVec 32))

(assert (=> d!84605 (= lt!260401 (bvmul (bvxor lt!260400 (bvlshr lt!260400 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84605 (= lt!260400 ((_ extract 31 0) (bvand (bvxor lt!260353 (bvlshr lt!260353 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84605 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360870 (let ((h!12316 ((_ extract 31 0) (bvand (bvxor lt!260353 (bvlshr lt!260353 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53595 (bvmul (bvxor h!12316 (bvlshr h!12316 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53595 (bvlshr x!53595 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360870 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360870 #b00000000000000000000000000000000))))))

(assert (=> d!84605 (= (toIndex!0 lt!260353 mask!3119) (bvand (bvxor lt!260401 (bvlshr lt!260401 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!570880 d!84605))

(declare-fun d!84607 () Bool)

(declare-fun lt!260403 () (_ BitVec 32))

(declare-fun lt!260402 () (_ BitVec 32))

(assert (=> d!84607 (= lt!260403 (bvmul (bvxor lt!260402 (bvlshr lt!260402 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84607 (= lt!260402 ((_ extract 31 0) (bvand (bvxor (select (arr!17161 a!3118) j!142) (bvlshr (select (arr!17161 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84607 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360870 (let ((h!12316 ((_ extract 31 0) (bvand (bvxor (select (arr!17161 a!3118) j!142) (bvlshr (select (arr!17161 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53595 (bvmul (bvxor h!12316 (bvlshr h!12316 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53595 (bvlshr x!53595 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360870 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360870 #b00000000000000000000000000000000))))))

(assert (=> d!84607 (= (toIndex!0 (select (arr!17161 a!3118) j!142) mask!3119) (bvand (bvxor lt!260403 (bvlshr lt!260403 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!570880 d!84607))

(declare-fun d!84609 () Bool)

(assert (=> d!84609 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52336 d!84609))

(declare-fun d!84611 () Bool)

(assert (=> d!84611 (= (array_inv!12935 a!3118) (bvsge (size!17525 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52336 d!84611))

(declare-fun d!84613 () Bool)

(declare-fun res!360875 () Bool)

(declare-fun e!328385 () Bool)

(assert (=> d!84613 (=> res!360875 e!328385)))

(assert (=> d!84613 (= res!360875 (= (select (arr!17161 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84613 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!328385)))

(declare-fun b!570967 () Bool)

(declare-fun e!328386 () Bool)

(assert (=> b!570967 (= e!328385 e!328386)))

(declare-fun res!360876 () Bool)

(assert (=> b!570967 (=> (not res!360876) (not e!328386))))

(assert (=> b!570967 (= res!360876 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17525 a!3118)))))

(declare-fun b!570968 () Bool)

(assert (=> b!570968 (= e!328386 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84613 (not res!360875)) b!570967))

(assert (= (and b!570967 res!360876) b!570968))

(declare-fun m!549959 () Bool)

(assert (=> d!84613 m!549959))

(declare-fun m!549961 () Bool)

(assert (=> b!570968 m!549961))

(assert (=> b!570876 d!84613))

(declare-fun b!570998 () Bool)

(declare-fun e!328407 () SeekEntryResult!5617)

(declare-fun e!328406 () SeekEntryResult!5617)

(assert (=> b!570998 (= e!328407 e!328406)))

(declare-fun lt!260416 () (_ BitVec 64))

(declare-fun lt!260415 () SeekEntryResult!5617)

(assert (=> b!570998 (= lt!260416 (select (arr!17161 lt!260354) (index!24697 lt!260415)))))

(declare-fun c!65412 () Bool)

(assert (=> b!570998 (= c!65412 (= lt!260416 lt!260353))))

(declare-fun b!570999 () Bool)

(assert (=> b!570999 (= e!328407 Undefined!5617)))

(declare-fun b!571000 () Bool)

(declare-fun c!65414 () Bool)

(assert (=> b!571000 (= c!65414 (= lt!260416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328405 () SeekEntryResult!5617)

(assert (=> b!571000 (= e!328406 e!328405)))

(declare-fun b!571001 () Bool)

(assert (=> b!571001 (= e!328406 (Found!5617 (index!24697 lt!260415)))))

(declare-fun b!571002 () Bool)

(assert (=> b!571002 (= e!328405 (MissingZero!5617 (index!24697 lt!260415)))))

(declare-fun d!84617 () Bool)

(declare-fun lt!260414 () SeekEntryResult!5617)

(assert (=> d!84617 (and (or ((_ is Undefined!5617) lt!260414) (not ((_ is Found!5617) lt!260414)) (and (bvsge (index!24696 lt!260414) #b00000000000000000000000000000000) (bvslt (index!24696 lt!260414) (size!17525 lt!260354)))) (or ((_ is Undefined!5617) lt!260414) ((_ is Found!5617) lt!260414) (not ((_ is MissingZero!5617) lt!260414)) (and (bvsge (index!24695 lt!260414) #b00000000000000000000000000000000) (bvslt (index!24695 lt!260414) (size!17525 lt!260354)))) (or ((_ is Undefined!5617) lt!260414) ((_ is Found!5617) lt!260414) ((_ is MissingZero!5617) lt!260414) (not ((_ is MissingVacant!5617) lt!260414)) (and (bvsge (index!24698 lt!260414) #b00000000000000000000000000000000) (bvslt (index!24698 lt!260414) (size!17525 lt!260354)))) (or ((_ is Undefined!5617) lt!260414) (ite ((_ is Found!5617) lt!260414) (= (select (arr!17161 lt!260354) (index!24696 lt!260414)) lt!260353) (ite ((_ is MissingZero!5617) lt!260414) (= (select (arr!17161 lt!260354) (index!24695 lt!260414)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5617) lt!260414) (= (select (arr!17161 lt!260354) (index!24698 lt!260414)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84617 (= lt!260414 e!328407)))

(declare-fun c!65413 () Bool)

(assert (=> d!84617 (= c!65413 (and ((_ is Intermediate!5617) lt!260415) (undefined!6429 lt!260415)))))

(assert (=> d!84617 (= lt!260415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!260353 mask!3119) lt!260353 lt!260354 mask!3119))))

(assert (=> d!84617 (validMask!0 mask!3119)))

(assert (=> d!84617 (= (seekEntryOrOpen!0 lt!260353 lt!260354 mask!3119) lt!260414)))

(declare-fun b!571003 () Bool)

(assert (=> b!571003 (= e!328405 (seekKeyOrZeroReturnVacant!0 (x!53592 lt!260415) (index!24697 lt!260415) (index!24697 lt!260415) lt!260353 lt!260354 mask!3119))))

(assert (= (and d!84617 c!65413) b!570999))

(assert (= (and d!84617 (not c!65413)) b!570998))

(assert (= (and b!570998 c!65412) b!571001))

(assert (= (and b!570998 (not c!65412)) b!571000))

(assert (= (and b!571000 c!65414) b!571002))

(assert (= (and b!571000 (not c!65414)) b!571003))

(declare-fun m!549971 () Bool)

(assert (=> b!570998 m!549971))

(declare-fun m!549973 () Bool)

(assert (=> d!84617 m!549973))

(declare-fun m!549975 () Bool)

(assert (=> d!84617 m!549975))

(declare-fun m!549977 () Bool)

(assert (=> d!84617 m!549977))

(assert (=> d!84617 m!549893))

(assert (=> d!84617 m!549871))

(declare-fun m!549979 () Bool)

(assert (=> d!84617 m!549979))

(assert (=> d!84617 m!549871))

(declare-fun m!549981 () Bool)

(assert (=> b!571003 m!549981))

(assert (=> b!570877 d!84617))

(declare-fun b!571050 () Bool)

(declare-fun c!65440 () Bool)

(declare-fun lt!260435 () (_ BitVec 64))

(assert (=> b!571050 (= c!65440 (= lt!260435 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328433 () SeekEntryResult!5617)

(declare-fun e!328434 () SeekEntryResult!5617)

(assert (=> b!571050 (= e!328433 e!328434)))

(declare-fun b!571051 () Bool)

(declare-fun e!328432 () SeekEntryResult!5617)

(assert (=> b!571051 (= e!328432 Undefined!5617)))

(declare-fun lt!260436 () SeekEntryResult!5617)

(declare-fun d!84627 () Bool)

(assert (=> d!84627 (and (or ((_ is Undefined!5617) lt!260436) (not ((_ is Found!5617) lt!260436)) (and (bvsge (index!24696 lt!260436) #b00000000000000000000000000000000) (bvslt (index!24696 lt!260436) (size!17525 lt!260354)))) (or ((_ is Undefined!5617) lt!260436) ((_ is Found!5617) lt!260436) (not ((_ is MissingVacant!5617) lt!260436)) (not (= (index!24698 lt!260436) (index!24697 lt!260350))) (and (bvsge (index!24698 lt!260436) #b00000000000000000000000000000000) (bvslt (index!24698 lt!260436) (size!17525 lt!260354)))) (or ((_ is Undefined!5617) lt!260436) (ite ((_ is Found!5617) lt!260436) (= (select (arr!17161 lt!260354) (index!24696 lt!260436)) lt!260353) (and ((_ is MissingVacant!5617) lt!260436) (= (index!24698 lt!260436) (index!24697 lt!260350)) (= (select (arr!17161 lt!260354) (index!24698 lt!260436)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84627 (= lt!260436 e!328432)))

(declare-fun c!65441 () Bool)

(assert (=> d!84627 (= c!65441 (bvsge (x!53592 lt!260350) #b01111111111111111111111111111110))))

(assert (=> d!84627 (= lt!260435 (select (arr!17161 lt!260354) (index!24697 lt!260350)))))

(assert (=> d!84627 (validMask!0 mask!3119)))

(assert (=> d!84627 (= (seekKeyOrZeroReturnVacant!0 (x!53592 lt!260350) (index!24697 lt!260350) (index!24697 lt!260350) lt!260353 lt!260354 mask!3119) lt!260436)))

(declare-fun b!571052 () Bool)

(assert (=> b!571052 (= e!328434 (MissingVacant!5617 (index!24697 lt!260350)))))

(declare-fun b!571053 () Bool)

(assert (=> b!571053 (= e!328434 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53592 lt!260350) #b00000000000000000000000000000001) (nextIndex!0 (index!24697 lt!260350) (x!53592 lt!260350) mask!3119) (index!24697 lt!260350) lt!260353 lt!260354 mask!3119))))

(declare-fun b!571054 () Bool)

(assert (=> b!571054 (= e!328433 (Found!5617 (index!24697 lt!260350)))))

(declare-fun b!571055 () Bool)

(assert (=> b!571055 (= e!328432 e!328433)))

(declare-fun c!65439 () Bool)

(assert (=> b!571055 (= c!65439 (= lt!260435 lt!260353))))

(assert (= (and d!84627 c!65441) b!571051))

(assert (= (and d!84627 (not c!65441)) b!571055))

(assert (= (and b!571055 c!65439) b!571054))

(assert (= (and b!571055 (not c!65439)) b!571050))

(assert (= (and b!571050 c!65440) b!571052))

(assert (= (and b!571050 (not c!65440)) b!571053))

(declare-fun m!550007 () Bool)

(assert (=> d!84627 m!550007))

(declare-fun m!550009 () Bool)

(assert (=> d!84627 m!550009))

(declare-fun m!550011 () Bool)

(assert (=> d!84627 m!550011))

(assert (=> d!84627 m!549893))

(declare-fun m!550013 () Bool)

(assert (=> b!571053 m!550013))

(assert (=> b!571053 m!550013))

(declare-fun m!550015 () Bool)

(assert (=> b!571053 m!550015))

(assert (=> b!570877 d!84627))

(declare-fun d!84633 () Bool)

(assert (=> d!84633 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!570878 d!84633))

(declare-fun b!571084 () Bool)

(declare-fun e!328455 () Bool)

(declare-fun contains!2885 (List!11294 (_ BitVec 64)) Bool)

(assert (=> b!571084 (= e!328455 (contains!2885 Nil!11291 (select (arr!17161 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!571085 () Bool)

(declare-fun e!328453 () Bool)

(declare-fun e!328454 () Bool)

(assert (=> b!571085 (= e!328453 e!328454)))

(declare-fun res!360893 () Bool)

(assert (=> b!571085 (=> (not res!360893) (not e!328454))))

(assert (=> b!571085 (= res!360893 (not e!328455))))

(declare-fun res!360894 () Bool)

(assert (=> b!571085 (=> (not res!360894) (not e!328455))))

(assert (=> b!571085 (= res!360894 (validKeyInArray!0 (select (arr!17161 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32603 () Bool)

(declare-fun call!32606 () Bool)

(declare-fun c!65453 () Bool)

(assert (=> bm!32603 (= call!32606 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65453 (Cons!11290 (select (arr!17161 a!3118) #b00000000000000000000000000000000) Nil!11291) Nil!11291)))))

(declare-fun b!571087 () Bool)

(declare-fun e!328452 () Bool)

(assert (=> b!571087 (= e!328452 call!32606)))

(declare-fun b!571088 () Bool)

(assert (=> b!571088 (= e!328454 e!328452)))

(assert (=> b!571088 (= c!65453 (validKeyInArray!0 (select (arr!17161 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84635 () Bool)

(declare-fun res!360892 () Bool)

(assert (=> d!84635 (=> res!360892 e!328453)))

(assert (=> d!84635 (= res!360892 (bvsge #b00000000000000000000000000000000 (size!17525 a!3118)))))

(assert (=> d!84635 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11291) e!328453)))

(declare-fun b!571086 () Bool)

(assert (=> b!571086 (= e!328452 call!32606)))

(assert (= (and d!84635 (not res!360892)) b!571085))

(assert (= (and b!571085 res!360894) b!571084))

(assert (= (and b!571085 res!360893) b!571088))

(assert (= (and b!571088 c!65453) b!571087))

(assert (= (and b!571088 (not c!65453)) b!571086))

(assert (= (or b!571087 b!571086) bm!32603))

(assert (=> b!571084 m!549959))

(assert (=> b!571084 m!549959))

(declare-fun m!550027 () Bool)

(assert (=> b!571084 m!550027))

(assert (=> b!571085 m!549959))

(assert (=> b!571085 m!549959))

(declare-fun m!550029 () Bool)

(assert (=> b!571085 m!550029))

(assert (=> bm!32603 m!549959))

(declare-fun m!550031 () Bool)

(assert (=> bm!32603 m!550031))

(assert (=> b!571088 m!549959))

(assert (=> b!571088 m!549959))

(assert (=> b!571088 m!550029))

(assert (=> b!570884 d!84635))

(declare-fun b!571127 () Bool)

(declare-fun e!328477 () Bool)

(declare-fun e!328478 () Bool)

(assert (=> b!571127 (= e!328477 e!328478)))

(declare-fun lt!260461 () (_ BitVec 64))

(assert (=> b!571127 (= lt!260461 (select (arr!17161 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!260460 () Unit!17936)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35750 (_ BitVec 64) (_ BitVec 32)) Unit!17936)

(assert (=> b!571127 (= lt!260460 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!260461 #b00000000000000000000000000000000))))

(assert (=> b!571127 (arrayContainsKey!0 a!3118 lt!260461 #b00000000000000000000000000000000)))

(declare-fun lt!260462 () Unit!17936)

(assert (=> b!571127 (= lt!260462 lt!260460)))

(declare-fun res!360899 () Bool)

(assert (=> b!571127 (= res!360899 (= (seekEntryOrOpen!0 (select (arr!17161 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5617 #b00000000000000000000000000000000)))))

(assert (=> b!571127 (=> (not res!360899) (not e!328478))))

(declare-fun bm!32606 () Bool)

(declare-fun call!32609 () Bool)

(assert (=> bm!32606 (= call!32609 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84639 () Bool)

(declare-fun res!360900 () Bool)

(declare-fun e!328479 () Bool)

(assert (=> d!84639 (=> res!360900 e!328479)))

(assert (=> d!84639 (= res!360900 (bvsge #b00000000000000000000000000000000 (size!17525 a!3118)))))

(assert (=> d!84639 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!328479)))

(declare-fun b!571128 () Bool)

(assert (=> b!571128 (= e!328479 e!328477)))

(declare-fun c!65471 () Bool)

(assert (=> b!571128 (= c!65471 (validKeyInArray!0 (select (arr!17161 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!571129 () Bool)

(assert (=> b!571129 (= e!328478 call!32609)))

(declare-fun b!571130 () Bool)

(assert (=> b!571130 (= e!328477 call!32609)))

(assert (= (and d!84639 (not res!360900)) b!571128))

(assert (= (and b!571128 c!65471) b!571127))

(assert (= (and b!571128 (not c!65471)) b!571130))

(assert (= (and b!571127 res!360899) b!571129))

(assert (= (or b!571129 b!571130) bm!32606))

(assert (=> b!571127 m!549959))

(declare-fun m!550049 () Bool)

(assert (=> b!571127 m!550049))

(declare-fun m!550051 () Bool)

(assert (=> b!571127 m!550051))

(assert (=> b!571127 m!549959))

(declare-fun m!550053 () Bool)

(assert (=> b!571127 m!550053))

(declare-fun m!550057 () Bool)

(assert (=> bm!32606 m!550057))

(assert (=> b!571128 m!549959))

(assert (=> b!571128 m!549959))

(assert (=> b!571128 m!550029))

(assert (=> b!570873 d!84639))

(declare-fun d!84649 () Bool)

(assert (=> d!84649 (= (validKeyInArray!0 (select (arr!17161 a!3118) j!142)) (and (not (= (select (arr!17161 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17161 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!570875 d!84649))

(declare-fun b!571137 () Bool)

(declare-fun e!328485 () SeekEntryResult!5617)

(declare-fun e!328484 () SeekEntryResult!5617)

(assert (=> b!571137 (= e!328485 e!328484)))

(declare-fun lt!260467 () (_ BitVec 64))

(declare-fun lt!260466 () SeekEntryResult!5617)

(assert (=> b!571137 (= lt!260467 (select (arr!17161 a!3118) (index!24697 lt!260466)))))

(declare-fun c!65475 () Bool)

(assert (=> b!571137 (= c!65475 (= lt!260467 k0!1914))))

(declare-fun b!571138 () Bool)

(assert (=> b!571138 (= e!328485 Undefined!5617)))

(declare-fun b!571139 () Bool)

(declare-fun c!65477 () Bool)

(assert (=> b!571139 (= c!65477 (= lt!260467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328483 () SeekEntryResult!5617)

(assert (=> b!571139 (= e!328484 e!328483)))

(declare-fun b!571140 () Bool)

(assert (=> b!571140 (= e!328484 (Found!5617 (index!24697 lt!260466)))))

(declare-fun b!571141 () Bool)

(assert (=> b!571141 (= e!328483 (MissingZero!5617 (index!24697 lt!260466)))))

(declare-fun d!84651 () Bool)

(declare-fun lt!260465 () SeekEntryResult!5617)

(assert (=> d!84651 (and (or ((_ is Undefined!5617) lt!260465) (not ((_ is Found!5617) lt!260465)) (and (bvsge (index!24696 lt!260465) #b00000000000000000000000000000000) (bvslt (index!24696 lt!260465) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260465) ((_ is Found!5617) lt!260465) (not ((_ is MissingZero!5617) lt!260465)) (and (bvsge (index!24695 lt!260465) #b00000000000000000000000000000000) (bvslt (index!24695 lt!260465) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260465) ((_ is Found!5617) lt!260465) ((_ is MissingZero!5617) lt!260465) (not ((_ is MissingVacant!5617) lt!260465)) (and (bvsge (index!24698 lt!260465) #b00000000000000000000000000000000) (bvslt (index!24698 lt!260465) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260465) (ite ((_ is Found!5617) lt!260465) (= (select (arr!17161 a!3118) (index!24696 lt!260465)) k0!1914) (ite ((_ is MissingZero!5617) lt!260465) (= (select (arr!17161 a!3118) (index!24695 lt!260465)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5617) lt!260465) (= (select (arr!17161 a!3118) (index!24698 lt!260465)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84651 (= lt!260465 e!328485)))

(declare-fun c!65476 () Bool)

(assert (=> d!84651 (= c!65476 (and ((_ is Intermediate!5617) lt!260466) (undefined!6429 lt!260466)))))

(assert (=> d!84651 (= lt!260466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84651 (validMask!0 mask!3119)))

(assert (=> d!84651 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!260465)))

(declare-fun b!571142 () Bool)

(assert (=> b!571142 (= e!328483 (seekKeyOrZeroReturnVacant!0 (x!53592 lt!260466) (index!24697 lt!260466) (index!24697 lt!260466) k0!1914 a!3118 mask!3119))))

(assert (= (and d!84651 c!65476) b!571138))

(assert (= (and d!84651 (not c!65476)) b!571137))

(assert (= (and b!571137 c!65475) b!571140))

(assert (= (and b!571137 (not c!65475)) b!571139))

(assert (= (and b!571139 c!65477) b!571141))

(assert (= (and b!571139 (not c!65477)) b!571142))

(declare-fun m!550077 () Bool)

(assert (=> b!571137 m!550077))

(declare-fun m!550079 () Bool)

(assert (=> d!84651 m!550079))

(declare-fun m!550081 () Bool)

(assert (=> d!84651 m!550081))

(declare-fun m!550083 () Bool)

(assert (=> d!84651 m!550083))

(assert (=> d!84651 m!549893))

(declare-fun m!550085 () Bool)

(assert (=> d!84651 m!550085))

(declare-fun m!550087 () Bool)

(assert (=> d!84651 m!550087))

(assert (=> d!84651 m!550085))

(declare-fun m!550089 () Bool)

(assert (=> b!571142 m!550089))

(assert (=> b!570881 d!84651))

(declare-fun b!571149 () Bool)

(declare-fun c!65482 () Bool)

(declare-fun lt!260471 () (_ BitVec 64))

(assert (=> b!571149 (= c!65482 (= lt!260471 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328490 () SeekEntryResult!5617)

(declare-fun e!328491 () SeekEntryResult!5617)

(assert (=> b!571149 (= e!328490 e!328491)))

(declare-fun b!571150 () Bool)

(declare-fun e!328489 () SeekEntryResult!5617)

(assert (=> b!571150 (= e!328489 Undefined!5617)))

(declare-fun d!84657 () Bool)

(declare-fun lt!260472 () SeekEntryResult!5617)

(assert (=> d!84657 (and (or ((_ is Undefined!5617) lt!260472) (not ((_ is Found!5617) lt!260472)) (and (bvsge (index!24696 lt!260472) #b00000000000000000000000000000000) (bvslt (index!24696 lt!260472) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260472) ((_ is Found!5617) lt!260472) (not ((_ is MissingVacant!5617) lt!260472)) (not (= (index!24698 lt!260472) (index!24697 lt!260350))) (and (bvsge (index!24698 lt!260472) #b00000000000000000000000000000000) (bvslt (index!24698 lt!260472) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260472) (ite ((_ is Found!5617) lt!260472) (= (select (arr!17161 a!3118) (index!24696 lt!260472)) (select (arr!17161 a!3118) j!142)) (and ((_ is MissingVacant!5617) lt!260472) (= (index!24698 lt!260472) (index!24697 lt!260350)) (= (select (arr!17161 a!3118) (index!24698 lt!260472)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84657 (= lt!260472 e!328489)))

(declare-fun c!65483 () Bool)

(assert (=> d!84657 (= c!65483 (bvsge (x!53592 lt!260350) #b01111111111111111111111111111110))))

(assert (=> d!84657 (= lt!260471 (select (arr!17161 a!3118) (index!24697 lt!260350)))))

(assert (=> d!84657 (validMask!0 mask!3119)))

(assert (=> d!84657 (= (seekKeyOrZeroReturnVacant!0 (x!53592 lt!260350) (index!24697 lt!260350) (index!24697 lt!260350) (select (arr!17161 a!3118) j!142) a!3118 mask!3119) lt!260472)))

(declare-fun b!571151 () Bool)

(assert (=> b!571151 (= e!328491 (MissingVacant!5617 (index!24697 lt!260350)))))

(declare-fun b!571152 () Bool)

(assert (=> b!571152 (= e!328491 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53592 lt!260350) #b00000000000000000000000000000001) (nextIndex!0 (index!24697 lt!260350) (x!53592 lt!260350) mask!3119) (index!24697 lt!260350) (select (arr!17161 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!571153 () Bool)

(assert (=> b!571153 (= e!328490 (Found!5617 (index!24697 lt!260350)))))

(declare-fun b!571154 () Bool)

(assert (=> b!571154 (= e!328489 e!328490)))

(declare-fun c!65481 () Bool)

(assert (=> b!571154 (= c!65481 (= lt!260471 (select (arr!17161 a!3118) j!142)))))

(assert (= (and d!84657 c!65483) b!571150))

(assert (= (and d!84657 (not c!65483)) b!571154))

(assert (= (and b!571154 c!65481) b!571153))

(assert (= (and b!571154 (not c!65481)) b!571149))

(assert (= (and b!571149 c!65482) b!571151))

(assert (= (and b!571149 (not c!65482)) b!571152))

(declare-fun m!550105 () Bool)

(assert (=> d!84657 m!550105))

(declare-fun m!550107 () Bool)

(assert (=> d!84657 m!550107))

(assert (=> d!84657 m!549875))

(assert (=> d!84657 m!549893))

(assert (=> b!571152 m!550013))

(assert (=> b!571152 m!550013))

(assert (=> b!571152 m!549855))

(declare-fun m!550109 () Bool)

(assert (=> b!571152 m!550109))

(assert (=> b!570882 d!84657))

(declare-fun b!571159 () Bool)

(declare-fun e!328498 () SeekEntryResult!5617)

(declare-fun e!328497 () SeekEntryResult!5617)

(assert (=> b!571159 (= e!328498 e!328497)))

(declare-fun lt!260475 () (_ BitVec 64))

(declare-fun lt!260474 () SeekEntryResult!5617)

(assert (=> b!571159 (= lt!260475 (select (arr!17161 a!3118) (index!24697 lt!260474)))))

(declare-fun c!65484 () Bool)

(assert (=> b!571159 (= c!65484 (= lt!260475 (select (arr!17161 a!3118) j!142)))))

(declare-fun b!571160 () Bool)

(assert (=> b!571160 (= e!328498 Undefined!5617)))

(declare-fun b!571161 () Bool)

(declare-fun c!65486 () Bool)

(assert (=> b!571161 (= c!65486 (= lt!260475 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328496 () SeekEntryResult!5617)

(assert (=> b!571161 (= e!328497 e!328496)))

(declare-fun b!571162 () Bool)

(assert (=> b!571162 (= e!328497 (Found!5617 (index!24697 lt!260474)))))

(declare-fun b!571163 () Bool)

(assert (=> b!571163 (= e!328496 (MissingZero!5617 (index!24697 lt!260474)))))

(declare-fun d!84661 () Bool)

(declare-fun lt!260473 () SeekEntryResult!5617)

(assert (=> d!84661 (and (or ((_ is Undefined!5617) lt!260473) (not ((_ is Found!5617) lt!260473)) (and (bvsge (index!24696 lt!260473) #b00000000000000000000000000000000) (bvslt (index!24696 lt!260473) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260473) ((_ is Found!5617) lt!260473) (not ((_ is MissingZero!5617) lt!260473)) (and (bvsge (index!24695 lt!260473) #b00000000000000000000000000000000) (bvslt (index!24695 lt!260473) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260473) ((_ is Found!5617) lt!260473) ((_ is MissingZero!5617) lt!260473) (not ((_ is MissingVacant!5617) lt!260473)) (and (bvsge (index!24698 lt!260473) #b00000000000000000000000000000000) (bvslt (index!24698 lt!260473) (size!17525 a!3118)))) (or ((_ is Undefined!5617) lt!260473) (ite ((_ is Found!5617) lt!260473) (= (select (arr!17161 a!3118) (index!24696 lt!260473)) (select (arr!17161 a!3118) j!142)) (ite ((_ is MissingZero!5617) lt!260473) (= (select (arr!17161 a!3118) (index!24695 lt!260473)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5617) lt!260473) (= (select (arr!17161 a!3118) (index!24698 lt!260473)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84661 (= lt!260473 e!328498)))

(declare-fun c!65485 () Bool)

(assert (=> d!84661 (= c!65485 (and ((_ is Intermediate!5617) lt!260474) (undefined!6429 lt!260474)))))

(assert (=> d!84661 (= lt!260474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17161 a!3118) j!142) mask!3119) (select (arr!17161 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84661 (validMask!0 mask!3119)))

(assert (=> d!84661 (= (seekEntryOrOpen!0 (select (arr!17161 a!3118) j!142) a!3118 mask!3119) lt!260473)))

(declare-fun b!571164 () Bool)

(assert (=> b!571164 (= e!328496 (seekKeyOrZeroReturnVacant!0 (x!53592 lt!260474) (index!24697 lt!260474) (index!24697 lt!260474) (select (arr!17161 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84661 c!65485) b!571160))

(assert (= (and d!84661 (not c!65485)) b!571159))

(assert (= (and b!571159 c!65484) b!571162))

(assert (= (and b!571159 (not c!65484)) b!571161))

(assert (= (and b!571161 c!65486) b!571163))

(assert (= (and b!571161 (not c!65486)) b!571164))

(declare-fun m!550111 () Bool)

(assert (=> b!571159 m!550111))

(declare-fun m!550113 () Bool)

(assert (=> d!84661 m!550113))

(declare-fun m!550115 () Bool)

(assert (=> d!84661 m!550115))

(declare-fun m!550117 () Bool)

(assert (=> d!84661 m!550117))

(assert (=> d!84661 m!549893))

(assert (=> d!84661 m!549863))

(assert (=> d!84661 m!549855))

(declare-fun m!550121 () Bool)

(assert (=> d!84661 m!550121))

(assert (=> d!84661 m!549855))

(assert (=> d!84661 m!549863))

(assert (=> b!571164 m!549855))

(declare-fun m!550123 () Bool)

(assert (=> b!571164 m!550123))

(assert (=> b!570872 d!84661))

(declare-fun b!571167 () Bool)

(declare-fun e!328501 () Bool)

(declare-fun e!328502 () Bool)

(assert (=> b!571167 (= e!328501 e!328502)))

(declare-fun lt!260477 () (_ BitVec 64))

(assert (=> b!571167 (= lt!260477 (select (arr!17161 a!3118) j!142))))

(declare-fun lt!260476 () Unit!17936)

(assert (=> b!571167 (= lt!260476 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!260477 j!142))))

(assert (=> b!571167 (arrayContainsKey!0 a!3118 lt!260477 #b00000000000000000000000000000000)))

(declare-fun lt!260478 () Unit!17936)

(assert (=> b!571167 (= lt!260478 lt!260476)))

(declare-fun res!360907 () Bool)

(assert (=> b!571167 (= res!360907 (= (seekEntryOrOpen!0 (select (arr!17161 a!3118) j!142) a!3118 mask!3119) (Found!5617 j!142)))))

(assert (=> b!571167 (=> (not res!360907) (not e!328502))))

(declare-fun call!32610 () Bool)

(declare-fun bm!32607 () Bool)

(assert (=> bm!32607 (= call!32610 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84665 () Bool)

(declare-fun res!360908 () Bool)

(declare-fun e!328503 () Bool)

(assert (=> d!84665 (=> res!360908 e!328503)))

(assert (=> d!84665 (= res!360908 (bvsge j!142 (size!17525 a!3118)))))

(assert (=> d!84665 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!328503)))

(declare-fun b!571168 () Bool)

(assert (=> b!571168 (= e!328503 e!328501)))

(declare-fun c!65487 () Bool)

(assert (=> b!571168 (= c!65487 (validKeyInArray!0 (select (arr!17161 a!3118) j!142)))))

(declare-fun b!571169 () Bool)

(assert (=> b!571169 (= e!328502 call!32610)))

(declare-fun b!571170 () Bool)

(assert (=> b!571170 (= e!328501 call!32610)))

(assert (= (and d!84665 (not res!360908)) b!571168))

(assert (= (and b!571168 c!65487) b!571167))

(assert (= (and b!571168 (not c!65487)) b!571170))

(assert (= (and b!571167 res!360907) b!571169))

(assert (= (or b!571169 b!571170) bm!32607))

(assert (=> b!571167 m!549855))

(declare-fun m!550125 () Bool)

(assert (=> b!571167 m!550125))

(declare-fun m!550127 () Bool)

(assert (=> b!571167 m!550127))

(assert (=> b!571167 m!549855))

(assert (=> b!571167 m!549857))

(declare-fun m!550129 () Bool)

(assert (=> bm!32607 m!550129))

(assert (=> b!571168 m!549855))

(assert (=> b!571168 m!549855))

(assert (=> b!571168 m!549891))

(assert (=> b!570872 d!84665))

(declare-fun d!84669 () Bool)

(assert (=> d!84669 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!260481 () Unit!17936)

(declare-fun choose!38 (array!35750 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17936)

(assert (=> d!84669 (= lt!260481 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84669 (validMask!0 mask!3119)))

(assert (=> d!84669 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!260481)))

(declare-fun bs!17706 () Bool)

(assert (= bs!17706 d!84669))

(assert (=> bs!17706 m!549859))

(declare-fun m!550131 () Bool)

(assert (=> bs!17706 m!550131))

(assert (=> bs!17706 m!549893))

(assert (=> b!570872 d!84669))

(check-sat (not b!571128) (not b!571164) (not b!570957) (not d!84617) (not b!571127) (not b!571003) (not b!571085) (not b!571152) (not d!84661) (not b!571142) (not b!571168) (not bm!32607) (not d!84601) (not bm!32603) (not bm!32606) (not b!571084) (not b!570948) (not b!571088) (not b!571167) (not b!571053) (not b!570968) (not d!84669) (not d!84651) (not d!84627) (not d!84603) (not d!84657))
(check-sat)
