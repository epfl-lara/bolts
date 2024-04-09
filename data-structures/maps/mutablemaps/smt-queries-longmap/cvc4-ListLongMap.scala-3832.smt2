; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52632 () Bool)

(assert start!52632)

(declare-fun b!573929 () Bool)

(declare-fun e!330199 () Bool)

(declare-fun e!330200 () Bool)

(assert (=> b!573929 (= e!330199 e!330200)))

(declare-fun res!363046 () Bool)

(assert (=> b!573929 (=> res!363046 e!330200)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!262163 () (_ BitVec 64))

(declare-datatypes ((array!35857 0))(
  ( (array!35858 (arr!17210 (Array (_ BitVec 32) (_ BitVec 64))) (size!17574 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35857)

(assert (=> b!573929 (= res!363046 (or (= lt!262163 (select (arr!17210 a!3118) j!142)) (= lt!262163 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5666 0))(
  ( (MissingZero!5666 (index!24891 (_ BitVec 32))) (Found!5666 (index!24892 (_ BitVec 32))) (Intermediate!5666 (undefined!6478 Bool) (index!24893 (_ BitVec 32)) (x!53796 (_ BitVec 32))) (Undefined!5666) (MissingVacant!5666 (index!24894 (_ BitVec 32))) )
))
(declare-fun lt!262161 () SeekEntryResult!5666)

(assert (=> b!573929 (= lt!262163 (select (arr!17210 a!3118) (index!24893 lt!262161)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!262164 () (_ BitVec 64))

(declare-fun e!330203 () Bool)

(declare-fun lt!262165 () array!35857)

(declare-fun b!573930 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35857 (_ BitVec 32)) SeekEntryResult!5666)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35857 (_ BitVec 32)) SeekEntryResult!5666)

(assert (=> b!573930 (= e!330203 (= (seekEntryOrOpen!0 lt!262164 lt!262165 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53796 lt!262161) (index!24893 lt!262161) (index!24893 lt!262161) lt!262164 lt!262165 mask!3119)))))

(declare-fun b!573931 () Bool)

(declare-fun res!363053 () Bool)

(declare-fun e!330205 () Bool)

(assert (=> b!573931 (=> (not res!363053) (not e!330205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35857 (_ BitVec 32)) Bool)

(assert (=> b!573931 (= res!363053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!573932 () Bool)

(declare-fun res!363049 () Bool)

(declare-fun e!330201 () Bool)

(assert (=> b!573932 (=> (not res!363049) (not e!330201))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!573932 (= res!363049 (validKeyInArray!0 k!1914))))

(declare-fun b!573933 () Bool)

(declare-fun res!363047 () Bool)

(assert (=> b!573933 (=> (not res!363047) (not e!330201))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!573933 (= res!363047 (and (= (size!17574 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17574 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17574 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!573934 () Bool)

(declare-fun res!363042 () Bool)

(assert (=> b!573934 (=> (not res!363042) (not e!330201))))

(declare-fun arrayContainsKey!0 (array!35857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!573934 (= res!363042 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!573935 () Bool)

(assert (=> b!573935 (= e!330200 e!330203)))

(declare-fun res!363048 () Bool)

(assert (=> b!573935 (=> (not res!363048) (not e!330203))))

(declare-fun lt!262167 () SeekEntryResult!5666)

(assert (=> b!573935 (= res!363048 (= lt!262167 (seekKeyOrZeroReturnVacant!0 (x!53796 lt!262161) (index!24893 lt!262161) (index!24893 lt!262161) (select (arr!17210 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!573936 () Bool)

(declare-fun e!330202 () Bool)

(assert (=> b!573936 (= e!330205 e!330202)))

(declare-fun res!363050 () Bool)

(assert (=> b!573936 (=> (not res!363050) (not e!330202))))

(declare-fun lt!262168 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35857 (_ BitVec 32)) SeekEntryResult!5666)

(assert (=> b!573936 (= res!363050 (= lt!262161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262168 lt!262164 lt!262165 mask!3119)))))

(declare-fun lt!262162 () (_ BitVec 32))

(assert (=> b!573936 (= lt!262161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262162 (select (arr!17210 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573936 (= lt!262168 (toIndex!0 lt!262164 mask!3119))))

(assert (=> b!573936 (= lt!262164 (select (store (arr!17210 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!573936 (= lt!262162 (toIndex!0 (select (arr!17210 a!3118) j!142) mask!3119))))

(assert (=> b!573936 (= lt!262165 (array!35858 (store (arr!17210 a!3118) i!1132 k!1914) (size!17574 a!3118)))))

(declare-fun b!573937 () Bool)

(declare-fun e!330198 () Bool)

(assert (=> b!573937 (= e!330198 e!330199)))

(declare-fun res!363052 () Bool)

(assert (=> b!573937 (=> res!363052 e!330199)))

(assert (=> b!573937 (= res!363052 (or (undefined!6478 lt!262161) (not (is-Intermediate!5666 lt!262161))))))

(declare-fun res!363043 () Bool)

(assert (=> start!52632 (=> (not res!363043) (not e!330201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52632 (= res!363043 (validMask!0 mask!3119))))

(assert (=> start!52632 e!330201))

(assert (=> start!52632 true))

(declare-fun array_inv!12984 (array!35857) Bool)

(assert (=> start!52632 (array_inv!12984 a!3118)))

(declare-fun b!573938 () Bool)

(declare-fun res!363045 () Bool)

(assert (=> b!573938 (=> (not res!363045) (not e!330205))))

(declare-datatypes ((List!11343 0))(
  ( (Nil!11340) (Cons!11339 (h!12372 (_ BitVec 64)) (t!17579 List!11343)) )
))
(declare-fun arrayNoDuplicates!0 (array!35857 (_ BitVec 32) List!11343) Bool)

(assert (=> b!573938 (= res!363045 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11340))))

(declare-fun b!573939 () Bool)

(declare-fun res!363041 () Bool)

(assert (=> b!573939 (=> (not res!363041) (not e!330201))))

(assert (=> b!573939 (= res!363041 (validKeyInArray!0 (select (arr!17210 a!3118) j!142)))))

(declare-fun b!573940 () Bool)

(assert (=> b!573940 (= e!330201 e!330205)))

(declare-fun res!363051 () Bool)

(assert (=> b!573940 (=> (not res!363051) (not e!330205))))

(declare-fun lt!262166 () SeekEntryResult!5666)

(assert (=> b!573940 (= res!363051 (or (= lt!262166 (MissingZero!5666 i!1132)) (= lt!262166 (MissingVacant!5666 i!1132))))))

(assert (=> b!573940 (= lt!262166 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!573941 () Bool)

(assert (=> b!573941 (= e!330202 (not true))))

(assert (=> b!573941 e!330198))

(declare-fun res!363044 () Bool)

(assert (=> b!573941 (=> (not res!363044) (not e!330198))))

(assert (=> b!573941 (= res!363044 (= lt!262167 (Found!5666 j!142)))))

(assert (=> b!573941 (= lt!262167 (seekEntryOrOpen!0 (select (arr!17210 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!573941 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18034 0))(
  ( (Unit!18035) )
))
(declare-fun lt!262169 () Unit!18034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18034)

(assert (=> b!573941 (= lt!262169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52632 res!363043) b!573933))

(assert (= (and b!573933 res!363047) b!573939))

(assert (= (and b!573939 res!363041) b!573932))

(assert (= (and b!573932 res!363049) b!573934))

(assert (= (and b!573934 res!363042) b!573940))

(assert (= (and b!573940 res!363051) b!573931))

(assert (= (and b!573931 res!363053) b!573938))

(assert (= (and b!573938 res!363045) b!573936))

(assert (= (and b!573936 res!363050) b!573941))

(assert (= (and b!573941 res!363044) b!573937))

(assert (= (and b!573937 (not res!363052)) b!573929))

(assert (= (and b!573929 (not res!363046)) b!573935))

(assert (= (and b!573935 res!363048) b!573930))

(declare-fun m!552875 () Bool)

(assert (=> b!573940 m!552875))

(declare-fun m!552877 () Bool)

(assert (=> b!573939 m!552877))

(assert (=> b!573939 m!552877))

(declare-fun m!552879 () Bool)

(assert (=> b!573939 m!552879))

(declare-fun m!552881 () Bool)

(assert (=> b!573932 m!552881))

(declare-fun m!552883 () Bool)

(assert (=> b!573934 m!552883))

(declare-fun m!552885 () Bool)

(assert (=> b!573938 m!552885))

(declare-fun m!552887 () Bool)

(assert (=> b!573931 m!552887))

(assert (=> b!573941 m!552877))

(assert (=> b!573941 m!552877))

(declare-fun m!552889 () Bool)

(assert (=> b!573941 m!552889))

(declare-fun m!552891 () Bool)

(assert (=> b!573941 m!552891))

(declare-fun m!552893 () Bool)

(assert (=> b!573941 m!552893))

(assert (=> b!573929 m!552877))

(declare-fun m!552895 () Bool)

(assert (=> b!573929 m!552895))

(declare-fun m!552897 () Bool)

(assert (=> start!52632 m!552897))

(declare-fun m!552899 () Bool)

(assert (=> start!52632 m!552899))

(assert (=> b!573935 m!552877))

(assert (=> b!573935 m!552877))

(declare-fun m!552901 () Bool)

(assert (=> b!573935 m!552901))

(declare-fun m!552903 () Bool)

(assert (=> b!573936 m!552903))

(assert (=> b!573936 m!552877))

(declare-fun m!552905 () Bool)

(assert (=> b!573936 m!552905))

(assert (=> b!573936 m!552877))

(declare-fun m!552907 () Bool)

(assert (=> b!573936 m!552907))

(assert (=> b!573936 m!552877))

(declare-fun m!552909 () Bool)

(assert (=> b!573936 m!552909))

(declare-fun m!552911 () Bool)

(assert (=> b!573936 m!552911))

(declare-fun m!552913 () Bool)

(assert (=> b!573936 m!552913))

(declare-fun m!552915 () Bool)

(assert (=> b!573930 m!552915))

(declare-fun m!552917 () Bool)

(assert (=> b!573930 m!552917))

(push 1)

