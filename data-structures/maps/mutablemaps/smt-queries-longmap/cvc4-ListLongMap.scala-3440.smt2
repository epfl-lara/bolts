; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47774 () Bool)

(assert start!47774)

(declare-fun res!322510 () Bool)

(declare-fun e!306459 () Bool)

(assert (=> start!47774 (=> (not res!322510) (not e!306459))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47774 (= res!322510 (validMask!0 mask!3524))))

(assert (=> start!47774 e!306459))

(assert (=> start!47774 true))

(declare-datatypes ((array!33371 0))(
  ( (array!33372 (arr!16034 (Array (_ BitVec 32) (_ BitVec 64))) (size!16398 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33371)

(declare-fun array_inv!11808 (array!33371) Bool)

(assert (=> start!47774 (array_inv!11808 a!3235)))

(declare-fun b!525649 () Bool)

(declare-fun e!306458 () Bool)

(declare-fun e!306454 () Bool)

(assert (=> b!525649 (= e!306458 (not e!306454))))

(declare-fun res!322508 () Bool)

(assert (=> b!525649 (=> res!322508 e!306454)))

(declare-fun lt!241653 () array!33371)

(declare-fun lt!241648 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4508 0))(
  ( (MissingZero!4508 (index!20244 (_ BitVec 32))) (Found!4508 (index!20245 (_ BitVec 32))) (Intermediate!4508 (undefined!5320 Bool) (index!20246 (_ BitVec 32)) (x!49244 (_ BitVec 32))) (Undefined!4508) (MissingVacant!4508 (index!20247 (_ BitVec 32))) )
))
(declare-fun lt!241654 () SeekEntryResult!4508)

(declare-fun lt!241655 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33371 (_ BitVec 32)) SeekEntryResult!4508)

(assert (=> b!525649 (= res!322508 (= lt!241654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241655 lt!241648 lt!241653 mask!3524)))))

