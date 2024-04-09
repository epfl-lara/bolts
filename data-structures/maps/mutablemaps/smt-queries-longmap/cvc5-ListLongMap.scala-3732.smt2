; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51404 () Bool)

(assert start!51404)

(declare-fun b!561023 () Bool)

(declare-fun res!352330 () Bool)

(declare-fun e!323282 () Bool)

(assert (=> b!561023 (=> (not res!352330) (not e!323282))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35223 0))(
  ( (array!35224 (arr!16908 (Array (_ BitVec 32) (_ BitVec 64))) (size!17272 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35223)

(assert (=> b!561023 (= res!352330 (and (= (size!17272 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17272 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17272 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!352335 () Bool)

(assert (=> start!51404 (=> (not res!352335) (not e!323282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51404 (= res!352335 (validMask!0 mask!3119))))

(assert (=> start!51404 e!323282))

(assert (=> start!51404 true))

(declare-fun array_inv!12682 (array!35223) Bool)

(assert (=> start!51404 (array_inv!12682 a!3118)))

(declare-fun b!561024 () Bool)

(declare-fun e!323279 () Bool)

(declare-fun e!323283 () Bool)

(assert (=> b!561024 (= e!323279 e!323283)))

(declare-fun res!352333 () Bool)

(assert (=> b!561024 (=> (not res!352333) (not e!323283))))

(declare-datatypes ((SeekEntryResult!5364 0))(
  ( (MissingZero!5364 (index!23683 (_ BitVec 32))) (Found!5364 (index!23684 (_ BitVec 32))) (Intermediate!5364 (undefined!6176 Bool) (index!23685 (_ BitVec 32)) (x!52622 (_ BitVec 32))) (Undefined!5364) (MissingVacant!5364 (index!23686 (_ BitVec 32))) )
))
(declare-fun lt!255323 () SeekEntryResult!5364)

(declare-fun lt!255325 () SeekEntryResult!5364)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35223 (_ BitVec 32)) SeekEntryResult!5364)

(assert (=> b!561024 (= res!352333 (= lt!255325 (seekKeyOrZeroReturnVacant!0 (x!52622 lt!255323) (index!23685 lt!255323) (index!23685 lt!255323) (select (arr!16908 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561025 () Bool)

(declare-fun e!323284 () Bool)

(assert (=> b!561025 (= e!323284 (not true))))

(declare-fun e!323280 () Bool)

(assert (=> b!561025 e!323280))

(declare-fun res!352332 () Bool)

(assert (=> b!561025 (=> (not res!352332) (not e!323280))))

(assert (=> b!561025 (= res!352332 (= lt!255325 (Found!5364 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35223 (_ BitVec 32)) SeekEntryResult!5364)

(assert (=> b!561025 (= lt!255325 (seekEntryOrOpen!0 (select (arr!16908 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35223 (_ BitVec 32)) Bool)

(assert (=> b!561025 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17502 0))(
  ( (Unit!17503) )
))
(declare-fun lt!255322 () Unit!17502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35223 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17502)

(assert (=> b!561025 (= lt!255322 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561026 () Bool)

(declare-fun res!352329 () Bool)

(declare-fun e!323281 () Bool)

(assert (=> b!561026 (=> (not res!352329) (not e!323281))))

(assert (=> b!561026 (= res!352329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561027 () Bool)

(declare-fun res!352328 () Bool)

(assert (=> b!561027 (=> (not res!352328) (not e!323281))))

(declare-datatypes ((List!11041 0))(
  ( (Nil!11038) (Cons!11037 (h!12040 (_ BitVec 64)) (t!17277 List!11041)) )
))
(declare-fun arrayNoDuplicates!0 (array!35223 (_ BitVec 32) List!11041) Bool)

(assert (=> b!561027 (= res!352328 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11038))))

(declare-fun b!561028 () Bool)

(declare-fun e!323278 () Bool)

(assert (=> b!561028 (= e!323278 e!323279)))

(declare-fun res!352334 () Bool)

(assert (=> b!561028 (=> res!352334 e!323279)))

(declare-fun lt!255324 () (_ BitVec 64))

(assert (=> b!561028 (= res!352334 (or (= lt!255324 (select (arr!16908 a!3118) j!142)) (= lt!255324 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561028 (= lt!255324 (select (arr!16908 a!3118) (index!23685 lt!255323)))))

(declare-fun b!561029 () Bool)

(declare-fun res!352326 () Bool)

(assert (=> b!561029 (=> (not res!352326) (not e!323282))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561029 (= res!352326 (validKeyInArray!0 k!1914))))

(declare-fun b!561030 () Bool)

(declare-fun res!352327 () Bool)

(assert (=> b!561030 (=> (not res!352327) (not e!323282))))

(assert (=> b!561030 (= res!352327 (validKeyInArray!0 (select (arr!16908 a!3118) j!142)))))

(declare-fun b!561031 () Bool)

(assert (=> b!561031 (= e!323281 e!323284)))

(declare-fun res!352336 () Bool)

(assert (=> b!561031 (=> (not res!352336) (not e!323284))))

(declare-fun lt!255320 () array!35223)

(declare-fun lt!255326 () (_ BitVec 64))

(declare-fun lt!255318 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35223 (_ BitVec 32)) SeekEntryResult!5364)

(assert (=> b!561031 (= res!352336 (= lt!255323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255318 lt!255326 lt!255320 mask!3119)))))

(declare-fun lt!255321 () (_ BitVec 32))

(assert (=> b!561031 (= lt!255323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255321 (select (arr!16908 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561031 (= lt!255318 (toIndex!0 lt!255326 mask!3119))))

(assert (=> b!561031 (= lt!255326 (select (store (arr!16908 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561031 (= lt!255321 (toIndex!0 (select (arr!16908 a!3118) j!142) mask!3119))))

(assert (=> b!561031 (= lt!255320 (array!35224 (store (arr!16908 a!3118) i!1132 k!1914) (size!17272 a!3118)))))

(declare-fun b!561032 () Bool)

(assert (=> b!561032 (= e!323282 e!323281)))

(declare-fun res!352337 () Bool)

(assert (=> b!561032 (=> (not res!352337) (not e!323281))))

(declare-fun lt!255319 () SeekEntryResult!5364)

(assert (=> b!561032 (= res!352337 (or (= lt!255319 (MissingZero!5364 i!1132)) (= lt!255319 (MissingVacant!5364 i!1132))))))

(assert (=> b!561032 (= lt!255319 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561033 () Bool)

(assert (=> b!561033 (= e!323280 e!323278)))

(declare-fun res!352331 () Bool)

(assert (=> b!561033 (=> res!352331 e!323278)))

(assert (=> b!561033 (= res!352331 (or (undefined!6176 lt!255323) (not (is-Intermediate!5364 lt!255323))))))

(declare-fun b!561034 () Bool)

(declare-fun res!352325 () Bool)

(assert (=> b!561034 (=> (not res!352325) (not e!323282))))

(declare-fun arrayContainsKey!0 (array!35223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561034 (= res!352325 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561035 () Bool)

(assert (=> b!561035 (= e!323283 (= (seekEntryOrOpen!0 lt!255326 lt!255320 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52622 lt!255323) (index!23685 lt!255323) (index!23685 lt!255323) lt!255326 lt!255320 mask!3119)))))

(assert (= (and start!51404 res!352335) b!561023))

(assert (= (and b!561023 res!352330) b!561030))

(assert (= (and b!561030 res!352327) b!561029))

(assert (= (and b!561029 res!352326) b!561034))

(assert (= (and b!561034 res!352325) b!561032))

(assert (= (and b!561032 res!352337) b!561026))

(assert (= (and b!561026 res!352329) b!561027))

(assert (= (and b!561027 res!352328) b!561031))

(assert (= (and b!561031 res!352336) b!561025))

(assert (= (and b!561025 res!352332) b!561033))

(assert (= (and b!561033 (not res!352331)) b!561028))

(assert (= (and b!561028 (not res!352334)) b!561024))

(assert (= (and b!561024 res!352333) b!561035))

(declare-fun m!538927 () Bool)

(assert (=> b!561028 m!538927))

(declare-fun m!538929 () Bool)

(assert (=> b!561028 m!538929))

(declare-fun m!538931 () Bool)

(assert (=> b!561027 m!538931))

(declare-fun m!538933 () Bool)

(assert (=> b!561026 m!538933))

(declare-fun m!538935 () Bool)

(assert (=> b!561034 m!538935))

(declare-fun m!538937 () Bool)

(assert (=> b!561029 m!538937))

(declare-fun m!538939 () Bool)

(assert (=> b!561032 m!538939))

(assert (=> b!561024 m!538927))

(assert (=> b!561024 m!538927))

(declare-fun m!538941 () Bool)

(assert (=> b!561024 m!538941))

(assert (=> b!561031 m!538927))

(declare-fun m!538943 () Bool)

(assert (=> b!561031 m!538943))

(declare-fun m!538945 () Bool)

(assert (=> b!561031 m!538945))

(declare-fun m!538947 () Bool)

(assert (=> b!561031 m!538947))

(assert (=> b!561031 m!538927))

(declare-fun m!538949 () Bool)

(assert (=> b!561031 m!538949))

(assert (=> b!561031 m!538927))

(declare-fun m!538951 () Bool)

(assert (=> b!561031 m!538951))

(declare-fun m!538953 () Bool)

(assert (=> b!561031 m!538953))

(declare-fun m!538955 () Bool)

(assert (=> b!561035 m!538955))

(declare-fun m!538957 () Bool)

(assert (=> b!561035 m!538957))

(assert (=> b!561030 m!538927))

(assert (=> b!561030 m!538927))

(declare-fun m!538959 () Bool)

(assert (=> b!561030 m!538959))

(declare-fun m!538961 () Bool)

(assert (=> start!51404 m!538961))

(declare-fun m!538963 () Bool)

(assert (=> start!51404 m!538963))

(assert (=> b!561025 m!538927))

(assert (=> b!561025 m!538927))

(declare-fun m!538965 () Bool)

(assert (=> b!561025 m!538965))

(declare-fun m!538967 () Bool)

(assert (=> b!561025 m!538967))

(declare-fun m!538969 () Bool)

(assert (=> b!561025 m!538969))

(push 1)

