; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52412 () Bool)

(assert start!52412)

(declare-fun b!571451 () Bool)

(declare-fun res!361112 () Bool)

(declare-fun e!328682 () Bool)

(assert (=> b!571451 (=> (not res!361112) (not e!328682))))

(declare-datatypes ((array!35763 0))(
  ( (array!35764 (arr!17166 (Array (_ BitVec 32) (_ BitVec 64))) (size!17530 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35763)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35763 (_ BitVec 32)) Bool)

(assert (=> b!571451 (= res!361112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!361118 () Bool)

(declare-fun e!328681 () Bool)

(assert (=> start!52412 (=> (not res!361118) (not e!328681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52412 (= res!361118 (validMask!0 mask!3119))))

(assert (=> start!52412 e!328681))

(assert (=> start!52412 true))

(declare-fun array_inv!12940 (array!35763) Bool)

(assert (=> start!52412 (array_inv!12940 a!3118)))

(declare-fun lt!260655 () (_ BitVec 64))

(declare-fun b!571452 () Bool)

(declare-fun lt!260651 () array!35763)

(declare-fun e!328684 () Bool)

(declare-datatypes ((SeekEntryResult!5622 0))(
  ( (MissingZero!5622 (index!24715 (_ BitVec 32))) (Found!5622 (index!24716 (_ BitVec 32))) (Intermediate!5622 (undefined!6434 Bool) (index!24717 (_ BitVec 32)) (x!53622 (_ BitVec 32))) (Undefined!5622) (MissingVacant!5622 (index!24718 (_ BitVec 32))) )
))
(declare-fun lt!260652 () SeekEntryResult!5622)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35763 (_ BitVec 32)) SeekEntryResult!5622)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35763 (_ BitVec 32)) SeekEntryResult!5622)

(assert (=> b!571452 (= e!328684 (= (seekEntryOrOpen!0 lt!260655 lt!260651 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53622 lt!260652) (index!24717 lt!260652) (index!24717 lt!260652) lt!260655 lt!260651 mask!3119)))))

(declare-fun b!571453 () Bool)

(declare-fun e!328680 () Bool)

(assert (=> b!571453 (= e!328682 e!328680)))

(declare-fun res!361116 () Bool)

(assert (=> b!571453 (=> (not res!361116) (not e!328680))))

(declare-fun lt!260656 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35763 (_ BitVec 32)) SeekEntryResult!5622)

