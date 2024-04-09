; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51434 () Bool)

(assert start!51434)

(declare-fun b!561608 () Bool)

(declare-fun res!352922 () Bool)

(declare-fun e!323644 () Bool)

(assert (=> b!561608 (=> (not res!352922) (not e!323644))))

(declare-datatypes ((array!35253 0))(
  ( (array!35254 (arr!16923 (Array (_ BitVec 32) (_ BitVec 64))) (size!17287 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35253)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561608 (= res!352922 (validKeyInArray!0 (select (arr!16923 a!3118) j!142)))))

(declare-fun b!561609 () Bool)

(declare-fun res!352920 () Bool)

(assert (=> b!561609 (=> (not res!352920) (not e!323644))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561609 (= res!352920 (and (= (size!17287 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17287 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17287 a!3118)) (not (= i!1132 j!142))))))

(declare-fun lt!255723 () (_ BitVec 64))

(declare-fun lt!255725 () array!35253)

(declare-fun b!561610 () Bool)

(declare-fun e!323641 () Bool)

(declare-datatypes ((SeekEntryResult!5379 0))(
  ( (MissingZero!5379 (index!23743 (_ BitVec 32))) (Found!5379 (index!23744 (_ BitVec 32))) (Intermediate!5379 (undefined!6191 Bool) (index!23745 (_ BitVec 32)) (x!52677 (_ BitVec 32))) (Undefined!5379) (MissingVacant!5379 (index!23746 (_ BitVec 32))) )
))
(declare-fun lt!255731 () SeekEntryResult!5379)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35253 (_ BitVec 32)) SeekEntryResult!5379)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35253 (_ BitVec 32)) SeekEntryResult!5379)

(assert (=> b!561610 (= e!323641 (= (seekEntryOrOpen!0 lt!255723 lt!255725 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52677 lt!255731) (index!23745 lt!255731) (index!23745 lt!255731) lt!255723 lt!255725 mask!3119)))))

(declare-fun b!561611 () Bool)

(declare-fun e!323638 () Bool)

(declare-fun e!323642 () Bool)

(assert (=> b!561611 (= e!323638 e!323642)))

(declare-fun res!352914 () Bool)

(assert (=> b!561611 (=> res!352914 e!323642)))

(assert (=> b!561611 (= res!352914 (or (undefined!6191 lt!255731) (not (is-Intermediate!5379 lt!255731))))))

(declare-fun b!561612 () Bool)

(declare-fun e!323643 () Bool)

(assert (=> b!561612 (= e!323644 e!323643)))

(declare-fun res!352917 () Bool)

(assert (=> b!561612 (=> (not res!352917) (not e!323643))))

(declare-fun lt!255726 () SeekEntryResult!5379)

