; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48142 () Bool)

(assert start!48142)

(declare-fun b!529942 () Bool)

(declare-fun res!325799 () Bool)

(declare-fun e!308790 () Bool)

(assert (=> b!529942 (=> (not res!325799) (not e!308790))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529942 (= res!325799 (validKeyInArray!0 k!2280))))

(declare-fun b!529943 () Bool)

(declare-fun res!325803 () Bool)

(declare-fun e!308793 () Bool)

(assert (=> b!529943 (=> (not res!325803) (not e!308793))))

(declare-datatypes ((array!33538 0))(
  ( (array!33539 (arr!16113 (Array (_ BitVec 32) (_ BitVec 64))) (size!16477 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33538)

(declare-datatypes ((List!10324 0))(
  ( (Nil!10321) (Cons!10320 (h!11260 (_ BitVec 64)) (t!16560 List!10324)) )
))
(declare-fun arrayNoDuplicates!0 (array!33538 (_ BitVec 32) List!10324) Bool)

(assert (=> b!529943 (= res!325803 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10321))))

(declare-fun b!529944 () Bool)

(declare-fun res!325800 () Bool)

(assert (=> b!529944 (=> (not res!325800) (not e!308793))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33538 (_ BitVec 32)) Bool)

(assert (=> b!529944 (= res!325800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529945 () Bool)

(declare-fun res!325805 () Bool)

(assert (=> b!529945 (=> (not res!325805) (not e!308790))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!529945 (= res!325805 (and (= (size!16477 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16477 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16477 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529946 () Bool)

(assert (=> b!529946 (= e!308790 e!308793)))

(declare-fun res!325804 () Bool)

(assert (=> b!529946 (=> (not res!325804) (not e!308793))))

(declare-datatypes ((SeekEntryResult!4587 0))(
  ( (MissingZero!4587 (index!20572 (_ BitVec 32))) (Found!4587 (index!20573 (_ BitVec 32))) (Intermediate!4587 (undefined!5399 Bool) (index!20574 (_ BitVec 32)) (x!49572 (_ BitVec 32))) (Undefined!4587) (MissingVacant!4587 (index!20575 (_ BitVec 32))) )
))
(declare-fun lt!244495 () SeekEntryResult!4587)

(assert (=> b!529946 (= res!325804 (or (= lt!244495 (MissingZero!4587 i!1204)) (= lt!244495 (MissingVacant!4587 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33538 (_ BitVec 32)) SeekEntryResult!4587)

(assert (=> b!529946 (= lt!244495 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529947 () Bool)

(declare-fun res!325798 () Bool)

(assert (=> b!529947 (=> (not res!325798) (not e!308790))))

(declare-fun arrayContainsKey!0 (array!33538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529947 (= res!325798 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529948 () Bool)

(declare-fun e!308792 () Bool)

(declare-fun e!308791 () Bool)

(assert (=> b!529948 (= e!308792 e!308791)))

(declare-fun res!325801 () Bool)

(assert (=> b!529948 (=> res!325801 e!308791)))

(declare-fun lt!244502 () Bool)

(declare-fun lt!244501 () SeekEntryResult!4587)

(assert (=> b!529948 (= res!325801 (or (and (not lt!244502) (undefined!5399 lt!244501)) (and (not lt!244502) (not (undefined!5399 lt!244501)))))))

(assert (=> b!529948 (= lt!244502 (not (is-Intermediate!4587 lt!244501)))))

(declare-fun res!325802 () Bool)

(assert (=> start!48142 (=> (not res!325802) (not e!308790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48142 (= res!325802 (validMask!0 mask!3524))))

(assert (=> start!48142 e!308790))

(assert (=> start!48142 true))

(declare-fun array_inv!11887 (array!33538) Bool)

(assert (=> start!48142 (array_inv!11887 a!3235)))

(declare-fun e!308789 () Bool)

(declare-fun b!529949 () Bool)

(assert (=> b!529949 (= e!308789 (= (seekEntryOrOpen!0 (select (arr!16113 a!3235) j!176) a!3235 mask!3524) (Found!4587 j!176)))))

(declare-fun b!529950 () Bool)

(assert (=> b!529950 (= e!308791 true)))

(declare-fun lt!244500 () SeekEntryResult!4587)

(declare-fun lt!244496 () array!33538)

(declare-fun lt!244499 () (_ BitVec 64))

(assert (=> b!529950 (= lt!244500 (seekEntryOrOpen!0 lt!244499 lt!244496 mask!3524))))

(assert (=> b!529950 false))

(declare-fun b!529951 () Bool)

(declare-fun res!325807 () Bool)

(assert (=> b!529951 (=> (not res!325807) (not e!308790))))

(assert (=> b!529951 (= res!325807 (validKeyInArray!0 (select (arr!16113 a!3235) j!176)))))

(declare-fun b!529952 () Bool)

(assert (=> b!529952 (= e!308793 (not e!308792))))

(declare-fun res!325808 () Bool)

(assert (=> b!529952 (=> res!325808 e!308792)))

(declare-fun lt!244498 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33538 (_ BitVec 32)) SeekEntryResult!4587)

(assert (=> b!529952 (= res!325808 (= lt!244501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244498 lt!244499 lt!244496 mask!3524)))))

(declare-fun lt!244494 () (_ BitVec 32))

(assert (=> b!529952 (= lt!244501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244494 (select (arr!16113 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529952 (= lt!244498 (toIndex!0 lt!244499 mask!3524))))

(assert (=> b!529952 (= lt!244499 (select (store (arr!16113 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529952 (= lt!244494 (toIndex!0 (select (arr!16113 a!3235) j!176) mask!3524))))

(assert (=> b!529952 (= lt!244496 (array!33539 (store (arr!16113 a!3235) i!1204 k!2280) (size!16477 a!3235)))))

(assert (=> b!529952 e!308789))

(declare-fun res!325806 () Bool)

(assert (=> b!529952 (=> (not res!325806) (not e!308789))))

(assert (=> b!529952 (= res!325806 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16778 0))(
  ( (Unit!16779) )
))
(declare-fun lt!244497 () Unit!16778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16778)

(assert (=> b!529952 (= lt!244497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!48142 res!325802) b!529945))

(assert (= (and b!529945 res!325805) b!529951))

(assert (= (and b!529951 res!325807) b!529942))

(assert (= (and b!529942 res!325799) b!529947))

(assert (= (and b!529947 res!325798) b!529946))

(assert (= (and b!529946 res!325804) b!529944))

(assert (= (and b!529944 res!325800) b!529943))

(assert (= (and b!529943 res!325803) b!529952))

(assert (= (and b!529952 res!325806) b!529949))

(assert (= (and b!529952 (not res!325808)) b!529948))

(assert (= (and b!529948 (not res!325801)) b!529950))

(declare-fun m!510517 () Bool)

(assert (=> start!48142 m!510517))

(declare-fun m!510519 () Bool)

(assert (=> start!48142 m!510519))

(declare-fun m!510521 () Bool)

(assert (=> b!529943 m!510521))

(declare-fun m!510523 () Bool)

(assert (=> b!529947 m!510523))

(declare-fun m!510525 () Bool)

(assert (=> b!529946 m!510525))

(declare-fun m!510527 () Bool)

(assert (=> b!529944 m!510527))

(declare-fun m!510529 () Bool)

(assert (=> b!529951 m!510529))

(assert (=> b!529951 m!510529))

(declare-fun m!510531 () Bool)

(assert (=> b!529951 m!510531))

(assert (=> b!529949 m!510529))

(assert (=> b!529949 m!510529))

(declare-fun m!510533 () Bool)

(assert (=> b!529949 m!510533))

(declare-fun m!510535 () Bool)

(assert (=> b!529950 m!510535))

(declare-fun m!510537 () Bool)

(assert (=> b!529952 m!510537))

(assert (=> b!529952 m!510529))

(declare-fun m!510539 () Bool)

(assert (=> b!529952 m!510539))

(declare-fun m!510541 () Bool)

(assert (=> b!529952 m!510541))

(assert (=> b!529952 m!510529))

(declare-fun m!510543 () Bool)

(assert (=> b!529952 m!510543))

(assert (=> b!529952 m!510529))

(declare-fun m!510545 () Bool)

(assert (=> b!529952 m!510545))

(declare-fun m!510547 () Bool)

(assert (=> b!529952 m!510547))

(declare-fun m!510549 () Bool)

(assert (=> b!529952 m!510549))

(declare-fun m!510551 () Bool)

(assert (=> b!529952 m!510551))

(declare-fun m!510553 () Bool)

(assert (=> b!529942 m!510553))

(push 1)

