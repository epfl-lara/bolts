; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65554 () Bool)

(assert start!65554)

(declare-fun b!747978 () Bool)

(declare-datatypes ((Unit!25630 0))(
  ( (Unit!25631) )
))
(declare-fun e!417552 () Unit!25630)

(declare-fun Unit!25632 () Unit!25630)

(assert (=> b!747978 (= e!417552 Unit!25632)))

(declare-fun b!747979 () Bool)

(declare-fun res!504607 () Bool)

(declare-fun e!417553 () Bool)

(assert (=> b!747979 (=> (not res!504607) (not e!417553))))

(declare-datatypes ((array!41680 0))(
  ( (array!41681 (arr!19950 (Array (_ BitVec 32) (_ BitVec 64))) (size!20371 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41680)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41680 (_ BitVec 32)) Bool)

(assert (=> b!747979 (= res!504607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747980 () Bool)

(declare-fun res!504619 () Bool)

(declare-fun e!417556 () Bool)

(assert (=> b!747980 (=> res!504619 e!417556)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7557 0))(
  ( (MissingZero!7557 (index!32595 (_ BitVec 32))) (Found!7557 (index!32596 (_ BitVec 32))) (Intermediate!7557 (undefined!8369 Bool) (index!32597 (_ BitVec 32)) (x!63564 (_ BitVec 32))) (Undefined!7557) (MissingVacant!7557 (index!32598 (_ BitVec 32))) )
))
(declare-fun lt!332511 () SeekEntryResult!7557)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41680 (_ BitVec 32)) SeekEntryResult!7557)

(assert (=> b!747980 (= res!504619 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19950 a!3186) j!159) a!3186 mask!3328) lt!332511)))))

(declare-fun b!747981 () Bool)

(declare-fun res!504611 () Bool)

(assert (=> b!747981 (=> res!504611 e!417556)))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!332514 () (_ BitVec 64))

(assert (=> b!747981 (= res!504611 (= (select (store (arr!19950 a!3186) i!1173 k!2102) index!1321) lt!332514))))

(declare-fun b!747982 () Bool)

(assert (=> b!747982 (= e!417556 true)))

