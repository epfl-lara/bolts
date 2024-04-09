; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66496 () Bool)

(assert start!66496)

(declare-fun b!765997 () Bool)

(declare-fun res!518339 () Bool)

(declare-fun e!426590 () Bool)

(assert (=> b!765997 (=> (not res!518339) (not e!426590))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42228 0))(
  ( (array!42229 (arr!20215 (Array (_ BitVec 32) (_ BitVec 64))) (size!20636 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42228)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765997 (= res!518339 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20636 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20636 a!3186))))))

(declare-fun b!765998 () Bool)

(declare-fun res!518338 () Bool)

(assert (=> b!765998 (=> (not res!518338) (not e!426590))))

(declare-datatypes ((List!14270 0))(
  ( (Nil!14267) (Cons!14266 (h!15356 (_ BitVec 64)) (t!20593 List!14270)) )
))
(declare-fun arrayNoDuplicates!0 (array!42228 (_ BitVec 32) List!14270) Bool)

(assert (=> b!765998 (= res!518338 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14267))))

(declare-fun b!765999 () Bool)

(declare-fun res!518336 () Bool)

(declare-fun e!426591 () Bool)

(assert (=> b!765999 (=> (not res!518336) (not e!426591))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765999 (= res!518336 (validKeyInArray!0 k0!2102))))

(declare-fun b!766000 () Bool)

(declare-fun e!426596 () Bool)

(declare-fun e!426589 () Bool)

(assert (=> b!766000 (= e!426596 e!426589)))

(declare-fun res!518328 () Bool)

(assert (=> b!766000 (=> (not res!518328) (not e!426589))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7822 0))(
  ( (MissingZero!7822 (index!33655 (_ BitVec 32))) (Found!7822 (index!33656 (_ BitVec 32))) (Intermediate!7822 (undefined!8634 Bool) (index!33657 (_ BitVec 32)) (x!64589 (_ BitVec 32))) (Undefined!7822) (MissingVacant!7822 (index!33658 (_ BitVec 32))) )
))
(declare-fun lt!340750 () SeekEntryResult!7822)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42228 (_ BitVec 32)) SeekEntryResult!7822)

(assert (=> b!766000 (= res!518328 (= (seekEntryOrOpen!0 (select (arr!20215 a!3186) j!159) a!3186 mask!3328) lt!340750))))

(assert (=> b!766000 (= lt!340750 (Found!7822 j!159))))

(declare-fun b!766001 () Bool)

(declare-fun e!426594 () Bool)

(assert (=> b!766001 (= e!426590 e!426594)))

(declare-fun res!518327 () Bool)

(assert (=> b!766001 (=> (not res!518327) (not e!426594))))

(declare-fun lt!340752 () SeekEntryResult!7822)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42228 (_ BitVec 32)) SeekEntryResult!7822)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766001 (= res!518327 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20215 a!3186) j!159) mask!3328) (select (arr!20215 a!3186) j!159) a!3186 mask!3328) lt!340752))))

(assert (=> b!766001 (= lt!340752 (Intermediate!7822 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766002 () Bool)

(declare-fun res!518333 () Bool)

(assert (=> b!766002 (=> (not res!518333) (not e!426591))))

(assert (=> b!766002 (= res!518333 (validKeyInArray!0 (select (arr!20215 a!3186) j!159)))))

(declare-fun b!766003 () Bool)

(declare-fun e!426593 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42228 (_ BitVec 32)) SeekEntryResult!7822)

(assert (=> b!766003 (= e!426593 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20215 a!3186) j!159) a!3186 mask!3328) (Found!7822 j!159)))))

(declare-fun b!766004 () Bool)

(declare-fun res!518332 () Bool)

(assert (=> b!766004 (=> (not res!518332) (not e!426591))))

