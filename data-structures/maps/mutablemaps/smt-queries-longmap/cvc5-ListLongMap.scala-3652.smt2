; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50426 () Bool)

(assert start!50426)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!551048 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!318076 () Bool)

(declare-datatypes ((array!34719 0))(
  ( (array!34720 (arr!16668 (Array (_ BitVec 32) (_ BitVec 64))) (size!17032 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34719)

(declare-datatypes ((SeekEntryResult!5124 0))(
  ( (MissingZero!5124 (index!22723 (_ BitVec 32))) (Found!5124 (index!22724 (_ BitVec 32))) (Intermediate!5124 (undefined!5936 Bool) (index!22725 (_ BitVec 32)) (x!51685 (_ BitVec 32))) (Undefined!5124) (MissingVacant!5124 (index!22726 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34719 (_ BitVec 32)) SeekEntryResult!5124)

(assert (=> b!551048 (= e!318076 (= (seekEntryOrOpen!0 (select (arr!16668 a!3118) j!142) a!3118 mask!3119) (Found!5124 j!142)))))

(declare-fun b!551049 () Bool)

(declare-fun res!343984 () Bool)

(declare-fun e!318074 () Bool)

(assert (=> b!551049 (=> (not res!343984) (not e!318074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34719 (_ BitVec 32)) Bool)

(assert (=> b!551049 (= res!343984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551050 () Bool)

(assert (=> b!551050 (= e!318074 (not true))))

(assert (=> b!551050 e!318076))

(declare-fun res!343978 () Bool)

(assert (=> b!551050 (=> (not res!343978) (not e!318076))))

(assert (=> b!551050 (= res!343978 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17022 0))(
  ( (Unit!17023) )
))
(declare-fun lt!250754 () Unit!17022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17022)

(assert (=> b!551050 (= lt!250754 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551051 () Bool)

(declare-fun res!343980 () Bool)

(assert (=> b!551051 (=> (not res!343980) (not e!318074))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34719 (_ BitVec 32)) SeekEntryResult!5124)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551051 (= res!343980 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16668 a!3118) j!142) mask!3119) (select (arr!16668 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16668 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16668 a!3118) i!1132 k!1914) j!142) (array!34720 (store (arr!16668 a!3118) i!1132 k!1914) (size!17032 a!3118)) mask!3119)))))

(declare-fun b!551052 () Bool)

(declare-fun res!343976 () Bool)

(declare-fun e!318075 () Bool)

(assert (=> b!551052 (=> (not res!343976) (not e!318075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551052 (= res!343976 (validKeyInArray!0 k!1914))))

(declare-fun res!343979 () Bool)

(assert (=> start!50426 (=> (not res!343979) (not e!318075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50426 (= res!343979 (validMask!0 mask!3119))))

(assert (=> start!50426 e!318075))

(assert (=> start!50426 true))

(declare-fun array_inv!12442 (array!34719) Bool)

(assert (=> start!50426 (array_inv!12442 a!3118)))

(declare-fun b!551053 () Bool)

(declare-fun res!343977 () Bool)

(assert (=> b!551053 (=> (not res!343977) (not e!318074))))

(declare-datatypes ((List!10801 0))(
  ( (Nil!10798) (Cons!10797 (h!11776 (_ BitVec 64)) (t!17037 List!10801)) )
))
(declare-fun arrayNoDuplicates!0 (array!34719 (_ BitVec 32) List!10801) Bool)

(assert (=> b!551053 (= res!343977 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10798))))

(declare-fun b!551054 () Bool)

(declare-fun res!343982 () Bool)

(assert (=> b!551054 (=> (not res!343982) (not e!318075))))

(declare-fun arrayContainsKey!0 (array!34719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551054 (= res!343982 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551055 () Bool)

(declare-fun res!343985 () Bool)

(assert (=> b!551055 (=> (not res!343985) (not e!318075))))

(assert (=> b!551055 (= res!343985 (and (= (size!17032 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17032 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17032 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551056 () Bool)

(declare-fun res!343983 () Bool)

(assert (=> b!551056 (=> (not res!343983) (not e!318075))))

(assert (=> b!551056 (= res!343983 (validKeyInArray!0 (select (arr!16668 a!3118) j!142)))))

(declare-fun b!551057 () Bool)

(assert (=> b!551057 (= e!318075 e!318074)))

(declare-fun res!343981 () Bool)

(assert (=> b!551057 (=> (not res!343981) (not e!318074))))

(declare-fun lt!250753 () SeekEntryResult!5124)

(assert (=> b!551057 (= res!343981 (or (= lt!250753 (MissingZero!5124 i!1132)) (= lt!250753 (MissingVacant!5124 i!1132))))))

(assert (=> b!551057 (= lt!250753 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50426 res!343979) b!551055))

(assert (= (and b!551055 res!343985) b!551056))

(assert (= (and b!551056 res!343983) b!551052))

(assert (= (and b!551052 res!343976) b!551054))

(assert (= (and b!551054 res!343982) b!551057))

(assert (= (and b!551057 res!343981) b!551049))

(assert (= (and b!551049 res!343984) b!551053))

(assert (= (and b!551053 res!343977) b!551051))

(assert (= (and b!551051 res!343980) b!551050))

(assert (= (and b!551050 res!343978) b!551048))

(declare-fun m!528031 () Bool)

(assert (=> b!551052 m!528031))

(declare-fun m!528033 () Bool)

(assert (=> start!50426 m!528033))

(declare-fun m!528035 () Bool)

(assert (=> start!50426 m!528035))

(declare-fun m!528037 () Bool)

(assert (=> b!551050 m!528037))

(declare-fun m!528039 () Bool)

(assert (=> b!551050 m!528039))

(declare-fun m!528041 () Bool)

(assert (=> b!551049 m!528041))

(declare-fun m!528043 () Bool)

(assert (=> b!551057 m!528043))

(declare-fun m!528045 () Bool)

(assert (=> b!551056 m!528045))

(assert (=> b!551056 m!528045))

(declare-fun m!528047 () Bool)

(assert (=> b!551056 m!528047))

(assert (=> b!551051 m!528045))

(declare-fun m!528049 () Bool)

(assert (=> b!551051 m!528049))

(assert (=> b!551051 m!528045))

(declare-fun m!528051 () Bool)

(assert (=> b!551051 m!528051))

(declare-fun m!528053 () Bool)

(assert (=> b!551051 m!528053))

(assert (=> b!551051 m!528051))

(declare-fun m!528055 () Bool)

(assert (=> b!551051 m!528055))

(assert (=> b!551051 m!528049))

(assert (=> b!551051 m!528045))

(declare-fun m!528057 () Bool)

(assert (=> b!551051 m!528057))

(declare-fun m!528059 () Bool)

(assert (=> b!551051 m!528059))

(assert (=> b!551051 m!528051))

(assert (=> b!551051 m!528053))

(declare-fun m!528061 () Bool)

(assert (=> b!551053 m!528061))

(declare-fun m!528063 () Bool)

(assert (=> b!551054 m!528063))

(assert (=> b!551048 m!528045))

(assert (=> b!551048 m!528045))

(declare-fun m!528065 () Bool)

(assert (=> b!551048 m!528065))

(push 1)

