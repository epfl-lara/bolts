; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25470 () Bool)

(assert start!25470)

(declare-fun b!264946 () Bool)

(declare-fun e!171603 () Bool)

(declare-fun e!171604 () Bool)

(assert (=> b!264946 (= e!171603 e!171604)))

(declare-fun res!129498 () Bool)

(assert (=> b!264946 (=> (not res!129498) (not e!171604))))

(declare-datatypes ((SeekEntryResult!1237 0))(
  ( (MissingZero!1237 (index!7118 (_ BitVec 32))) (Found!1237 (index!7119 (_ BitVec 32))) (Intermediate!1237 (undefined!2049 Bool) (index!7120 (_ BitVec 32)) (x!25410 (_ BitVec 32))) (Undefined!1237) (MissingVacant!1237 (index!7121 (_ BitVec 32))) )
))
(declare-fun lt!133976 () SeekEntryResult!1237)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264946 (= res!129498 (or (= lt!133976 (MissingZero!1237 i!1355)) (= lt!133976 (MissingVacant!1237 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-datatypes ((array!12753 0))(
  ( (array!12754 (arr!6035 (Array (_ BitVec 32) (_ BitVec 64))) (size!6387 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12753)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12753 (_ BitVec 32)) SeekEntryResult!1237)

(assert (=> b!264946 (= lt!133976 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!264947 () Bool)

(declare-fun res!129501 () Bool)

(assert (=> b!264947 (=> (not res!129501) (not e!171603))))

(declare-fun arrayContainsKey!0 (array!12753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264947 (= res!129501 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun res!129499 () Bool)

(assert (=> start!25470 (=> (not res!129499) (not e!171603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25470 (= res!129499 (validMask!0 mask!4002))))

(assert (=> start!25470 e!171603))

(assert (=> start!25470 true))

(declare-fun array_inv!3989 (array!12753) Bool)

(assert (=> start!25470 (array_inv!3989 a!3436)))

(declare-fun b!264948 () Bool)

(assert (=> b!264948 (= e!171604 (bvsgt #b00000000000000000000000000000000 (size!6387 a!3436)))))

(declare-fun b!264949 () Bool)

(declare-fun res!129497 () Bool)

(assert (=> b!264949 (=> (not res!129497) (not e!171604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12753 (_ BitVec 32)) Bool)

(assert (=> b!264949 (= res!129497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!264950 () Bool)

(declare-fun res!129500 () Bool)

(assert (=> b!264950 (=> (not res!129500) (not e!171603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264950 (= res!129500 (validKeyInArray!0 k0!2698))))

(declare-fun b!264951 () Bool)

(declare-fun res!129496 () Bool)

(assert (=> b!264951 (=> (not res!129496) (not e!171603))))

(assert (=> b!264951 (= res!129496 (and (= (size!6387 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6387 a!3436))))))

(assert (= (and start!25470 res!129499) b!264951))

(assert (= (and b!264951 res!129496) b!264950))

(assert (= (and b!264950 res!129500) b!264947))

(assert (= (and b!264947 res!129501) b!264946))

(assert (= (and b!264946 res!129498) b!264949))

(assert (= (and b!264949 res!129497) b!264948))

(declare-fun m!281915 () Bool)

(assert (=> b!264950 m!281915))

(declare-fun m!281917 () Bool)

(assert (=> b!264947 m!281917))

(declare-fun m!281919 () Bool)

(assert (=> b!264949 m!281919))

(declare-fun m!281921 () Bool)

(assert (=> start!25470 m!281921))

(declare-fun m!281923 () Bool)

(assert (=> start!25470 m!281923))

(declare-fun m!281925 () Bool)

(assert (=> b!264946 m!281925))

(check-sat (not b!264949) (not b!264950) (not start!25470) (not b!264947) (not b!264946))
(check-sat)
