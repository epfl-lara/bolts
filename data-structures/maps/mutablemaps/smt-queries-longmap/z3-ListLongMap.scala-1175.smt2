; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25390 () Bool)

(assert start!25390)

(declare-fun res!129094 () Bool)

(declare-fun e!171399 () Bool)

(assert (=> start!25390 (=> (not res!129094) (not e!171399))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25390 (= res!129094 (validMask!0 mask!4002))))

(assert (=> start!25390 e!171399))

(assert (=> start!25390 true))

(declare-datatypes ((array!12686 0))(
  ( (array!12687 (arr!6002 (Array (_ BitVec 32) (_ BitVec 64))) (size!6354 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12686)

(declare-fun array_inv!3956 (array!12686) Bool)

(assert (=> start!25390 (array_inv!3956 a!3436)))

(declare-fun b!264544 () Bool)

(declare-fun res!129096 () Bool)

(assert (=> b!264544 (=> (not res!129096) (not e!171399))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264544 (= res!129096 (and (= (size!6354 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6354 a!3436))))))

(declare-fun b!264545 () Bool)

(declare-fun res!129095 () Bool)

(assert (=> b!264545 (=> (not res!129095) (not e!171399))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264545 (= res!129095 (validKeyInArray!0 k0!2698))))

(declare-fun b!264546 () Bool)

(assert (=> b!264546 (= e!171399 (bvsge #b00000000000000000000000000000000 (size!6354 a!3436)))))

(assert (= (and start!25390 res!129094) b!264544))

(assert (= (and b!264544 res!129096) b!264545))

(assert (= (and b!264545 res!129095) b!264546))

(declare-fun m!281609 () Bool)

(assert (=> start!25390 m!281609))

(declare-fun m!281611 () Bool)

(assert (=> start!25390 m!281611))

(declare-fun m!281613 () Bool)

(assert (=> b!264545 m!281613))

(check-sat (not start!25390) (not b!264545))
(check-sat)
