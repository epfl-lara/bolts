; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65586 () Bool)

(assert start!65586)

(declare-fun b!748991 () Bool)

(declare-fun res!505427 () Bool)

(declare-fun e!417994 () Bool)

(assert (=> b!748991 (=> (not res!505427) (not e!417994))))

(declare-datatypes ((array!41712 0))(
  ( (array!41713 (arr!19966 (Array (_ BitVec 32) (_ BitVec 64))) (size!20387 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41712)

(declare-datatypes ((List!14021 0))(
  ( (Nil!14018) (Cons!14017 (h!15089 (_ BitVec 64)) (t!20344 List!14021)) )
))
(declare-fun arrayNoDuplicates!0 (array!41712 (_ BitVec 32) List!14021) Bool)

(assert (=> b!748991 (= res!505427 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14018))))

(declare-fun b!748992 () Bool)

(declare-fun res!505433 () Bool)

(declare-fun e!417989 () Bool)

(assert (=> b!748992 (=> (not res!505433) (not e!417989))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748992 (= res!505433 (validKeyInArray!0 k0!2102))))

(declare-fun b!748994 () Bool)

(declare-fun res!505441 () Bool)

(declare-fun e!417987 () Bool)

(assert (=> b!748994 (=> (not res!505441) (not e!417987))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748994 (= res!505441 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19966 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748995 () Bool)

(declare-fun e!417988 () Bool)

(declare-fun lt!332995 () (_ BitVec 64))

(assert (=> b!748995 (= e!417988 (validKeyInArray!0 lt!332995))))

(declare-fun b!748996 () Bool)

(declare-fun e!417990 () Bool)

(declare-fun e!417993 () Bool)

(assert (=> b!748996 (= e!417990 (not e!417993))))

(declare-fun res!505438 () Bool)

(assert (=> b!748996 (=> res!505438 e!417993)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7573 0))(
  ( (MissingZero!7573 (index!32659 (_ BitVec 32))) (Found!7573 (index!32660 (_ BitVec 32))) (Intermediate!7573 (undefined!8385 Bool) (index!32661 (_ BitVec 32)) (x!63620 (_ BitVec 32))) (Undefined!7573) (MissingVacant!7573 (index!32662 (_ BitVec 32))) )
))
(declare-fun lt!332992 () SeekEntryResult!7573)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!748996 (= res!505438 (or (not ((_ is Intermediate!7573) lt!332992)) (bvslt x!1131 (x!63620 lt!332992)) (not (= x!1131 (x!63620 lt!332992))) (not (= index!1321 (index!32661 lt!332992)))))))

(declare-fun e!417992 () Bool)

(assert (=> b!748996 e!417992))

(declare-fun res!505439 () Bool)

(assert (=> b!748996 (=> (not res!505439) (not e!417992))))

(declare-fun lt!332991 () SeekEntryResult!7573)

(declare-fun lt!332990 () SeekEntryResult!7573)

(assert (=> b!748996 (= res!505439 (= lt!332991 lt!332990))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!748996 (= lt!332990 (Found!7573 j!159))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41712 (_ BitVec 32)) SeekEntryResult!7573)

(assert (=> b!748996 (= lt!332991 (seekEntryOrOpen!0 (select (arr!19966 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41712 (_ BitVec 32)) Bool)

(assert (=> b!748996 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25694 0))(
  ( (Unit!25695) )
))
(declare-fun lt!332993 () Unit!25694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25694)

(assert (=> b!748996 (= lt!332993 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748997 () Bool)

(declare-fun e!417991 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41712 (_ BitVec 32)) SeekEntryResult!7573)

(assert (=> b!748997 (= e!417991 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19966 a!3186) j!159) a!3186 mask!3328) (Found!7573 j!159)))))

(declare-fun b!748998 () Bool)

(declare-fun res!505435 () Bool)

(assert (=> b!748998 (=> (not res!505435) (not e!417994))))

(assert (=> b!748998 (= res!505435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748999 () Bool)

(declare-fun res!505431 () Bool)

(assert (=> b!748999 (=> (not res!505431) (not e!417987))))

(assert (=> b!748999 (= res!505431 e!417991)))

(declare-fun c!82164 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748999 (= c!82164 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749000 () Bool)

(assert (=> b!749000 (= e!417992 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19966 a!3186) j!159) a!3186 mask!3328) lt!332990))))

(declare-fun b!749001 () Bool)

(declare-fun res!505442 () Bool)

(assert (=> b!749001 (=> (not res!505442) (not e!417989))))

(declare-fun arrayContainsKey!0 (array!41712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749001 (= res!505442 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749002 () Bool)

(declare-fun res!505429 () Bool)

(assert (=> b!749002 (=> res!505429 e!417993)))

(assert (=> b!749002 (= res!505429 (= (select (store (arr!19966 a!3186) i!1173 k0!2102) index!1321) lt!332995))))

(declare-fun b!749003 () Bool)

(assert (=> b!749003 (= e!417989 e!417994)))

(declare-fun res!505426 () Bool)

(assert (=> b!749003 (=> (not res!505426) (not e!417994))))

(declare-fun lt!332994 () SeekEntryResult!7573)

(assert (=> b!749003 (= res!505426 (or (= lt!332994 (MissingZero!7573 i!1173)) (= lt!332994 (MissingVacant!7573 i!1173))))))

(assert (=> b!749003 (= lt!332994 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!749004 () Bool)

(declare-fun e!417996 () Unit!25694)

(declare-fun Unit!25696 () Unit!25694)

(assert (=> b!749004 (= e!417996 Unit!25696)))

(declare-fun res!505436 () Bool)

(assert (=> start!65586 (=> (not res!505436) (not e!417989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65586 (= res!505436 (validMask!0 mask!3328))))

(assert (=> start!65586 e!417989))

(assert (=> start!65586 true))

(declare-fun array_inv!15740 (array!41712) Bool)

(assert (=> start!65586 (array_inv!15740 a!3186)))

(declare-fun b!748993 () Bool)

(assert (=> b!748993 (= e!417994 e!417987)))

(declare-fun res!505440 () Bool)

(assert (=> b!748993 (=> (not res!505440) (not e!417987))))

(declare-fun lt!332989 () SeekEntryResult!7573)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41712 (_ BitVec 32)) SeekEntryResult!7573)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748993 (= res!505440 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19966 a!3186) j!159) mask!3328) (select (arr!19966 a!3186) j!159) a!3186 mask!3328) lt!332989))))

