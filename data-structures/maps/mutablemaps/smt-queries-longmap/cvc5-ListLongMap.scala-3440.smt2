; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47770 () Bool)

(assert start!47770)

(declare-fun res!322436 () Bool)

(declare-fun e!306412 () Bool)

(assert (=> start!47770 (=> (not res!322436) (not e!306412))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47770 (= res!322436 (validMask!0 mask!3524))))

(assert (=> start!47770 e!306412))

(assert (=> start!47770 true))

(declare-datatypes ((array!33367 0))(
  ( (array!33368 (arr!16032 (Array (_ BitVec 32) (_ BitVec 64))) (size!16396 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33367)

(declare-fun array_inv!11806 (array!33367) Bool)

(assert (=> start!47770 (array_inv!11806 a!3235)))

(declare-fun b!525565 () Bool)

(declare-fun res!322445 () Bool)

(assert (=> b!525565 (=> (not res!322445) (not e!306412))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!525565 (= res!322445 (and (= (size!16396 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16396 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16396 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525566 () Bool)

(declare-fun res!322437 () Bool)

(assert (=> b!525566 (=> (not res!322437) (not e!306412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525566 (= res!322437 (validKeyInArray!0 (select (arr!16032 a!3235) j!176)))))

(declare-fun b!525567 () Bool)

(declare-fun res!322435 () Bool)

(declare-fun e!306416 () Bool)

(assert (=> b!525567 (=> (not res!322435) (not e!306416))))

(declare-datatypes ((List!10243 0))(
  ( (Nil!10240) (Cons!10239 (h!11170 (_ BitVec 64)) (t!16479 List!10243)) )
))
(declare-fun arrayNoDuplicates!0 (array!33367 (_ BitVec 32) List!10243) Bool)

(assert (=> b!525567 (= res!322435 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10240))))

(declare-fun b!525568 () Bool)

(assert (=> b!525568 (= e!306412 e!306416)))

(declare-fun res!322444 () Bool)

(assert (=> b!525568 (=> (not res!322444) (not e!306416))))

(declare-datatypes ((SeekEntryResult!4506 0))(
  ( (MissingZero!4506 (index!20236 (_ BitVec 32))) (Found!4506 (index!20237 (_ BitVec 32))) (Intermediate!4506 (undefined!5318 Bool) (index!20238 (_ BitVec 32)) (x!49242 (_ BitVec 32))) (Undefined!4506) (MissingVacant!4506 (index!20239 (_ BitVec 32))) )
))
(declare-fun lt!241586 () SeekEntryResult!4506)

(assert (=> b!525568 (= res!322444 (or (= lt!241586 (MissingZero!4506 i!1204)) (= lt!241586 (MissingVacant!4506 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33367 (_ BitVec 32)) SeekEntryResult!4506)

(assert (=> b!525568 (= lt!241586 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525569 () Bool)

(declare-fun e!306418 () Bool)

(assert (=> b!525569 (= e!306418 false)))

(declare-fun b!525570 () Bool)

(declare-fun res!322443 () Bool)

(assert (=> b!525570 (=> (not res!322443) (not e!306416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33367 (_ BitVec 32)) Bool)

(assert (=> b!525570 (= res!322443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525571 () Bool)

(declare-fun e!306413 () Bool)

(assert (=> b!525571 (= e!306413 (= (seekEntryOrOpen!0 (select (arr!16032 a!3235) j!176) a!3235 mask!3524) (Found!4506 j!176)))))

(declare-fun b!525572 () Bool)

(declare-fun res!322441 () Bool)

(assert (=> b!525572 (=> (not res!322441) (not e!306412))))

(declare-fun arrayContainsKey!0 (array!33367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525572 (= res!322441 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525573 () Bool)

(declare-fun res!322434 () Bool)

(assert (=> b!525573 (=> (not res!322434) (not e!306412))))

(assert (=> b!525573 (= res!322434 (validKeyInArray!0 k!2280))))

(declare-fun b!525574 () Bool)

(declare-fun e!306417 () Bool)

(assert (=> b!525574 (= e!306416 (not e!306417))))

(declare-fun res!322440 () Bool)

(assert (=> b!525574 (=> res!322440 e!306417)))

(declare-fun lt!241588 () (_ BitVec 64))

(declare-fun lt!241593 () SeekEntryResult!4506)

(declare-fun lt!241594 () (_ BitVec 32))

(declare-fun lt!241591 () array!33367)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33367 (_ BitVec 32)) SeekEntryResult!4506)

(assert (=> b!525574 (= res!322440 (= lt!241593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241594 lt!241588 lt!241591 mask!3524)))))

(declare-fun lt!241589 () (_ BitVec 32))

(assert (=> b!525574 (= lt!241593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241589 (select (arr!16032 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525574 (= lt!241594 (toIndex!0 lt!241588 mask!3524))))

(assert (=> b!525574 (= lt!241588 (select (store (arr!16032 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525574 (= lt!241589 (toIndex!0 (select (arr!16032 a!3235) j!176) mask!3524))))

(assert (=> b!525574 (= lt!241591 (array!33368 (store (arr!16032 a!3235) i!1204 k!2280) (size!16396 a!3235)))))

(assert (=> b!525574 e!306413))

(declare-fun res!322439 () Bool)

(assert (=> b!525574 (=> (not res!322439) (not e!306413))))

(assert (=> b!525574 (= res!322439 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16490 0))(
  ( (Unit!16491) )
))
(declare-fun lt!241595 () Unit!16490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33367 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16490)

(assert (=> b!525574 (= lt!241595 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525575 () Bool)

(declare-fun e!306415 () Unit!16490)

(declare-fun Unit!16492 () Unit!16490)

(assert (=> b!525575 (= e!306415 Unit!16492)))

(declare-fun b!525576 () Bool)

(declare-fun Unit!16493 () Unit!16490)

(assert (=> b!525576 (= e!306415 Unit!16493)))

(declare-fun lt!241590 () Unit!16490)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33367 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16490)

(assert (=> b!525576 (= lt!241590 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241589 #b00000000000000000000000000000000 (index!20238 lt!241593) (x!49242 lt!241593) mask!3524))))

(declare-fun res!322438 () Bool)

(assert (=> b!525576 (= res!322438 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241589 lt!241588 lt!241591 mask!3524) (Intermediate!4506 false (index!20238 lt!241593) (x!49242 lt!241593))))))

(assert (=> b!525576 (=> (not res!322438) (not e!306418))))

(assert (=> b!525576 e!306418))

(declare-fun b!525577 () Bool)

(assert (=> b!525577 (= e!306417 true)))

(assert (=> b!525577 (= (index!20238 lt!241593) i!1204)))

(declare-fun lt!241587 () Unit!16490)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33367 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16490)

(assert (=> b!525577 (= lt!241587 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241589 #b00000000000000000000000000000000 (index!20238 lt!241593) (x!49242 lt!241593) mask!3524))))

(assert (=> b!525577 (and (or (= (select (arr!16032 a!3235) (index!20238 lt!241593)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16032 a!3235) (index!20238 lt!241593)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16032 a!3235) (index!20238 lt!241593)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16032 a!3235) (index!20238 lt!241593)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241592 () Unit!16490)

(assert (=> b!525577 (= lt!241592 e!306415)))

(declare-fun c!61871 () Bool)

(assert (=> b!525577 (= c!61871 (= (select (arr!16032 a!3235) (index!20238 lt!241593)) (select (arr!16032 a!3235) j!176)))))

(assert (=> b!525577 (and (bvslt (x!49242 lt!241593) #b01111111111111111111111111111110) (or (= (select (arr!16032 a!3235) (index!20238 lt!241593)) (select (arr!16032 a!3235) j!176)) (= (select (arr!16032 a!3235) (index!20238 lt!241593)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16032 a!3235) (index!20238 lt!241593)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525578 () Bool)

(declare-fun res!322442 () Bool)

(assert (=> b!525578 (=> res!322442 e!306417)))

(assert (=> b!525578 (= res!322442 (or (undefined!5318 lt!241593) (not (is-Intermediate!4506 lt!241593))))))

(assert (= (and start!47770 res!322436) b!525565))

(assert (= (and b!525565 res!322445) b!525566))

(assert (= (and b!525566 res!322437) b!525573))

(assert (= (and b!525573 res!322434) b!525572))

(assert (= (and b!525572 res!322441) b!525568))

(assert (= (and b!525568 res!322444) b!525570))

(assert (= (and b!525570 res!322443) b!525567))

(assert (= (and b!525567 res!322435) b!525574))

(assert (= (and b!525574 res!322439) b!525571))

(assert (= (and b!525574 (not res!322440)) b!525578))

(assert (= (and b!525578 (not res!322442)) b!525577))

(assert (= (and b!525577 c!61871) b!525576))

(assert (= (and b!525577 (not c!61871)) b!525575))

(assert (= (and b!525576 res!322438) b!525569))

(declare-fun m!506275 () Bool)

(assert (=> b!525577 m!506275))

(declare-fun m!506277 () Bool)

(assert (=> b!525577 m!506277))

(declare-fun m!506279 () Bool)

(assert (=> b!525577 m!506279))

(declare-fun m!506281 () Bool)

(assert (=> b!525573 m!506281))

(assert (=> b!525571 m!506279))

(assert (=> b!525571 m!506279))

(declare-fun m!506283 () Bool)

(assert (=> b!525571 m!506283))

(declare-fun m!506285 () Bool)

(assert (=> b!525572 m!506285))

(assert (=> b!525566 m!506279))

(assert (=> b!525566 m!506279))

(declare-fun m!506287 () Bool)

(assert (=> b!525566 m!506287))

(assert (=> b!525574 m!506279))

(declare-fun m!506289 () Bool)

(assert (=> b!525574 m!506289))

(declare-fun m!506291 () Bool)

(assert (=> b!525574 m!506291))

(declare-fun m!506293 () Bool)

(assert (=> b!525574 m!506293))

(declare-fun m!506295 () Bool)

(assert (=> b!525574 m!506295))

(declare-fun m!506297 () Bool)

(assert (=> b!525574 m!506297))

(declare-fun m!506299 () Bool)

(assert (=> b!525574 m!506299))

(assert (=> b!525574 m!506279))

(declare-fun m!506301 () Bool)

(assert (=> b!525574 m!506301))

(assert (=> b!525574 m!506279))

(declare-fun m!506303 () Bool)

(assert (=> b!525574 m!506303))

(declare-fun m!506305 () Bool)

(assert (=> start!47770 m!506305))

(declare-fun m!506307 () Bool)

(assert (=> start!47770 m!506307))

(declare-fun m!506309 () Bool)

(assert (=> b!525567 m!506309))

(declare-fun m!506311 () Bool)

(assert (=> b!525570 m!506311))

(declare-fun m!506313 () Bool)

(assert (=> b!525568 m!506313))

(declare-fun m!506315 () Bool)

(assert (=> b!525576 m!506315))

(declare-fun m!506317 () Bool)

(assert (=> b!525576 m!506317))

(push 1)

