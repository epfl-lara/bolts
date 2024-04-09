; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66328 () Bool)

(assert start!66328)

(declare-fun b!764283 () Bool)

(declare-fun e!425685 () Bool)

(declare-fun e!425684 () Bool)

(assert (=> b!764283 (= e!425685 e!425684)))

(declare-fun res!517296 () Bool)

(assert (=> b!764283 (=> (not res!517296) (not e!425684))))

(declare-datatypes ((SeekEntryResult!7804 0))(
  ( (MissingZero!7804 (index!33583 (_ BitVec 32))) (Found!7804 (index!33584 (_ BitVec 32))) (Intermediate!7804 (undefined!8616 Bool) (index!33585 (_ BitVec 32)) (x!64505 (_ BitVec 32))) (Undefined!7804) (MissingVacant!7804 (index!33586 (_ BitVec 32))) )
))
(declare-fun lt!340107 () SeekEntryResult!7804)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764283 (= res!517296 (or (= lt!340107 (MissingZero!7804 i!1173)) (= lt!340107 (MissingVacant!7804 i!1173))))))

(declare-datatypes ((array!42186 0))(
  ( (array!42187 (arr!20197 (Array (_ BitVec 32) (_ BitVec 64))) (size!20618 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42186)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42186 (_ BitVec 32)) SeekEntryResult!7804)

(assert (=> b!764283 (= lt!340107 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!764284 () Bool)

(declare-fun res!517289 () Bool)

(assert (=> b!764284 (=> (not res!517289) (not e!425685))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764284 (= res!517289 (validKeyInArray!0 (select (arr!20197 a!3186) j!159)))))

(declare-fun b!764285 () Bool)

(declare-fun e!425682 () Bool)

(assert (=> b!764285 (= e!425684 e!425682)))

(declare-fun res!517286 () Bool)

(assert (=> b!764285 (=> (not res!517286) (not e!425682))))

(declare-fun lt!340109 () SeekEntryResult!7804)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42186 (_ BitVec 32)) SeekEntryResult!7804)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764285 (= res!517286 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328) (select (arr!20197 a!3186) j!159) a!3186 mask!3328) lt!340109))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764285 (= lt!340109 (Intermediate!7804 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764286 () Bool)

(declare-fun res!517291 () Bool)

(assert (=> b!764286 (=> (not res!517291) (not e!425682))))

(assert (=> b!764286 (= res!517291 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20197 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764287 () Bool)

(declare-fun e!425686 () Bool)

(assert (=> b!764287 (= e!425682 e!425686)))

(declare-fun res!517284 () Bool)

(assert (=> b!764287 (=> (not res!517284) (not e!425686))))

(declare-fun lt!340108 () array!42186)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!340110 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!764287 (= res!517284 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340110 mask!3328) lt!340110 lt!340108 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340110 lt!340108 mask!3328)))))

