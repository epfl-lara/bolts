; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66506 () Bool)

(assert start!66506)

(declare-fun b!766268 () Bool)

(declare-fun e!426730 () Bool)

(declare-fun e!426727 () Bool)

(assert (=> b!766268 (= e!426730 e!426727)))

(declare-fun res!518572 () Bool)

(assert (=> b!766268 (=> res!518572 e!426727)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!766268 (= res!518572 (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!340890 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766268 (= lt!340890 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766269 () Bool)

(declare-fun res!518580 () Bool)

(declare-fun e!426733 () Bool)

(assert (=> b!766269 (=> (not res!518580) (not e!426733))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766269 (= res!518580 (validKeyInArray!0 k!2102))))

(declare-fun b!766270 () Bool)

(declare-fun e!426732 () Bool)

(assert (=> b!766270 (= e!426733 e!426732)))

(declare-fun res!518567 () Bool)

(assert (=> b!766270 (=> (not res!518567) (not e!426732))))

(declare-datatypes ((SeekEntryResult!7827 0))(
  ( (MissingZero!7827 (index!33675 (_ BitVec 32))) (Found!7827 (index!33676 (_ BitVec 32))) (Intermediate!7827 (undefined!8639 Bool) (index!33677 (_ BitVec 32)) (x!64610 (_ BitVec 32))) (Undefined!7827) (MissingVacant!7827 (index!33678 (_ BitVec 32))) )
))
(declare-fun lt!340885 () SeekEntryResult!7827)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766270 (= res!518567 (or (= lt!340885 (MissingZero!7827 i!1173)) (= lt!340885 (MissingVacant!7827 i!1173))))))

(declare-datatypes ((array!42238 0))(
  ( (array!42239 (arr!20220 (Array (_ BitVec 32) (_ BitVec 64))) (size!20641 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42238)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42238 (_ BitVec 32)) SeekEntryResult!7827)

(assert (=> b!766270 (= lt!340885 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!766271 () Bool)

(declare-fun res!518571 () Bool)

(assert (=> b!766271 (=> (not res!518571) (not e!426733))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!766271 (= res!518571 (and (= (size!20641 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20641 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20641 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766272 () Bool)

(declare-fun res!518576 () Bool)

(assert (=> b!766272 (=> (not res!518576) (not e!426732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42238 (_ BitVec 32)) Bool)

(assert (=> b!766272 (= res!518576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!426729 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!340889 () SeekEntryResult!7827)

(declare-fun b!766273 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42238 (_ BitVec 32)) SeekEntryResult!7827)

(assert (=> b!766273 (= e!426729 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!340889))))

(declare-fun b!766274 () Bool)

(declare-fun res!518569 () Bool)

(assert (=> b!766274 (=> (not res!518569) (not e!426732))))

(declare-datatypes ((List!14275 0))(
  ( (Nil!14272) (Cons!14271 (h!15361 (_ BitVec 64)) (t!20598 List!14275)) )
))
(declare-fun arrayNoDuplicates!0 (array!42238 (_ BitVec 32) List!14275) Bool)

(assert (=> b!766274 (= res!518569 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14272))))

(declare-fun b!766275 () Bool)

(declare-fun e!426728 () Bool)

(declare-fun lt!340884 () SeekEntryResult!7827)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42238 (_ BitVec 32)) SeekEntryResult!7827)

(assert (=> b!766275 (= e!426728 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!340884))))

(declare-fun b!766276 () Bool)

(assert (=> b!766276 (= e!426728 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) (Found!7827 j!159)))))

(declare-fun b!766277 () Bool)

(declare-fun e!426734 () Bool)

(assert (=> b!766277 (= e!426734 e!426729)))

(declare-fun res!518582 () Bool)

(assert (=> b!766277 (=> (not res!518582) (not e!426729))))

(assert (=> b!766277 (= res!518582 (= (seekEntryOrOpen!0 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!340889))))

(assert (=> b!766277 (= lt!340889 (Found!7827 j!159))))

(declare-fun b!766278 () Bool)

(assert (=> b!766278 (= e!426727 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!340890 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!340884))))

(declare-fun b!766280 () Bool)

(declare-fun e!426725 () Bool)

(declare-fun e!426726 () Bool)

(assert (=> b!766280 (= e!426725 e!426726)))

(declare-fun res!518581 () Bool)

(assert (=> b!766280 (=> (not res!518581) (not e!426726))))

(declare-fun lt!340883 () SeekEntryResult!7827)

(declare-fun lt!340886 () SeekEntryResult!7827)

(assert (=> b!766280 (= res!518581 (= lt!340883 lt!340886))))

(declare-fun lt!340887 () array!42238)

(declare-fun lt!340888 () (_ BitVec 64))

(assert (=> b!766280 (= lt!340886 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340888 lt!340887 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766280 (= lt!340883 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340888 mask!3328) lt!340888 lt!340887 mask!3328))))

(assert (=> b!766280 (= lt!340888 (select (store (arr!20220 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!766280 (= lt!340887 (array!42239 (store (arr!20220 a!3186) i!1173 k!2102) (size!20641 a!3186)))))

(declare-fun b!766281 () Bool)

(declare-fun res!518583 () Bool)

(assert (=> b!766281 (=> (not res!518583) (not e!426733))))

(assert (=> b!766281 (= res!518583 (validKeyInArray!0 (select (arr!20220 a!3186) j!159)))))

(declare-fun b!766282 () Bool)

(declare-fun res!518578 () Bool)

(assert (=> b!766282 (=> (not res!518578) (not e!426732))))

(assert (=> b!766282 (= res!518578 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20641 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20641 a!3186))))))

(declare-fun b!766283 () Bool)

(declare-fun res!518573 () Bool)

(assert (=> b!766283 (=> (not res!518573) (not e!426725))))

(assert (=> b!766283 (= res!518573 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20220 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766284 () Bool)

(assert (=> b!766284 (= e!426726 (not e!426730))))

(declare-fun res!518574 () Bool)

(assert (=> b!766284 (=> res!518574 e!426730)))

(assert (=> b!766284 (= res!518574 (or (not (is-Intermediate!7827 lt!340886)) (bvsge x!1131 (x!64610 lt!340886))))))

(assert (=> b!766284 e!426734))

(declare-fun res!518570 () Bool)

(assert (=> b!766284 (=> (not res!518570) (not e!426734))))

(assert (=> b!766284 (= res!518570 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26380 0))(
  ( (Unit!26381) )
))
(declare-fun lt!340891 () Unit!26380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42238 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26380)

(assert (=> b!766284 (= lt!340891 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766285 () Bool)

(declare-fun res!518575 () Bool)

(assert (=> b!766285 (=> (not res!518575) (not e!426733))))

(declare-fun arrayContainsKey!0 (array!42238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766285 (= res!518575 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766286 () Bool)

(declare-fun res!518577 () Bool)

(assert (=> b!766286 (=> (not res!518577) (not e!426725))))

(assert (=> b!766286 (= res!518577 e!426728)))

(declare-fun c!84240 () Bool)

(assert (=> b!766286 (= c!84240 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!518568 () Bool)

(assert (=> start!66506 (=> (not res!518568) (not e!426733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66506 (= res!518568 (validMask!0 mask!3328))))

(assert (=> start!66506 e!426733))

(assert (=> start!66506 true))

(declare-fun array_inv!15994 (array!42238) Bool)

(assert (=> start!66506 (array_inv!15994 a!3186)))

(declare-fun b!766279 () Bool)

(assert (=> b!766279 (= e!426732 e!426725)))

(declare-fun res!518579 () Bool)

(assert (=> b!766279 (=> (not res!518579) (not e!426725))))

(assert (=> b!766279 (= res!518579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328) (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!340884))))

(assert (=> b!766279 (= lt!340884 (Intermediate!7827 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66506 res!518568) b!766271))

(assert (= (and b!766271 res!518571) b!766281))

(assert (= (and b!766281 res!518583) b!766269))

(assert (= (and b!766269 res!518580) b!766285))

(assert (= (and b!766285 res!518575) b!766270))

(assert (= (and b!766270 res!518567) b!766272))

(assert (= (and b!766272 res!518576) b!766274))

(assert (= (and b!766274 res!518569) b!766282))

(assert (= (and b!766282 res!518578) b!766279))

(assert (= (and b!766279 res!518579) b!766283))

(assert (= (and b!766283 res!518573) b!766286))

(assert (= (and b!766286 c!84240) b!766275))

(assert (= (and b!766286 (not c!84240)) b!766276))

(assert (= (and b!766286 res!518577) b!766280))

(assert (= (and b!766280 res!518581) b!766284))

(assert (= (and b!766284 res!518570) b!766277))

(assert (= (and b!766277 res!518582) b!766273))

(assert (= (and b!766284 (not res!518574)) b!766268))

(assert (= (and b!766268 (not res!518572)) b!766278))

(declare-fun m!712337 () Bool)

(assert (=> b!766281 m!712337))

(assert (=> b!766281 m!712337))

(declare-fun m!712339 () Bool)

(assert (=> b!766281 m!712339))

(declare-fun m!712341 () Bool)

(assert (=> start!66506 m!712341))

(declare-fun m!712343 () Bool)

(assert (=> start!66506 m!712343))

(declare-fun m!712345 () Bool)

(assert (=> b!766280 m!712345))

(assert (=> b!766280 m!712345))

(declare-fun m!712347 () Bool)

(assert (=> b!766280 m!712347))

(declare-fun m!712349 () Bool)

(assert (=> b!766280 m!712349))

(declare-fun m!712351 () Bool)

(assert (=> b!766280 m!712351))

(declare-fun m!712353 () Bool)

(assert (=> b!766280 m!712353))

(assert (=> b!766276 m!712337))

(assert (=> b!766276 m!712337))

(declare-fun m!712355 () Bool)

(assert (=> b!766276 m!712355))

(declare-fun m!712357 () Bool)

(assert (=> b!766274 m!712357))

(assert (=> b!766278 m!712337))

(assert (=> b!766278 m!712337))

(declare-fun m!712359 () Bool)

(assert (=> b!766278 m!712359))

(declare-fun m!712361 () Bool)

(assert (=> b!766270 m!712361))

(declare-fun m!712363 () Bool)

(assert (=> b!766269 m!712363))

(declare-fun m!712365 () Bool)

(assert (=> b!766272 m!712365))

(assert (=> b!766273 m!712337))

(assert (=> b!766273 m!712337))

(declare-fun m!712367 () Bool)

(assert (=> b!766273 m!712367))

(assert (=> b!766279 m!712337))

(assert (=> b!766279 m!712337))

(declare-fun m!712369 () Bool)

(assert (=> b!766279 m!712369))

(assert (=> b!766279 m!712369))

(assert (=> b!766279 m!712337))

(declare-fun m!712371 () Bool)

(assert (=> b!766279 m!712371))

(declare-fun m!712373 () Bool)

(assert (=> b!766283 m!712373))

(assert (=> b!766277 m!712337))

(assert (=> b!766277 m!712337))

(declare-fun m!712375 () Bool)

(assert (=> b!766277 m!712375))

(assert (=> b!766275 m!712337))

(assert (=> b!766275 m!712337))

(declare-fun m!712377 () Bool)

(assert (=> b!766275 m!712377))

(declare-fun m!712379 () Bool)

(assert (=> b!766284 m!712379))

(declare-fun m!712381 () Bool)

(assert (=> b!766284 m!712381))

(declare-fun m!712383 () Bool)

(assert (=> b!766285 m!712383))

(declare-fun m!712385 () Bool)

(assert (=> b!766268 m!712385))

(push 1)

(assert (not b!766284))

(assert (not b!766272))

(assert (not b!766275))

(assert (not b!766274))

(assert (not b!766270))

(assert (not b!766268))

(assert (not b!766279))

(assert (not b!766281))

(assert (not b!766280))

(assert (not b!766276))

(assert (not b!766277))

(assert (not b!766269))

(assert (not b!766278))

(assert (not start!66506))

(assert (not b!766273))

(assert (not b!766285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!426831 () SeekEntryResult!7827)

(declare-fun b!766465 () Bool)

(assert (=> b!766465 (= e!426831 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20220 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766466 () Bool)

(declare-fun c!84276 () Bool)

(declare-fun lt!340983 () (_ BitVec 64))

(assert (=> b!766466 (= c!84276 (= lt!340983 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426832 () SeekEntryResult!7827)

(assert (=> b!766466 (= e!426832 e!426831)))

(declare-fun b!766467 () Bool)

(declare-fun e!426833 () SeekEntryResult!7827)

(assert (=> b!766467 (= e!426833 Undefined!7827)))

(declare-fun b!766468 () Bool)

(assert (=> b!766468 (= e!426832 (Found!7827 index!1321))))

(declare-fun b!766469 () Bool)

(assert (=> b!766469 (= e!426831 (MissingVacant!7827 resIntermediateIndex!5))))

(declare-fun d!101145 () Bool)

(declare-fun lt!340984 () SeekEntryResult!7827)

(assert (=> d!101145 (and (or (is-Undefined!7827 lt!340984) (not (is-Found!7827 lt!340984)) (and (bvsge (index!33676 lt!340984) #b00000000000000000000000000000000) (bvslt (index!33676 lt!340984) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!340984) (is-Found!7827 lt!340984) (not (is-MissingVacant!7827 lt!340984)) (not (= (index!33678 lt!340984) resIntermediateIndex!5)) (and (bvsge (index!33678 lt!340984) #b00000000000000000000000000000000) (bvslt (index!33678 lt!340984) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!340984) (ite (is-Found!7827 lt!340984) (= (select (arr!20220 a!3186) (index!33676 lt!340984)) (select (arr!20220 a!3186) j!159)) (and (is-MissingVacant!7827 lt!340984) (= (index!33678 lt!340984) resIntermediateIndex!5) (= (select (arr!20220 a!3186) (index!33678 lt!340984)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101145 (= lt!340984 e!426833)))

(declare-fun c!84275 () Bool)

(assert (=> d!101145 (= c!84275 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101145 (= lt!340983 (select (arr!20220 a!3186) index!1321))))

(assert (=> d!101145 (validMask!0 mask!3328)))

(assert (=> d!101145 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!340984)))

(declare-fun b!766470 () Bool)

(assert (=> b!766470 (= e!426833 e!426832)))

(declare-fun c!84277 () Bool)

(assert (=> b!766470 (= c!84277 (= lt!340983 (select (arr!20220 a!3186) j!159)))))

(assert (= (and d!101145 c!84275) b!766467))

(assert (= (and d!101145 (not c!84275)) b!766470))

(assert (= (and b!766470 c!84277) b!766468))

(assert (= (and b!766470 (not c!84277)) b!766466))

(assert (= (and b!766466 c!84276) b!766469))

(assert (= (and b!766466 (not c!84276)) b!766465))

(assert (=> b!766465 m!712385))

(assert (=> b!766465 m!712385))

(assert (=> b!766465 m!712337))

(declare-fun m!712527 () Bool)

(assert (=> b!766465 m!712527))

(declare-fun m!712529 () Bool)

(assert (=> d!101145 m!712529))

(declare-fun m!712531 () Bool)

(assert (=> d!101145 m!712531))

(declare-fun m!712533 () Bool)

(assert (=> d!101145 m!712533))

(assert (=> d!101145 m!712341))

(assert (=> b!766276 d!101145))

(declare-fun b!766562 () Bool)

(declare-fun e!426887 () Bool)

(declare-fun e!426890 () Bool)

(assert (=> b!766562 (= e!426887 e!426890)))

(declare-fun res!518722 () Bool)

(declare-fun lt!341012 () SeekEntryResult!7827)

(assert (=> b!766562 (= res!518722 (and (is-Intermediate!7827 lt!341012) (not (undefined!8639 lt!341012)) (bvslt (x!64610 lt!341012) #b01111111111111111111111111111110) (bvsge (x!64610 lt!341012) #b00000000000000000000000000000000) (bvsge (x!64610 lt!341012) x!1131)))))

(assert (=> b!766562 (=> (not res!518722) (not e!426890))))

(declare-fun d!101157 () Bool)

(assert (=> d!101157 e!426887))

(declare-fun c!84310 () Bool)

(assert (=> d!101157 (= c!84310 (and (is-Intermediate!7827 lt!341012) (undefined!8639 lt!341012)))))

(declare-fun e!426885 () SeekEntryResult!7827)

(assert (=> d!101157 (= lt!341012 e!426885)))

(declare-fun c!84312 () Bool)

(assert (=> d!101157 (= c!84312 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341011 () (_ BitVec 64))

(assert (=> d!101157 (= lt!341011 (select (arr!20220 a!3186) index!1321))))

(assert (=> d!101157 (validMask!0 mask!3328)))

(assert (=> d!101157 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!341012)))

(declare-fun b!766563 () Bool)

(assert (=> b!766563 (= e!426887 (bvsge (x!64610 lt!341012) #b01111111111111111111111111111110))))

(declare-fun b!766564 () Bool)

(assert (=> b!766564 (and (bvsge (index!33677 lt!341012) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341012) (size!20641 a!3186)))))

(declare-fun res!518723 () Bool)

(assert (=> b!766564 (= res!518723 (= (select (arr!20220 a!3186) (index!33677 lt!341012)) (select (arr!20220 a!3186) j!159)))))

(declare-fun e!426888 () Bool)

(assert (=> b!766564 (=> res!518723 e!426888)))

(assert (=> b!766564 (= e!426890 e!426888)))

(declare-fun b!766565 () Bool)

(assert (=> b!766565 (and (bvsge (index!33677 lt!341012) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341012) (size!20641 a!3186)))))

(declare-fun res!518724 () Bool)

(assert (=> b!766565 (= res!518724 (= (select (arr!20220 a!3186) (index!33677 lt!341012)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766565 (=> res!518724 e!426888)))

(declare-fun b!766566 () Bool)

(declare-fun e!426889 () SeekEntryResult!7827)

(assert (=> b!766566 (= e!426889 (Intermediate!7827 false index!1321 x!1131))))

(declare-fun b!766567 () Bool)

(assert (=> b!766567 (and (bvsge (index!33677 lt!341012) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341012) (size!20641 a!3186)))))

(assert (=> b!766567 (= e!426888 (= (select (arr!20220 a!3186) (index!33677 lt!341012)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766568 () Bool)

(assert (=> b!766568 (= e!426889 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20220 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766569 () Bool)

(assert (=> b!766569 (= e!426885 e!426889)))

(declare-fun c!84311 () Bool)

(assert (=> b!766569 (= c!84311 (or (= lt!341011 (select (arr!20220 a!3186) j!159)) (= (bvadd lt!341011 lt!341011) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766570 () Bool)

(assert (=> b!766570 (= e!426885 (Intermediate!7827 true index!1321 x!1131))))

(assert (= (and d!101157 c!84312) b!766570))

(assert (= (and d!101157 (not c!84312)) b!766569))

(assert (= (and b!766569 c!84311) b!766566))

(assert (= (and b!766569 (not c!84311)) b!766568))

(assert (= (and d!101157 c!84310) b!766563))

(assert (= (and d!101157 (not c!84310)) b!766562))

(assert (= (and b!766562 res!518722) b!766564))

(assert (= (and b!766564 (not res!518723)) b!766565))

(assert (= (and b!766565 (not res!518724)) b!766567))

(assert (=> d!101157 m!712533))

(assert (=> d!101157 m!712341))

(declare-fun m!712565 () Bool)

(assert (=> b!766564 m!712565))

(assert (=> b!766567 m!712565))

(assert (=> b!766568 m!712385))

(assert (=> b!766568 m!712385))

(assert (=> b!766568 m!712337))

(declare-fun m!712567 () Bool)

(assert (=> b!766568 m!712567))

(assert (=> b!766565 m!712565))

(assert (=> b!766275 d!101157))

(declare-fun d!101173 () Bool)

(declare-fun lt!341055 () SeekEntryResult!7827)

(assert (=> d!101173 (and (or (is-Undefined!7827 lt!341055) (not (is-Found!7827 lt!341055)) (and (bvsge (index!33676 lt!341055) #b00000000000000000000000000000000) (bvslt (index!33676 lt!341055) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341055) (is-Found!7827 lt!341055) (not (is-MissingZero!7827 lt!341055)) (and (bvsge (index!33675 lt!341055) #b00000000000000000000000000000000) (bvslt (index!33675 lt!341055) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341055) (is-Found!7827 lt!341055) (is-MissingZero!7827 lt!341055) (not (is-MissingVacant!7827 lt!341055)) (and (bvsge (index!33678 lt!341055) #b00000000000000000000000000000000) (bvslt (index!33678 lt!341055) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341055) (ite (is-Found!7827 lt!341055) (= (select (arr!20220 a!3186) (index!33676 lt!341055)) (select (arr!20220 a!3186) j!159)) (ite (is-MissingZero!7827 lt!341055) (= (select (arr!20220 a!3186) (index!33675 lt!341055)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7827 lt!341055) (= (select (arr!20220 a!3186) (index!33678 lt!341055)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!426943 () SeekEntryResult!7827)

(assert (=> d!101173 (= lt!341055 e!426943)))

(declare-fun c!84340 () Bool)

(declare-fun lt!341056 () SeekEntryResult!7827)

(assert (=> d!101173 (= c!84340 (and (is-Intermediate!7827 lt!341056) (undefined!8639 lt!341056)))))

(assert (=> d!101173 (= lt!341056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328) (select (arr!20220 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101173 (validMask!0 mask!3328)))

(assert (=> d!101173 (= (seekEntryOrOpen!0 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!341055)))

(declare-fun b!766655 () Bool)

(declare-fun c!84341 () Bool)

(declare-fun lt!341054 () (_ BitVec 64))

(assert (=> b!766655 (= c!84341 (= lt!341054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426944 () SeekEntryResult!7827)

(declare-fun e!426942 () SeekEntryResult!7827)

(assert (=> b!766655 (= e!426944 e!426942)))

(declare-fun b!766656 () Bool)

(assert (=> b!766656 (= e!426943 e!426944)))

(assert (=> b!766656 (= lt!341054 (select (arr!20220 a!3186) (index!33677 lt!341056)))))

(declare-fun c!84339 () Bool)

(assert (=> b!766656 (= c!84339 (= lt!341054 (select (arr!20220 a!3186) j!159)))))

(declare-fun b!766657 () Bool)

(assert (=> b!766657 (= e!426942 (MissingZero!7827 (index!33677 lt!341056)))))

(declare-fun b!766658 () Bool)

(assert (=> b!766658 (= e!426943 Undefined!7827)))

(declare-fun b!766659 () Bool)

(assert (=> b!766659 (= e!426942 (seekKeyOrZeroReturnVacant!0 (x!64610 lt!341056) (index!33677 lt!341056) (index!33677 lt!341056) (select (arr!20220 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766660 () Bool)

(assert (=> b!766660 (= e!426944 (Found!7827 (index!33677 lt!341056)))))

(assert (= (and d!101173 c!84340) b!766658))

(assert (= (and d!101173 (not c!84340)) b!766656))

(assert (= (and b!766656 c!84339) b!766660))

(assert (= (and b!766656 (not c!84339)) b!766655))

(assert (= (and b!766655 c!84341) b!766657))

(assert (= (and b!766655 (not c!84341)) b!766659))

(declare-fun m!712627 () Bool)

(assert (=> d!101173 m!712627))

(declare-fun m!712629 () Bool)

(assert (=> d!101173 m!712629))

(declare-fun m!712631 () Bool)

(assert (=> d!101173 m!712631))

(assert (=> d!101173 m!712337))

(assert (=> d!101173 m!712369))

(assert (=> d!101173 m!712369))

(assert (=> d!101173 m!712337))

(assert (=> d!101173 m!712371))

(assert (=> d!101173 m!712341))

(declare-fun m!712633 () Bool)

(assert (=> b!766656 m!712633))

(assert (=> b!766659 m!712337))

(declare-fun m!712635 () Bool)

(assert (=> b!766659 m!712635))

(assert (=> b!766277 d!101173))

(declare-fun d!101199 () Bool)

(assert (=> d!101199 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66506 d!101199))

(declare-fun d!101207 () Bool)

(assert (=> d!101207 (= (array_inv!15994 a!3186) (bvsge (size!20641 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66506 d!101207))

(declare-fun b!766691 () Bool)

(declare-fun e!426963 () SeekEntryResult!7827)

(assert (=> b!766691 (= e!426963 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20220 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766692 () Bool)

(declare-fun c!84355 () Bool)

(declare-fun lt!341066 () (_ BitVec 64))

(assert (=> b!766692 (= c!84355 (= lt!341066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426964 () SeekEntryResult!7827)

(assert (=> b!766692 (= e!426964 e!426963)))

(declare-fun b!766693 () Bool)

(declare-fun e!426965 () SeekEntryResult!7827)

(assert (=> b!766693 (= e!426965 Undefined!7827)))

(declare-fun b!766694 () Bool)

(assert (=> b!766694 (= e!426964 (Found!7827 resIntermediateIndex!5))))

(declare-fun b!766695 () Bool)

(assert (=> b!766695 (= e!426963 (MissingVacant!7827 resIntermediateIndex!5))))

(declare-fun d!101209 () Bool)

(declare-fun lt!341067 () SeekEntryResult!7827)

(assert (=> d!101209 (and (or (is-Undefined!7827 lt!341067) (not (is-Found!7827 lt!341067)) (and (bvsge (index!33676 lt!341067) #b00000000000000000000000000000000) (bvslt (index!33676 lt!341067) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341067) (is-Found!7827 lt!341067) (not (is-MissingVacant!7827 lt!341067)) (not (= (index!33678 lt!341067) resIntermediateIndex!5)) (and (bvsge (index!33678 lt!341067) #b00000000000000000000000000000000) (bvslt (index!33678 lt!341067) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341067) (ite (is-Found!7827 lt!341067) (= (select (arr!20220 a!3186) (index!33676 lt!341067)) (select (arr!20220 a!3186) j!159)) (and (is-MissingVacant!7827 lt!341067) (= (index!33678 lt!341067) resIntermediateIndex!5) (= (select (arr!20220 a!3186) (index!33678 lt!341067)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101209 (= lt!341067 e!426965)))

(declare-fun c!84354 () Bool)

(assert (=> d!101209 (= c!84354 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101209 (= lt!341066 (select (arr!20220 a!3186) resIntermediateIndex!5))))

(assert (=> d!101209 (validMask!0 mask!3328)))

(assert (=> d!101209 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!341067)))

(declare-fun b!766696 () Bool)

(assert (=> b!766696 (= e!426965 e!426964)))

(declare-fun c!84356 () Bool)

(assert (=> b!766696 (= c!84356 (= lt!341066 (select (arr!20220 a!3186) j!159)))))

(assert (= (and d!101209 c!84354) b!766693))

(assert (= (and d!101209 (not c!84354)) b!766696))

(assert (= (and b!766696 c!84356) b!766694))

(assert (= (and b!766696 (not c!84356)) b!766692))

(assert (= (and b!766692 c!84355) b!766695))

(assert (= (and b!766692 (not c!84355)) b!766691))

(declare-fun m!712661 () Bool)

(assert (=> b!766691 m!712661))

(assert (=> b!766691 m!712661))

(assert (=> b!766691 m!712337))

(declare-fun m!712663 () Bool)

(assert (=> b!766691 m!712663))

(declare-fun m!712665 () Bool)

(assert (=> d!101209 m!712665))

(declare-fun m!712667 () Bool)

(assert (=> d!101209 m!712667))

(assert (=> d!101209 m!712373))

(assert (=> d!101209 m!712341))

(assert (=> b!766273 d!101209))

(declare-fun b!766705 () Bool)

(declare-fun e!426974 () Bool)

(declare-fun call!35057 () Bool)

(assert (=> b!766705 (= e!426974 call!35057)))

(declare-fun d!101211 () Bool)

(declare-fun res!518768 () Bool)

(declare-fun e!426972 () Bool)

(assert (=> d!101211 (=> res!518768 e!426972)))

(assert (=> d!101211 (= res!518768 (bvsge j!159 (size!20641 a!3186)))))

(assert (=> d!101211 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!426972)))

(declare-fun b!766706 () Bool)

(declare-fun e!426973 () Bool)

(assert (=> b!766706 (= e!426974 e!426973)))

(declare-fun lt!341074 () (_ BitVec 64))

(assert (=> b!766706 (= lt!341074 (select (arr!20220 a!3186) j!159))))

(declare-fun lt!341075 () Unit!26380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42238 (_ BitVec 64) (_ BitVec 32)) Unit!26380)

(assert (=> b!766706 (= lt!341075 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341074 j!159))))

(assert (=> b!766706 (arrayContainsKey!0 a!3186 lt!341074 #b00000000000000000000000000000000)))

(declare-fun lt!341076 () Unit!26380)

(assert (=> b!766706 (= lt!341076 lt!341075)))

(declare-fun res!518769 () Bool)

(assert (=> b!766706 (= res!518769 (= (seekEntryOrOpen!0 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) (Found!7827 j!159)))))

(assert (=> b!766706 (=> (not res!518769) (not e!426973))))

(declare-fun bm!35054 () Bool)

(assert (=> bm!35054 (= call!35057 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!766707 () Bool)

(assert (=> b!766707 (= e!426973 call!35057)))

(declare-fun b!766708 () Bool)

(assert (=> b!766708 (= e!426972 e!426974)))

(declare-fun c!84359 () Bool)

(assert (=> b!766708 (= c!84359 (validKeyInArray!0 (select (arr!20220 a!3186) j!159)))))

(assert (= (and d!101211 (not res!518768)) b!766708))

(assert (= (and b!766708 c!84359) b!766706))

(assert (= (and b!766708 (not c!84359)) b!766705))

(assert (= (and b!766706 res!518769) b!766707))

(assert (= (or b!766707 b!766705) bm!35054))

(assert (=> b!766706 m!712337))

(declare-fun m!712669 () Bool)

(assert (=> b!766706 m!712669))

(declare-fun m!712671 () Bool)

(assert (=> b!766706 m!712671))

(assert (=> b!766706 m!712337))

(assert (=> b!766706 m!712375))

(declare-fun m!712673 () Bool)

(assert (=> bm!35054 m!712673))

(assert (=> b!766708 m!712337))

(assert (=> b!766708 m!712337))

(assert (=> b!766708 m!712339))

(assert (=> b!766284 d!101211))

(declare-fun d!101213 () Bool)

(assert (=> d!101213 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341085 () Unit!26380)

(declare-fun choose!38 (array!42238 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26380)

(assert (=> d!101213 (= lt!341085 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101213 (validMask!0 mask!3328)))

(assert (=> d!101213 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341085)))

(declare-fun bs!21501 () Bool)

(assert (= bs!21501 d!101213))

(assert (=> bs!21501 m!712379))

(declare-fun m!712675 () Bool)

(assert (=> bs!21501 m!712675))

(assert (=> bs!21501 m!712341))

(assert (=> b!766284 d!101213))

(declare-fun d!101215 () Bool)

(declare-fun res!518777 () Bool)

(declare-fun e!426993 () Bool)

(assert (=> d!101215 (=> res!518777 e!426993)))

(assert (=> d!101215 (= res!518777 (= (select (arr!20220 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101215 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!426993)))

(declare-fun b!766740 () Bool)

(declare-fun e!426994 () Bool)

(assert (=> b!766740 (= e!426993 e!426994)))

(declare-fun res!518778 () Bool)

(assert (=> b!766740 (=> (not res!518778) (not e!426994))))

(assert (=> b!766740 (= res!518778 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20641 a!3186)))))

(declare-fun b!766741 () Bool)

(assert (=> b!766741 (= e!426994 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101215 (not res!518777)) b!766740))

(assert (= (and b!766740 res!518778) b!766741))

(declare-fun m!712691 () Bool)

(assert (=> d!101215 m!712691))

(declare-fun m!712693 () Bool)

(assert (=> b!766741 m!712693))

(assert (=> b!766285 d!101215))

(declare-fun b!766767 () Bool)

(declare-fun e!427017 () Bool)

(declare-fun e!427015 () Bool)

(assert (=> b!766767 (= e!427017 e!427015)))

(declare-fun res!518795 () Bool)

(assert (=> b!766767 (=> (not res!518795) (not e!427015))))

(declare-fun e!427014 () Bool)

(assert (=> b!766767 (= res!518795 (not e!427014))))

(declare-fun res!518794 () Bool)

(assert (=> b!766767 (=> (not res!518794) (not e!427014))))

(assert (=> b!766767 (= res!518794 (validKeyInArray!0 (select (arr!20220 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!766768 () Bool)

(declare-fun e!427016 () Bool)

(declare-fun call!35060 () Bool)

(assert (=> b!766768 (= e!427016 call!35060)))

(declare-fun bm!35057 () Bool)

(declare-fun c!84377 () Bool)

(assert (=> bm!35057 (= call!35060 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84377 (Cons!14271 (select (arr!20220 a!3186) #b00000000000000000000000000000000) Nil!14272) Nil!14272)))))

(declare-fun b!766769 () Bool)

(declare-fun contains!4081 (List!14275 (_ BitVec 64)) Bool)

(assert (=> b!766769 (= e!427014 (contains!4081 Nil!14272 (select (arr!20220 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!766770 () Bool)

(assert (=> b!766770 (= e!427015 e!427016)))

(assert (=> b!766770 (= c!84377 (validKeyInArray!0 (select (arr!20220 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!766771 () Bool)

(assert (=> b!766771 (= e!427016 call!35060)))

(declare-fun d!101219 () Bool)

(declare-fun res!518796 () Bool)

(assert (=> d!101219 (=> res!518796 e!427017)))

(assert (=> d!101219 (= res!518796 (bvsge #b00000000000000000000000000000000 (size!20641 a!3186)))))

(assert (=> d!101219 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14272) e!427017)))

(assert (= (and d!101219 (not res!518796)) b!766767))

(assert (= (and b!766767 res!518794) b!766769))

(assert (= (and b!766767 res!518795) b!766770))

(assert (= (and b!766770 c!84377) b!766771))

(assert (= (and b!766770 (not c!84377)) b!766768))

(assert (= (or b!766771 b!766768) bm!35057))

(assert (=> b!766767 m!712691))

(assert (=> b!766767 m!712691))

(declare-fun m!712711 () Bool)

(assert (=> b!766767 m!712711))

(assert (=> bm!35057 m!712691))

(declare-fun m!712713 () Bool)

(assert (=> bm!35057 m!712713))

(assert (=> b!766769 m!712691))

(assert (=> b!766769 m!712691))

(declare-fun m!712715 () Bool)

(assert (=> b!766769 m!712715))

(assert (=> b!766770 m!712691))

(assert (=> b!766770 m!712691))

(assert (=> b!766770 m!712711))

(assert (=> b!766274 d!101219))

(declare-fun d!101229 () Bool)

(assert (=> d!101229 (= (validKeyInArray!0 (select (arr!20220 a!3186) j!159)) (and (not (= (select (arr!20220 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20220 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!766281 d!101229))

(declare-fun d!101233 () Bool)

(declare-fun lt!341097 () SeekEntryResult!7827)

(assert (=> d!101233 (and (or (is-Undefined!7827 lt!341097) (not (is-Found!7827 lt!341097)) (and (bvsge (index!33676 lt!341097) #b00000000000000000000000000000000) (bvslt (index!33676 lt!341097) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341097) (is-Found!7827 lt!341097) (not (is-MissingZero!7827 lt!341097)) (and (bvsge (index!33675 lt!341097) #b00000000000000000000000000000000) (bvslt (index!33675 lt!341097) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341097) (is-Found!7827 lt!341097) (is-MissingZero!7827 lt!341097) (not (is-MissingVacant!7827 lt!341097)) (and (bvsge (index!33678 lt!341097) #b00000000000000000000000000000000) (bvslt (index!33678 lt!341097) (size!20641 a!3186)))) (or (is-Undefined!7827 lt!341097) (ite (is-Found!7827 lt!341097) (= (select (arr!20220 a!3186) (index!33676 lt!341097)) k!2102) (ite (is-MissingZero!7827 lt!341097) (= (select (arr!20220 a!3186) (index!33675 lt!341097)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7827 lt!341097) (= (select (arr!20220 a!3186) (index!33678 lt!341097)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!427019 () SeekEntryResult!7827)

(assert (=> d!101233 (= lt!341097 e!427019)))

(declare-fun c!84379 () Bool)

(declare-fun lt!341098 () SeekEntryResult!7827)

(assert (=> d!101233 (= c!84379 (and (is-Intermediate!7827 lt!341098) (undefined!8639 lt!341098)))))

(assert (=> d!101233 (= lt!341098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101233 (validMask!0 mask!3328)))

(assert (=> d!101233 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!341097)))

(declare-fun b!766772 () Bool)

(declare-fun c!84380 () Bool)

(declare-fun lt!341096 () (_ BitVec 64))

(assert (=> b!766772 (= c!84380 (= lt!341096 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427020 () SeekEntryResult!7827)

(declare-fun e!427018 () SeekEntryResult!7827)

(assert (=> b!766772 (= e!427020 e!427018)))

(declare-fun b!766773 () Bool)

(assert (=> b!766773 (= e!427019 e!427020)))

(assert (=> b!766773 (= lt!341096 (select (arr!20220 a!3186) (index!33677 lt!341098)))))

(declare-fun c!84378 () Bool)

(assert (=> b!766773 (= c!84378 (= lt!341096 k!2102))))

(declare-fun b!766774 () Bool)

(assert (=> b!766774 (= e!427018 (MissingZero!7827 (index!33677 lt!341098)))))

(declare-fun b!766775 () Bool)

(assert (=> b!766775 (= e!427019 Undefined!7827)))

(declare-fun b!766776 () Bool)

(assert (=> b!766776 (= e!427018 (seekKeyOrZeroReturnVacant!0 (x!64610 lt!341098) (index!33677 lt!341098) (index!33677 lt!341098) k!2102 a!3186 mask!3328))))

(declare-fun b!766777 () Bool)

(assert (=> b!766777 (= e!427020 (Found!7827 (index!33677 lt!341098)))))

(assert (= (and d!101233 c!84379) b!766775))

(assert (= (and d!101233 (not c!84379)) b!766773))

(assert (= (and b!766773 c!84378) b!766777))

(assert (= (and b!766773 (not c!84378)) b!766772))

(assert (= (and b!766772 c!84380) b!766774))

(assert (= (and b!766772 (not c!84380)) b!766776))

(declare-fun m!712719 () Bool)

(assert (=> d!101233 m!712719))

(declare-fun m!712721 () Bool)

(assert (=> d!101233 m!712721))

(declare-fun m!712723 () Bool)

(assert (=> d!101233 m!712723))

(declare-fun m!712725 () Bool)

(assert (=> d!101233 m!712725))

(assert (=> d!101233 m!712725))

(declare-fun m!712727 () Bool)

(assert (=> d!101233 m!712727))

(assert (=> d!101233 m!712341))

(declare-fun m!712729 () Bool)

(assert (=> b!766773 m!712729))

(declare-fun m!712731 () Bool)

(assert (=> b!766776 m!712731))

(assert (=> b!766270 d!101233))

(declare-fun b!766778 () Bool)

(declare-fun e!427023 () Bool)

(declare-fun call!35061 () Bool)

(assert (=> b!766778 (= e!427023 call!35061)))

(declare-fun d!101235 () Bool)

(declare-fun res!518797 () Bool)

(declare-fun e!427021 () Bool)

(assert (=> d!101235 (=> res!518797 e!427021)))

(assert (=> d!101235 (= res!518797 (bvsge #b00000000000000000000000000000000 (size!20641 a!3186)))))

(assert (=> d!101235 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!427021)))

(declare-fun b!766779 () Bool)

(declare-fun e!427022 () Bool)

(assert (=> b!766779 (= e!427023 e!427022)))

(declare-fun lt!341099 () (_ BitVec 64))

(assert (=> b!766779 (= lt!341099 (select (arr!20220 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341100 () Unit!26380)

(assert (=> b!766779 (= lt!341100 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341099 #b00000000000000000000000000000000))))

(assert (=> b!766779 (arrayContainsKey!0 a!3186 lt!341099 #b00000000000000000000000000000000)))

(declare-fun lt!341101 () Unit!26380)

(assert (=> b!766779 (= lt!341101 lt!341100)))

(declare-fun res!518798 () Bool)

(assert (=> b!766779 (= res!518798 (= (seekEntryOrOpen!0 (select (arr!20220 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7827 #b00000000000000000000000000000000)))))

(assert (=> b!766779 (=> (not res!518798) (not e!427022))))

(declare-fun bm!35058 () Bool)

(assert (=> bm!35058 (= call!35061 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!766780 () Bool)

(assert (=> b!766780 (= e!427022 call!35061)))

(declare-fun b!766781 () Bool)

(assert (=> b!766781 (= e!427021 e!427023)))

(declare-fun c!84381 () Bool)

(assert (=> b!766781 (= c!84381 (validKeyInArray!0 (select (arr!20220 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101235 (not res!518797)) b!766781))

(assert (= (and b!766781 c!84381) b!766779))

(assert (= (and b!766781 (not c!84381)) b!766778))

(assert (= (and b!766779 res!518798) b!766780))

(assert (= (or b!766780 b!766778) bm!35058))

(assert (=> b!766779 m!712691))

(declare-fun m!712733 () Bool)

(assert (=> b!766779 m!712733))

(declare-fun m!712735 () Bool)

(assert (=> b!766779 m!712735))

(assert (=> b!766779 m!712691))

(declare-fun m!712737 () Bool)

(assert (=> b!766779 m!712737))

(declare-fun m!712739 () Bool)

(assert (=> bm!35058 m!712739))

(assert (=> b!766781 m!712691))

(assert (=> b!766781 m!712691))

(assert (=> b!766781 m!712711))

(assert (=> b!766272 d!101235))

(declare-fun d!101237 () Bool)

(declare-fun lt!341104 () (_ BitVec 32))

(assert (=> d!101237 (and (bvsge lt!341104 #b00000000000000000000000000000000) (bvslt lt!341104 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101237 (= lt!341104 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101237 (validMask!0 mask!3328)))

(assert (=> d!101237 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341104)))

(declare-fun bs!21503 () Bool)

(assert (= bs!21503 d!101237))

(declare-fun m!712741 () Bool)

(assert (=> bs!21503 m!712741))

(assert (=> bs!21503 m!712341))

(assert (=> b!766268 d!101237))

(declare-fun b!766792 () Bool)

(declare-fun e!427033 () Bool)

(declare-fun e!427036 () Bool)

(assert (=> b!766792 (= e!427033 e!427036)))

(declare-fun res!518805 () Bool)

(declare-fun lt!341106 () SeekEntryResult!7827)

(assert (=> b!766792 (= res!518805 (and (is-Intermediate!7827 lt!341106) (not (undefined!8639 lt!341106)) (bvslt (x!64610 lt!341106) #b01111111111111111111111111111110) (bvsge (x!64610 lt!341106) #b00000000000000000000000000000000) (bvsge (x!64610 lt!341106) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!766792 (=> (not res!518805) (not e!427036))))

(declare-fun d!101239 () Bool)

(assert (=> d!101239 e!427033))

(declare-fun c!84384 () Bool)

(assert (=> d!101239 (= c!84384 (and (is-Intermediate!7827 lt!341106) (undefined!8639 lt!341106)))))

(declare-fun e!427032 () SeekEntryResult!7827)

(assert (=> d!101239 (= lt!341106 e!427032)))

(declare-fun c!84386 () Bool)

(assert (=> d!101239 (= c!84386 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!341105 () (_ BitVec 64))

(assert (=> d!101239 (= lt!341105 (select (arr!20220 a!3186) lt!340890))))

(assert (=> d!101239 (validMask!0 mask!3328)))

(assert (=> d!101239 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!340890 (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!341106)))

(declare-fun b!766793 () Bool)

(assert (=> b!766793 (= e!427033 (bvsge (x!64610 lt!341106) #b01111111111111111111111111111110))))

(declare-fun b!766794 () Bool)

(assert (=> b!766794 (and (bvsge (index!33677 lt!341106) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341106) (size!20641 a!3186)))))

(declare-fun res!518806 () Bool)

(assert (=> b!766794 (= res!518806 (= (select (arr!20220 a!3186) (index!33677 lt!341106)) (select (arr!20220 a!3186) j!159)))))

(declare-fun e!427034 () Bool)

(assert (=> b!766794 (=> res!518806 e!427034)))

(assert (=> b!766794 (= e!427036 e!427034)))

(declare-fun b!766795 () Bool)

(assert (=> b!766795 (and (bvsge (index!33677 lt!341106) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341106) (size!20641 a!3186)))))

(declare-fun res!518807 () Bool)

(assert (=> b!766795 (= res!518807 (= (select (arr!20220 a!3186) (index!33677 lt!341106)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766795 (=> res!518807 e!427034)))

(declare-fun b!766796 () Bool)

(declare-fun e!427035 () SeekEntryResult!7827)

(assert (=> b!766796 (= e!427035 (Intermediate!7827 false lt!340890 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!766797 () Bool)

(assert (=> b!766797 (and (bvsge (index!33677 lt!341106) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341106) (size!20641 a!3186)))))

(assert (=> b!766797 (= e!427034 (= (select (arr!20220 a!3186) (index!33677 lt!341106)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766798 () Bool)

(assert (=> b!766798 (= e!427035 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!340890 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20220 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766799 () Bool)

(assert (=> b!766799 (= e!427032 e!427035)))

(declare-fun c!84385 () Bool)

(assert (=> b!766799 (= c!84385 (or (= lt!341105 (select (arr!20220 a!3186) j!159)) (= (bvadd lt!341105 lt!341105) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766800 () Bool)

(assert (=> b!766800 (= e!427032 (Intermediate!7827 true lt!340890 (bvadd #b00000000000000000000000000000001 x!1131)))))

(assert (= (and d!101239 c!84386) b!766800))

(assert (= (and d!101239 (not c!84386)) b!766799))

(assert (= (and b!766799 c!84385) b!766796))

(assert (= (and b!766799 (not c!84385)) b!766798))

(assert (= (and d!101239 c!84384) b!766793))

(assert (= (and d!101239 (not c!84384)) b!766792))

(assert (= (and b!766792 res!518805) b!766794))

(assert (= (and b!766794 (not res!518806)) b!766795))

(assert (= (and b!766795 (not res!518807)) b!766797))

(declare-fun m!712743 () Bool)

(assert (=> d!101239 m!712743))

(assert (=> d!101239 m!712341))

(declare-fun m!712745 () Bool)

(assert (=> b!766794 m!712745))

(assert (=> b!766797 m!712745))

(declare-fun m!712747 () Bool)

(assert (=> b!766798 m!712747))

(assert (=> b!766798 m!712747))

(assert (=> b!766798 m!712337))

(declare-fun m!712749 () Bool)

(assert (=> b!766798 m!712749))

(assert (=> b!766795 m!712745))

(assert (=> b!766278 d!101239))

(declare-fun d!101241 () Bool)

(assert (=> d!101241 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!766269 d!101241))

(declare-fun b!766806 () Bool)

(declare-fun e!427042 () Bool)

(declare-fun e!427045 () Bool)

(assert (=> b!766806 (= e!427042 e!427045)))

(declare-fun res!518811 () Bool)

(declare-fun lt!341108 () SeekEntryResult!7827)

(assert (=> b!766806 (= res!518811 (and (is-Intermediate!7827 lt!341108) (not (undefined!8639 lt!341108)) (bvslt (x!64610 lt!341108) #b01111111111111111111111111111110) (bvsge (x!64610 lt!341108) #b00000000000000000000000000000000) (bvsge (x!64610 lt!341108) x!1131)))))

(assert (=> b!766806 (=> (not res!518811) (not e!427045))))

(declare-fun d!101243 () Bool)

(assert (=> d!101243 e!427042))

(declare-fun c!84388 () Bool)

(assert (=> d!101243 (= c!84388 (and (is-Intermediate!7827 lt!341108) (undefined!8639 lt!341108)))))

(declare-fun e!427041 () SeekEntryResult!7827)

(assert (=> d!101243 (= lt!341108 e!427041)))

(declare-fun c!84390 () Bool)

(assert (=> d!101243 (= c!84390 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341107 () (_ BitVec 64))

(assert (=> d!101243 (= lt!341107 (select (arr!20220 lt!340887) index!1321))))

(assert (=> d!101243 (validMask!0 mask!3328)))

(assert (=> d!101243 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340888 lt!340887 mask!3328) lt!341108)))

(declare-fun b!766807 () Bool)

(assert (=> b!766807 (= e!427042 (bvsge (x!64610 lt!341108) #b01111111111111111111111111111110))))

(declare-fun b!766808 () Bool)

(assert (=> b!766808 (and (bvsge (index!33677 lt!341108) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341108) (size!20641 lt!340887)))))

(declare-fun res!518812 () Bool)

(assert (=> b!766808 (= res!518812 (= (select (arr!20220 lt!340887) (index!33677 lt!341108)) lt!340888))))

(declare-fun e!427043 () Bool)

(assert (=> b!766808 (=> res!518812 e!427043)))

(assert (=> b!766808 (= e!427045 e!427043)))

(declare-fun b!766809 () Bool)

(assert (=> b!766809 (and (bvsge (index!33677 lt!341108) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341108) (size!20641 lt!340887)))))

(declare-fun res!518813 () Bool)

(assert (=> b!766809 (= res!518813 (= (select (arr!20220 lt!340887) (index!33677 lt!341108)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766809 (=> res!518813 e!427043)))

(declare-fun b!766810 () Bool)

(declare-fun e!427044 () SeekEntryResult!7827)

(assert (=> b!766810 (= e!427044 (Intermediate!7827 false index!1321 x!1131))))

(declare-fun b!766811 () Bool)

(assert (=> b!766811 (and (bvsge (index!33677 lt!341108) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341108) (size!20641 lt!340887)))))

(assert (=> b!766811 (= e!427043 (= (select (arr!20220 lt!340887) (index!33677 lt!341108)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766812 () Bool)

(assert (=> b!766812 (= e!427044 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340888 lt!340887 mask!3328))))

(declare-fun b!766813 () Bool)

(assert (=> b!766813 (= e!427041 e!427044)))

(declare-fun c!84389 () Bool)

(assert (=> b!766813 (= c!84389 (or (= lt!341107 lt!340888) (= (bvadd lt!341107 lt!341107) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766814 () Bool)

(assert (=> b!766814 (= e!427041 (Intermediate!7827 true index!1321 x!1131))))

(assert (= (and d!101243 c!84390) b!766814))

(assert (= (and d!101243 (not c!84390)) b!766813))

(assert (= (and b!766813 c!84389) b!766810))

(assert (= (and b!766813 (not c!84389)) b!766812))

(assert (= (and d!101243 c!84388) b!766807))

(assert (= (and d!101243 (not c!84388)) b!766806))

(assert (= (and b!766806 res!518811) b!766808))

(assert (= (and b!766808 (not res!518812)) b!766809))

(assert (= (and b!766809 (not res!518813)) b!766811))

(declare-fun m!712755 () Bool)

(assert (=> d!101243 m!712755))

(assert (=> d!101243 m!712341))

(declare-fun m!712757 () Bool)

(assert (=> b!766808 m!712757))

(assert (=> b!766811 m!712757))

(assert (=> b!766812 m!712385))

(assert (=> b!766812 m!712385))

(declare-fun m!712759 () Bool)

(assert (=> b!766812 m!712759))

(assert (=> b!766809 m!712757))

(assert (=> b!766280 d!101243))

(declare-fun b!766821 () Bool)

(declare-fun e!427050 () Bool)

(declare-fun e!427053 () Bool)

(assert (=> b!766821 (= e!427050 e!427053)))

(declare-fun res!518814 () Bool)

(declare-fun lt!341113 () SeekEntryResult!7827)

(assert (=> b!766821 (= res!518814 (and (is-Intermediate!7827 lt!341113) (not (undefined!8639 lt!341113)) (bvslt (x!64610 lt!341113) #b01111111111111111111111111111110) (bvsge (x!64610 lt!341113) #b00000000000000000000000000000000) (bvsge (x!64610 lt!341113) #b00000000000000000000000000000000)))))

(assert (=> b!766821 (=> (not res!518814) (not e!427053))))

(declare-fun d!101247 () Bool)

(assert (=> d!101247 e!427050))

(declare-fun c!84394 () Bool)

(assert (=> d!101247 (= c!84394 (and (is-Intermediate!7827 lt!341113) (undefined!8639 lt!341113)))))

(declare-fun e!427049 () SeekEntryResult!7827)

(assert (=> d!101247 (= lt!341113 e!427049)))

(declare-fun c!84396 () Bool)

(assert (=> d!101247 (= c!84396 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341112 () (_ BitVec 64))

(assert (=> d!101247 (= lt!341112 (select (arr!20220 lt!340887) (toIndex!0 lt!340888 mask!3328)))))

(assert (=> d!101247 (validMask!0 mask!3328)))

(assert (=> d!101247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340888 mask!3328) lt!340888 lt!340887 mask!3328) lt!341113)))

(declare-fun b!766822 () Bool)

(assert (=> b!766822 (= e!427050 (bvsge (x!64610 lt!341113) #b01111111111111111111111111111110))))

(declare-fun b!766823 () Bool)

(assert (=> b!766823 (and (bvsge (index!33677 lt!341113) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341113) (size!20641 lt!340887)))))

(declare-fun res!518815 () Bool)

(assert (=> b!766823 (= res!518815 (= (select (arr!20220 lt!340887) (index!33677 lt!341113)) lt!340888))))

(declare-fun e!427051 () Bool)

(assert (=> b!766823 (=> res!518815 e!427051)))

(assert (=> b!766823 (= e!427053 e!427051)))

(declare-fun b!766824 () Bool)

(assert (=> b!766824 (and (bvsge (index!33677 lt!341113) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341113) (size!20641 lt!340887)))))

(declare-fun res!518816 () Bool)

(assert (=> b!766824 (= res!518816 (= (select (arr!20220 lt!340887) (index!33677 lt!341113)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766824 (=> res!518816 e!427051)))

(declare-fun b!766825 () Bool)

(declare-fun e!427052 () SeekEntryResult!7827)

(assert (=> b!766825 (= e!427052 (Intermediate!7827 false (toIndex!0 lt!340888 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766826 () Bool)

(assert (=> b!766826 (and (bvsge (index!33677 lt!341113) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341113) (size!20641 lt!340887)))))

(assert (=> b!766826 (= e!427051 (= (select (arr!20220 lt!340887) (index!33677 lt!341113)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766827 () Bool)

(assert (=> b!766827 (= e!427052 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340888 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340888 lt!340887 mask!3328))))

(declare-fun b!766828 () Bool)

(assert (=> b!766828 (= e!427049 e!427052)))

(declare-fun c!84395 () Bool)

(assert (=> b!766828 (= c!84395 (or (= lt!341112 lt!340888) (= (bvadd lt!341112 lt!341112) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766829 () Bool)

(assert (=> b!766829 (= e!427049 (Intermediate!7827 true (toIndex!0 lt!340888 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101247 c!84396) b!766829))

(assert (= (and d!101247 (not c!84396)) b!766828))

(assert (= (and b!766828 c!84395) b!766825))

(assert (= (and b!766828 (not c!84395)) b!766827))

(assert (= (and d!101247 c!84394) b!766822))

(assert (= (and d!101247 (not c!84394)) b!766821))

(assert (= (and b!766821 res!518814) b!766823))

(assert (= (and b!766823 (not res!518815)) b!766824))

(assert (= (and b!766824 (not res!518816)) b!766826))

(assert (=> d!101247 m!712345))

(declare-fun m!712771 () Bool)

(assert (=> d!101247 m!712771))

(assert (=> d!101247 m!712341))

(declare-fun m!712773 () Bool)

(assert (=> b!766823 m!712773))

(assert (=> b!766826 m!712773))

(assert (=> b!766827 m!712345))

(declare-fun m!712776 () Bool)

(assert (=> b!766827 m!712776))

(assert (=> b!766827 m!712776))

(declare-fun m!712781 () Bool)

(assert (=> b!766827 m!712781))

(assert (=> b!766824 m!712773))

(assert (=> b!766280 d!101247))

(declare-fun d!101251 () Bool)

(declare-fun lt!341121 () (_ BitVec 32))

(declare-fun lt!341120 () (_ BitVec 32))

(assert (=> d!101251 (= lt!341121 (bvmul (bvxor lt!341120 (bvlshr lt!341120 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101251 (= lt!341120 ((_ extract 31 0) (bvand (bvxor lt!340888 (bvlshr lt!340888 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101251 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!518817 (let ((h!15366 ((_ extract 31 0) (bvand (bvxor lt!340888 (bvlshr lt!340888 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64624 (bvmul (bvxor h!15366 (bvlshr h!15366 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64624 (bvlshr x!64624 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!518817 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!518817 #b00000000000000000000000000000000))))))

(assert (=> d!101251 (= (toIndex!0 lt!340888 mask!3328) (bvand (bvxor lt!341121 (bvlshr lt!341121 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!766280 d!101251))

(declare-fun b!766836 () Bool)

(declare-fun e!427058 () Bool)

(declare-fun e!427061 () Bool)

(assert (=> b!766836 (= e!427058 e!427061)))

(declare-fun res!518818 () Bool)

(declare-fun lt!341123 () SeekEntryResult!7827)

(assert (=> b!766836 (= res!518818 (and (is-Intermediate!7827 lt!341123) (not (undefined!8639 lt!341123)) (bvslt (x!64610 lt!341123) #b01111111111111111111111111111110) (bvsge (x!64610 lt!341123) #b00000000000000000000000000000000) (bvsge (x!64610 lt!341123) #b00000000000000000000000000000000)))))

(assert (=> b!766836 (=> (not res!518818) (not e!427061))))

(declare-fun d!101253 () Bool)

(assert (=> d!101253 e!427058))

(declare-fun c!84400 () Bool)

(assert (=> d!101253 (= c!84400 (and (is-Intermediate!7827 lt!341123) (undefined!8639 lt!341123)))))

(declare-fun e!427057 () SeekEntryResult!7827)

(assert (=> d!101253 (= lt!341123 e!427057)))

(declare-fun c!84402 () Bool)

(assert (=> d!101253 (= c!84402 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341122 () (_ BitVec 64))

(assert (=> d!101253 (= lt!341122 (select (arr!20220 a!3186) (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328)))))

(assert (=> d!101253 (validMask!0 mask!3328)))

(assert (=> d!101253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328) (select (arr!20220 a!3186) j!159) a!3186 mask!3328) lt!341123)))

(declare-fun b!766837 () Bool)

(assert (=> b!766837 (= e!427058 (bvsge (x!64610 lt!341123) #b01111111111111111111111111111110))))

(declare-fun b!766838 () Bool)

(assert (=> b!766838 (and (bvsge (index!33677 lt!341123) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341123) (size!20641 a!3186)))))

(declare-fun res!518819 () Bool)

(assert (=> b!766838 (= res!518819 (= (select (arr!20220 a!3186) (index!33677 lt!341123)) (select (arr!20220 a!3186) j!159)))))

(declare-fun e!427059 () Bool)

(assert (=> b!766838 (=> res!518819 e!427059)))

(assert (=> b!766838 (= e!427061 e!427059)))

(declare-fun b!766839 () Bool)

(assert (=> b!766839 (and (bvsge (index!33677 lt!341123) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341123) (size!20641 a!3186)))))

(declare-fun res!518820 () Bool)

(assert (=> b!766839 (= res!518820 (= (select (arr!20220 a!3186) (index!33677 lt!341123)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766839 (=> res!518820 e!427059)))

(declare-fun b!766840 () Bool)

(declare-fun e!427060 () SeekEntryResult!7827)

(assert (=> b!766840 (= e!427060 (Intermediate!7827 false (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766841 () Bool)

(assert (=> b!766841 (and (bvsge (index!33677 lt!341123) #b00000000000000000000000000000000) (bvslt (index!33677 lt!341123) (size!20641 a!3186)))))

(assert (=> b!766841 (= e!427059 (= (select (arr!20220 a!3186) (index!33677 lt!341123)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766842 () Bool)

(assert (=> b!766842 (= e!427060 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20220 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766843 () Bool)

(assert (=> b!766843 (= e!427057 e!427060)))

(declare-fun c!84401 () Bool)

(assert (=> b!766843 (= c!84401 (or (= lt!341122 (select (arr!20220 a!3186) j!159)) (= (bvadd lt!341122 lt!341122) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766844 () Bool)

(assert (=> b!766844 (= e!427057 (Intermediate!7827 true (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101253 c!84402) b!766844))

(assert (= (and d!101253 (not c!84402)) b!766843))

(assert (= (and b!766843 c!84401) b!766840))

(assert (= (and b!766843 (not c!84401)) b!766842))

(assert (= (and d!101253 c!84400) b!766837))

(assert (= (and d!101253 (not c!84400)) b!766836))

(assert (= (and b!766836 res!518818) b!766838))

(assert (= (and b!766838 (not res!518819)) b!766839))

(assert (= (and b!766839 (not res!518820)) b!766841))

(assert (=> d!101253 m!712369))

(declare-fun m!712785 () Bool)

(assert (=> d!101253 m!712785))

(assert (=> d!101253 m!712341))

(declare-fun m!712787 () Bool)

(assert (=> b!766838 m!712787))

(assert (=> b!766841 m!712787))

(assert (=> b!766842 m!712369))

(declare-fun m!712789 () Bool)

(assert (=> b!766842 m!712789))

(assert (=> b!766842 m!712789))

(assert (=> b!766842 m!712337))

(declare-fun m!712791 () Bool)

(assert (=> b!766842 m!712791))

(assert (=> b!766839 m!712787))

(assert (=> b!766279 d!101253))

(declare-fun d!101255 () Bool)

(declare-fun lt!341125 () (_ BitVec 32))

(declare-fun lt!341124 () (_ BitVec 32))

(assert (=> d!101255 (= lt!341125 (bvmul (bvxor lt!341124 (bvlshr lt!341124 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101255 (= lt!341124 ((_ extract 31 0) (bvand (bvxor (select (arr!20220 a!3186) j!159) (bvlshr (select (arr!20220 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101255 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!518817 (let ((h!15366 ((_ extract 31 0) (bvand (bvxor (select (arr!20220 a!3186) j!159) (bvlshr (select (arr!20220 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64624 (bvmul (bvxor h!15366 (bvlshr h!15366 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64624 (bvlshr x!64624 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!518817 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!518817 #b00000000000000000000000000000000))))))

(assert (=> d!101255 (= (toIndex!0 (select (arr!20220 a!3186) j!159) mask!3328) (bvand (bvxor lt!341125 (bvlshr lt!341125 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!766279 d!101255))

(push 1)

(assert (not b!766659))

(assert (not d!101239))

(assert (not b!766776))

(assert (not bm!35057))

(assert (not b!766741))

(assert (not d!101173))

(assert (not b!766779))

(assert (not b!766781))

(assert (not b!766568))

(assert (not b!766812))

(assert (not d!101145))

(assert (not b!766708))

(assert (not d!101233))

(assert (not bm!35054))

(assert (not b!766842))

(assert (not d!101253))

(assert (not d!101243))

(assert (not b!766798))

(assert (not b!766706))

(assert (not bm!35058))

(assert (not b!766770))

(assert (not b!766827))

(assert (not d!101237))

(assert (not b!766767))

(assert (not d!101213))

(assert (not b!766691))

(assert (not d!101157))

(assert (not d!101247))

(assert (not d!101209))

(assert (not b!766769))

(assert (not b!766465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

