; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51588 () Bool)

(assert start!51588)

(declare-fun b!564112 () Bool)

(declare-fun res!355419 () Bool)

(declare-fun e!324961 () Bool)

(assert (=> b!564112 (=> (not res!355419) (not e!324961))))

(declare-datatypes ((array!35407 0))(
  ( (array!35408 (arr!17000 (Array (_ BitVec 32) (_ BitVec 64))) (size!17364 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35407)

(declare-datatypes ((List!11133 0))(
  ( (Nil!11130) (Cons!11129 (h!12132 (_ BitVec 64)) (t!17369 List!11133)) )
))
(declare-fun arrayNoDuplicates!0 (array!35407 (_ BitVec 32) List!11133) Bool)

(assert (=> b!564112 (= res!355419 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11130))))

(declare-fun b!564113 () Bool)

(assert (=> b!564113 (= e!324961 false)))

(declare-fun lt!257458 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564113 (= lt!257458 (toIndex!0 (select (arr!17000 a!3118) j!142) mask!3119))))

(declare-fun b!564114 () Bool)

(declare-fun res!355415 () Bool)

(declare-fun e!324960 () Bool)

(assert (=> b!564114 (=> (not res!355415) (not e!324960))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564114 (= res!355415 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564115 () Bool)

(assert (=> b!564115 (= e!324960 e!324961)))

(declare-fun res!355414 () Bool)

(assert (=> b!564115 (=> (not res!355414) (not e!324961))))

(declare-datatypes ((SeekEntryResult!5456 0))(
  ( (MissingZero!5456 (index!24051 (_ BitVec 32))) (Found!5456 (index!24052 (_ BitVec 32))) (Intermediate!5456 (undefined!6268 Bool) (index!24053 (_ BitVec 32)) (x!52954 (_ BitVec 32))) (Undefined!5456) (MissingVacant!5456 (index!24054 (_ BitVec 32))) )
))
(declare-fun lt!257459 () SeekEntryResult!5456)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564115 (= res!355414 (or (= lt!257459 (MissingZero!5456 i!1132)) (= lt!257459 (MissingVacant!5456 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35407 (_ BitVec 32)) SeekEntryResult!5456)

(assert (=> b!564115 (= lt!257459 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564116 () Bool)

(declare-fun res!355418 () Bool)

(assert (=> b!564116 (=> (not res!355418) (not e!324960))))

(assert (=> b!564116 (= res!355418 (and (= (size!17364 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17364 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17364 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!355417 () Bool)

(assert (=> start!51588 (=> (not res!355417) (not e!324960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51588 (= res!355417 (validMask!0 mask!3119))))

(assert (=> start!51588 e!324960))

(assert (=> start!51588 true))

(declare-fun array_inv!12774 (array!35407) Bool)

(assert (=> start!51588 (array_inv!12774 a!3118)))

(declare-fun b!564117 () Bool)

(declare-fun res!355420 () Bool)

(assert (=> b!564117 (=> (not res!355420) (not e!324961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35407 (_ BitVec 32)) Bool)

(assert (=> b!564117 (= res!355420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564118 () Bool)

(declare-fun res!355416 () Bool)

(assert (=> b!564118 (=> (not res!355416) (not e!324960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564118 (= res!355416 (validKeyInArray!0 k!1914))))

(declare-fun b!564119 () Bool)

(declare-fun res!355421 () Bool)

(assert (=> b!564119 (=> (not res!355421) (not e!324960))))

(assert (=> b!564119 (= res!355421 (validKeyInArray!0 (select (arr!17000 a!3118) j!142)))))

(assert (= (and start!51588 res!355417) b!564116))

(assert (= (and b!564116 res!355418) b!564119))

(assert (= (and b!564119 res!355421) b!564118))

(assert (= (and b!564118 res!355416) b!564114))

(assert (= (and b!564114 res!355415) b!564115))

(assert (= (and b!564115 res!355414) b!564117))

(assert (= (and b!564117 res!355420) b!564112))

(assert (= (and b!564112 res!355419) b!564113))

(declare-fun m!542585 () Bool)

(assert (=> b!564113 m!542585))

(assert (=> b!564113 m!542585))

(declare-fun m!542587 () Bool)

(assert (=> b!564113 m!542587))

(declare-fun m!542589 () Bool)

(assert (=> b!564112 m!542589))

(declare-fun m!542591 () Bool)

(assert (=> start!51588 m!542591))

(declare-fun m!542593 () Bool)

(assert (=> start!51588 m!542593))

(declare-fun m!542595 () Bool)

(assert (=> b!564115 m!542595))

(declare-fun m!542597 () Bool)

(assert (=> b!564117 m!542597))

(declare-fun m!542599 () Bool)

(assert (=> b!564114 m!542599))

(declare-fun m!542601 () Bool)

(assert (=> b!564118 m!542601))

(assert (=> b!564119 m!542585))

(assert (=> b!564119 m!542585))

(declare-fun m!542603 () Bool)

(assert (=> b!564119 m!542603))

(push 1)

(assert (not b!564113))

(assert (not b!564115))