(assert (=> b!748993 (= lt!332989 (Intermediate!7573 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749005 () Bool)

(assert (=> b!749005 (= e!417993 e!417988)))

(declare-fun res!505432 () Bool)

(assert (=> b!749005 (=> res!505432 e!417988)))

(assert (=> b!749005 (= res!505432 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!749005 (= (select (store (arr!19966 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332988 () Unit!25694)

(assert (=> b!749005 (= lt!332988 e!417996)))

(declare-fun c!82163 () Bool)

(assert (=> b!749005 (= c!82163 (= (select (store (arr!19966 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749006 () Bool)

(assert (=> b!749006 (= e!417991 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19966 a!3186) j!159) a!3186 mask!3328) lt!332989))))

(declare-fun b!749007 () Bool)

(assert (=> b!749007 (= e!417987 e!417990)))

(declare-fun res!505443 () Bool)

(assert (=> b!749007 (=> (not res!505443) (not e!417990))))

(declare-fun lt!332987 () SeekEntryResult!7573)

(assert (=> b!749007 (= res!505443 (= lt!332987 lt!332992))))

(declare-fun lt!332996 () array!41712)

(assert (=> b!749007 (= lt!332992 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332995 lt!332996 mask!3328))))

(assert (=> b!749007 (= lt!332987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332995 mask!3328) lt!332995 lt!332996 mask!3328))))

(assert (=> b!749007 (= lt!332995 (select (store (arr!19966 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!749007 (= lt!332996 (array!41713 (store (arr!19966 a!3186) i!1173 k0!2102) (size!20387 a!3186)))))

(declare-fun b!749008 () Bool)

(declare-fun res!505434 () Bool)

(assert (=> b!749008 (=> (not res!505434) (not e!417994))))

(assert (=> b!749008 (= res!505434 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20387 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20387 a!3186))))))

(declare-fun b!749009 () Bool)

(declare-fun Unit!25697 () Unit!25694)

(assert (=> b!749009 (= e!417996 Unit!25697)))

(assert (=> b!749009 false))

(declare-fun b!749010 () Bool)

(declare-fun res!505437 () Bool)

(assert (=> b!749010 (=> (not res!505437) (not e!417989))))

(assert (=> b!749010 (= res!505437 (and (= (size!20387 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20387 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20387 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749011 () Bool)

(declare-fun res!505428 () Bool)

(assert (=> b!749011 (=> res!505428 e!417993)))

(assert (=> b!749011 (= res!505428 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19966 a!3186) j!159) a!3186 mask!3328) lt!332990)))))

(declare-fun b!749012 () Bool)

(declare-fun res!505430 () Bool)

(assert (=> b!749012 (=> (not res!505430) (not e!417989))))

(assert (=> b!749012 (= res!505430 (validKeyInArray!0 (select (arr!19966 a!3186) j!159)))))

(assert (= (and start!65586 res!505436) b!749010))

(assert (= (and b!749010 res!505437) b!749012))

(assert (= (and b!749012 res!505430) b!748992))

(assert (= (and b!748992 res!505433) b!749001))

(assert (= (and b!749001 res!505442) b!749003))

(assert (= (and b!749003 res!505426) b!748998))

(assert (= (and b!748998 res!505435) b!748991))

(assert (= (and b!748991 res!505427) b!749008))

(assert (= (and b!749008 res!505434) b!748993))

(assert (= (and b!748993 res!505440) b!748994))

(assert (= (and b!748994 res!505441) b!748999))

(assert (= (and b!748999 c!82164) b!749006))

(assert (= (and b!748999 (not c!82164)) b!748997))

(assert (= (and b!748999 res!505431) b!749007))

(assert (= (and b!749007 res!505443) b!748996))

(assert (= (and b!748996 res!505439) b!749000))

(assert (= (and b!748996 (not res!505438)) b!749011))

(assert (= (and b!749011 (not res!505428)) b!749002))

(assert (= (and b!749002 (not res!505429)) b!749005))

(assert (= (and b!749005 c!82163) b!749009))

(assert (= (and b!749005 (not c!82163)) b!749004))

(assert (= (and b!749005 (not res!505432)) b!748995))

(declare-fun m!698769 () Bool)

(assert (=> b!749006 m!698769))

(assert (=> b!749006 m!698769))

(declare-fun m!698771 () Bool)

(assert (=> b!749006 m!698771))

(declare-fun m!698773 () Bool)

(assert (=> b!749001 m!698773))

(declare-fun m!698775 () Bool)

(assert (=> b!748994 m!698775))

(assert (=> b!748996 m!698769))

(assert (=> b!748996 m!698769))

(declare-fun m!698777 () Bool)

(assert (=> b!748996 m!698777))

(declare-fun m!698779 () Bool)

(assert (=> b!748996 m!698779))

(declare-fun m!698781 () Bool)

(assert (=> b!748996 m!698781))

(assert (=> b!749012 m!698769))

(assert (=> b!749012 m!698769))

(declare-fun m!698783 () Bool)

(assert (=> b!749012 m!698783))

(assert (=> b!749000 m!698769))

(assert (=> b!749000 m!698769))

(declare-fun m!698785 () Bool)

(assert (=> b!749000 m!698785))

(declare-fun m!698787 () Bool)

(assert (=> start!65586 m!698787))

(declare-fun m!698789 () Bool)

(assert (=> start!65586 m!698789))

(declare-fun m!698791 () Bool)

(assert (=> b!749003 m!698791))

(assert (=> b!748993 m!698769))

(assert (=> b!748993 m!698769))

(declare-fun m!698793 () Bool)

(assert (=> b!748993 m!698793))

(assert (=> b!748993 m!698793))

(assert (=> b!748993 m!698769))

(declare-fun m!698795 () Bool)

(assert (=> b!748993 m!698795))

(declare-fun m!698797 () Bool)

(assert (=> b!748992 m!698797))

(declare-fun m!698799 () Bool)

(assert (=> b!749005 m!698799))

(declare-fun m!698801 () Bool)

(assert (=> b!749005 m!698801))

(declare-fun m!698803 () Bool)

(assert (=> b!748991 m!698803))

(assert (=> b!749011 m!698769))

(assert (=> b!749011 m!698769))

(declare-fun m!698805 () Bool)

(assert (=> b!749011 m!698805))

(declare-fun m!698807 () Bool)

(assert (=> b!749007 m!698807))

(declare-fun m!698809 () Bool)

(assert (=> b!749007 m!698809))

(assert (=> b!749007 m!698799))

(assert (=> b!749007 m!698807))

(declare-fun m!698811 () Bool)

(assert (=> b!749007 m!698811))

(declare-fun m!698813 () Bool)

(assert (=> b!749007 m!698813))

(declare-fun m!698815 () Bool)

(assert (=> b!748998 m!698815))

(assert (=> b!749002 m!698799))

(assert (=> b!749002 m!698801))

(declare-fun m!698817 () Bool)

(assert (=> b!748995 m!698817))

(assert (=> b!748997 m!698769))

(assert (=> b!748997 m!698769))

(assert (=> b!748997 m!698805))

(check-sat (not b!749011) (not b!749001) (not b!748992) (not b!748991) (not b!749003) (not b!748995) (not b!749000) (not start!65586) (not b!748997) (not b!748993) (not b!748998) (not b!748996) (not b!749012) (not b!749006) (not b!749007))
(check-sat)
