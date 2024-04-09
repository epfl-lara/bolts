; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50734 () Bool)

(assert start!50734)

(declare-fun b!554463 () Bool)

(declare-fun e!319681 () Bool)

(assert (=> b!554463 (= e!319681 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5218 0))(
  ( (MissingZero!5218 (index!23099 (_ BitVec 32))) (Found!5218 (index!23100 (_ BitVec 32))) (Intermediate!5218 (undefined!6030 Bool) (index!23101 (_ BitVec 32)) (x!52039 (_ BitVec 32))) (Undefined!5218) (MissingVacant!5218 (index!23102 (_ BitVec 32))) )
))
(declare-fun lt!251857 () SeekEntryResult!5218)

(declare-fun lt!251859 () SeekEntryResult!5218)

(declare-datatypes ((array!34913 0))(
  ( (array!34914 (arr!16762 (Array (_ BitVec 32) (_ BitVec 64))) (size!17126 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34913)

(get-info :version)

(assert (=> b!554463 (and (= lt!251857 (Found!5218 j!142)) (or (undefined!6030 lt!251859) (not ((_ is Intermediate!5218) lt!251859)) (= (select (arr!16762 a!3118) (index!23101 lt!251859)) (select (arr!16762 a!3118) j!142)) (not (= (select (arr!16762 a!3118) (index!23101 lt!251859)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251857 (MissingZero!5218 (index!23101 lt!251859)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34913 (_ BitVec 32)) SeekEntryResult!5218)

(assert (=> b!554463 (= lt!251857 (seekEntryOrOpen!0 (select (arr!16762 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34913 (_ BitVec 32)) Bool)

(assert (=> b!554463 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17210 0))(
  ( (Unit!17211) )
))
(declare-fun lt!251861 () Unit!17210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17210)

(assert (=> b!554463 (= lt!251861 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554464 () Bool)

(declare-fun res!347031 () Bool)

(declare-fun e!319682 () Bool)

(assert (=> b!554464 (=> (not res!347031) (not e!319682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554464 (= res!347031 (validKeyInArray!0 (select (arr!16762 a!3118) j!142)))))

(declare-fun b!554465 () Bool)

(declare-fun e!319683 () Bool)

(assert (=> b!554465 (= e!319682 e!319683)))

(declare-fun res!347029 () Bool)

(assert (=> b!554465 (=> (not res!347029) (not e!319683))))

(declare-fun lt!251858 () SeekEntryResult!5218)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554465 (= res!347029 (or (= lt!251858 (MissingZero!5218 i!1132)) (= lt!251858 (MissingVacant!5218 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!554465 (= lt!251858 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554466 () Bool)

(declare-fun res!347030 () Bool)

(assert (=> b!554466 (=> (not res!347030) (not e!319682))))

(assert (=> b!554466 (= res!347030 (and (= (size!17126 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17126 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17126 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554467 () Bool)

(declare-fun res!347028 () Bool)

(assert (=> b!554467 (=> (not res!347028) (not e!319682))))

(assert (=> b!554467 (= res!347028 (validKeyInArray!0 k0!1914))))

(declare-fun b!554468 () Bool)

(declare-fun res!347025 () Bool)

(assert (=> b!554468 (=> (not res!347025) (not e!319682))))

(declare-fun arrayContainsKey!0 (array!34913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554468 (= res!347025 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554469 () Bool)

(declare-fun res!347026 () Bool)

(assert (=> b!554469 (=> (not res!347026) (not e!319683))))

(declare-datatypes ((List!10895 0))(
  ( (Nil!10892) (Cons!10891 (h!11876 (_ BitVec 64)) (t!17131 List!10895)) )
))
(declare-fun arrayNoDuplicates!0 (array!34913 (_ BitVec 32) List!10895) Bool)

(assert (=> b!554469 (= res!347026 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10892))))

(declare-fun res!347027 () Bool)

(assert (=> start!50734 (=> (not res!347027) (not e!319682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50734 (= res!347027 (validMask!0 mask!3119))))

(assert (=> start!50734 e!319682))

(assert (=> start!50734 true))

(declare-fun array_inv!12536 (array!34913) Bool)

(assert (=> start!50734 (array_inv!12536 a!3118)))

(declare-fun b!554470 () Bool)

(declare-fun res!347033 () Bool)

(assert (=> b!554470 (=> (not res!347033) (not e!319683))))

(assert (=> b!554470 (= res!347033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554471 () Bool)

(assert (=> b!554471 (= e!319683 e!319681)))

(declare-fun res!347032 () Bool)

(assert (=> b!554471 (=> (not res!347032) (not e!319681))))

(declare-fun lt!251860 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34913 (_ BitVec 32)) SeekEntryResult!5218)

(assert (=> b!554471 (= res!347032 (= lt!251859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251860 (select (store (arr!16762 a!3118) i!1132 k0!1914) j!142) (array!34914 (store (arr!16762 a!3118) i!1132 k0!1914) (size!17126 a!3118)) mask!3119)))))

(declare-fun lt!251856 () (_ BitVec 32))

(assert (=> b!554471 (= lt!251859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251856 (select (arr!16762 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554471 (= lt!251860 (toIndex!0 (select (store (arr!16762 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554471 (= lt!251856 (toIndex!0 (select (arr!16762 a!3118) j!142) mask!3119))))

(assert (= (and start!50734 res!347027) b!554466))

(assert (= (and b!554466 res!347030) b!554464))

(assert (= (and b!554464 res!347031) b!554467))

(assert (= (and b!554467 res!347028) b!554468))

(assert (= (and b!554468 res!347025) b!554465))

(assert (= (and b!554465 res!347029) b!554470))

(assert (= (and b!554470 res!347033) b!554469))

(assert (= (and b!554469 res!347026) b!554471))

(assert (= (and b!554471 res!347032) b!554463))

(declare-fun m!531867 () Bool)

(assert (=> b!554470 m!531867))

(declare-fun m!531869 () Bool)

(assert (=> b!554468 m!531869))

(declare-fun m!531871 () Bool)

(assert (=> b!554467 m!531871))

(declare-fun m!531873 () Bool)

(assert (=> b!554471 m!531873))

(declare-fun m!531875 () Bool)

(assert (=> b!554471 m!531875))

(assert (=> b!554471 m!531873))

(declare-fun m!531877 () Bool)

(assert (=> b!554471 m!531877))

(assert (=> b!554471 m!531873))

(declare-fun m!531879 () Bool)

(assert (=> b!554471 m!531879))

(declare-fun m!531881 () Bool)

(assert (=> b!554471 m!531881))

(assert (=> b!554471 m!531879))

(declare-fun m!531883 () Bool)

(assert (=> b!554471 m!531883))

(assert (=> b!554471 m!531879))

(declare-fun m!531885 () Bool)

(assert (=> b!554471 m!531885))

(declare-fun m!531887 () Bool)

(assert (=> b!554463 m!531887))

(assert (=> b!554463 m!531873))

(declare-fun m!531889 () Bool)

(assert (=> b!554463 m!531889))

(declare-fun m!531891 () Bool)

(assert (=> b!554463 m!531891))

(assert (=> b!554463 m!531873))

(declare-fun m!531893 () Bool)

(assert (=> b!554463 m!531893))

(assert (=> b!554464 m!531873))

(assert (=> b!554464 m!531873))

(declare-fun m!531895 () Bool)

(assert (=> b!554464 m!531895))

(declare-fun m!531897 () Bool)

(assert (=> b!554469 m!531897))

(declare-fun m!531899 () Bool)

(assert (=> start!50734 m!531899))

(declare-fun m!531901 () Bool)

(assert (=> start!50734 m!531901))

(declare-fun m!531903 () Bool)

(assert (=> b!554465 m!531903))

(check-sat (not b!554470) (not b!554464) (not b!554469) (not b!554468) (not b!554463) (not b!554465) (not b!554467) (not start!50734) (not b!554471))
(check-sat)
