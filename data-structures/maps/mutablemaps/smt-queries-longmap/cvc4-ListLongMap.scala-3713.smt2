; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51096 () Bool)

(assert start!51096)

(declare-fun b!557953 () Bool)

(declare-fun e!321431 () Bool)

(declare-fun e!321428 () Bool)

(assert (=> b!557953 (= e!321431 e!321428)))

(declare-fun res!349974 () Bool)

(assert (=> b!557953 (=> (not res!349974) (not e!321428))))

(declare-datatypes ((SeekEntryResult!5309 0))(
  ( (MissingZero!5309 (index!23463 (_ BitVec 32))) (Found!5309 (index!23464 (_ BitVec 32))) (Intermediate!5309 (undefined!6121 Bool) (index!23465 (_ BitVec 32)) (x!52388 (_ BitVec 32))) (Undefined!5309) (MissingVacant!5309 (index!23466 (_ BitVec 32))) )
))
(declare-fun lt!253586 () SeekEntryResult!5309)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!253588 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35104 0))(
  ( (array!35105 (arr!16853 (Array (_ BitVec 32) (_ BitVec 64))) (size!17217 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35104)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35104 (_ BitVec 32)) SeekEntryResult!5309)

(assert (=> b!557953 (= res!349974 (= lt!253586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253588 (select (store (arr!16853 a!3118) i!1132 k!1914) j!142) (array!35105 (store (arr!16853 a!3118) i!1132 k!1914) (size!17217 a!3118)) mask!3119)))))

(declare-fun lt!253585 () (_ BitVec 32))

