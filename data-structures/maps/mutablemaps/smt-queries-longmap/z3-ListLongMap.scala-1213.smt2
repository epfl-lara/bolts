; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25758 () Bool)

(assert start!25758)

(declare-fun b!266905 () Bool)

(declare-fun res!131243 () Bool)

(declare-fun e!172617 () Bool)

(assert (=> b!266905 (=> (not res!131243) (not e!172617))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266905 (= res!131243 (validKeyInArray!0 k0!2698))))

(declare-fun b!266906 () Bool)

(declare-fun res!131240 () Bool)

(assert (=> b!266906 (=> (not res!131240) (not e!172617))))

(declare-datatypes ((array!12924 0))(
  ( (array!12925 (arr!6116 (Array (_ BitVec 32) (_ BitVec 64))) (size!6468 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12924)

(declare-fun arrayContainsKey!0 (array!12924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266906 (= res!131240 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266907 () Bool)

(declare-fun e!172616 () Bool)

(assert (=> b!266907 (= e!172616 false)))

(declare-fun lt!134597 () Bool)

(declare-datatypes ((List!3951 0))(
  ( (Nil!3948) (Cons!3947 (h!4614 (_ BitVec 64)) (t!9041 List!3951)) )
))
(declare-fun arrayNoDuplicates!0 (array!12924 (_ BitVec 32) List!3951) Bool)

(assert (=> b!266907 (= lt!134597 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3948))))

(declare-fun b!266908 () Bool)

(declare-fun res!131239 () Bool)

(assert (=> b!266908 (=> (not res!131239) (not e!172616))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12924 (_ BitVec 32)) Bool)

(assert (=> b!266908 (= res!131239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266909 () Bool)

(declare-fun res!131244 () Bool)

(assert (=> b!266909 (=> (not res!131244) (not e!172617))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266909 (= res!131244 (and (= (size!6468 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6468 a!3436))))))

(declare-fun res!131241 () Bool)

(assert (=> start!25758 (=> (not res!131241) (not e!172617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25758 (= res!131241 (validMask!0 mask!4002))))

(assert (=> start!25758 e!172617))

(assert (=> start!25758 true))

(declare-fun array_inv!4070 (array!12924) Bool)

(assert (=> start!25758 (array_inv!4070 a!3436)))

(declare-fun b!266910 () Bool)

(assert (=> b!266910 (= e!172617 e!172616)))

(declare-fun res!131242 () Bool)

(assert (=> b!266910 (=> (not res!131242) (not e!172616))))

(declare-datatypes ((SeekEntryResult!1318 0))(
  ( (MissingZero!1318 (index!7442 (_ BitVec 32))) (Found!1318 (index!7443 (_ BitVec 32))) (Intermediate!1318 (undefined!2130 Bool) (index!7444 (_ BitVec 32)) (x!25707 (_ BitVec 32))) (Undefined!1318) (MissingVacant!1318 (index!7445 (_ BitVec 32))) )
))
(declare-fun lt!134596 () SeekEntryResult!1318)

(assert (=> b!266910 (= res!131242 (or (= lt!134596 (MissingZero!1318 i!1355)) (= lt!134596 (MissingVacant!1318 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12924 (_ BitVec 32)) SeekEntryResult!1318)

(assert (=> b!266910 (= lt!134596 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(assert (= (and start!25758 res!131241) b!266909))

(assert (= (and b!266909 res!131244) b!266905))

(assert (= (and b!266905 res!131243) b!266906))

(assert (= (and b!266906 res!131240) b!266910))

(assert (= (and b!266910 res!131242) b!266908))

(assert (= (and b!266908 res!131239) b!266907))

(declare-fun m!283429 () Bool)

(assert (=> b!266905 m!283429))

(declare-fun m!283431 () Bool)

(assert (=> b!266906 m!283431))

(declare-fun m!283433 () Bool)

(assert (=> b!266907 m!283433))

(declare-fun m!283435 () Bool)

(assert (=> start!25758 m!283435))

(declare-fun m!283437 () Bool)

(assert (=> start!25758 m!283437))

(declare-fun m!283439 () Bool)

(assert (=> b!266910 m!283439))

(declare-fun m!283441 () Bool)

(assert (=> b!266908 m!283441))

(check-sat (not b!266908) (not b!266907) (not b!266906) (not b!266910) (not b!266905) (not start!25758))
(check-sat)
