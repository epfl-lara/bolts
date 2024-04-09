; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50786 () Bool)

(assert start!50786)

(declare-fun b!555165 () Bool)

(declare-fun res!347731 () Bool)

(declare-fun e!319996 () Bool)

(assert (=> b!555165 (=> (not res!347731) (not e!319996))))

(declare-datatypes ((array!34965 0))(
  ( (array!34966 (arr!16788 (Array (_ BitVec 32) (_ BitVec 64))) (size!17152 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34965)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34965 (_ BitVec 32)) Bool)

(assert (=> b!555165 (= res!347731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555166 () Bool)

(declare-fun res!347732 () Bool)

(declare-fun e!319993 () Bool)

(assert (=> b!555166 (=> (not res!347732) (not e!319993))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555166 (= res!347732 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555167 () Bool)

(declare-fun res!347734 () Bool)

(assert (=> b!555167 (=> (not res!347734) (not e!319996))))

(declare-datatypes ((List!10921 0))(
  ( (Nil!10918) (Cons!10917 (h!11902 (_ BitVec 64)) (t!17157 List!10921)) )
))
(declare-fun arrayNoDuplicates!0 (array!34965 (_ BitVec 32) List!10921) Bool)

(assert (=> b!555167 (= res!347734 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10918))))

(declare-fun b!555168 () Bool)

(declare-fun res!347728 () Bool)

(assert (=> b!555168 (=> (not res!347728) (not e!319993))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555168 (= res!347728 (validKeyInArray!0 (select (arr!16788 a!3118) j!142)))))

(declare-fun b!555169 () Bool)

(declare-fun res!347727 () Bool)

(assert (=> b!555169 (=> (not res!347727) (not e!319993))))

(assert (=> b!555169 (= res!347727 (validKeyInArray!0 k!1914))))

(declare-fun b!555171 () Bool)

(declare-fun res!347733 () Bool)

(assert (=> b!555171 (=> (not res!347733) (not e!319993))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555171 (= res!347733 (and (= (size!17152 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17152 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17152 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555172 () Bool)

(assert (=> b!555172 (= e!319993 e!319996)))

(declare-fun res!347735 () Bool)

(assert (=> b!555172 (=> (not res!347735) (not e!319996))))

(declare-datatypes ((SeekEntryResult!5244 0))(
  ( (MissingZero!5244 (index!23203 (_ BitVec 32))) (Found!5244 (index!23204 (_ BitVec 32))) (Intermediate!5244 (undefined!6056 Bool) (index!23205 (_ BitVec 32)) (x!52137 (_ BitVec 32))) (Undefined!5244) (MissingVacant!5244 (index!23206 (_ BitVec 32))) )
))
(declare-fun lt!252329 () SeekEntryResult!5244)

(assert (=> b!555172 (= res!347735 (or (= lt!252329 (MissingZero!5244 i!1132)) (= lt!252329 (MissingVacant!5244 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34965 (_ BitVec 32)) SeekEntryResult!5244)

(assert (=> b!555172 (= lt!252329 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555173 () Bool)

(declare-fun e!319995 () Bool)

(assert (=> b!555173 (= e!319995 (not true))))

(declare-fun lt!252327 () SeekEntryResult!5244)

(declare-fun lt!252328 () SeekEntryResult!5244)

(assert (=> b!555173 (and (= lt!252328 (Found!5244 j!142)) (or (undefined!6056 lt!252327) (not (is-Intermediate!5244 lt!252327)) (= (select (arr!16788 a!3118) (index!23205 lt!252327)) (select (arr!16788 a!3118) j!142)) (not (= (select (arr!16788 a!3118) (index!23205 lt!252327)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252328 (MissingZero!5244 (index!23205 lt!252327)))))))

(assert (=> b!555173 (= lt!252328 (seekEntryOrOpen!0 (select (arr!16788 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555173 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17262 0))(
  ( (Unit!17263) )
))
(declare-fun lt!252325 () Unit!17262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17262)

(assert (=> b!555173 (= lt!252325 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555170 () Bool)

(assert (=> b!555170 (= e!319996 e!319995)))

(declare-fun res!347729 () Bool)

(assert (=> b!555170 (=> (not res!347729) (not e!319995))))

(declare-fun lt!252326 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34965 (_ BitVec 32)) SeekEntryResult!5244)

(assert (=> b!555170 (= res!347729 (= lt!252327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252326 (select (store (arr!16788 a!3118) i!1132 k!1914) j!142) (array!34966 (store (arr!16788 a!3118) i!1132 k!1914) (size!17152 a!3118)) mask!3119)))))

(declare-fun lt!252324 () (_ BitVec 32))

(assert (=> b!555170 (= lt!252327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252324 (select (arr!16788 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555170 (= lt!252326 (toIndex!0 (select (store (arr!16788 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555170 (= lt!252324 (toIndex!0 (select (arr!16788 a!3118) j!142) mask!3119))))

(declare-fun res!347730 () Bool)

(assert (=> start!50786 (=> (not res!347730) (not e!319993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50786 (= res!347730 (validMask!0 mask!3119))))

(assert (=> start!50786 e!319993))

(assert (=> start!50786 true))

(declare-fun array_inv!12562 (array!34965) Bool)

(assert (=> start!50786 (array_inv!12562 a!3118)))

(assert (= (and start!50786 res!347730) b!555171))

(assert (= (and b!555171 res!347733) b!555168))

(assert (= (and b!555168 res!347728) b!555169))

(assert (= (and b!555169 res!347727) b!555166))

(assert (= (and b!555166 res!347732) b!555172))

(assert (= (and b!555172 res!347735) b!555165))

(assert (= (and b!555165 res!347731) b!555167))

(assert (= (and b!555167 res!347734) b!555170))

(assert (= (and b!555170 res!347729) b!555173))

(declare-fun m!532855 () Bool)

(assert (=> b!555167 m!532855))

(declare-fun m!532857 () Bool)

(assert (=> b!555166 m!532857))

(declare-fun m!532859 () Bool)

(assert (=> b!555165 m!532859))

(declare-fun m!532861 () Bool)

(assert (=> b!555170 m!532861))

(declare-fun m!532863 () Bool)

(assert (=> b!555170 m!532863))

(assert (=> b!555170 m!532861))

(declare-fun m!532865 () Bool)

(assert (=> b!555170 m!532865))

(assert (=> b!555170 m!532861))

(declare-fun m!532867 () Bool)

(assert (=> b!555170 m!532867))

(declare-fun m!532869 () Bool)

(assert (=> b!555170 m!532869))

(assert (=> b!555170 m!532867))

(declare-fun m!532871 () Bool)

(assert (=> b!555170 m!532871))

(assert (=> b!555170 m!532867))

(declare-fun m!532873 () Bool)

(assert (=> b!555170 m!532873))

(declare-fun m!532875 () Bool)

(assert (=> start!50786 m!532875))

(declare-fun m!532877 () Bool)

(assert (=> start!50786 m!532877))

(assert (=> b!555173 m!532861))

(declare-fun m!532879 () Bool)

(assert (=> b!555173 m!532879))

(declare-fun m!532881 () Bool)

(assert (=> b!555173 m!532881))

(declare-fun m!532883 () Bool)

(assert (=> b!555173 m!532883))

(assert (=> b!555173 m!532861))

(declare-fun m!532885 () Bool)

(assert (=> b!555173 m!532885))

(declare-fun m!532887 () Bool)

(assert (=> b!555172 m!532887))

(assert (=> b!555168 m!532861))

(assert (=> b!555168 m!532861))

(declare-fun m!532889 () Bool)

(assert (=> b!555168 m!532889))

(declare-fun m!532891 () Bool)

(assert (=> b!555169 m!532891))

(push 1)

