; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65174 () Bool)

(assert start!65174)

(declare-datatypes ((SeekEntryResult!7367 0))(
  ( (MissingZero!7367 (index!31835 (_ BitVec 32))) (Found!7367 (index!31836 (_ BitVec 32))) (Intermediate!7367 (undefined!8179 Bool) (index!31837 (_ BitVec 32)) (x!62862 (_ BitVec 32))) (Undefined!7367) (MissingVacant!7367 (index!31838 (_ BitVec 32))) )
))
(declare-fun lt!326537 () SeekEntryResult!7367)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41300 0))(
  ( (array!41301 (arr!19760 (Array (_ BitVec 32) (_ BitVec 64))) (size!20181 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41300)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!411913 () Bool)

(declare-fun b!736266 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41300 (_ BitVec 32)) SeekEntryResult!7367)

(assert (=> b!736266 (= e!411913 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326537))))

(declare-fun b!736267 () Bool)

(declare-fun e!411914 () Bool)

(declare-fun e!411912 () Bool)

(assert (=> b!736267 (= e!411914 e!411912)))

(declare-fun res!494916 () Bool)

(assert (=> b!736267 (=> (not res!494916) (not e!411912))))

(declare-fun lt!326539 () SeekEntryResult!7367)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41300 (_ BitVec 32)) SeekEntryResult!7367)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736267 (= res!494916 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19760 a!3186) j!159) mask!3328) (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326539))))

