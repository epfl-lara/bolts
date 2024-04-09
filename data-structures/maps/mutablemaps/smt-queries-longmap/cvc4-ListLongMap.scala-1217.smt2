; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25784 () Bool)

(assert start!25784)

(declare-fun b!267139 () Bool)

(declare-fun res!131476 () Bool)

(declare-fun e!172734 () Bool)

(assert (=> b!267139 (=> (not res!131476) (not e!172734))))

(declare-datatypes ((array!12950 0))(
  ( (array!12951 (arr!6129 (Array (_ BitVec 32) (_ BitVec 64))) (size!6481 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12950)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267139 (= res!131476 (and (= (size!6481 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6481 a!3436))))))

(declare-fun b!267140 () Bool)

(declare-fun res!131478 () Bool)

(assert (=> b!267140 (=> (not res!131478) (not e!172734))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267140 (= res!131478 (validKeyInArray!0 k!2698))))

(declare-fun b!267141 () Bool)

(declare-fun e!172735 () Bool)

(assert (=> b!267141 (= e!172735 false)))

(declare-fun lt!134674 () Bool)

(declare-datatypes ((List!3964 0))(
  ( (Nil!3961) (Cons!3960 (h!4627 (_ BitVec 64)) (t!9054 List!3964)) )
))
(declare-fun arrayNoDuplicates!0 (array!12950 (_ BitVec 32) List!3964) Bool)

(assert (=> b!267141 (= lt!134674 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3961))))

(declare-fun res!131474 () Bool)

(assert (=> start!25784 (=> (not res!131474) (not e!172734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25784 (= res!131474 (validMask!0 mask!4002))))

(assert (=> start!25784 e!172734))

(assert (=> start!25784 true))

(declare-fun array_inv!4083 (array!12950) Bool)

(assert (=> start!25784 (array_inv!4083 a!3436)))

(declare-fun b!267142 () Bool)

(declare-fun res!131473 () Bool)

(assert (=> b!267142 (=> (not res!131473) (not e!172734))))

(declare-fun arrayContainsKey!0 (array!12950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267142 (= res!131473 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267143 () Bool)

(assert (=> b!267143 (= e!172734 e!172735)))

(declare-fun res!131477 () Bool)

(assert (=> b!267143 (=> (not res!131477) (not e!172735))))

(declare-datatypes ((SeekEntryResult!1331 0))(
  ( (MissingZero!1331 (index!7494 (_ BitVec 32))) (Found!1331 (index!7495 (_ BitVec 32))) (Intermediate!1331 (undefined!2143 Bool) (index!7496 (_ BitVec 32)) (x!25752 (_ BitVec 32))) (Undefined!1331) (MissingVacant!1331 (index!7497 (_ BitVec 32))) )
))
(declare-fun lt!134675 () SeekEntryResult!1331)

(assert (=> b!267143 (= res!131477 (or (= lt!134675 (MissingZero!1331 i!1355)) (= lt!134675 (MissingVacant!1331 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12950 (_ BitVec 32)) SeekEntryResult!1331)

(assert (=> b!267143 (= lt!134675 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!267144 () Bool)

(declare-fun res!131475 () Bool)

(assert (=> b!267144 (=> (not res!131475) (not e!172735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12950 (_ BitVec 32)) Bool)

(assert (=> b!267144 (= res!131475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25784 res!131474) b!267139))

(assert (= (and b!267139 res!131476) b!267140))

(assert (= (and b!267140 res!131478) b!267142))

(assert (= (and b!267142 res!131473) b!267143))

(assert (= (and b!267143 res!131477) b!267144))

(assert (= (and b!267144 res!131475) b!267141))

(declare-fun m!283611 () Bool)

(assert (=> start!25784 m!283611))

(declare-fun m!283613 () Bool)

(assert (=> start!25784 m!283613))

(declare-fun m!283615 () Bool)

(assert (=> b!267144 m!283615))

(declare-fun m!283617 () Bool)

(assert (=> b!267142 m!283617))

(declare-fun m!283619 () Bool)

(assert (=> b!267143 m!283619))

(declare-fun m!283621 () Bool)

(assert (=> b!267141 m!283621))

(declare-fun m!283623 () Bool)

(assert (=> b!267140 m!283623))

(push 1)

(assert (not start!25784))

(assert (not b!267140))

(assert (not b!267141))

(assert (not b!267142))

