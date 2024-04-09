; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51452 () Bool)

(assert start!51452)

(declare-fun lt!255970 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35271 0))(
  ( (array!35272 (arr!16932 (Array (_ BitVec 32) (_ BitVec 64))) (size!17296 (_ BitVec 32))) )
))
(declare-fun lt!255969 () array!35271)

(declare-fun e!323857 () Bool)

(declare-fun b!561959 () Bool)

(declare-datatypes ((SeekEntryResult!5388 0))(
  ( (MissingZero!5388 (index!23779 (_ BitVec 32))) (Found!5388 (index!23780 (_ BitVec 32))) (Intermediate!5388 (undefined!6200 Bool) (index!23781 (_ BitVec 32)) (x!52710 (_ BitVec 32))) (Undefined!5388) (MissingVacant!5388 (index!23782 (_ BitVec 32))) )
))
(declare-fun lt!255966 () SeekEntryResult!5388)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35271 (_ BitVec 32)) SeekEntryResult!5388)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35271 (_ BitVec 32)) SeekEntryResult!5388)

(assert (=> b!561959 (= e!323857 (= (seekEntryOrOpen!0 lt!255970 lt!255969 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52710 lt!255966) (index!23781 lt!255966) (index!23781 lt!255966) lt!255970 lt!255969 mask!3119)))))

(declare-fun b!561960 () Bool)

(declare-fun res!353266 () Bool)

(declare-fun e!323858 () Bool)

