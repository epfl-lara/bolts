; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65344 () Bool)

(assert start!65344)

(declare-fun b!741976 () Bool)

(declare-fun res!499348 () Bool)

(declare-fun e!414714 () Bool)

(assert (=> b!741976 (=> (not res!499348) (not e!414714))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41470 0))(
  ( (array!41471 (arr!19845 (Array (_ BitVec 32) (_ BitVec 64))) (size!20266 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41470)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741976 (= res!499348 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19845 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741977 () Bool)

(declare-fun res!499352 () Bool)

(declare-fun e!414713 () Bool)

(assert (=> b!741977 (=> (not res!499352) (not e!414713))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41470 (_ BitVec 32)) Bool)

(assert (=> b!741977 (= res!499352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741978 () Bool)

(declare-fun res!499345 () Bool)

(assert (=> b!741978 (=> (not res!499345) (not e!414713))))

(declare-datatypes ((List!13900 0))(
  ( (Nil!13897) (Cons!13896 (h!14968 (_ BitVec 64)) (t!20223 List!13900)) )
))
(declare-fun arrayNoDuplicates!0 (array!41470 (_ BitVec 32) List!13900) Bool)

(assert (=> b!741978 (= res!499345 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13897))))

(declare-fun b!741979 () Bool)

(declare-fun res!499358 () Bool)

(declare-fun e!414718 () Bool)

(assert (=> b!741979 (=> (not res!499358) (not e!414718))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741979 (= res!499358 (validKeyInArray!0 k!2102))))

(declare-fun b!741980 () Bool)

(declare-fun res!499350 () Bool)

(assert (=> b!741980 (=> (not res!499350) (not e!414718))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!741980 (= res!499350 (validKeyInArray!0 (select (arr!19845 a!3186) j!159)))))

(declare-fun b!741981 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7452 0))(
  ( (MissingZero!7452 (index!32175 (_ BitVec 32))) (Found!7452 (index!32176 (_ BitVec 32))) (Intermediate!7452 (undefined!8264 Bool) (index!32177 (_ BitVec 32)) (x!63179 (_ BitVec 32))) (Undefined!7452) (MissingVacant!7452 (index!32178 (_ BitVec 32))) )
))
(declare-fun lt!329640 () SeekEntryResult!7452)

(declare-fun e!414715 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41470 (_ BitVec 32)) SeekEntryResult!7452)

(assert (=> b!741981 (= e!414715 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19845 a!3186) j!159) a!3186 mask!3328) lt!329640))))

(declare-fun b!741982 () Bool)

(assert (=> b!741982 (= e!414713 e!414714)))

(declare-fun res!499355 () Bool)

(assert (=> b!741982 (=> (not res!499355) (not e!414714))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741982 (= res!499355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19845 a!3186) j!159) mask!3328) (select (arr!19845 a!3186) j!159) a!3186 mask!3328) lt!329640))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741982 (= lt!329640 (Intermediate!7452 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741983 () Bool)

(declare-fun res!499353 () Bool)

(assert (=> b!741983 (=> (not res!499353) (not e!414714))))

(assert (=> b!741983 (= res!499353 e!414715)))

(declare-fun c!81696 () Bool)

(assert (=> b!741983 (= c!81696 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741985 () Bool)

(declare-fun e!414720 () Bool)

(declare-fun e!414719 () Bool)

(assert (=> b!741985 (= e!414720 e!414719)))

(declare-fun res!499346 () Bool)

(assert (=> b!741985 (=> (not res!499346) (not e!414719))))

(declare-fun lt!329639 () SeekEntryResult!7452)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41470 (_ BitVec 32)) SeekEntryResult!7452)

(assert (=> b!741985 (= res!499346 (= (seekEntryOrOpen!0 (select (arr!19845 a!3186) j!159) a!3186 mask!3328) lt!329639))))

(assert (=> b!741985 (= lt!329639 (Found!7452 j!159))))

(declare-fun b!741986 () Bool)

(declare-fun e!414716 () Bool)

(assert (=> b!741986 (= e!414714 e!414716)))

(declare-fun res!499356 () Bool)

(assert (=> b!741986 (=> (not res!499356) (not e!414716))))

(declare-fun lt!329642 () array!41470)

(declare-fun lt!329638 () (_ BitVec 64))

(assert (=> b!741986 (= res!499356 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329638 mask!3328) lt!329638 lt!329642 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329638 lt!329642 mask!3328)))))

