; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52324 () Bool)

(assert start!52324)

(declare-fun b!570658 () Bool)

(declare-fun res!360595 () Bool)

(declare-fun e!328207 () Bool)

(assert (=> b!570658 (=> (not res!360595) (not e!328207))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570658 (= res!360595 (validKeyInArray!0 k0!1914))))

(declare-fun b!570660 () Bool)

(declare-fun e!328204 () Bool)

(assert (=> b!570660 (= e!328204 (not true))))

(declare-fun e!328202 () Bool)

(assert (=> b!570660 e!328202))

(declare-fun res!360591 () Bool)

(assert (=> b!570660 (=> (not res!360591) (not e!328202))))

(declare-datatypes ((SeekEntryResult!5611 0))(
  ( (MissingZero!5611 (index!24671 (_ BitVec 32))) (Found!5611 (index!24672 (_ BitVec 32))) (Intermediate!5611 (undefined!6423 Bool) (index!24673 (_ BitVec 32)) (x!53570 (_ BitVec 32))) (Undefined!5611) (MissingVacant!5611 (index!24674 (_ BitVec 32))) )
))
(declare-fun lt!260220 () SeekEntryResult!5611)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570660 (= res!360591 (= lt!260220 (Found!5611 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35738 0))(
  ( (array!35739 (arr!17155 (Array (_ BitVec 32) (_ BitVec 64))) (size!17519 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35738)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35738 (_ BitVec 32)) SeekEntryResult!5611)

(assert (=> b!570660 (= lt!260220 (seekEntryOrOpen!0 (select (arr!17155 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35738 (_ BitVec 32)) Bool)

(assert (=> b!570660 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17924 0))(
  ( (Unit!17925) )
))
(declare-fun lt!260225 () Unit!17924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35738 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17924)

(assert (=> b!570660 (= lt!260225 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570661 () Bool)

(declare-fun res!360590 () Bool)

(assert (=> b!570661 (=> (not res!360590) (not e!328207))))

(assert (=> b!570661 (= res!360590 (validKeyInArray!0 (select (arr!17155 a!3118) j!142)))))

(declare-fun lt!260221 () SeekEntryResult!5611)

(declare-fun e!328203 () Bool)

(declare-fun b!570662 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35738 (_ BitVec 32)) SeekEntryResult!5611)

(assert (=> b!570662 (= e!328203 (= lt!260220 (seekKeyOrZeroReturnVacant!0 (x!53570 lt!260221) (index!24673 lt!260221) (index!24673 lt!260221) (select (arr!17155 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570663 () Bool)

(declare-fun res!360593 () Bool)

(declare-fun e!328205 () Bool)

(assert (=> b!570663 (=> (not res!360593) (not e!328205))))

(declare-datatypes ((List!11288 0))(
  ( (Nil!11285) (Cons!11284 (h!12308 (_ BitVec 64)) (t!17524 List!11288)) )
))
(declare-fun arrayNoDuplicates!0 (array!35738 (_ BitVec 32) List!11288) Bool)

(assert (=> b!570663 (= res!360593 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11285))))

(declare-fun b!570664 () Bool)

(declare-fun res!360592 () Bool)

(assert (=> b!570664 (=> (not res!360592) (not e!328207))))

(declare-fun arrayContainsKey!0 (array!35738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570664 (= res!360592 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570665 () Bool)

(declare-fun res!360597 () Bool)

(assert (=> b!570665 (=> (not res!360597) (not e!328205))))

(assert (=> b!570665 (= res!360597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570666 () Bool)

(assert (=> b!570666 (= e!328207 e!328205)))

(declare-fun res!360598 () Bool)

(assert (=> b!570666 (=> (not res!360598) (not e!328205))))

(declare-fun lt!260222 () SeekEntryResult!5611)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570666 (= res!360598 (or (= lt!260222 (MissingZero!5611 i!1132)) (= lt!260222 (MissingVacant!5611 i!1132))))))

(assert (=> b!570666 (= lt!260222 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!360594 () Bool)

(assert (=> start!52324 (=> (not res!360594) (not e!328207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52324 (= res!360594 (validMask!0 mask!3119))))

(assert (=> start!52324 e!328207))

(assert (=> start!52324 true))

(declare-fun array_inv!12929 (array!35738) Bool)

(assert (=> start!52324 (array_inv!12929 a!3118)))

(declare-fun b!570659 () Bool)

(assert (=> b!570659 (= e!328205 e!328204)))

(declare-fun res!360599 () Bool)

(assert (=> b!570659 (=> (not res!360599) (not e!328204))))

(declare-fun lt!260223 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35738 (_ BitVec 32)) SeekEntryResult!5611)

(assert (=> b!570659 (= res!360599 (= lt!260221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260223 (select (store (arr!17155 a!3118) i!1132 k0!1914) j!142) (array!35739 (store (arr!17155 a!3118) i!1132 k0!1914) (size!17519 a!3118)) mask!3119)))))

(declare-fun lt!260224 () (_ BitVec 32))

(assert (=> b!570659 (= lt!260221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260224 (select (arr!17155 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570659 (= lt!260223 (toIndex!0 (select (store (arr!17155 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!570659 (= lt!260224 (toIndex!0 (select (arr!17155 a!3118) j!142) mask!3119))))

(declare-fun b!570667 () Bool)

(declare-fun res!360589 () Bool)

(assert (=> b!570667 (=> (not res!360589) (not e!328207))))

(assert (=> b!570667 (= res!360589 (and (= (size!17519 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17519 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17519 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570668 () Bool)

(assert (=> b!570668 (= e!328202 e!328203)))

(declare-fun res!360596 () Bool)

(assert (=> b!570668 (=> res!360596 e!328203)))

(get-info :version)

(assert (=> b!570668 (= res!360596 (or (undefined!6423 lt!260221) (not ((_ is Intermediate!5611) lt!260221)) (= (select (arr!17155 a!3118) (index!24673 lt!260221)) (select (arr!17155 a!3118) j!142)) (= (select (arr!17155 a!3118) (index!24673 lt!260221)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!52324 res!360594) b!570667))

(assert (= (and b!570667 res!360589) b!570661))

(assert (= (and b!570661 res!360590) b!570658))

(assert (= (and b!570658 res!360595) b!570664))

(assert (= (and b!570664 res!360592) b!570666))

(assert (= (and b!570666 res!360598) b!570665))

(assert (= (and b!570665 res!360597) b!570663))

(assert (= (and b!570663 res!360593) b!570659))

(assert (= (and b!570659 res!360599) b!570660))

(assert (= (and b!570660 res!360591) b!570668))

(assert (= (and b!570668 (not res!360596)) b!570662))

(declare-fun m!549611 () Bool)

(assert (=> b!570659 m!549611))

(declare-fun m!549613 () Bool)

(assert (=> b!570659 m!549613))

(declare-fun m!549615 () Bool)

(assert (=> b!570659 m!549615))

(assert (=> b!570659 m!549611))

(declare-fun m!549617 () Bool)

(assert (=> b!570659 m!549617))

(assert (=> b!570659 m!549613))

(declare-fun m!549619 () Bool)

(assert (=> b!570659 m!549619))

(assert (=> b!570659 m!549611))

(declare-fun m!549621 () Bool)

(assert (=> b!570659 m!549621))

(assert (=> b!570659 m!549613))

(declare-fun m!549623 () Bool)

(assert (=> b!570659 m!549623))

(declare-fun m!549625 () Bool)

(assert (=> b!570668 m!549625))

(assert (=> b!570668 m!549611))

(declare-fun m!549627 () Bool)

(assert (=> b!570666 m!549627))

(assert (=> b!570662 m!549611))

(assert (=> b!570662 m!549611))

(declare-fun m!549629 () Bool)

(assert (=> b!570662 m!549629))

(assert (=> b!570661 m!549611))

(assert (=> b!570661 m!549611))

(declare-fun m!549631 () Bool)

(assert (=> b!570661 m!549631))

(declare-fun m!549633 () Bool)

(assert (=> b!570663 m!549633))

(assert (=> b!570660 m!549611))

(assert (=> b!570660 m!549611))

(declare-fun m!549635 () Bool)

(assert (=> b!570660 m!549635))

(declare-fun m!549637 () Bool)

(assert (=> b!570660 m!549637))

(declare-fun m!549639 () Bool)

(assert (=> b!570660 m!549639))

(declare-fun m!549641 () Bool)

(assert (=> b!570664 m!549641))

(declare-fun m!549643 () Bool)

(assert (=> start!52324 m!549643))

(declare-fun m!549645 () Bool)

(assert (=> start!52324 m!549645))

(declare-fun m!549647 () Bool)

(assert (=> b!570665 m!549647))

(declare-fun m!549649 () Bool)

(assert (=> b!570658 m!549649))

(check-sat (not b!570658) (not b!570660) (not b!570663) (not b!570662) (not b!570659) (not b!570664) (not b!570666) (not b!570661) (not start!52324) (not b!570665))
(check-sat)