(assert (=> b!561960 (=> (not res!353266) (not e!323858))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun a!3118 () array!35271)

(assert (=> b!561960 (= res!353266 (and (= (size!17296 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17296 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17296 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561961 () Bool)

(declare-fun e!323855 () Bool)

(assert (=> b!561961 (= e!323855 (not true))))

(declare-fun e!323854 () Bool)

(assert (=> b!561961 e!323854))

(declare-fun res!353264 () Bool)

(assert (=> b!561961 (=> (not res!353264) (not e!323854))))

(declare-fun lt!255967 () SeekEntryResult!5388)

(assert (=> b!561961 (= res!353264 (= lt!255967 (Found!5388 j!142)))))

(assert (=> b!561961 (= lt!255967 (seekEntryOrOpen!0 (select (arr!16932 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35271 (_ BitVec 32)) Bool)

(assert (=> b!561961 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17550 0))(
  ( (Unit!17551) )
))
(declare-fun lt!255974 () Unit!17550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17550)

(assert (=> b!561961 (= lt!255974 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561963 () Bool)

(declare-fun e!323853 () Bool)

(assert (=> b!561963 (= e!323853 e!323855)))

(declare-fun res!353267 () Bool)

(assert (=> b!561963 (=> (not res!353267) (not e!323855))))

(declare-fun lt!255968 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35271 (_ BitVec 32)) SeekEntryResult!5388)

(assert (=> b!561963 (= res!353267 (= lt!255966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255968 lt!255970 lt!255969 mask!3119)))))

(declare-fun lt!255973 () (_ BitVec 32))

(assert (=> b!561963 (= lt!255966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255973 (select (arr!16932 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561963 (= lt!255968 (toIndex!0 lt!255970 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!561963 (= lt!255970 (select (store (arr!16932 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561963 (= lt!255973 (toIndex!0 (select (arr!16932 a!3118) j!142) mask!3119))))

(assert (=> b!561963 (= lt!255969 (array!35272 (store (arr!16932 a!3118) i!1132 k!1914) (size!17296 a!3118)))))

(declare-fun b!561964 () Bool)

(assert (=> b!561964 (= e!323858 e!323853)))

(declare-fun res!353262 () Bool)

(assert (=> b!561964 (=> (not res!353262) (not e!323853))))

(declare-fun lt!255971 () SeekEntryResult!5388)

(assert (=> b!561964 (= res!353262 (or (= lt!255971 (MissingZero!5388 i!1132)) (= lt!255971 (MissingVacant!5388 i!1132))))))

(assert (=> b!561964 (= lt!255971 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561965 () Bool)

(declare-fun res!353269 () Bool)

(assert (=> b!561965 (=> (not res!353269) (not e!323858))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561965 (= res!353269 (validKeyInArray!0 (select (arr!16932 a!3118) j!142)))))

(declare-fun b!561966 () Bool)

(declare-fun res!353265 () Bool)

(assert (=> b!561966 (=> (not res!353265) (not e!323858))))

(declare-fun arrayContainsKey!0 (array!35271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561966 (= res!353265 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561967 () Bool)

(declare-fun res!353270 () Bool)

(assert (=> b!561967 (=> (not res!353270) (not e!323853))))

(declare-datatypes ((List!11065 0))(
  ( (Nil!11062) (Cons!11061 (h!12064 (_ BitVec 64)) (t!17301 List!11065)) )
))
(declare-fun arrayNoDuplicates!0 (array!35271 (_ BitVec 32) List!11065) Bool)

(assert (=> b!561967 (= res!353270 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11062))))

(declare-fun b!561968 () Bool)

(declare-fun e!323856 () Bool)

(declare-fun e!323859 () Bool)

(assert (=> b!561968 (= e!323856 e!323859)))

(declare-fun res!353261 () Bool)

(assert (=> b!561968 (=> res!353261 e!323859)))

(declare-fun lt!255972 () (_ BitVec 64))

(assert (=> b!561968 (= res!353261 (or (= lt!255972 (select (arr!16932 a!3118) j!142)) (= lt!255972 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561968 (= lt!255972 (select (arr!16932 a!3118) (index!23781 lt!255966)))))

(declare-fun b!561969 () Bool)

(declare-fun res!353272 () Bool)

(assert (=> b!561969 (=> (not res!353272) (not e!323853))))

(assert (=> b!561969 (= res!353272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561962 () Bool)

(assert (=> b!561962 (= e!323854 e!323856)))

(declare-fun res!353271 () Bool)

(assert (=> b!561962 (=> res!353271 e!323856)))

(assert (=> b!561962 (= res!353271 (or (undefined!6200 lt!255966) (not (is-Intermediate!5388 lt!255966))))))

(declare-fun res!353263 () Bool)

(assert (=> start!51452 (=> (not res!353263) (not e!323858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51452 (= res!353263 (validMask!0 mask!3119))))

(assert (=> start!51452 e!323858))

(assert (=> start!51452 true))

(declare-fun array_inv!12706 (array!35271) Bool)

(assert (=> start!51452 (array_inv!12706 a!3118)))

(declare-fun b!561970 () Bool)

(declare-fun res!353268 () Bool)

(assert (=> b!561970 (=> (not res!353268) (not e!323858))))

(assert (=> b!561970 (= res!353268 (validKeyInArray!0 k!1914))))

(declare-fun b!561971 () Bool)

(assert (=> b!561971 (= e!323859 e!323857)))

(declare-fun res!353273 () Bool)

(assert (=> b!561971 (=> (not res!353273) (not e!323857))))

(assert (=> b!561971 (= res!353273 (= lt!255967 (seekKeyOrZeroReturnVacant!0 (x!52710 lt!255966) (index!23781 lt!255966) (index!23781 lt!255966) (select (arr!16932 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51452 res!353263) b!561960))

(assert (= (and b!561960 res!353266) b!561965))

(assert (= (and b!561965 res!353269) b!561970))

(assert (= (and b!561970 res!353268) b!561966))

(assert (= (and b!561966 res!353265) b!561964))

(assert (= (and b!561964 res!353262) b!561969))

(assert (= (and b!561969 res!353272) b!561967))

(assert (= (and b!561967 res!353270) b!561963))

(assert (= (and b!561963 res!353267) b!561961))

(assert (= (and b!561961 res!353264) b!561962))

(assert (= (and b!561962 (not res!353271)) b!561968))

(assert (= (and b!561968 (not res!353261)) b!561971))

(assert (= (and b!561971 res!353273) b!561959))

(declare-fun m!539983 () Bool)

(assert (=> b!561968 m!539983))

(declare-fun m!539985 () Bool)

(assert (=> b!561968 m!539985))

(declare-fun m!539987 () Bool)

(assert (=> b!561967 m!539987))

(assert (=> b!561971 m!539983))

(assert (=> b!561971 m!539983))

(declare-fun m!539989 () Bool)

(assert (=> b!561971 m!539989))

(declare-fun m!539991 () Bool)

(assert (=> b!561963 m!539991))

(assert (=> b!561963 m!539983))

(declare-fun m!539993 () Bool)

(assert (=> b!561963 m!539993))

(assert (=> b!561963 m!539983))

(declare-fun m!539995 () Bool)

(assert (=> b!561963 m!539995))

(assert (=> b!561963 m!539983))

(declare-fun m!539997 () Bool)

(assert (=> b!561963 m!539997))

(declare-fun m!539999 () Bool)

(assert (=> b!561963 m!539999))

(declare-fun m!540001 () Bool)

(assert (=> b!561963 m!540001))

(assert (=> b!561965 m!539983))

(assert (=> b!561965 m!539983))

(declare-fun m!540003 () Bool)

(assert (=> b!561965 m!540003))

(declare-fun m!540005 () Bool)

(assert (=> b!561970 m!540005))

(declare-fun m!540007 () Bool)

(assert (=> b!561964 m!540007))

(declare-fun m!540009 () Bool)

(assert (=> b!561966 m!540009))

(assert (=> b!561961 m!539983))

(assert (=> b!561961 m!539983))

(declare-fun m!540011 () Bool)

(assert (=> b!561961 m!540011))

(declare-fun m!540013 () Bool)

(assert (=> b!561961 m!540013))

(declare-fun m!540015 () Bool)

(assert (=> b!561961 m!540015))

(declare-fun m!540017 () Bool)

(assert (=> start!51452 m!540017))

(declare-fun m!540019 () Bool)

(assert (=> start!51452 m!540019))

(declare-fun m!540021 () Bool)

(assert (=> b!561959 m!540021))

(declare-fun m!540023 () Bool)

(assert (=> b!561959 m!540023))

(declare-fun m!540025 () Bool)

(assert (=> b!561969 m!540025))

(push 1)

