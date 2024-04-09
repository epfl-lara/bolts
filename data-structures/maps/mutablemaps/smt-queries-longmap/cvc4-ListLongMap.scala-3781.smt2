; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51762 () Bool)

(assert start!51762)

(declare-fun b!565958 () Bool)

(declare-fun res!357085 () Bool)

(declare-fun e!325740 () Bool)

(assert (=> b!565958 (=> (not res!357085) (not e!325740))))

(declare-datatypes ((array!35524 0))(
  ( (array!35525 (arr!17057 (Array (_ BitVec 32) (_ BitVec 64))) (size!17421 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35524)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565958 (= res!357085 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565959 () Bool)

(declare-fun res!357083 () Bool)

(declare-fun e!325738 () Bool)

(assert (=> b!565959 (=> (not res!357083) (not e!325738))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35524 (_ BitVec 32)) Bool)

(assert (=> b!565959 (= res!357083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565960 () Bool)

(declare-fun res!357077 () Bool)

(assert (=> b!565960 (=> (not res!357077) (not e!325740))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565960 (= res!357077 (validKeyInArray!0 (select (arr!17057 a!3118) j!142)))))

(declare-fun b!565961 () Bool)

(declare-fun res!357082 () Bool)

(assert (=> b!565961 (=> (not res!357082) (not e!325738))))

(declare-datatypes ((List!11190 0))(
  ( (Nil!11187) (Cons!11186 (h!12192 (_ BitVec 64)) (t!17426 List!11190)) )
))
(declare-fun arrayNoDuplicates!0 (array!35524 (_ BitVec 32) List!11190) Bool)

(assert (=> b!565961 (= res!357082 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11187))))

(declare-fun e!325739 () Bool)

(declare-fun b!565962 () Bool)

(declare-datatypes ((SeekEntryResult!5513 0))(
  ( (MissingZero!5513 (index!24279 (_ BitVec 32))) (Found!5513 (index!24280 (_ BitVec 32))) (Intermediate!5513 (undefined!6325 Bool) (index!24281 (_ BitVec 32)) (x!53169 (_ BitVec 32))) (Undefined!5513) (MissingVacant!5513 (index!24282 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35524 (_ BitVec 32)) SeekEntryResult!5513)

(assert (=> b!565962 (= e!325739 (= (seekEntryOrOpen!0 (select (arr!17057 a!3118) j!142) a!3118 mask!3119) (Found!5513 j!142)))))

(declare-fun b!565963 () Bool)

(declare-fun res!357079 () Bool)

(assert (=> b!565963 (=> (not res!357079) (not e!325738))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35524 (_ BitVec 32)) SeekEntryResult!5513)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565963 (= res!357079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17057 a!3118) j!142) mask!3119) (select (arr!17057 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17057 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17057 a!3118) i!1132 k!1914) j!142) (array!35525 (store (arr!17057 a!3118) i!1132 k!1914) (size!17421 a!3118)) mask!3119)))))

(declare-fun res!357084 () Bool)

(assert (=> start!51762 (=> (not res!357084) (not e!325740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51762 (= res!357084 (validMask!0 mask!3119))))

(assert (=> start!51762 e!325740))

(assert (=> start!51762 true))

(declare-fun array_inv!12831 (array!35524) Bool)

(assert (=> start!51762 (array_inv!12831 a!3118)))

(declare-fun b!565964 () Bool)

(assert (=> b!565964 (= e!325740 e!325738)))

(declare-fun res!357080 () Bool)

(assert (=> b!565964 (=> (not res!357080) (not e!325738))))

(declare-fun lt!257993 () SeekEntryResult!5513)

(assert (=> b!565964 (= res!357080 (or (= lt!257993 (MissingZero!5513 i!1132)) (= lt!257993 (MissingVacant!5513 i!1132))))))

(assert (=> b!565964 (= lt!257993 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565965 () Bool)

(declare-fun res!357086 () Bool)

(assert (=> b!565965 (=> (not res!357086) (not e!325740))))

(assert (=> b!565965 (= res!357086 (validKeyInArray!0 k!1914))))

(declare-fun b!565966 () Bool)

(declare-fun res!357081 () Bool)

(assert (=> b!565966 (=> (not res!357081) (not e!325740))))

(assert (=> b!565966 (= res!357081 (and (= (size!17421 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17421 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17421 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565967 () Bool)

(assert (=> b!565967 (= e!325738 (not true))))

(assert (=> b!565967 e!325739))

(declare-fun res!357078 () Bool)

(assert (=> b!565967 (=> (not res!357078) (not e!325739))))

(assert (=> b!565967 (= res!357078 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17728 0))(
  ( (Unit!17729) )
))
(declare-fun lt!257992 () Unit!17728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17728)

(assert (=> b!565967 (= lt!257992 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51762 res!357084) b!565966))

(assert (= (and b!565966 res!357081) b!565960))

(assert (= (and b!565960 res!357077) b!565965))

(assert (= (and b!565965 res!357086) b!565958))

(assert (= (and b!565958 res!357085) b!565964))

(assert (= (and b!565964 res!357080) b!565959))

(assert (= (and b!565959 res!357083) b!565961))

(assert (= (and b!565961 res!357082) b!565963))

(assert (= (and b!565963 res!357079) b!565967))

(assert (= (and b!565967 res!357078) b!565962))

(declare-fun m!544597 () Bool)

(assert (=> b!565963 m!544597))

(declare-fun m!544599 () Bool)

(assert (=> b!565963 m!544599))

(assert (=> b!565963 m!544597))

(declare-fun m!544601 () Bool)

(assert (=> b!565963 m!544601))

(declare-fun m!544603 () Bool)

(assert (=> b!565963 m!544603))

(assert (=> b!565963 m!544601))

(declare-fun m!544605 () Bool)

(assert (=> b!565963 m!544605))

(assert (=> b!565963 m!544599))

(assert (=> b!565963 m!544597))

(declare-fun m!544607 () Bool)

(assert (=> b!565963 m!544607))

(declare-fun m!544609 () Bool)

(assert (=> b!565963 m!544609))

(assert (=> b!565963 m!544601))

(assert (=> b!565963 m!544603))

(declare-fun m!544611 () Bool)

(assert (=> b!565967 m!544611))

(declare-fun m!544613 () Bool)

(assert (=> b!565967 m!544613))

(declare-fun m!544615 () Bool)

(assert (=> b!565965 m!544615))

(declare-fun m!544617 () Bool)

(assert (=> b!565964 m!544617))

(declare-fun m!544619 () Bool)

(assert (=> b!565961 m!544619))

(assert (=> b!565962 m!544597))

(assert (=> b!565962 m!544597))

(declare-fun m!544621 () Bool)

(assert (=> b!565962 m!544621))

(declare-fun m!544623 () Bool)

(assert (=> b!565959 m!544623))

(declare-fun m!544625 () Bool)

(assert (=> b!565958 m!544625))

(declare-fun m!544627 () Bool)

(assert (=> start!51762 m!544627))

(declare-fun m!544629 () Bool)

(assert (=> start!51762 m!544629))

(assert (=> b!565960 m!544597))

(assert (=> b!565960 m!544597))

(declare-fun m!544631 () Bool)

(assert (=> b!565960 m!544631))

(push 1)

