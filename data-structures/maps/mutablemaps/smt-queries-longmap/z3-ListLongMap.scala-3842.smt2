; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52882 () Bool)

(assert start!52882)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!576017 () Bool)

(declare-datatypes ((array!35924 0))(
  ( (array!35925 (arr!17239 (Array (_ BitVec 32) (_ BitVec 64))) (size!17603 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35924)

(declare-fun e!331444 () Bool)

(declare-datatypes ((SeekEntryResult!5695 0))(
  ( (MissingZero!5695 (index!25007 (_ BitVec 32))) (Found!5695 (index!25008 (_ BitVec 32))) (Intermediate!5695 (undefined!6507 Bool) (index!25009 (_ BitVec 32)) (x!53929 (_ BitVec 32))) (Undefined!5695) (MissingVacant!5695 (index!25010 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35924 (_ BitVec 32)) SeekEntryResult!5695)

(assert (=> b!576017 (= e!331444 (= (seekEntryOrOpen!0 (select (arr!17239 a!3118) j!142) a!3118 mask!3119) (Found!5695 j!142)))))

(declare-fun b!576018 () Bool)

(declare-fun res!364404 () Bool)

(declare-fun e!331441 () Bool)

(assert (=> b!576018 (=> (not res!364404) (not e!331441))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576018 (= res!364404 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576019 () Bool)

(declare-fun res!364409 () Bool)

(declare-fun e!331442 () Bool)

(assert (=> b!576019 (=> (not res!364409) (not e!331442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35924 (_ BitVec 32)) Bool)

(assert (=> b!576019 (= res!364409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576020 () Bool)

(assert (=> b!576020 (= e!331441 e!331442)))

(declare-fun res!364405 () Bool)

(assert (=> b!576020 (=> (not res!364405) (not e!331442))))

(declare-fun lt!263579 () SeekEntryResult!5695)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576020 (= res!364405 (or (= lt!263579 (MissingZero!5695 i!1132)) (= lt!263579 (MissingVacant!5695 i!1132))))))

(assert (=> b!576020 (= lt!263579 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!364400 () Bool)

(assert (=> start!52882 (=> (not res!364400) (not e!331441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52882 (= res!364400 (validMask!0 mask!3119))))

(assert (=> start!52882 e!331441))

(assert (=> start!52882 true))

(declare-fun array_inv!13013 (array!35924) Bool)

(assert (=> start!52882 (array_inv!13013 a!3118)))

(declare-fun b!576021 () Bool)

(assert (=> b!576021 (= e!331442 (not true))))

(assert (=> b!576021 e!331444))

(declare-fun res!364406 () Bool)

(assert (=> b!576021 (=> (not res!364406) (not e!331444))))

(assert (=> b!576021 (= res!364406 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18092 0))(
  ( (Unit!18093) )
))
(declare-fun lt!263578 () Unit!18092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18092)

(assert (=> b!576021 (= lt!263578 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576022 () Bool)

(declare-fun res!364407 () Bool)

(assert (=> b!576022 (=> (not res!364407) (not e!331442))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35924 (_ BitVec 32)) SeekEntryResult!5695)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576022 (= res!364407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17239 a!3118) j!142) mask!3119) (select (arr!17239 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17239 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17239 a!3118) i!1132 k0!1914) j!142) (array!35925 (store (arr!17239 a!3118) i!1132 k0!1914) (size!17603 a!3118)) mask!3119)))))

(declare-fun b!576023 () Bool)

(declare-fun res!364401 () Bool)

(assert (=> b!576023 (=> (not res!364401) (not e!331441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576023 (= res!364401 (validKeyInArray!0 (select (arr!17239 a!3118) j!142)))))

(declare-fun b!576024 () Bool)

(declare-fun res!364408 () Bool)

(assert (=> b!576024 (=> (not res!364408) (not e!331441))))

(assert (=> b!576024 (= res!364408 (and (= (size!17603 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17603 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17603 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576025 () Bool)

(declare-fun res!364402 () Bool)

(assert (=> b!576025 (=> (not res!364402) (not e!331441))))

(assert (=> b!576025 (= res!364402 (validKeyInArray!0 k0!1914))))

(declare-fun b!576026 () Bool)

(declare-fun res!364403 () Bool)

(assert (=> b!576026 (=> (not res!364403) (not e!331442))))

(declare-datatypes ((List!11372 0))(
  ( (Nil!11369) (Cons!11368 (h!12410 (_ BitVec 64)) (t!17608 List!11372)) )
))
(declare-fun arrayNoDuplicates!0 (array!35924 (_ BitVec 32) List!11372) Bool)

(assert (=> b!576026 (= res!364403 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11369))))

(assert (= (and start!52882 res!364400) b!576024))

(assert (= (and b!576024 res!364408) b!576023))

(assert (= (and b!576023 res!364401) b!576025))

(assert (= (and b!576025 res!364402) b!576018))

(assert (= (and b!576018 res!364404) b!576020))

(assert (= (and b!576020 res!364405) b!576019))

(assert (= (and b!576019 res!364409) b!576026))

(assert (= (and b!576026 res!364403) b!576022))

(assert (= (and b!576022 res!364407) b!576021))

(assert (= (and b!576021 res!364406) b!576017))

(declare-fun m!554971 () Bool)

(assert (=> b!576022 m!554971))

(declare-fun m!554973 () Bool)

(assert (=> b!576022 m!554973))

(assert (=> b!576022 m!554971))

(declare-fun m!554975 () Bool)

(assert (=> b!576022 m!554975))

(declare-fun m!554977 () Bool)

(assert (=> b!576022 m!554977))

(assert (=> b!576022 m!554975))

(declare-fun m!554979 () Bool)

(assert (=> b!576022 m!554979))

(assert (=> b!576022 m!554973))

(assert (=> b!576022 m!554971))

(declare-fun m!554981 () Bool)

(assert (=> b!576022 m!554981))

(declare-fun m!554983 () Bool)

(assert (=> b!576022 m!554983))

(assert (=> b!576022 m!554975))

(assert (=> b!576022 m!554977))

(declare-fun m!554985 () Bool)

(assert (=> b!576018 m!554985))

(declare-fun m!554987 () Bool)

(assert (=> start!52882 m!554987))

(declare-fun m!554989 () Bool)

(assert (=> start!52882 m!554989))

(declare-fun m!554991 () Bool)

(assert (=> b!576021 m!554991))

(declare-fun m!554993 () Bool)

(assert (=> b!576021 m!554993))

(assert (=> b!576017 m!554971))

(assert (=> b!576017 m!554971))

(declare-fun m!554995 () Bool)

(assert (=> b!576017 m!554995))

(declare-fun m!554997 () Bool)

(assert (=> b!576019 m!554997))

(declare-fun m!554999 () Bool)

(assert (=> b!576025 m!554999))

(declare-fun m!555001 () Bool)

(assert (=> b!576026 m!555001))

(declare-fun m!555003 () Bool)

(assert (=> b!576020 m!555003))

(assert (=> b!576023 m!554971))

(assert (=> b!576023 m!554971))

(declare-fun m!555005 () Bool)

(assert (=> b!576023 m!555005))

(check-sat (not b!576022) (not b!576017) (not b!576025) (not b!576021) (not b!576019) (not b!576023) (not b!576018) (not b!576026) (not b!576020) (not start!52882))
(check-sat)
