; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65450 () Bool)

(assert start!65450)

(declare-fun b!744984 () Bool)

(declare-fun e!416139 () Bool)

(declare-fun e!416142 () Bool)

(assert (=> b!744984 (= e!416139 e!416142)))

(declare-fun res!502038 () Bool)

(assert (=> b!744984 (=> (not res!502038) (not e!416142))))

(declare-datatypes ((SeekEntryResult!7505 0))(
  ( (MissingZero!7505 (index!32387 (_ BitVec 32))) (Found!7505 (index!32388 (_ BitVec 32))) (Intermediate!7505 (undefined!8317 Bool) (index!32389 (_ BitVec 32)) (x!63368 (_ BitVec 32))) (Undefined!7505) (MissingVacant!7505 (index!32390 (_ BitVec 32))) )
))
(declare-fun lt!330985 () SeekEntryResult!7505)

(declare-datatypes ((array!41576 0))(
  ( (array!41577 (arr!19898 (Array (_ BitVec 32) (_ BitVec 64))) (size!20319 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41576)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41576 (_ BitVec 32)) SeekEntryResult!7505)

(assert (=> b!744984 (= res!502038 (= (seekEntryOrOpen!0 (select (arr!19898 a!3186) j!159) a!3186 mask!3328) lt!330985))))

(assert (=> b!744984 (= lt!330985 (Found!7505 j!159))))

(declare-fun b!744985 () Bool)

(declare-fun res!502049 () Bool)

(declare-fun e!416140 () Bool)

(assert (=> b!744985 (=> (not res!502049) (not e!416140))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744985 (= res!502049 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19898 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744986 () Bool)

(declare-fun e!416143 () Bool)

(declare-fun e!416137 () Bool)

(assert (=> b!744986 (= e!416143 e!416137)))

(declare-fun res!502043 () Bool)

(assert (=> b!744986 (=> (not res!502043) (not e!416137))))

(declare-fun lt!330991 () SeekEntryResult!7505)

(assert (=> b!744986 (= res!502043 (or (= lt!330991 (MissingZero!7505 i!1173)) (= lt!330991 (MissingVacant!7505 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!744986 (= lt!330991 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744987 () Bool)

(declare-fun res!502039 () Bool)

(assert (=> b!744987 (=> (not res!502039) (not e!416143))))

(assert (=> b!744987 (= res!502039 (and (= (size!20319 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20319 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20319 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744988 () Bool)

(declare-fun res!502044 () Bool)

(assert (=> b!744988 (=> (not res!502044) (not e!416137))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744988 (= res!502044 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20319 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20319 a!3186))))))

(declare-fun b!744990 () Bool)

(declare-fun res!502042 () Bool)

(assert (=> b!744990 (=> (not res!502042) (not e!416143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744990 (= res!502042 (validKeyInArray!0 k!2102))))

(declare-fun b!744991 () Bool)

(declare-fun res!502047 () Bool)

(assert (=> b!744991 (=> (not res!502047) (not e!416143))))

(declare-fun arrayContainsKey!0 (array!41576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744991 (= res!502047 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744992 () Bool)

(declare-fun res!502036 () Bool)

(assert (=> b!744992 (=> (not res!502036) (not e!416140))))

(declare-fun e!416141 () Bool)

(assert (=> b!744992 (= res!502036 e!416141)))

(declare-fun c!81855 () Bool)

(assert (=> b!744992 (= c!81855 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744993 () Bool)

(declare-fun res!502041 () Bool)

(assert (=> b!744993 (=> (not res!502041) (not e!416143))))

(assert (=> b!744993 (= res!502041 (validKeyInArray!0 (select (arr!19898 a!3186) j!159)))))

(declare-fun b!744994 () Bool)

(declare-fun res!502040 () Bool)

(assert (=> b!744994 (=> (not res!502040) (not e!416137))))

(declare-datatypes ((List!13953 0))(
  ( (Nil!13950) (Cons!13949 (h!15021 (_ BitVec 64)) (t!20276 List!13953)) )
))
(declare-fun arrayNoDuplicates!0 (array!41576 (_ BitVec 32) List!13953) Bool)

(assert (=> b!744994 (= res!502040 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13950))))

(declare-fun b!744995 () Bool)

(declare-fun res!502045 () Bool)

(assert (=> b!744995 (=> (not res!502045) (not e!416137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41576 (_ BitVec 32)) Bool)

(assert (=> b!744995 (= res!502045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744996 () Bool)

(declare-fun e!416145 () Bool)

(assert (=> b!744996 (= e!416140 e!416145)))

(declare-fun res!502050 () Bool)

(assert (=> b!744996 (=> (not res!502050) (not e!416145))))

(declare-fun lt!330984 () SeekEntryResult!7505)

(declare-fun lt!330990 () SeekEntryResult!7505)

(assert (=> b!744996 (= res!502050 (= lt!330984 lt!330990))))

(declare-fun lt!330989 () array!41576)

(declare-fun lt!330987 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41576 (_ BitVec 32)) SeekEntryResult!7505)

(assert (=> b!744996 (= lt!330990 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330987 lt!330989 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744996 (= lt!330984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330987 mask!3328) lt!330987 lt!330989 mask!3328))))

(assert (=> b!744996 (= lt!330987 (select (store (arr!19898 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744996 (= lt!330989 (array!41577 (store (arr!19898 a!3186) i!1173 k!2102) (size!20319 a!3186)))))

(declare-fun b!744997 () Bool)

(declare-fun e!416138 () Bool)

(assert (=> b!744997 (= e!416138 true)))

(declare-fun lt!330986 () SeekEntryResult!7505)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41576 (_ BitVec 32)) SeekEntryResult!7505)

(assert (=> b!744997 (= lt!330986 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19898 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744998 () Bool)

(assert (=> b!744998 (= e!416145 (not e!416138))))

(declare-fun res!502046 () Bool)

(assert (=> b!744998 (=> res!502046 e!416138)))

(assert (=> b!744998 (= res!502046 (or (not (is-Intermediate!7505 lt!330990)) (bvslt x!1131 (x!63368 lt!330990)) (not (= x!1131 (x!63368 lt!330990))) (not (= index!1321 (index!32389 lt!330990)))))))

(assert (=> b!744998 e!416139))

(declare-fun res!502035 () Bool)

(assert (=> b!744998 (=> (not res!502035) (not e!416139))))

(assert (=> b!744998 (= res!502035 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25490 0))(
  ( (Unit!25491) )
))
(declare-fun lt!330988 () Unit!25490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25490)

(assert (=> b!744998 (= lt!330988 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744999 () Bool)

(assert (=> b!744999 (= e!416137 e!416140)))

(declare-fun res!502048 () Bool)

(assert (=> b!744999 (=> (not res!502048) (not e!416140))))

(declare-fun lt!330992 () SeekEntryResult!7505)

(assert (=> b!744999 (= res!502048 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19898 a!3186) j!159) mask!3328) (select (arr!19898 a!3186) j!159) a!3186 mask!3328) lt!330992))))

(assert (=> b!744999 (= lt!330992 (Intermediate!7505 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744989 () Bool)

(assert (=> b!744989 (= e!416141 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19898 a!3186) j!159) a!3186 mask!3328) (Found!7505 j!159)))))

(declare-fun res!502037 () Bool)

(assert (=> start!65450 (=> (not res!502037) (not e!416143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65450 (= res!502037 (validMask!0 mask!3328))))

(assert (=> start!65450 e!416143))

(assert (=> start!65450 true))

(declare-fun array_inv!15672 (array!41576) Bool)

(assert (=> start!65450 (array_inv!15672 a!3186)))

(declare-fun b!745000 () Bool)

(assert (=> b!745000 (= e!416141 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19898 a!3186) j!159) a!3186 mask!3328) lt!330992))))

(declare-fun b!745001 () Bool)

(assert (=> b!745001 (= e!416142 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19898 a!3186) j!159) a!3186 mask!3328) lt!330985))))

(assert (= (and start!65450 res!502037) b!744987))

(assert (= (and b!744987 res!502039) b!744993))

(assert (= (and b!744993 res!502041) b!744990))

(assert (= (and b!744990 res!502042) b!744991))

(assert (= (and b!744991 res!502047) b!744986))

(assert (= (and b!744986 res!502043) b!744995))

(assert (= (and b!744995 res!502045) b!744994))

(assert (= (and b!744994 res!502040) b!744988))

(assert (= (and b!744988 res!502044) b!744999))

(assert (= (and b!744999 res!502048) b!744985))

(assert (= (and b!744985 res!502049) b!744992))

(assert (= (and b!744992 c!81855) b!745000))

(assert (= (and b!744992 (not c!81855)) b!744989))

(assert (= (and b!744992 res!502036) b!744996))

(assert (= (and b!744996 res!502050) b!744998))

(assert (= (and b!744998 res!502035) b!744984))

(assert (= (and b!744984 res!502038) b!745001))

(assert (= (and b!744998 (not res!502046)) b!744997))

(declare-fun m!695511 () Bool)

(assert (=> b!744989 m!695511))

(assert (=> b!744989 m!695511))

(declare-fun m!695513 () Bool)

(assert (=> b!744989 m!695513))

(declare-fun m!695515 () Bool)

(assert (=> b!744985 m!695515))

(declare-fun m!695517 () Bool)

(assert (=> b!744986 m!695517))

(declare-fun m!695519 () Bool)

(assert (=> b!744994 m!695519))

(declare-fun m!695521 () Bool)

(assert (=> b!744995 m!695521))

(assert (=> b!745000 m!695511))

(assert (=> b!745000 m!695511))

(declare-fun m!695523 () Bool)

(assert (=> b!745000 m!695523))

(assert (=> b!744984 m!695511))

(assert (=> b!744984 m!695511))

(declare-fun m!695525 () Bool)

(assert (=> b!744984 m!695525))

(declare-fun m!695527 () Bool)

(assert (=> b!744990 m!695527))

(assert (=> b!744999 m!695511))

(assert (=> b!744999 m!695511))

(declare-fun m!695529 () Bool)

(assert (=> b!744999 m!695529))

(assert (=> b!744999 m!695529))

(assert (=> b!744999 m!695511))

(declare-fun m!695531 () Bool)

(assert (=> b!744999 m!695531))

(assert (=> b!744993 m!695511))

(assert (=> b!744993 m!695511))

(declare-fun m!695533 () Bool)

(assert (=> b!744993 m!695533))

(assert (=> b!745001 m!695511))

(assert (=> b!745001 m!695511))

(declare-fun m!695535 () Bool)

(assert (=> b!745001 m!695535))

(declare-fun m!695537 () Bool)

(assert (=> b!744991 m!695537))

(declare-fun m!695539 () Bool)

(assert (=> b!744998 m!695539))

(declare-fun m!695541 () Bool)

(assert (=> b!744998 m!695541))

(declare-fun m!695543 () Bool)

(assert (=> start!65450 m!695543))

(declare-fun m!695545 () Bool)

(assert (=> start!65450 m!695545))

(declare-fun m!695547 () Bool)

(assert (=> b!744996 m!695547))

(declare-fun m!695549 () Bool)

(assert (=> b!744996 m!695549))

(declare-fun m!695551 () Bool)

(assert (=> b!744996 m!695551))

(declare-fun m!695553 () Bool)

(assert (=> b!744996 m!695553))

(declare-fun m!695555 () Bool)

(assert (=> b!744996 m!695555))

(assert (=> b!744996 m!695549))

(assert (=> b!744997 m!695511))

(assert (=> b!744997 m!695511))

(assert (=> b!744997 m!695513))

(push 1)

