; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50732 () Bool)

(assert start!50732)

(declare-fun b!554436 () Bool)

(declare-fun res!347000 () Bool)

(declare-fun e!319671 () Bool)

(assert (=> b!554436 (=> (not res!347000) (not e!319671))))

(declare-datatypes ((array!34911 0))(
  ( (array!34912 (arr!16761 (Array (_ BitVec 32) (_ BitVec 64))) (size!17125 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34911)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34911 (_ BitVec 32)) Bool)

(assert (=> b!554436 (= res!347000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554437 () Bool)

(declare-fun res!346999 () Bool)

(declare-fun e!319670 () Bool)

(assert (=> b!554437 (=> (not res!346999) (not e!319670))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554437 (= res!346999 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554438 () Bool)

(assert (=> b!554438 (= e!319670 e!319671)))

(declare-fun res!347005 () Bool)

(assert (=> b!554438 (=> (not res!347005) (not e!319671))))

(declare-datatypes ((SeekEntryResult!5217 0))(
  ( (MissingZero!5217 (index!23095 (_ BitVec 32))) (Found!5217 (index!23096 (_ BitVec 32))) (Intermediate!5217 (undefined!6029 Bool) (index!23097 (_ BitVec 32)) (x!52038 (_ BitVec 32))) (Undefined!5217) (MissingVacant!5217 (index!23098 (_ BitVec 32))) )
))
(declare-fun lt!251840 () SeekEntryResult!5217)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554438 (= res!347005 (or (= lt!251840 (MissingZero!5217 i!1132)) (= lt!251840 (MissingVacant!5217 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34911 (_ BitVec 32)) SeekEntryResult!5217)

(assert (=> b!554438 (= lt!251840 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554439 () Bool)

(declare-fun e!319672 () Bool)

(assert (=> b!554439 (= e!319672 (not true))))

(declare-fun lt!251839 () SeekEntryResult!5217)

(declare-fun lt!251838 () SeekEntryResult!5217)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!554439 (and (= lt!251839 (Found!5217 j!142)) (or (undefined!6029 lt!251838) (not (is-Intermediate!5217 lt!251838)) (= (select (arr!16761 a!3118) (index!23097 lt!251838)) (select (arr!16761 a!3118) j!142)) (not (= (select (arr!16761 a!3118) (index!23097 lt!251838)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251839 (MissingZero!5217 (index!23097 lt!251838)))))))

(assert (=> b!554439 (= lt!251839 (seekEntryOrOpen!0 (select (arr!16761 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554439 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17208 0))(
  ( (Unit!17209) )
))
(declare-fun lt!251843 () Unit!17208)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34911 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17208)

(assert (=> b!554439 (= lt!251843 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554440 () Bool)

(assert (=> b!554440 (= e!319671 e!319672)))

(declare-fun res!347001 () Bool)

(assert (=> b!554440 (=> (not res!347001) (not e!319672))))

(declare-fun lt!251842 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34911 (_ BitVec 32)) SeekEntryResult!5217)

(assert (=> b!554440 (= res!347001 (= lt!251838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251842 (select (store (arr!16761 a!3118) i!1132 k!1914) j!142) (array!34912 (store (arr!16761 a!3118) i!1132 k!1914) (size!17125 a!3118)) mask!3119)))))

(declare-fun lt!251841 () (_ BitVec 32))

(assert (=> b!554440 (= lt!251838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251841 (select (arr!16761 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554440 (= lt!251842 (toIndex!0 (select (store (arr!16761 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554440 (= lt!251841 (toIndex!0 (select (arr!16761 a!3118) j!142) mask!3119))))

(declare-fun b!554441 () Bool)

(declare-fun res!346998 () Bool)

(assert (=> b!554441 (=> (not res!346998) (not e!319670))))

(assert (=> b!554441 (= res!346998 (and (= (size!17125 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17125 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17125 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554442 () Bool)

(declare-fun res!347002 () Bool)

(assert (=> b!554442 (=> (not res!347002) (not e!319670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554442 (= res!347002 (validKeyInArray!0 k!1914))))

(declare-fun b!554443 () Bool)

(declare-fun res!347003 () Bool)

(assert (=> b!554443 (=> (not res!347003) (not e!319670))))

(assert (=> b!554443 (= res!347003 (validKeyInArray!0 (select (arr!16761 a!3118) j!142)))))

(declare-fun b!554444 () Bool)

(declare-fun res!347006 () Bool)

(assert (=> b!554444 (=> (not res!347006) (not e!319671))))

(declare-datatypes ((List!10894 0))(
  ( (Nil!10891) (Cons!10890 (h!11875 (_ BitVec 64)) (t!17130 List!10894)) )
))
(declare-fun arrayNoDuplicates!0 (array!34911 (_ BitVec 32) List!10894) Bool)

(assert (=> b!554444 (= res!347006 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10891))))

(declare-fun res!347004 () Bool)

(assert (=> start!50732 (=> (not res!347004) (not e!319670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50732 (= res!347004 (validMask!0 mask!3119))))

(assert (=> start!50732 e!319670))

(assert (=> start!50732 true))

(declare-fun array_inv!12535 (array!34911) Bool)

(assert (=> start!50732 (array_inv!12535 a!3118)))

(assert (= (and start!50732 res!347004) b!554441))

(assert (= (and b!554441 res!346998) b!554443))

(assert (= (and b!554443 res!347003) b!554442))

(assert (= (and b!554442 res!347002) b!554437))

(assert (= (and b!554437 res!346999) b!554438))

(assert (= (and b!554438 res!347005) b!554436))

(assert (= (and b!554436 res!347000) b!554444))

(assert (= (and b!554444 res!347006) b!554440))

(assert (= (and b!554440 res!347001) b!554439))

(declare-fun m!531829 () Bool)

(assert (=> b!554444 m!531829))

(declare-fun m!531831 () Bool)

(assert (=> start!50732 m!531831))

(declare-fun m!531833 () Bool)

(assert (=> start!50732 m!531833))

(declare-fun m!531835 () Bool)

(assert (=> b!554442 m!531835))

(declare-fun m!531837 () Bool)

(assert (=> b!554437 m!531837))

(declare-fun m!531839 () Bool)

(assert (=> b!554440 m!531839))

(declare-fun m!531841 () Bool)

(assert (=> b!554440 m!531841))

(assert (=> b!554440 m!531839))

(declare-fun m!531843 () Bool)

(assert (=> b!554440 m!531843))

(declare-fun m!531845 () Bool)

(assert (=> b!554440 m!531845))

(assert (=> b!554440 m!531843))

(declare-fun m!531847 () Bool)

(assert (=> b!554440 m!531847))

(assert (=> b!554440 m!531839))

(declare-fun m!531849 () Bool)

(assert (=> b!554440 m!531849))

(assert (=> b!554440 m!531843))

(declare-fun m!531851 () Bool)

(assert (=> b!554440 m!531851))

(assert (=> b!554439 m!531839))

(declare-fun m!531853 () Bool)

(assert (=> b!554439 m!531853))

(declare-fun m!531855 () Bool)

(assert (=> b!554439 m!531855))

(declare-fun m!531857 () Bool)

(assert (=> b!554439 m!531857))

(assert (=> b!554439 m!531839))

(declare-fun m!531859 () Bool)

(assert (=> b!554439 m!531859))

(assert (=> b!554443 m!531839))

(assert (=> b!554443 m!531839))

(declare-fun m!531861 () Bool)

(assert (=> b!554443 m!531861))

(declare-fun m!531863 () Bool)

(assert (=> b!554438 m!531863))

(declare-fun m!531865 () Bool)

(assert (=> b!554436 m!531865))

(push 1)

