; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25722 () Bool)

(assert start!25722)

(declare-fun res!130908 () Bool)

(declare-fun e!172456 () Bool)

(assert (=> start!25722 (=> (not res!130908) (not e!172456))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25722 (= res!130908 (validMask!0 mask!4002))))

(assert (=> start!25722 e!172456))

(assert (=> start!25722 true))

(declare-datatypes ((array!12888 0))(
  ( (array!12889 (arr!6098 (Array (_ BitVec 32) (_ BitVec 64))) (size!6450 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12888)

(declare-fun array_inv!4052 (array!12888) Bool)

(assert (=> start!25722 (array_inv!4052 a!3436)))

(declare-fun b!266572 () Bool)

(declare-fun res!130911 () Bool)

(assert (=> b!266572 (=> (not res!130911) (not e!172456))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266572 (= res!130911 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266573 () Bool)

(declare-fun res!130906 () Bool)

(declare-fun e!172455 () Bool)

(assert (=> b!266573 (=> (not res!130906) (not e!172455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12888 (_ BitVec 32)) Bool)

(assert (=> b!266573 (= res!130906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266574 () Bool)

(assert (=> b!266574 (= e!172456 e!172455)))

(declare-fun res!130910 () Bool)

(assert (=> b!266574 (=> (not res!130910) (not e!172455))))

(declare-datatypes ((SeekEntryResult!1300 0))(
  ( (MissingZero!1300 (index!7370 (_ BitVec 32))) (Found!1300 (index!7371 (_ BitVec 32))) (Intermediate!1300 (undefined!2112 Bool) (index!7372 (_ BitVec 32)) (x!25641 (_ BitVec 32))) (Undefined!1300) (MissingVacant!1300 (index!7373 (_ BitVec 32))) )
))
(declare-fun lt!134498 () SeekEntryResult!1300)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266574 (= res!130910 (or (= lt!134498 (MissingZero!1300 i!1355)) (= lt!134498 (MissingVacant!1300 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12888 (_ BitVec 32)) SeekEntryResult!1300)

(assert (=> b!266574 (= lt!134498 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266575 () Bool)

(declare-fun res!130907 () Bool)

(assert (=> b!266575 (=> (not res!130907) (not e!172456))))

(assert (=> b!266575 (= res!130907 (and (= (size!6450 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6450 a!3436))))))

(declare-fun b!266576 () Bool)

(declare-fun res!130909 () Bool)

(assert (=> b!266576 (=> (not res!130909) (not e!172456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266576 (= res!130909 (validKeyInArray!0 k0!2698))))

(declare-fun b!266577 () Bool)

(assert (=> b!266577 (= e!172455 false)))

(declare-fun lt!134497 () Bool)

(declare-datatypes ((List!3933 0))(
  ( (Nil!3930) (Cons!3929 (h!4596 (_ BitVec 64)) (t!9023 List!3933)) )
))
(declare-fun arrayNoDuplicates!0 (array!12888 (_ BitVec 32) List!3933) Bool)

(assert (=> b!266577 (= lt!134497 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3930))))

(assert (= (and start!25722 res!130908) b!266575))

(assert (= (and b!266575 res!130907) b!266576))

(assert (= (and b!266576 res!130909) b!266572))

(assert (= (and b!266572 res!130911) b!266574))

(assert (= (and b!266574 res!130910) b!266573))

(assert (= (and b!266573 res!130906) b!266577))

(declare-fun m!283177 () Bool)

(assert (=> b!266574 m!283177))

(declare-fun m!283179 () Bool)

(assert (=> b!266577 m!283179))

(declare-fun m!283181 () Bool)

(assert (=> b!266573 m!283181))

(declare-fun m!283183 () Bool)

(assert (=> b!266576 m!283183))

(declare-fun m!283185 () Bool)

(assert (=> b!266572 m!283185))

(declare-fun m!283187 () Bool)

(assert (=> start!25722 m!283187))

(declare-fun m!283189 () Bool)

(assert (=> start!25722 m!283189))

(check-sat (not b!266573) (not b!266576) (not start!25722) (not b!266577) (not b!266572) (not b!266574))
(check-sat)