(assert (=> b!747982 (= (select (store (arr!19950 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332509 () Unit!25630)

(assert (=> b!747982 (= lt!332509 e!417552)))

(declare-fun c!82068 () Bool)

(assert (=> b!747982 (= c!82068 (= (select (store (arr!19950 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!504612 () Bool)

(declare-fun e!417555 () Bool)

(assert (=> start!65554 (=> (not res!504612) (not e!417555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65554 (= res!504612 (validMask!0 mask!3328))))

(assert (=> start!65554 e!417555))

(assert (=> start!65554 true))

(declare-fun array_inv!15724 (array!41680) Bool)

(assert (=> start!65554 (array_inv!15724 a!3186)))

(declare-fun b!747983 () Bool)

(declare-fun res!504606 () Bool)

(assert (=> b!747983 (=> (not res!504606) (not e!417553))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747983 (= res!504606 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20371 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20371 a!3186))))))

(declare-fun b!747984 () Bool)

(declare-fun e!417554 () Bool)

(assert (=> b!747984 (= e!417554 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19950 a!3186) j!159) a!3186 mask!3328) (Found!7557 j!159)))))

(declare-fun b!747985 () Bool)

(declare-fun res!504608 () Bool)

(assert (=> b!747985 (=> (not res!504608) (not e!417555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747985 (= res!504608 (validKeyInArray!0 (select (arr!19950 a!3186) j!159)))))

(declare-fun b!747986 () Bool)

(assert (=> b!747986 (= e!417555 e!417553)))

(declare-fun res!504616 () Bool)

(assert (=> b!747986 (=> (not res!504616) (not e!417553))))

(declare-fun lt!332512 () SeekEntryResult!7557)

(assert (=> b!747986 (= res!504616 (or (= lt!332512 (MissingZero!7557 i!1173)) (= lt!332512 (MissingVacant!7557 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41680 (_ BitVec 32)) SeekEntryResult!7557)

(assert (=> b!747986 (= lt!332512 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747987 () Bool)

(declare-fun e!417551 () Bool)

(assert (=> b!747987 (= e!417551 (not e!417556))))

(declare-fun res!504613 () Bool)

(assert (=> b!747987 (=> res!504613 e!417556)))

(declare-fun lt!332513 () SeekEntryResult!7557)

(assert (=> b!747987 (= res!504613 (or (not (is-Intermediate!7557 lt!332513)) (bvslt x!1131 (x!63564 lt!332513)) (not (= x!1131 (x!63564 lt!332513))) (not (= index!1321 (index!32597 lt!332513)))))))

(declare-fun e!417558 () Bool)

(assert (=> b!747987 e!417558))

(declare-fun res!504615 () Bool)

(assert (=> b!747987 (=> (not res!504615) (not e!417558))))

(declare-fun lt!332516 () SeekEntryResult!7557)

(assert (=> b!747987 (= res!504615 (= lt!332516 lt!332511))))

(assert (=> b!747987 (= lt!332511 (Found!7557 j!159))))

(assert (=> b!747987 (= lt!332516 (seekEntryOrOpen!0 (select (arr!19950 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747987 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332510 () Unit!25630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41680 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25630)

(assert (=> b!747987 (= lt!332510 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747988 () Bool)

(declare-fun res!504618 () Bool)

(assert (=> b!747988 (=> (not res!504618) (not e!417555))))

(declare-fun arrayContainsKey!0 (array!41680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747988 (= res!504618 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747989 () Bool)

(declare-fun res!504609 () Bool)

(declare-fun e!417550 () Bool)

(assert (=> b!747989 (=> (not res!504609) (not e!417550))))

(assert (=> b!747989 (= res!504609 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19950 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747990 () Bool)

(declare-fun Unit!25633 () Unit!25630)

(assert (=> b!747990 (= e!417552 Unit!25633)))

(assert (=> b!747990 false))

(declare-fun b!747991 () Bool)

(declare-fun res!504610 () Bool)

(assert (=> b!747991 (=> (not res!504610) (not e!417550))))

(assert (=> b!747991 (= res!504610 e!417554)))

(declare-fun c!82067 () Bool)

(assert (=> b!747991 (= c!82067 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!332508 () SeekEntryResult!7557)

(declare-fun b!747992 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41680 (_ BitVec 32)) SeekEntryResult!7557)

(assert (=> b!747992 (= e!417554 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19950 a!3186) j!159) a!3186 mask!3328) lt!332508))))

(declare-fun b!747993 () Bool)

(declare-fun res!504620 () Bool)

(assert (=> b!747993 (=> (not res!504620) (not e!417555))))

(assert (=> b!747993 (= res!504620 (validKeyInArray!0 k!2102))))

(declare-fun b!747994 () Bool)

(declare-fun res!504605 () Bool)

(assert (=> b!747994 (=> (not res!504605) (not e!417555))))

(assert (=> b!747994 (= res!504605 (and (= (size!20371 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20371 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20371 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747995 () Bool)

(assert (=> b!747995 (= e!417553 e!417550)))

(declare-fun res!504621 () Bool)

(assert (=> b!747995 (=> (not res!504621) (not e!417550))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747995 (= res!504621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19950 a!3186) j!159) mask!3328) (select (arr!19950 a!3186) j!159) a!3186 mask!3328) lt!332508))))

(assert (=> b!747995 (= lt!332508 (Intermediate!7557 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747996 () Bool)

(assert (=> b!747996 (= e!417558 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19950 a!3186) j!159) a!3186 mask!3328) lt!332511))))

(declare-fun b!747997 () Bool)

(declare-fun res!504617 () Bool)

(assert (=> b!747997 (=> (not res!504617) (not e!417553))))

(declare-datatypes ((List!14005 0))(
  ( (Nil!14002) (Cons!14001 (h!15073 (_ BitVec 64)) (t!20328 List!14005)) )
))
(declare-fun arrayNoDuplicates!0 (array!41680 (_ BitVec 32) List!14005) Bool)

(assert (=> b!747997 (= res!504617 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14002))))

(declare-fun b!747998 () Bool)

(assert (=> b!747998 (= e!417550 e!417551)))

(declare-fun res!504614 () Bool)

(assert (=> b!747998 (=> (not res!504614) (not e!417551))))

(declare-fun lt!332507 () SeekEntryResult!7557)

(assert (=> b!747998 (= res!504614 (= lt!332507 lt!332513))))

(declare-fun lt!332515 () array!41680)

(assert (=> b!747998 (= lt!332513 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332514 lt!332515 mask!3328))))

(assert (=> b!747998 (= lt!332507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332514 mask!3328) lt!332514 lt!332515 mask!3328))))

(assert (=> b!747998 (= lt!332514 (select (store (arr!19950 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747998 (= lt!332515 (array!41681 (store (arr!19950 a!3186) i!1173 k!2102) (size!20371 a!3186)))))

(assert (= (and start!65554 res!504612) b!747994))

(assert (= (and b!747994 res!504605) b!747985))

(assert (= (and b!747985 res!504608) b!747993))

(assert (= (and b!747993 res!504620) b!747988))

(assert (= (and b!747988 res!504618) b!747986))

(assert (= (and b!747986 res!504616) b!747979))

(assert (= (and b!747979 res!504607) b!747997))

(assert (= (and b!747997 res!504617) b!747983))

(assert (= (and b!747983 res!504606) b!747995))

(assert (= (and b!747995 res!504621) b!747989))

(assert (= (and b!747989 res!504609) b!747991))

(assert (= (and b!747991 c!82067) b!747992))

(assert (= (and b!747991 (not c!82067)) b!747984))

(assert (= (and b!747991 res!504610) b!747998))

(assert (= (and b!747998 res!504614) b!747987))

(assert (= (and b!747987 res!504615) b!747996))

(assert (= (and b!747987 (not res!504613)) b!747980))

(assert (= (and b!747980 (not res!504619)) b!747981))

(assert (= (and b!747981 (not res!504611)) b!747982))

(assert (= (and b!747982 c!82068) b!747990))

(assert (= (and b!747982 (not c!82068)) b!747978))

(declare-fun m!697999 () Bool)

(assert (=> b!747993 m!697999))

(declare-fun m!698001 () Bool)

(assert (=> b!747982 m!698001))

(declare-fun m!698003 () Bool)

(assert (=> b!747982 m!698003))

(declare-fun m!698005 () Bool)

(assert (=> b!747988 m!698005))

(declare-fun m!698007 () Bool)

(assert (=> b!747986 m!698007))

(declare-fun m!698009 () Bool)

(assert (=> b!747985 m!698009))

(assert (=> b!747985 m!698009))

(declare-fun m!698011 () Bool)

(assert (=> b!747985 m!698011))

(declare-fun m!698013 () Bool)

(assert (=> b!747989 m!698013))

(assert (=> b!747981 m!698001))

(assert (=> b!747981 m!698003))

(assert (=> b!747992 m!698009))

(assert (=> b!747992 m!698009))

(declare-fun m!698015 () Bool)

(assert (=> b!747992 m!698015))

(assert (=> b!747995 m!698009))

(assert (=> b!747995 m!698009))

(declare-fun m!698017 () Bool)

(assert (=> b!747995 m!698017))

(assert (=> b!747995 m!698017))

(assert (=> b!747995 m!698009))

(declare-fun m!698019 () Bool)

(assert (=> b!747995 m!698019))

(assert (=> b!747996 m!698009))

(assert (=> b!747996 m!698009))

(declare-fun m!698021 () Bool)

(assert (=> b!747996 m!698021))

(assert (=> b!747984 m!698009))

(assert (=> b!747984 m!698009))

(declare-fun m!698023 () Bool)

(assert (=> b!747984 m!698023))

(assert (=> b!747987 m!698009))

(assert (=> b!747987 m!698009))

(declare-fun m!698025 () Bool)

(assert (=> b!747987 m!698025))

(declare-fun m!698027 () Bool)

(assert (=> b!747987 m!698027))

(declare-fun m!698029 () Bool)

(assert (=> b!747987 m!698029))

(declare-fun m!698031 () Bool)

(assert (=> b!747979 m!698031))

(declare-fun m!698033 () Bool)

(assert (=> b!747997 m!698033))

(declare-fun m!698035 () Bool)

(assert (=> b!747998 m!698035))

(declare-fun m!698037 () Bool)

(assert (=> b!747998 m!698037))

(declare-fun m!698039 () Bool)

(assert (=> b!747998 m!698039))

(assert (=> b!747998 m!698001))

(declare-fun m!698041 () Bool)

(assert (=> b!747998 m!698041))

(assert (=> b!747998 m!698037))

(assert (=> b!747980 m!698009))

(assert (=> b!747980 m!698009))

(assert (=> b!747980 m!698023))

(declare-fun m!698043 () Bool)

(assert (=> start!65554 m!698043))

(declare-fun m!698045 () Bool)

(assert (=> start!65554 m!698045))

(push 1)

