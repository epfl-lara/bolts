; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66774 () Bool)

(assert start!66774)

(declare-fun b!768965 () Bool)

(declare-fun e!428237 () Bool)

(assert (=> b!768965 (= e!428237 true)))

(declare-datatypes ((Unit!26432 0))(
  ( (Unit!26433) )
))
(declare-fun lt!342126 () Unit!26432)

(declare-fun e!428238 () Unit!26432)

(assert (=> b!768965 (= lt!342126 e!428238)))

(declare-fun c!84825 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!768965 (= c!84825 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342127 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768965 (= lt!342127 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768966 () Bool)

(declare-fun res!520111 () Bool)

(declare-fun e!428233 () Bool)

(assert (=> b!768966 (=> (not res!520111) (not e!428233))))

(declare-datatypes ((array!42291 0))(
  ( (array!42292 (arr!20242 (Array (_ BitVec 32) (_ BitVec 64))) (size!20663 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42291)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768966 (= res!520111 (validKeyInArray!0 (select (arr!20242 a!3186) j!159)))))

(declare-fun b!768967 () Bool)

(declare-fun e!428230 () Bool)

(declare-fun e!428236 () Bool)

(assert (=> b!768967 (= e!428230 e!428236)))

(declare-fun res!520110 () Bool)

(assert (=> b!768967 (=> (not res!520110) (not e!428236))))

(declare-datatypes ((SeekEntryResult!7849 0))(
  ( (MissingZero!7849 (index!33763 (_ BitVec 32))) (Found!7849 (index!33764 (_ BitVec 32))) (Intermediate!7849 (undefined!8661 Bool) (index!33765 (_ BitVec 32)) (x!64725 (_ BitVec 32))) (Undefined!7849) (MissingVacant!7849 (index!33766 (_ BitVec 32))) )
))
(declare-fun lt!342131 () SeekEntryResult!7849)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42291 (_ BitVec 32)) SeekEntryResult!7849)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768967 (= res!520110 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20242 a!3186) j!159) mask!3328) (select (arr!20242 a!3186) j!159) a!3186 mask!3328) lt!342131))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!768967 (= lt!342131 (Intermediate!7849 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!342125 () SeekEntryResult!7849)

(declare-fun e!428239 () Bool)

(declare-fun b!768968 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42291 (_ BitVec 32)) SeekEntryResult!7849)

(assert (=> b!768968 (= e!428239 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20242 a!3186) j!159) a!3186 mask!3328) lt!342125))))

(declare-fun b!768969 () Bool)

(declare-fun res!520116 () Bool)