(declare-fun lt!241652 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!525649 (= lt!241654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241652 (select (arr!16034 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525649 (= lt!241655 (toIndex!0 lt!241648 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!525649 (= lt!241648 (select (store (arr!16034 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525649 (= lt!241652 (toIndex!0 (select (arr!16034 a!3235) j!176) mask!3524))))

(assert (=> b!525649 (= lt!241653 (array!33372 (store (arr!16034 a!3235) i!1204 k!2280) (size!16398 a!3235)))))

(declare-fun e!306457 () Bool)

(assert (=> b!525649 e!306457))

(declare-fun res!322515 () Bool)

(assert (=> b!525649 (=> (not res!322515) (not e!306457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33371 (_ BitVec 32)) Bool)

(assert (=> b!525649 (= res!322515 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16498 0))(
  ( (Unit!16499) )
))
(declare-fun lt!241649 () Unit!16498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33371 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16498)

(assert (=> b!525649 (= lt!241649 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525650 () Bool)

(declare-fun e!306455 () Bool)

(assert (=> b!525650 (= e!306455 false)))

(declare-fun b!525651 () Bool)

(declare-fun res!322506 () Bool)

(assert (=> b!525651 (=> (not res!322506) (not e!306459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525651 (= res!322506 (validKeyInArray!0 k!2280))))

(declare-fun b!525652 () Bool)

(declare-fun res!322511 () Bool)

(assert (=> b!525652 (=> res!322511 e!306454)))

(assert (=> b!525652 (= res!322511 (or (undefined!5320 lt!241654) (not (is-Intermediate!4508 lt!241654))))))

(declare-fun b!525653 () Bool)

(declare-fun res!322512 () Bool)

(assert (=> b!525653 (=> (not res!322512) (not e!306459))))

(assert (=> b!525653 (= res!322512 (and (= (size!16398 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16398 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16398 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525654 () Bool)

(declare-fun res!322514 () Bool)

(assert (=> b!525654 (=> (not res!322514) (not e!306458))))

(assert (=> b!525654 (= res!322514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525655 () Bool)

(declare-fun res!322516 () Bool)

(assert (=> b!525655 (=> (not res!322516) (not e!306459))))

(assert (=> b!525655 (= res!322516 (validKeyInArray!0 (select (arr!16034 a!3235) j!176)))))

(declare-fun b!525656 () Bool)

(declare-fun e!306456 () Unit!16498)

(declare-fun Unit!16500 () Unit!16498)

(assert (=> b!525656 (= e!306456 Unit!16500)))

(declare-fun lt!241651 () Unit!16498)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16498)

(assert (=> b!525656 (= lt!241651 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241652 #b00000000000000000000000000000000 (index!20246 lt!241654) (x!49244 lt!241654) mask!3524))))

(declare-fun res!322513 () Bool)

(assert (=> b!525656 (= res!322513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241652 lt!241648 lt!241653 mask!3524) (Intermediate!4508 false (index!20246 lt!241654) (x!49244 lt!241654))))))

(assert (=> b!525656 (=> (not res!322513) (not e!306455))))

(assert (=> b!525656 e!306455))

(declare-fun b!525657 () Bool)

(assert (=> b!525657 (= e!306454 true)))

(assert (=> b!525657 (= (index!20246 lt!241654) i!1204)))

(declare-fun lt!241647 () Unit!16498)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16498)

(assert (=> b!525657 (= lt!241647 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241652 #b00000000000000000000000000000000 (index!20246 lt!241654) (x!49244 lt!241654) mask!3524))))

(assert (=> b!525657 (and (or (= (select (arr!16034 a!3235) (index!20246 lt!241654)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16034 a!3235) (index!20246 lt!241654)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16034 a!3235) (index!20246 lt!241654)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16034 a!3235) (index!20246 lt!241654)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241646 () Unit!16498)

(assert (=> b!525657 (= lt!241646 e!306456)))

(declare-fun c!61877 () Bool)

(assert (=> b!525657 (= c!61877 (= (select (arr!16034 a!3235) (index!20246 lt!241654)) (select (arr!16034 a!3235) j!176)))))

(assert (=> b!525657 (and (bvslt (x!49244 lt!241654) #b01111111111111111111111111111110) (or (= (select (arr!16034 a!3235) (index!20246 lt!241654)) (select (arr!16034 a!3235) j!176)) (= (select (arr!16034 a!3235) (index!20246 lt!241654)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16034 a!3235) (index!20246 lt!241654)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525658 () Bool)

(declare-fun res!322509 () Bool)

(assert (=> b!525658 (=> (not res!322509) (not e!306458))))

(declare-datatypes ((List!10245 0))(
  ( (Nil!10242) (Cons!10241 (h!11172 (_ BitVec 64)) (t!16481 List!10245)) )
))
(declare-fun arrayNoDuplicates!0 (array!33371 (_ BitVec 32) List!10245) Bool)

(assert (=> b!525658 (= res!322509 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10242))))

(declare-fun b!525659 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33371 (_ BitVec 32)) SeekEntryResult!4508)

(assert (=> b!525659 (= e!306457 (= (seekEntryOrOpen!0 (select (arr!16034 a!3235) j!176) a!3235 mask!3524) (Found!4508 j!176)))))

(declare-fun b!525660 () Bool)

(assert (=> b!525660 (= e!306459 e!306458)))

(declare-fun res!322507 () Bool)

(assert (=> b!525660 (=> (not res!322507) (not e!306458))))

(declare-fun lt!241650 () SeekEntryResult!4508)

(assert (=> b!525660 (= res!322507 (or (= lt!241650 (MissingZero!4508 i!1204)) (= lt!241650 (MissingVacant!4508 i!1204))))))

(assert (=> b!525660 (= lt!241650 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525661 () Bool)

(declare-fun res!322517 () Bool)

(assert (=> b!525661 (=> (not res!322517) (not e!306459))))

(declare-fun arrayContainsKey!0 (array!33371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525661 (= res!322517 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525662 () Bool)

(declare-fun Unit!16501 () Unit!16498)

(assert (=> b!525662 (= e!306456 Unit!16501)))

(assert (= (and start!47774 res!322510) b!525653))

(assert (= (and b!525653 res!322512) b!525655))

(assert (= (and b!525655 res!322516) b!525651))

(assert (= (and b!525651 res!322506) b!525661))

(assert (= (and b!525661 res!322517) b!525660))

(assert (= (and b!525660 res!322507) b!525654))

(assert (= (and b!525654 res!322514) b!525658))

(assert (= (and b!525658 res!322509) b!525649))

(assert (= (and b!525649 res!322515) b!525659))

(assert (= (and b!525649 (not res!322508)) b!525652))

(assert (= (and b!525652 (not res!322511)) b!525657))

(assert (= (and b!525657 c!61877) b!525656))

(assert (= (and b!525657 (not c!61877)) b!525662))

(assert (= (and b!525656 res!322513) b!525650))

(declare-fun m!506363 () Bool)

(assert (=> b!525656 m!506363))

(declare-fun m!506365 () Bool)

(assert (=> b!525656 m!506365))

(declare-fun m!506367 () Bool)

(assert (=> b!525658 m!506367))

(declare-fun m!506369 () Bool)

(assert (=> b!525661 m!506369))

(declare-fun m!506371 () Bool)

(assert (=> b!525651 m!506371))

(declare-fun m!506373 () Bool)

(assert (=> b!525657 m!506373))

(declare-fun m!506375 () Bool)

(assert (=> b!525657 m!506375))

(declare-fun m!506377 () Bool)

(assert (=> b!525657 m!506377))

(declare-fun m!506379 () Bool)

(assert (=> b!525654 m!506379))

(declare-fun m!506381 () Bool)

(assert (=> start!47774 m!506381))

(declare-fun m!506383 () Bool)

(assert (=> start!47774 m!506383))

(declare-fun m!506385 () Bool)

(assert (=> b!525649 m!506385))

(declare-fun m!506387 () Bool)

(assert (=> b!525649 m!506387))

(assert (=> b!525649 m!506377))

(declare-fun m!506389 () Bool)

(assert (=> b!525649 m!506389))

(assert (=> b!525649 m!506377))

(declare-fun m!506391 () Bool)

(assert (=> b!525649 m!506391))

(assert (=> b!525649 m!506377))

(declare-fun m!506393 () Bool)

(assert (=> b!525649 m!506393))

(declare-fun m!506395 () Bool)

(assert (=> b!525649 m!506395))

(declare-fun m!506397 () Bool)

(assert (=> b!525649 m!506397))

(declare-fun m!506399 () Bool)

(assert (=> b!525649 m!506399))

(assert (=> b!525659 m!506377))

(assert (=> b!525659 m!506377))

(declare-fun m!506401 () Bool)

(assert (=> b!525659 m!506401))

(assert (=> b!525655 m!506377))

(assert (=> b!525655 m!506377))

(declare-fun m!506403 () Bool)

(assert (=> b!525655 m!506403))

(declare-fun m!506405 () Bool)

(assert (=> b!525660 m!506405))

(push 1)

