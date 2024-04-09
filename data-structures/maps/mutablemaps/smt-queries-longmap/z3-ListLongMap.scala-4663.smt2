; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64770 () Bool)

(assert start!64770)

(declare-fun b!730964 () Bool)

(declare-fun e!409053 () Bool)

(declare-fun e!409058 () Bool)

(assert (=> b!730964 (= e!409053 e!409058)))

(declare-fun res!491327 () Bool)

(assert (=> b!730964 (=> (not res!491327) (not e!409058))))

(declare-datatypes ((SeekEntryResult!7309 0))(
  ( (MissingZero!7309 (index!31603 (_ BitVec 32))) (Found!7309 (index!31604 (_ BitVec 32))) (Intermediate!7309 (undefined!8121 Bool) (index!31605 (_ BitVec 32)) (x!62604 (_ BitVec 32))) (Undefined!7309) (MissingVacant!7309 (index!31606 (_ BitVec 32))) )
))
(declare-fun lt!323952 () SeekEntryResult!7309)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730964 (= res!491327 (or (= lt!323952 (MissingZero!7309 i!1173)) (= lt!323952 (MissingVacant!7309 i!1173))))))

(declare-datatypes ((array!41172 0))(
  ( (array!41173 (arr!19702 (Array (_ BitVec 32) (_ BitVec 64))) (size!20123 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41172)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41172 (_ BitVec 32)) SeekEntryResult!7309)

(assert (=> b!730964 (= lt!323952 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!409056 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!730965 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41172 (_ BitVec 32)) SeekEntryResult!7309)

(assert (=> b!730965 (= e!409056 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19702 a!3186) j!159) a!3186 mask!3328) (Found!7309 j!159)))))

(declare-fun b!730966 () Bool)

(declare-fun res!491329 () Bool)

(assert (=> b!730966 (=> (not res!491329) (not e!409058))))

(declare-datatypes ((List!13757 0))(
  ( (Nil!13754) (Cons!13753 (h!14813 (_ BitVec 64)) (t!20080 List!13757)) )
))
(declare-fun arrayNoDuplicates!0 (array!41172 (_ BitVec 32) List!13757) Bool)

(assert (=> b!730966 (= res!491329 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13754))))

(declare-fun res!491330 () Bool)

(assert (=> start!64770 (=> (not res!491330) (not e!409053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64770 (= res!491330 (validMask!0 mask!3328))))

(assert (=> start!64770 e!409053))

(assert (=> start!64770 true))

(declare-fun array_inv!15476 (array!41172) Bool)

(assert (=> start!64770 (array_inv!15476 a!3186)))

(declare-fun b!730967 () Bool)

(declare-fun e!409059 () Bool)

(declare-fun e!409054 () Bool)

(assert (=> b!730967 (= e!409059 e!409054)))

(declare-fun res!491331 () Bool)

(assert (=> b!730967 (=> res!491331 e!409054)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730967 (= res!491331 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323953 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730967 (= lt!323953 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730968 () Bool)

(declare-fun e!409052 () Bool)

(assert (=> b!730968 (= e!409058 e!409052)))

(declare-fun res!491338 () Bool)

(assert (=> b!730968 (=> (not res!491338) (not e!409052))))

(declare-fun lt!323950 () SeekEntryResult!7309)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41172 (_ BitVec 32)) SeekEntryResult!7309)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730968 (= res!491338 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19702 a!3186) j!159) mask!3328) (select (arr!19702 a!3186) j!159) a!3186 mask!3328) lt!323950))))

(assert (=> b!730968 (= lt!323950 (Intermediate!7309 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730969 () Bool)

(declare-fun e!409051 () Bool)

(assert (=> b!730969 (= e!409052 e!409051)))

(declare-fun res!491341 () Bool)

(assert (=> b!730969 (=> (not res!491341) (not e!409051))))

(declare-fun lt!323955 () SeekEntryResult!7309)

(declare-fun lt!323949 () SeekEntryResult!7309)

(assert (=> b!730969 (= res!491341 (= lt!323955 lt!323949))))

(declare-fun lt!323948 () (_ BitVec 64))

(declare-fun lt!323954 () array!41172)

(assert (=> b!730969 (= lt!323949 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323948 lt!323954 mask!3328))))

(assert (=> b!730969 (= lt!323955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323948 mask!3328) lt!323948 lt!323954 mask!3328))))