(assert (=> b!741986 (= lt!329638 (select (store (arr!19845 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741986 (= lt!329642 (array!41471 (store (arr!19845 a!3186) i!1173 k!2102) (size!20266 a!3186)))))

(declare-fun b!741987 () Bool)

(declare-fun res!499354 () Bool)

(assert (=> b!741987 (=> (not res!499354) (not e!414718))))

(assert (=> b!741987 (= res!499354 (and (= (size!20266 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20266 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20266 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741988 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41470 (_ BitVec 32)) SeekEntryResult!7452)

(assert (=> b!741988 (= e!414715 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19845 a!3186) j!159) a!3186 mask!3328) (Found!7452 j!159)))))

(declare-fun b!741984 () Bool)

(declare-fun res!499357 () Bool)

(assert (=> b!741984 (=> (not res!499357) (not e!414718))))

(declare-fun arrayContainsKey!0 (array!41470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741984 (= res!499357 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!499351 () Bool)

(assert (=> start!65344 (=> (not res!499351) (not e!414718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65344 (= res!499351 (validMask!0 mask!3328))))

(assert (=> start!65344 e!414718))

(assert (=> start!65344 true))

(declare-fun array_inv!15619 (array!41470) Bool)

(assert (=> start!65344 (array_inv!15619 a!3186)))

(declare-fun b!741989 () Bool)

(assert (=> b!741989 (= e!414716 (not true))))

(assert (=> b!741989 e!414720))

(declare-fun res!499349 () Bool)

(assert (=> b!741989 (=> (not res!499349) (not e!414720))))

(assert (=> b!741989 (= res!499349 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25384 0))(
  ( (Unit!25385) )
))
(declare-fun lt!329641 () Unit!25384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25384)

(assert (=> b!741989 (= lt!329641 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741990 () Bool)

(assert (=> b!741990 (= e!414718 e!414713)))

(declare-fun res!499347 () Bool)

(assert (=> b!741990 (=> (not res!499347) (not e!414713))))

(declare-fun lt!329637 () SeekEntryResult!7452)

(assert (=> b!741990 (= res!499347 (or (= lt!329637 (MissingZero!7452 i!1173)) (= lt!329637 (MissingVacant!7452 i!1173))))))

(assert (=> b!741990 (= lt!329637 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741991 () Bool)

(declare-fun res!499359 () Bool)

(assert (=> b!741991 (=> (not res!499359) (not e!414713))))

(assert (=> b!741991 (= res!499359 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20266 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20266 a!3186))))))

(declare-fun b!741992 () Bool)

(assert (=> b!741992 (= e!414719 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19845 a!3186) j!159) a!3186 mask!3328) lt!329639))))

(assert (= (and start!65344 res!499351) b!741987))

(assert (= (and b!741987 res!499354) b!741980))

(assert (= (and b!741980 res!499350) b!741979))

(assert (= (and b!741979 res!499358) b!741984))

(assert (= (and b!741984 res!499357) b!741990))

(assert (= (and b!741990 res!499347) b!741977))

(assert (= (and b!741977 res!499352) b!741978))

(assert (= (and b!741978 res!499345) b!741991))

(assert (= (and b!741991 res!499359) b!741982))

(assert (= (and b!741982 res!499355) b!741976))

(assert (= (and b!741976 res!499348) b!741983))

(assert (= (and b!741983 c!81696) b!741981))

(assert (= (and b!741983 (not c!81696)) b!741988))

(assert (= (and b!741983 res!499353) b!741986))

(assert (= (and b!741986 res!499356) b!741989))

(assert (= (and b!741989 res!499349) b!741985))

(assert (= (and b!741985 res!499346) b!741992))

(declare-fun m!692983 () Bool)

(assert (=> b!741979 m!692983))

(declare-fun m!692985 () Bool)

(assert (=> b!741977 m!692985))

(declare-fun m!692987 () Bool)

(assert (=> b!741990 m!692987))

(declare-fun m!692989 () Bool)

(assert (=> b!741984 m!692989))

(declare-fun m!692991 () Bool)

(assert (=> b!741976 m!692991))

(declare-fun m!692993 () Bool)

(assert (=> b!741989 m!692993))

(declare-fun m!692995 () Bool)

(assert (=> b!741989 m!692995))

(declare-fun m!692997 () Bool)

(assert (=> b!741981 m!692997))

(assert (=> b!741981 m!692997))

(declare-fun m!692999 () Bool)

(assert (=> b!741981 m!692999))

(assert (=> b!741982 m!692997))

(assert (=> b!741982 m!692997))

(declare-fun m!693001 () Bool)

(assert (=> b!741982 m!693001))

(assert (=> b!741982 m!693001))

(assert (=> b!741982 m!692997))

(declare-fun m!693003 () Bool)

(assert (=> b!741982 m!693003))

(declare-fun m!693005 () Bool)

(assert (=> b!741986 m!693005))

(declare-fun m!693007 () Bool)

(assert (=> b!741986 m!693007))

(declare-fun m!693009 () Bool)

(assert (=> b!741986 m!693009))

(declare-fun m!693011 () Bool)

(assert (=> b!741986 m!693011))

(declare-fun m!693013 () Bool)

(assert (=> b!741986 m!693013))

(assert (=> b!741986 m!693011))

(assert (=> b!741985 m!692997))

(assert (=> b!741985 m!692997))

(declare-fun m!693015 () Bool)

(assert (=> b!741985 m!693015))

(assert (=> b!741992 m!692997))

(assert (=> b!741992 m!692997))

(declare-fun m!693017 () Bool)

(assert (=> b!741992 m!693017))

(assert (=> b!741980 m!692997))

(assert (=> b!741980 m!692997))

(declare-fun m!693019 () Bool)

(assert (=> b!741980 m!693019))

(declare-fun m!693021 () Bool)

(assert (=> b!741978 m!693021))

(assert (=> b!741988 m!692997))

(assert (=> b!741988 m!692997))

(declare-fun m!693023 () Bool)

(assert (=> b!741988 m!693023))

(declare-fun m!693025 () Bool)

(assert (=> start!65344 m!693025))

(declare-fun m!693027 () Bool)

(assert (=> start!65344 m!693027))

(push 1)

