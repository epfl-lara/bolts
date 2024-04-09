; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51908 () Bool)

(assert start!51908)

(declare-fun b!566948 () Bool)

(declare-fun res!357685 () Bool)

(declare-fun e!326296 () Bool)

(assert (=> b!566948 (=> (not res!357685) (not e!326296))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566948 (= res!357685 (validKeyInArray!0 k!1914))))

(declare-fun b!566949 () Bool)

(declare-fun res!357690 () Bool)

(assert (=> b!566949 (=> (not res!357690) (not e!326296))))

(declare-datatypes ((array!35556 0))(
  ( (array!35557 (arr!17070 (Array (_ BitVec 32) (_ BitVec 64))) (size!17434 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35556)

(declare-fun arrayContainsKey!0 (array!35556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566949 (= res!357690 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566950 () Bool)

(declare-fun e!326293 () Bool)

(assert (=> b!566950 (= e!326293 (not true))))

(declare-fun e!326295 () Bool)

(assert (=> b!566950 e!326295))

(declare-fun res!357689 () Bool)

(assert (=> b!566950 (=> (not res!357689) (not e!326295))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35556 (_ BitVec 32)) Bool)

(assert (=> b!566950 (= res!357689 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17754 0))(
  ( (Unit!17755) )
))
(declare-fun lt!258418 () Unit!17754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17754)

(assert (=> b!566950 (= lt!258418 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566951 () Bool)

(declare-fun res!357691 () Bool)

(assert (=> b!566951 (=> (not res!357691) (not e!326293))))

(assert (=> b!566951 (= res!357691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566952 () Bool)

(declare-fun res!357688 () Bool)

(assert (=> b!566952 (=> (not res!357688) (not e!326296))))

(assert (=> b!566952 (= res!357688 (validKeyInArray!0 (select (arr!17070 a!3118) j!142)))))

(declare-fun b!566953 () Bool)

(declare-datatypes ((SeekEntryResult!5526 0))(
  ( (MissingZero!5526 (index!24331 (_ BitVec 32))) (Found!5526 (index!24332 (_ BitVec 32))) (Intermediate!5526 (undefined!6338 Bool) (index!24333 (_ BitVec 32)) (x!53234 (_ BitVec 32))) (Undefined!5526) (MissingVacant!5526 (index!24334 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35556 (_ BitVec 32)) SeekEntryResult!5526)

(assert (=> b!566953 (= e!326295 (= (seekEntryOrOpen!0 (select (arr!17070 a!3118) j!142) a!3118 mask!3119) (Found!5526 j!142)))))

(declare-fun b!566954 () Bool)

(declare-fun res!357692 () Bool)

(assert (=> b!566954 (=> (not res!357692) (not e!326293))))

(declare-datatypes ((List!11203 0))(
  ( (Nil!11200) (Cons!11199 (h!12211 (_ BitVec 64)) (t!17439 List!11203)) )
))
(declare-fun arrayNoDuplicates!0 (array!35556 (_ BitVec 32) List!11203) Bool)

(assert (=> b!566954 (= res!357692 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11200))))

(declare-fun b!566955 () Bool)

(declare-fun res!357686 () Bool)

(assert (=> b!566955 (=> (not res!357686) (not e!326293))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35556 (_ BitVec 32)) SeekEntryResult!5526)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566955 (= res!357686 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17070 a!3118) j!142) mask!3119) (select (arr!17070 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17070 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17070 a!3118) i!1132 k!1914) j!142) (array!35557 (store (arr!17070 a!3118) i!1132 k!1914) (size!17434 a!3118)) mask!3119)))))

(declare-fun b!566956 () Bool)

(declare-fun res!357687 () Bool)

(assert (=> b!566956 (=> (not res!357687) (not e!326296))))

(assert (=> b!566956 (= res!357687 (and (= (size!17434 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17434 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17434 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!357684 () Bool)

(assert (=> start!51908 (=> (not res!357684) (not e!326296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51908 (= res!357684 (validMask!0 mask!3119))))

(assert (=> start!51908 e!326296))

(assert (=> start!51908 true))

(declare-fun array_inv!12844 (array!35556) Bool)

(assert (=> start!51908 (array_inv!12844 a!3118)))

(declare-fun b!566957 () Bool)

(assert (=> b!566957 (= e!326296 e!326293)))

(declare-fun res!357683 () Bool)

(assert (=> b!566957 (=> (not res!357683) (not e!326293))))

(declare-fun lt!258419 () SeekEntryResult!5526)

(assert (=> b!566957 (= res!357683 (or (= lt!258419 (MissingZero!5526 i!1132)) (= lt!258419 (MissingVacant!5526 i!1132))))))

(assert (=> b!566957 (= lt!258419 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51908 res!357684) b!566956))

(assert (= (and b!566956 res!357687) b!566952))

(assert (= (and b!566952 res!357688) b!566948))

(assert (= (and b!566948 res!357685) b!566949))

(assert (= (and b!566949 res!357690) b!566957))

(assert (= (and b!566957 res!357683) b!566951))

(assert (= (and b!566951 res!357691) b!566954))

(assert (= (and b!566954 res!357692) b!566955))

(assert (= (and b!566955 res!357686) b!566950))

(assert (= (and b!566950 res!357689) b!566953))

(declare-fun m!545515 () Bool)

(assert (=> b!566948 m!545515))

(declare-fun m!545517 () Bool)

(assert (=> b!566957 m!545517))

(declare-fun m!545519 () Bool)

(assert (=> b!566952 m!545519))

(assert (=> b!566952 m!545519))

(declare-fun m!545521 () Bool)

(assert (=> b!566952 m!545521))

(declare-fun m!545523 () Bool)

(assert (=> b!566951 m!545523))

(declare-fun m!545525 () Bool)

(assert (=> b!566954 m!545525))

(declare-fun m!545527 () Bool)

(assert (=> b!566950 m!545527))

(declare-fun m!545529 () Bool)

(assert (=> b!566950 m!545529))

(declare-fun m!545531 () Bool)

(assert (=> start!51908 m!545531))

(declare-fun m!545533 () Bool)

(assert (=> start!51908 m!545533))

(declare-fun m!545535 () Bool)

(assert (=> b!566949 m!545535))

(assert (=> b!566953 m!545519))

(assert (=> b!566953 m!545519))

(declare-fun m!545537 () Bool)

(assert (=> b!566953 m!545537))

(assert (=> b!566955 m!545519))

(declare-fun m!545539 () Bool)

(assert (=> b!566955 m!545539))

(assert (=> b!566955 m!545519))

(declare-fun m!545541 () Bool)

(assert (=> b!566955 m!545541))

(declare-fun m!545543 () Bool)

(assert (=> b!566955 m!545543))

(assert (=> b!566955 m!545541))

(declare-fun m!545545 () Bool)

(assert (=> b!566955 m!545545))

(assert (=> b!566955 m!545539))

(assert (=> b!566955 m!545519))

(declare-fun m!545547 () Bool)

(assert (=> b!566955 m!545547))

(declare-fun m!545549 () Bool)

(assert (=> b!566955 m!545549))

(assert (=> b!566955 m!545541))

(assert (=> b!566955 m!545543))

(push 1)

