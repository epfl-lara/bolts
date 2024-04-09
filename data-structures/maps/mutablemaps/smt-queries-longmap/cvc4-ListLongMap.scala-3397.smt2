; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46928 () Bool)

(assert start!46928)

(declare-fun b!517417 () Bool)

(declare-fun res!316775 () Bool)

(declare-fun e!301935 () Bool)

(assert (=> b!517417 (=> (not res!316775) (not e!301935))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517417 (= res!316775 (validKeyInArray!0 k!2280))))

(declare-fun b!517418 () Bool)

(declare-fun res!316774 () Bool)

(assert (=> b!517418 (=> (not res!316774) (not e!301935))))

(declare-datatypes ((array!33086 0))(
  ( (array!33087 (arr!15905 (Array (_ BitVec 32) (_ BitVec 64))) (size!16269 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33086)

(declare-fun arrayContainsKey!0 (array!33086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517418 (= res!316774 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517419 () Bool)

(declare-fun e!301938 () Bool)

(declare-fun e!301936 () Bool)

(assert (=> b!517419 (= e!301938 (not e!301936))))

(declare-fun res!316772 () Bool)

(assert (=> b!517419 (=> res!316772 e!301936)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4379 0))(
  ( (MissingZero!4379 (index!19704 (_ BitVec 32))) (Found!4379 (index!19705 (_ BitVec 32))) (Intermediate!4379 (undefined!5191 Bool) (index!19706 (_ BitVec 32)) (x!48693 (_ BitVec 32))) (Undefined!4379) (MissingVacant!4379 (index!19707 (_ BitVec 32))) )
))
(declare-fun lt!236908 () SeekEntryResult!4379)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!236905 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33086 (_ BitVec 32)) SeekEntryResult!4379)

(assert (=> b!517419 (= res!316772 (= lt!236908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236905 (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235)) mask!3524)))))

(declare-fun lt!236906 () (_ BitVec 32))

(assert (=> b!517419 (= lt!236908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236906 (select (arr!15905 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517419 (= lt!236905 (toIndex!0 (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517419 (= lt!236906 (toIndex!0 (select (arr!15905 a!3235) j!176) mask!3524))))

(declare-fun e!301939 () Bool)

(assert (=> b!517419 e!301939))

(declare-fun res!316767 () Bool)

(assert (=> b!517419 (=> (not res!316767) (not e!301939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33086 (_ BitVec 32)) Bool)

(assert (=> b!517419 (= res!316767 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16008 0))(
  ( (Unit!16009) )
))
(declare-fun lt!236907 () Unit!16008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33086 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16008)

(assert (=> b!517419 (= lt!236907 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517420 () Bool)

(declare-fun res!316768 () Bool)

(assert (=> b!517420 (=> (not res!316768) (not e!301938))))

(assert (=> b!517420 (= res!316768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517421 () Bool)

(declare-fun res!316770 () Bool)

(assert (=> b!517421 (=> (not res!316770) (not e!301938))))

(declare-datatypes ((List!10116 0))(
  ( (Nil!10113) (Cons!10112 (h!11016 (_ BitVec 64)) (t!16352 List!10116)) )
))
(declare-fun arrayNoDuplicates!0 (array!33086 (_ BitVec 32) List!10116) Bool)

(assert (=> b!517421 (= res!316770 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10113))))

(declare-fun b!517422 () Bool)

(assert (=> b!517422 (= e!301936 (or (not (= (select (arr!15905 a!3235) (index!19706 lt!236908)) (select (arr!15905 a!3235) j!176))) (bvsgt (x!48693 lt!236908) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48693 lt!236908)) (bvslt lt!236906 #b00000000000000000000000000000000) (bvsge lt!236906 (size!16269 a!3235)) (and (bvsge (index!19706 lt!236908) #b00000000000000000000000000000000) (bvslt (index!19706 lt!236908) (size!16269 a!3235)))))))

(assert (=> b!517422 (and (bvslt (x!48693 lt!236908) #b01111111111111111111111111111110) (or (= (select (arr!15905 a!3235) (index!19706 lt!236908)) (select (arr!15905 a!3235) j!176)) (= (select (arr!15905 a!3235) (index!19706 lt!236908)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15905 a!3235) (index!19706 lt!236908)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517423 () Bool)

(declare-fun res!316771 () Bool)

(assert (=> b!517423 (=> (not res!316771) (not e!301935))))

(assert (=> b!517423 (= res!316771 (validKeyInArray!0 (select (arr!15905 a!3235) j!176)))))

(declare-fun b!517424 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33086 (_ BitVec 32)) SeekEntryResult!4379)

(assert (=> b!517424 (= e!301939 (= (seekEntryOrOpen!0 (select (arr!15905 a!3235) j!176) a!3235 mask!3524) (Found!4379 j!176)))))

(declare-fun b!517425 () Bool)

(declare-fun res!316769 () Bool)

(assert (=> b!517425 (=> (not res!316769) (not e!301935))))

(assert (=> b!517425 (= res!316769 (and (= (size!16269 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16269 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16269 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517426 () Bool)

(assert (=> b!517426 (= e!301935 e!301938)))

(declare-fun res!316766 () Bool)

(assert (=> b!517426 (=> (not res!316766) (not e!301938))))

(declare-fun lt!236909 () SeekEntryResult!4379)

(assert (=> b!517426 (= res!316766 (or (= lt!236909 (MissingZero!4379 i!1204)) (= lt!236909 (MissingVacant!4379 i!1204))))))

(assert (=> b!517426 (= lt!236909 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!316773 () Bool)

(assert (=> start!46928 (=> (not res!316773) (not e!301935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46928 (= res!316773 (validMask!0 mask!3524))))

(assert (=> start!46928 e!301935))

(assert (=> start!46928 true))

(declare-fun array_inv!11679 (array!33086) Bool)

(assert (=> start!46928 (array_inv!11679 a!3235)))

(declare-fun b!517427 () Bool)

(declare-fun res!316765 () Bool)

(assert (=> b!517427 (=> res!316765 e!301936)))

(assert (=> b!517427 (= res!316765 (or (undefined!5191 lt!236908) (not (is-Intermediate!4379 lt!236908))))))

(assert (= (and start!46928 res!316773) b!517425))

(assert (= (and b!517425 res!316769) b!517423))

(assert (= (and b!517423 res!316771) b!517417))

(assert (= (and b!517417 res!316775) b!517418))

(assert (= (and b!517418 res!316774) b!517426))

(assert (= (and b!517426 res!316766) b!517420))

(assert (= (and b!517420 res!316768) b!517421))

(assert (= (and b!517421 res!316770) b!517419))

(assert (= (and b!517419 res!316767) b!517424))

(assert (= (and b!517419 (not res!316772)) b!517427))

(assert (= (and b!517427 (not res!316765)) b!517422))

(declare-fun m!498857 () Bool)

(assert (=> b!517422 m!498857))

(declare-fun m!498859 () Bool)

(assert (=> b!517422 m!498859))

(declare-fun m!498861 () Bool)

(assert (=> b!517419 m!498861))

(declare-fun m!498863 () Bool)

(assert (=> b!517419 m!498863))

(declare-fun m!498865 () Bool)

(assert (=> b!517419 m!498865))

(assert (=> b!517419 m!498861))

(assert (=> b!517419 m!498859))

(declare-fun m!498867 () Bool)

(assert (=> b!517419 m!498867))

(assert (=> b!517419 m!498859))

(declare-fun m!498869 () Bool)

(assert (=> b!517419 m!498869))

(assert (=> b!517419 m!498861))

(declare-fun m!498871 () Bool)

(assert (=> b!517419 m!498871))

(declare-fun m!498873 () Bool)

(assert (=> b!517419 m!498873))

(assert (=> b!517419 m!498859))

(declare-fun m!498875 () Bool)

(assert (=> b!517419 m!498875))

(declare-fun m!498877 () Bool)

(assert (=> b!517418 m!498877))

(assert (=> b!517424 m!498859))

(assert (=> b!517424 m!498859))

(declare-fun m!498879 () Bool)

(assert (=> b!517424 m!498879))

(declare-fun m!498881 () Bool)

(assert (=> b!517426 m!498881))

(assert (=> b!517423 m!498859))

(assert (=> b!517423 m!498859))

(declare-fun m!498883 () Bool)

(assert (=> b!517423 m!498883))

(declare-fun m!498885 () Bool)

(assert (=> start!46928 m!498885))

(declare-fun m!498887 () Bool)

(assert (=> start!46928 m!498887))

(declare-fun m!498889 () Bool)

(assert (=> b!517417 m!498889))

(declare-fun m!498891 () Bool)

(assert (=> b!517421 m!498891))

(declare-fun m!498893 () Bool)

(assert (=> b!517420 m!498893))

(push 1)

(assert (not b!517420))

(assert (not b!517424))

(assert (not b!517426))

(assert (not b!517418))

(assert (not b!517419))

(assert (not b!517423))

(assert (not start!46928))

(assert (not b!517421))

(assert (not b!517417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79653 () Bool)

(assert (=> d!79653 (= (validKeyInArray!0 (select (arr!15905 a!3235) j!176)) (and (not (= (select (arr!15905 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15905 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517423 d!79653))

(declare-fun d!79657 () Bool)

(declare-fun res!316807 () Bool)

(declare-fun e!301988 () Bool)

(assert (=> d!79657 (=> res!316807 e!301988)))

(assert (=> d!79657 (= res!316807 (= (select (arr!15905 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79657 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!301988)))

(declare-fun b!517493 () Bool)

(declare-fun e!301989 () Bool)

(assert (=> b!517493 (= e!301988 e!301989)))

(declare-fun res!316808 () Bool)

(assert (=> b!517493 (=> (not res!316808) (not e!301989))))

(assert (=> b!517493 (= res!316808 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16269 a!3235)))))

(declare-fun b!517494 () Bool)

(assert (=> b!517494 (= e!301989 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79657 (not res!316807)) b!517493))

(assert (= (and b!517493 res!316808) b!517494))

(declare-fun m!498925 () Bool)

(assert (=> d!79657 m!498925))

(declare-fun m!498927 () Bool)

(assert (=> b!517494 m!498927))

(assert (=> b!517418 d!79657))

(declare-fun d!79659 () Bool)

(declare-fun lt!236970 () SeekEntryResult!4379)

(assert (=> d!79659 (and (or (is-Undefined!4379 lt!236970) (not (is-Found!4379 lt!236970)) (and (bvsge (index!19705 lt!236970) #b00000000000000000000000000000000) (bvslt (index!19705 lt!236970) (size!16269 a!3235)))) (or (is-Undefined!4379 lt!236970) (is-Found!4379 lt!236970) (not (is-MissingZero!4379 lt!236970)) (and (bvsge (index!19704 lt!236970) #b00000000000000000000000000000000) (bvslt (index!19704 lt!236970) (size!16269 a!3235)))) (or (is-Undefined!4379 lt!236970) (is-Found!4379 lt!236970) (is-MissingZero!4379 lt!236970) (not (is-MissingVacant!4379 lt!236970)) (and (bvsge (index!19707 lt!236970) #b00000000000000000000000000000000) (bvslt (index!19707 lt!236970) (size!16269 a!3235)))) (or (is-Undefined!4379 lt!236970) (ite (is-Found!4379 lt!236970) (= (select (arr!15905 a!3235) (index!19705 lt!236970)) (select (arr!15905 a!3235) j!176)) (ite (is-MissingZero!4379 lt!236970) (= (select (arr!15905 a!3235) (index!19704 lt!236970)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4379 lt!236970) (= (select (arr!15905 a!3235) (index!19707 lt!236970)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302016 () SeekEntryResult!4379)

(assert (=> d!79659 (= lt!236970 e!302016)))

(declare-fun c!60651 () Bool)

(declare-fun lt!236969 () SeekEntryResult!4379)

(assert (=> d!79659 (= c!60651 (and (is-Intermediate!4379 lt!236969) (undefined!5191 lt!236969)))))

(assert (=> d!79659 (= lt!236969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15905 a!3235) j!176) mask!3524) (select (arr!15905 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79659 (validMask!0 mask!3524)))

(assert (=> d!79659 (= (seekEntryOrOpen!0 (select (arr!15905 a!3235) j!176) a!3235 mask!3524) lt!236970)))

(declare-fun b!517534 () Bool)

(assert (=> b!517534 (= e!302016 Undefined!4379)))

(declare-fun b!517535 () Bool)

(declare-fun c!60650 () Bool)

(declare-fun lt!236968 () (_ BitVec 64))

(assert (=> b!517535 (= c!60650 (= lt!236968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302015 () SeekEntryResult!4379)

(declare-fun e!302017 () SeekEntryResult!4379)

(assert (=> b!517535 (= e!302015 e!302017)))

(declare-fun b!517536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33086 (_ BitVec 32)) SeekEntryResult!4379)

(assert (=> b!517536 (= e!302017 (seekKeyOrZeroReturnVacant!0 (x!48693 lt!236969) (index!19706 lt!236969) (index!19706 lt!236969) (select (arr!15905 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517537 () Bool)

(assert (=> b!517537 (= e!302015 (Found!4379 (index!19706 lt!236969)))))

(declare-fun b!517538 () Bool)

(assert (=> b!517538 (= e!302017 (MissingZero!4379 (index!19706 lt!236969)))))

(declare-fun b!517539 () Bool)

(assert (=> b!517539 (= e!302016 e!302015)))

(assert (=> b!517539 (= lt!236968 (select (arr!15905 a!3235) (index!19706 lt!236969)))))

(declare-fun c!60649 () Bool)

(assert (=> b!517539 (= c!60649 (= lt!236968 (select (arr!15905 a!3235) j!176)))))

(assert (= (and d!79659 c!60651) b!517534))

(assert (= (and d!79659 (not c!60651)) b!517539))

(assert (= (and b!517539 c!60649) b!517537))

(assert (= (and b!517539 (not c!60649)) b!517535))

(assert (= (and b!517535 c!60650) b!517538))

(assert (= (and b!517535 (not c!60650)) b!517536))

(declare-fun m!498965 () Bool)

(assert (=> d!79659 m!498965))

(assert (=> d!79659 m!498885))

(declare-fun m!498967 () Bool)

(assert (=> d!79659 m!498967))

(assert (=> d!79659 m!498859))

(assert (=> d!79659 m!498867))

(declare-fun m!498969 () Bool)

(assert (=> d!79659 m!498969))

(assert (=> d!79659 m!498867))

(assert (=> d!79659 m!498859))

(declare-fun m!498971 () Bool)

(assert (=> d!79659 m!498971))

(assert (=> b!517536 m!498859))

(declare-fun m!498973 () Bool)

(assert (=> b!517536 m!498973))

(declare-fun m!498975 () Bool)

(assert (=> b!517539 m!498975))

(assert (=> b!517424 d!79659))

(declare-fun d!79683 () Bool)

(declare-fun lt!236976 () (_ BitVec 32))

(declare-fun lt!236975 () (_ BitVec 32))

(assert (=> d!79683 (= lt!236976 (bvmul (bvxor lt!236975 (bvlshr lt!236975 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79683 (= lt!236975 ((_ extract 31 0) (bvand (bvxor (select (arr!15905 a!3235) j!176) (bvlshr (select (arr!15905 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79683 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316822 (let ((h!11019 ((_ extract 31 0) (bvand (bvxor (select (arr!15905 a!3235) j!176) (bvlshr (select (arr!15905 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48696 (bvmul (bvxor h!11019 (bvlshr h!11019 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48696 (bvlshr x!48696 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316822 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316822 #b00000000000000000000000000000000))))))

(assert (=> d!79683 (= (toIndex!0 (select (arr!15905 a!3235) j!176) mask!3524) (bvand (bvxor lt!236976 (bvlshr lt!236976 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517419 d!79683))

(declare-fun d!79685 () Bool)

(declare-fun res!316834 () Bool)

(declare-fun e!302040 () Bool)

(assert (=> d!79685 (=> res!316834 e!302040)))

(assert (=> d!79685 (= res!316834 (bvsge j!176 (size!16269 a!3235)))))

(assert (=> d!79685 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302040)))

(declare-fun b!517578 () Bool)

(declare-fun e!302041 () Bool)

(assert (=> b!517578 (= e!302040 e!302041)))

(declare-fun c!60666 () Bool)

(assert (=> b!517578 (= c!60666 (validKeyInArray!0 (select (arr!15905 a!3235) j!176)))))

(declare-fun b!517579 () Bool)

(declare-fun e!302042 () Bool)

(assert (=> b!517579 (= e!302041 e!302042)))

(declare-fun lt!236992 () (_ BitVec 64))

(assert (=> b!517579 (= lt!236992 (select (arr!15905 a!3235) j!176))))

(declare-fun lt!236993 () Unit!16008)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33086 (_ BitVec 64) (_ BitVec 32)) Unit!16008)

(assert (=> b!517579 (= lt!236993 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236992 j!176))))

(assert (=> b!517579 (arrayContainsKey!0 a!3235 lt!236992 #b00000000000000000000000000000000)))

(declare-fun lt!236991 () Unit!16008)

(assert (=> b!517579 (= lt!236991 lt!236993)))

(declare-fun res!316833 () Bool)

(assert (=> b!517579 (= res!316833 (= (seekEntryOrOpen!0 (select (arr!15905 a!3235) j!176) a!3235 mask!3524) (Found!4379 j!176)))))

(assert (=> b!517579 (=> (not res!316833) (not e!302042))))

(declare-fun b!517580 () Bool)

(declare-fun call!31695 () Bool)

(assert (=> b!517580 (= e!302041 call!31695)))

(declare-fun bm!31692 () Bool)

(assert (=> bm!31692 (= call!31695 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517581 () Bool)

(assert (=> b!517581 (= e!302042 call!31695)))

(assert (= (and d!79685 (not res!316834)) b!517578))

(assert (= (and b!517578 c!60666) b!517579))

(assert (= (and b!517578 (not c!60666)) b!517580))

(assert (= (and b!517579 res!316833) b!517581))

(assert (= (or b!517581 b!517580) bm!31692))

(assert (=> b!517578 m!498859))

(assert (=> b!517578 m!498859))

(assert (=> b!517578 m!498883))

(assert (=> b!517579 m!498859))

(declare-fun m!498977 () Bool)

(assert (=> b!517579 m!498977))

(declare-fun m!498979 () Bool)

(assert (=> b!517579 m!498979))

(assert (=> b!517579 m!498859))

(assert (=> b!517579 m!498879))

(declare-fun m!498981 () Bool)

(assert (=> bm!31692 m!498981))

(assert (=> b!517419 d!79685))

(declare-fun d!79687 () Bool)

(assert (=> d!79687 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237002 () Unit!16008)

(declare-fun choose!38 (array!33086 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16008)

(assert (=> d!79687 (= lt!237002 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79687 (validMask!0 mask!3524)))

(assert (=> d!79687 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237002)))

(declare-fun bs!16339 () Bool)

(assert (= bs!16339 d!79687))

(assert (=> bs!16339 m!498869))

(declare-fun m!498999 () Bool)

(assert (=> bs!16339 m!498999))

(assert (=> bs!16339 m!498885))

(assert (=> b!517419 d!79687))

(declare-fun d!79691 () Bool)

(declare-fun lt!237004 () (_ BitVec 32))

(declare-fun lt!237003 () (_ BitVec 32))

(assert (=> d!79691 (= lt!237004 (bvmul (bvxor lt!237003 (bvlshr lt!237003 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79691 (= lt!237003 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79691 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316822 (let ((h!11019 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48696 (bvmul (bvxor h!11019 (bvlshr h!11019 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48696 (bvlshr x!48696 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316822 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316822 #b00000000000000000000000000000000))))))

(assert (=> d!79691 (= (toIndex!0 (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!237004 (bvlshr lt!237004 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!517419 d!79691))

(declare-fun b!517652 () Bool)

(declare-fun e!302090 () SeekEntryResult!4379)

(assert (=> b!517652 (= e!302090 (Intermediate!4379 false lt!236906 #b00000000000000000000000000000000))))

(declare-fun b!517653 () Bool)

(declare-fun lt!237018 () SeekEntryResult!4379)

(assert (=> b!517653 (and (bvsge (index!19706 lt!237018) #b00000000000000000000000000000000) (bvslt (index!19706 lt!237018) (size!16269 a!3235)))))

(declare-fun res!316867 () Bool)

(assert (=> b!517653 (= res!316867 (= (select (arr!15905 a!3235) (index!19706 lt!237018)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302089 () Bool)

(assert (=> b!517653 (=> res!316867 e!302089)))

(declare-fun b!517654 () Bool)

(declare-fun e!302087 () SeekEntryResult!4379)

(assert (=> b!517654 (= e!302087 e!302090)))

(declare-fun c!60688 () Bool)

(declare-fun lt!237017 () (_ BitVec 64))

(assert (=> b!517654 (= c!60688 (or (= lt!237017 (select (arr!15905 a!3235) j!176)) (= (bvadd lt!237017 lt!237017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517655 () Bool)

(assert (=> b!517655 (and (bvsge (index!19706 lt!237018) #b00000000000000000000000000000000) (bvslt (index!19706 lt!237018) (size!16269 a!3235)))))

(assert (=> b!517655 (= e!302089 (= (select (arr!15905 a!3235) (index!19706 lt!237018)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517656 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517656 (= e!302090 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236906 #b00000000000000000000000000000000 mask!3524) (select (arr!15905 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517657 () Bool)

(declare-fun e!302088 () Bool)

(declare-fun e!302086 () Bool)

(assert (=> b!517657 (= e!302088 e!302086)))

(declare-fun res!316869 () Bool)

(assert (=> b!517657 (= res!316869 (and (is-Intermediate!4379 lt!237018) (not (undefined!5191 lt!237018)) (bvslt (x!48693 lt!237018) #b01111111111111111111111111111110) (bvsge (x!48693 lt!237018) #b00000000000000000000000000000000) (bvsge (x!48693 lt!237018) #b00000000000000000000000000000000)))))

(assert (=> b!517657 (=> (not res!316869) (not e!302086))))

(declare-fun b!517659 () Bool)

(assert (=> b!517659 (= e!302087 (Intermediate!4379 true lt!236906 #b00000000000000000000000000000000))))

(declare-fun b!517660 () Bool)

(assert (=> b!517660 (and (bvsge (index!19706 lt!237018) #b00000000000000000000000000000000) (bvslt (index!19706 lt!237018) (size!16269 a!3235)))))

(declare-fun res!316868 () Bool)

(assert (=> b!517660 (= res!316868 (= (select (arr!15905 a!3235) (index!19706 lt!237018)) (select (arr!15905 a!3235) j!176)))))

(assert (=> b!517660 (=> res!316868 e!302089)))

(assert (=> b!517660 (= e!302086 e!302089)))

(declare-fun b!517658 () Bool)

(assert (=> b!517658 (= e!302088 (bvsge (x!48693 lt!237018) #b01111111111111111111111111111110))))

(declare-fun d!79697 () Bool)

(assert (=> d!79697 e!302088))

(declare-fun c!60687 () Bool)

(assert (=> d!79697 (= c!60687 (and (is-Intermediate!4379 lt!237018) (undefined!5191 lt!237018)))))

(assert (=> d!79697 (= lt!237018 e!302087)))

(declare-fun c!60686 () Bool)

(assert (=> d!79697 (= c!60686 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79697 (= lt!237017 (select (arr!15905 a!3235) lt!236906))))

(assert (=> d!79697 (validMask!0 mask!3524)))

(assert (=> d!79697 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236906 (select (arr!15905 a!3235) j!176) a!3235 mask!3524) lt!237018)))

(assert (= (and d!79697 c!60686) b!517659))

(assert (= (and d!79697 (not c!60686)) b!517654))

(assert (= (and b!517654 c!60688) b!517652))

(assert (= (and b!517654 (not c!60688)) b!517656))

(assert (= (and d!79697 c!60687) b!517658))

(assert (= (and d!79697 (not c!60687)) b!517657))

(assert (= (and b!517657 res!316869) b!517660))

(assert (= (and b!517660 (not res!316868)) b!517653))

(assert (= (and b!517653 (not res!316867)) b!517655))

(declare-fun m!499029 () Bool)

(assert (=> b!517656 m!499029))

(assert (=> b!517656 m!499029))

(assert (=> b!517656 m!498859))

(declare-fun m!499031 () Bool)

(assert (=> b!517656 m!499031))

(declare-fun m!499033 () Bool)

(assert (=> b!517660 m!499033))

(assert (=> b!517655 m!499033))

(declare-fun m!499035 () Bool)

(assert (=> d!79697 m!499035))

(assert (=> d!79697 m!498885))

(assert (=> b!517653 m!499033))

(assert (=> b!517419 d!79697))

(declare-fun b!517661 () Bool)

(declare-fun e!302095 () SeekEntryResult!4379)

(assert (=> b!517661 (= e!302095 (Intermediate!4379 false lt!236905 #b00000000000000000000000000000000))))

(declare-fun lt!237020 () SeekEntryResult!4379)

(declare-fun b!517662 () Bool)

(assert (=> b!517662 (and (bvsge (index!19706 lt!237020) #b00000000000000000000000000000000) (bvslt (index!19706 lt!237020) (size!16269 (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235)))))))

(declare-fun res!316870 () Bool)

(assert (=> b!517662 (= res!316870 (= (select (arr!15905 (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235))) (index!19706 lt!237020)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302094 () Bool)

(assert (=> b!517662 (=> res!316870 e!302094)))

(declare-fun b!517663 () Bool)

(declare-fun e!302092 () SeekEntryResult!4379)

(assert (=> b!517663 (= e!302092 e!302095)))

(declare-fun lt!237019 () (_ BitVec 64))

(declare-fun c!60691 () Bool)

(assert (=> b!517663 (= c!60691 (or (= lt!237019 (select (store (arr!15905 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!237019 lt!237019) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517664 () Bool)

(assert (=> b!517664 (and (bvsge (index!19706 lt!237020) #b00000000000000000000000000000000) (bvslt (index!19706 lt!237020) (size!16269 (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235)))))))

(assert (=> b!517664 (= e!302094 (= (select (arr!15905 (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235))) (index!19706 lt!237020)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517665 () Bool)

(assert (=> b!517665 (= e!302095 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236905 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235)) mask!3524))))

(declare-fun b!517666 () Bool)

(declare-fun e!302093 () Bool)

(declare-fun e!302091 () Bool)

(assert (=> b!517666 (= e!302093 e!302091)))

(declare-fun res!316872 () Bool)

(assert (=> b!517666 (= res!316872 (and (is-Intermediate!4379 lt!237020) (not (undefined!5191 lt!237020)) (bvslt (x!48693 lt!237020) #b01111111111111111111111111111110) (bvsge (x!48693 lt!237020) #b00000000000000000000000000000000) (bvsge (x!48693 lt!237020) #b00000000000000000000000000000000)))))

(assert (=> b!517666 (=> (not res!316872) (not e!302091))))

(declare-fun b!517668 () Bool)

(assert (=> b!517668 (= e!302092 (Intermediate!4379 true lt!236905 #b00000000000000000000000000000000))))

(declare-fun b!517669 () Bool)

(assert (=> b!517669 (and (bvsge (index!19706 lt!237020) #b00000000000000000000000000000000) (bvslt (index!19706 lt!237020) (size!16269 (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235)))))))

(declare-fun res!316871 () Bool)

(assert (=> b!517669 (= res!316871 (= (select (arr!15905 (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235))) (index!19706 lt!237020)) (select (store (arr!15905 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!517669 (=> res!316871 e!302094)))

(assert (=> b!517669 (= e!302091 e!302094)))

(declare-fun b!517667 () Bool)

(assert (=> b!517667 (= e!302093 (bvsge (x!48693 lt!237020) #b01111111111111111111111111111110))))

(declare-fun d!79705 () Bool)

(assert (=> d!79705 e!302093))

(declare-fun c!60690 () Bool)

(assert (=> d!79705 (= c!60690 (and (is-Intermediate!4379 lt!237020) (undefined!5191 lt!237020)))))

(assert (=> d!79705 (= lt!237020 e!302092)))

(declare-fun c!60689 () Bool)

(assert (=> d!79705 (= c!60689 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79705 (= lt!237019 (select (arr!15905 (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235))) lt!236905))))

(assert (=> d!79705 (validMask!0 mask!3524)))

(assert (=> d!79705 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236905 (select (store (arr!15905 a!3235) i!1204 k!2280) j!176) (array!33087 (store (arr!15905 a!3235) i!1204 k!2280) (size!16269 a!3235)) mask!3524) lt!237020)))

(assert (= (and d!79705 c!60689) b!517668))

(assert (= (and d!79705 (not c!60689)) b!517663))

(assert (= (and b!517663 c!60691) b!517661))

(assert (= (and b!517663 (not c!60691)) b!517665))

(assert (= (and d!79705 c!60690) b!517667))

(assert (= (and d!79705 (not c!60690)) b!517666))

(assert (= (and b!517666 res!316872) b!517669))

(assert (= (and b!517669 (not res!316871)) b!517662))

(assert (= (and b!517662 (not res!316870)) b!517664))

(declare-fun m!499037 () Bool)

(assert (=> b!517665 m!499037))

(assert (=> b!517665 m!499037))

(assert (=> b!517665 m!498861))

(declare-fun m!499039 () Bool)

(assert (=> b!517665 m!499039))

(declare-fun m!499041 () Bool)

(assert (=> b!517669 m!499041))

(assert (=> b!517664 m!499041))

(declare-fun m!499043 () Bool)

(assert (=> d!79705 m!499043))

(assert (=> d!79705 m!498885))

(assert (=> b!517662 m!499041))

(assert (=> b!517419 d!79705))

(declare-fun d!79707 () Bool)

(declare-fun res!316874 () Bool)

(declare-fun e!302096 () Bool)

(assert (=> d!79707 (=> res!316874 e!302096)))

(assert (=> d!79707 (= res!316874 (bvsge #b00000000000000000000000000000000 (size!16269 a!3235)))))

(assert (=> d!79707 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302096)))

(declare-fun b!517670 () Bool)

(declare-fun e!302097 () Bool)

(assert (=> b!517670 (= e!302096 e!302097)))

(declare-fun c!60692 () Bool)

(assert (=> b!517670 (= c!60692 (validKeyInArray!0 (select (arr!15905 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517671 () Bool)

(declare-fun e!302098 () Bool)

(assert (=> b!517671 (= e!302097 e!302098)))

(declare-fun lt!237022 () (_ BitVec 64))

(assert (=> b!517671 (= lt!237022 (select (arr!15905 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237023 () Unit!16008)

(assert (=> b!517671 (= lt!237023 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237022 #b00000000000000000000000000000000))))

(assert (=> b!517671 (arrayContainsKey!0 a!3235 lt!237022 #b00000000000000000000000000000000)))

(declare-fun lt!237021 () Unit!16008)

(assert (=> b!517671 (= lt!237021 lt!237023)))

(declare-fun res!316873 () Bool)

(assert (=> b!517671 (= res!316873 (= (seekEntryOrOpen!0 (select (arr!15905 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4379 #b00000000000000000000000000000000)))))

(assert (=> b!517671 (=> (not res!316873) (not e!302098))))

(declare-fun b!517672 () Bool)

(declare-fun call!31697 () Bool)

(assert (=> b!517672 (= e!302097 call!31697)))

(declare-fun bm!31694 () Bool)

(assert (=> bm!31694 (= call!31697 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!517673 () Bool)

(assert (=> b!517673 (= e!302098 call!31697)))

(assert (= (and d!79707 (not res!316874)) b!517670))

(assert (= (and b!517670 c!60692) b!517671))

(assert (= (and b!517670 (not c!60692)) b!517672))

(assert (= (and b!517671 res!316873) b!517673))

(assert (= (or b!517673 b!517672) bm!31694))

(assert (=> b!517670 m!498925))

(assert (=> b!517670 m!498925))

(declare-fun m!499045 () Bool)

(assert (=> b!517670 m!499045))

(assert (=> b!517671 m!498925))

(declare-fun m!499047 () Bool)

(assert (=> b!517671 m!499047))

(declare-fun m!499049 () Bool)

(assert (=> b!517671 m!499049))

(assert (=> b!517671 m!498925))

(declare-fun m!499051 () Bool)

(assert (=> b!517671 m!499051))

(declare-fun m!499053 () Bool)

(assert (=> bm!31694 m!499053))

(assert (=> b!517420 d!79707))

(declare-fun d!79709 () Bool)

(declare-fun lt!237032 () SeekEntryResult!4379)

(assert (=> d!79709 (and (or (is-Undefined!4379 lt!237032) (not (is-Found!4379 lt!237032)) (and (bvsge (index!19705 lt!237032) #b00000000000000000000000000000000) (bvslt (index!19705 lt!237032) (size!16269 a!3235)))) (or (is-Undefined!4379 lt!237032) (is-Found!4379 lt!237032) (not (is-MissingZero!4379 lt!237032)) (and (bvsge (index!19704 lt!237032) #b00000000000000000000000000000000) (bvslt (index!19704 lt!237032) (size!16269 a!3235)))) (or (is-Undefined!4379 lt!237032) (is-Found!4379 lt!237032) (is-MissingZero!4379 lt!237032) (not (is-MissingVacant!4379 lt!237032)) (and (bvsge (index!19707 lt!237032) #b00000000000000000000000000000000) (bvslt (index!19707 lt!237032) (size!16269 a!3235)))) (or (is-Undefined!4379 lt!237032) (ite (is-Found!4379 lt!237032) (= (select (arr!15905 a!3235) (index!19705 lt!237032)) k!2280) (ite (is-MissingZero!4379 lt!237032) (= (select (arr!15905 a!3235) (index!19704 lt!237032)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4379 lt!237032) (= (select (arr!15905 a!3235) (index!19707 lt!237032)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302106 () SeekEntryResult!4379)

(assert (=> d!79709 (= lt!237032 e!302106)))

(declare-fun c!60701 () Bool)

(declare-fun lt!237031 () SeekEntryResult!4379)

(assert (=> d!79709 (= c!60701 (and (is-Intermediate!4379 lt!237031) (undefined!5191 lt!237031)))))

(assert (=> d!79709 (= lt!237031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79709 (validMask!0 mask!3524)))

(assert (=> d!79709 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237032)))

(declare-fun b!517686 () Bool)

(assert (=> b!517686 (= e!302106 Undefined!4379)))

(declare-fun b!517687 () Bool)

(declare-fun c!60700 () Bool)

(declare-fun lt!237030 () (_ BitVec 64))

(assert (=> b!517687 (= c!60700 (= lt!237030 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302105 () SeekEntryResult!4379)

(declare-fun e!302107 () SeekEntryResult!4379)

(assert (=> b!517687 (= e!302105 e!302107)))

(declare-fun b!517688 () Bool)

(assert (=> b!517688 (= e!302107 (seekKeyOrZeroReturnVacant!0 (x!48693 lt!237031) (index!19706 lt!237031) (index!19706 lt!237031) k!2280 a!3235 mask!3524))))

(declare-fun b!517689 () Bool)

(assert (=> b!517689 (= e!302105 (Found!4379 (index!19706 lt!237031)))))

(declare-fun b!517690 () Bool)

(assert (=> b!517690 (= e!302107 (MissingZero!4379 (index!19706 lt!237031)))))

(declare-fun b!517691 () Bool)

(assert (=> b!517691 (= e!302106 e!302105)))

(assert (=> b!517691 (= lt!237030 (select (arr!15905 a!3235) (index!19706 lt!237031)))))

(declare-fun c!60699 () Bool)

(assert (=> b!517691 (= c!60699 (= lt!237030 k!2280))))

(assert (= (and d!79709 c!60701) b!517686))

(assert (= (and d!79709 (not c!60701)) b!517691))

(assert (= (and b!517691 c!60699) b!517689))

(assert (= (and b!517691 (not c!60699)) b!517687))

(assert (= (and b!517687 c!60700) b!517690))

(assert (= (and b!517687 (not c!60700)) b!517688))

(declare-fun m!499055 () Bool)

(assert (=> d!79709 m!499055))

(assert (=> d!79709 m!498885))

(declare-fun m!499057 () Bool)

(assert (=> d!79709 m!499057))

(declare-fun m!499059 () Bool)

(assert (=> d!79709 m!499059))

(declare-fun m!499061 () Bool)

(assert (=> d!79709 m!499061))

(assert (=> d!79709 m!499059))

(declare-fun m!499063 () Bool)

(assert (=> d!79709 m!499063))

(declare-fun m!499065 () Bool)

(assert (=> b!517688 m!499065))

(declare-fun m!499067 () Bool)

(assert (=> b!517691 m!499067))

(assert (=> b!517426 d!79709))

(declare-fun b!517708 () Bool)

(declare-fun e!302122 () Bool)

(declare-fun e!302121 () Bool)

(assert (=> b!517708 (= e!302122 e!302121)))

(declare-fun c!60707 () Bool)

(assert (=> b!517708 (= c!60707 (validKeyInArray!0 (select (arr!15905 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517709 () Bool)

(declare-fun call!31700 () Bool)

(assert (=> b!517709 (= e!302121 call!31700)))

(declare-fun b!517710 () Bool)

(declare-fun e!302119 () Bool)

(declare-fun contains!2754 (List!10116 (_ BitVec 64)) Bool)

(assert (=> b!517710 (= e!302119 (contains!2754 Nil!10113 (select (arr!15905 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31697 () Bool)

(assert (=> bm!31697 (= call!31700 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60707 (Cons!10112 (select (arr!15905 a!3235) #b00000000000000000000000000000000) Nil!10113) Nil!10113)))))

(declare-fun d!79711 () Bool)

(declare-fun res!316882 () Bool)

(declare-fun e!302120 () Bool)

(assert (=> d!79711 (=> res!316882 e!302120)))

(assert (=> d!79711 (= res!316882 (bvsge #b00000000000000000000000000000000 (size!16269 a!3235)))))

(assert (=> d!79711 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10113) e!302120)))

(declare-fun b!517711 () Bool)

(assert (=> b!517711 (= e!302120 e!302122)))

(declare-fun res!316881 () Bool)

(assert (=> b!517711 (=> (not res!316881) (not e!302122))))

(assert (=> b!517711 (= res!316881 (not e!302119))))

(declare-fun res!316883 () Bool)

(assert (=> b!517711 (=> (not res!316883) (not e!302119))))

(assert (=> b!517711 (= res!316883 (validKeyInArray!0 (select (arr!15905 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517712 () Bool)

(assert (=> b!517712 (= e!302121 call!31700)))

(assert (= (and d!79711 (not res!316882)) b!517711))

(assert (= (and b!517711 res!316883) b!517710))

(assert (= (and b!517711 res!316881) b!517708))

(assert (= (and b!517708 c!60707) b!517709))

(assert (= (and b!517708 (not c!60707)) b!517712))

(assert (= (or b!517709 b!517712) bm!31697))

(assert (=> b!517708 m!498925))

(assert (=> b!517708 m!498925))

(assert (=> b!517708 m!499045))

(assert (=> b!517710 m!498925))

(assert (=> b!517710 m!498925))

(declare-fun m!499081 () Bool)

(assert (=> b!517710 m!499081))

(assert (=> bm!31697 m!498925))

(declare-fun m!499083 () Bool)

(assert (=> bm!31697 m!499083))

(assert (=> b!517711 m!498925))

(assert (=> b!517711 m!498925))

(assert (=> b!517711 m!499045))

(assert (=> b!517421 d!79711))

(declare-fun d!79717 () Bool)

(assert (=> d!79717 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46928 d!79717))

(declare-fun d!79723 () Bool)

(assert (=> d!79723 (= (array_inv!11679 a!3235) (bvsge (size!16269 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46928 d!79723))

(declare-fun d!79725 () Bool)

(assert (=> d!79725 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!517417 d!79725))

(push 1)