(assert (=> b!764287 (= lt!340110 (select (store (arr!20197 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!764287 (= lt!340108 (array!42187 (store (arr!20197 a!3186) i!1173 k0!2102) (size!20618 a!3186)))))

(declare-fun b!764288 () Bool)

(declare-fun res!517295 () Bool)

(assert (=> b!764288 (=> (not res!517295) (not e!425684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42186 (_ BitVec 32)) Bool)

(assert (=> b!764288 (= res!517295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764289 () Bool)

(declare-fun res!517285 () Bool)

(assert (=> b!764289 (=> (not res!517285) (not e!425684))))

(declare-datatypes ((List!14252 0))(
  ( (Nil!14249) (Cons!14248 (h!15332 (_ BitVec 64)) (t!20575 List!14252)) )
))
(declare-fun arrayNoDuplicates!0 (array!42186 (_ BitVec 32) List!14252) Bool)

(assert (=> b!764289 (= res!517285 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14249))))

(declare-fun res!517293 () Bool)

(assert (=> start!66328 (=> (not res!517293) (not e!425685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66328 (= res!517293 (validMask!0 mask!3328))))

(assert (=> start!66328 e!425685))

(assert (=> start!66328 true))

(declare-fun array_inv!15971 (array!42186) Bool)

(assert (=> start!66328 (array_inv!15971 a!3186)))

(declare-fun b!764290 () Bool)

(declare-fun res!517287 () Bool)

(assert (=> b!764290 (=> (not res!517287) (not e!425685))))

(assert (=> b!764290 (= res!517287 (validKeyInArray!0 k0!2102))))

(declare-fun b!764291 () Bool)

(declare-fun res!517294 () Bool)

(assert (=> b!764291 (=> (not res!517294) (not e!425685))))

(assert (=> b!764291 (= res!517294 (and (= (size!20618 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20618 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20618 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!425683 () Bool)

(declare-fun b!764292 () Bool)

(assert (=> b!764292 (= e!425683 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20197 a!3186) j!159) a!3186 mask!3328) lt!340109))))

(declare-fun b!764293 () Bool)

(declare-fun res!517290 () Bool)

(assert (=> b!764293 (=> (not res!517290) (not e!425685))))

(declare-fun arrayContainsKey!0 (array!42186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764293 (= res!517290 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764294 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42186 (_ BitVec 32)) SeekEntryResult!7804)

(assert (=> b!764294 (= e!425683 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20197 a!3186) j!159) a!3186 mask!3328) (Found!7804 j!159)))))

(declare-fun b!764295 () Bool)

(declare-fun res!517292 () Bool)

(assert (=> b!764295 (=> (not res!517292) (not e!425682))))

(assert (=> b!764295 (= res!517292 e!425683)))

(declare-fun c!83886 () Bool)

(assert (=> b!764295 (= c!83886 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764296 () Bool)

(declare-fun res!517288 () Bool)

(assert (=> b!764296 (=> (not res!517288) (not e!425684))))

(assert (=> b!764296 (= res!517288 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20618 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20618 a!3186))))))

(declare-fun b!764297 () Bool)

(assert (=> b!764297 (= e!425686 (not (= (seekEntryOrOpen!0 (select (arr!20197 a!3186) j!159) a!3186 mask!3328) (Found!7804 j!159))))))

(assert (=> b!764297 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26334 0))(
  ( (Unit!26335) )
))
(declare-fun lt!340111 () Unit!26334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26334)

(assert (=> b!764297 (= lt!340111 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!66328 res!517293) b!764291))

(assert (= (and b!764291 res!517294) b!764284))

(assert (= (and b!764284 res!517289) b!764290))

(assert (= (and b!764290 res!517287) b!764293))

(assert (= (and b!764293 res!517290) b!764283))

(assert (= (and b!764283 res!517296) b!764288))

(assert (= (and b!764288 res!517295) b!764289))

(assert (= (and b!764289 res!517285) b!764296))

(assert (= (and b!764296 res!517288) b!764285))

(assert (= (and b!764285 res!517286) b!764286))

(assert (= (and b!764286 res!517291) b!764295))

(assert (= (and b!764295 c!83886) b!764292))

(assert (= (and b!764295 (not c!83886)) b!764294))

(assert (= (and b!764295 res!517292) b!764287))

(assert (= (and b!764287 res!517284) b!764297))

(declare-fun m!710737 () Bool)

(assert (=> b!764289 m!710737))

(declare-fun m!710739 () Bool)

(assert (=> b!764286 m!710739))

(declare-fun m!710741 () Bool)

(assert (=> b!764283 m!710741))

(declare-fun m!710743 () Bool)

(assert (=> b!764288 m!710743))

(declare-fun m!710745 () Bool)

(assert (=> b!764293 m!710745))

(declare-fun m!710747 () Bool)

(assert (=> b!764294 m!710747))

(assert (=> b!764294 m!710747))

(declare-fun m!710749 () Bool)

(assert (=> b!764294 m!710749))

(declare-fun m!710751 () Bool)

(assert (=> b!764290 m!710751))

(assert (=> b!764292 m!710747))

(assert (=> b!764292 m!710747))

(declare-fun m!710753 () Bool)

(assert (=> b!764292 m!710753))

(assert (=> b!764284 m!710747))

(assert (=> b!764284 m!710747))

(declare-fun m!710755 () Bool)

(assert (=> b!764284 m!710755))

(assert (=> b!764297 m!710747))

(assert (=> b!764297 m!710747))

(declare-fun m!710757 () Bool)

(assert (=> b!764297 m!710757))

(declare-fun m!710759 () Bool)

(assert (=> b!764297 m!710759))

(declare-fun m!710761 () Bool)

(assert (=> b!764297 m!710761))

(assert (=> b!764285 m!710747))

(assert (=> b!764285 m!710747))

(declare-fun m!710763 () Bool)

(assert (=> b!764285 m!710763))

(assert (=> b!764285 m!710763))

(assert (=> b!764285 m!710747))

(declare-fun m!710765 () Bool)

(assert (=> b!764285 m!710765))

(declare-fun m!710767 () Bool)

(assert (=> start!66328 m!710767))

(declare-fun m!710769 () Bool)

(assert (=> start!66328 m!710769))

(declare-fun m!710771 () Bool)

(assert (=> b!764287 m!710771))

(declare-fun m!710773 () Bool)

(assert (=> b!764287 m!710773))

(declare-fun m!710775 () Bool)

(assert (=> b!764287 m!710775))

(declare-fun m!710777 () Bool)

(assert (=> b!764287 m!710777))

(declare-fun m!710779 () Bool)

(assert (=> b!764287 m!710779))

(assert (=> b!764287 m!710771))

(check-sat (not b!764292) (not b!764293) (not b!764285) (not b!764284) (not b!764283) (not b!764288) (not b!764294) (not b!764289) (not b!764290) (not b!764297) (not b!764287) (not start!66328))
(check-sat)
(get-model)

(declare-fun d!100893 () Bool)

(declare-fun res!517340 () Bool)

(declare-fun e!425710 () Bool)

(assert (=> d!100893 (=> res!517340 e!425710)))

(assert (=> d!100893 (= res!517340 (= (select (arr!20197 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!100893 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!425710)))

(declare-fun b!764347 () Bool)

(declare-fun e!425711 () Bool)

(assert (=> b!764347 (= e!425710 e!425711)))

(declare-fun res!517341 () Bool)

(assert (=> b!764347 (=> (not res!517341) (not e!425711))))

(assert (=> b!764347 (= res!517341 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20618 a!3186)))))

(declare-fun b!764348 () Bool)

(assert (=> b!764348 (= e!425711 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100893 (not res!517340)) b!764347))

(assert (= (and b!764347 res!517341) b!764348))

(declare-fun m!710825 () Bool)

(assert (=> d!100893 m!710825))

(declare-fun m!710827 () Bool)

(assert (=> b!764348 m!710827))

(assert (=> b!764293 d!100893))

(declare-fun b!764367 () Bool)

(declare-fun lt!340132 () SeekEntryResult!7804)

(assert (=> b!764367 (and (bvsge (index!33585 lt!340132) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340132) (size!20618 a!3186)))))

(declare-fun e!425723 () Bool)

(assert (=> b!764367 (= e!425723 (= (select (arr!20197 a!3186) (index!33585 lt!340132)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764368 () Bool)

(declare-fun e!425726 () SeekEntryResult!7804)

(declare-fun e!425725 () SeekEntryResult!7804)

(assert (=> b!764368 (= e!425726 e!425725)))

(declare-fun lt!340131 () (_ BitVec 64))

(declare-fun c!83897 () Bool)

(assert (=> b!764368 (= c!83897 (or (= lt!340131 (select (arr!20197 a!3186) j!159)) (= (bvadd lt!340131 lt!340131) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764369 () Bool)

(declare-fun e!425724 () Bool)

(declare-fun e!425722 () Bool)

(assert (=> b!764369 (= e!425724 e!425722)))

(declare-fun res!517350 () Bool)

(get-info :version)

(assert (=> b!764369 (= res!517350 (and ((_ is Intermediate!7804) lt!340132) (not (undefined!8616 lt!340132)) (bvslt (x!64505 lt!340132) #b01111111111111111111111111111110) (bvsge (x!64505 lt!340132) #b00000000000000000000000000000000) (bvsge (x!64505 lt!340132) x!1131)))))

(assert (=> b!764369 (=> (not res!517350) (not e!425722))))

(declare-fun b!764370 () Bool)

(assert (=> b!764370 (= e!425726 (Intermediate!7804 true index!1321 x!1131))))

(declare-fun b!764371 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764371 (= e!425725 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20197 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764372 () Bool)

(assert (=> b!764372 (= e!425725 (Intermediate!7804 false index!1321 x!1131))))

(declare-fun b!764374 () Bool)

(assert (=> b!764374 (and (bvsge (index!33585 lt!340132) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340132) (size!20618 a!3186)))))

(declare-fun res!517348 () Bool)

(assert (=> b!764374 (= res!517348 (= (select (arr!20197 a!3186) (index!33585 lt!340132)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764374 (=> res!517348 e!425723)))

(declare-fun b!764375 () Bool)

(assert (=> b!764375 (and (bvsge (index!33585 lt!340132) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340132) (size!20618 a!3186)))))

(declare-fun res!517349 () Bool)

(assert (=> b!764375 (= res!517349 (= (select (arr!20197 a!3186) (index!33585 lt!340132)) (select (arr!20197 a!3186) j!159)))))

(assert (=> b!764375 (=> res!517349 e!425723)))

(assert (=> b!764375 (= e!425722 e!425723)))

(declare-fun b!764373 () Bool)

(assert (=> b!764373 (= e!425724 (bvsge (x!64505 lt!340132) #b01111111111111111111111111111110))))

(declare-fun d!100895 () Bool)

(assert (=> d!100895 e!425724))

(declare-fun c!83896 () Bool)

(assert (=> d!100895 (= c!83896 (and ((_ is Intermediate!7804) lt!340132) (undefined!8616 lt!340132)))))

(assert (=> d!100895 (= lt!340132 e!425726)))

(declare-fun c!83898 () Bool)

(assert (=> d!100895 (= c!83898 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100895 (= lt!340131 (select (arr!20197 a!3186) index!1321))))

(assert (=> d!100895 (validMask!0 mask!3328)))

(assert (=> d!100895 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20197 a!3186) j!159) a!3186 mask!3328) lt!340132)))

(assert (= (and d!100895 c!83898) b!764370))

(assert (= (and d!100895 (not c!83898)) b!764368))

(assert (= (and b!764368 c!83897) b!764372))

(assert (= (and b!764368 (not c!83897)) b!764371))

(assert (= (and d!100895 c!83896) b!764373))

(assert (= (and d!100895 (not c!83896)) b!764369))

(assert (= (and b!764369 res!517350) b!764375))

(assert (= (and b!764375 (not res!517349)) b!764374))

(assert (= (and b!764374 (not res!517348)) b!764367))

(declare-fun m!710829 () Bool)

(assert (=> b!764367 m!710829))

(declare-fun m!710831 () Bool)

(assert (=> d!100895 m!710831))

(assert (=> d!100895 m!710767))

(declare-fun m!710833 () Bool)

(assert (=> b!764371 m!710833))

(assert (=> b!764371 m!710833))

(assert (=> b!764371 m!710747))

(declare-fun m!710835 () Bool)

(assert (=> b!764371 m!710835))

(assert (=> b!764375 m!710829))

(assert (=> b!764374 m!710829))

(assert (=> b!764292 d!100895))

(declare-fun d!100897 () Bool)

(assert (=> d!100897 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66328 d!100897))

(declare-fun d!100901 () Bool)

(assert (=> d!100901 (= (array_inv!15971 a!3186) (bvsge (size!20618 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66328 d!100901))

(declare-fun lt!340146 () SeekEntryResult!7804)

(declare-fun d!100905 () Bool)

(assert (=> d!100905 (and (or ((_ is Undefined!7804) lt!340146) (not ((_ is Found!7804) lt!340146)) (and (bvsge (index!33584 lt!340146) #b00000000000000000000000000000000) (bvslt (index!33584 lt!340146) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340146) ((_ is Found!7804) lt!340146) (not ((_ is MissingVacant!7804) lt!340146)) (not (= (index!33586 lt!340146) resIntermediateIndex!5)) (and (bvsge (index!33586 lt!340146) #b00000000000000000000000000000000) (bvslt (index!33586 lt!340146) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340146) (ite ((_ is Found!7804) lt!340146) (= (select (arr!20197 a!3186) (index!33584 lt!340146)) (select (arr!20197 a!3186) j!159)) (and ((_ is MissingVacant!7804) lt!340146) (= (index!33586 lt!340146) resIntermediateIndex!5) (= (select (arr!20197 a!3186) (index!33586 lt!340146)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!425750 () SeekEntryResult!7804)

(assert (=> d!100905 (= lt!340146 e!425750)))

(declare-fun c!83909 () Bool)

(assert (=> d!100905 (= c!83909 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!340147 () (_ BitVec 64))

(assert (=> d!100905 (= lt!340147 (select (arr!20197 a!3186) index!1321))))

(assert (=> d!100905 (validMask!0 mask!3328)))

(assert (=> d!100905 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20197 a!3186) j!159) a!3186 mask!3328) lt!340146)))

(declare-fun e!425748 () SeekEntryResult!7804)

(declare-fun b!764406 () Bool)

(assert (=> b!764406 (= e!425748 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20197 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764407 () Bool)

(assert (=> b!764407 (= e!425750 Undefined!7804)))

(declare-fun b!764408 () Bool)

(declare-fun c!83908 () Bool)

(assert (=> b!764408 (= c!83908 (= lt!340147 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!425749 () SeekEntryResult!7804)

(assert (=> b!764408 (= e!425749 e!425748)))

(declare-fun b!764409 () Bool)

(assert (=> b!764409 (= e!425749 (Found!7804 index!1321))))

(declare-fun b!764410 () Bool)

(assert (=> b!764410 (= e!425750 e!425749)))

(declare-fun c!83910 () Bool)

(assert (=> b!764410 (= c!83910 (= lt!340147 (select (arr!20197 a!3186) j!159)))))

(declare-fun b!764411 () Bool)

(assert (=> b!764411 (= e!425748 (MissingVacant!7804 resIntermediateIndex!5))))

(assert (= (and d!100905 c!83909) b!764407))

(assert (= (and d!100905 (not c!83909)) b!764410))

(assert (= (and b!764410 c!83910) b!764409))

(assert (= (and b!764410 (not c!83910)) b!764408))

(assert (= (and b!764408 c!83908) b!764411))

(assert (= (and b!764408 (not c!83908)) b!764406))

(declare-fun m!710853 () Bool)

(assert (=> d!100905 m!710853))

(declare-fun m!710855 () Bool)

(assert (=> d!100905 m!710855))

(assert (=> d!100905 m!710831))

(assert (=> d!100905 m!710767))

(assert (=> b!764406 m!710833))

(assert (=> b!764406 m!710833))

(assert (=> b!764406 m!710747))

(declare-fun m!710857 () Bool)

(assert (=> b!764406 m!710857))

(assert (=> b!764294 d!100905))

(declare-fun b!764493 () Bool)

(declare-fun e!425798 () SeekEntryResult!7804)

(declare-fun lt!340171 () SeekEntryResult!7804)

(assert (=> b!764493 (= e!425798 (MissingZero!7804 (index!33585 lt!340171)))))

(declare-fun b!764494 () Bool)

(declare-fun e!425799 () SeekEntryResult!7804)

(assert (=> b!764494 (= e!425799 (Found!7804 (index!33585 lt!340171)))))

(declare-fun d!100917 () Bool)

(declare-fun lt!340172 () SeekEntryResult!7804)

(assert (=> d!100917 (and (or ((_ is Undefined!7804) lt!340172) (not ((_ is Found!7804) lt!340172)) (and (bvsge (index!33584 lt!340172) #b00000000000000000000000000000000) (bvslt (index!33584 lt!340172) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340172) ((_ is Found!7804) lt!340172) (not ((_ is MissingZero!7804) lt!340172)) (and (bvsge (index!33583 lt!340172) #b00000000000000000000000000000000) (bvslt (index!33583 lt!340172) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340172) ((_ is Found!7804) lt!340172) ((_ is MissingZero!7804) lt!340172) (not ((_ is MissingVacant!7804) lt!340172)) (and (bvsge (index!33586 lt!340172) #b00000000000000000000000000000000) (bvslt (index!33586 lt!340172) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340172) (ite ((_ is Found!7804) lt!340172) (= (select (arr!20197 a!3186) (index!33584 lt!340172)) k0!2102) (ite ((_ is MissingZero!7804) lt!340172) (= (select (arr!20197 a!3186) (index!33583 lt!340172)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7804) lt!340172) (= (select (arr!20197 a!3186) (index!33586 lt!340172)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!425797 () SeekEntryResult!7804)

(assert (=> d!100917 (= lt!340172 e!425797)))

(declare-fun c!83943 () Bool)

(assert (=> d!100917 (= c!83943 (and ((_ is Intermediate!7804) lt!340171) (undefined!8616 lt!340171)))))

(assert (=> d!100917 (= lt!340171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!100917 (validMask!0 mask!3328)))

(assert (=> d!100917 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!340172)))

(declare-fun b!764495 () Bool)

(assert (=> b!764495 (= e!425797 e!425799)))

(declare-fun lt!340170 () (_ BitVec 64))

(assert (=> b!764495 (= lt!340170 (select (arr!20197 a!3186) (index!33585 lt!340171)))))

(declare-fun c!83941 () Bool)

(assert (=> b!764495 (= c!83941 (= lt!340170 k0!2102))))

(declare-fun b!764496 () Bool)

(assert (=> b!764496 (= e!425798 (seekKeyOrZeroReturnVacant!0 (x!64505 lt!340171) (index!33585 lt!340171) (index!33585 lt!340171) k0!2102 a!3186 mask!3328))))

(declare-fun b!764497 () Bool)

(declare-fun c!83942 () Bool)

(assert (=> b!764497 (= c!83942 (= lt!340170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764497 (= e!425799 e!425798)))

(declare-fun b!764498 () Bool)

(assert (=> b!764498 (= e!425797 Undefined!7804)))

(assert (= (and d!100917 c!83943) b!764498))

(assert (= (and d!100917 (not c!83943)) b!764495))

(assert (= (and b!764495 c!83941) b!764494))

(assert (= (and b!764495 (not c!83941)) b!764497))

(assert (= (and b!764497 c!83942) b!764493))

(assert (= (and b!764497 (not c!83942)) b!764496))

(assert (=> d!100917 m!710767))

(declare-fun m!710879 () Bool)

(assert (=> d!100917 m!710879))

(declare-fun m!710881 () Bool)

(assert (=> d!100917 m!710881))

(declare-fun m!710883 () Bool)

(assert (=> d!100917 m!710883))

(declare-fun m!710885 () Bool)

(assert (=> d!100917 m!710885))

(assert (=> d!100917 m!710883))

(declare-fun m!710887 () Bool)

(assert (=> d!100917 m!710887))

(declare-fun m!710889 () Bool)

(assert (=> b!764495 m!710889))

(declare-fun m!710891 () Bool)

(assert (=> b!764496 m!710891))

(assert (=> b!764283 d!100917))

(declare-fun b!764499 () Bool)

(declare-fun lt!340174 () SeekEntryResult!7804)

(assert (=> b!764499 (and (bvsge (index!33585 lt!340174) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340174) (size!20618 a!3186)))))

(declare-fun e!425801 () Bool)

(assert (=> b!764499 (= e!425801 (= (select (arr!20197 a!3186) (index!33585 lt!340174)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764500 () Bool)

(declare-fun e!425804 () SeekEntryResult!7804)

(declare-fun e!425803 () SeekEntryResult!7804)

(assert (=> b!764500 (= e!425804 e!425803)))

(declare-fun c!83945 () Bool)

(declare-fun lt!340173 () (_ BitVec 64))

(assert (=> b!764500 (= c!83945 (or (= lt!340173 (select (arr!20197 a!3186) j!159)) (= (bvadd lt!340173 lt!340173) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764501 () Bool)

(declare-fun e!425802 () Bool)

(declare-fun e!425800 () Bool)

(assert (=> b!764501 (= e!425802 e!425800)))

(declare-fun res!517386 () Bool)

(assert (=> b!764501 (= res!517386 (and ((_ is Intermediate!7804) lt!340174) (not (undefined!8616 lt!340174)) (bvslt (x!64505 lt!340174) #b01111111111111111111111111111110) (bvsge (x!64505 lt!340174) #b00000000000000000000000000000000) (bvsge (x!64505 lt!340174) #b00000000000000000000000000000000)))))

(assert (=> b!764501 (=> (not res!517386) (not e!425800))))

(declare-fun b!764502 () Bool)

(assert (=> b!764502 (= e!425804 (Intermediate!7804 true (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764503 () Bool)

(assert (=> b!764503 (= e!425803 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20197 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764504 () Bool)

(assert (=> b!764504 (= e!425803 (Intermediate!7804 false (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764506 () Bool)

(assert (=> b!764506 (and (bvsge (index!33585 lt!340174) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340174) (size!20618 a!3186)))))

(declare-fun res!517384 () Bool)

(assert (=> b!764506 (= res!517384 (= (select (arr!20197 a!3186) (index!33585 lt!340174)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764506 (=> res!517384 e!425801)))

(declare-fun b!764507 () Bool)

(assert (=> b!764507 (and (bvsge (index!33585 lt!340174) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340174) (size!20618 a!3186)))))

(declare-fun res!517385 () Bool)

(assert (=> b!764507 (= res!517385 (= (select (arr!20197 a!3186) (index!33585 lt!340174)) (select (arr!20197 a!3186) j!159)))))

(assert (=> b!764507 (=> res!517385 e!425801)))

(assert (=> b!764507 (= e!425800 e!425801)))

(declare-fun b!764505 () Bool)

(assert (=> b!764505 (= e!425802 (bvsge (x!64505 lt!340174) #b01111111111111111111111111111110))))

(declare-fun d!100935 () Bool)

(assert (=> d!100935 e!425802))

(declare-fun c!83944 () Bool)

(assert (=> d!100935 (= c!83944 (and ((_ is Intermediate!7804) lt!340174) (undefined!8616 lt!340174)))))

(assert (=> d!100935 (= lt!340174 e!425804)))

(declare-fun c!83946 () Bool)

(assert (=> d!100935 (= c!83946 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100935 (= lt!340173 (select (arr!20197 a!3186) (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328)))))

(assert (=> d!100935 (validMask!0 mask!3328)))

(assert (=> d!100935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328) (select (arr!20197 a!3186) j!159) a!3186 mask!3328) lt!340174)))

(assert (= (and d!100935 c!83946) b!764502))

(assert (= (and d!100935 (not c!83946)) b!764500))

(assert (= (and b!764500 c!83945) b!764504))

(assert (= (and b!764500 (not c!83945)) b!764503))

(assert (= (and d!100935 c!83944) b!764505))

(assert (= (and d!100935 (not c!83944)) b!764501))

(assert (= (and b!764501 res!517386) b!764507))

(assert (= (and b!764507 (not res!517385)) b!764506))

(assert (= (and b!764506 (not res!517384)) b!764499))

(declare-fun m!710895 () Bool)

(assert (=> b!764499 m!710895))

(assert (=> d!100935 m!710763))

(declare-fun m!710899 () Bool)

(assert (=> d!100935 m!710899))

(assert (=> d!100935 m!710767))

(assert (=> b!764503 m!710763))

(declare-fun m!710905 () Bool)

(assert (=> b!764503 m!710905))

(assert (=> b!764503 m!710905))

(assert (=> b!764503 m!710747))

(declare-fun m!710907 () Bool)

(assert (=> b!764503 m!710907))

(assert (=> b!764507 m!710895))

(assert (=> b!764506 m!710895))

(assert (=> b!764285 d!100935))

(declare-fun d!100939 () Bool)

(declare-fun lt!340188 () (_ BitVec 32))

(declare-fun lt!340187 () (_ BitVec 32))

(assert (=> d!100939 (= lt!340188 (bvmul (bvxor lt!340187 (bvlshr lt!340187 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100939 (= lt!340187 ((_ extract 31 0) (bvand (bvxor (select (arr!20197 a!3186) j!159) (bvlshr (select (arr!20197 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100939 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517391 (let ((h!15335 ((_ extract 31 0) (bvand (bvxor (select (arr!20197 a!3186) j!159) (bvlshr (select (arr!20197 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64513 (bvmul (bvxor h!15335 (bvlshr h!15335 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64513 (bvlshr x!64513 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517391 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517391 #b00000000000000000000000000000000))))))

(assert (=> d!100939 (= (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328) (bvand (bvxor lt!340188 (bvlshr lt!340188 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764285 d!100939))

(declare-fun d!100943 () Bool)

(assert (=> d!100943 (= (validKeyInArray!0 (select (arr!20197 a!3186) j!159)) (and (not (= (select (arr!20197 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20197 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764284 d!100943))

(declare-fun b!764517 () Bool)

(declare-fun e!425811 () SeekEntryResult!7804)

(declare-fun lt!340190 () SeekEntryResult!7804)

(assert (=> b!764517 (= e!425811 (MissingZero!7804 (index!33585 lt!340190)))))

(declare-fun b!764518 () Bool)

(declare-fun e!425812 () SeekEntryResult!7804)

(assert (=> b!764518 (= e!425812 (Found!7804 (index!33585 lt!340190)))))

(declare-fun d!100945 () Bool)

(declare-fun lt!340191 () SeekEntryResult!7804)

(assert (=> d!100945 (and (or ((_ is Undefined!7804) lt!340191) (not ((_ is Found!7804) lt!340191)) (and (bvsge (index!33584 lt!340191) #b00000000000000000000000000000000) (bvslt (index!33584 lt!340191) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340191) ((_ is Found!7804) lt!340191) (not ((_ is MissingZero!7804) lt!340191)) (and (bvsge (index!33583 lt!340191) #b00000000000000000000000000000000) (bvslt (index!33583 lt!340191) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340191) ((_ is Found!7804) lt!340191) ((_ is MissingZero!7804) lt!340191) (not ((_ is MissingVacant!7804) lt!340191)) (and (bvsge (index!33586 lt!340191) #b00000000000000000000000000000000) (bvslt (index!33586 lt!340191) (size!20618 a!3186)))) (or ((_ is Undefined!7804) lt!340191) (ite ((_ is Found!7804) lt!340191) (= (select (arr!20197 a!3186) (index!33584 lt!340191)) (select (arr!20197 a!3186) j!159)) (ite ((_ is MissingZero!7804) lt!340191) (= (select (arr!20197 a!3186) (index!33583 lt!340191)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7804) lt!340191) (= (select (arr!20197 a!3186) (index!33586 lt!340191)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!425810 () SeekEntryResult!7804)

(assert (=> d!100945 (= lt!340191 e!425810)))

(declare-fun c!83952 () Bool)

(assert (=> d!100945 (= c!83952 (and ((_ is Intermediate!7804) lt!340190) (undefined!8616 lt!340190)))))

(assert (=> d!100945 (= lt!340190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20197 a!3186) j!159) mask!3328) (select (arr!20197 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100945 (validMask!0 mask!3328)))

(assert (=> d!100945 (= (seekEntryOrOpen!0 (select (arr!20197 a!3186) j!159) a!3186 mask!3328) lt!340191)))

(declare-fun b!764519 () Bool)

(assert (=> b!764519 (= e!425810 e!425812)))

(declare-fun lt!340189 () (_ BitVec 64))

(assert (=> b!764519 (= lt!340189 (select (arr!20197 a!3186) (index!33585 lt!340190)))))

(declare-fun c!83950 () Bool)

(assert (=> b!764519 (= c!83950 (= lt!340189 (select (arr!20197 a!3186) j!159)))))

(declare-fun b!764520 () Bool)

(assert (=> b!764520 (= e!425811 (seekKeyOrZeroReturnVacant!0 (x!64505 lt!340190) (index!33585 lt!340190) (index!33585 lt!340190) (select (arr!20197 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764521 () Bool)

(declare-fun c!83951 () Bool)

(assert (=> b!764521 (= c!83951 (= lt!340189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764521 (= e!425812 e!425811)))

(declare-fun b!764522 () Bool)

(assert (=> b!764522 (= e!425810 Undefined!7804)))

(assert (= (and d!100945 c!83952) b!764522))

(assert (= (and d!100945 (not c!83952)) b!764519))

(assert (= (and b!764519 c!83950) b!764518))

(assert (= (and b!764519 (not c!83950)) b!764521))

(assert (= (and b!764521 c!83951) b!764517))

(assert (= (and b!764521 (not c!83951)) b!764520))

(assert (=> d!100945 m!710767))

(declare-fun m!710909 () Bool)

(assert (=> d!100945 m!710909))

(declare-fun m!710911 () Bool)

(assert (=> d!100945 m!710911))

(assert (=> d!100945 m!710763))

(assert (=> d!100945 m!710747))

(assert (=> d!100945 m!710765))

(assert (=> d!100945 m!710747))

(assert (=> d!100945 m!710763))

(declare-fun m!710913 () Bool)

(assert (=> d!100945 m!710913))

(declare-fun m!710915 () Bool)

(assert (=> b!764519 m!710915))

(assert (=> b!764520 m!710747))

(declare-fun m!710917 () Bool)

(assert (=> b!764520 m!710917))

(assert (=> b!764297 d!100945))

(declare-fun b!764561 () Bool)

(declare-fun e!425834 () Bool)

(declare-fun e!425836 () Bool)

(assert (=> b!764561 (= e!425834 e!425836)))

(declare-fun c!83970 () Bool)

(assert (=> b!764561 (= c!83970 (validKeyInArray!0 (select (arr!20197 a!3186) j!159)))))

(declare-fun bm!35004 () Bool)

(declare-fun call!35007 () Bool)

(assert (=> bm!35004 (= call!35007 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!764562 () Bool)

(declare-fun e!425835 () Bool)

(assert (=> b!764562 (= e!425835 call!35007)))

(declare-fun d!100947 () Bool)

(declare-fun res!517397 () Bool)

(assert (=> d!100947 (=> res!517397 e!425834)))

(assert (=> d!100947 (= res!517397 (bvsge j!159 (size!20618 a!3186)))))

(assert (=> d!100947 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!425834)))

(declare-fun b!764563 () Bool)

(assert (=> b!764563 (= e!425836 call!35007)))

(declare-fun b!764564 () Bool)

(assert (=> b!764564 (= e!425836 e!425835)))

(declare-fun lt!340214 () (_ BitVec 64))

(assert (=> b!764564 (= lt!340214 (select (arr!20197 a!3186) j!159))))

(declare-fun lt!340215 () Unit!26334)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42186 (_ BitVec 64) (_ BitVec 32)) Unit!26334)

(assert (=> b!764564 (= lt!340215 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340214 j!159))))

(assert (=> b!764564 (arrayContainsKey!0 a!3186 lt!340214 #b00000000000000000000000000000000)))

(declare-fun lt!340213 () Unit!26334)

(assert (=> b!764564 (= lt!340213 lt!340215)))

(declare-fun res!517396 () Bool)

(assert (=> b!764564 (= res!517396 (= (seekEntryOrOpen!0 (select (arr!20197 a!3186) j!159) a!3186 mask!3328) (Found!7804 j!159)))))

(assert (=> b!764564 (=> (not res!517396) (not e!425835))))

(assert (= (and d!100947 (not res!517397)) b!764561))

(assert (= (and b!764561 c!83970) b!764564))

(assert (= (and b!764561 (not c!83970)) b!764563))

(assert (= (and b!764564 res!517396) b!764562))

(assert (= (or b!764562 b!764563) bm!35004))

(assert (=> b!764561 m!710747))

(assert (=> b!764561 m!710747))

(assert (=> b!764561 m!710755))

(declare-fun m!710935 () Bool)

(assert (=> bm!35004 m!710935))

(assert (=> b!764564 m!710747))

(declare-fun m!710937 () Bool)

(assert (=> b!764564 m!710937))

(declare-fun m!710939 () Bool)

(assert (=> b!764564 m!710939))

(assert (=> b!764564 m!710747))

(assert (=> b!764564 m!710757))

(assert (=> b!764297 d!100947))

(declare-fun d!100953 () Bool)

(assert (=> d!100953 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!340227 () Unit!26334)

(declare-fun choose!38 (array!42186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26334)

(assert (=> d!100953 (= lt!340227 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100953 (validMask!0 mask!3328)))

(assert (=> d!100953 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!340227)))

(declare-fun bs!21469 () Bool)

(assert (= bs!21469 d!100953))

(assert (=> bs!21469 m!710759))

(declare-fun m!710953 () Bool)

(assert (=> bs!21469 m!710953))

(assert (=> bs!21469 m!710767))

(assert (=> b!764297 d!100953))

(declare-fun b!764575 () Bool)

(declare-fun lt!340229 () SeekEntryResult!7804)

(assert (=> b!764575 (and (bvsge (index!33585 lt!340229) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340229) (size!20618 lt!340108)))))

(declare-fun e!425844 () Bool)

(assert (=> b!764575 (= e!425844 (= (select (arr!20197 lt!340108) (index!33585 lt!340229)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764576 () Bool)

(declare-fun e!425847 () SeekEntryResult!7804)

(declare-fun e!425846 () SeekEntryResult!7804)

(assert (=> b!764576 (= e!425847 e!425846)))

(declare-fun c!83976 () Bool)

(declare-fun lt!340228 () (_ BitVec 64))

(assert (=> b!764576 (= c!83976 (or (= lt!340228 lt!340110) (= (bvadd lt!340228 lt!340228) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764577 () Bool)

(declare-fun e!425845 () Bool)

(declare-fun e!425843 () Bool)

(assert (=> b!764577 (= e!425845 e!425843)))

(declare-fun res!517402 () Bool)

(assert (=> b!764577 (= res!517402 (and ((_ is Intermediate!7804) lt!340229) (not (undefined!8616 lt!340229)) (bvslt (x!64505 lt!340229) #b01111111111111111111111111111110) (bvsge (x!64505 lt!340229) #b00000000000000000000000000000000) (bvsge (x!64505 lt!340229) #b00000000000000000000000000000000)))))

(assert (=> b!764577 (=> (not res!517402) (not e!425843))))

(declare-fun b!764578 () Bool)

(assert (=> b!764578 (= e!425847 (Intermediate!7804 true (toIndex!0 lt!340110 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764579 () Bool)

(assert (=> b!764579 (= e!425846 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340110 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340110 lt!340108 mask!3328))))

(declare-fun b!764580 () Bool)

(assert (=> b!764580 (= e!425846 (Intermediate!7804 false (toIndex!0 lt!340110 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764582 () Bool)

(assert (=> b!764582 (and (bvsge (index!33585 lt!340229) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340229) (size!20618 lt!340108)))))

(declare-fun res!517400 () Bool)

(assert (=> b!764582 (= res!517400 (= (select (arr!20197 lt!340108) (index!33585 lt!340229)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764582 (=> res!517400 e!425844)))

(declare-fun b!764583 () Bool)

(assert (=> b!764583 (and (bvsge (index!33585 lt!340229) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340229) (size!20618 lt!340108)))))

(declare-fun res!517401 () Bool)

(assert (=> b!764583 (= res!517401 (= (select (arr!20197 lt!340108) (index!33585 lt!340229)) lt!340110))))

(assert (=> b!764583 (=> res!517401 e!425844)))

(assert (=> b!764583 (= e!425843 e!425844)))

(declare-fun b!764581 () Bool)

(assert (=> b!764581 (= e!425845 (bvsge (x!64505 lt!340229) #b01111111111111111111111111111110))))

(declare-fun d!100959 () Bool)

(assert (=> d!100959 e!425845))

(declare-fun c!83975 () Bool)

(assert (=> d!100959 (= c!83975 (and ((_ is Intermediate!7804) lt!340229) (undefined!8616 lt!340229)))))

(assert (=> d!100959 (= lt!340229 e!425847)))

(declare-fun c!83977 () Bool)

(assert (=> d!100959 (= c!83977 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100959 (= lt!340228 (select (arr!20197 lt!340108) (toIndex!0 lt!340110 mask!3328)))))

(assert (=> d!100959 (validMask!0 mask!3328)))

(assert (=> d!100959 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340110 mask!3328) lt!340110 lt!340108 mask!3328) lt!340229)))

(assert (= (and d!100959 c!83977) b!764578))

(assert (= (and d!100959 (not c!83977)) b!764576))

(assert (= (and b!764576 c!83976) b!764580))

(assert (= (and b!764576 (not c!83976)) b!764579))

(assert (= (and d!100959 c!83975) b!764581))

(assert (= (and d!100959 (not c!83975)) b!764577))

(assert (= (and b!764577 res!517402) b!764583))

(assert (= (and b!764583 (not res!517401)) b!764582))

(assert (= (and b!764582 (not res!517400)) b!764575))

(declare-fun m!710955 () Bool)

(assert (=> b!764575 m!710955))

(assert (=> d!100959 m!710771))

(declare-fun m!710957 () Bool)

(assert (=> d!100959 m!710957))

(assert (=> d!100959 m!710767))

(assert (=> b!764579 m!710771))

(declare-fun m!710959 () Bool)

(assert (=> b!764579 m!710959))

(assert (=> b!764579 m!710959))

(declare-fun m!710961 () Bool)

(assert (=> b!764579 m!710961))

(assert (=> b!764583 m!710955))

(assert (=> b!764582 m!710955))

(assert (=> b!764287 d!100959))

(declare-fun d!100961 () Bool)

(declare-fun lt!340231 () (_ BitVec 32))

(declare-fun lt!340230 () (_ BitVec 32))

(assert (=> d!100961 (= lt!340231 (bvmul (bvxor lt!340230 (bvlshr lt!340230 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100961 (= lt!340230 ((_ extract 31 0) (bvand (bvxor lt!340110 (bvlshr lt!340110 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100961 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517391 (let ((h!15335 ((_ extract 31 0) (bvand (bvxor lt!340110 (bvlshr lt!340110 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64513 (bvmul (bvxor h!15335 (bvlshr h!15335 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64513 (bvlshr x!64513 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517391 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517391 #b00000000000000000000000000000000))))))

(assert (=> d!100961 (= (toIndex!0 lt!340110 mask!3328) (bvand (bvxor lt!340231 (bvlshr lt!340231 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764287 d!100961))

(declare-fun b!764600 () Bool)

(declare-fun lt!340237 () SeekEntryResult!7804)

(assert (=> b!764600 (and (bvsge (index!33585 lt!340237) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340237) (size!20618 lt!340108)))))

(declare-fun e!425861 () Bool)

(assert (=> b!764600 (= e!425861 (= (select (arr!20197 lt!340108) (index!33585 lt!340237)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764601 () Bool)

(declare-fun e!425864 () SeekEntryResult!7804)

(declare-fun e!425863 () SeekEntryResult!7804)

(assert (=> b!764601 (= e!425864 e!425863)))

(declare-fun c!83983 () Bool)

(declare-fun lt!340232 () (_ BitVec 64))

(assert (=> b!764601 (= c!83983 (or (= lt!340232 lt!340110) (= (bvadd lt!340232 lt!340232) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764602 () Bool)

(declare-fun e!425862 () Bool)

(declare-fun e!425860 () Bool)

(assert (=> b!764602 (= e!425862 e!425860)))

(declare-fun res!517413 () Bool)

(assert (=> b!764602 (= res!517413 (and ((_ is Intermediate!7804) lt!340237) (not (undefined!8616 lt!340237)) (bvslt (x!64505 lt!340237) #b01111111111111111111111111111110) (bvsge (x!64505 lt!340237) #b00000000000000000000000000000000) (bvsge (x!64505 lt!340237) x!1131)))))

(assert (=> b!764602 (=> (not res!517413) (not e!425860))))

(declare-fun b!764603 () Bool)

(assert (=> b!764603 (= e!425864 (Intermediate!7804 true index!1321 x!1131))))

(declare-fun b!764604 () Bool)

(assert (=> b!764604 (= e!425863 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340110 lt!340108 mask!3328))))

(declare-fun b!764605 () Bool)

(assert (=> b!764605 (= e!425863 (Intermediate!7804 false index!1321 x!1131))))

(declare-fun b!764607 () Bool)

(assert (=> b!764607 (and (bvsge (index!33585 lt!340237) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340237) (size!20618 lt!340108)))))

(declare-fun res!517411 () Bool)

(assert (=> b!764607 (= res!517411 (= (select (arr!20197 lt!340108) (index!33585 lt!340237)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764607 (=> res!517411 e!425861)))

(declare-fun b!764608 () Bool)

(assert (=> b!764608 (and (bvsge (index!33585 lt!340237) #b00000000000000000000000000000000) (bvslt (index!33585 lt!340237) (size!20618 lt!340108)))))

(declare-fun res!517412 () Bool)

(assert (=> b!764608 (= res!517412 (= (select (arr!20197 lt!340108) (index!33585 lt!340237)) lt!340110))))

(assert (=> b!764608 (=> res!517412 e!425861)))

(assert (=> b!764608 (= e!425860 e!425861)))

(declare-fun b!764606 () Bool)

(assert (=> b!764606 (= e!425862 (bvsge (x!64505 lt!340237) #b01111111111111111111111111111110))))

(declare-fun d!100963 () Bool)

(assert (=> d!100963 e!425862))

(declare-fun c!83982 () Bool)

(assert (=> d!100963 (= c!83982 (and ((_ is Intermediate!7804) lt!340237) (undefined!8616 lt!340237)))))

(assert (=> d!100963 (= lt!340237 e!425864)))

(declare-fun c!83984 () Bool)

(assert (=> d!100963 (= c!83984 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100963 (= lt!340232 (select (arr!20197 lt!340108) index!1321))))

(assert (=> d!100963 (validMask!0 mask!3328)))

(assert (=> d!100963 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340110 lt!340108 mask!3328) lt!340237)))

(assert (= (and d!100963 c!83984) b!764603))

(assert (= (and d!100963 (not c!83984)) b!764601))

(assert (= (and b!764601 c!83983) b!764605))

(assert (= (and b!764601 (not c!83983)) b!764604))

(assert (= (and d!100963 c!83982) b!764606))

(assert (= (and d!100963 (not c!83982)) b!764602))

(assert (= (and b!764602 res!517413) b!764608))

(assert (= (and b!764608 (not res!517412)) b!764607))

(assert (= (and b!764607 (not res!517411)) b!764600))

(declare-fun m!710963 () Bool)

(assert (=> b!764600 m!710963))

(declare-fun m!710965 () Bool)

(assert (=> d!100963 m!710965))

(assert (=> d!100963 m!710767))

(assert (=> b!764604 m!710833))

(assert (=> b!764604 m!710833))

(declare-fun m!710969 () Bool)

(assert (=> b!764604 m!710969))

(assert (=> b!764608 m!710963))

(assert (=> b!764607 m!710963))

(assert (=> b!764287 d!100963))

(declare-fun b!764663 () Bool)

(declare-fun e!425902 () Bool)

(declare-fun call!35017 () Bool)

(assert (=> b!764663 (= e!425902 call!35017)))

(declare-fun b!764664 () Bool)

(declare-fun e!425900 () Bool)

(assert (=> b!764664 (= e!425900 e!425902)))

(declare-fun c!84001 () Bool)

(assert (=> b!764664 (= c!84001 (validKeyInArray!0 (select (arr!20197 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100967 () Bool)

(declare-fun res!517437 () Bool)

(declare-fun e!425901 () Bool)

(assert (=> d!100967 (=> res!517437 e!425901)))

(assert (=> d!100967 (= res!517437 (bvsge #b00000000000000000000000000000000 (size!20618 a!3186)))))

(assert (=> d!100967 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14249) e!425901)))

(declare-fun b!764665 () Bool)

(declare-fun e!425903 () Bool)

(declare-fun contains!4075 (List!14252 (_ BitVec 64)) Bool)

(assert (=> b!764665 (= e!425903 (contains!4075 Nil!14249 (select (arr!20197 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!764666 () Bool)

(assert (=> b!764666 (= e!425901 e!425900)))

(declare-fun res!517436 () Bool)

(assert (=> b!764666 (=> (not res!517436) (not e!425900))))

(assert (=> b!764666 (= res!517436 (not e!425903))))

(declare-fun res!517438 () Bool)

(assert (=> b!764666 (=> (not res!517438) (not e!425903))))

(assert (=> b!764666 (= res!517438 (validKeyInArray!0 (select (arr!20197 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!764667 () Bool)

(assert (=> b!764667 (= e!425902 call!35017)))

(declare-fun bm!35014 () Bool)

(assert (=> bm!35014 (= call!35017 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84001 (Cons!14248 (select (arr!20197 a!3186) #b00000000000000000000000000000000) Nil!14249) Nil!14249)))))

(assert (= (and d!100967 (not res!517437)) b!764666))

(assert (= (and b!764666 res!517438) b!764665))

(assert (= (and b!764666 res!517436) b!764664))

(assert (= (and b!764664 c!84001) b!764663))

(assert (= (and b!764664 (not c!84001)) b!764667))

(assert (= (or b!764663 b!764667) bm!35014))

(assert (=> b!764664 m!710825))

(assert (=> b!764664 m!710825))

(declare-fun m!711011 () Bool)

(assert (=> b!764664 m!711011))

(assert (=> b!764665 m!710825))

(assert (=> b!764665 m!710825))

(declare-fun m!711013 () Bool)

(assert (=> b!764665 m!711013))

(assert (=> b!764666 m!710825))

(assert (=> b!764666 m!710825))

(assert (=> b!764666 m!711011))

(assert (=> bm!35014 m!710825))

(declare-fun m!711017 () Bool)

(assert (=> bm!35014 m!711017))

(assert (=> b!764289 d!100967))

(declare-fun b!764668 () Bool)

(declare-fun e!425904 () Bool)

(declare-fun e!425906 () Bool)

(assert (=> b!764668 (= e!425904 e!425906)))

(declare-fun c!84002 () Bool)

(assert (=> b!764668 (= c!84002 (validKeyInArray!0 (select (arr!20197 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35015 () Bool)

(declare-fun call!35018 () Bool)

(assert (=> bm!35015 (= call!35018 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!764669 () Bool)

(declare-fun e!425905 () Bool)

(assert (=> b!764669 (= e!425905 call!35018)))

(declare-fun d!100979 () Bool)

(declare-fun res!517440 () Bool)

(assert (=> d!100979 (=> res!517440 e!425904)))

(assert (=> d!100979 (= res!517440 (bvsge #b00000000000000000000000000000000 (size!20618 a!3186)))))

(assert (=> d!100979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!425904)))

(declare-fun b!764670 () Bool)

(assert (=> b!764670 (= e!425906 call!35018)))

(declare-fun b!764671 () Bool)

(assert (=> b!764671 (= e!425906 e!425905)))

(declare-fun lt!340258 () (_ BitVec 64))

(assert (=> b!764671 (= lt!340258 (select (arr!20197 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!340259 () Unit!26334)

(assert (=> b!764671 (= lt!340259 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340258 #b00000000000000000000000000000000))))

(assert (=> b!764671 (arrayContainsKey!0 a!3186 lt!340258 #b00000000000000000000000000000000)))

(declare-fun lt!340257 () Unit!26334)

(assert (=> b!764671 (= lt!340257 lt!340259)))

(declare-fun res!517439 () Bool)

(assert (=> b!764671 (= res!517439 (= (seekEntryOrOpen!0 (select (arr!20197 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7804 #b00000000000000000000000000000000)))))

(assert (=> b!764671 (=> (not res!517439) (not e!425905))))

(assert (= (and d!100979 (not res!517440)) b!764668))

(assert (= (and b!764668 c!84002) b!764671))

(assert (= (and b!764668 (not c!84002)) b!764670))

(assert (= (and b!764671 res!517439) b!764669))

(assert (= (or b!764669 b!764670) bm!35015))

(assert (=> b!764668 m!710825))

(assert (=> b!764668 m!710825))

(assert (=> b!764668 m!711011))

(declare-fun m!711019 () Bool)

(assert (=> bm!35015 m!711019))

(assert (=> b!764671 m!710825))

(declare-fun m!711021 () Bool)

(assert (=> b!764671 m!711021))

(declare-fun m!711023 () Bool)

(assert (=> b!764671 m!711023))

(assert (=> b!764671 m!710825))

(declare-fun m!711025 () Bool)

(assert (=> b!764671 m!711025))

(assert (=> b!764288 d!100979))

(declare-fun d!100983 () Bool)

(assert (=> d!100983 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764290 d!100983))

(check-sat (not d!100917) (not b!764406) (not b!764579) (not d!100935) (not b!764665) (not b!764564) (not b!764668) (not b!764348) (not d!100963) (not b!764561) (not d!100905) (not b!764520) (not d!100953) (not b!764671) (not d!100895) (not d!100959) (not bm!35014) (not d!100945) (not b!764666) (not b!764664) (not bm!35004) (not bm!35015) (not b!764496) (not b!764503) (not b!764604) (not b!764371))
(check-sat)
