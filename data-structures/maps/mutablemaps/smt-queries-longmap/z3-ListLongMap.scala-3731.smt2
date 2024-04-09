; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51400 () Bool)

(assert start!51400)

(declare-fun b!560945 () Bool)

(declare-fun res!352254 () Bool)

(declare-fun e!323235 () Bool)

(assert (=> b!560945 (=> (not res!352254) (not e!323235))))

(declare-datatypes ((array!35219 0))(
  ( (array!35220 (arr!16906 (Array (_ BitVec 32) (_ BitVec 64))) (size!17270 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35219)

(declare-datatypes ((List!11039 0))(
  ( (Nil!11036) (Cons!11035 (h!12038 (_ BitVec 64)) (t!17275 List!11039)) )
))
(declare-fun arrayNoDuplicates!0 (array!35219 (_ BitVec 32) List!11039) Bool)

(assert (=> b!560945 (= res!352254 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11036))))

(declare-fun b!560946 () Bool)

(declare-fun res!352256 () Bool)

(assert (=> b!560946 (=> (not res!352256) (not e!323235))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35219 (_ BitVec 32)) Bool)

(assert (=> b!560946 (= res!352256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560947 () Bool)

(declare-fun res!352259 () Bool)

(declare-fun e!323234 () Bool)

(assert (=> b!560947 (=> (not res!352259) (not e!323234))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560947 (= res!352259 (and (= (size!17270 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17270 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17270 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560948 () Bool)

(declare-fun res!352255 () Bool)

(assert (=> b!560948 (=> (not res!352255) (not e!323234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560948 (= res!352255 (validKeyInArray!0 (select (arr!16906 a!3118) j!142)))))

(declare-fun b!560949 () Bool)

(declare-fun res!352250 () Bool)

(assert (=> b!560949 (=> (not res!352250) (not e!323234))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!560949 (= res!352250 (validKeyInArray!0 k0!1914))))

(declare-fun res!352253 () Bool)

(assert (=> start!51400 (=> (not res!352253) (not e!323234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51400 (= res!352253 (validMask!0 mask!3119))))

(assert (=> start!51400 e!323234))

(assert (=> start!51400 true))

(declare-fun array_inv!12680 (array!35219) Bool)

(assert (=> start!51400 (array_inv!12680 a!3118)))

(declare-fun b!560950 () Bool)

(declare-fun lt!255264 () array!35219)

(declare-datatypes ((SeekEntryResult!5362 0))(
  ( (MissingZero!5362 (index!23675 (_ BitVec 32))) (Found!5362 (index!23676 (_ BitVec 32))) (Intermediate!5362 (undefined!6174 Bool) (index!23677 (_ BitVec 32)) (x!52612 (_ BitVec 32))) (Undefined!5362) (MissingVacant!5362 (index!23678 (_ BitVec 32))) )
))
(declare-fun lt!255272 () SeekEntryResult!5362)

(declare-fun lt!255267 () (_ BitVec 64))

(declare-fun e!323232 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35219 (_ BitVec 32)) SeekEntryResult!5362)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35219 (_ BitVec 32)) SeekEntryResult!5362)

(assert (=> b!560950 (= e!323232 (= (seekEntryOrOpen!0 lt!255267 lt!255264 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52612 lt!255272) (index!23677 lt!255272) (index!23677 lt!255272) lt!255267 lt!255264 mask!3119)))))

(declare-fun b!560951 () Bool)

(declare-fun res!352251 () Bool)

(assert (=> b!560951 (=> (not res!352251) (not e!323234))))

(declare-fun arrayContainsKey!0 (array!35219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560951 (= res!352251 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560952 () Bool)

(declare-fun e!323233 () Bool)

(assert (=> b!560952 (= e!323235 e!323233)))

(declare-fun res!352249 () Bool)

(assert (=> b!560952 (=> (not res!352249) (not e!323233))))

(declare-fun lt!255265 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35219 (_ BitVec 32)) SeekEntryResult!5362)

(assert (=> b!560952 (= res!352249 (= lt!255272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255265 lt!255267 lt!255264 mask!3119)))))

(declare-fun lt!255266 () (_ BitVec 32))

(assert (=> b!560952 (= lt!255272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255266 (select (arr!16906 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560952 (= lt!255265 (toIndex!0 lt!255267 mask!3119))))

(assert (=> b!560952 (= lt!255267 (select (store (arr!16906 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560952 (= lt!255266 (toIndex!0 (select (arr!16906 a!3118) j!142) mask!3119))))

(assert (=> b!560952 (= lt!255264 (array!35220 (store (arr!16906 a!3118) i!1132 k0!1914) (size!17270 a!3118)))))

(declare-fun b!560953 () Bool)

(declare-fun e!323230 () Bool)

(declare-fun e!323229 () Bool)

(assert (=> b!560953 (= e!323230 e!323229)))

(declare-fun res!352248 () Bool)

(assert (=> b!560953 (=> res!352248 e!323229)))

(declare-fun lt!255270 () (_ BitVec 64))

(assert (=> b!560953 (= res!352248 (or (= lt!255270 (select (arr!16906 a!3118) j!142)) (= lt!255270 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560953 (= lt!255270 (select (arr!16906 a!3118) (index!23677 lt!255272)))))

(declare-fun b!560954 () Bool)

(assert (=> b!560954 (= e!323229 e!323232)))

(declare-fun res!352252 () Bool)

(assert (=> b!560954 (=> (not res!352252) (not e!323232))))

(declare-fun lt!255268 () SeekEntryResult!5362)

(assert (=> b!560954 (= res!352252 (= lt!255268 (seekKeyOrZeroReturnVacant!0 (x!52612 lt!255272) (index!23677 lt!255272) (index!23677 lt!255272) (select (arr!16906 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560955 () Bool)

(assert (=> b!560955 (= e!323233 (not true))))

(declare-fun e!323236 () Bool)

(assert (=> b!560955 e!323236))

(declare-fun res!352247 () Bool)

(assert (=> b!560955 (=> (not res!352247) (not e!323236))))

(assert (=> b!560955 (= res!352247 (= lt!255268 (Found!5362 j!142)))))

(assert (=> b!560955 (= lt!255268 (seekEntryOrOpen!0 (select (arr!16906 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560955 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17498 0))(
  ( (Unit!17499) )
))
(declare-fun lt!255269 () Unit!17498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35219 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17498)

(assert (=> b!560955 (= lt!255269 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560956 () Bool)

(assert (=> b!560956 (= e!323234 e!323235)))

(declare-fun res!352257 () Bool)

(assert (=> b!560956 (=> (not res!352257) (not e!323235))))

(declare-fun lt!255271 () SeekEntryResult!5362)

(assert (=> b!560956 (= res!352257 (or (= lt!255271 (MissingZero!5362 i!1132)) (= lt!255271 (MissingVacant!5362 i!1132))))))

(assert (=> b!560956 (= lt!255271 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560957 () Bool)

(assert (=> b!560957 (= e!323236 e!323230)))

(declare-fun res!352258 () Bool)

(assert (=> b!560957 (=> res!352258 e!323230)))

(get-info :version)

(assert (=> b!560957 (= res!352258 (or (undefined!6174 lt!255272) (not ((_ is Intermediate!5362) lt!255272))))))

(assert (= (and start!51400 res!352253) b!560947))

(assert (= (and b!560947 res!352259) b!560948))

(assert (= (and b!560948 res!352255) b!560949))

(assert (= (and b!560949 res!352250) b!560951))

(assert (= (and b!560951 res!352251) b!560956))

(assert (= (and b!560956 res!352257) b!560946))

(assert (= (and b!560946 res!352256) b!560945))

(assert (= (and b!560945 res!352254) b!560952))

(assert (= (and b!560952 res!352249) b!560955))

(assert (= (and b!560955 res!352247) b!560957))

(assert (= (and b!560957 (not res!352258)) b!560953))

(assert (= (and b!560953 (not res!352248)) b!560954))

(assert (= (and b!560954 res!352252) b!560950))

(declare-fun m!538839 () Bool)

(assert (=> b!560955 m!538839))

(assert (=> b!560955 m!538839))

(declare-fun m!538841 () Bool)

(assert (=> b!560955 m!538841))

(declare-fun m!538843 () Bool)

(assert (=> b!560955 m!538843))

(declare-fun m!538845 () Bool)

(assert (=> b!560955 m!538845))

(declare-fun m!538847 () Bool)

(assert (=> b!560956 m!538847))

(declare-fun m!538849 () Bool)

(assert (=> b!560945 m!538849))

(declare-fun m!538851 () Bool)

(assert (=> start!51400 m!538851))

(declare-fun m!538853 () Bool)

(assert (=> start!51400 m!538853))

(declare-fun m!538855 () Bool)

(assert (=> b!560949 m!538855))

(declare-fun m!538857 () Bool)

(assert (=> b!560946 m!538857))

(assert (=> b!560953 m!538839))

(declare-fun m!538859 () Bool)

(assert (=> b!560953 m!538859))

(assert (=> b!560948 m!538839))

(assert (=> b!560948 m!538839))

(declare-fun m!538861 () Bool)

(assert (=> b!560948 m!538861))

(declare-fun m!538863 () Bool)

(assert (=> b!560950 m!538863))

(declare-fun m!538865 () Bool)

(assert (=> b!560950 m!538865))

(declare-fun m!538867 () Bool)

(assert (=> b!560951 m!538867))

(assert (=> b!560954 m!538839))

(assert (=> b!560954 m!538839))

(declare-fun m!538869 () Bool)

(assert (=> b!560954 m!538869))

(assert (=> b!560952 m!538839))

(declare-fun m!538871 () Bool)

(assert (=> b!560952 m!538871))

(assert (=> b!560952 m!538839))

(declare-fun m!538873 () Bool)

(assert (=> b!560952 m!538873))

(assert (=> b!560952 m!538839))

(declare-fun m!538875 () Bool)

(assert (=> b!560952 m!538875))

(declare-fun m!538877 () Bool)

(assert (=> b!560952 m!538877))

(declare-fun m!538879 () Bool)

(assert (=> b!560952 m!538879))

(declare-fun m!538881 () Bool)

(assert (=> b!560952 m!538881))

(check-sat (not b!560952) (not b!560950) (not b!560948) (not b!560945) (not start!51400) (not b!560955) (not b!560956) (not b!560949) (not b!560946) (not b!560951) (not b!560954))
(check-sat)
