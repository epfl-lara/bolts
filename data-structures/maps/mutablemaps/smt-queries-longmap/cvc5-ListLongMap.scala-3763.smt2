; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51590 () Bool)

(assert start!51590)

(declare-fun b!564134 () Bool)

(declare-fun res!355442 () Bool)

(declare-fun e!324968 () Bool)

(assert (=> b!564134 (=> (not res!355442) (not e!324968))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564134 (= res!355442 (validKeyInArray!0 k!1914))))

(declare-fun b!564135 () Bool)

(declare-fun res!355441 () Bool)

(declare-fun e!324970 () Bool)

(assert (=> b!564135 (=> (not res!355441) (not e!324970))))

(declare-datatypes ((array!35409 0))(
  ( (array!35410 (arr!17001 (Array (_ BitVec 32) (_ BitVec 64))) (size!17365 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35409)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35409 (_ BitVec 32)) Bool)

(assert (=> b!564135 (= res!355441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564136 () Bool)

(declare-fun res!355438 () Bool)

(assert (=> b!564136 (=> (not res!355438) (not e!324968))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564136 (= res!355438 (and (= (size!17365 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17365 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17365 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!355437 () Bool)

(assert (=> start!51590 (=> (not res!355437) (not e!324968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51590 (= res!355437 (validMask!0 mask!3119))))

(assert (=> start!51590 e!324968))

(assert (=> start!51590 true))

(declare-fun array_inv!12775 (array!35409) Bool)

(assert (=> start!51590 (array_inv!12775 a!3118)))

(declare-fun b!564137 () Bool)

(assert (=> b!564137 (= e!324970 false)))

(declare-fun lt!257464 () Bool)

(declare-datatypes ((List!11134 0))(
  ( (Nil!11131) (Cons!11130 (h!12133 (_ BitVec 64)) (t!17370 List!11134)) )
))
(declare-fun arrayNoDuplicates!0 (array!35409 (_ BitVec 32) List!11134) Bool)

(assert (=> b!564137 (= lt!257464 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11131))))

(declare-fun b!564138 () Bool)

(declare-fun res!355436 () Bool)

(assert (=> b!564138 (=> (not res!355436) (not e!324968))))

(declare-fun arrayContainsKey!0 (array!35409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564138 (= res!355436 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564139 () Bool)

(assert (=> b!564139 (= e!324968 e!324970)))

(declare-fun res!355440 () Bool)

(assert (=> b!564139 (=> (not res!355440) (not e!324970))))

(declare-datatypes ((SeekEntryResult!5457 0))(
  ( (MissingZero!5457 (index!24055 (_ BitVec 32))) (Found!5457 (index!24056 (_ BitVec 32))) (Intermediate!5457 (undefined!6269 Bool) (index!24057 (_ BitVec 32)) (x!52963 (_ BitVec 32))) (Undefined!5457) (MissingVacant!5457 (index!24058 (_ BitVec 32))) )
))
(declare-fun lt!257465 () SeekEntryResult!5457)

(assert (=> b!564139 (= res!355440 (or (= lt!257465 (MissingZero!5457 i!1132)) (= lt!257465 (MissingVacant!5457 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35409 (_ BitVec 32)) SeekEntryResult!5457)

(assert (=> b!564139 (= lt!257465 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564140 () Bool)

(declare-fun res!355439 () Bool)

(assert (=> b!564140 (=> (not res!355439) (not e!324968))))

(assert (=> b!564140 (= res!355439 (validKeyInArray!0 (select (arr!17001 a!3118) j!142)))))

(assert (= (and start!51590 res!355437) b!564136))

(assert (= (and b!564136 res!355438) b!564140))

(assert (= (and b!564140 res!355439) b!564134))

(assert (= (and b!564134 res!355442) b!564138))

(assert (= (and b!564138 res!355436) b!564139))

(assert (= (and b!564139 res!355440) b!564135))

(assert (= (and b!564135 res!355441) b!564137))

(declare-fun m!542605 () Bool)

(assert (=> b!564134 m!542605))

(declare-fun m!542607 () Bool)

(assert (=> b!564139 m!542607))

(declare-fun m!542609 () Bool)

(assert (=> b!564137 m!542609))

(declare-fun m!542611 () Bool)

(assert (=> b!564140 m!542611))

(assert (=> b!564140 m!542611))

(declare-fun m!542613 () Bool)

(assert (=> b!564140 m!542613))

(declare-fun m!542615 () Bool)

(assert (=> start!51590 m!542615))

(declare-fun m!542617 () Bool)

(assert (=> start!51590 m!542617))

(declare-fun m!542619 () Bool)

(assert (=> b!564138 m!542619))

(declare-fun m!542621 () Bool)

(assert (=> b!564135 m!542621))

(push 1)

