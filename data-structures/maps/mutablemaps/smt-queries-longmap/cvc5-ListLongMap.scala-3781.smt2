; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51758 () Bool)

(assert start!51758)

(declare-fun b!565898 () Bool)

(declare-fun res!357019 () Bool)

(declare-fun e!325717 () Bool)

(assert (=> b!565898 (=> (not res!357019) (not e!325717))))

(declare-datatypes ((array!35520 0))(
  ( (array!35521 (arr!17055 (Array (_ BitVec 32) (_ BitVec 64))) (size!17419 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35520)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565898 (= res!357019 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!357026 () Bool)

(assert (=> start!51758 (=> (not res!357026) (not e!325717))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51758 (= res!357026 (validMask!0 mask!3119))))

(assert (=> start!51758 e!325717))

(assert (=> start!51758 true))

(declare-fun array_inv!12829 (array!35520) Bool)

(assert (=> start!51758 (array_inv!12829 a!3118)))

(declare-fun b!565899 () Bool)

(declare-fun res!357025 () Bool)

(declare-fun e!325714 () Bool)

(assert (=> b!565899 (=> (not res!357025) (not e!325714))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5511 0))(
  ( (MissingZero!5511 (index!24271 (_ BitVec 32))) (Found!5511 (index!24272 (_ BitVec 32))) (Intermediate!5511 (undefined!6323 Bool) (index!24273 (_ BitVec 32)) (x!53167 (_ BitVec 32))) (Undefined!5511) (MissingVacant!5511 (index!24274 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35520 (_ BitVec 32)) SeekEntryResult!5511)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565899 (= res!357025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17055 a!3118) j!142) mask!3119) (select (arr!17055 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17055 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17055 a!3118) i!1132 k!1914) j!142) (array!35521 (store (arr!17055 a!3118) i!1132 k!1914) (size!17419 a!3118)) mask!3119)))))

(declare-fun b!565900 () Bool)

(declare-fun res!357021 () Bool)

(assert (=> b!565900 (=> (not res!357021) (not e!325717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565900 (= res!357021 (validKeyInArray!0 (select (arr!17055 a!3118) j!142)))))

(declare-fun b!565901 () Bool)

(assert (=> b!565901 (= e!325714 (not true))))

(declare-fun e!325716 () Bool)

(assert (=> b!565901 e!325716))

(declare-fun res!357020 () Bool)

(assert (=> b!565901 (=> (not res!357020) (not e!325716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35520 (_ BitVec 32)) Bool)

(assert (=> b!565901 (= res!357020 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17724 0))(
  ( (Unit!17725) )
))
(declare-fun lt!257980 () Unit!17724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17724)

(assert (=> b!565901 (= lt!257980 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565902 () Bool)

(declare-fun res!357022 () Bool)

(assert (=> b!565902 (=> (not res!357022) (not e!325714))))

(declare-datatypes ((List!11188 0))(
  ( (Nil!11185) (Cons!11184 (h!12190 (_ BitVec 64)) (t!17424 List!11188)) )
))
(declare-fun arrayNoDuplicates!0 (array!35520 (_ BitVec 32) List!11188) Bool)

(assert (=> b!565902 (= res!357022 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11185))))

(declare-fun b!565903 () Bool)

(declare-fun res!357017 () Bool)

(assert (=> b!565903 (=> (not res!357017) (not e!325714))))

(assert (=> b!565903 (= res!357017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565904 () Bool)

(declare-fun res!357024 () Bool)

(assert (=> b!565904 (=> (not res!357024) (not e!325717))))

(assert (=> b!565904 (= res!357024 (validKeyInArray!0 k!1914))))

(declare-fun b!565905 () Bool)

(assert (=> b!565905 (= e!325717 e!325714)))

(declare-fun res!357023 () Bool)

(assert (=> b!565905 (=> (not res!357023) (not e!325714))))

(declare-fun lt!257981 () SeekEntryResult!5511)

(assert (=> b!565905 (= res!357023 (or (= lt!257981 (MissingZero!5511 i!1132)) (= lt!257981 (MissingVacant!5511 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35520 (_ BitVec 32)) SeekEntryResult!5511)

(assert (=> b!565905 (= lt!257981 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565906 () Bool)

(assert (=> b!565906 (= e!325716 (= (seekEntryOrOpen!0 (select (arr!17055 a!3118) j!142) a!3118 mask!3119) (Found!5511 j!142)))))

(declare-fun b!565907 () Bool)

(declare-fun res!357018 () Bool)

(assert (=> b!565907 (=> (not res!357018) (not e!325717))))

(assert (=> b!565907 (= res!357018 (and (= (size!17419 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17419 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17419 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51758 res!357026) b!565907))

(assert (= (and b!565907 res!357018) b!565900))

(assert (= (and b!565900 res!357021) b!565904))

(assert (= (and b!565904 res!357024) b!565898))

(assert (= (and b!565898 res!357019) b!565905))

(assert (= (and b!565905 res!357023) b!565903))

(assert (= (and b!565903 res!357017) b!565902))

(assert (= (and b!565902 res!357022) b!565899))

(assert (= (and b!565899 res!357025) b!565901))

(assert (= (and b!565901 res!357020) b!565906))

(declare-fun m!544525 () Bool)

(assert (=> b!565902 m!544525))

(declare-fun m!544527 () Bool)

(assert (=> b!565898 m!544527))

(declare-fun m!544529 () Bool)

(assert (=> b!565900 m!544529))

(assert (=> b!565900 m!544529))

(declare-fun m!544531 () Bool)

(assert (=> b!565900 m!544531))

(assert (=> b!565906 m!544529))

(assert (=> b!565906 m!544529))

(declare-fun m!544533 () Bool)

(assert (=> b!565906 m!544533))

(declare-fun m!544535 () Bool)

(assert (=> b!565903 m!544535))

(assert (=> b!565899 m!544529))

(declare-fun m!544537 () Bool)

(assert (=> b!565899 m!544537))

(assert (=> b!565899 m!544529))

(declare-fun m!544539 () Bool)

(assert (=> b!565899 m!544539))

(declare-fun m!544541 () Bool)

(assert (=> b!565899 m!544541))

(assert (=> b!565899 m!544539))

(declare-fun m!544543 () Bool)

(assert (=> b!565899 m!544543))

(assert (=> b!565899 m!544537))

(assert (=> b!565899 m!544529))

(declare-fun m!544545 () Bool)

(assert (=> b!565899 m!544545))

(declare-fun m!544547 () Bool)

(assert (=> b!565899 m!544547))

(assert (=> b!565899 m!544539))

(assert (=> b!565899 m!544541))

(declare-fun m!544549 () Bool)

(assert (=> start!51758 m!544549))

(declare-fun m!544551 () Bool)

(assert (=> start!51758 m!544551))

(declare-fun m!544553 () Bool)

(assert (=> b!565905 m!544553))

(declare-fun m!544555 () Bool)

(assert (=> b!565901 m!544555))

(declare-fun m!544557 () Bool)

(assert (=> b!565901 m!544557))

(declare-fun m!544559 () Bool)

(assert (=> b!565904 m!544559))

(push 1)