(assert (=> b!736267 (= lt!326539 (Intermediate!7367 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!494907 () Bool)

(declare-fun e!411906 () Bool)

(assert (=> start!65174 (=> (not res!494907) (not e!411906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65174 (= res!494907 (validMask!0 mask!3328))))

(assert (=> start!65174 e!411906))

(assert (=> start!65174 true))

(declare-fun array_inv!15534 (array!41300) Bool)

(assert (=> start!65174 (array_inv!15534 a!3186)))

(declare-fun b!736268 () Bool)

(declare-fun res!494921 () Bool)

(assert (=> b!736268 (=> (not res!494921) (not e!411906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736268 (= res!494921 (validKeyInArray!0 (select (arr!19760 a!3186) j!159)))))

(declare-fun b!736269 () Bool)

(declare-fun res!494917 () Bool)

(assert (=> b!736269 (=> (not res!494917) (not e!411906))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736269 (= res!494917 (and (= (size!20181 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20181 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20181 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736270 () Bool)

(declare-fun res!494909 () Bool)

(declare-fun e!411904 () Bool)

(assert (=> b!736270 (=> res!494909 e!411904)))

(declare-fun e!411908 () Bool)

(assert (=> b!736270 (= res!494909 e!411908)))

(declare-fun c!81063 () Bool)

(declare-fun lt!326533 () Bool)

(assert (=> b!736270 (= c!81063 lt!326533)))

(declare-fun b!736271 () Bool)

(declare-fun lt!326534 () SeekEntryResult!7367)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!326543 () (_ BitVec 32))

(assert (=> b!736271 (= e!411908 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326543 resIntermediateIndex!5 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326534)))))

(declare-fun b!736272 () Bool)

(declare-fun res!494905 () Bool)

(assert (=> b!736272 (=> (not res!494905) (not e!411914))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!736272 (= res!494905 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20181 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20181 a!3186))))))

(declare-fun b!736273 () Bool)

(declare-fun res!494906 () Bool)

(assert (=> b!736273 (=> (not res!494906) (not e!411912))))

(declare-fun e!411905 () Bool)

(assert (=> b!736273 (= res!494906 e!411905)))

(declare-fun c!81061 () Bool)

(assert (=> b!736273 (= c!81061 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736274 () Bool)

(declare-fun res!494914 () Bool)

(assert (=> b!736274 (=> (not res!494914) (not e!411906))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736274 (= res!494914 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736275 () Bool)

(declare-datatypes ((Unit!25086 0))(
  ( (Unit!25087) )
))
(declare-fun e!411911 () Unit!25086)

(declare-fun Unit!25088 () Unit!25086)

(assert (=> b!736275 (= e!411911 Unit!25088)))

(assert (=> b!736275 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326543 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326539)))

(declare-fun b!736276 () Bool)

(assert (=> b!736276 (= e!411905 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326539))))

(declare-fun b!736277 () Bool)

(assert (=> b!736277 (= e!411906 e!411914)))

(declare-fun res!494918 () Bool)

(assert (=> b!736277 (=> (not res!494918) (not e!411914))))

(declare-fun lt!326544 () SeekEntryResult!7367)

(assert (=> b!736277 (= res!494918 (or (= lt!326544 (MissingZero!7367 i!1173)) (= lt!326544 (MissingVacant!7367 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41300 (_ BitVec 32)) SeekEntryResult!7367)

(assert (=> b!736277 (= lt!326544 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736278 () Bool)

(declare-fun res!494910 () Bool)

(assert (=> b!736278 (=> (not res!494910) (not e!411914))))

(declare-datatypes ((List!13815 0))(
  ( (Nil!13812) (Cons!13811 (h!14883 (_ BitVec 64)) (t!20138 List!13815)) )
))
(declare-fun arrayNoDuplicates!0 (array!41300 (_ BitVec 32) List!13815) Bool)

(assert (=> b!736278 (= res!494910 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13812))))

(declare-fun b!736279 () Bool)

(declare-fun Unit!25089 () Unit!25086)

(assert (=> b!736279 (= e!411911 Unit!25089)))

(declare-fun lt!326546 () SeekEntryResult!7367)

(assert (=> b!736279 (= lt!326546 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19760 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736279 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326543 resIntermediateIndex!5 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326534)))

(declare-fun b!736280 () Bool)

(assert (=> b!736280 (= e!411904 true)))

(declare-fun lt!326541 () array!41300)

(declare-fun lt!326538 () SeekEntryResult!7367)

(declare-fun lt!326535 () (_ BitVec 64))

(assert (=> b!736280 (= lt!326538 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326543 lt!326535 lt!326541 mask!3328))))

(declare-fun b!736281 () Bool)

(declare-fun e!411910 () Bool)

(assert (=> b!736281 (= e!411910 e!411904)))

(declare-fun res!494915 () Bool)

(assert (=> b!736281 (=> res!494915 e!411904)))

(assert (=> b!736281 (= res!494915 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326543 #b00000000000000000000000000000000) (bvsge lt!326543 (size!20181 a!3186))))))

(declare-fun lt!326540 () Unit!25086)

(assert (=> b!736281 (= lt!326540 e!411911)))

(declare-fun c!81062 () Bool)

(assert (=> b!736281 (= c!81062 lt!326533)))

(assert (=> b!736281 (= lt!326533 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736281 (= lt!326543 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736282 () Bool)

(declare-fun e!411915 () Bool)

(assert (=> b!736282 (= e!411912 e!411915)))

(declare-fun res!494908 () Bool)

(assert (=> b!736282 (=> (not res!494908) (not e!411915))))

(declare-fun lt!326536 () SeekEntryResult!7367)

(declare-fun lt!326542 () SeekEntryResult!7367)

(assert (=> b!736282 (= res!494908 (= lt!326536 lt!326542))))

(assert (=> b!736282 (= lt!326542 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326535 lt!326541 mask!3328))))

(assert (=> b!736282 (= lt!326536 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326535 mask!3328) lt!326535 lt!326541 mask!3328))))

(assert (=> b!736282 (= lt!326535 (select (store (arr!19760 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736282 (= lt!326541 (array!41301 (store (arr!19760 a!3186) i!1173 k!2102) (size!20181 a!3186)))))

(declare-fun b!736283 () Bool)

(declare-fun res!494913 () Bool)

(assert (=> b!736283 (=> (not res!494913) (not e!411912))))

(assert (=> b!736283 (= res!494913 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19760 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736284 () Bool)

(assert (=> b!736284 (= e!411905 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) (Found!7367 j!159)))))

(declare-fun b!736285 () Bool)

(assert (=> b!736285 (= e!411908 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326543 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326539)))))

(declare-fun b!736286 () Bool)

(declare-fun res!494912 () Bool)

(assert (=> b!736286 (=> (not res!494912) (not e!411906))))

(assert (=> b!736286 (= res!494912 (validKeyInArray!0 k!2102))))

(declare-fun b!736287 () Bool)

(assert (=> b!736287 (= e!411915 (not e!411910))))

(declare-fun res!494920 () Bool)

(assert (=> b!736287 (=> res!494920 e!411910)))

(assert (=> b!736287 (= res!494920 (or (not (is-Intermediate!7367 lt!326542)) (bvsge x!1131 (x!62862 lt!326542))))))

(assert (=> b!736287 (= lt!326534 (Found!7367 j!159))))

(declare-fun e!411907 () Bool)

(assert (=> b!736287 e!411907))

(declare-fun res!494922 () Bool)

(assert (=> b!736287 (=> (not res!494922) (not e!411907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41300 (_ BitVec 32)) Bool)

(assert (=> b!736287 (= res!494922 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326545 () Unit!25086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41300 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25086)

(assert (=> b!736287 (= lt!326545 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736288 () Bool)

(assert (=> b!736288 (= e!411907 e!411913)))

(declare-fun res!494911 () Bool)

(assert (=> b!736288 (=> (not res!494911) (not e!411913))))

(assert (=> b!736288 (= res!494911 (= (seekEntryOrOpen!0 (select (arr!19760 a!3186) j!159) a!3186 mask!3328) lt!326537))))

(assert (=> b!736288 (= lt!326537 (Found!7367 j!159))))

(declare-fun b!736289 () Bool)

(declare-fun res!494919 () Bool)

(assert (=> b!736289 (=> (not res!494919) (not e!411914))))

(assert (=> b!736289 (= res!494919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65174 res!494907) b!736269))

(assert (= (and b!736269 res!494917) b!736268))

(assert (= (and b!736268 res!494921) b!736286))

(assert (= (and b!736286 res!494912) b!736274))

(assert (= (and b!736274 res!494914) b!736277))

(assert (= (and b!736277 res!494918) b!736289))

(assert (= (and b!736289 res!494919) b!736278))

(assert (= (and b!736278 res!494910) b!736272))

(assert (= (and b!736272 res!494905) b!736267))

(assert (= (and b!736267 res!494916) b!736283))

(assert (= (and b!736283 res!494913) b!736273))

(assert (= (and b!736273 c!81061) b!736276))

(assert (= (and b!736273 (not c!81061)) b!736284))

(assert (= (and b!736273 res!494906) b!736282))

(assert (= (and b!736282 res!494908) b!736287))

(assert (= (and b!736287 res!494922) b!736288))

(assert (= (and b!736288 res!494911) b!736266))

(assert (= (and b!736287 (not res!494920)) b!736281))

(assert (= (and b!736281 c!81062) b!736275))

(assert (= (and b!736281 (not c!81062)) b!736279))

(assert (= (and b!736281 (not res!494915)) b!736270))

(assert (= (and b!736270 c!81063) b!736285))

(assert (= (and b!736270 (not c!81063)) b!736271))

(assert (= (and b!736270 (not res!494909)) b!736280))

(declare-fun m!688507 () Bool)

(assert (=> b!736274 m!688507))

(declare-fun m!688509 () Bool)

(assert (=> b!736288 m!688509))

(assert (=> b!736288 m!688509))

(declare-fun m!688511 () Bool)

(assert (=> b!736288 m!688511))

(assert (=> b!736266 m!688509))

(assert (=> b!736266 m!688509))

(declare-fun m!688513 () Bool)

(assert (=> b!736266 m!688513))

(assert (=> b!736271 m!688509))

(assert (=> b!736271 m!688509))

(declare-fun m!688515 () Bool)

(assert (=> b!736271 m!688515))

(assert (=> b!736267 m!688509))

(assert (=> b!736267 m!688509))

(declare-fun m!688517 () Bool)

(assert (=> b!736267 m!688517))

(assert (=> b!736267 m!688517))

(assert (=> b!736267 m!688509))

(declare-fun m!688519 () Bool)

(assert (=> b!736267 m!688519))

(declare-fun m!688521 () Bool)

(assert (=> b!736282 m!688521))

(declare-fun m!688523 () Bool)

(assert (=> b!736282 m!688523))

(declare-fun m!688525 () Bool)

(assert (=> b!736282 m!688525))

(declare-fun m!688527 () Bool)

(assert (=> b!736282 m!688527))

(assert (=> b!736282 m!688521))

(declare-fun m!688529 () Bool)

(assert (=> b!736282 m!688529))

(assert (=> b!736279 m!688509))

(assert (=> b!736279 m!688509))

(declare-fun m!688531 () Bool)

(assert (=> b!736279 m!688531))

(assert (=> b!736279 m!688509))

(assert (=> b!736279 m!688515))

(declare-fun m!688533 () Bool)

(assert (=> b!736277 m!688533))

(declare-fun m!688535 () Bool)

(assert (=> b!736283 m!688535))

(declare-fun m!688537 () Bool)

(assert (=> b!736280 m!688537))

(assert (=> b!736284 m!688509))

(assert (=> b!736284 m!688509))

(assert (=> b!736284 m!688531))

(declare-fun m!688539 () Bool)

(assert (=> start!65174 m!688539))

(declare-fun m!688541 () Bool)

(assert (=> start!65174 m!688541))

(declare-fun m!688543 () Bool)

(assert (=> b!736281 m!688543))

(assert (=> b!736268 m!688509))

(assert (=> b!736268 m!688509))

(declare-fun m!688545 () Bool)

(assert (=> b!736268 m!688545))

(declare-fun m!688547 () Bool)

(assert (=> b!736278 m!688547))

(declare-fun m!688549 () Bool)

(assert (=> b!736286 m!688549))

(declare-fun m!688551 () Bool)

(assert (=> b!736287 m!688551))

(declare-fun m!688553 () Bool)

(assert (=> b!736287 m!688553))

(assert (=> b!736276 m!688509))

(assert (=> b!736276 m!688509))

(declare-fun m!688555 () Bool)

(assert (=> b!736276 m!688555))

(declare-fun m!688557 () Bool)

(assert (=> b!736289 m!688557))

(assert (=> b!736275 m!688509))

(assert (=> b!736275 m!688509))

(declare-fun m!688559 () Bool)

(assert (=> b!736275 m!688559))

(assert (=> b!736285 m!688509))

(assert (=> b!736285 m!688509))

(assert (=> b!736285 m!688559))

(push 1)