(assert (=> b!561612 (= res!352917 (or (= lt!255726 (MissingZero!5379 i!1132)) (= lt!255726 (MissingVacant!5379 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!561612 (= lt!255726 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561613 () Bool)

(declare-fun res!352918 () Bool)

(assert (=> b!561613 (=> (not res!352918) (not e!323644))))

(assert (=> b!561613 (= res!352918 (validKeyInArray!0 k!1914))))

(declare-fun b!561614 () Bool)

(declare-fun res!352921 () Bool)

(assert (=> b!561614 (=> (not res!352921) (not e!323643))))

(declare-datatypes ((List!11056 0))(
  ( (Nil!11053) (Cons!11052 (h!12055 (_ BitVec 64)) (t!17292 List!11056)) )
))
(declare-fun arrayNoDuplicates!0 (array!35253 (_ BitVec 32) List!11056) Bool)

(assert (=> b!561614 (= res!352921 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11053))))

(declare-fun res!352919 () Bool)

(assert (=> start!51434 (=> (not res!352919) (not e!323644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51434 (= res!352919 (validMask!0 mask!3119))))

(assert (=> start!51434 e!323644))

(assert (=> start!51434 true))

(declare-fun array_inv!12697 (array!35253) Bool)

(assert (=> start!51434 (array_inv!12697 a!3118)))

(declare-fun b!561615 () Bool)

(declare-fun res!352911 () Bool)

(assert (=> b!561615 (=> (not res!352911) (not e!323644))))

(declare-fun arrayContainsKey!0 (array!35253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561615 (= res!352911 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561616 () Bool)

(declare-fun e!323640 () Bool)

(assert (=> b!561616 (= e!323643 e!323640)))

(declare-fun res!352910 () Bool)

(assert (=> b!561616 (=> (not res!352910) (not e!323640))))

(declare-fun lt!255730 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35253 (_ BitVec 32)) SeekEntryResult!5379)

(assert (=> b!561616 (= res!352910 (= lt!255731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255730 lt!255723 lt!255725 mask!3119)))))

(declare-fun lt!255728 () (_ BitVec 32))

(assert (=> b!561616 (= lt!255731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255728 (select (arr!16923 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561616 (= lt!255730 (toIndex!0 lt!255723 mask!3119))))

(assert (=> b!561616 (= lt!255723 (select (store (arr!16923 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561616 (= lt!255728 (toIndex!0 (select (arr!16923 a!3118) j!142) mask!3119))))

(assert (=> b!561616 (= lt!255725 (array!35254 (store (arr!16923 a!3118) i!1132 k!1914) (size!17287 a!3118)))))

(declare-fun b!561617 () Bool)

(declare-fun res!352916 () Bool)

(assert (=> b!561617 (=> (not res!352916) (not e!323643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35253 (_ BitVec 32)) Bool)

(assert (=> b!561617 (= res!352916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561618 () Bool)

(assert (=> b!561618 (= e!323640 (not true))))

(assert (=> b!561618 e!323638))

(declare-fun res!352915 () Bool)

(assert (=> b!561618 (=> (not res!352915) (not e!323638))))

(declare-fun lt!255729 () SeekEntryResult!5379)

(assert (=> b!561618 (= res!352915 (= lt!255729 (Found!5379 j!142)))))

(assert (=> b!561618 (= lt!255729 (seekEntryOrOpen!0 (select (arr!16923 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561618 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17532 0))(
  ( (Unit!17533) )
))
(declare-fun lt!255724 () Unit!17532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35253 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17532)

(assert (=> b!561618 (= lt!255724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561619 () Bool)

(declare-fun e!323639 () Bool)

(assert (=> b!561619 (= e!323639 e!323641)))

(declare-fun res!352912 () Bool)

(assert (=> b!561619 (=> (not res!352912) (not e!323641))))

(assert (=> b!561619 (= res!352912 (= lt!255729 (seekKeyOrZeroReturnVacant!0 (x!52677 lt!255731) (index!23745 lt!255731) (index!23745 lt!255731) (select (arr!16923 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561620 () Bool)

(assert (=> b!561620 (= e!323642 e!323639)))

(declare-fun res!352913 () Bool)

(assert (=> b!561620 (=> res!352913 e!323639)))

(declare-fun lt!255727 () (_ BitVec 64))

(assert (=> b!561620 (= res!352913 (or (= lt!255727 (select (arr!16923 a!3118) j!142)) (= lt!255727 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561620 (= lt!255727 (select (arr!16923 a!3118) (index!23745 lt!255731)))))

(assert (= (and start!51434 res!352919) b!561609))

(assert (= (and b!561609 res!352920) b!561608))

(assert (= (and b!561608 res!352922) b!561613))

(assert (= (and b!561613 res!352918) b!561615))

(assert (= (and b!561615 res!352911) b!561612))

(assert (= (and b!561612 res!352917) b!561617))

(assert (= (and b!561617 res!352916) b!561614))

(assert (= (and b!561614 res!352921) b!561616))

(assert (= (and b!561616 res!352910) b!561618))

(assert (= (and b!561618 res!352915) b!561611))

(assert (= (and b!561611 (not res!352914)) b!561620))

(assert (= (and b!561620 (not res!352913)) b!561619))

(assert (= (and b!561619 res!352912) b!561610))

(declare-fun m!539587 () Bool)

(assert (=> b!561612 m!539587))

(declare-fun m!539589 () Bool)

(assert (=> b!561619 m!539589))

(assert (=> b!561619 m!539589))

(declare-fun m!539591 () Bool)

(assert (=> b!561619 m!539591))

(declare-fun m!539593 () Bool)

(assert (=> b!561614 m!539593))

(assert (=> b!561618 m!539589))

(assert (=> b!561618 m!539589))

(declare-fun m!539595 () Bool)

(assert (=> b!561618 m!539595))

(declare-fun m!539597 () Bool)

(assert (=> b!561618 m!539597))

(declare-fun m!539599 () Bool)

(assert (=> b!561618 m!539599))

(declare-fun m!539601 () Bool)

(assert (=> b!561610 m!539601))

(declare-fun m!539603 () Bool)

(assert (=> b!561610 m!539603))

(assert (=> b!561620 m!539589))

(declare-fun m!539605 () Bool)

(assert (=> b!561620 m!539605))

(declare-fun m!539607 () Bool)

(assert (=> start!51434 m!539607))

(declare-fun m!539609 () Bool)

(assert (=> start!51434 m!539609))

(assert (=> b!561616 m!539589))

(declare-fun m!539611 () Bool)

(assert (=> b!561616 m!539611))

(assert (=> b!561616 m!539589))

(declare-fun m!539613 () Bool)

(assert (=> b!561616 m!539613))

(declare-fun m!539615 () Bool)

(assert (=> b!561616 m!539615))

(assert (=> b!561616 m!539589))

(declare-fun m!539617 () Bool)

(assert (=> b!561616 m!539617))

(declare-fun m!539619 () Bool)

(assert (=> b!561616 m!539619))

(declare-fun m!539621 () Bool)

(assert (=> b!561616 m!539621))

(assert (=> b!561608 m!539589))

(assert (=> b!561608 m!539589))

(declare-fun m!539623 () Bool)

(assert (=> b!561608 m!539623))

(declare-fun m!539625 () Bool)

(assert (=> b!561613 m!539625))

(declare-fun m!539627 () Bool)

(assert (=> b!561615 m!539627))

(declare-fun m!539629 () Bool)

(assert (=> b!561617 m!539629))

(push 1)

