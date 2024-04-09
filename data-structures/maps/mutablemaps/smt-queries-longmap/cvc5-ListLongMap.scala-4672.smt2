; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64966 () Bool)

(assert start!64966)

(declare-fun b!733318 () Bool)

(declare-fun res!492948 () Bool)

(declare-fun e!410334 () Bool)

(assert (=> b!733318 (=> (not res!492948) (not e!410334))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733318 (= res!492948 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41230 0))(
  ( (array!41231 (arr!19728 (Array (_ BitVec 32) (_ BitVec 64))) (size!20149 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41230)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7335 0))(
  ( (MissingZero!7335 (index!31707 (_ BitVec 32))) (Found!7335 (index!31708 (_ BitVec 32))) (Intermediate!7335 (undefined!8147 Bool) (index!31709 (_ BitVec 32)) (x!62726 (_ BitVec 32))) (Undefined!7335) (MissingVacant!7335 (index!31710 (_ BitVec 32))) )
))
(declare-fun lt!325041 () SeekEntryResult!7335)

(declare-fun e!410341 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!733319 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41230 (_ BitVec 32)) SeekEntryResult!7335)

(assert (=> b!733319 (= e!410341 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) lt!325041))))

(declare-fun b!733320 () Bool)

(declare-fun res!492959 () Bool)