(assert (=> b!730969 (= lt!323948 (select (store (arr!19702 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!730969 (= lt!323954 (array!41173 (store (arr!19702 a!3186) i!1173 k0!2102) (size!20123 a!3186)))))

(declare-fun b!730970 () Bool)

(declare-fun res!491333 () Bool)

(assert (=> b!730970 (=> (not res!491333) (not e!409058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41172 (_ BitVec 32)) Bool)

(assert (=> b!730970 (= res!491333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730971 () Bool)

(assert (=> b!730971 (= e!409056 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19702 a!3186) j!159) a!3186 mask!3328) lt!323950))))

(declare-fun b!730972 () Bool)

(assert (=> b!730972 (= e!409054 true)))

(declare-fun lt!323956 () SeekEntryResult!7309)

(assert (=> b!730972 (= lt!323956 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19702 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!730973 () Bool)

(declare-fun res!491339 () Bool)

(assert (=> b!730973 (=> (not res!491339) (not e!409052))))

(assert (=> b!730973 (= res!491339 e!409056)))

(declare-fun c!80193 () Bool)

(assert (=> b!730973 (= c!80193 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730974 () Bool)

(declare-fun res!491340 () Bool)

(assert (=> b!730974 (=> (not res!491340) (not e!409052))))

(assert (=> b!730974 (= res!491340 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19702 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730975 () Bool)

(declare-fun res!491342 () Bool)

(assert (=> b!730975 (=> (not res!491342) (not e!409053))))

(declare-fun arrayContainsKey!0 (array!41172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730975 (= res!491342 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!409057 () Bool)

(declare-fun b!730976 () Bool)

(declare-fun lt!323951 () SeekEntryResult!7309)

(assert (=> b!730976 (= e!409057 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19702 a!3186) j!159) a!3186 mask!3328) lt!323951))))

(declare-fun b!730977 () Bool)

(declare-fun res!491337 () Bool)

(assert (=> b!730977 (=> (not res!491337) (not e!409058))))

(assert (=> b!730977 (= res!491337 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20123 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20123 a!3186))))))

(declare-fun b!730978 () Bool)

(assert (=> b!730978 (= e!409051 (not e!409059))))

(declare-fun res!491328 () Bool)

(assert (=> b!730978 (=> res!491328 e!409059)))

(get-info :version)

(assert (=> b!730978 (= res!491328 (or (not ((_ is Intermediate!7309) lt!323949)) (bvsge x!1131 (x!62604 lt!323949))))))

(declare-fun e!409055 () Bool)

(assert (=> b!730978 e!409055))

(declare-fun res!491336 () Bool)

(assert (=> b!730978 (=> (not res!491336) (not e!409055))))

(assert (=> b!730978 (= res!491336 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24936 0))(
  ( (Unit!24937) )
))
(declare-fun lt!323957 () Unit!24936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41172 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24936)

(assert (=> b!730978 (= lt!323957 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730979 () Bool)

(declare-fun res!491334 () Bool)

(assert (=> b!730979 (=> (not res!491334) (not e!409053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730979 (= res!491334 (validKeyInArray!0 (select (arr!19702 a!3186) j!159)))))

(declare-fun b!730980 () Bool)

(declare-fun res!491332 () Bool)

(assert (=> b!730980 (=> (not res!491332) (not e!409053))))

(assert (=> b!730980 (= res!491332 (validKeyInArray!0 k0!2102))))

(declare-fun b!730981 () Bool)

(declare-fun res!491335 () Bool)

(assert (=> b!730981 (=> (not res!491335) (not e!409053))))

(assert (=> b!730981 (= res!491335 (and (= (size!20123 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20123 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20123 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730982 () Bool)

(assert (=> b!730982 (= e!409055 e!409057)))

(declare-fun res!491343 () Bool)

(assert (=> b!730982 (=> (not res!491343) (not e!409057))))

(assert (=> b!730982 (= res!491343 (= (seekEntryOrOpen!0 (select (arr!19702 a!3186) j!159) a!3186 mask!3328) lt!323951))))

(assert (=> b!730982 (= lt!323951 (Found!7309 j!159))))

(assert (= (and start!64770 res!491330) b!730981))

(assert (= (and b!730981 res!491335) b!730979))

(assert (= (and b!730979 res!491334) b!730980))

(assert (= (and b!730980 res!491332) b!730975))

(assert (= (and b!730975 res!491342) b!730964))

(assert (= (and b!730964 res!491327) b!730970))

(assert (= (and b!730970 res!491333) b!730966))

(assert (= (and b!730966 res!491329) b!730977))

(assert (= (and b!730977 res!491337) b!730968))

(assert (= (and b!730968 res!491338) b!730974))

(assert (= (and b!730974 res!491340) b!730973))

(assert (= (and b!730973 c!80193) b!730971))

(assert (= (and b!730973 (not c!80193)) b!730965))

(assert (= (and b!730973 res!491339) b!730969))

(assert (= (and b!730969 res!491341) b!730978))

(assert (= (and b!730978 res!491336) b!730982))

(assert (= (and b!730982 res!491343) b!730976))

(assert (= (and b!730978 (not res!491328)) b!730967))

(assert (= (and b!730967 (not res!491331)) b!730972))

(declare-fun m!684493 () Bool)

(assert (=> b!730974 m!684493))

(declare-fun m!684495 () Bool)

(assert (=> b!730965 m!684495))

(assert (=> b!730965 m!684495))

(declare-fun m!684497 () Bool)

(assert (=> b!730965 m!684497))

(declare-fun m!684499 () Bool)

(assert (=> b!730966 m!684499))

(assert (=> b!730968 m!684495))

(assert (=> b!730968 m!684495))

(declare-fun m!684501 () Bool)

(assert (=> b!730968 m!684501))

(assert (=> b!730968 m!684501))

(assert (=> b!730968 m!684495))

(declare-fun m!684503 () Bool)

(assert (=> b!730968 m!684503))

(assert (=> b!730979 m!684495))

(assert (=> b!730979 m!684495))

(declare-fun m!684505 () Bool)

(assert (=> b!730979 m!684505))

(declare-fun m!684507 () Bool)

(assert (=> b!730969 m!684507))

(declare-fun m!684509 () Bool)

(assert (=> b!730969 m!684509))

(declare-fun m!684511 () Bool)

(assert (=> b!730969 m!684511))

(declare-fun m!684513 () Bool)

(assert (=> b!730969 m!684513))

(declare-fun m!684515 () Bool)

(assert (=> b!730969 m!684515))

(assert (=> b!730969 m!684511))

(assert (=> b!730972 m!684495))

(assert (=> b!730972 m!684495))

(assert (=> b!730972 m!684497))

(declare-fun m!684517 () Bool)

(assert (=> b!730975 m!684517))

(declare-fun m!684519 () Bool)

(assert (=> b!730980 m!684519))

(declare-fun m!684521 () Bool)

(assert (=> b!730964 m!684521))

(assert (=> b!730982 m!684495))

(assert (=> b!730982 m!684495))

(declare-fun m!684523 () Bool)

(assert (=> b!730982 m!684523))

(assert (=> b!730976 m!684495))

(assert (=> b!730976 m!684495))

(declare-fun m!684525 () Bool)

(assert (=> b!730976 m!684525))

(declare-fun m!684527 () Bool)

(assert (=> b!730970 m!684527))

(declare-fun m!684529 () Bool)

(assert (=> b!730978 m!684529))

(declare-fun m!684531 () Bool)

(assert (=> b!730978 m!684531))

(declare-fun m!684533 () Bool)

(assert (=> b!730967 m!684533))

(declare-fun m!684535 () Bool)

(assert (=> start!64770 m!684535))

(declare-fun m!684537 () Bool)

(assert (=> start!64770 m!684537))

(assert (=> b!730971 m!684495))

(assert (=> b!730971 m!684495))

(declare-fun m!684539 () Bool)

(assert (=> b!730971 m!684539))

(check-sat (not b!730964) (not b!730965) (not b!730978) (not b!730980) (not b!730975) (not b!730967) (not b!730966) (not b!730982) (not b!730971) (not b!730979) (not b!730968) (not b!730969) (not b!730972) (not start!64770) (not b!730976) (not b!730970))
(check-sat)