(assert (=> b!768969 (=> (not res!520116) (not e!428233))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!768969 (= res!520116 (and (= (size!20663 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20663 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20663 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!768970 () Bool)

(declare-fun Unit!26434 () Unit!26432)

(assert (=> b!768970 (= e!428238 Unit!26434)))

(assert (=> b!768970 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342127 (select (arr!20242 a!3186) j!159) a!3186 mask!3328) lt!342131)))

(declare-fun b!768971 () Bool)

(declare-fun res!520113 () Bool)

(assert (=> b!768971 (=> (not res!520113) (not e!428236))))

(assert (=> b!768971 (= res!520113 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20242 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768973 () Bool)

(declare-fun res!520118 () Bool)

(assert (=> b!768973 (=> (not res!520118) (not e!428236))))

(declare-fun e!428235 () Bool)

(assert (=> b!768973 (= res!520118 e!428235)))

(declare-fun c!84824 () Bool)

(assert (=> b!768973 (= c!84824 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!768974 () Bool)

(declare-fun e!428234 () Bool)

(assert (=> b!768974 (= e!428234 (not e!428237))))

(declare-fun res!520109 () Bool)

(assert (=> b!768974 (=> res!520109 e!428237)))

(declare-fun lt!342132 () SeekEntryResult!7849)

(get-info :version)

(assert (=> b!768974 (= res!520109 (or (not ((_ is Intermediate!7849) lt!342132)) (bvsge x!1131 (x!64725 lt!342132))))))

(declare-fun e!428231 () Bool)

(assert (=> b!768974 e!428231))

(declare-fun res!520108 () Bool)

(assert (=> b!768974 (=> (not res!520108) (not e!428231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42291 (_ BitVec 32)) Bool)

(assert (=> b!768974 (= res!520108 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342128 () Unit!26432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26432)

(assert (=> b!768974 (= lt!342128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768975 () Bool)

(declare-fun res!520119 () Bool)

(assert (=> b!768975 (=> (not res!520119) (not e!428230))))

(assert (=> b!768975 (= res!520119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!768976 () Bool)

(assert (=> b!768976 (= e!428233 e!428230)))

(declare-fun res!520114 () Bool)

(assert (=> b!768976 (=> (not res!520114) (not e!428230))))

(declare-fun lt!342130 () SeekEntryResult!7849)

(assert (=> b!768976 (= res!520114 (or (= lt!342130 (MissingZero!7849 i!1173)) (= lt!342130 (MissingVacant!7849 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42291 (_ BitVec 32)) SeekEntryResult!7849)

(assert (=> b!768976 (= lt!342130 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!768977 () Bool)

(assert (=> b!768977 (= e!428231 e!428239)))

(declare-fun res!520112 () Bool)

(assert (=> b!768977 (=> (not res!520112) (not e!428239))))

(assert (=> b!768977 (= res!520112 (= (seekEntryOrOpen!0 (select (arr!20242 a!3186) j!159) a!3186 mask!3328) lt!342125))))

(assert (=> b!768977 (= lt!342125 (Found!7849 j!159))))

(declare-fun b!768978 () Bool)

(assert (=> b!768978 (= e!428236 e!428234)))

(declare-fun res!520122 () Bool)

(assert (=> b!768978 (=> (not res!520122) (not e!428234))))

(declare-fun lt!342129 () SeekEntryResult!7849)

(assert (=> b!768978 (= res!520122 (= lt!342129 lt!342132))))

(declare-fun lt!342123 () (_ BitVec 64))

(declare-fun lt!342124 () array!42291)

(assert (=> b!768978 (= lt!342132 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342123 lt!342124 mask!3328))))

(assert (=> b!768978 (= lt!342129 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342123 mask!3328) lt!342123 lt!342124 mask!3328))))

(assert (=> b!768978 (= lt!342123 (select (store (arr!20242 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!768978 (= lt!342124 (array!42292 (store (arr!20242 a!3186) i!1173 k0!2102) (size!20663 a!3186)))))

(declare-fun b!768979 () Bool)

(declare-fun Unit!26435 () Unit!26432)

(assert (=> b!768979 (= e!428238 Unit!26435)))

(declare-fun lt!342133 () SeekEntryResult!7849)

(assert (=> b!768979 (= lt!342133 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20242 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!768979 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342127 resIntermediateIndex!5 (select (arr!20242 a!3186) j!159) a!3186 mask!3328) (Found!7849 j!159))))

(declare-fun b!768980 () Bool)

(declare-fun res!520117 () Bool)

(assert (=> b!768980 (=> (not res!520117) (not e!428230))))

(declare-datatypes ((List!14297 0))(
  ( (Nil!14294) (Cons!14293 (h!15392 (_ BitVec 64)) (t!20620 List!14297)) )
))
(declare-fun arrayNoDuplicates!0 (array!42291 (_ BitVec 32) List!14297) Bool)

(assert (=> b!768980 (= res!520117 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14294))))

(declare-fun b!768981 () Bool)

(assert (=> b!768981 (= e!428235 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20242 a!3186) j!159) a!3186 mask!3328) (Found!7849 j!159)))))

(declare-fun b!768982 () Bool)

(declare-fun res!520123 () Bool)

(assert (=> b!768982 (=> (not res!520123) (not e!428233))))

(declare-fun arrayContainsKey!0 (array!42291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768982 (= res!520123 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768983 () Bool)

(declare-fun res!520120 () Bool)

(assert (=> b!768983 (=> (not res!520120) (not e!428230))))

(assert (=> b!768983 (= res!520120 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20663 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20663 a!3186))))))

(declare-fun b!768984 () Bool)

(assert (=> b!768984 (= e!428235 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20242 a!3186) j!159) a!3186 mask!3328) lt!342131))))

(declare-fun res!520121 () Bool)

(assert (=> start!66774 (=> (not res!520121) (not e!428233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66774 (= res!520121 (validMask!0 mask!3328))))

(assert (=> start!66774 e!428233))

(assert (=> start!66774 true))

(declare-fun array_inv!16016 (array!42291) Bool)

(assert (=> start!66774 (array_inv!16016 a!3186)))

(declare-fun b!768972 () Bool)

(declare-fun res!520115 () Bool)

(assert (=> b!768972 (=> (not res!520115) (not e!428233))))

(assert (=> b!768972 (= res!520115 (validKeyInArray!0 k0!2102))))

(assert (= (and start!66774 res!520121) b!768969))

(assert (= (and b!768969 res!520116) b!768966))

(assert (= (and b!768966 res!520111) b!768972))

(assert (= (and b!768972 res!520115) b!768982))

(assert (= (and b!768982 res!520123) b!768976))

(assert (= (and b!768976 res!520114) b!768975))

(assert (= (and b!768975 res!520119) b!768980))

(assert (= (and b!768980 res!520117) b!768983))

(assert (= (and b!768983 res!520120) b!768967))

(assert (= (and b!768967 res!520110) b!768971))

(assert (= (and b!768971 res!520113) b!768973))

(assert (= (and b!768973 c!84824) b!768984))

(assert (= (and b!768973 (not c!84824)) b!768981))

(assert (= (and b!768973 res!520118) b!768978))

(assert (= (and b!768978 res!520122) b!768974))

(assert (= (and b!768974 res!520108) b!768977))

(assert (= (and b!768977 res!520112) b!768968))

(assert (= (and b!768974 (not res!520109)) b!768965))

(assert (= (and b!768965 c!84825) b!768970))

(assert (= (and b!768965 (not c!84825)) b!768979))

(declare-fun m!714503 () Bool)

(assert (=> b!768982 m!714503))

(declare-fun m!714505 () Bool)

(assert (=> b!768975 m!714505))

(declare-fun m!714507 () Bool)

(assert (=> b!768977 m!714507))

(assert (=> b!768977 m!714507))

(declare-fun m!714509 () Bool)

(assert (=> b!768977 m!714509))

(declare-fun m!714511 () Bool)

(assert (=> b!768974 m!714511))

(declare-fun m!714513 () Bool)

(assert (=> b!768974 m!714513))

(assert (=> b!768966 m!714507))

(assert (=> b!768966 m!714507))

(declare-fun m!714515 () Bool)

(assert (=> b!768966 m!714515))

(declare-fun m!714517 () Bool)

(assert (=> b!768965 m!714517))

(assert (=> b!768967 m!714507))

(assert (=> b!768967 m!714507))

(declare-fun m!714519 () Bool)

(assert (=> b!768967 m!714519))

(assert (=> b!768967 m!714519))

(assert (=> b!768967 m!714507))

(declare-fun m!714521 () Bool)

(assert (=> b!768967 m!714521))

(declare-fun m!714523 () Bool)

(assert (=> b!768972 m!714523))

(assert (=> b!768970 m!714507))

(assert (=> b!768970 m!714507))

(declare-fun m!714525 () Bool)

(assert (=> b!768970 m!714525))

(assert (=> b!768981 m!714507))

(assert (=> b!768981 m!714507))

(declare-fun m!714527 () Bool)

(assert (=> b!768981 m!714527))

(assert (=> b!768984 m!714507))

(assert (=> b!768984 m!714507))

(declare-fun m!714529 () Bool)

(assert (=> b!768984 m!714529))

(declare-fun m!714531 () Bool)

(assert (=> b!768976 m!714531))

(declare-fun m!714533 () Bool)

(assert (=> b!768978 m!714533))

(declare-fun m!714535 () Bool)

(assert (=> b!768978 m!714535))

(declare-fun m!714537 () Bool)

(assert (=> b!768978 m!714537))

(declare-fun m!714539 () Bool)

(assert (=> b!768978 m!714539))

(assert (=> b!768978 m!714537))

(declare-fun m!714541 () Bool)

(assert (=> b!768978 m!714541))

(assert (=> b!768968 m!714507))

(assert (=> b!768968 m!714507))

(declare-fun m!714543 () Bool)

(assert (=> b!768968 m!714543))

(assert (=> b!768979 m!714507))

(assert (=> b!768979 m!714507))

(assert (=> b!768979 m!714527))

(assert (=> b!768979 m!714507))

(declare-fun m!714545 () Bool)

(assert (=> b!768979 m!714545))

(declare-fun m!714547 () Bool)

(assert (=> start!66774 m!714547))

(declare-fun m!714549 () Bool)

(assert (=> start!66774 m!714549))

(declare-fun m!714551 () Bool)

(assert (=> b!768980 m!714551))

(declare-fun m!714553 () Bool)

(assert (=> b!768971 m!714553))

(check-sat (not b!768972) (not b!768967) (not b!768977) (not b!768976) (not start!66774) (not b!768965) (not b!768975) (not b!768979) (not b!768981) (not b!768978) (not b!768968) (not b!768974) (not b!768982) (not b!768966) (not b!768984) (not b!768970) (not b!768980))
(check-sat)
