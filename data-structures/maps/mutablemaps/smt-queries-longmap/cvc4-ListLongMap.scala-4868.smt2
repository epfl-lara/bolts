; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67142 () Bool)

(assert start!67142)

(declare-datatypes ((SeekEntryResult!7925 0))(
  ( (MissingZero!7925 (index!34067 (_ BitVec 32))) (Found!7925 (index!34068 (_ BitVec 32))) (Intermediate!7925 (undefined!8737 Bool) (index!34069 (_ BitVec 32)) (x!65037 (_ BitVec 32))) (Undefined!7925) (MissingVacant!7925 (index!34070 (_ BitVec 32))) )
))
(declare-fun lt!345329 () SeekEntryResult!7925)

(declare-fun lt!345338 () (_ BitVec 32))

(declare-fun b!775176 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!431465 () Bool)

(declare-datatypes ((array!42452 0))(
  ( (array!42453 (arr!20318 (Array (_ BitVec 32) (_ BitVec 64))) (size!20739 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42452)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42452 (_ BitVec 32)) SeekEntryResult!7925)

(assert (=> b!775176 (= e!431465 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345338 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345329)))))

(declare-fun b!775177 () Bool)

(declare-fun e!431464 () Bool)

(declare-fun e!431468 () Bool)

(assert (=> b!775177 (= e!431464 e!431468)))

(declare-fun res!524304 () Bool)

(assert (=> b!775177 (=> (not res!524304) (not e!431468))))

(declare-fun lt!345334 () SeekEntryResult!7925)

(declare-fun lt!345328 () SeekEntryResult!7925)

(assert (=> b!775177 (= res!524304 (= lt!345334 lt!345328))))

(declare-fun lt!345327 () array!42452)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!345332 () (_ BitVec 64))

(assert (=> b!775177 (= lt!345328 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345332 lt!345327 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775177 (= lt!345334 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345332 mask!3328) lt!345332 lt!345327 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!775177 (= lt!345332 (select (store (arr!20318 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775177 (= lt!345327 (array!42453 (store (arr!20318 a!3186) i!1173 k!2102) (size!20739 a!3186)))))

(declare-fun b!775178 () Bool)

(declare-fun e!431466 () Bool)

(declare-fun e!431463 () Bool)

(assert (=> b!775178 (= e!431466 e!431463)))

(declare-fun res!524307 () Bool)

(assert (=> b!775178 (=> (not res!524307) (not e!431463))))

(declare-fun lt!345331 () SeekEntryResult!7925)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42452 (_ BitVec 32)) SeekEntryResult!7925)

(assert (=> b!775178 (= res!524307 (= (seekEntryOrOpen!0 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345331))))

(assert (=> b!775178 (= lt!345331 (Found!7925 j!159))))

(declare-fun e!431461 () Bool)

(declare-fun b!775179 () Bool)

(assert (=> b!775179 (= e!431461 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345329))))

(declare-fun b!775180 () Bool)

(declare-fun res!524320 () Bool)

(declare-fun e!431460 () Bool)

(assert (=> b!775180 (=> (not res!524320) (not e!431460))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775180 (= res!524320 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20739 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20739 a!3186))))))

(declare-fun b!775181 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42452 (_ BitVec 32)) SeekEntryResult!7925)

(assert (=> b!775181 (= e!431461 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) (Found!7925 j!159)))))

(declare-fun b!775182 () Bool)

(declare-fun res!524313 () Bool)

(assert (=> b!775182 (=> (not res!524313) (not e!431464))))