(assert (=> b!557953 (= lt!253586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253585 (select (arr!16853 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557953 (= lt!253588 (toIndex!0 (select (store (arr!16853 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557953 (= lt!253585 (toIndex!0 (select (arr!16853 a!3118) j!142) mask!3119))))

(declare-fun b!557954 () Bool)

(declare-fun e!321429 () Bool)

(declare-fun e!321430 () Bool)

(assert (=> b!557954 (= e!321429 e!321430)))

(declare-fun res!349976 () Bool)

(assert (=> b!557954 (=> res!349976 e!321430)))

(assert (=> b!557954 (= res!349976 (or (undefined!6121 lt!253586) (not (is-Intermediate!5309 lt!253586)) (= (select (arr!16853 a!3118) (index!23465 lt!253586)) (select (arr!16853 a!3118) j!142)) (= (select (arr!16853 a!3118) (index!23465 lt!253586)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!349973 () Bool)

(declare-fun e!321433 () Bool)

(assert (=> start!51096 (=> (not res!349973) (not e!321433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51096 (= res!349973 (validMask!0 mask!3119))))

(assert (=> start!51096 e!321433))

(assert (=> start!51096 true))

(declare-fun array_inv!12627 (array!35104) Bool)

(assert (=> start!51096 (array_inv!12627 a!3118)))

(declare-fun lt!253587 () SeekEntryResult!5309)

(declare-fun b!557955 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35104 (_ BitVec 32)) SeekEntryResult!5309)

(assert (=> b!557955 (= e!321430 (= lt!253587 (seekKeyOrZeroReturnVacant!0 (x!52388 lt!253586) (index!23465 lt!253586) (index!23465 lt!253586) (select (arr!16853 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557956 () Bool)

(declare-fun res!349967 () Bool)

(assert (=> b!557956 (=> (not res!349967) (not e!321431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35104 (_ BitVec 32)) Bool)

(assert (=> b!557956 (= res!349967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557957 () Bool)

(declare-fun res!349969 () Bool)

(assert (=> b!557957 (=> (not res!349969) (not e!321433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557957 (= res!349969 (validKeyInArray!0 k!1914))))

(declare-fun b!557958 () Bool)

(declare-fun res!349971 () Bool)

(assert (=> b!557958 (=> (not res!349971) (not e!321433))))

(declare-fun arrayContainsKey!0 (array!35104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557958 (= res!349971 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557959 () Bool)

(declare-fun res!349966 () Bool)

(assert (=> b!557959 (=> (not res!349966) (not e!321433))))

(assert (=> b!557959 (= res!349966 (and (= (size!17217 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17217 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17217 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557960 () Bool)

(assert (=> b!557960 (= e!321428 (not true))))

(assert (=> b!557960 e!321429))

(declare-fun res!349975 () Bool)

(assert (=> b!557960 (=> (not res!349975) (not e!321429))))

(assert (=> b!557960 (= res!349975 (= lt!253587 (Found!5309 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35104 (_ BitVec 32)) SeekEntryResult!5309)

(assert (=> b!557960 (= lt!253587 (seekEntryOrOpen!0 (select (arr!16853 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!557960 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17392 0))(
  ( (Unit!17393) )
))
(declare-fun lt!253589 () Unit!17392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17392)

(assert (=> b!557960 (= lt!253589 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557961 () Bool)

(assert (=> b!557961 (= e!321433 e!321431)))

(declare-fun res!349968 () Bool)

(assert (=> b!557961 (=> (not res!349968) (not e!321431))))

(declare-fun lt!253584 () SeekEntryResult!5309)

(assert (=> b!557961 (= res!349968 (or (= lt!253584 (MissingZero!5309 i!1132)) (= lt!253584 (MissingVacant!5309 i!1132))))))

(assert (=> b!557961 (= lt!253584 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557962 () Bool)

(declare-fun res!349972 () Bool)

(assert (=> b!557962 (=> (not res!349972) (not e!321431))))

(declare-datatypes ((List!10986 0))(
  ( (Nil!10983) (Cons!10982 (h!11976 (_ BitVec 64)) (t!17222 List!10986)) )
))
(declare-fun arrayNoDuplicates!0 (array!35104 (_ BitVec 32) List!10986) Bool)

(assert (=> b!557962 (= res!349972 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10983))))

(declare-fun b!557963 () Bool)

(declare-fun res!349970 () Bool)

(assert (=> b!557963 (=> (not res!349970) (not e!321433))))

(assert (=> b!557963 (= res!349970 (validKeyInArray!0 (select (arr!16853 a!3118) j!142)))))

(assert (= (and start!51096 res!349973) b!557959))

(assert (= (and b!557959 res!349966) b!557963))

(assert (= (and b!557963 res!349970) b!557957))

(assert (= (and b!557957 res!349969) b!557958))

(assert (= (and b!557958 res!349971) b!557961))

(assert (= (and b!557961 res!349968) b!557956))

(assert (= (and b!557956 res!349967) b!557962))

(assert (= (and b!557962 res!349972) b!557953))

(assert (= (and b!557953 res!349974) b!557960))

(assert (= (and b!557960 res!349975) b!557954))

(assert (= (and b!557954 (not res!349976)) b!557955))

(declare-fun m!535911 () Bool)

(assert (=> b!557954 m!535911))

(declare-fun m!535913 () Bool)

(assert (=> b!557954 m!535913))

(assert (=> b!557963 m!535913))

(assert (=> b!557963 m!535913))

(declare-fun m!535915 () Bool)

(assert (=> b!557963 m!535915))

(assert (=> b!557955 m!535913))

(assert (=> b!557955 m!535913))

(declare-fun m!535917 () Bool)

(assert (=> b!557955 m!535917))

(declare-fun m!535919 () Bool)

(assert (=> b!557962 m!535919))

(declare-fun m!535921 () Bool)

(assert (=> b!557961 m!535921))

(declare-fun m!535923 () Bool)

(assert (=> b!557956 m!535923))

(declare-fun m!535925 () Bool)

(assert (=> b!557957 m!535925))

(assert (=> b!557960 m!535913))

(assert (=> b!557960 m!535913))

(declare-fun m!535927 () Bool)

(assert (=> b!557960 m!535927))

(declare-fun m!535929 () Bool)

(assert (=> b!557960 m!535929))

(declare-fun m!535931 () Bool)

(assert (=> b!557960 m!535931))

(declare-fun m!535933 () Bool)

(assert (=> b!557958 m!535933))

(assert (=> b!557953 m!535913))

(declare-fun m!535935 () Bool)

(assert (=> b!557953 m!535935))

(assert (=> b!557953 m!535935))

(declare-fun m!535937 () Bool)

(assert (=> b!557953 m!535937))

(declare-fun m!535939 () Bool)

(assert (=> b!557953 m!535939))

(assert (=> b!557953 m!535935))

(declare-fun m!535941 () Bool)

(assert (=> b!557953 m!535941))

(assert (=> b!557953 m!535913))

(declare-fun m!535943 () Bool)

(assert (=> b!557953 m!535943))

(assert (=> b!557953 m!535913))

(declare-fun m!535945 () Bool)

(assert (=> b!557953 m!535945))

(declare-fun m!535947 () Bool)

(assert (=> start!51096 m!535947))

(declare-fun m!535949 () Bool)

(assert (=> start!51096 m!535949))

(push 1)

