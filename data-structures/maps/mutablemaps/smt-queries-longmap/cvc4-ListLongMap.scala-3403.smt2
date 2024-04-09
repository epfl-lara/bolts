; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47090 () Bool)

(assert start!47090)

(declare-fun b!518689 () Bool)

(declare-fun e!302648 () Bool)

(declare-datatypes ((array!33128 0))(
  ( (array!33129 (arr!15923 (Array (_ BitVec 32) (_ BitVec 64))) (size!16287 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33128)

(declare-datatypes ((SeekEntryResult!4397 0))(
  ( (MissingZero!4397 (index!19779 (_ BitVec 32))) (Found!4397 (index!19780 (_ BitVec 32))) (Intermediate!4397 (undefined!5209 Bool) (index!19781 (_ BitVec 32)) (x!48774 (_ BitVec 32))) (Undefined!4397) (MissingVacant!4397 (index!19782 (_ BitVec 32))) )
))
(declare-fun lt!237546 () SeekEntryResult!4397)

(assert (=> b!518689 (= e!302648 (or (= (select (arr!15923 a!3235) (index!19781 lt!237546)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!19781 lt!237546) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237546) (size!16287 a!3235)))))))

(declare-datatypes ((Unit!16054 0))(
  ( (Unit!16055) )
))
(declare-fun lt!237544 () Unit!16054)

(declare-fun e!302649 () Unit!16054)

(assert (=> b!518689 (= lt!237544 e!302649)))

(declare-fun c!60830 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!518689 (= c!60830 (= (select (arr!15923 a!3235) (index!19781 lt!237546)) (select (arr!15923 a!3235) j!176)))))

(assert (=> b!518689 (and (bvslt (x!48774 lt!237546) #b01111111111111111111111111111110) (or (= (select (arr!15923 a!3235) (index!19781 lt!237546)) (select (arr!15923 a!3235) j!176)) (= (select (arr!15923 a!3235) (index!19781 lt!237546)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15923 a!3235) (index!19781 lt!237546)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518691 () Bool)

(declare-fun res!317619 () Bool)

(declare-fun e!302647 () Bool)

(assert (=> b!518691 (=> (not res!317619) (not e!302647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518691 (= res!317619 (validKeyInArray!0 (select (arr!15923 a!3235) j!176)))))

(declare-fun b!518692 () Bool)

(declare-fun Unit!16056 () Unit!16054)

(assert (=> b!518692 (= e!302649 Unit!16056)))

(declare-fun b!518693 () Bool)

(declare-fun res!317620 () Bool)

(assert (=> b!518693 (=> (not res!317620) (not e!302647))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!518693 (= res!317620 (validKeyInArray!0 k!2280))))

(declare-fun b!518694 () Bool)

(declare-fun res!317625 () Bool)

(declare-fun e!302646 () Bool)

(assert (=> b!518694 (=> (not res!317625) (not e!302646))))

(declare-datatypes ((List!10134 0))(
  ( (Nil!10131) (Cons!10130 (h!11040 (_ BitVec 64)) (t!16370 List!10134)) )
))
(declare-fun arrayNoDuplicates!0 (array!33128 (_ BitVec 32) List!10134) Bool)

(assert (=> b!518694 (= res!317625 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10131))))

(declare-fun b!518695 () Bool)

(declare-fun res!317628 () Bool)

(assert (=> b!518695 (=> (not res!317628) (not e!302647))))

(declare-fun arrayContainsKey!0 (array!33128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518695 (= res!317628 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518696 () Bool)

(assert (=> b!518696 (= e!302647 e!302646)))

(declare-fun res!317629 () Bool)

(assert (=> b!518696 (=> (not res!317629) (not e!302646))))

(declare-fun lt!237548 () SeekEntryResult!4397)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518696 (= res!317629 (or (= lt!237548 (MissingZero!4397 i!1204)) (= lt!237548 (MissingVacant!4397 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33128 (_ BitVec 32)) SeekEntryResult!4397)

(assert (=> b!518696 (= lt!237548 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!302645 () Bool)

(declare-fun b!518697 () Bool)

(assert (=> b!518697 (= e!302645 (= (seekEntryOrOpen!0 (select (arr!15923 a!3235) j!176) a!3235 mask!3524) (Found!4397 j!176)))))

(declare-fun b!518698 () Bool)

(declare-fun res!317627 () Bool)

(assert (=> b!518698 (=> res!317627 e!302648)))

(assert (=> b!518698 (= res!317627 (or (undefined!5209 lt!237546) (not (is-Intermediate!4397 lt!237546))))))

(declare-fun b!518699 () Bool)

(declare-fun e!302650 () Bool)

(assert (=> b!518699 (= e!302650 false)))

(declare-fun b!518700 () Bool)

(declare-fun res!317623 () Bool)

(assert (=> b!518700 (=> (not res!317623) (not e!302646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33128 (_ BitVec 32)) Bool)

(assert (=> b!518700 (= res!317623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!317624 () Bool)

(assert (=> start!47090 (=> (not res!317624) (not e!302647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47090 (= res!317624 (validMask!0 mask!3524))))

(assert (=> start!47090 e!302647))

(assert (=> start!47090 true))

(declare-fun array_inv!11697 (array!33128) Bool)

(assert (=> start!47090 (array_inv!11697 a!3235)))

(declare-fun b!518690 () Bool)

(declare-fun Unit!16057 () Unit!16054)

(assert (=> b!518690 (= e!302649 Unit!16057)))

(declare-fun lt!237549 () (_ BitVec 32))

(declare-fun lt!237543 () Unit!16054)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33128 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16054)

(assert (=> b!518690 (= lt!237543 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237549 #b00000000000000000000000000000000 (index!19781 lt!237546) (x!48774 lt!237546) mask!3524))))

(declare-fun lt!237551 () array!33128)

(declare-fun res!317626 () Bool)

(declare-fun lt!237550 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33128 (_ BitVec 32)) SeekEntryResult!4397)

(assert (=> b!518690 (= res!317626 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237549 lt!237550 lt!237551 mask!3524) (Intermediate!4397 false (index!19781 lt!237546) (x!48774 lt!237546))))))

(assert (=> b!518690 (=> (not res!317626) (not e!302650))))

(assert (=> b!518690 e!302650))

(declare-fun b!518701 () Bool)

(assert (=> b!518701 (= e!302646 (not e!302648))))

(declare-fun res!317621 () Bool)

(assert (=> b!518701 (=> res!317621 e!302648)))

(declare-fun lt!237547 () (_ BitVec 32))

(assert (=> b!518701 (= res!317621 (= lt!237546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237547 lt!237550 lt!237551 mask!3524)))))

(assert (=> b!518701 (= lt!237546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237549 (select (arr!15923 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518701 (= lt!237547 (toIndex!0 lt!237550 mask!3524))))

(assert (=> b!518701 (= lt!237550 (select (store (arr!15923 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!518701 (= lt!237549 (toIndex!0 (select (arr!15923 a!3235) j!176) mask!3524))))

(assert (=> b!518701 (= lt!237551 (array!33129 (store (arr!15923 a!3235) i!1204 k!2280) (size!16287 a!3235)))))

(assert (=> b!518701 e!302645))

(declare-fun res!317630 () Bool)

(assert (=> b!518701 (=> (not res!317630) (not e!302645))))

(assert (=> b!518701 (= res!317630 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237545 () Unit!16054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16054)

(assert (=> b!518701 (= lt!237545 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518702 () Bool)

(declare-fun res!317622 () Bool)

(assert (=> b!518702 (=> (not res!317622) (not e!302647))))

(assert (=> b!518702 (= res!317622 (and (= (size!16287 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16287 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16287 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47090 res!317624) b!518702))

(assert (= (and b!518702 res!317622) b!518691))

(assert (= (and b!518691 res!317619) b!518693))

(assert (= (and b!518693 res!317620) b!518695))

(assert (= (and b!518695 res!317628) b!518696))

(assert (= (and b!518696 res!317629) b!518700))

(assert (= (and b!518700 res!317623) b!518694))

(assert (= (and b!518694 res!317625) b!518701))

(assert (= (and b!518701 res!317630) b!518697))

(assert (= (and b!518701 (not res!317621)) b!518698))

(assert (= (and b!518698 (not res!317627)) b!518689))

(assert (= (and b!518689 c!60830) b!518690))

(assert (= (and b!518689 (not c!60830)) b!518692))

(assert (= (and b!518690 res!317626) b!518699))

(declare-fun m!500011 () Bool)

(assert (=> b!518700 m!500011))

(declare-fun m!500013 () Bool)

(assert (=> b!518690 m!500013))

(declare-fun m!500015 () Bool)

(assert (=> b!518690 m!500015))

(declare-fun m!500017 () Bool)

(assert (=> b!518701 m!500017))

(declare-fun m!500019 () Bool)

(assert (=> b!518701 m!500019))

(declare-fun m!500021 () Bool)

(assert (=> b!518701 m!500021))

(declare-fun m!500023 () Bool)

(assert (=> b!518701 m!500023))

(assert (=> b!518701 m!500021))

(declare-fun m!500025 () Bool)

(assert (=> b!518701 m!500025))

(assert (=> b!518701 m!500021))

(declare-fun m!500027 () Bool)

(assert (=> b!518701 m!500027))

(declare-fun m!500029 () Bool)

(assert (=> b!518701 m!500029))

(declare-fun m!500031 () Bool)

(assert (=> b!518701 m!500031))

(declare-fun m!500033 () Bool)

(assert (=> b!518701 m!500033))

(declare-fun m!500035 () Bool)

(assert (=> b!518696 m!500035))

(assert (=> b!518697 m!500021))

(assert (=> b!518697 m!500021))

(declare-fun m!500037 () Bool)

(assert (=> b!518697 m!500037))

(declare-fun m!500039 () Bool)

(assert (=> b!518689 m!500039))

(assert (=> b!518689 m!500021))

(assert (=> b!518691 m!500021))

(assert (=> b!518691 m!500021))

(declare-fun m!500041 () Bool)

(assert (=> b!518691 m!500041))

(declare-fun m!500043 () Bool)

(assert (=> start!47090 m!500043))

(declare-fun m!500045 () Bool)

(assert (=> start!47090 m!500045))

(declare-fun m!500047 () Bool)

(assert (=> b!518695 m!500047))

(declare-fun m!500049 () Bool)

(assert (=> b!518694 m!500049))

(declare-fun m!500051 () Bool)

(assert (=> b!518693 m!500051))

(push 1)

(assert (not b!518693))

(assert (not b!518690))

(assert (not b!518700))

(assert (not b!518691))

(assert (not b!518701))

(assert (not b!518697))

(assert (not b!518696))

(assert (not b!518694))

(assert (not start!47090))

(assert (not b!518695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!518784 () Bool)

(declare-fun e!302707 () SeekEntryResult!4397)

(assert (=> b!518784 (= e!302707 Undefined!4397)))

(declare-fun b!518785 () Bool)

(declare-fun e!302706 () SeekEntryResult!4397)

(assert (=> b!518785 (= e!302707 e!302706)))

(declare-fun lt!237588 () (_ BitVec 64))

(declare-fun lt!237589 () SeekEntryResult!4397)

(assert (=> b!518785 (= lt!237588 (select (arr!15923 a!3235) (index!19781 lt!237589)))))

(declare-fun c!60858 () Bool)

(assert (=> b!518785 (= c!60858 (= lt!237588 (select (arr!15923 a!3235) j!176)))))

(declare-fun b!518786 () Bool)

(declare-fun c!60860 () Bool)

(assert (=> b!518786 (= c!60860 (= lt!237588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302705 () SeekEntryResult!4397)

(assert (=> b!518786 (= e!302706 e!302705)))

(declare-fun b!518787 () Bool)

(assert (=> b!518787 (= e!302705 (MissingZero!4397 (index!19781 lt!237589)))))

(declare-fun d!79853 () Bool)

(declare-fun lt!237590 () SeekEntryResult!4397)

(assert (=> d!79853 (and (or (is-Undefined!4397 lt!237590) (not (is-Found!4397 lt!237590)) (and (bvsge (index!19780 lt!237590) #b00000000000000000000000000000000) (bvslt (index!19780 lt!237590) (size!16287 a!3235)))) (or (is-Undefined!4397 lt!237590) (is-Found!4397 lt!237590) (not (is-MissingZero!4397 lt!237590)) (and (bvsge (index!19779 lt!237590) #b00000000000000000000000000000000) (bvslt (index!19779 lt!237590) (size!16287 a!3235)))) (or (is-Undefined!4397 lt!237590) (is-Found!4397 lt!237590) (is-MissingZero!4397 lt!237590) (not (is-MissingVacant!4397 lt!237590)) (and (bvsge (index!19782 lt!237590) #b00000000000000000000000000000000) (bvslt (index!19782 lt!237590) (size!16287 a!3235)))) (or (is-Undefined!4397 lt!237590) (ite (is-Found!4397 lt!237590) (= (select (arr!15923 a!3235) (index!19780 lt!237590)) (select (arr!15923 a!3235) j!176)) (ite (is-MissingZero!4397 lt!237590) (= (select (arr!15923 a!3235) (index!19779 lt!237590)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4397 lt!237590) (= (select (arr!15923 a!3235) (index!19782 lt!237590)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79853 (= lt!237590 e!302707)))

(declare-fun c!60859 () Bool)

(assert (=> d!79853 (= c!60859 (and (is-Intermediate!4397 lt!237589) (undefined!5209 lt!237589)))))

(assert (=> d!79853 (= lt!237589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15923 a!3235) j!176) mask!3524) (select (arr!15923 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79853 (validMask!0 mask!3524)))

(assert (=> d!79853 (= (seekEntryOrOpen!0 (select (arr!15923 a!3235) j!176) a!3235 mask!3524) lt!237590)))

(declare-fun b!518788 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33128 (_ BitVec 32)) SeekEntryResult!4397)

(assert (=> b!518788 (= e!302705 (seekKeyOrZeroReturnVacant!0 (x!48774 lt!237589) (index!19781 lt!237589) (index!19781 lt!237589) (select (arr!15923 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!518789 () Bool)

(assert (=> b!518789 (= e!302706 (Found!4397 (index!19781 lt!237589)))))

(assert (= (and d!79853 c!60859) b!518784))

(assert (= (and d!79853 (not c!60859)) b!518785))

(assert (= (and b!518785 c!60858) b!518789))

(assert (= (and b!518785 (not c!60858)) b!518786))

(assert (= (and b!518786 c!60860) b!518787))

(assert (= (and b!518786 (not c!60860)) b!518788))

(declare-fun m!500109 () Bool)

(assert (=> b!518785 m!500109))

(declare-fun m!500111 () Bool)

(assert (=> d!79853 m!500111))

(assert (=> d!79853 m!500023))

(assert (=> d!79853 m!500021))

(declare-fun m!500113 () Bool)

(assert (=> d!79853 m!500113))

(assert (=> d!79853 m!500021))

(assert (=> d!79853 m!500023))

(assert (=> d!79853 m!500043))

(declare-fun m!500115 () Bool)

(assert (=> d!79853 m!500115))

(declare-fun m!500117 () Bool)

(assert (=> d!79853 m!500117))

(assert (=> b!518788 m!500021))

(declare-fun m!500119 () Bool)

(assert (=> b!518788 m!500119))

(assert (=> b!518697 d!79853))

(declare-fun d!79867 () Bool)

(assert (=> d!79867 (= (validKeyInArray!0 (select (arr!15923 a!3235) j!176)) (and (not (= (select (arr!15923 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15923 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518691 d!79867))

(declare-fun d!79869 () Bool)

(assert (=> d!79869 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518693 d!79869))

(declare-fun b!518825 () Bool)

(declare-fun e!302734 () Bool)

(declare-fun e!302732 () Bool)

(assert (=> b!518825 (= e!302734 e!302732)))

(declare-fun c!60872 () Bool)

(assert (=> b!518825 (= c!60872 (validKeyInArray!0 (select (arr!15923 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518826 () Bool)

(declare-fun e!302733 () Bool)

(declare-fun call!31733 () Bool)

(assert (=> b!518826 (= e!302733 call!31733)))

(declare-fun bm!31730 () Bool)

(assert (=> bm!31730 (= call!31733 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79871 () Bool)

(declare-fun res!317672 () Bool)

(assert (=> d!79871 (=> res!317672 e!302734)))

(assert (=> d!79871 (= res!317672 (bvsge #b00000000000000000000000000000000 (size!16287 a!3235)))))

(assert (=> d!79871 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302734)))

(declare-fun b!518827 () Bool)

(assert (=> b!518827 (= e!302732 e!302733)))

(declare-fun lt!237611 () (_ BitVec 64))

(assert (=> b!518827 (= lt!237611 (select (arr!15923 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237610 () Unit!16054)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33128 (_ BitVec 64) (_ BitVec 32)) Unit!16054)

(assert (=> b!518827 (= lt!237610 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237611 #b00000000000000000000000000000000))))

(assert (=> b!518827 (arrayContainsKey!0 a!3235 lt!237611 #b00000000000000000000000000000000)))

(declare-fun lt!237609 () Unit!16054)

(assert (=> b!518827 (= lt!237609 lt!237610)))

(declare-fun res!317671 () Bool)

(assert (=> b!518827 (= res!317671 (= (seekEntryOrOpen!0 (select (arr!15923 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4397 #b00000000000000000000000000000000)))))

(assert (=> b!518827 (=> (not res!317671) (not e!302733))))

(declare-fun b!518828 () Bool)

(assert (=> b!518828 (= e!302732 call!31733)))

(assert (= (and d!79871 (not res!317672)) b!518825))

(assert (= (and b!518825 c!60872) b!518827))

(assert (= (and b!518825 (not c!60872)) b!518828))

(assert (= (and b!518827 res!317671) b!518826))

(assert (= (or b!518826 b!518828) bm!31730))

(declare-fun m!500141 () Bool)

(assert (=> b!518825 m!500141))

(assert (=> b!518825 m!500141))

(declare-fun m!500143 () Bool)

(assert (=> b!518825 m!500143))

(declare-fun m!500145 () Bool)

(assert (=> bm!31730 m!500145))

(assert (=> b!518827 m!500141))

(declare-fun m!500147 () Bool)

(assert (=> b!518827 m!500147))

(declare-fun m!500149 () Bool)

(assert (=> b!518827 m!500149))

(assert (=> b!518827 m!500141))

(declare-fun m!500151 () Bool)

(assert (=> b!518827 m!500151))

(assert (=> b!518700 d!79871))

(declare-fun b!518860 () Bool)

(declare-fun e!302760 () Bool)

(declare-fun call!31739 () Bool)

(assert (=> b!518860 (= e!302760 call!31739)))

(declare-fun b!518861 () Bool)

(declare-fun e!302758 () Bool)

(declare-fun e!302761 () Bool)

(assert (=> b!518861 (= e!302758 e!302761)))

(declare-fun res!317688 () Bool)

(assert (=> b!518861 (=> (not res!317688) (not e!302761))))

(declare-fun e!302759 () Bool)

(assert (=> b!518861 (= res!317688 (not e!302759))))

(declare-fun res!317689 () Bool)

(assert (=> b!518861 (=> (not res!317689) (not e!302759))))

(assert (=> b!518861 (= res!317689 (validKeyInArray!0 (select (arr!15923 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518862 () Bool)

(declare-fun contains!2759 (List!10134 (_ BitVec 64)) Bool)

(assert (=> b!518862 (= e!302759 (contains!2759 Nil!10131 (select (arr!15923 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79879 () Bool)

(declare-fun res!317690 () Bool)

(assert (=> d!79879 (=> res!317690 e!302758)))

(assert (=> d!79879 (= res!317690 (bvsge #b00000000000000000000000000000000 (size!16287 a!3235)))))

(assert (=> d!79879 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10131) e!302758)))

(declare-fun bm!31736 () Bool)

(declare-fun c!60881 () Bool)

(assert (=> bm!31736 (= call!31739 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60881 (Cons!10130 (select (arr!15923 a!3235) #b00000000000000000000000000000000) Nil!10131) Nil!10131)))))

(declare-fun b!518863 () Bool)

(assert (=> b!518863 (= e!302760 call!31739)))

(declare-fun b!518864 () Bool)

(assert (=> b!518864 (= e!302761 e!302760)))

(assert (=> b!518864 (= c!60881 (validKeyInArray!0 (select (arr!15923 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79879 (not res!317690)) b!518861))

(assert (= (and b!518861 res!317689) b!518862))

(assert (= (and b!518861 res!317688) b!518864))

(assert (= (and b!518864 c!60881) b!518863))

(assert (= (and b!518864 (not c!60881)) b!518860))

(assert (= (or b!518863 b!518860) bm!31736))

(assert (=> b!518861 m!500141))

(assert (=> b!518861 m!500141))

(assert (=> b!518861 m!500143))

(assert (=> b!518862 m!500141))

(assert (=> b!518862 m!500141))

(declare-fun m!500157 () Bool)

(assert (=> b!518862 m!500157))

(assert (=> bm!31736 m!500141))

(declare-fun m!500163 () Bool)

(assert (=> bm!31736 m!500163))

(assert (=> b!518864 m!500141))

(assert (=> b!518864 m!500141))

(assert (=> b!518864 m!500143))

(assert (=> b!518694 d!79879))

(declare-fun b!518936 () Bool)

(declare-fun lt!237649 () SeekEntryResult!4397)

(assert (=> b!518936 (and (bvsge (index!19781 lt!237649) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237649) (size!16287 lt!237551)))))

(declare-fun res!317719 () Bool)

(assert (=> b!518936 (= res!317719 (= (select (arr!15923 lt!237551) (index!19781 lt!237649)) lt!237550))))

(declare-fun e!302807 () Bool)

(assert (=> b!518936 (=> res!317719 e!302807)))

(declare-fun e!302804 () Bool)

(assert (=> b!518936 (= e!302804 e!302807)))

(declare-fun b!518937 () Bool)

(declare-fun e!302806 () SeekEntryResult!4397)

(assert (=> b!518937 (= e!302806 (Intermediate!4397 false lt!237547 #b00000000000000000000000000000000))))

(declare-fun b!518938 () Bool)

(declare-fun e!302803 () SeekEntryResult!4397)

(assert (=> b!518938 (= e!302803 (Intermediate!4397 true lt!237547 #b00000000000000000000000000000000))))

(declare-fun b!518939 () Bool)

(assert (=> b!518939 (and (bvsge (index!19781 lt!237649) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237649) (size!16287 lt!237551)))))

(declare-fun res!317720 () Bool)

(assert (=> b!518939 (= res!317720 (= (select (arr!15923 lt!237551) (index!19781 lt!237649)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518939 (=> res!317720 e!302807)))

(declare-fun d!79883 () Bool)

(declare-fun e!302805 () Bool)

(assert (=> d!79883 e!302805))

(declare-fun c!60906 () Bool)

(assert (=> d!79883 (= c!60906 (and (is-Intermediate!4397 lt!237649) (undefined!5209 lt!237649)))))

(assert (=> d!79883 (= lt!237649 e!302803)))

(declare-fun c!60907 () Bool)

(assert (=> d!79883 (= c!60907 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237650 () (_ BitVec 64))

(assert (=> d!79883 (= lt!237650 (select (arr!15923 lt!237551) lt!237547))))

(assert (=> d!79883 (validMask!0 mask!3524)))

(assert (=> d!79883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237547 lt!237550 lt!237551 mask!3524) lt!237649)))

(declare-fun b!518940 () Bool)

(assert (=> b!518940 (= e!302803 e!302806)))

(declare-fun c!60905 () Bool)

(assert (=> b!518940 (= c!60905 (or (= lt!237650 lt!237550) (= (bvadd lt!237650 lt!237650) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518941 () Bool)

(assert (=> b!518941 (= e!302805 e!302804)))

(declare-fun res!317718 () Bool)

(assert (=> b!518941 (= res!317718 (and (is-Intermediate!4397 lt!237649) (not (undefined!5209 lt!237649)) (bvslt (x!48774 lt!237649) #b01111111111111111111111111111110) (bvsge (x!48774 lt!237649) #b00000000000000000000000000000000) (bvsge (x!48774 lt!237649) #b00000000000000000000000000000000)))))

(assert (=> b!518941 (=> (not res!317718) (not e!302804))))

(declare-fun b!518942 () Bool)

(assert (=> b!518942 (and (bvsge (index!19781 lt!237649) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237649) (size!16287 lt!237551)))))

(assert (=> b!518942 (= e!302807 (= (select (arr!15923 lt!237551) (index!19781 lt!237649)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518943 () Bool)

(assert (=> b!518943 (= e!302805 (bvsge (x!48774 lt!237649) #b01111111111111111111111111111110))))

(declare-fun b!518944 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518944 (= e!302806 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237547 #b00000000000000000000000000000000 mask!3524) lt!237550 lt!237551 mask!3524))))

(assert (= (and d!79883 c!60907) b!518938))

(assert (= (and d!79883 (not c!60907)) b!518940))

(assert (= (and b!518940 c!60905) b!518937))

(assert (= (and b!518940 (not c!60905)) b!518944))

(assert (= (and d!79883 c!60906) b!518943))

(assert (= (and d!79883 (not c!60906)) b!518941))

(assert (= (and b!518941 res!317718) b!518936))

(assert (= (and b!518936 (not res!317719)) b!518939))

(assert (= (and b!518939 (not res!317720)) b!518942))

(declare-fun m!500207 () Bool)

(assert (=> b!518944 m!500207))

(assert (=> b!518944 m!500207))

(declare-fun m!500209 () Bool)

(assert (=> b!518944 m!500209))

(declare-fun m!500211 () Bool)

(assert (=> d!79883 m!500211))

(assert (=> d!79883 m!500043))

(declare-fun m!500213 () Bool)

(assert (=> b!518939 m!500213))

(assert (=> b!518942 m!500213))

(assert (=> b!518936 m!500213))

(assert (=> b!518701 d!79883))

(declare-fun d!79907 () Bool)

(declare-fun lt!237659 () (_ BitVec 32))

(declare-fun lt!237658 () (_ BitVec 32))

(assert (=> d!79907 (= lt!237659 (bvmul (bvxor lt!237658 (bvlshr lt!237658 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79907 (= lt!237658 ((_ extract 31 0) (bvand (bvxor lt!237550 (bvlshr lt!237550 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79907 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317721 (let ((h!11043 ((_ extract 31 0) (bvand (bvxor lt!237550 (bvlshr lt!237550 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48780 (bvmul (bvxor h!11043 (bvlshr h!11043 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48780 (bvlshr x!48780 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317721 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317721 #b00000000000000000000000000000000))))))

(assert (=> d!79907 (= (toIndex!0 lt!237550 mask!3524) (bvand (bvxor lt!237659 (bvlshr lt!237659 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518701 d!79907))

(declare-fun d!79909 () Bool)

(declare-fun lt!237661 () (_ BitVec 32))

(declare-fun lt!237660 () (_ BitVec 32))

(assert (=> d!79909 (= lt!237661 (bvmul (bvxor lt!237660 (bvlshr lt!237660 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79909 (= lt!237660 ((_ extract 31 0) (bvand (bvxor (select (arr!15923 a!3235) j!176) (bvlshr (select (arr!15923 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79909 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317721 (let ((h!11043 ((_ extract 31 0) (bvand (bvxor (select (arr!15923 a!3235) j!176) (bvlshr (select (arr!15923 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48780 (bvmul (bvxor h!11043 (bvlshr h!11043 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48780 (bvlshr x!48780 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317721 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317721 #b00000000000000000000000000000000))))))

(assert (=> d!79909 (= (toIndex!0 (select (arr!15923 a!3235) j!176) mask!3524) (bvand (bvxor lt!237661 (bvlshr lt!237661 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518701 d!79909))

(declare-fun b!518945 () Bool)

(declare-fun e!302810 () Bool)

(declare-fun e!302808 () Bool)

(assert (=> b!518945 (= e!302810 e!302808)))

(declare-fun c!60908 () Bool)

(assert (=> b!518945 (= c!60908 (validKeyInArray!0 (select (arr!15923 a!3235) j!176)))))

(declare-fun b!518946 () Bool)

(declare-fun e!302809 () Bool)

(declare-fun call!31742 () Bool)

(assert (=> b!518946 (= e!302809 call!31742)))

(declare-fun bm!31739 () Bool)

(assert (=> bm!31739 (= call!31742 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79911 () Bool)

(declare-fun res!317723 () Bool)

(assert (=> d!79911 (=> res!317723 e!302810)))

(assert (=> d!79911 (= res!317723 (bvsge j!176 (size!16287 a!3235)))))

(assert (=> d!79911 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302810)))

(declare-fun b!518947 () Bool)

(assert (=> b!518947 (= e!302808 e!302809)))

(declare-fun lt!237664 () (_ BitVec 64))

(assert (=> b!518947 (= lt!237664 (select (arr!15923 a!3235) j!176))))

(declare-fun lt!237663 () Unit!16054)

(assert (=> b!518947 (= lt!237663 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237664 j!176))))

(assert (=> b!518947 (arrayContainsKey!0 a!3235 lt!237664 #b00000000000000000000000000000000)))

(declare-fun lt!237662 () Unit!16054)

(assert (=> b!518947 (= lt!237662 lt!237663)))

(declare-fun res!317722 () Bool)

(assert (=> b!518947 (= res!317722 (= (seekEntryOrOpen!0 (select (arr!15923 a!3235) j!176) a!3235 mask!3524) (Found!4397 j!176)))))

(assert (=> b!518947 (=> (not res!317722) (not e!302809))))

(declare-fun b!518948 () Bool)

(assert (=> b!518948 (= e!302808 call!31742)))

(assert (= (and d!79911 (not res!317723)) b!518945))

(assert (= (and b!518945 c!60908) b!518947))

(assert (= (and b!518945 (not c!60908)) b!518948))

(assert (= (and b!518947 res!317722) b!518946))

(assert (= (or b!518946 b!518948) bm!31739))

(assert (=> b!518945 m!500021))

(assert (=> b!518945 m!500021))

(assert (=> b!518945 m!500041))

(declare-fun m!500217 () Bool)

(assert (=> bm!31739 m!500217))

(assert (=> b!518947 m!500021))

(declare-fun m!500219 () Bool)

(assert (=> b!518947 m!500219))

(declare-fun m!500221 () Bool)

(assert (=> b!518947 m!500221))

(assert (=> b!518947 m!500021))

(assert (=> b!518947 m!500037))

(assert (=> b!518701 d!79911))

(declare-fun b!518949 () Bool)

(declare-fun lt!237665 () SeekEntryResult!4397)

(assert (=> b!518949 (and (bvsge (index!19781 lt!237665) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237665) (size!16287 a!3235)))))

(declare-fun res!317725 () Bool)

(assert (=> b!518949 (= res!317725 (= (select (arr!15923 a!3235) (index!19781 lt!237665)) (select (arr!15923 a!3235) j!176)))))

(declare-fun e!302815 () Bool)

(assert (=> b!518949 (=> res!317725 e!302815)))

(declare-fun e!302812 () Bool)

(assert (=> b!518949 (= e!302812 e!302815)))

(declare-fun b!518950 () Bool)

(declare-fun e!302814 () SeekEntryResult!4397)

(assert (=> b!518950 (= e!302814 (Intermediate!4397 false lt!237549 #b00000000000000000000000000000000))))

(declare-fun b!518951 () Bool)

(declare-fun e!302811 () SeekEntryResult!4397)

(assert (=> b!518951 (= e!302811 (Intermediate!4397 true lt!237549 #b00000000000000000000000000000000))))

(declare-fun b!518952 () Bool)

(assert (=> b!518952 (and (bvsge (index!19781 lt!237665) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237665) (size!16287 a!3235)))))

(declare-fun res!317726 () Bool)

(assert (=> b!518952 (= res!317726 (= (select (arr!15923 a!3235) (index!19781 lt!237665)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518952 (=> res!317726 e!302815)))

(declare-fun d!79913 () Bool)

(declare-fun e!302813 () Bool)

(assert (=> d!79913 e!302813))

(declare-fun c!60910 () Bool)

(assert (=> d!79913 (= c!60910 (and (is-Intermediate!4397 lt!237665) (undefined!5209 lt!237665)))))

(assert (=> d!79913 (= lt!237665 e!302811)))

(declare-fun c!60911 () Bool)

(assert (=> d!79913 (= c!60911 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237666 () (_ BitVec 64))

(assert (=> d!79913 (= lt!237666 (select (arr!15923 a!3235) lt!237549))))

(assert (=> d!79913 (validMask!0 mask!3524)))

(assert (=> d!79913 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237549 (select (arr!15923 a!3235) j!176) a!3235 mask!3524) lt!237665)))

(declare-fun b!518953 () Bool)

(assert (=> b!518953 (= e!302811 e!302814)))

(declare-fun c!60909 () Bool)

(assert (=> b!518953 (= c!60909 (or (= lt!237666 (select (arr!15923 a!3235) j!176)) (= (bvadd lt!237666 lt!237666) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518954 () Bool)

(assert (=> b!518954 (= e!302813 e!302812)))

(declare-fun res!317724 () Bool)

(assert (=> b!518954 (= res!317724 (and (is-Intermediate!4397 lt!237665) (not (undefined!5209 lt!237665)) (bvslt (x!48774 lt!237665) #b01111111111111111111111111111110) (bvsge (x!48774 lt!237665) #b00000000000000000000000000000000) (bvsge (x!48774 lt!237665) #b00000000000000000000000000000000)))))

(assert (=> b!518954 (=> (not res!317724) (not e!302812))))

(declare-fun b!518955 () Bool)

(assert (=> b!518955 (and (bvsge (index!19781 lt!237665) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237665) (size!16287 a!3235)))))

(assert (=> b!518955 (= e!302815 (= (select (arr!15923 a!3235) (index!19781 lt!237665)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518956 () Bool)

(assert (=> b!518956 (= e!302813 (bvsge (x!48774 lt!237665) #b01111111111111111111111111111110))))

(declare-fun b!518957 () Bool)

(assert (=> b!518957 (= e!302814 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237549 #b00000000000000000000000000000000 mask!3524) (select (arr!15923 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79913 c!60911) b!518951))

(assert (= (and d!79913 (not c!60911)) b!518953))

(assert (= (and b!518953 c!60909) b!518950))

(assert (= (and b!518953 (not c!60909)) b!518957))

(assert (= (and d!79913 c!60910) b!518956))

(assert (= (and d!79913 (not c!60910)) b!518954))

(assert (= (and b!518954 res!317724) b!518949))

(assert (= (and b!518949 (not res!317725)) b!518952))

(assert (= (and b!518952 (not res!317726)) b!518955))

(declare-fun m!500223 () Bool)

(assert (=> b!518957 m!500223))

(assert (=> b!518957 m!500223))

(assert (=> b!518957 m!500021))

(declare-fun m!500225 () Bool)

(assert (=> b!518957 m!500225))

(declare-fun m!500227 () Bool)

(assert (=> d!79913 m!500227))

(assert (=> d!79913 m!500043))

(declare-fun m!500229 () Bool)

(assert (=> b!518952 m!500229))

(assert (=> b!518955 m!500229))

(assert (=> b!518949 m!500229))

(assert (=> b!518701 d!79913))

(declare-fun d!79915 () Bool)

(assert (=> d!79915 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237673 () Unit!16054)

(declare-fun choose!38 (array!33128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16054)

(assert (=> d!79915 (= lt!237673 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79915 (validMask!0 mask!3524)))

(assert (=> d!79915 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237673)))

(declare-fun bs!16363 () Bool)

(assert (= bs!16363 d!79915))

(assert (=> bs!16363 m!500025))

(declare-fun m!500231 () Bool)

(assert (=> bs!16363 m!500231))

(assert (=> bs!16363 m!500043))

(assert (=> b!518701 d!79915))

(declare-fun d!79917 () Bool)

(assert (=> d!79917 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47090 d!79917))

(declare-fun d!79923 () Bool)

(assert (=> d!79923 (= (array_inv!11697 a!3235) (bvsge (size!16287 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47090 d!79923))

(declare-fun b!518994 () Bool)

(declare-fun e!302838 () SeekEntryResult!4397)

(assert (=> b!518994 (= e!302838 Undefined!4397)))

(declare-fun b!518995 () Bool)

(declare-fun e!302837 () SeekEntryResult!4397)

(assert (=> b!518995 (= e!302838 e!302837)))

(declare-fun lt!237683 () (_ BitVec 64))

(declare-fun lt!237684 () SeekEntryResult!4397)

(assert (=> b!518995 (= lt!237683 (select (arr!15923 a!3235) (index!19781 lt!237684)))))

(declare-fun c!60924 () Bool)

(assert (=> b!518995 (= c!60924 (= lt!237683 k!2280))))

(declare-fun b!518996 () Bool)

(declare-fun c!60926 () Bool)

(assert (=> b!518996 (= c!60926 (= lt!237683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302836 () SeekEntryResult!4397)

(assert (=> b!518996 (= e!302837 e!302836)))

(declare-fun b!518997 () Bool)

(assert (=> b!518997 (= e!302836 (MissingZero!4397 (index!19781 lt!237684)))))

(declare-fun d!79927 () Bool)

(declare-fun lt!237685 () SeekEntryResult!4397)

(assert (=> d!79927 (and (or (is-Undefined!4397 lt!237685) (not (is-Found!4397 lt!237685)) (and (bvsge (index!19780 lt!237685) #b00000000000000000000000000000000) (bvslt (index!19780 lt!237685) (size!16287 a!3235)))) (or (is-Undefined!4397 lt!237685) (is-Found!4397 lt!237685) (not (is-MissingZero!4397 lt!237685)) (and (bvsge (index!19779 lt!237685) #b00000000000000000000000000000000) (bvslt (index!19779 lt!237685) (size!16287 a!3235)))) (or (is-Undefined!4397 lt!237685) (is-Found!4397 lt!237685) (is-MissingZero!4397 lt!237685) (not (is-MissingVacant!4397 lt!237685)) (and (bvsge (index!19782 lt!237685) #b00000000000000000000000000000000) (bvslt (index!19782 lt!237685) (size!16287 a!3235)))) (or (is-Undefined!4397 lt!237685) (ite (is-Found!4397 lt!237685) (= (select (arr!15923 a!3235) (index!19780 lt!237685)) k!2280) (ite (is-MissingZero!4397 lt!237685) (= (select (arr!15923 a!3235) (index!19779 lt!237685)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4397 lt!237685) (= (select (arr!15923 a!3235) (index!19782 lt!237685)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79927 (= lt!237685 e!302838)))

(declare-fun c!60925 () Bool)

(assert (=> d!79927 (= c!60925 (and (is-Intermediate!4397 lt!237684) (undefined!5209 lt!237684)))))

(assert (=> d!79927 (= lt!237684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79927 (validMask!0 mask!3524)))

(assert (=> d!79927 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237685)))

(declare-fun b!518998 () Bool)

(assert (=> b!518998 (= e!302836 (seekKeyOrZeroReturnVacant!0 (x!48774 lt!237684) (index!19781 lt!237684) (index!19781 lt!237684) k!2280 a!3235 mask!3524))))

(declare-fun b!518999 () Bool)

(assert (=> b!518999 (= e!302837 (Found!4397 (index!19781 lt!237684)))))

(assert (= (and d!79927 c!60925) b!518994))

(assert (= (and d!79927 (not c!60925)) b!518995))

(assert (= (and b!518995 c!60924) b!518999))

(assert (= (and b!518995 (not c!60924)) b!518996))

(assert (= (and b!518996 c!60926) b!518997))

(assert (= (and b!518996 (not c!60926)) b!518998))

(declare-fun m!500251 () Bool)

(assert (=> b!518995 m!500251))

(declare-fun m!500253 () Bool)

(assert (=> d!79927 m!500253))

(declare-fun m!500255 () Bool)

(assert (=> d!79927 m!500255))

(declare-fun m!500257 () Bool)

(assert (=> d!79927 m!500257))

(assert (=> d!79927 m!500255))

(assert (=> d!79927 m!500043))

(declare-fun m!500259 () Bool)

(assert (=> d!79927 m!500259))

(declare-fun m!500261 () Bool)

(assert (=> d!79927 m!500261))

(declare-fun m!500263 () Bool)

(assert (=> b!518998 m!500263))

(assert (=> b!518696 d!79927))

(declare-fun d!79931 () Bool)

(declare-fun res!317743 () Bool)

(declare-fun e!302843 () Bool)

(assert (=> d!79931 (=> res!317743 e!302843)))

(assert (=> d!79931 (= res!317743 (= (select (arr!15923 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79931 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!302843)))

(declare-fun b!519004 () Bool)

(declare-fun e!302844 () Bool)

(assert (=> b!519004 (= e!302843 e!302844)))

(declare-fun res!317744 () Bool)

(assert (=> b!519004 (=> (not res!317744) (not e!302844))))

(assert (=> b!519004 (= res!317744 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16287 a!3235)))))

(declare-fun b!519005 () Bool)

(assert (=> b!519005 (= e!302844 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79931 (not res!317743)) b!519004))

(assert (= (and b!519004 res!317744) b!519005))

(assert (=> d!79931 m!500141))

(declare-fun m!500265 () Bool)

(assert (=> b!519005 m!500265))

(assert (=> b!518695 d!79931))

(declare-fun d!79933 () Bool)

(declare-fun e!302855 () Bool)

(assert (=> d!79933 e!302855))

(declare-fun res!317753 () Bool)

(assert (=> d!79933 (=> (not res!317753) (not e!302855))))

(assert (=> d!79933 (= res!317753 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16287 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16287 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16287 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16287 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16287 a!3235))))))

(declare-fun lt!237693 () Unit!16054)

(declare-fun choose!47 (array!33128 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16054)

(assert (=> d!79933 (= lt!237693 (choose!47 a!3235 i!1204 k!2280 j!176 lt!237549 #b00000000000000000000000000000000 (index!19781 lt!237546) (x!48774 lt!237546) mask!3524))))

(assert (=> d!79933 (validMask!0 mask!3524)))

(assert (=> d!79933 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237549 #b00000000000000000000000000000000 (index!19781 lt!237546) (x!48774 lt!237546) mask!3524) lt!237693)))

(declare-fun b!519020 () Bool)

(assert (=> b!519020 (= e!302855 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237549 (select (store (arr!15923 a!3235) i!1204 k!2280) j!176) (array!33129 (store (arr!15923 a!3235) i!1204 k!2280) (size!16287 a!3235)) mask!3524) (Intermediate!4397 false (index!19781 lt!237546) (x!48774 lt!237546))))))

(assert (= (and d!79933 res!317753) b!519020))

(declare-fun m!500277 () Bool)

(assert (=> d!79933 m!500277))

(assert (=> d!79933 m!500043))

(assert (=> b!519020 m!500017))

(assert (=> b!519020 m!500033))

(assert (=> b!519020 m!500033))

(declare-fun m!500279 () Bool)

(assert (=> b!519020 m!500279))

(assert (=> b!518690 d!79933))

(declare-fun b!519021 () Bool)

(declare-fun lt!237694 () SeekEntryResult!4397)

(assert (=> b!519021 (and (bvsge (index!19781 lt!237694) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237694) (size!16287 lt!237551)))))

(declare-fun res!317755 () Bool)

(assert (=> b!519021 (= res!317755 (= (select (arr!15923 lt!237551) (index!19781 lt!237694)) lt!237550))))

(declare-fun e!302860 () Bool)

(assert (=> b!519021 (=> res!317755 e!302860)))

(declare-fun e!302857 () Bool)

(assert (=> b!519021 (= e!302857 e!302860)))

(declare-fun b!519022 () Bool)

(declare-fun e!302859 () SeekEntryResult!4397)

(assert (=> b!519022 (= e!302859 (Intermediate!4397 false lt!237549 #b00000000000000000000000000000000))))

(declare-fun b!519023 () Bool)

(declare-fun e!302856 () SeekEntryResult!4397)

(assert (=> b!519023 (= e!302856 (Intermediate!4397 true lt!237549 #b00000000000000000000000000000000))))

(declare-fun b!519024 () Bool)

(assert (=> b!519024 (and (bvsge (index!19781 lt!237694) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237694) (size!16287 lt!237551)))))

(declare-fun res!317756 () Bool)

(assert (=> b!519024 (= res!317756 (= (select (arr!15923 lt!237551) (index!19781 lt!237694)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519024 (=> res!317756 e!302860)))

(declare-fun d!79941 () Bool)

(declare-fun e!302858 () Bool)

(assert (=> d!79941 e!302858))

(declare-fun c!60931 () Bool)

(assert (=> d!79941 (= c!60931 (and (is-Intermediate!4397 lt!237694) (undefined!5209 lt!237694)))))

(assert (=> d!79941 (= lt!237694 e!302856)))

(declare-fun c!60932 () Bool)

(assert (=> d!79941 (= c!60932 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237695 () (_ BitVec 64))

(assert (=> d!79941 (= lt!237695 (select (arr!15923 lt!237551) lt!237549))))

(assert (=> d!79941 (validMask!0 mask!3524)))

(assert (=> d!79941 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237549 lt!237550 lt!237551 mask!3524) lt!237694)))

(declare-fun b!519025 () Bool)

(assert (=> b!519025 (= e!302856 e!302859)))

(declare-fun c!60930 () Bool)

(assert (=> b!519025 (= c!60930 (or (= lt!237695 lt!237550) (= (bvadd lt!237695 lt!237695) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519026 () Bool)

(assert (=> b!519026 (= e!302858 e!302857)))

(declare-fun res!317754 () Bool)

(assert (=> b!519026 (= res!317754 (and (is-Intermediate!4397 lt!237694) (not (undefined!5209 lt!237694)) (bvslt (x!48774 lt!237694) #b01111111111111111111111111111110) (bvsge (x!48774 lt!237694) #b00000000000000000000000000000000) (bvsge (x!48774 lt!237694) #b00000000000000000000000000000000)))))

(assert (=> b!519026 (=> (not res!317754) (not e!302857))))

(declare-fun b!519027 () Bool)

(assert (=> b!519027 (and (bvsge (index!19781 lt!237694) #b00000000000000000000000000000000) (bvslt (index!19781 lt!237694) (size!16287 lt!237551)))))

(assert (=> b!519027 (= e!302860 (= (select (arr!15923 lt!237551) (index!19781 lt!237694)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519028 () Bool)

(assert (=> b!519028 (= e!302858 (bvsge (x!48774 lt!237694) #b01111111111111111111111111111110))))

(declare-fun b!519029 () Bool)

(assert (=> b!519029 (= e!302859 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237549 #b00000000000000000000000000000000 mask!3524) lt!237550 lt!237551 mask!3524))))

(assert (= (and d!79941 c!60932) b!519023))

(assert (= (and d!79941 (not c!60932)) b!519025))

(assert (= (and b!519025 c!60930) b!519022))

(assert (= (and b!519025 (not c!60930)) b!519029))

(assert (= (and d!79941 c!60931) b!519028))

(assert (= (and d!79941 (not c!60931)) b!519026))

(assert (= (and b!519026 res!317754) b!519021))

(assert (= (and b!519021 (not res!317755)) b!519024))

(assert (= (and b!519024 (not res!317756)) b!519027))

(assert (=> b!519029 m!500223))

(assert (=> b!519029 m!500223))

(declare-fun m!500281 () Bool)

(assert (=> b!519029 m!500281))

(declare-fun m!500283 () Bool)

(assert (=> d!79941 m!500283))

(assert (=> d!79941 m!500043))

(declare-fun m!500285 () Bool)

(assert (=> b!519024 m!500285))

(assert (=> b!519027 m!500285))

(assert (=> b!519021 m!500285))

(assert (=> b!518690 d!79941))

(push 1)

