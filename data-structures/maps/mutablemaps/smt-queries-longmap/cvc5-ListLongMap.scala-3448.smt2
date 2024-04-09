; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47818 () Bool)

(assert start!47818)

(declare-fun b!526573 () Bool)

(declare-fun res!323309 () Bool)

(declare-fun e!306919 () Bool)

(assert (=> b!526573 (=> (not res!323309) (not e!306919))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526573 (= res!323309 (validKeyInArray!0 k!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!526574 () Bool)

(declare-datatypes ((array!33415 0))(
  ( (array!33416 (arr!16056 (Array (_ BitVec 32) (_ BitVec 64))) (size!16420 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33415)

(declare-fun e!306917 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4530 0))(
  ( (MissingZero!4530 (index!20332 (_ BitVec 32))) (Found!4530 (index!20333 (_ BitVec 32))) (Intermediate!4530 (undefined!5342 Bool) (index!20334 (_ BitVec 32)) (x!49330 (_ BitVec 32))) (Undefined!4530) (MissingVacant!4530 (index!20335 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33415 (_ BitVec 32)) SeekEntryResult!4530)

(assert (=> b!526574 (= e!306917 (= (seekEntryOrOpen!0 (select (arr!16056 a!3235) j!176) a!3235 mask!3524) (Found!4530 j!176)))))

(declare-fun b!526575 () Bool)

(declare-fun res!323298 () Bool)

(declare-fun e!306920 () Bool)

(assert (=> b!526575 (=> res!323298 e!306920)))

(declare-fun lt!242309 () SeekEntryResult!4530)

(assert (=> b!526575 (= res!323298 (or (undefined!5342 lt!242309) (not (is-Intermediate!4530 lt!242309))))))

(declare-fun b!526576 () Bool)

(declare-fun res!323299 () Bool)

(assert (=> b!526576 (=> (not res!323299) (not e!306919))))

(declare-fun arrayContainsKey!0 (array!33415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526576 (= res!323299 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526577 () Bool)

(declare-fun res!323306 () Bool)

(declare-fun e!306921 () Bool)

(assert (=> b!526577 (=> (not res!323306) (not e!306921))))

(declare-datatypes ((List!10267 0))(
  ( (Nil!10264) (Cons!10263 (h!11194 (_ BitVec 64)) (t!16503 List!10267)) )
))
(declare-fun arrayNoDuplicates!0 (array!33415 (_ BitVec 32) List!10267) Bool)

(assert (=> b!526577 (= res!323306 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10264))))

(declare-fun b!526578 () Bool)

(declare-datatypes ((Unit!16586 0))(
  ( (Unit!16587) )
))
(declare-fun e!306918 () Unit!16586)

(declare-fun Unit!16588 () Unit!16586)

(assert (=> b!526578 (= e!306918 Unit!16588)))

(declare-fun b!526579 () Bool)

(assert (=> b!526579 (= e!306920 (bvsle (x!49330 lt!242309) #b01111111111111111111111111111110))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526579 (= (index!20334 lt!242309) i!1204)))

(declare-fun lt!242310 () Unit!16586)

(declare-fun lt!242312 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33415 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16586)

(assert (=> b!526579 (= lt!242310 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242312 #b00000000000000000000000000000000 (index!20334 lt!242309) (x!49330 lt!242309) mask!3524))))

(assert (=> b!526579 (and (or (= (select (arr!16056 a!3235) (index!20334 lt!242309)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16056 a!3235) (index!20334 lt!242309)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16056 a!3235) (index!20334 lt!242309)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16056 a!3235) (index!20334 lt!242309)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242306 () Unit!16586)

(assert (=> b!526579 (= lt!242306 e!306918)))

(declare-fun c!61943 () Bool)

(assert (=> b!526579 (= c!61943 (= (select (arr!16056 a!3235) (index!20334 lt!242309)) (select (arr!16056 a!3235) j!176)))))

(assert (=> b!526579 (and (bvslt (x!49330 lt!242309) #b01111111111111111111111111111110) (or (= (select (arr!16056 a!3235) (index!20334 lt!242309)) (select (arr!16056 a!3235) j!176)) (= (select (arr!16056 a!3235) (index!20334 lt!242309)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16056 a!3235) (index!20334 lt!242309)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!323305 () Bool)

(assert (=> start!47818 (=> (not res!323305) (not e!306919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47818 (= res!323305 (validMask!0 mask!3524))))

(assert (=> start!47818 e!306919))

(assert (=> start!47818 true))

(declare-fun array_inv!11830 (array!33415) Bool)

(assert (=> start!47818 (array_inv!11830 a!3235)))

(declare-fun b!526580 () Bool)

(assert (=> b!526580 (= e!306919 e!306921)))

(declare-fun res!323301 () Bool)

(assert (=> b!526580 (=> (not res!323301) (not e!306921))))

(declare-fun lt!242315 () SeekEntryResult!4530)

(assert (=> b!526580 (= res!323301 (or (= lt!242315 (MissingZero!4530 i!1204)) (= lt!242315 (MissingVacant!4530 i!1204))))))

(assert (=> b!526580 (= lt!242315 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526581 () Bool)

(declare-fun Unit!16589 () Unit!16586)

(assert (=> b!526581 (= e!306918 Unit!16589)))

(declare-fun lt!242307 () Unit!16586)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33415 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16586)

(assert (=> b!526581 (= lt!242307 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242312 #b00000000000000000000000000000000 (index!20334 lt!242309) (x!49330 lt!242309) mask!3524))))

(declare-fun lt!242313 () array!33415)

(declare-fun res!323300 () Bool)

(declare-fun lt!242308 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33415 (_ BitVec 32)) SeekEntryResult!4530)

(assert (=> b!526581 (= res!323300 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242312 lt!242308 lt!242313 mask!3524) (Intermediate!4530 false (index!20334 lt!242309) (x!49330 lt!242309))))))

(declare-fun e!306922 () Bool)

(assert (=> b!526581 (=> (not res!323300) (not e!306922))))

(assert (=> b!526581 e!306922))

(declare-fun b!526582 () Bool)

(assert (=> b!526582 (= e!306921 (not e!306920))))

(declare-fun res!323303 () Bool)

(assert (=> b!526582 (=> res!323303 e!306920)))

(declare-fun lt!242314 () (_ BitVec 32))

(assert (=> b!526582 (= res!323303 (= lt!242309 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242314 lt!242308 lt!242313 mask!3524)))))

(assert (=> b!526582 (= lt!242309 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242312 (select (arr!16056 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526582 (= lt!242314 (toIndex!0 lt!242308 mask!3524))))

(assert (=> b!526582 (= lt!242308 (select (store (arr!16056 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526582 (= lt!242312 (toIndex!0 (select (arr!16056 a!3235) j!176) mask!3524))))

(assert (=> b!526582 (= lt!242313 (array!33416 (store (arr!16056 a!3235) i!1204 k!2280) (size!16420 a!3235)))))

(assert (=> b!526582 e!306917))

(declare-fun res!323304 () Bool)

(assert (=> b!526582 (=> (not res!323304) (not e!306917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33415 (_ BitVec 32)) Bool)

(assert (=> b!526582 (= res!323304 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242311 () Unit!16586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16586)

(assert (=> b!526582 (= lt!242311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526583 () Bool)

(declare-fun res!323302 () Bool)

(assert (=> b!526583 (=> (not res!323302) (not e!306921))))

(assert (=> b!526583 (= res!323302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526584 () Bool)

(declare-fun res!323307 () Bool)

(assert (=> b!526584 (=> (not res!323307) (not e!306919))))

(assert (=> b!526584 (= res!323307 (validKeyInArray!0 (select (arr!16056 a!3235) j!176)))))

(declare-fun b!526585 () Bool)

(declare-fun res!323308 () Bool)

(assert (=> b!526585 (=> (not res!323308) (not e!306919))))

(assert (=> b!526585 (= res!323308 (and (= (size!16420 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16420 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16420 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526586 () Bool)

(assert (=> b!526586 (= e!306922 false)))

(assert (= (and start!47818 res!323305) b!526585))

(assert (= (and b!526585 res!323308) b!526584))

(assert (= (and b!526584 res!323307) b!526573))

(assert (= (and b!526573 res!323309) b!526576))

(assert (= (and b!526576 res!323299) b!526580))

(assert (= (and b!526580 res!323301) b!526583))

(assert (= (and b!526583 res!323302) b!526577))

(assert (= (and b!526577 res!323306) b!526582))

(assert (= (and b!526582 res!323304) b!526574))

(assert (= (and b!526582 (not res!323303)) b!526575))

(assert (= (and b!526575 (not res!323298)) b!526579))

(assert (= (and b!526579 c!61943) b!526581))

(assert (= (and b!526579 (not c!61943)) b!526578))

(assert (= (and b!526581 res!323300) b!526586))

(declare-fun m!507331 () Bool)

(assert (=> b!526576 m!507331))

(declare-fun m!507333 () Bool)

(assert (=> b!526577 m!507333))

(declare-fun m!507335 () Bool)

(assert (=> b!526584 m!507335))

(assert (=> b!526584 m!507335))

(declare-fun m!507337 () Bool)

(assert (=> b!526584 m!507337))

(declare-fun m!507339 () Bool)

(assert (=> b!526579 m!507339))

(declare-fun m!507341 () Bool)

(assert (=> b!526579 m!507341))

(assert (=> b!526579 m!507335))

(declare-fun m!507343 () Bool)

(assert (=> b!526581 m!507343))

(declare-fun m!507345 () Bool)

(assert (=> b!526581 m!507345))

(declare-fun m!507347 () Bool)

(assert (=> b!526583 m!507347))

(declare-fun m!507349 () Bool)

(assert (=> b!526580 m!507349))

(assert (=> b!526574 m!507335))

(assert (=> b!526574 m!507335))

(declare-fun m!507351 () Bool)

(assert (=> b!526574 m!507351))

(declare-fun m!507353 () Bool)

(assert (=> b!526573 m!507353))

(declare-fun m!507355 () Bool)

(assert (=> start!47818 m!507355))

(declare-fun m!507357 () Bool)

(assert (=> start!47818 m!507357))

(declare-fun m!507359 () Bool)

(assert (=> b!526582 m!507359))

(declare-fun m!507361 () Bool)

(assert (=> b!526582 m!507361))

(declare-fun m!507363 () Bool)

(assert (=> b!526582 m!507363))

(assert (=> b!526582 m!507335))

(declare-fun m!507365 () Bool)

(assert (=> b!526582 m!507365))

(assert (=> b!526582 m!507335))

(declare-fun m!507367 () Bool)

(assert (=> b!526582 m!507367))

(declare-fun m!507369 () Bool)

(assert (=> b!526582 m!507369))

(declare-fun m!507371 () Bool)

(assert (=> b!526582 m!507371))

(assert (=> b!526582 m!507335))

(declare-fun m!507373 () Bool)

(assert (=> b!526582 m!507373))

(push 1)

