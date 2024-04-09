; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50270 () Bool)

(assert start!50270)

(declare-fun b!549926 () Bool)

(declare-fun res!343221 () Bool)

(declare-fun e!317477 () Bool)

(assert (=> b!549926 (=> (not res!343221) (not e!317477))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549926 (= res!343221 (validKeyInArray!0 k!1914))))

(declare-fun b!549927 () Bool)

(declare-fun res!343226 () Bool)

(assert (=> b!549927 (=> (not res!343226) (not e!317477))))

(declare-datatypes ((array!34677 0))(
  ( (array!34678 (arr!16650 (Array (_ BitVec 32) (_ BitVec 64))) (size!17014 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34677)

(declare-fun arrayContainsKey!0 (array!34677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549927 (= res!343226 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549928 () Bool)

(declare-fun e!317478 () Bool)

(assert (=> b!549928 (= e!317477 e!317478)))

(declare-fun res!343228 () Bool)

(assert (=> b!549928 (=> (not res!343228) (not e!317478))))

(declare-datatypes ((SeekEntryResult!5106 0))(
  ( (MissingZero!5106 (index!22651 (_ BitVec 32))) (Found!5106 (index!22652 (_ BitVec 32))) (Intermediate!5106 (undefined!5918 Bool) (index!22653 (_ BitVec 32)) (x!51607 (_ BitVec 32))) (Undefined!5106) (MissingVacant!5106 (index!22654 (_ BitVec 32))) )
))
(declare-fun lt!250378 () SeekEntryResult!5106)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549928 (= res!343228 (or (= lt!250378 (MissingZero!5106 i!1132)) (= lt!250378 (MissingVacant!5106 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34677 (_ BitVec 32)) SeekEntryResult!5106)

(assert (=> b!549928 (= lt!250378 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549929 () Bool)

(declare-fun res!343227 () Bool)

(assert (=> b!549929 (=> (not res!343227) (not e!317477))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549929 (= res!343227 (validKeyInArray!0 (select (arr!16650 a!3118) j!142)))))

(declare-fun res!343229 () Bool)

(assert (=> start!50270 (=> (not res!343229) (not e!317477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50270 (= res!343229 (validMask!0 mask!3119))))

(assert (=> start!50270 e!317477))

(assert (=> start!50270 true))

(declare-fun array_inv!12424 (array!34677) Bool)

(assert (=> start!50270 (array_inv!12424 a!3118)))

(declare-fun b!549930 () Bool)

(declare-fun res!343222 () Bool)

(assert (=> b!549930 (=> (not res!343222) (not e!317478))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34677 (_ BitVec 32)) SeekEntryResult!5106)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549930 (= res!343222 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16650 a!3118) j!142) mask!3119) (select (arr!16650 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16650 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16650 a!3118) i!1132 k!1914) j!142) (array!34678 (store (arr!16650 a!3118) i!1132 k!1914) (size!17014 a!3118)) mask!3119)))))

(declare-fun b!549931 () Bool)

(assert (=> b!549931 (= e!317478 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!317479 () Bool)

(assert (=> b!549931 e!317479))

(declare-fun res!343220 () Bool)

(assert (=> b!549931 (=> (not res!343220) (not e!317479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34677 (_ BitVec 32)) Bool)

(assert (=> b!549931 (= res!343220 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!16986 0))(
  ( (Unit!16987) )
))
(declare-fun lt!250379 () Unit!16986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16986)

(assert (=> b!549931 (= lt!250379 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549932 () Bool)

(assert (=> b!549932 (= e!317479 (= (seekEntryOrOpen!0 (select (arr!16650 a!3118) j!142) a!3118 mask!3119) (Found!5106 j!142)))))

(declare-fun b!549933 () Bool)

(declare-fun res!343225 () Bool)

(assert (=> b!549933 (=> (not res!343225) (not e!317477))))

(assert (=> b!549933 (= res!343225 (and (= (size!17014 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17014 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17014 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549934 () Bool)

(declare-fun res!343223 () Bool)

(assert (=> b!549934 (=> (not res!343223) (not e!317478))))

(assert (=> b!549934 (= res!343223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549935 () Bool)

(declare-fun res!343224 () Bool)

(assert (=> b!549935 (=> (not res!343224) (not e!317478))))

(declare-datatypes ((List!10783 0))(
  ( (Nil!10780) (Cons!10779 (h!11752 (_ BitVec 64)) (t!17019 List!10783)) )
))
(declare-fun arrayNoDuplicates!0 (array!34677 (_ BitVec 32) List!10783) Bool)

(assert (=> b!549935 (= res!343224 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10780))))

(assert (= (and start!50270 res!343229) b!549933))

(assert (= (and b!549933 res!343225) b!549929))

(assert (= (and b!549929 res!343227) b!549926))

(assert (= (and b!549926 res!343221) b!549927))

(assert (= (and b!549927 res!343226) b!549928))

(assert (= (and b!549928 res!343228) b!549934))

(assert (= (and b!549934 res!343223) b!549935))

(assert (= (and b!549935 res!343224) b!549930))

(assert (= (and b!549930 res!343222) b!549931))

(assert (= (and b!549931 res!343220) b!549932))

(declare-fun m!526981 () Bool)

(assert (=> b!549929 m!526981))

(assert (=> b!549929 m!526981))

(declare-fun m!526983 () Bool)

(assert (=> b!549929 m!526983))

(declare-fun m!526985 () Bool)

(assert (=> b!549931 m!526985))

(declare-fun m!526987 () Bool)

(assert (=> b!549931 m!526987))

(declare-fun m!526989 () Bool)

(assert (=> b!549928 m!526989))

(declare-fun m!526991 () Bool)

(assert (=> b!549935 m!526991))

(declare-fun m!526993 () Bool)

(assert (=> b!549926 m!526993))

(declare-fun m!526995 () Bool)

(assert (=> b!549927 m!526995))

(assert (=> b!549932 m!526981))

(assert (=> b!549932 m!526981))

(declare-fun m!526997 () Bool)

(assert (=> b!549932 m!526997))

(declare-fun m!526999 () Bool)

(assert (=> b!549934 m!526999))

(assert (=> b!549930 m!526981))

(declare-fun m!527001 () Bool)

(assert (=> b!549930 m!527001))

(assert (=> b!549930 m!526981))

(declare-fun m!527003 () Bool)

(assert (=> b!549930 m!527003))

(declare-fun m!527005 () Bool)

(assert (=> b!549930 m!527005))

(assert (=> b!549930 m!527003))

(declare-fun m!527007 () Bool)

(assert (=> b!549930 m!527007))

(assert (=> b!549930 m!527001))

(assert (=> b!549930 m!526981))

(declare-fun m!527009 () Bool)

(assert (=> b!549930 m!527009))

(declare-fun m!527011 () Bool)

(assert (=> b!549930 m!527011))

(assert (=> b!549930 m!527003))

(assert (=> b!549930 m!527005))

(declare-fun m!527013 () Bool)

(assert (=> start!50270 m!527013))

(declare-fun m!527015 () Bool)

(assert (=> start!50270 m!527015))

(push 1)