(assert (=> b!775182 (= res!524313 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20318 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775183 () Bool)

(declare-datatypes ((Unit!26736 0))(
  ( (Unit!26737) )
))
(declare-fun e!431459 () Unit!26736)

(declare-fun Unit!26738 () Unit!26736)

(assert (=> b!775183 (= e!431459 Unit!26738)))

(assert (=> b!775183 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345338 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345329)))

(declare-fun b!775184 () Bool)

(declare-fun res!524302 () Bool)

(declare-fun e!431462 () Bool)

(assert (=> b!775184 (=> (not res!524302) (not e!431462))))

(assert (=> b!775184 (= res!524302 (and (= (size!20739 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20739 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20739 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775185 () Bool)

(assert (=> b!775185 (= e!431462 e!431460)))

(declare-fun res!524306 () Bool)

(assert (=> b!775185 (=> (not res!524306) (not e!431460))))

(declare-fun lt!345340 () SeekEntryResult!7925)

(assert (=> b!775185 (= res!524306 (or (= lt!345340 (MissingZero!7925 i!1173)) (= lt!345340 (MissingVacant!7925 i!1173))))))

(assert (=> b!775185 (= lt!345340 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775186 () Bool)

(declare-fun res!524318 () Bool)

(assert (=> b!775186 (=> (not res!524318) (not e!431464))))

(assert (=> b!775186 (= res!524318 e!431461)))

(declare-fun c!85839 () Bool)

(assert (=> b!775186 (= c!85839 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775187 () Bool)

(declare-fun res!524315 () Bool)

(assert (=> b!775187 (=> (not res!524315) (not e!431460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42452 (_ BitVec 32)) Bool)

(assert (=> b!775187 (= res!524315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775188 () Bool)

(declare-fun res!524319 () Bool)

(assert (=> b!775188 (=> (not res!524319) (not e!431460))))

(declare-datatypes ((List!14373 0))(
  ( (Nil!14370) (Cons!14369 (h!15477 (_ BitVec 64)) (t!20696 List!14373)) )
))
(declare-fun arrayNoDuplicates!0 (array!42452 (_ BitVec 32) List!14373) Bool)

(assert (=> b!775188 (= res!524319 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14370))))

(declare-fun b!775189 () Bool)

(declare-fun res!524317 () Bool)

(declare-fun e!431469 () Bool)

(assert (=> b!775189 (=> res!524317 e!431469)))

(assert (=> b!775189 (= res!524317 (not (= lt!345334 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345338 lt!345332 lt!345327 mask!3328))))))

(declare-fun b!775190 () Bool)

(declare-fun res!524316 () Bool)

(assert (=> b!775190 (=> (not res!524316) (not e!431462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775190 (= res!524316 (validKeyInArray!0 (select (arr!20318 a!3186) j!159)))))

(declare-fun b!775191 () Bool)

(declare-fun Unit!26739 () Unit!26736)

(assert (=> b!775191 (= e!431459 Unit!26739)))

(declare-fun lt!345330 () SeekEntryResult!7925)

(assert (=> b!775191 (= lt!345330 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20318 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!345339 () SeekEntryResult!7925)

(assert (=> b!775191 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345338 resIntermediateIndex!5 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345339)))

(declare-fun b!775193 () Bool)

(assert (=> b!775193 (= e!431460 e!431464)))

(declare-fun res!524309 () Bool)

(assert (=> b!775193 (=> (not res!524309) (not e!431464))))

(assert (=> b!775193 (= res!524309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20318 a!3186) j!159) mask!3328) (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345329))))

(assert (=> b!775193 (= lt!345329 (Intermediate!7925 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!524303 () Bool)

(assert (=> start!67142 (=> (not res!524303) (not e!431462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67142 (= res!524303 (validMask!0 mask!3328))))

(assert (=> start!67142 e!431462))

(assert (=> start!67142 true))

(declare-fun array_inv!16092 (array!42452) Bool)

(assert (=> start!67142 (array_inv!16092 a!3186)))

(declare-fun b!775192 () Bool)

(assert (=> b!775192 (= e!431469 true)))

(assert (=> b!775192 (= (seekEntryOrOpen!0 lt!345332 lt!345327 mask!3328) lt!345339)))

(declare-fun lt!345333 () Unit!26736)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26736)

(assert (=> b!775192 (= lt!345333 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!345338 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!775194 () Bool)

(assert (=> b!775194 (= e!431465 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345338 resIntermediateIndex!5 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345339)))))

(declare-fun b!775195 () Bool)

(assert (=> b!775195 (= e!431463 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20318 a!3186) j!159) a!3186 mask!3328) lt!345331))))

(declare-fun b!775196 () Bool)

(declare-fun e!431467 () Bool)

(assert (=> b!775196 (= e!431468 (not e!431467))))

(declare-fun res!524311 () Bool)

(assert (=> b!775196 (=> res!524311 e!431467)))

(assert (=> b!775196 (= res!524311 (or (not (is-Intermediate!7925 lt!345328)) (bvsge x!1131 (x!65037 lt!345328))))))

(assert (=> b!775196 (= lt!345339 (Found!7925 j!159))))

(assert (=> b!775196 e!431466))

(declare-fun res!524308 () Bool)

(assert (=> b!775196 (=> (not res!524308) (not e!431466))))

(assert (=> b!775196 (= res!524308 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345335 () Unit!26736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42452 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26736)

(assert (=> b!775196 (= lt!345335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775197 () Bool)

(declare-fun res!524310 () Bool)

(assert (=> b!775197 (=> (not res!524310) (not e!431462))))

(assert (=> b!775197 (= res!524310 (validKeyInArray!0 k!2102))))

(declare-fun b!775198 () Bool)

(assert (=> b!775198 (= e!431467 e!431469)))

(declare-fun res!524305 () Bool)

(assert (=> b!775198 (=> res!524305 e!431469)))

(assert (=> b!775198 (= res!524305 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345338 #b00000000000000000000000000000000) (bvsge lt!345338 (size!20739 a!3186))))))

(declare-fun lt!345336 () Unit!26736)

(assert (=> b!775198 (= lt!345336 e!431459)))

(declare-fun c!85838 () Bool)

(declare-fun lt!345337 () Bool)

(assert (=> b!775198 (= c!85838 lt!345337)))

(assert (=> b!775198 (= lt!345337 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775198 (= lt!345338 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!775199 () Bool)

(declare-fun res!524314 () Bool)

(assert (=> b!775199 (=> (not res!524314) (not e!431462))))

(declare-fun arrayContainsKey!0 (array!42452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775199 (= res!524314 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775200 () Bool)

(declare-fun res!524312 () Bool)

(assert (=> b!775200 (=> res!524312 e!431469)))

(assert (=> b!775200 (= res!524312 e!431465)))

(declare-fun c!85837 () Bool)

(assert (=> b!775200 (= c!85837 lt!345337)))

(assert (= (and start!67142 res!524303) b!775184))

(assert (= (and b!775184 res!524302) b!775190))

(assert (= (and b!775190 res!524316) b!775197))

(assert (= (and b!775197 res!524310) b!775199))

(assert (= (and b!775199 res!524314) b!775185))

(assert (= (and b!775185 res!524306) b!775187))

(assert (= (and b!775187 res!524315) b!775188))

(assert (= (and b!775188 res!524319) b!775180))

(assert (= (and b!775180 res!524320) b!775193))

(assert (= (and b!775193 res!524309) b!775182))

(assert (= (and b!775182 res!524313) b!775186))

(assert (= (and b!775186 c!85839) b!775179))

(assert (= (and b!775186 (not c!85839)) b!775181))

(assert (= (and b!775186 res!524318) b!775177))

(assert (= (and b!775177 res!524304) b!775196))

(assert (= (and b!775196 res!524308) b!775178))

(assert (= (and b!775178 res!524307) b!775195))

(assert (= (and b!775196 (not res!524311)) b!775198))

(assert (= (and b!775198 c!85838) b!775183))

(assert (= (and b!775198 (not c!85838)) b!775191))

(assert (= (and b!775198 (not res!524305)) b!775200))

(assert (= (and b!775200 c!85837) b!775176))

(assert (= (and b!775200 (not c!85837)) b!775194))

(assert (= (and b!775200 (not res!524312)) b!775189))

(assert (= (and b!775189 (not res!524317)) b!775192))

(declare-fun m!719505 () Bool)

(assert (=> b!775192 m!719505))

(declare-fun m!719507 () Bool)

(assert (=> b!775192 m!719507))

(declare-fun m!719509 () Bool)

(assert (=> b!775197 m!719509))

(declare-fun m!719511 () Bool)

(assert (=> b!775178 m!719511))

(assert (=> b!775178 m!719511))

(declare-fun m!719513 () Bool)

(assert (=> b!775178 m!719513))

(assert (=> b!775194 m!719511))

(assert (=> b!775194 m!719511))

(declare-fun m!719515 () Bool)

(assert (=> b!775194 m!719515))

(assert (=> b!775193 m!719511))

(assert (=> b!775193 m!719511))

(declare-fun m!719517 () Bool)

(assert (=> b!775193 m!719517))

(assert (=> b!775193 m!719517))

(assert (=> b!775193 m!719511))

(declare-fun m!719519 () Bool)

(assert (=> b!775193 m!719519))

(declare-fun m!719521 () Bool)

(assert (=> b!775188 m!719521))

(declare-fun m!719523 () Bool)

(assert (=> b!775196 m!719523))

(declare-fun m!719525 () Bool)

(assert (=> b!775196 m!719525))

(assert (=> b!775183 m!719511))

(assert (=> b!775183 m!719511))

(declare-fun m!719527 () Bool)

(assert (=> b!775183 m!719527))

(declare-fun m!719529 () Bool)

(assert (=> b!775187 m!719529))

(declare-fun m!719531 () Bool)

(assert (=> b!775198 m!719531))

(assert (=> b!775191 m!719511))

(assert (=> b!775191 m!719511))

(declare-fun m!719533 () Bool)

(assert (=> b!775191 m!719533))

(assert (=> b!775191 m!719511))

(assert (=> b!775191 m!719515))

(assert (=> b!775181 m!719511))

(assert (=> b!775181 m!719511))

(assert (=> b!775181 m!719533))

(assert (=> b!775179 m!719511))

(assert (=> b!775179 m!719511))

(declare-fun m!719535 () Bool)

(assert (=> b!775179 m!719535))

(declare-fun m!719537 () Bool)

(assert (=> b!775199 m!719537))

(declare-fun m!719539 () Bool)

(assert (=> b!775182 m!719539))

(assert (=> b!775195 m!719511))

(assert (=> b!775195 m!719511))

(declare-fun m!719541 () Bool)

(assert (=> b!775195 m!719541))

(declare-fun m!719543 () Bool)

(assert (=> b!775177 m!719543))

(declare-fun m!719545 () Bool)

(assert (=> b!775177 m!719545))

(declare-fun m!719547 () Bool)

(assert (=> b!775177 m!719547))

(declare-fun m!719549 () Bool)

(assert (=> b!775177 m!719549))

(assert (=> b!775177 m!719543))

(declare-fun m!719551 () Bool)

(assert (=> b!775177 m!719551))

(declare-fun m!719553 () Bool)

(assert (=> b!775189 m!719553))

(declare-fun m!719555 () Bool)

(assert (=> b!775185 m!719555))

(assert (=> b!775190 m!719511))

(assert (=> b!775190 m!719511))

(declare-fun m!719557 () Bool)

(assert (=> b!775190 m!719557))

(assert (=> b!775176 m!719511))

(assert (=> b!775176 m!719511))

(assert (=> b!775176 m!719527))

(declare-fun m!719559 () Bool)

(assert (=> start!67142 m!719559))

(declare-fun m!719561 () Bool)

(assert (=> start!67142 m!719561))

(push 1)