(declare-fun arrayContainsKey!0 (array!42228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766004 (= res!518332 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766005 () Bool)

(declare-fun res!518335 () Bool)

(assert (=> b!766005 (=> (not res!518335) (not e!426591))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766005 (= res!518335 (and (= (size!20636 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20636 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20636 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766006 () Bool)

(assert (=> b!766006 (= e!426591 e!426590)))

(declare-fun res!518329 () Bool)

(assert (=> b!766006 (=> (not res!518329) (not e!426590))))

(declare-fun lt!340753 () SeekEntryResult!7822)

(assert (=> b!766006 (= res!518329 (or (= lt!340753 (MissingZero!7822 i!1173)) (= lt!340753 (MissingVacant!7822 i!1173))))))

(assert (=> b!766006 (= lt!340753 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!766007 () Bool)

(declare-fun res!518337 () Bool)

(assert (=> b!766007 (=> (not res!518337) (not e!426594))))

(assert (=> b!766007 (= res!518337 e!426593)))

(declare-fun c!84225 () Bool)

(assert (=> b!766007 (= c!84225 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!518340 () Bool)

(assert (=> start!66496 (=> (not res!518340) (not e!426591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66496 (= res!518340 (validMask!0 mask!3328))))

(assert (=> start!66496 e!426591))

(assert (=> start!66496 true))

(declare-fun array_inv!15989 (array!42228) Bool)

(assert (=> start!66496 (array_inv!15989 a!3186)))

(declare-fun b!765996 () Bool)

(assert (=> b!765996 (= e!426593 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20215 a!3186) j!159) a!3186 mask!3328) lt!340752))))

(declare-fun b!766008 () Bool)

(declare-fun e!426595 () Bool)

(assert (=> b!766008 (= e!426594 e!426595)))

(declare-fun res!518334 () Bool)

(assert (=> b!766008 (=> (not res!518334) (not e!426595))))

(declare-fun lt!340751 () SeekEntryResult!7822)

(declare-fun lt!340754 () SeekEntryResult!7822)

(assert (=> b!766008 (= res!518334 (= lt!340751 lt!340754))))

(declare-fun lt!340749 () (_ BitVec 64))

(declare-fun lt!340755 () array!42228)

(assert (=> b!766008 (= lt!340754 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340749 lt!340755 mask!3328))))

(assert (=> b!766008 (= lt!340751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340749 mask!3328) lt!340749 lt!340755 mask!3328))))

(assert (=> b!766008 (= lt!340749 (select (store (arr!20215 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!766008 (= lt!340755 (array!42229 (store (arr!20215 a!3186) i!1173 k0!2102) (size!20636 a!3186)))))

(declare-fun b!766009 () Bool)

(declare-fun res!518331 () Bool)

(assert (=> b!766009 (=> (not res!518331) (not e!426590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42228 (_ BitVec 32)) Bool)

(assert (=> b!766009 (= res!518331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!766010 () Bool)

(declare-fun e!426592 () Bool)

(assert (=> b!766010 (= e!426595 (not e!426592))))

(declare-fun res!518330 () Bool)

(assert (=> b!766010 (=> res!518330 e!426592)))

(get-info :version)

(assert (=> b!766010 (= res!518330 (or (not ((_ is Intermediate!7822) lt!340754)) (bvsge x!1131 (x!64589 lt!340754))))))

(assert (=> b!766010 e!426596))

(declare-fun res!518325 () Bool)

(assert (=> b!766010 (=> (not res!518325) (not e!426596))))

(assert (=> b!766010 (= res!518325 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26370 0))(
  ( (Unit!26371) )
))
(declare-fun lt!340756 () Unit!26370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42228 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26370)

(assert (=> b!766010 (= lt!340756 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766011 () Bool)

(assert (=> b!766011 (= e!426589 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20215 a!3186) j!159) a!3186 mask!3328) lt!340750))))

(declare-fun b!766012 () Bool)

(declare-fun res!518326 () Bool)

(assert (=> b!766012 (=> (not res!518326) (not e!426594))))

(assert (=> b!766012 (= res!518326 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20215 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766013 () Bool)

(assert (=> b!766013 (= e!426592 true)))

(declare-fun lt!340748 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766013 (= lt!340748 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!66496 res!518340) b!766005))

(assert (= (and b!766005 res!518335) b!766002))

(assert (= (and b!766002 res!518333) b!765999))

(assert (= (and b!765999 res!518336) b!766004))

(assert (= (and b!766004 res!518332) b!766006))

(assert (= (and b!766006 res!518329) b!766009))

(assert (= (and b!766009 res!518331) b!765998))

(assert (= (and b!765998 res!518338) b!765997))

(assert (= (and b!765997 res!518339) b!766001))

(assert (= (and b!766001 res!518327) b!766012))

(assert (= (and b!766012 res!518326) b!766007))

(assert (= (and b!766007 c!84225) b!765996))

(assert (= (and b!766007 (not c!84225)) b!766003))

(assert (= (and b!766007 res!518337) b!766008))

(assert (= (and b!766008 res!518334) b!766010))

(assert (= (and b!766010 res!518325) b!766000))

(assert (= (and b!766000 res!518328) b!766011))

(assert (= (and b!766010 (not res!518330)) b!766013))

(declare-fun m!712097 () Bool)

(assert (=> b!766012 m!712097))

(declare-fun m!712099 () Bool)

(assert (=> b!765999 m!712099))

(declare-fun m!712101 () Bool)

(assert (=> b!766013 m!712101))

(declare-fun m!712103 () Bool)

(assert (=> b!766002 m!712103))

(assert (=> b!766002 m!712103))

(declare-fun m!712105 () Bool)

(assert (=> b!766002 m!712105))

(assert (=> b!766001 m!712103))

(assert (=> b!766001 m!712103))

(declare-fun m!712107 () Bool)

(assert (=> b!766001 m!712107))

(assert (=> b!766001 m!712107))

(assert (=> b!766001 m!712103))

(declare-fun m!712109 () Bool)

(assert (=> b!766001 m!712109))

(declare-fun m!712111 () Bool)

(assert (=> b!766006 m!712111))

(assert (=> b!765996 m!712103))

(assert (=> b!765996 m!712103))

(declare-fun m!712113 () Bool)

(assert (=> b!765996 m!712113))

(declare-fun m!712115 () Bool)

(assert (=> start!66496 m!712115))

(declare-fun m!712117 () Bool)

(assert (=> start!66496 m!712117))

(assert (=> b!766000 m!712103))

(assert (=> b!766000 m!712103))

(declare-fun m!712119 () Bool)

(assert (=> b!766000 m!712119))

(declare-fun m!712121 () Bool)

(assert (=> b!766004 m!712121))

(declare-fun m!712123 () Bool)

(assert (=> b!766009 m!712123))

(assert (=> b!766003 m!712103))

(assert (=> b!766003 m!712103))

(declare-fun m!712125 () Bool)

(assert (=> b!766003 m!712125))

(declare-fun m!712127 () Bool)

(assert (=> b!766010 m!712127))

(declare-fun m!712129 () Bool)

(assert (=> b!766010 m!712129))

(declare-fun m!712131 () Bool)

(assert (=> b!765998 m!712131))

(declare-fun m!712133 () Bool)

(assert (=> b!766008 m!712133))

(declare-fun m!712135 () Bool)

(assert (=> b!766008 m!712135))

(declare-fun m!712137 () Bool)

(assert (=> b!766008 m!712137))

(declare-fun m!712139 () Bool)

(assert (=> b!766008 m!712139))

(assert (=> b!766008 m!712137))

(declare-fun m!712141 () Bool)

(assert (=> b!766008 m!712141))

(assert (=> b!766011 m!712103))

(assert (=> b!766011 m!712103))

(declare-fun m!712143 () Bool)

(assert (=> b!766011 m!712143))

(check-sat (not b!766008) (not b!765996) (not b!766006) (not b!766010) (not b!765999) (not start!66496) (not b!766011) (not b!765998) (not b!766004) (not b!766001) (not b!766002) (not b!766013) (not b!766009) (not b!766003) (not b!766000))
(check-sat)
