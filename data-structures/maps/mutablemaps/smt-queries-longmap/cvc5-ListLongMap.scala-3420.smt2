; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47452 () Bool)

(assert start!47452)

(declare-fun b!522055 () Bool)

(declare-fun res!319890 () Bool)

(declare-fun e!304514 () Bool)

(assert (=> b!522055 (=> (not res!319890) (not e!304514))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!33238 0))(
  ( (array!33239 (arr!15972 (Array (_ BitVec 32) (_ BitVec 64))) (size!16336 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33238)

(assert (=> b!522055 (= res!319890 (and (= (size!16336 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16336 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16336 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522056 () Bool)

(declare-datatypes ((Unit!16250 0))(
  ( (Unit!16251) )
))
(declare-fun e!304513 () Unit!16250)

(declare-fun Unit!16252 () Unit!16250)

(assert (=> b!522056 (= e!304513 Unit!16252)))

(declare-fun b!522057 () Bool)

(declare-fun e!304518 () Bool)

(assert (=> b!522057 (= e!304514 e!304518)))

(declare-fun res!319893 () Bool)

(assert (=> b!522057 (=> (not res!319893) (not e!304518))))

(declare-datatypes ((SeekEntryResult!4446 0))(
  ( (MissingZero!4446 (index!19987 (_ BitVec 32))) (Found!4446 (index!19988 (_ BitVec 32))) (Intermediate!4446 (undefined!5258 Bool) (index!19989 (_ BitVec 32)) (x!48995 (_ BitVec 32))) (Undefined!4446) (MissingVacant!4446 (index!19990 (_ BitVec 32))) )
))
(declare-fun lt!239450 () SeekEntryResult!4446)

(assert (=> b!522057 (= res!319893 (or (= lt!239450 (MissingZero!4446 i!1204)) (= lt!239450 (MissingVacant!4446 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33238 (_ BitVec 32)) SeekEntryResult!4446)

(assert (=> b!522057 (= lt!239450 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522058 () Bool)

(declare-fun res!319897 () Bool)

(assert (=> b!522058 (=> (not res!319897) (not e!304518))))

(declare-datatypes ((List!10183 0))(
  ( (Nil!10180) (Cons!10179 (h!11101 (_ BitVec 64)) (t!16419 List!10183)) )
))
(declare-fun arrayNoDuplicates!0 (array!33238 (_ BitVec 32) List!10183) Bool)

(assert (=> b!522058 (= res!319897 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10180))))

(declare-fun b!522059 () Bool)

(declare-fun res!319889 () Bool)

(assert (=> b!522059 (=> (not res!319889) (not e!304514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522059 (= res!319889 (validKeyInArray!0 (select (arr!15972 a!3235) j!176)))))

(declare-fun b!522060 () Bool)

(declare-fun e!304517 () Bool)

(assert (=> b!522060 (= e!304518 (not e!304517))))

(declare-fun res!319892 () Bool)

(assert (=> b!522060 (=> res!319892 e!304517)))

(declare-fun lt!239443 () SeekEntryResult!4446)

(declare-fun lt!239446 () (_ BitVec 64))

(declare-fun lt!239444 () (_ BitVec 32))

(declare-fun lt!239449 () array!33238)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33238 (_ BitVec 32)) SeekEntryResult!4446)

(assert (=> b!522060 (= res!319892 (= lt!239443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239444 lt!239446 lt!239449 mask!3524)))))

(declare-fun lt!239445 () (_ BitVec 32))

(assert (=> b!522060 (= lt!239443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239445 (select (arr!15972 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522060 (= lt!239444 (toIndex!0 lt!239446 mask!3524))))

(assert (=> b!522060 (= lt!239446 (select (store (arr!15972 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522060 (= lt!239445 (toIndex!0 (select (arr!15972 a!3235) j!176) mask!3524))))

(assert (=> b!522060 (= lt!239449 (array!33239 (store (arr!15972 a!3235) i!1204 k!2280) (size!16336 a!3235)))))

(declare-fun e!304515 () Bool)

(assert (=> b!522060 e!304515))

(declare-fun res!319894 () Bool)

(assert (=> b!522060 (=> (not res!319894) (not e!304515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33238 (_ BitVec 32)) Bool)

(assert (=> b!522060 (= res!319894 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239442 () Unit!16250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33238 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16250)

(assert (=> b!522060 (= lt!239442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522061 () Bool)

(assert (=> b!522061 (= e!304515 (= (seekEntryOrOpen!0 (select (arr!15972 a!3235) j!176) a!3235 mask!3524) (Found!4446 j!176)))))

(declare-fun b!522063 () Bool)

(declare-fun Unit!16253 () Unit!16250)

(assert (=> b!522063 (= e!304513 Unit!16253)))

(declare-fun lt!239447 () Unit!16250)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33238 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16250)

(assert (=> b!522063 (= lt!239447 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239445 #b00000000000000000000000000000000 (index!19989 lt!239443) (x!48995 lt!239443) mask!3524))))

(declare-fun res!319896 () Bool)

(assert (=> b!522063 (= res!319896 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239445 lt!239446 lt!239449 mask!3524) (Intermediate!4446 false (index!19989 lt!239443) (x!48995 lt!239443))))))

(declare-fun e!304519 () Bool)

(assert (=> b!522063 (=> (not res!319896) (not e!304519))))

(assert (=> b!522063 e!304519))

(declare-fun b!522064 () Bool)

(declare-fun res!319898 () Bool)

(assert (=> b!522064 (=> res!319898 e!304517)))

(assert (=> b!522064 (= res!319898 (or (undefined!5258 lt!239443) (not (is-Intermediate!4446 lt!239443))))))

(declare-fun b!522065 () Bool)

(assert (=> b!522065 (= e!304519 false)))

(declare-fun b!522066 () Bool)

(declare-fun res!319895 () Bool)

(assert (=> b!522066 (=> (not res!319895) (not e!304514))))

(declare-fun arrayContainsKey!0 (array!33238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522066 (= res!319895 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522067 () Bool)

(declare-fun res!319887 () Bool)

(assert (=> b!522067 (=> (not res!319887) (not e!304518))))

(assert (=> b!522067 (= res!319887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522068 () Bool)

(assert (=> b!522068 (= e!304517 true)))

(assert (=> b!522068 (and (or (= (select (arr!15972 a!3235) (index!19989 lt!239443)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15972 a!3235) (index!19989 lt!239443)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15972 a!3235) (index!19989 lt!239443)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15972 a!3235) (index!19989 lt!239443)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239448 () Unit!16250)

(assert (=> b!522068 (= lt!239448 e!304513)))

(declare-fun c!61385 () Bool)

(assert (=> b!522068 (= c!61385 (= (select (arr!15972 a!3235) (index!19989 lt!239443)) (select (arr!15972 a!3235) j!176)))))

(assert (=> b!522068 (and (bvslt (x!48995 lt!239443) #b01111111111111111111111111111110) (or (= (select (arr!15972 a!3235) (index!19989 lt!239443)) (select (arr!15972 a!3235) j!176)) (= (select (arr!15972 a!3235) (index!19989 lt!239443)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15972 a!3235) (index!19989 lt!239443)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!319888 () Bool)

(assert (=> start!47452 (=> (not res!319888) (not e!304514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47452 (= res!319888 (validMask!0 mask!3524))))

(assert (=> start!47452 e!304514))

(assert (=> start!47452 true))

(declare-fun array_inv!11746 (array!33238) Bool)

(assert (=> start!47452 (array_inv!11746 a!3235)))

(declare-fun b!522062 () Bool)

(declare-fun res!319891 () Bool)

(assert (=> b!522062 (=> (not res!319891) (not e!304514))))

(assert (=> b!522062 (= res!319891 (validKeyInArray!0 k!2280))))

(assert (= (and start!47452 res!319888) b!522055))

(assert (= (and b!522055 res!319890) b!522059))

(assert (= (and b!522059 res!319889) b!522062))

(assert (= (and b!522062 res!319891) b!522066))

(assert (= (and b!522066 res!319895) b!522057))

(assert (= (and b!522057 res!319893) b!522067))

(assert (= (and b!522067 res!319887) b!522058))

(assert (= (and b!522058 res!319897) b!522060))

(assert (= (and b!522060 res!319894) b!522061))

(assert (= (and b!522060 (not res!319892)) b!522064))

(assert (= (and b!522064 (not res!319898)) b!522068))

(assert (= (and b!522068 c!61385) b!522063))

(assert (= (and b!522068 (not c!61385)) b!522056))

(assert (= (and b!522063 res!319896) b!522065))

(declare-fun m!503005 () Bool)

(assert (=> b!522058 m!503005))

(declare-fun m!503007 () Bool)

(assert (=> b!522067 m!503007))

(declare-fun m!503009 () Bool)

(assert (=> b!522066 m!503009))

(declare-fun m!503011 () Bool)

(assert (=> b!522061 m!503011))

(assert (=> b!522061 m!503011))

(declare-fun m!503013 () Bool)

(assert (=> b!522061 m!503013))

(assert (=> b!522059 m!503011))

(assert (=> b!522059 m!503011))

(declare-fun m!503015 () Bool)

(assert (=> b!522059 m!503015))

(declare-fun m!503017 () Bool)

(assert (=> b!522063 m!503017))

(declare-fun m!503019 () Bool)

(assert (=> b!522063 m!503019))

(declare-fun m!503021 () Bool)

(assert (=> b!522068 m!503021))

(assert (=> b!522068 m!503011))

(declare-fun m!503023 () Bool)

(assert (=> start!47452 m!503023))

(declare-fun m!503025 () Bool)

(assert (=> start!47452 m!503025))

(declare-fun m!503027 () Bool)

(assert (=> b!522062 m!503027))

(declare-fun m!503029 () Bool)

(assert (=> b!522057 m!503029))

(declare-fun m!503031 () Bool)

(assert (=> b!522060 m!503031))

(declare-fun m!503033 () Bool)

(assert (=> b!522060 m!503033))

(declare-fun m!503035 () Bool)

(assert (=> b!522060 m!503035))

(declare-fun m!503037 () Bool)

(assert (=> b!522060 m!503037))

(declare-fun m!503039 () Bool)

(assert (=> b!522060 m!503039))

(assert (=> b!522060 m!503011))

(declare-fun m!503041 () Bool)

(assert (=> b!522060 m!503041))

(assert (=> b!522060 m!503011))

(declare-fun m!503043 () Bool)

(assert (=> b!522060 m!503043))

(assert (=> b!522060 m!503011))

(declare-fun m!503045 () Bool)

(assert (=> b!522060 m!503045))

(push 1)

