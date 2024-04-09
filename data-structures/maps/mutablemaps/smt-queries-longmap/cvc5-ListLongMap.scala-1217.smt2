; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25780 () Bool)

(assert start!25780)

(declare-fun res!131442 () Bool)

(declare-fun e!172717 () Bool)

(assert (=> start!25780 (=> (not res!131442) (not e!172717))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25780 (= res!131442 (validMask!0 mask!4002))))

(assert (=> start!25780 e!172717))

(assert (=> start!25780 true))

(declare-datatypes ((array!12946 0))(
  ( (array!12947 (arr!6127 (Array (_ BitVec 32) (_ BitVec 64))) (size!6479 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12946)

(declare-fun array_inv!4081 (array!12946) Bool)

(assert (=> start!25780 (array_inv!4081 a!3436)))

(declare-fun b!267103 () Bool)

(declare-fun res!131437 () Bool)

(assert (=> b!267103 (=> (not res!131437) (not e!172717))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267103 (= res!131437 (and (= (size!6479 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6479 a!3436))))))

(declare-fun b!267104 () Bool)

(declare-fun res!131438 () Bool)

(assert (=> b!267104 (=> (not res!131438) (not e!172717))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267104 (= res!131438 (validKeyInArray!0 k!2698))))

(declare-fun b!267105 () Bool)

(declare-fun res!131439 () Bool)

(declare-fun e!172715 () Bool)

(assert (=> b!267105 (=> (not res!131439) (not e!172715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12946 (_ BitVec 32)) Bool)

(assert (=> b!267105 (= res!131439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267106 () Bool)

(assert (=> b!267106 (= e!172717 e!172715)))

(declare-fun res!131440 () Bool)

(assert (=> b!267106 (=> (not res!131440) (not e!172715))))

(declare-datatypes ((SeekEntryResult!1329 0))(
  ( (MissingZero!1329 (index!7486 (_ BitVec 32))) (Found!1329 (index!7487 (_ BitVec 32))) (Intermediate!1329 (undefined!2141 Bool) (index!7488 (_ BitVec 32)) (x!25750 (_ BitVec 32))) (Undefined!1329) (MissingVacant!1329 (index!7489 (_ BitVec 32))) )
))
(declare-fun lt!134662 () SeekEntryResult!1329)

(assert (=> b!267106 (= res!131440 (or (= lt!134662 (MissingZero!1329 i!1355)) (= lt!134662 (MissingVacant!1329 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12946 (_ BitVec 32)) SeekEntryResult!1329)

(assert (=> b!267106 (= lt!134662 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!267107 () Bool)

(declare-fun res!131441 () Bool)

(assert (=> b!267107 (=> (not res!131441) (not e!172717))))

(declare-fun arrayContainsKey!0 (array!12946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267107 (= res!131441 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267108 () Bool)

(assert (=> b!267108 (= e!172715 false)))

(declare-fun lt!134663 () Bool)

(declare-datatypes ((List!3962 0))(
  ( (Nil!3959) (Cons!3958 (h!4625 (_ BitVec 64)) (t!9052 List!3962)) )
))
(declare-fun arrayNoDuplicates!0 (array!12946 (_ BitVec 32) List!3962) Bool)

(assert (=> b!267108 (= lt!134663 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3959))))

(assert (= (and start!25780 res!131442) b!267103))

(assert (= (and b!267103 res!131437) b!267104))

(assert (= (and b!267104 res!131438) b!267107))

(assert (= (and b!267107 res!131441) b!267106))

(assert (= (and b!267106 res!131440) b!267105))

(assert (= (and b!267105 res!131439) b!267108))

(declare-fun m!283583 () Bool)

(assert (=> b!267106 m!283583))

(declare-fun m!283585 () Bool)

(assert (=> b!267107 m!283585))

(declare-fun m!283587 () Bool)

(assert (=> b!267105 m!283587))

(declare-fun m!283589 () Bool)

(assert (=> b!267104 m!283589))

(declare-fun m!283591 () Bool)

(assert (=> start!25780 m!283591))

(declare-fun m!283593 () Bool)

(assert (=> start!25780 m!283593))

(declare-fun m!283595 () Bool)

(assert (=> b!267108 m!283595))

(push 1)

