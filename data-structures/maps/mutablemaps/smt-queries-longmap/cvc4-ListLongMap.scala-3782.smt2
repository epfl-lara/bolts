; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51768 () Bool)

(assert start!51768)

(declare-fun b!566048 () Bool)

(declare-fun e!325774 () Bool)

(declare-fun e!325775 () Bool)

(assert (=> b!566048 (= e!325774 e!325775)))

(declare-fun res!357173 () Bool)

(assert (=> b!566048 (=> (not res!357173) (not e!325775))))

(declare-datatypes ((SeekEntryResult!5516 0))(
  ( (MissingZero!5516 (index!24291 (_ BitVec 32))) (Found!5516 (index!24292 (_ BitVec 32))) (Intermediate!5516 (undefined!6328 Bool) (index!24293 (_ BitVec 32)) (x!53180 (_ BitVec 32))) (Undefined!5516) (MissingVacant!5516 (index!24294 (_ BitVec 32))) )
))
(declare-fun lt!258011 () SeekEntryResult!5516)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566048 (= res!357173 (or (= lt!258011 (MissingZero!5516 i!1132)) (= lt!258011 (MissingVacant!5516 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35530 0))(
  ( (array!35531 (arr!17060 (Array (_ BitVec 32) (_ BitVec 64))) (size!17424 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35530)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35530 (_ BitVec 32)) SeekEntryResult!5516)

(assert (=> b!566048 (= lt!258011 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!566049 () Bool)

(declare-fun res!357170 () Bool)

(assert (=> b!566049 (=> (not res!357170) (not e!325775))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35530 (_ BitVec 32)) SeekEntryResult!5516)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566049 (= res!357170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17060 a!3118) j!142) mask!3119) (select (arr!17060 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17060 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17060 a!3118) i!1132 k!1914) j!142) (array!35531 (store (arr!17060 a!3118) i!1132 k!1914) (size!17424 a!3118)) mask!3119)))))

(declare-fun b!566050 () Bool)

(declare-fun res!357176 () Bool)

(assert (=> b!566050 (=> (not res!357176) (not e!325774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566050 (= res!357176 (validKeyInArray!0 k!1914))))

(declare-fun b!566051 () Bool)

(declare-fun res!357175 () Bool)

(assert (=> b!566051 (=> (not res!357175) (not e!325774))))

(declare-fun arrayContainsKey!0 (array!35530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566051 (= res!357175 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!357172 () Bool)

(assert (=> start!51768 (=> (not res!357172) (not e!325774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51768 (= res!357172 (validMask!0 mask!3119))))

(assert (=> start!51768 e!325774))

(assert (=> start!51768 true))

(declare-fun array_inv!12834 (array!35530) Bool)

(assert (=> start!51768 (array_inv!12834 a!3118)))

(declare-fun b!566052 () Bool)

(declare-fun res!357167 () Bool)

(assert (=> b!566052 (=> (not res!357167) (not e!325775))))

(declare-datatypes ((List!11193 0))(
  ( (Nil!11190) (Cons!11189 (h!12195 (_ BitVec 64)) (t!17429 List!11193)) )
))
(declare-fun arrayNoDuplicates!0 (array!35530 (_ BitVec 32) List!11193) Bool)

(assert (=> b!566052 (= res!357167 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11190))))

(declare-fun b!566053 () Bool)

(declare-fun res!357171 () Bool)

(assert (=> b!566053 (=> (not res!357171) (not e!325775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35530 (_ BitVec 32)) Bool)

(assert (=> b!566053 (= res!357171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566054 () Bool)

(declare-fun e!325776 () Bool)

(assert (=> b!566054 (= e!325776 (= (seekEntryOrOpen!0 (select (arr!17060 a!3118) j!142) a!3118 mask!3119) (Found!5516 j!142)))))

(declare-fun b!566055 () Bool)

(declare-fun res!357169 () Bool)

(assert (=> b!566055 (=> (not res!357169) (not e!325774))))

(assert (=> b!566055 (= res!357169 (and (= (size!17424 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17424 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17424 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566056 () Bool)

(declare-fun res!357168 () Bool)

(assert (=> b!566056 (=> (not res!357168) (not e!325774))))

(assert (=> b!566056 (= res!357168 (validKeyInArray!0 (select (arr!17060 a!3118) j!142)))))

(declare-fun b!566057 () Bool)

(assert (=> b!566057 (= e!325775 (not true))))

(assert (=> b!566057 e!325776))

(declare-fun res!357174 () Bool)

(assert (=> b!566057 (=> (not res!357174) (not e!325776))))

(assert (=> b!566057 (= res!357174 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17734 0))(
  ( (Unit!17735) )
))
(declare-fun lt!258010 () Unit!17734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17734)

(assert (=> b!566057 (= lt!258010 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51768 res!357172) b!566055))

(assert (= (and b!566055 res!357169) b!566056))

(assert (= (and b!566056 res!357168) b!566050))

(assert (= (and b!566050 res!357176) b!566051))

(assert (= (and b!566051 res!357175) b!566048))

(assert (= (and b!566048 res!357173) b!566053))

(assert (= (and b!566053 res!357171) b!566052))

(assert (= (and b!566052 res!357167) b!566049))

(assert (= (and b!566049 res!357170) b!566057))

(assert (= (and b!566057 res!357174) b!566054))

(declare-fun m!544705 () Bool)

(assert (=> b!566049 m!544705))

(declare-fun m!544707 () Bool)

(assert (=> b!566049 m!544707))

(assert (=> b!566049 m!544705))

(declare-fun m!544709 () Bool)

(assert (=> b!566049 m!544709))

(declare-fun m!544711 () Bool)

(assert (=> b!566049 m!544711))

(assert (=> b!566049 m!544709))

(declare-fun m!544713 () Bool)

(assert (=> b!566049 m!544713))

(assert (=> b!566049 m!544707))

(assert (=> b!566049 m!544705))

(declare-fun m!544715 () Bool)

(assert (=> b!566049 m!544715))

(declare-fun m!544717 () Bool)

(assert (=> b!566049 m!544717))

(assert (=> b!566049 m!544709))

(assert (=> b!566049 m!544711))

(declare-fun m!544719 () Bool)

(assert (=> b!566051 m!544719))

(declare-fun m!544721 () Bool)

(assert (=> start!51768 m!544721))

(declare-fun m!544723 () Bool)

(assert (=> start!51768 m!544723))

(declare-fun m!544725 () Bool)

(assert (=> b!566048 m!544725))

(declare-fun m!544727 () Bool)

(assert (=> b!566050 m!544727))

(declare-fun m!544729 () Bool)

(assert (=> b!566052 m!544729))

(declare-fun m!544731 () Bool)

(assert (=> b!566053 m!544731))

(assert (=> b!566056 m!544705))

(assert (=> b!566056 m!544705))

(declare-fun m!544733 () Bool)

(assert (=> b!566056 m!544733))

(declare-fun m!544735 () Bool)

(assert (=> b!566057 m!544735))

(declare-fun m!544737 () Bool)

(assert (=> b!566057 m!544737))

(assert (=> b!566054 m!544705))

(assert (=> b!566054 m!544705))

(declare-fun m!544739 () Bool)

(assert (=> b!566054 m!544739))

(push 1)