(assert (=> b!733320 (=> (not res!492959) (not e!410334))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733320 (= res!492959 (and (= (size!20149 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20149 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20149 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733321 () Bool)

(declare-fun e!410343 () Bool)

(assert (=> b!733321 (= e!410334 e!410343)))

(declare-fun res!492954 () Bool)

(assert (=> b!733321 (=> (not res!492954) (not e!410343))))

(declare-fun lt!325040 () SeekEntryResult!7335)

(assert (=> b!733321 (= res!492954 (or (= lt!325040 (MissingZero!7335 i!1173)) (= lt!325040 (MissingVacant!7335 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41230 (_ BitVec 32)) SeekEntryResult!7335)

(assert (=> b!733321 (= lt!325040 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!733322 () Bool)

(declare-fun e!410336 () Bool)

(assert (=> b!733322 (= e!410336 e!410341)))

(declare-fun res!492956 () Bool)

(assert (=> b!733322 (=> (not res!492956) (not e!410341))))

(assert (=> b!733322 (= res!492956 (= (seekEntryOrOpen!0 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) lt!325041))))

(assert (=> b!733322 (= lt!325041 (Found!7335 j!159))))

(declare-fun b!733323 () Bool)

(declare-fun res!492957 () Bool)

(declare-fun e!410340 () Bool)

(assert (=> b!733323 (=> (not res!492957) (not e!410340))))

(declare-fun e!410342 () Bool)

(assert (=> b!733323 (= res!492957 e!410342)))

(declare-fun c!80565 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!733323 (= c!80565 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733324 () Bool)

(declare-fun res!492950 () Bool)

(assert (=> b!733324 (=> (not res!492950) (not e!410334))))

(declare-fun arrayContainsKey!0 (array!41230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733324 (= res!492950 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733325 () Bool)

(declare-fun res!492953 () Bool)

(declare-fun e!410337 () Bool)

(assert (=> b!733325 (=> res!492953 e!410337)))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!733325 (= res!492953 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) (Found!7335 j!159)))))

(declare-fun res!492943 () Bool)

(assert (=> start!64966 (=> (not res!492943) (not e!410334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64966 (= res!492943 (validMask!0 mask!3328))))

(assert (=> start!64966 e!410334))

(assert (=> start!64966 true))

(declare-fun array_inv!15502 (array!41230) Bool)

(assert (=> start!64966 (array_inv!15502 a!3186)))

(declare-fun b!733326 () Bool)

(declare-fun lt!325044 () SeekEntryResult!7335)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41230 (_ BitVec 32)) SeekEntryResult!7335)

(assert (=> b!733326 (= e!410342 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) lt!325044))))

(declare-fun b!733327 () Bool)

(declare-fun res!492945 () Bool)

(assert (=> b!733327 (=> (not res!492945) (not e!410334))))

(assert (=> b!733327 (= res!492945 (validKeyInArray!0 (select (arr!19728 a!3186) j!159)))))

(declare-fun b!733328 () Bool)

(declare-fun e!410335 () Bool)

(declare-fun e!410338 () Bool)

(assert (=> b!733328 (= e!410335 (not e!410338))))

(declare-fun res!492960 () Bool)

(assert (=> b!733328 (=> res!492960 e!410338)))

(declare-fun lt!325045 () SeekEntryResult!7335)

(assert (=> b!733328 (= res!492960 (or (not (is-Intermediate!7335 lt!325045)) (bvsge x!1131 (x!62726 lt!325045))))))

(assert (=> b!733328 e!410336))

(declare-fun res!492946 () Bool)

(assert (=> b!733328 (=> (not res!492946) (not e!410336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41230 (_ BitVec 32)) Bool)

(assert (=> b!733328 (= res!492946 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24988 0))(
  ( (Unit!24989) )
))
(declare-fun lt!325046 () Unit!24988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41230 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24988)

(assert (=> b!733328 (= lt!325046 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733329 () Bool)

(declare-fun res!492944 () Bool)

(assert (=> b!733329 (=> (not res!492944) (not e!410343))))

(declare-datatypes ((List!13783 0))(
  ( (Nil!13780) (Cons!13779 (h!14845 (_ BitVec 64)) (t!20106 List!13783)) )
))
(declare-fun arrayNoDuplicates!0 (array!41230 (_ BitVec 32) List!13783) Bool)

(assert (=> b!733329 (= res!492944 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13780))))

(declare-fun b!733330 () Bool)

(declare-fun res!492958 () Bool)

(assert (=> b!733330 (=> (not res!492958) (not e!410343))))

(assert (=> b!733330 (= res!492958 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20149 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20149 a!3186))))))

(declare-fun b!733331 () Bool)

(assert (=> b!733331 (= e!410342 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) (Found!7335 j!159)))))

(declare-fun b!733332 () Bool)

(declare-fun res!492949 () Bool)

(assert (=> b!733332 (=> (not res!492949) (not e!410343))))

(assert (=> b!733332 (= res!492949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733333 () Bool)

(declare-fun lt!325038 () (_ BitVec 32))

(assert (=> b!733333 (= e!410337 (or (bvslt mask!3328 #b00000000000000000000000000000000) (and (bvsge lt!325038 #b00000000000000000000000000000000) (bvslt lt!325038 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun b!733334 () Bool)

(assert (=> b!733334 (= e!410338 e!410337)))

(declare-fun res!492955 () Bool)

(assert (=> b!733334 (=> res!492955 e!410337)))

(assert (=> b!733334 (= res!492955 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733334 (= lt!325038 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!733335 () Bool)

(declare-fun res!492951 () Bool)

(assert (=> b!733335 (=> (not res!492951) (not e!410340))))

(assert (=> b!733335 (= res!492951 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19728 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733336 () Bool)

(assert (=> b!733336 (= e!410340 e!410335)))

(declare-fun res!492947 () Bool)

(assert (=> b!733336 (=> (not res!492947) (not e!410335))))

(declare-fun lt!325042 () SeekEntryResult!7335)

(assert (=> b!733336 (= res!492947 (= lt!325042 lt!325045))))

(declare-fun lt!325039 () array!41230)

(declare-fun lt!325043 () (_ BitVec 64))

(assert (=> b!733336 (= lt!325045 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325043 lt!325039 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733336 (= lt!325042 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325043 mask!3328) lt!325043 lt!325039 mask!3328))))

(assert (=> b!733336 (= lt!325043 (select (store (arr!19728 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!733336 (= lt!325039 (array!41231 (store (arr!19728 a!3186) i!1173 k!2102) (size!20149 a!3186)))))

(declare-fun b!733337 () Bool)

(assert (=> b!733337 (= e!410343 e!410340)))

(declare-fun res!492952 () Bool)

(assert (=> b!733337 (=> (not res!492952) (not e!410340))))

(assert (=> b!733337 (= res!492952 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19728 a!3186) j!159) mask!3328) (select (arr!19728 a!3186) j!159) a!3186 mask!3328) lt!325044))))

(assert (=> b!733337 (= lt!325044 (Intermediate!7335 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!64966 res!492943) b!733320))

(assert (= (and b!733320 res!492959) b!733327))

(assert (= (and b!733327 res!492945) b!733318))

(assert (= (and b!733318 res!492948) b!733324))

(assert (= (and b!733324 res!492950) b!733321))

(assert (= (and b!733321 res!492954) b!733332))

(assert (= (and b!733332 res!492949) b!733329))

(assert (= (and b!733329 res!492944) b!733330))

(assert (= (and b!733330 res!492958) b!733337))

(assert (= (and b!733337 res!492952) b!733335))

(assert (= (and b!733335 res!492951) b!733323))

(assert (= (and b!733323 c!80565) b!733326))

(assert (= (and b!733323 (not c!80565)) b!733331))

(assert (= (and b!733323 res!492957) b!733336))

(assert (= (and b!733336 res!492947) b!733328))

(assert (= (and b!733328 res!492946) b!733322))

(assert (= (and b!733322 res!492956) b!733319))

(assert (= (and b!733328 (not res!492960)) b!733334))

(assert (= (and b!733334 (not res!492955)) b!733325))

(assert (= (and b!733325 (not res!492953)) b!733333))

(declare-fun m!686305 () Bool)

(assert (=> b!733322 m!686305))

(assert (=> b!733322 m!686305))

(declare-fun m!686307 () Bool)

(assert (=> b!733322 m!686307))

(declare-fun m!686309 () Bool)

(assert (=> b!733318 m!686309))

(assert (=> b!733325 m!686305))

(assert (=> b!733325 m!686305))

(declare-fun m!686311 () Bool)

(assert (=> b!733325 m!686311))

(assert (=> b!733337 m!686305))

(assert (=> b!733337 m!686305))

(declare-fun m!686313 () Bool)

(assert (=> b!733337 m!686313))

(assert (=> b!733337 m!686313))

(assert (=> b!733337 m!686305))

(declare-fun m!686315 () Bool)

(assert (=> b!733337 m!686315))

(declare-fun m!686317 () Bool)

(assert (=> b!733329 m!686317))

(assert (=> b!733326 m!686305))

(assert (=> b!733326 m!686305))

(declare-fun m!686319 () Bool)

(assert (=> b!733326 m!686319))

(declare-fun m!686321 () Bool)

(assert (=> b!733336 m!686321))

(declare-fun m!686323 () Bool)

(assert (=> b!733336 m!686323))

(declare-fun m!686325 () Bool)

(assert (=> b!733336 m!686325))

(assert (=> b!733336 m!686323))

(declare-fun m!686327 () Bool)

(assert (=> b!733336 m!686327))

(declare-fun m!686329 () Bool)

(assert (=> b!733336 m!686329))

(declare-fun m!686331 () Bool)

(assert (=> b!733328 m!686331))

(declare-fun m!686333 () Bool)

(assert (=> b!733328 m!686333))

(assert (=> b!733331 m!686305))

(assert (=> b!733331 m!686305))

(assert (=> b!733331 m!686311))

(declare-fun m!686335 () Bool)

(assert (=> start!64966 m!686335))

(declare-fun m!686337 () Bool)

(assert (=> start!64966 m!686337))

(declare-fun m!686339 () Bool)

(assert (=> b!733334 m!686339))

(declare-fun m!686341 () Bool)

(assert (=> b!733324 m!686341))

(declare-fun m!686343 () Bool)

(assert (=> b!733321 m!686343))

(declare-fun m!686345 () Bool)

(assert (=> b!733332 m!686345))

(declare-fun m!686347 () Bool)

(assert (=> b!733335 m!686347))

(assert (=> b!733327 m!686305))

(assert (=> b!733327 m!686305))

(declare-fun m!686349 () Bool)

(assert (=> b!733327 m!686349))

(assert (=> b!733319 m!686305))

(assert (=> b!733319 m!686305))

(declare-fun m!686351 () Bool)

(assert (=> b!733319 m!686351))

(push 1)

(assert (not b!733318))

(assert (not b!733324))

(assert (not b!733322))

(assert (not b!733336))

(assert (not b!733321))

(assert (not b!733326))

(assert (not b!733328))

(assert (not b!733331))

(assert (not b!733332))

(assert (not b!733334))

(assert (not b!733325))

(assert (not b!733327))

(assert (not b!733319))

(assert (not start!64966))

(assert (not b!733337))

(assert (not b!733329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!733587 () Bool)

(declare-fun e!410479 () SeekEntryResult!7335)

(declare-fun lt!325156 () SeekEntryResult!7335)

(assert (=> b!733587 (= e!410479 (Found!7335 (index!31709 lt!325156)))))

(declare-fun b!733588 () Bool)

(declare-fun c!80623 () Bool)

(declare-fun lt!325154 () (_ BitVec 64))

(assert (=> b!733588 (= c!80623 (= lt!325154 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410480 () SeekEntryResult!7335)

(assert (=> b!733588 (= e!410479 e!410480)))

(declare-fun b!733589 () Bool)

(assert (=> b!733589 (= e!410480 (MissingZero!7335 (index!31709 lt!325156)))))

(declare-fun b!733590 () Bool)

(declare-fun e!410478 () SeekEntryResult!7335)

(assert (=> b!733590 (= e!410478 Undefined!7335)))

(declare-fun d!99821 () Bool)

(declare-fun lt!325155 () SeekEntryResult!7335)

(assert (=> d!99821 (and (or (is-Undefined!7335 lt!325155) (not (is-Found!7335 lt!325155)) (and (bvsge (index!31708 lt!325155) #b00000000000000000000000000000000) (bvslt (index!31708 lt!325155) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325155) (is-Found!7335 lt!325155) (not (is-MissingZero!7335 lt!325155)) (and (bvsge (index!31707 lt!325155) #b00000000000000000000000000000000) (bvslt (index!31707 lt!325155) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325155) (is-Found!7335 lt!325155) (is-MissingZero!7335 lt!325155) (not (is-MissingVacant!7335 lt!325155)) (and (bvsge (index!31710 lt!325155) #b00000000000000000000000000000000) (bvslt (index!31710 lt!325155) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325155) (ite (is-Found!7335 lt!325155) (= (select (arr!19728 a!3186) (index!31708 lt!325155)) k!2102) (ite (is-MissingZero!7335 lt!325155) (= (select (arr!19728 a!3186) (index!31707 lt!325155)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7335 lt!325155) (= (select (arr!19728 a!3186) (index!31710 lt!325155)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99821 (= lt!325155 e!410478)))

(declare-fun c!80625 () Bool)

(assert (=> d!99821 (= c!80625 (and (is-Intermediate!7335 lt!325156) (undefined!8147 lt!325156)))))

(assert (=> d!99821 (= lt!325156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99821 (validMask!0 mask!3328)))

(assert (=> d!99821 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!325155)))

(declare-fun b!733591 () Bool)

(assert (=> b!733591 (= e!410480 (seekKeyOrZeroReturnVacant!0 (x!62726 lt!325156) (index!31709 lt!325156) (index!31709 lt!325156) k!2102 a!3186 mask!3328))))

(declare-fun b!733592 () Bool)

(assert (=> b!733592 (= e!410478 e!410479)))

(assert (=> b!733592 (= lt!325154 (select (arr!19728 a!3186) (index!31709 lt!325156)))))

(declare-fun c!80624 () Bool)

(assert (=> b!733592 (= c!80624 (= lt!325154 k!2102))))

(assert (= (and d!99821 c!80625) b!733590))

(assert (= (and d!99821 (not c!80625)) b!733592))

(assert (= (and b!733592 c!80624) b!733587))

(assert (= (and b!733592 (not c!80624)) b!733588))

(assert (= (and b!733588 c!80623) b!733589))

(assert (= (and b!733588 (not c!80623)) b!733591))

(declare-fun m!686509 () Bool)

(assert (=> d!99821 m!686509))

(declare-fun m!686511 () Bool)

(assert (=> d!99821 m!686511))

(assert (=> d!99821 m!686509))

(declare-fun m!686513 () Bool)

(assert (=> d!99821 m!686513))

(declare-fun m!686515 () Bool)

(assert (=> d!99821 m!686515))

(declare-fun m!686517 () Bool)

(assert (=> d!99821 m!686517))

(assert (=> d!99821 m!686335))

(declare-fun m!686519 () Bool)

(assert (=> b!733591 m!686519))

(declare-fun m!686521 () Bool)

(assert (=> b!733592 m!686521))

(assert (=> b!733321 d!99821))

(declare-fun b!733647 () Bool)

(declare-fun e!410517 () Bool)

(declare-fun call!34879 () Bool)

(assert (=> b!733647 (= e!410517 call!34879)))

(declare-fun b!733648 () Bool)

(declare-fun e!410516 () Bool)

(assert (=> b!733648 (= e!410516 call!34879)))

(declare-fun b!733649 () Bool)

(assert (=> b!733649 (= e!410517 e!410516)))

(declare-fun lt!325179 () (_ BitVec 64))

(assert (=> b!733649 (= lt!325179 (select (arr!19728 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!325180 () Unit!24988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41230 (_ BitVec 64) (_ BitVec 32)) Unit!24988)

(assert (=> b!733649 (= lt!325180 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325179 #b00000000000000000000000000000000))))

(assert (=> b!733649 (arrayContainsKey!0 a!3186 lt!325179 #b00000000000000000000000000000000)))

(declare-fun lt!325181 () Unit!24988)

(assert (=> b!733649 (= lt!325181 lt!325180)))

(declare-fun res!493122 () Bool)

(assert (=> b!733649 (= res!493122 (= (seekEntryOrOpen!0 (select (arr!19728 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7335 #b00000000000000000000000000000000)))))

(assert (=> b!733649 (=> (not res!493122) (not e!410516))))

(declare-fun d!99833 () Bool)

(declare-fun res!493121 () Bool)

(declare-fun e!410518 () Bool)

(assert (=> d!99833 (=> res!493121 e!410518)))

(assert (=> d!99833 (= res!493121 (bvsge #b00000000000000000000000000000000 (size!20149 a!3186)))))

(assert (=> d!99833 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!410518)))

(declare-fun bm!34876 () Bool)

(assert (=> bm!34876 (= call!34879 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!733650 () Bool)

(assert (=> b!733650 (= e!410518 e!410517)))

(declare-fun c!80641 () Bool)

(assert (=> b!733650 (= c!80641 (validKeyInArray!0 (select (arr!19728 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99833 (not res!493121)) b!733650))

(assert (= (and b!733650 c!80641) b!733649))

(assert (= (and b!733650 (not c!80641)) b!733647))

(assert (= (and b!733649 res!493122) b!733648))

(assert (= (or b!733648 b!733647) bm!34876))

(declare-fun m!686549 () Bool)

(assert (=> b!733649 m!686549))

(declare-fun m!686551 () Bool)

(assert (=> b!733649 m!686551))

(declare-fun m!686553 () Bool)

(assert (=> b!733649 m!686553))

(assert (=> b!733649 m!686549))

(declare-fun m!686555 () Bool)

(assert (=> b!733649 m!686555))

(declare-fun m!686557 () Bool)

(assert (=> bm!34876 m!686557))

(assert (=> b!733650 m!686549))

(assert (=> b!733650 m!686549))

(declare-fun m!686559 () Bool)

(assert (=> b!733650 m!686559))

(assert (=> b!733332 d!99833))

(declare-fun b!733657 () Bool)

(declare-fun e!410523 () SeekEntryResult!7335)

(declare-fun lt!325187 () SeekEntryResult!7335)

(assert (=> b!733657 (= e!410523 (Found!7335 (index!31709 lt!325187)))))

(declare-fun b!733658 () Bool)

(declare-fun c!80645 () Bool)

(declare-fun lt!325185 () (_ BitVec 64))

(assert (=> b!733658 (= c!80645 (= lt!325185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410524 () SeekEntryResult!7335)

(assert (=> b!733658 (= e!410523 e!410524)))

(declare-fun b!733659 () Bool)

(assert (=> b!733659 (= e!410524 (MissingZero!7335 (index!31709 lt!325187)))))

(declare-fun b!733660 () Bool)

(declare-fun e!410522 () SeekEntryResult!7335)

(assert (=> b!733660 (= e!410522 Undefined!7335)))

(declare-fun d!99847 () Bool)

(declare-fun lt!325186 () SeekEntryResult!7335)

(assert (=> d!99847 (and (or (is-Undefined!7335 lt!325186) (not (is-Found!7335 lt!325186)) (and (bvsge (index!31708 lt!325186) #b00000000000000000000000000000000) (bvslt (index!31708 lt!325186) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325186) (is-Found!7335 lt!325186) (not (is-MissingZero!7335 lt!325186)) (and (bvsge (index!31707 lt!325186) #b00000000000000000000000000000000) (bvslt (index!31707 lt!325186) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325186) (is-Found!7335 lt!325186) (is-MissingZero!7335 lt!325186) (not (is-MissingVacant!7335 lt!325186)) (and (bvsge (index!31710 lt!325186) #b00000000000000000000000000000000) (bvslt (index!31710 lt!325186) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325186) (ite (is-Found!7335 lt!325186) (= (select (arr!19728 a!3186) (index!31708 lt!325186)) (select (arr!19728 a!3186) j!159)) (ite (is-MissingZero!7335 lt!325186) (= (select (arr!19728 a!3186) (index!31707 lt!325186)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7335 lt!325186) (= (select (arr!19728 a!3186) (index!31710 lt!325186)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99847 (= lt!325186 e!410522)))

(declare-fun c!80647 () Bool)

(assert (=> d!99847 (= c!80647 (and (is-Intermediate!7335 lt!325187) (undefined!8147 lt!325187)))))

(assert (=> d!99847 (= lt!325187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19728 a!3186) j!159) mask!3328) (select (arr!19728 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99847 (validMask!0 mask!3328)))

(assert (=> d!99847 (= (seekEntryOrOpen!0 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) lt!325186)))

(declare-fun b!733661 () Bool)

(assert (=> b!733661 (= e!410524 (seekKeyOrZeroReturnVacant!0 (x!62726 lt!325187) (index!31709 lt!325187) (index!31709 lt!325187) (select (arr!19728 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733662 () Bool)

(assert (=> b!733662 (= e!410522 e!410523)))

(assert (=> b!733662 (= lt!325185 (select (arr!19728 a!3186) (index!31709 lt!325187)))))

(declare-fun c!80646 () Bool)

(assert (=> b!733662 (= c!80646 (= lt!325185 (select (arr!19728 a!3186) j!159)))))

(assert (= (and d!99847 c!80647) b!733660))

(assert (= (and d!99847 (not c!80647)) b!733662))

(assert (= (and b!733662 c!80646) b!733657))

(assert (= (and b!733662 (not c!80646)) b!733658))

(assert (= (and b!733658 c!80645) b!733659))

(assert (= (and b!733658 (not c!80645)) b!733661))

(assert (=> d!99847 m!686305))

(assert (=> d!99847 m!686313))

(declare-fun m!686571 () Bool)

(assert (=> d!99847 m!686571))

(assert (=> d!99847 m!686313))

(assert (=> d!99847 m!686305))

(assert (=> d!99847 m!686315))

(declare-fun m!686573 () Bool)

(assert (=> d!99847 m!686573))

(declare-fun m!686575 () Bool)

(assert (=> d!99847 m!686575))

(assert (=> d!99847 m!686335))

(assert (=> b!733661 m!686305))

(declare-fun m!686577 () Bool)

(assert (=> b!733661 m!686577))

(declare-fun m!686579 () Bool)

(assert (=> b!733662 m!686579))

(assert (=> b!733322 d!99847))

(declare-fun d!99851 () Bool)

(assert (=> d!99851 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64966 d!99851))

(declare-fun d!99863 () Bool)

(assert (=> d!99863 (= (array_inv!15502 a!3186) (bvsge (size!20149 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64966 d!99863))

(declare-fun d!99865 () Bool)

(declare-fun lt!325210 () (_ BitVec 32))

(assert (=> d!99865 (and (bvsge lt!325210 #b00000000000000000000000000000000) (bvslt lt!325210 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99865 (= lt!325210 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99865 (validMask!0 mask!3328)))

(assert (=> d!99865 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!325210)))

(declare-fun bs!20968 () Bool)

(assert (= bs!20968 d!99865))

(declare-fun m!686621 () Bool)

(assert (=> bs!20968 m!686621))

(assert (=> bs!20968 m!686335))

(assert (=> b!733334 d!99865))

(declare-fun d!99875 () Bool)

(declare-fun res!493140 () Bool)

(declare-fun e!410555 () Bool)

(assert (=> d!99875 (=> res!493140 e!410555)))

(assert (=> d!99875 (= res!493140 (= (select (arr!19728 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99875 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!410555)))

(declare-fun b!733715 () Bool)

(declare-fun e!410556 () Bool)

(assert (=> b!733715 (= e!410555 e!410556)))

(declare-fun res!493141 () Bool)

(assert (=> b!733715 (=> (not res!493141) (not e!410556))))

(assert (=> b!733715 (= res!493141 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20149 a!3186)))))

(declare-fun b!733716 () Bool)

(assert (=> b!733716 (= e!410556 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99875 (not res!493140)) b!733715))

(assert (= (and b!733715 res!493141) b!733716))

(assert (=> d!99875 m!686549))

(declare-fun m!686623 () Bool)

(assert (=> b!733716 m!686623))

(assert (=> b!733324 d!99875))

(declare-fun b!733747 () Bool)

(declare-fun e!410574 () SeekEntryResult!7335)

(assert (=> b!733747 (= e!410574 (MissingVacant!7335 resIntermediateIndex!5))))

(declare-fun b!733748 () Bool)

(assert (=> b!733748 (= e!410574 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19728 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733749 () Bool)

(declare-fun e!410573 () SeekEntryResult!7335)

(declare-fun e!410572 () SeekEntryResult!7335)

(assert (=> b!733749 (= e!410573 e!410572)))

(declare-fun lt!325224 () (_ BitVec 64))

(declare-fun c!80682 () Bool)

(assert (=> b!733749 (= c!80682 (= lt!325224 (select (arr!19728 a!3186) j!159)))))

(declare-fun b!733751 () Bool)

(assert (=> b!733751 (= e!410573 Undefined!7335)))

(declare-fun b!733752 () Bool)

(assert (=> b!733752 (= e!410572 (Found!7335 index!1321))))

(declare-fun b!733750 () Bool)

(declare-fun c!80681 () Bool)

(assert (=> b!733750 (= c!80681 (= lt!325224 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733750 (= e!410572 e!410574)))

(declare-fun lt!325225 () SeekEntryResult!7335)

(declare-fun d!99877 () Bool)

(assert (=> d!99877 (and (or (is-Undefined!7335 lt!325225) (not (is-Found!7335 lt!325225)) (and (bvsge (index!31708 lt!325225) #b00000000000000000000000000000000) (bvslt (index!31708 lt!325225) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325225) (is-Found!7335 lt!325225) (not (is-MissingVacant!7335 lt!325225)) (not (= (index!31710 lt!325225) resIntermediateIndex!5)) (and (bvsge (index!31710 lt!325225) #b00000000000000000000000000000000) (bvslt (index!31710 lt!325225) (size!20149 a!3186)))) (or (is-Undefined!7335 lt!325225) (ite (is-Found!7335 lt!325225) (= (select (arr!19728 a!3186) (index!31708 lt!325225)) (select (arr!19728 a!3186) j!159)) (and (is-MissingVacant!7335 lt!325225) (= (index!31710 lt!325225) resIntermediateIndex!5) (= (select (arr!19728 a!3186) (index!31710 lt!325225)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99877 (= lt!325225 e!410573)))

(declare-fun c!80683 () Bool)

(assert (=> d!99877 (= c!80683 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99877 (= lt!325224 (select (arr!19728 a!3186) index!1321))))

(assert (=> d!99877 (validMask!0 mask!3328)))

(assert (=> d!99877 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) lt!325225)))

(assert (= (and d!99877 c!80683) b!733751))

(assert (= (and d!99877 (not c!80683)) b!733749))

(assert (= (and b!733749 c!80682) b!733752))

(assert (= (and b!733749 (not c!80682)) b!733750))

(assert (= (and b!733750 c!80681) b!733747))

(assert (= (and b!733750 (not c!80681)) b!733748))

(assert (=> b!733748 m!686339))

(assert (=> b!733748 m!686339))

(assert (=> b!733748 m!686305))

(declare-fun m!686639 () Bool)

(assert (=> b!733748 m!686639))

(declare-fun m!686641 () Bool)

(assert (=> d!99877 m!686641))

(declare-fun m!686643 () Bool)

(assert (=> d!99877 m!686643))

(declare-fun m!686645 () Bool)

(assert (=> d!99877 m!686645))

(assert (=> d!99877 m!686335))

(assert (=> b!733325 d!99877))

(declare-fun b!733789 () Bool)

(declare-fun lt!325246 () SeekEntryResult!7335)

(assert (=> b!733789 (and (bvsge (index!31709 lt!325246) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325246) (size!20149 lt!325039)))))

(declare-fun res!493161 () Bool)

(assert (=> b!733789 (= res!493161 (= (select (arr!19728 lt!325039) (index!31709 lt!325246)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410600 () Bool)

(assert (=> b!733789 (=> res!493161 e!410600)))

(declare-fun b!733790 () Bool)

(declare-fun e!410604 () Bool)

(assert (=> b!733790 (= e!410604 (bvsge (x!62726 lt!325246) #b01111111111111111111111111111110))))

(declare-fun e!410602 () SeekEntryResult!7335)

(declare-fun b!733791 () Bool)

(assert (=> b!733791 (= e!410602 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!325043 lt!325039 mask!3328))))

(declare-fun b!733792 () Bool)

(assert (=> b!733792 (= e!410602 (Intermediate!7335 false index!1321 x!1131))))

(declare-fun b!733793 () Bool)

(declare-fun e!410601 () Bool)

(assert (=> b!733793 (= e!410604 e!410601)))

(declare-fun res!493160 () Bool)

(assert (=> b!733793 (= res!493160 (and (is-Intermediate!7335 lt!325246) (not (undefined!8147 lt!325246)) (bvslt (x!62726 lt!325246) #b01111111111111111111111111111110) (bvsge (x!62726 lt!325246) #b00000000000000000000000000000000) (bvsge (x!62726 lt!325246) x!1131)))))

(assert (=> b!733793 (=> (not res!493160) (not e!410601))))

(declare-fun b!733794 () Bool)

(declare-fun e!410603 () SeekEntryResult!7335)

(assert (=> b!733794 (= e!410603 e!410602)))

(declare-fun c!80695 () Bool)

(declare-fun lt!325245 () (_ BitVec 64))

(assert (=> b!733794 (= c!80695 (or (= lt!325245 lt!325043) (= (bvadd lt!325245 lt!325245) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733795 () Bool)

(assert (=> b!733795 (= e!410603 (Intermediate!7335 true index!1321 x!1131))))

(declare-fun b!733796 () Bool)

(assert (=> b!733796 (and (bvsge (index!31709 lt!325246) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325246) (size!20149 lt!325039)))))

(assert (=> b!733796 (= e!410600 (= (select (arr!19728 lt!325039) (index!31709 lt!325246)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733797 () Bool)

(assert (=> b!733797 (and (bvsge (index!31709 lt!325246) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325246) (size!20149 lt!325039)))))

(declare-fun res!493162 () Bool)

(assert (=> b!733797 (= res!493162 (= (select (arr!19728 lt!325039) (index!31709 lt!325246)) lt!325043))))

(assert (=> b!733797 (=> res!493162 e!410600)))

(assert (=> b!733797 (= e!410601 e!410600)))

(declare-fun d!99881 () Bool)

(assert (=> d!99881 e!410604))

(declare-fun c!80693 () Bool)

(assert (=> d!99881 (= c!80693 (and (is-Intermediate!7335 lt!325246) (undefined!8147 lt!325246)))))

(assert (=> d!99881 (= lt!325246 e!410603)))

(declare-fun c!80694 () Bool)

(assert (=> d!99881 (= c!80694 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99881 (= lt!325245 (select (arr!19728 lt!325039) index!1321))))

(assert (=> d!99881 (validMask!0 mask!3328)))

(assert (=> d!99881 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325043 lt!325039 mask!3328) lt!325246)))

(assert (= (and d!99881 c!80694) b!733795))

(assert (= (and d!99881 (not c!80694)) b!733794))

(assert (= (and b!733794 c!80695) b!733792))

(assert (= (and b!733794 (not c!80695)) b!733791))

(assert (= (and d!99881 c!80693) b!733790))

(assert (= (and d!99881 (not c!80693)) b!733793))

(assert (= (and b!733793 res!493160) b!733797))

(assert (= (and b!733797 (not res!493162)) b!733789))

(assert (= (and b!733789 (not res!493161)) b!733796))

(assert (=> b!733791 m!686339))

(assert (=> b!733791 m!686339))

(declare-fun m!686661 () Bool)

(assert (=> b!733791 m!686661))

(declare-fun m!686663 () Bool)

(assert (=> d!99881 m!686663))

(assert (=> d!99881 m!686335))

(declare-fun m!686665 () Bool)

(assert (=> b!733789 m!686665))

(assert (=> b!733797 m!686665))

(assert (=> b!733796 m!686665))

(assert (=> b!733336 d!99881))

(declare-fun b!733798 () Bool)

(declare-fun lt!325248 () SeekEntryResult!7335)

(assert (=> b!733798 (and (bvsge (index!31709 lt!325248) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325248) (size!20149 lt!325039)))))

(declare-fun res!493164 () Bool)

(assert (=> b!733798 (= res!493164 (= (select (arr!19728 lt!325039) (index!31709 lt!325248)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410605 () Bool)

(assert (=> b!733798 (=> res!493164 e!410605)))

(declare-fun b!733799 () Bool)

(declare-fun e!410609 () Bool)

(assert (=> b!733799 (= e!410609 (bvsge (x!62726 lt!325248) #b01111111111111111111111111111110))))

(declare-fun e!410607 () SeekEntryResult!7335)

(declare-fun b!733800 () Bool)

(assert (=> b!733800 (= e!410607 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!325043 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!325043 lt!325039 mask!3328))))

(declare-fun b!733801 () Bool)

(assert (=> b!733801 (= e!410607 (Intermediate!7335 false (toIndex!0 lt!325043 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733802 () Bool)

(declare-fun e!410606 () Bool)

(assert (=> b!733802 (= e!410609 e!410606)))

(declare-fun res!493163 () Bool)

(assert (=> b!733802 (= res!493163 (and (is-Intermediate!7335 lt!325248) (not (undefined!8147 lt!325248)) (bvslt (x!62726 lt!325248) #b01111111111111111111111111111110) (bvsge (x!62726 lt!325248) #b00000000000000000000000000000000) (bvsge (x!62726 lt!325248) #b00000000000000000000000000000000)))))

(assert (=> b!733802 (=> (not res!493163) (not e!410606))))

(declare-fun b!733803 () Bool)

(declare-fun e!410608 () SeekEntryResult!7335)

(assert (=> b!733803 (= e!410608 e!410607)))

(declare-fun c!80698 () Bool)

(declare-fun lt!325247 () (_ BitVec 64))

(assert (=> b!733803 (= c!80698 (or (= lt!325247 lt!325043) (= (bvadd lt!325247 lt!325247) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733804 () Bool)

(assert (=> b!733804 (= e!410608 (Intermediate!7335 true (toIndex!0 lt!325043 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733805 () Bool)

(assert (=> b!733805 (and (bvsge (index!31709 lt!325248) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325248) (size!20149 lt!325039)))))

(assert (=> b!733805 (= e!410605 (= (select (arr!19728 lt!325039) (index!31709 lt!325248)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733806 () Bool)

(assert (=> b!733806 (and (bvsge (index!31709 lt!325248) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325248) (size!20149 lt!325039)))))

(declare-fun res!493165 () Bool)

(assert (=> b!733806 (= res!493165 (= (select (arr!19728 lt!325039) (index!31709 lt!325248)) lt!325043))))

(assert (=> b!733806 (=> res!493165 e!410605)))

(assert (=> b!733806 (= e!410606 e!410605)))

(declare-fun d!99893 () Bool)

(assert (=> d!99893 e!410609))

(declare-fun c!80696 () Bool)

(assert (=> d!99893 (= c!80696 (and (is-Intermediate!7335 lt!325248) (undefined!8147 lt!325248)))))

(assert (=> d!99893 (= lt!325248 e!410608)))

(declare-fun c!80697 () Bool)

(assert (=> d!99893 (= c!80697 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99893 (= lt!325247 (select (arr!19728 lt!325039) (toIndex!0 lt!325043 mask!3328)))))

(assert (=> d!99893 (validMask!0 mask!3328)))

(assert (=> d!99893 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325043 mask!3328) lt!325043 lt!325039 mask!3328) lt!325248)))

(assert (= (and d!99893 c!80697) b!733804))

(assert (= (and d!99893 (not c!80697)) b!733803))

(assert (= (and b!733803 c!80698) b!733801))

(assert (= (and b!733803 (not c!80698)) b!733800))

(assert (= (and d!99893 c!80696) b!733799))

(assert (= (and d!99893 (not c!80696)) b!733802))

(assert (= (and b!733802 res!493163) b!733806))

(assert (= (and b!733806 (not res!493165)) b!733798))

(assert (= (and b!733798 (not res!493164)) b!733805))

(assert (=> b!733800 m!686323))

(declare-fun m!686667 () Bool)

(assert (=> b!733800 m!686667))

(assert (=> b!733800 m!686667))

(declare-fun m!686669 () Bool)

(assert (=> b!733800 m!686669))

(assert (=> d!99893 m!686323))

(declare-fun m!686671 () Bool)

(assert (=> d!99893 m!686671))

(assert (=> d!99893 m!686335))

(declare-fun m!686673 () Bool)

(assert (=> b!733798 m!686673))

(assert (=> b!733806 m!686673))

(assert (=> b!733805 m!686673))

(assert (=> b!733336 d!99893))

(declare-fun d!99895 () Bool)

(declare-fun lt!325254 () (_ BitVec 32))

(declare-fun lt!325253 () (_ BitVec 32))

(assert (=> d!99895 (= lt!325254 (bvmul (bvxor lt!325253 (bvlshr lt!325253 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99895 (= lt!325253 ((_ extract 31 0) (bvand (bvxor lt!325043 (bvlshr lt!325043 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99895 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493166 (let ((h!14850 ((_ extract 31 0) (bvand (bvxor lt!325043 (bvlshr lt!325043 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62740 (bvmul (bvxor h!14850 (bvlshr h!14850 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62740 (bvlshr x!62740 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493166 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493166 #b00000000000000000000000000000000))))))

(assert (=> d!99895 (= (toIndex!0 lt!325043 mask!3328) (bvand (bvxor lt!325254 (bvlshr lt!325254 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733336 d!99895))

(declare-fun b!733817 () Bool)

(declare-fun lt!325256 () SeekEntryResult!7335)

(assert (=> b!733817 (and (bvsge (index!31709 lt!325256) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325256) (size!20149 a!3186)))))

(declare-fun res!493174 () Bool)

(assert (=> b!733817 (= res!493174 (= (select (arr!19728 a!3186) (index!31709 lt!325256)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410618 () Bool)

(assert (=> b!733817 (=> res!493174 e!410618)))

(declare-fun b!733818 () Bool)

(declare-fun e!410622 () Bool)

(assert (=> b!733818 (= e!410622 (bvsge (x!62726 lt!325256) #b01111111111111111111111111111110))))

(declare-fun b!733819 () Bool)

(declare-fun e!410620 () SeekEntryResult!7335)

(assert (=> b!733819 (= e!410620 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19728 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733820 () Bool)

(assert (=> b!733820 (= e!410620 (Intermediate!7335 false index!1321 x!1131))))

(declare-fun b!733821 () Bool)

(declare-fun e!410619 () Bool)

(assert (=> b!733821 (= e!410622 e!410619)))

(declare-fun res!493173 () Bool)

(assert (=> b!733821 (= res!493173 (and (is-Intermediate!7335 lt!325256) (not (undefined!8147 lt!325256)) (bvslt (x!62726 lt!325256) #b01111111111111111111111111111110) (bvsge (x!62726 lt!325256) #b00000000000000000000000000000000) (bvsge (x!62726 lt!325256) x!1131)))))

(assert (=> b!733821 (=> (not res!493173) (not e!410619))))

(declare-fun b!733822 () Bool)

(declare-fun e!410621 () SeekEntryResult!7335)

(assert (=> b!733822 (= e!410621 e!410620)))

(declare-fun c!80703 () Bool)

(declare-fun lt!325255 () (_ BitVec 64))

(assert (=> b!733822 (= c!80703 (or (= lt!325255 (select (arr!19728 a!3186) j!159)) (= (bvadd lt!325255 lt!325255) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733823 () Bool)

(assert (=> b!733823 (= e!410621 (Intermediate!7335 true index!1321 x!1131))))

(declare-fun b!733824 () Bool)

(assert (=> b!733824 (and (bvsge (index!31709 lt!325256) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325256) (size!20149 a!3186)))))

(assert (=> b!733824 (= e!410618 (= (select (arr!19728 a!3186) (index!31709 lt!325256)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733825 () Bool)

(assert (=> b!733825 (and (bvsge (index!31709 lt!325256) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325256) (size!20149 a!3186)))))

(declare-fun res!493175 () Bool)

(assert (=> b!733825 (= res!493175 (= (select (arr!19728 a!3186) (index!31709 lt!325256)) (select (arr!19728 a!3186) j!159)))))

(assert (=> b!733825 (=> res!493175 e!410618)))

(assert (=> b!733825 (= e!410619 e!410618)))

(declare-fun d!99901 () Bool)

(assert (=> d!99901 e!410622))

(declare-fun c!80701 () Bool)

(assert (=> d!99901 (= c!80701 (and (is-Intermediate!7335 lt!325256) (undefined!8147 lt!325256)))))

(assert (=> d!99901 (= lt!325256 e!410621)))

(declare-fun c!80702 () Bool)

(assert (=> d!99901 (= c!80702 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99901 (= lt!325255 (select (arr!19728 a!3186) index!1321))))

(assert (=> d!99901 (validMask!0 mask!3328)))

(assert (=> d!99901 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19728 a!3186) j!159) a!3186 mask!3328) lt!325256)))

(assert (= (and d!99901 c!80702) b!733823))

(assert (= (and d!99901 (not c!80702)) b!733822))

(assert (= (and b!733822 c!80703) b!733820))

(assert (= (and b!733822 (not c!80703)) b!733819))

(assert (= (and d!99901 c!80701) b!733818))

(assert (= (and d!99901 (not c!80701)) b!733821))

(assert (= (and b!733821 res!493173) b!733825))

(assert (= (and b!733825 (not res!493175)) b!733817))

(assert (= (and b!733817 (not res!493174)) b!733824))

(assert (=> b!733819 m!686339))

(assert (=> b!733819 m!686339))

(assert (=> b!733819 m!686305))

(declare-fun m!686675 () Bool)

(assert (=> b!733819 m!686675))

(assert (=> d!99901 m!686645))

(assert (=> d!99901 m!686335))

(declare-fun m!686677 () Bool)

(assert (=> b!733817 m!686677))

(assert (=> b!733825 m!686677))

(assert (=> b!733824 m!686677))

(assert (=> b!733326 d!99901))

(declare-fun b!733826 () Bool)

(declare-fun lt!325258 () SeekEntryResult!7335)

(assert (=> b!733826 (and (bvsge (index!31709 lt!325258) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325258) (size!20149 a!3186)))))

(declare-fun res!493177 () Bool)

(assert (=> b!733826 (= res!493177 (= (select (arr!19728 a!3186) (index!31709 lt!325258)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410623 () Bool)

(assert (=> b!733826 (=> res!493177 e!410623)))

(declare-fun b!733827 () Bool)

(declare-fun e!410627 () Bool)

(assert (=> b!733827 (= e!410627 (bvsge (x!62726 lt!325258) #b01111111111111111111111111111110))))

(declare-fun e!410625 () SeekEntryResult!7335)

(declare-fun b!733828 () Bool)

(assert (=> b!733828 (= e!410625 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19728 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19728 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733829 () Bool)

(assert (=> b!733829 (= e!410625 (Intermediate!7335 false (toIndex!0 (select (arr!19728 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733830 () Bool)

(declare-fun e!410624 () Bool)

(assert (=> b!733830 (= e!410627 e!410624)))

(declare-fun res!493176 () Bool)

(assert (=> b!733830 (= res!493176 (and (is-Intermediate!7335 lt!325258) (not (undefined!8147 lt!325258)) (bvslt (x!62726 lt!325258) #b01111111111111111111111111111110) (bvsge (x!62726 lt!325258) #b00000000000000000000000000000000) (bvsge (x!62726 lt!325258) #b00000000000000000000000000000000)))))

(assert (=> b!733830 (=> (not res!493176) (not e!410624))))

(declare-fun b!733831 () Bool)

(declare-fun e!410626 () SeekEntryResult!7335)

(assert (=> b!733831 (= e!410626 e!410625)))

(declare-fun lt!325257 () (_ BitVec 64))

(declare-fun c!80706 () Bool)

(assert (=> b!733831 (= c!80706 (or (= lt!325257 (select (arr!19728 a!3186) j!159)) (= (bvadd lt!325257 lt!325257) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733832 () Bool)

(assert (=> b!733832 (= e!410626 (Intermediate!7335 true (toIndex!0 (select (arr!19728 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733833 () Bool)

(assert (=> b!733833 (and (bvsge (index!31709 lt!325258) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325258) (size!20149 a!3186)))))

(assert (=> b!733833 (= e!410623 (= (select (arr!19728 a!3186) (index!31709 lt!325258)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733834 () Bool)

(assert (=> b!733834 (and (bvsge (index!31709 lt!325258) #b00000000000000000000000000000000) (bvslt (index!31709 lt!325258) (size!20149 a!3186)))))

(declare-fun res!493178 () Bool)

(assert (=> b!733834 (= res!493178 (= (select (arr!19728 a!3186) (index!31709 lt!325258)) (select (arr!19728 a!3186) j!159)))))

(assert (=> b!733834 (=> res!493178 e!410623)))

(assert (=> b!733834 (= e!410624 e!410623)))

(declare-fun d!99903 () Bool)

(assert (=> d!99903 e!410627))

