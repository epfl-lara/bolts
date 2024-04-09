; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67584 () Bool)

(assert start!67584)

(declare-fun b!782032 () Bool)

(declare-datatypes ((Unit!26966 0))(
  ( (Unit!26967) )
))
(declare-fun e!434901 () Unit!26966)

(declare-fun Unit!26968 () Unit!26966)

(assert (=> b!782032 (= e!434901 Unit!26968)))

(assert (=> b!782032 false))

(declare-fun b!782033 () Bool)

(declare-fun res!529259 () Bool)

(declare-fun e!434900 () Bool)

(assert (=> b!782033 (=> (not res!529259) (not e!434900))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782033 (= res!529259 (validKeyInArray!0 k0!2102))))

(declare-fun b!782034 () Bool)

(declare-fun e!434905 () Bool)

(declare-fun e!434903 () Bool)

(assert (=> b!782034 (= e!434905 (not e!434903))))

(declare-fun res!529260 () Bool)

(assert (=> b!782034 (=> res!529260 e!434903)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8014 0))(
  ( (MissingZero!8014 (index!34423 (_ BitVec 32))) (Found!8014 (index!34424 (_ BitVec 32))) (Intermediate!8014 (undefined!8826 Bool) (index!34425 (_ BitVec 32)) (x!65402 (_ BitVec 32))) (Undefined!8014) (MissingVacant!8014 (index!34426 (_ BitVec 32))) )
))
(declare-fun lt!348541 () SeekEntryResult!8014)

(get-info :version)

(assert (=> b!782034 (= res!529260 (or (not ((_ is Intermediate!8014) lt!348541)) (bvslt x!1131 (x!65402 lt!348541)) (not (= x!1131 (x!65402 lt!348541))) (not (= index!1321 (index!34425 lt!348541)))))))

(declare-fun e!434908 () Bool)

(assert (=> b!782034 e!434908))

(declare-fun res!529256 () Bool)

(assert (=> b!782034 (=> (not res!529256) (not e!434908))))

(declare-fun lt!348539 () SeekEntryResult!8014)

(declare-fun lt!348538 () SeekEntryResult!8014)

(assert (=> b!782034 (= res!529256 (= lt!348539 lt!348538))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!782034 (= lt!348538 (Found!8014 j!159))))

