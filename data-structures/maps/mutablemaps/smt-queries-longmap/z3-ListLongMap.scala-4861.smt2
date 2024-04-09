; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67026 () Bool)

(assert start!67026)

(declare-fun b!773129 () Bool)

(declare-fun res!522973 () Bool)

(declare-fun e!430403 () Bool)

(assert (=> b!773129 (=> (not res!522973) (not e!430403))))

(declare-datatypes ((array!42405 0))(
  ( (array!42406 (arr!20296 (Array (_ BitVec 32) (_ BitVec 64))) (size!20717 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42405)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773129 (= res!522973 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!773130 () Bool)

(declare-fun res!522985 () Bool)

(declare-fun e!430405 () Bool)

(assert (=> b!773130 (=> (not res!522985) (not e!430405))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42405 (_ BitVec 32)) Bool)

(assert (=> b!773130 (= res!522985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773131 () Bool)

(declare-fun e!430404 () Bool)

(declare-fun e!430410 () Bool)

(assert (=> b!773131 (= e!430404 e!430410)))

(declare-fun res!522977 () Bool)

(assert (=> b!773131 (=> (not res!522977) (not e!430410))))

(declare-datatypes ((SeekEntryResult!7903 0))(
  ( (MissingZero!7903 (index!33979 (_ BitVec 32))) (Found!7903 (index!33980 (_ BitVec 32))) (Intermediate!7903 (undefined!8715 Bool) (index!33981 (_ BitVec 32)) (x!64947 (_ BitVec 32))) (Undefined!7903) (MissingVacant!7903 (index!33982 (_ BitVec 32))) )
))
(declare-fun lt!344284 () SeekEntryResult!7903)

(declare-fun lt!344279 () SeekEntryResult!7903)

(assert (=> b!773131 (= res!522977 (= lt!344284 lt!344279))))

(declare-fun lt!344287 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!344281 () array!42405)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42405 (_ BitVec 32)) SeekEntryResult!7903)

(assert (=> b!773131 (= lt!344279 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344287 lt!344281 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773131 (= lt!344284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344287 mask!3328) lt!344287 lt!344281 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773131 (= lt!344287 (select (store (arr!20296 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!773131 (= lt!344281 (array!42406 (store (arr!20296 a!3186) i!1173 k0!2102) (size!20717 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!430407 () Bool)

(declare-fun b!773132 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42405 (_ BitVec 32)) SeekEntryResult!7903)

(assert (=> b!773132 (= e!430407 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20296 a!3186) j!159) a!3186 mask!3328) (Found!7903 j!159)))))

(declare-fun b!773133 () Bool)

(assert (=> b!773133 (= e!430403 e!430405)))

(declare-fun res!522981 () Bool)

(assert (=> b!773133 (=> (not res!522981) (not e!430405))))

(declare-fun lt!344282 () SeekEntryResult!7903)

(assert (=> b!773133 (= res!522981 (or (= lt!344282 (MissingZero!7903 i!1173)) (= lt!344282 (MissingVacant!7903 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42405 (_ BitVec 32)) SeekEntryResult!7903)

(assert (=> b!773133 (= lt!344282 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!773134 () Bool)

(declare-fun res!522984 () Bool)

(assert (=> b!773134 (=> (not res!522984) (not e!430404))))

(assert (=> b!773134 (= res!522984 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20296 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773135 () Bool)

(declare-datatypes ((Unit!26648 0))(
  ( (Unit!26649) )
))
(declare-fun e!430409 () Unit!26648)

(declare-fun Unit!26650 () Unit!26648)

(assert (=> b!773135 (= e!430409 Unit!26650)))

(declare-fun lt!344280 () SeekEntryResult!7903)

(assert (=> b!773135 (= lt!344280 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20296 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344283 () (_ BitVec 32))

(assert (=> b!773135 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344283 resIntermediateIndex!5 (select (arr!20296 a!3186) j!159) a!3186 mask!3328) (Found!7903 j!159))))

(declare-fun res!522970 () Bool)

(assert (=> start!67026 (=> (not res!522970) (not e!430403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67026 (= res!522970 (validMask!0 mask!3328))))

(assert (=> start!67026 e!430403))

(assert (=> start!67026 true))

(declare-fun array_inv!16070 (array!42405) Bool)

(assert (=> start!67026 (array_inv!16070 a!3186)))

(declare-fun b!773136 () Bool)

(declare-fun res!522974 () Bool)

(assert (=> b!773136 (=> (not res!522974) (not e!430405))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773136 (= res!522974 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20717 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20717 a!3186))))))

(declare-fun b!773137 () Bool)

(declare-fun e!430406 () Bool)

(declare-fun e!430411 () Bool)

(assert (=> b!773137 (= e!430406 e!430411)))

(declare-fun res!522971 () Bool)

(assert (=> b!773137 (=> (not res!522971) (not e!430411))))

(declare-fun lt!344278 () SeekEntryResult!7903)

(assert (=> b!773137 (= res!522971 (= (seekEntryOrOpen!0 (select (arr!20296 a!3186) j!159) a!3186 mask!3328) lt!344278))))

(assert (=> b!773137 (= lt!344278 (Found!7903 j!159))))

(declare-fun b!773138 () Bool)

(declare-fun res!522975 () Bool)

(assert (=> b!773138 (=> (not res!522975) (not e!430403))))

(assert (=> b!773138 (= res!522975 (and (= (size!20717 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20717 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20717 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773139 () Bool)

(declare-fun res!522972 () Bool)

(assert (=> b!773139 (=> (not res!522972) (not e!430405))))

(declare-datatypes ((List!14351 0))(
  ( (Nil!14348) (Cons!14347 (h!15452 (_ BitVec 64)) (t!20674 List!14351)) )
))
(declare-fun arrayNoDuplicates!0 (array!42405 (_ BitVec 32) List!14351) Bool)

(assert (=> b!773139 (= res!522972 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14348))))

(declare-fun b!773140 () Bool)

(declare-fun res!522982 () Bool)

(assert (=> b!773140 (=> (not res!522982) (not e!430404))))

(assert (=> b!773140 (= res!522982 e!430407)))

(declare-fun c!85478 () Bool)

(assert (=> b!773140 (= c!85478 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773141 () Bool)

(declare-fun res!522978 () Bool)

(assert (=> b!773141 (=> (not res!522978) (not e!430403))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773141 (= res!522978 (validKeyInArray!0 (select (arr!20296 a!3186) j!159)))))

(declare-fun b!773142 () Bool)

(assert (=> b!773142 (= e!430405 e!430404)))

(declare-fun res!522983 () Bool)

(assert (=> b!773142 (=> (not res!522983) (not e!430404))))

(declare-fun lt!344277 () SeekEntryResult!7903)

(assert (=> b!773142 (= res!522983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20296 a!3186) j!159) mask!3328) (select (arr!20296 a!3186) j!159) a!3186 mask!3328) lt!344277))))

(assert (=> b!773142 (= lt!344277 (Intermediate!7903 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773143 () Bool)

(assert (=> b!773143 (= e!430411 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20296 a!3186) j!159) a!3186 mask!3328) lt!344278))))

(declare-fun b!773144 () Bool)

(assert (=> b!773144 (= e!430407 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20296 a!3186) j!159) a!3186 mask!3328) lt!344277))))

(declare-fun b!773145 () Bool)

(declare-fun e!430402 () Bool)

(assert (=> b!773145 (= e!430402 true)))

(declare-fun lt!344285 () Unit!26648)

(assert (=> b!773145 (= lt!344285 e!430409)))

(declare-fun c!85479 () Bool)

(assert (=> b!773145 (= c!85479 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773145 (= lt!344283 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773146 () Bool)

(declare-fun res!522979 () Bool)

(assert (=> b!773146 (=> (not res!522979) (not e!430403))))

(assert (=> b!773146 (= res!522979 (validKeyInArray!0 k0!2102))))

(declare-fun b!773147 () Bool)

(declare-fun Unit!26651 () Unit!26648)

(assert (=> b!773147 (= e!430409 Unit!26651)))

(assert (=> b!773147 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344283 (select (arr!20296 a!3186) j!159) a!3186 mask!3328) lt!344277)))

(declare-fun b!773148 () Bool)

(assert (=> b!773148 (= e!430410 (not e!430402))))

(declare-fun res!522980 () Bool)

(assert (=> b!773148 (=> res!522980 e!430402)))

(get-info :version)

(assert (=> b!773148 (= res!522980 (or (not ((_ is Intermediate!7903) lt!344279)) (bvsge x!1131 (x!64947 lt!344279))))))

(assert (=> b!773148 e!430406))

(declare-fun res!522976 () Bool)

(assert (=> b!773148 (=> (not res!522976) (not e!430406))))

(assert (=> b!773148 (= res!522976 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344286 () Unit!26648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26648)

(assert (=> b!773148 (= lt!344286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67026 res!522970) b!773138))

(assert (= (and b!773138 res!522975) b!773141))

(assert (= (and b!773141 res!522978) b!773146))

(assert (= (and b!773146 res!522979) b!773129))

(assert (= (and b!773129 res!522973) b!773133))

(assert (= (and b!773133 res!522981) b!773130))

(assert (= (and b!773130 res!522985) b!773139))

(assert (= (and b!773139 res!522972) b!773136))

(assert (= (and b!773136 res!522974) b!773142))

(assert (= (and b!773142 res!522983) b!773134))

(assert (= (and b!773134 res!522984) b!773140))

(assert (= (and b!773140 c!85478) b!773144))

(assert (= (and b!773140 (not c!85478)) b!773132))

(assert (= (and b!773140 res!522982) b!773131))

(assert (= (and b!773131 res!522977) b!773148))

(assert (= (and b!773148 res!522976) b!773137))

(assert (= (and b!773137 res!522971) b!773143))

(assert (= (and b!773148 (not res!522980)) b!773145))

(assert (= (and b!773145 c!85479) b!773147))

(assert (= (and b!773145 (not c!85479)) b!773135))

(declare-fun m!717959 () Bool)

(assert (=> b!773137 m!717959))

(assert (=> b!773137 m!717959))

(declare-fun m!717961 () Bool)

(assert (=> b!773137 m!717961))

(declare-fun m!717963 () Bool)

(assert (=> b!773139 m!717963))

(assert (=> b!773144 m!717959))

(assert (=> b!773144 m!717959))

(declare-fun m!717965 () Bool)

(assert (=> b!773144 m!717965))

(declare-fun m!717967 () Bool)

(assert (=> b!773133 m!717967))

(assert (=> b!773143 m!717959))

(assert (=> b!773143 m!717959))

(declare-fun m!717969 () Bool)

(assert (=> b!773143 m!717969))

(declare-fun m!717971 () Bool)

(assert (=> b!773134 m!717971))

(declare-fun m!717973 () Bool)

(assert (=> start!67026 m!717973))

(declare-fun m!717975 () Bool)

(assert (=> start!67026 m!717975))

(assert (=> b!773141 m!717959))

(assert (=> b!773141 m!717959))

(declare-fun m!717977 () Bool)

(assert (=> b!773141 m!717977))

(assert (=> b!773147 m!717959))

(assert (=> b!773147 m!717959))

(declare-fun m!717979 () Bool)

(assert (=> b!773147 m!717979))

(assert (=> b!773132 m!717959))

(assert (=> b!773132 m!717959))

(declare-fun m!717981 () Bool)

(assert (=> b!773132 m!717981))

(declare-fun m!717983 () Bool)

(assert (=> b!773131 m!717983))

(declare-fun m!717985 () Bool)

(assert (=> b!773131 m!717985))

(declare-fun m!717987 () Bool)

(assert (=> b!773131 m!717987))

(declare-fun m!717989 () Bool)

(assert (=> b!773131 m!717989))

(assert (=> b!773131 m!717989))

(declare-fun m!717991 () Bool)

(assert (=> b!773131 m!717991))

(assert (=> b!773142 m!717959))

(assert (=> b!773142 m!717959))

(declare-fun m!717993 () Bool)

(assert (=> b!773142 m!717993))

(assert (=> b!773142 m!717993))

(assert (=> b!773142 m!717959))

(declare-fun m!717995 () Bool)

(assert (=> b!773142 m!717995))

(declare-fun m!717997 () Bool)

(assert (=> b!773145 m!717997))

(declare-fun m!717999 () Bool)

(assert (=> b!773130 m!717999))

(assert (=> b!773135 m!717959))

(assert (=> b!773135 m!717959))

(assert (=> b!773135 m!717981))

(assert (=> b!773135 m!717959))

(declare-fun m!718001 () Bool)

(assert (=> b!773135 m!718001))

(declare-fun m!718003 () Bool)

(assert (=> b!773148 m!718003))

(declare-fun m!718005 () Bool)

(assert (=> b!773148 m!718005))

(declare-fun m!718007 () Bool)

(assert (=> b!773146 m!718007))

(declare-fun m!718009 () Bool)

(assert (=> b!773129 m!718009))

(check-sat (not b!773141) (not b!773144) (not b!773139) (not b!773142) (not b!773137) (not b!773146) (not b!773133) (not start!67026) (not b!773145) (not b!773148) (not b!773129) (not b!773147) (not b!773131) (not b!773143) (not b!773135) (not b!773132) (not b!773130))
(check-sat)
