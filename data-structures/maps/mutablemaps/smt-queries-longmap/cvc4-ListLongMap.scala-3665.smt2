; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50628 () Bool)

(assert start!50628)

(declare-fun b!552869 () Bool)

(declare-fun res!345439 () Bool)

(declare-fun e!318976 () Bool)

(assert (=> b!552869 (=> (not res!345439) (not e!318976))))

(declare-datatypes ((array!34807 0))(
  ( (array!34808 (arr!16709 (Array (_ BitVec 32) (_ BitVec 64))) (size!17073 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34807)

(declare-datatypes ((List!10842 0))(
  ( (Nil!10839) (Cons!10838 (h!11823 (_ BitVec 64)) (t!17078 List!10842)) )
))
(declare-fun arrayNoDuplicates!0 (array!34807 (_ BitVec 32) List!10842) Bool)

(assert (=> b!552869 (= res!345439 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10839))))

(declare-fun b!552870 () Bool)

(declare-fun res!345434 () Bool)

(declare-fun e!318973 () Bool)

(assert (=> b!552870 (=> (not res!345434) (not e!318973))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552870 (= res!345434 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552871 () Bool)

(assert (=> b!552871 (= e!318973 e!318976)))

(declare-fun res!345431 () Bool)

(assert (=> b!552871 (=> (not res!345431) (not e!318976))))

(declare-datatypes ((SeekEntryResult!5165 0))(
  ( (MissingZero!5165 (index!22887 (_ BitVec 32))) (Found!5165 (index!22888 (_ BitVec 32))) (Intermediate!5165 (undefined!5977 Bool) (index!22889 (_ BitVec 32)) (x!51842 (_ BitVec 32))) (Undefined!5165) (MissingVacant!5165 (index!22890 (_ BitVec 32))) )
))
(declare-fun lt!251320 () SeekEntryResult!5165)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552871 (= res!345431 (or (= lt!251320 (MissingZero!5165 i!1132)) (= lt!251320 (MissingVacant!5165 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34807 (_ BitVec 32)) SeekEntryResult!5165)

(assert (=> b!552871 (= lt!251320 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!318975 () Bool)

(declare-fun b!552872 () Bool)

(assert (=> b!552872 (= e!318975 (= (seekEntryOrOpen!0 (select (arr!16709 a!3118) j!142) a!3118 mask!3119) (Found!5165 j!142)))))

(declare-fun res!345440 () Bool)

(assert (=> start!50628 (=> (not res!345440) (not e!318973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50628 (= res!345440 (validMask!0 mask!3119))))

(assert (=> start!50628 e!318973))

(assert (=> start!50628 true))

(declare-fun array_inv!12483 (array!34807) Bool)

(assert (=> start!50628 (array_inv!12483 a!3118)))

(declare-fun b!552873 () Bool)

(declare-fun res!345437 () Bool)

(assert (=> b!552873 (=> (not res!345437) (not e!318976))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34807 (_ BitVec 32)) SeekEntryResult!5165)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552873 (= res!345437 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16709 a!3118) j!142) mask!3119) (select (arr!16709 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16709 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16709 a!3118) i!1132 k!1914) j!142) (array!34808 (store (arr!16709 a!3118) i!1132 k!1914) (size!17073 a!3118)) mask!3119)))))

(declare-fun b!552874 () Bool)

(declare-fun res!345435 () Bool)

(assert (=> b!552874 (=> (not res!345435) (not e!318973))))

(assert (=> b!552874 (= res!345435 (and (= (size!17073 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17073 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17073 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552875 () Bool)

(assert (=> b!552875 (= e!318976 (not true))))

(assert (=> b!552875 e!318975))

(declare-fun res!345433 () Bool)

(assert (=> b!552875 (=> (not res!345433) (not e!318975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34807 (_ BitVec 32)) Bool)

(assert (=> b!552875 (= res!345433 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17104 0))(
  ( (Unit!17105) )
))
(declare-fun lt!251321 () Unit!17104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17104)

(assert (=> b!552875 (= lt!251321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552876 () Bool)

(declare-fun res!345436 () Bool)

(assert (=> b!552876 (=> (not res!345436) (not e!318976))))

(assert (=> b!552876 (= res!345436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552877 () Bool)

(declare-fun res!345432 () Bool)

(assert (=> b!552877 (=> (not res!345432) (not e!318973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552877 (= res!345432 (validKeyInArray!0 k!1914))))

(declare-fun b!552878 () Bool)

(declare-fun res!345438 () Bool)

(assert (=> b!552878 (=> (not res!345438) (not e!318973))))

(assert (=> b!552878 (= res!345438 (validKeyInArray!0 (select (arr!16709 a!3118) j!142)))))

(assert (= (and start!50628 res!345440) b!552874))

(assert (= (and b!552874 res!345435) b!552878))

(assert (= (and b!552878 res!345438) b!552877))

(assert (= (and b!552877 res!345432) b!552870))

(assert (= (and b!552870 res!345434) b!552871))

(assert (= (and b!552871 res!345431) b!552876))

(assert (= (and b!552876 res!345436) b!552869))

(assert (= (and b!552869 res!345439) b!552873))

(assert (= (and b!552873 res!345437) b!552875))

(assert (= (and b!552875 res!345433) b!552872))

(declare-fun m!529915 () Bool)

(assert (=> start!50628 m!529915))

(declare-fun m!529917 () Bool)

(assert (=> start!50628 m!529917))

(declare-fun m!529919 () Bool)

(assert (=> b!552875 m!529919))

(declare-fun m!529921 () Bool)

(assert (=> b!552875 m!529921))

(declare-fun m!529923 () Bool)

(assert (=> b!552873 m!529923))

(declare-fun m!529925 () Bool)

(assert (=> b!552873 m!529925))

(assert (=> b!552873 m!529923))

(declare-fun m!529927 () Bool)

(assert (=> b!552873 m!529927))

(declare-fun m!529929 () Bool)

(assert (=> b!552873 m!529929))

(assert (=> b!552873 m!529927))

(declare-fun m!529931 () Bool)

(assert (=> b!552873 m!529931))

(assert (=> b!552873 m!529925))

(assert (=> b!552873 m!529923))

(declare-fun m!529933 () Bool)

(assert (=> b!552873 m!529933))

(declare-fun m!529935 () Bool)

(assert (=> b!552873 m!529935))

(assert (=> b!552873 m!529927))

(assert (=> b!552873 m!529929))

(assert (=> b!552878 m!529923))

(assert (=> b!552878 m!529923))

(declare-fun m!529937 () Bool)

(assert (=> b!552878 m!529937))

(declare-fun m!529939 () Bool)

(assert (=> b!552871 m!529939))

(declare-fun m!529941 () Bool)

(assert (=> b!552869 m!529941))

(assert (=> b!552872 m!529923))

(assert (=> b!552872 m!529923))

(declare-fun m!529943 () Bool)

(assert (=> b!552872 m!529943))

(declare-fun m!529945 () Bool)

(assert (=> b!552870 m!529945))

(declare-fun m!529947 () Bool)

(assert (=> b!552877 m!529947))

(declare-fun m!529949 () Bool)

(assert (=> b!552876 m!529949))

(push 1)