(declare-datatypes ((array!42642 0))(
  ( (array!42643 (arr!20407 (Array (_ BitVec 32) (_ BitVec 64))) (size!20828 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42642)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42642 (_ BitVec 32)) SeekEntryResult!8014)

(assert (=> b!782034 (= lt!348539 (seekEntryOrOpen!0 (select (arr!20407 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42642 (_ BitVec 32)) Bool)

(assert (=> b!782034 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348540 () Unit!26966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26966)

(assert (=> b!782034 (= lt!348540 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782035 () Bool)

(declare-fun res!529250 () Bool)

(declare-fun e!434904 () Bool)

(assert (=> b!782035 (=> (not res!529250) (not e!434904))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!782035 (= res!529250 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20407 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782036 () Bool)

(declare-fun res!529261 () Bool)

(assert (=> b!782036 (=> (not res!529261) (not e!434900))))

(assert (=> b!782036 (= res!529261 (and (= (size!20828 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20828 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20828 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!782037 () Bool)

(declare-fun Unit!26969 () Unit!26966)

(assert (=> b!782037 (= e!434901 Unit!26969)))

(declare-fun e!434906 () Bool)

(declare-fun b!782039 () Bool)

(declare-fun lt!348536 () SeekEntryResult!8014)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42642 (_ BitVec 32)) SeekEntryResult!8014)

(assert (=> b!782039 (= e!434906 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20407 a!3186) j!159) a!3186 mask!3328) lt!348536))))

(declare-fun b!782040 () Bool)

(declare-fun res!529248 () Bool)

(assert (=> b!782040 (=> (not res!529248) (not e!434904))))

(assert (=> b!782040 (= res!529248 e!434906)))

(declare-fun c!86799 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!782040 (= c!86799 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!782041 () Bool)

(assert (=> b!782041 (= e!434903 true)))

(assert (=> b!782041 (= (select (store (arr!20407 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348537 () Unit!26966)

(assert (=> b!782041 (= lt!348537 e!434901)))

(declare-fun c!86798 () Bool)

(assert (=> b!782041 (= c!86798 (= (select (store (arr!20407 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782042 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42642 (_ BitVec 32)) SeekEntryResult!8014)

(assert (=> b!782042 (= e!434906 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20407 a!3186) j!159) a!3186 mask!3328) (Found!8014 j!159)))))

(declare-fun b!782043 () Bool)

(declare-fun res!529255 () Bool)

(assert (=> b!782043 (=> res!529255 e!434903)))

(declare-fun lt!348543 () (_ BitVec 64))

(assert (=> b!782043 (= res!529255 (= (select (store (arr!20407 a!3186) i!1173 k0!2102) index!1321) lt!348543))))

(declare-fun b!782044 () Bool)

(declare-fun res!529253 () Bool)

(declare-fun e!434902 () Bool)

(assert (=> b!782044 (=> (not res!529253) (not e!434902))))

(declare-datatypes ((List!14462 0))(
  ( (Nil!14459) (Cons!14458 (h!15578 (_ BitVec 64)) (t!20785 List!14462)) )
))
(declare-fun arrayNoDuplicates!0 (array!42642 (_ BitVec 32) List!14462) Bool)

(assert (=> b!782044 (= res!529253 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14459))))

(declare-fun b!782045 () Bool)

(assert (=> b!782045 (= e!434902 e!434904)))

(declare-fun res!529252 () Bool)

(assert (=> b!782045 (=> (not res!529252) (not e!434904))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782045 (= res!529252 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20407 a!3186) j!159) mask!3328) (select (arr!20407 a!3186) j!159) a!3186 mask!3328) lt!348536))))

(assert (=> b!782045 (= lt!348536 (Intermediate!8014 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!782046 () Bool)

(assert (=> b!782046 (= e!434904 e!434905)))

(declare-fun res!529249 () Bool)

(assert (=> b!782046 (=> (not res!529249) (not e!434905))))

(declare-fun lt!348542 () SeekEntryResult!8014)

(assert (=> b!782046 (= res!529249 (= lt!348542 lt!348541))))

(declare-fun lt!348544 () array!42642)

(assert (=> b!782046 (= lt!348541 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348543 lt!348544 mask!3328))))

(assert (=> b!782046 (= lt!348542 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348543 mask!3328) lt!348543 lt!348544 mask!3328))))

(assert (=> b!782046 (= lt!348543 (select (store (arr!20407 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!782046 (= lt!348544 (array!42643 (store (arr!20407 a!3186) i!1173 k0!2102) (size!20828 a!3186)))))

(declare-fun b!782047 () Bool)

(declare-fun res!529264 () Bool)

(assert (=> b!782047 (=> (not res!529264) (not e!434900))))

(declare-fun arrayContainsKey!0 (array!42642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782047 (= res!529264 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!529254 () Bool)

(assert (=> start!67584 (=> (not res!529254) (not e!434900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67584 (= res!529254 (validMask!0 mask!3328))))

(assert (=> start!67584 e!434900))

(assert (=> start!67584 true))

(declare-fun array_inv!16181 (array!42642) Bool)

(assert (=> start!67584 (array_inv!16181 a!3186)))

(declare-fun b!782038 () Bool)

(assert (=> b!782038 (= e!434900 e!434902)))

(declare-fun res!529258 () Bool)

(assert (=> b!782038 (=> (not res!529258) (not e!434902))))

(declare-fun lt!348535 () SeekEntryResult!8014)

(assert (=> b!782038 (= res!529258 (or (= lt!348535 (MissingZero!8014 i!1173)) (= lt!348535 (MissingVacant!8014 i!1173))))))

(assert (=> b!782038 (= lt!348535 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!782048 () Bool)

(declare-fun res!529251 () Bool)

(assert (=> b!782048 (=> (not res!529251) (not e!434902))))

(assert (=> b!782048 (= res!529251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782049 () Bool)

(declare-fun res!529263 () Bool)

(assert (=> b!782049 (=> res!529263 e!434903)))

(assert (=> b!782049 (= res!529263 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20407 a!3186) j!159) a!3186 mask!3328) lt!348538)))))

(declare-fun b!782050 () Bool)

(declare-fun res!529262 () Bool)

(assert (=> b!782050 (=> (not res!529262) (not e!434902))))

(assert (=> b!782050 (= res!529262 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20828 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20828 a!3186))))))

(declare-fun b!782051 () Bool)

(declare-fun res!529257 () Bool)

(assert (=> b!782051 (=> (not res!529257) (not e!434900))))

(assert (=> b!782051 (= res!529257 (validKeyInArray!0 (select (arr!20407 a!3186) j!159)))))

(declare-fun b!782052 () Bool)

(assert (=> b!782052 (= e!434908 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20407 a!3186) j!159) a!3186 mask!3328) lt!348538))))

(assert (= (and start!67584 res!529254) b!782036))

(assert (= (and b!782036 res!529261) b!782051))

(assert (= (and b!782051 res!529257) b!782033))

(assert (= (and b!782033 res!529259) b!782047))

(assert (= (and b!782047 res!529264) b!782038))

(assert (= (and b!782038 res!529258) b!782048))

(assert (= (and b!782048 res!529251) b!782044))

(assert (= (and b!782044 res!529253) b!782050))

(assert (= (and b!782050 res!529262) b!782045))

(assert (= (and b!782045 res!529252) b!782035))

(assert (= (and b!782035 res!529250) b!782040))

(assert (= (and b!782040 c!86799) b!782039))

(assert (= (and b!782040 (not c!86799)) b!782042))

(assert (= (and b!782040 res!529248) b!782046))

(assert (= (and b!782046 res!529249) b!782034))

(assert (= (and b!782034 res!529256) b!782052))

(assert (= (and b!782034 (not res!529260)) b!782049))

(assert (= (and b!782049 (not res!529263)) b!782043))

(assert (= (and b!782043 (not res!529255)) b!782041))

(assert (= (and b!782041 c!86798) b!782032))

(assert (= (and b!782041 (not c!86798)) b!782037))

(declare-fun m!724963 () Bool)

(assert (=> b!782033 m!724963))

(declare-fun m!724965 () Bool)

(assert (=> b!782046 m!724965))

(declare-fun m!724967 () Bool)

(assert (=> b!782046 m!724967))

(declare-fun m!724969 () Bool)

(assert (=> b!782046 m!724969))

(declare-fun m!724971 () Bool)

(assert (=> b!782046 m!724971))

(declare-fun m!724973 () Bool)

(assert (=> b!782046 m!724973))

(assert (=> b!782046 m!724971))

(declare-fun m!724975 () Bool)

(assert (=> b!782052 m!724975))

(assert (=> b!782052 m!724975))

(declare-fun m!724977 () Bool)

(assert (=> b!782052 m!724977))

(declare-fun m!724979 () Bool)

(assert (=> b!782044 m!724979))

(declare-fun m!724981 () Bool)

(assert (=> b!782047 m!724981))

(assert (=> b!782051 m!724975))

(assert (=> b!782051 m!724975))

(declare-fun m!724983 () Bool)

(assert (=> b!782051 m!724983))

(declare-fun m!724985 () Bool)

(assert (=> b!782035 m!724985))

(assert (=> b!782043 m!724965))

(declare-fun m!724987 () Bool)

(assert (=> b!782043 m!724987))

(declare-fun m!724989 () Bool)

(assert (=> start!67584 m!724989))

(declare-fun m!724991 () Bool)

(assert (=> start!67584 m!724991))

(declare-fun m!724993 () Bool)

(assert (=> b!782038 m!724993))

(assert (=> b!782045 m!724975))

(assert (=> b!782045 m!724975))

(declare-fun m!724995 () Bool)

(assert (=> b!782045 m!724995))

(assert (=> b!782045 m!724995))

(assert (=> b!782045 m!724975))

(declare-fun m!724997 () Bool)

(assert (=> b!782045 m!724997))

(assert (=> b!782039 m!724975))

(assert (=> b!782039 m!724975))

(declare-fun m!724999 () Bool)

(assert (=> b!782039 m!724999))

(declare-fun m!725001 () Bool)

(assert (=> b!782048 m!725001))

(assert (=> b!782042 m!724975))

(assert (=> b!782042 m!724975))

(declare-fun m!725003 () Bool)

(assert (=> b!782042 m!725003))

(assert (=> b!782034 m!724975))

(assert (=> b!782034 m!724975))

(declare-fun m!725005 () Bool)

(assert (=> b!782034 m!725005))

(declare-fun m!725007 () Bool)

(assert (=> b!782034 m!725007))

(declare-fun m!725009 () Bool)

(assert (=> b!782034 m!725009))

(assert (=> b!782041 m!724965))

(assert (=> b!782041 m!724987))

(assert (=> b!782049 m!724975))

(assert (=> b!782049 m!724975))

(assert (=> b!782049 m!725003))

(check-sat (not b!782052) (not b!782051) (not b!782039) (not start!67584) (not b!782046) (not b!782034) (not b!782048) (not b!782047) (not b!782038) (not b!782045) (not b!782042) (not b!782044) (not b!782049) (not b!782033))
(check-sat)