(assert (=> b!571453 (= res!361116 (= lt!260652 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260656 lt!260655 lt!260651 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260657 () (_ BitVec 32))

(assert (=> b!571453 (= lt!260652 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260657 (select (arr!17166 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571453 (= lt!260656 (toIndex!0 lt!260655 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571453 (= lt!260655 (select (store (arr!17166 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571453 (= lt!260657 (toIndex!0 (select (arr!17166 a!3118) j!142) mask!3119))))

(assert (=> b!571453 (= lt!260651 (array!35764 (store (arr!17166 a!3118) i!1132 k!1914) (size!17530 a!3118)))))

(declare-fun b!571454 () Bool)

(declare-fun res!361114 () Bool)

(assert (=> b!571454 (=> (not res!361114) (not e!328681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571454 (= res!361114 (validKeyInArray!0 (select (arr!17166 a!3118) j!142)))))

(declare-fun b!571455 () Bool)

(declare-fun e!328683 () Bool)

(assert (=> b!571455 (= e!328683 e!328684)))

(declare-fun res!361120 () Bool)

(assert (=> b!571455 (=> (not res!361120) (not e!328684))))

(declare-fun lt!260650 () SeekEntryResult!5622)

(assert (=> b!571455 (= res!361120 (= lt!260650 (seekKeyOrZeroReturnVacant!0 (x!53622 lt!260652) (index!24717 lt!260652) (index!24717 lt!260652) (select (arr!17166 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571456 () Bool)

(assert (=> b!571456 (= e!328680 (not true))))

(declare-fun e!328686 () Bool)

(assert (=> b!571456 e!328686))

(declare-fun res!361113 () Bool)

(assert (=> b!571456 (=> (not res!361113) (not e!328686))))

(assert (=> b!571456 (= res!361113 (= lt!260650 (Found!5622 j!142)))))

(assert (=> b!571456 (= lt!260650 (seekEntryOrOpen!0 (select (arr!17166 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571456 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17946 0))(
  ( (Unit!17947) )
))
(declare-fun lt!260654 () Unit!17946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17946)

(assert (=> b!571456 (= lt!260654 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571457 () Bool)

(declare-fun e!328687 () Bool)

(assert (=> b!571457 (= e!328686 e!328687)))

(declare-fun res!361115 () Bool)

(assert (=> b!571457 (=> res!361115 e!328687)))

(assert (=> b!571457 (= res!361115 (or (undefined!6434 lt!260652) (not (is-Intermediate!5622 lt!260652))))))

(declare-fun b!571458 () Bool)

(declare-fun res!361117 () Bool)

(assert (=> b!571458 (=> (not res!361117) (not e!328681))))

(assert (=> b!571458 (= res!361117 (and (= (size!17530 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17530 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17530 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571459 () Bool)

(assert (=> b!571459 (= e!328681 e!328682)))

(declare-fun res!361111 () Bool)

(assert (=> b!571459 (=> (not res!361111) (not e!328682))))

(declare-fun lt!260653 () SeekEntryResult!5622)

(assert (=> b!571459 (= res!361111 (or (= lt!260653 (MissingZero!5622 i!1132)) (= lt!260653 (MissingVacant!5622 i!1132))))))

(assert (=> b!571459 (= lt!260653 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571460 () Bool)

(declare-fun res!361119 () Bool)

(assert (=> b!571460 (=> (not res!361119) (not e!328681))))

(declare-fun arrayContainsKey!0 (array!35763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571460 (= res!361119 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571461 () Bool)

(declare-fun res!361110 () Bool)

(assert (=> b!571461 (=> (not res!361110) (not e!328681))))

(assert (=> b!571461 (= res!361110 (validKeyInArray!0 k!1914))))

(declare-fun b!571462 () Bool)

(declare-fun res!361121 () Bool)

(assert (=> b!571462 (=> (not res!361121) (not e!328682))))

(declare-datatypes ((List!11299 0))(
  ( (Nil!11296) (Cons!11295 (h!12322 (_ BitVec 64)) (t!17535 List!11299)) )
))
(declare-fun arrayNoDuplicates!0 (array!35763 (_ BitVec 32) List!11299) Bool)

(assert (=> b!571462 (= res!361121 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11296))))

(declare-fun b!571463 () Bool)

(assert (=> b!571463 (= e!328687 e!328683)))

(declare-fun res!361109 () Bool)

(assert (=> b!571463 (=> res!361109 e!328683)))

(declare-fun lt!260649 () (_ BitVec 64))

(assert (=> b!571463 (= res!361109 (or (= lt!260649 (select (arr!17166 a!3118) j!142)) (= lt!260649 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571463 (= lt!260649 (select (arr!17166 a!3118) (index!24717 lt!260652)))))

(assert (= (and start!52412 res!361118) b!571458))

(assert (= (and b!571458 res!361117) b!571454))

(assert (= (and b!571454 res!361114) b!571461))

(assert (= (and b!571461 res!361110) b!571460))

(assert (= (and b!571460 res!361119) b!571459))

(assert (= (and b!571459 res!361111) b!571451))

(assert (= (and b!571451 res!361112) b!571462))

(assert (= (and b!571462 res!361121) b!571453))

(assert (= (and b!571453 res!361116) b!571456))

(assert (= (and b!571456 res!361113) b!571457))

(assert (= (and b!571457 (not res!361115)) b!571463))

(assert (= (and b!571463 (not res!361109)) b!571455))

(assert (= (and b!571455 res!361120) b!571452))

(declare-fun m!550363 () Bool)

(assert (=> b!571459 m!550363))

(declare-fun m!550365 () Bool)

(assert (=> b!571462 m!550365))

(declare-fun m!550367 () Bool)

(assert (=> b!571454 m!550367))

(assert (=> b!571454 m!550367))

(declare-fun m!550369 () Bool)

(assert (=> b!571454 m!550369))

(assert (=> b!571463 m!550367))

(declare-fun m!550371 () Bool)

(assert (=> b!571463 m!550371))

(declare-fun m!550373 () Bool)

(assert (=> start!52412 m!550373))

(declare-fun m!550375 () Bool)

(assert (=> start!52412 m!550375))

(declare-fun m!550377 () Bool)

(assert (=> b!571460 m!550377))

(assert (=> b!571455 m!550367))

(assert (=> b!571455 m!550367))

(declare-fun m!550379 () Bool)

(assert (=> b!571455 m!550379))

(assert (=> b!571453 m!550367))

(declare-fun m!550381 () Bool)

(assert (=> b!571453 m!550381))

(declare-fun m!550383 () Bool)

(assert (=> b!571453 m!550383))

(assert (=> b!571453 m!550367))

(declare-fun m!550385 () Bool)

(assert (=> b!571453 m!550385))

(declare-fun m!550387 () Bool)

(assert (=> b!571453 m!550387))

(assert (=> b!571453 m!550367))

(declare-fun m!550389 () Bool)

(assert (=> b!571453 m!550389))

(declare-fun m!550391 () Bool)

(assert (=> b!571453 m!550391))

(assert (=> b!571456 m!550367))

(assert (=> b!571456 m!550367))

(declare-fun m!550393 () Bool)

(assert (=> b!571456 m!550393))

(declare-fun m!550395 () Bool)

(assert (=> b!571456 m!550395))

(declare-fun m!550397 () Bool)

(assert (=> b!571456 m!550397))

(declare-fun m!550399 () Bool)

(assert (=> b!571461 m!550399))

(declare-fun m!550401 () Bool)

(assert (=> b!571452 m!550401))

(declare-fun m!550403 () Bool)

(assert (=> b!571452 m!550403))

(declare-fun m!550405 () Bool)

(assert (=> b!571451 m!550405))

(push 1)

