; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50522 () Bool)

(assert start!50522)

(declare-fun e!318476 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!551879 () Bool)

(declare-datatypes ((array!34758 0))(
  ( (array!34759 (arr!16686 (Array (_ BitVec 32) (_ BitVec 64))) (size!17050 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34758)

(declare-datatypes ((SeekEntryResult!5142 0))(
  ( (MissingZero!5142 (index!22795 (_ BitVec 32))) (Found!5142 (index!22796 (_ BitVec 32))) (Intermediate!5142 (undefined!5954 Bool) (index!22797 (_ BitVec 32)) (x!51757 (_ BitVec 32))) (Undefined!5142) (MissingVacant!5142 (index!22798 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34758 (_ BitVec 32)) SeekEntryResult!5142)

(assert (=> b!551879 (= e!318476 (= (seekEntryOrOpen!0 (select (arr!16686 a!3118) j!142) a!3118 mask!3119) (Found!5142 j!142)))))

(declare-fun b!551880 () Bool)

(declare-fun res!344628 () Bool)

(declare-fun e!318475 () Bool)

(assert (=> b!551880 (=> (not res!344628) (not e!318475))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34758 (_ BitVec 32)) SeekEntryResult!5142)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551880 (= res!344628 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16686 a!3118) j!142) mask!3119) (select (arr!16686 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16686 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16686 a!3118) i!1132 k!1914) j!142) (array!34759 (store (arr!16686 a!3118) i!1132 k!1914) (size!17050 a!3118)) mask!3119)))))

(declare-fun b!551881 () Bool)

(declare-fun res!344625 () Bool)

(declare-fun e!318478 () Bool)

(assert (=> b!551881 (=> (not res!344625) (not e!318478))))

(assert (=> b!551881 (= res!344625 (and (= (size!17050 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17050 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17050 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551882 () Bool)

(declare-fun res!344629 () Bool)

(assert (=> b!551882 (=> (not res!344629) (not e!318475))))

(declare-datatypes ((List!10819 0))(
  ( (Nil!10816) (Cons!10815 (h!11797 (_ BitVec 64)) (t!17055 List!10819)) )
))
(declare-fun arrayNoDuplicates!0 (array!34758 (_ BitVec 32) List!10819) Bool)

(assert (=> b!551882 (= res!344629 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10816))))

(declare-fun b!551883 () Bool)

(declare-fun res!344633 () Bool)

(assert (=> b!551883 (=> (not res!344633) (not e!318478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551883 (= res!344633 (validKeyInArray!0 k!1914))))

(declare-fun b!551885 () Bool)

(declare-fun res!344630 () Bool)

(assert (=> b!551885 (=> (not res!344630) (not e!318475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34758 (_ BitVec 32)) Bool)

(assert (=> b!551885 (= res!344630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551886 () Bool)

(assert (=> b!551886 (= e!318475 (not true))))

(assert (=> b!551886 e!318476))

(declare-fun res!344627 () Bool)

(assert (=> b!551886 (=> (not res!344627) (not e!318476))))

(assert (=> b!551886 (= res!344627 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17058 0))(
  ( (Unit!17059) )
))
(declare-fun lt!250990 () Unit!17058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34758 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17058)

(assert (=> b!551886 (= lt!250990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551887 () Bool)

(declare-fun res!344624 () Bool)

(assert (=> b!551887 (=> (not res!344624) (not e!318478))))

(declare-fun arrayContainsKey!0 (array!34758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551887 (= res!344624 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551888 () Bool)

(declare-fun res!344631 () Bool)

(assert (=> b!551888 (=> (not res!344631) (not e!318478))))

(assert (=> b!551888 (= res!344631 (validKeyInArray!0 (select (arr!16686 a!3118) j!142)))))

(declare-fun res!344626 () Bool)

(assert (=> start!50522 (=> (not res!344626) (not e!318478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50522 (= res!344626 (validMask!0 mask!3119))))

(assert (=> start!50522 e!318478))

(assert (=> start!50522 true))

(declare-fun array_inv!12460 (array!34758) Bool)

(assert (=> start!50522 (array_inv!12460 a!3118)))

(declare-fun b!551884 () Bool)

(assert (=> b!551884 (= e!318478 e!318475)))

(declare-fun res!344632 () Bool)

(assert (=> b!551884 (=> (not res!344632) (not e!318475))))

(declare-fun lt!250991 () SeekEntryResult!5142)

(assert (=> b!551884 (= res!344632 (or (= lt!250991 (MissingZero!5142 i!1132)) (= lt!250991 (MissingVacant!5142 i!1132))))))

(assert (=> b!551884 (= lt!250991 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50522 res!344626) b!551881))

(assert (= (and b!551881 res!344625) b!551888))

(assert (= (and b!551888 res!344631) b!551883))

(assert (= (and b!551883 res!344633) b!551887))

(assert (= (and b!551887 res!344624) b!551884))

(assert (= (and b!551884 res!344632) b!551885))

(assert (= (and b!551885 res!344630) b!551882))

(assert (= (and b!551882 res!344629) b!551880))

(assert (= (and b!551880 res!344628) b!551886))

(assert (= (and b!551886 res!344627) b!551879))

(declare-fun m!528877 () Bool)

(assert (=> b!551879 m!528877))

(assert (=> b!551879 m!528877))

(declare-fun m!528879 () Bool)

(assert (=> b!551879 m!528879))

(assert (=> b!551880 m!528877))

(declare-fun m!528881 () Bool)

(assert (=> b!551880 m!528881))

(assert (=> b!551880 m!528877))

(declare-fun m!528883 () Bool)

(assert (=> b!551880 m!528883))

(declare-fun m!528885 () Bool)

(assert (=> b!551880 m!528885))

(assert (=> b!551880 m!528883))

(declare-fun m!528887 () Bool)

(assert (=> b!551880 m!528887))

(assert (=> b!551880 m!528881))

(assert (=> b!551880 m!528877))

(declare-fun m!528889 () Bool)

(assert (=> b!551880 m!528889))

(declare-fun m!528891 () Bool)

(assert (=> b!551880 m!528891))

(assert (=> b!551880 m!528883))

(assert (=> b!551880 m!528885))

(assert (=> b!551888 m!528877))

(assert (=> b!551888 m!528877))

(declare-fun m!528893 () Bool)

(assert (=> b!551888 m!528893))

(declare-fun m!528895 () Bool)

(assert (=> b!551886 m!528895))

(declare-fun m!528897 () Bool)

(assert (=> b!551886 m!528897))

(declare-fun m!528899 () Bool)

(assert (=> b!551882 m!528899))

(declare-fun m!528901 () Bool)

(assert (=> start!50522 m!528901))

(declare-fun m!528903 () Bool)

(assert (=> start!50522 m!528903))

(declare-fun m!528905 () Bool)

(assert (=> b!551883 m!528905))

(declare-fun m!528907 () Bool)

(assert (=> b!551884 m!528907))

(declare-fun m!528909 () Bool)

(assert (=> b!551885 m!528909))

(declare-fun m!528911 () Bool)

(assert (=> b!551887 m!528911))

(push 1)

